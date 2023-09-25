-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 25, 2023 at 05:55 AM
-- Server version: 8.0.34-0ubuntu0.20.04.1
-- PHP Version: 7.4.3-4ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thesingleapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_blocked`
--

CREATE TABLE `accounts_blocked` (
  `id` int NOT NULL,
  `date` datetime(6) NOT NULL,
  `other_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accounts_blocked`
--

INSERT INTO `accounts_blocked` (`id`, `date`, `other_id`, `user_id`) VALUES
(3, '2023-03-28 05:43:58.641664', 3, 1),
(6, '2023-06-09 12:36:20.301316', 3, 29),
(9, '2023-06-21 07:29:56.717961', 3, 9),
(11, '2023-06-21 07:33:35.112981', 36, 9),
(12, '2023-06-21 07:35:53.109070', 29, 9),
(18, '2023-06-22 10:24:00.254642', 21, 9),
(19, '2023-06-22 10:24:08.925793', 18, 9),
(26, '2023-06-22 12:37:38.123840', 13, 33),
(29, '2023-07-25 13:20:09.417781', 33, 9),
(30, '2023-07-25 13:21:28.662299', 9, 33),
(33, '2023-08-02 13:09:22.441035', 97, 96),
(34, '2023-08-02 13:10:03.739592', 30, 9);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_comment`
--

CREATE TABLE `accounts_comment` (
  `id` int NOT NULL,
  `msg` varchar(250) NOT NULL,
  `date` datetime(6) NOT NULL,
  `image_id` int NOT NULL,
  `other_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accounts_comment`
--

INSERT INTO `accounts_comment` (`id`, `msg`, `date`, `image_id`, `other_id`, `user_id`) VALUES
(1, 'hi', '2023-03-24 13:01:29.209585', 2, 1, 3),
(2, 'hi', '2023-03-28 05:43:55.552896', 2, 1, 3),
(3, 'Hello', '2023-04-12 06:51:40.135206', 4, 10, 10),
(4, 'Hi', '2023-04-18 10:40:04.499927', 7, 9, 13),
(5, 'Hello', '2023-04-18 10:41:13.719500', 6, 13, 9),
(6, 'hu', '2023-06-13 05:33:30.825514', 20, 29, 9),
(7, 'nm', '2023-06-13 05:33:33.868214', 20, 29, 9),
(8, 'ghvcj', '2023-06-13 13:08:53.995051', 20, 29, 29),
(9, 'hi', '2023-07-11 10:52:17.281563', 2, 1, 3),
(10, 'Hi', '2023-07-13 05:40:54.494837', 8, 13, 9),
(11, 'thanks', '2023-07-13 05:42:33.530964', 8, 13, 13),
(12, 'Nice pic', '2023-07-13 05:43:28.382943', 8, 13, 9),
(13, 'welcome', '2023-07-13 05:43:39.768925', 8, 13, 13),
(14, 'welcome', '2023-07-13 05:43:39.959569', 8, 13, 13),
(15, 'hi', '2023-07-13 05:48:08.699738', 8, 13, 13),
(16, 'welcom', '2023-07-13 05:48:13.104215', 8, 13, 13),
(17, 'hello', '2023-07-13 05:48:17.510803', 8, 13, 13),
(18, 'whe', '2023-07-13 05:48:22.871549', 8, 13, 13),
(19, 'icniwn', '2023-07-13 05:48:25.946530', 8, 13, 13),
(20, 'inidnw', '2023-07-13 05:48:30.446259', 8, 13, 13),
(21, 'fijcwqjdjdi', '2023-07-13 05:48:35.140585', 8, 13, 13),
(22, 'wncw', '2023-07-13 05:48:40.869261', 8, 13, 13),
(23, 'omcowmxow', '2023-07-13 05:48:44.150512', 8, 13, 13),
(24, 'owmcowmc', '2023-07-13 05:48:47.710347', 8, 13, 13),
(25, 'testing', '2023-07-13 06:09:05.202923', 8, 13, 9),
(26, 'jhgf', '2023-07-20 12:13:48.610683', 8, 13, 91),
(27, 'vbvbvb', '2023-07-20 13:30:00.051837', 25, 91, 91),
(28, 'haiii', '2023-08-02 10:24:42.249388', 26, 91, 91);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_favourite`
--

CREATE TABLE `accounts_favourite` (
  `id` int NOT NULL,
  `date` datetime(6) NOT NULL,
  `other_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accounts_favourite`
--

INSERT INTO `accounts_favourite` (`id`, `date`, `other_id`, `user_id`) VALUES
(5, '2023-03-24 10:37:15.102185', 3, 1),
(6, '2023-03-24 10:39:11.417617', 1, 3),
(9, '2023-03-24 11:05:08.111312', 3, 5),
(10, '2023-03-24 11:05:56.853498', 5, 3),
(11, '2023-04-18 10:38:03.309660', 9, 13),
(12, '2023-04-20 06:58:25.311651', 13, 9),
(13, '2023-06-12 12:28:30.340345', 24, 29),
(14, '2023-06-12 12:28:40.319583', 7, 29),
(15, '2023-06-12 13:31:40.589798', 29, 9),
(16, '2023-06-13 05:31:38.717332', 9, 29),
(18, '2023-06-21 12:14:24.877379', 13, 37),
(19, '2023-06-21 12:56:52.122606', 9, 33),
(20, '2023-06-21 13:06:19.351368', 13, 38),
(21, '2023-06-21 13:55:37.577632', 33, 9),
(22, '2023-06-22 09:17:37.791120', 43, 33),
(23, '2023-06-22 10:56:32.310529', 41, 33),
(25, '2023-07-11 12:56:42.473545', 13, 33),
(26, '2023-07-14 09:42:54.606970', 42, 91),
(28, '2023-07-20 13:38:45.951626', 37, 13),
(29, '2023-07-20 13:40:24.996029', 91, 13),
(30, '2023-07-22 12:44:15.543737', 13, 91),
(31, '2023-08-02 07:03:10.111297', 91, 30),
(32, '2023-08-02 10:24:18.510788', 9, 91),
(33, '2023-08-03 05:15:11.938396', 30, 91),
(34, '2023-09-21 06:24:10.001410', 91, 9);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_friend`
--

CREATE TABLE `accounts_friend` (
  `id` int NOT NULL,
  `accepted` tinyint(1) NOT NULL,
  `date` datetime(6) NOT NULL,
  `other_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accounts_friend`
--

INSERT INTO `accounts_friend` (`id`, `accepted`, `date`, `other_id`, `user_id`) VALUES
(2, 0, '2023-03-25 07:07:19.270971', 3, 1),
(6, 0, '2023-06-09 12:02:49.037974', 1, 29),
(8, 1, '2023-06-12 05:09:24.331885', 13, 9),
(9, 0, '2023-06-12 12:28:26.256980', 24, 29),
(10, 0, '2023-06-13 05:25:28.273456', 31, 9),
(12, 1, '2023-06-20 10:00:17.463143', 13, 32),
(17, 1, '2023-06-21 12:15:10.049959', 13, 37),
(21, 1, '2023-06-21 13:10:31.961395', 13, 33),
(23, 0, '2023-06-22 05:34:29.208598', 42, 33),
(38, 1, '2023-08-02 06:41:01.042189', 13, 30),
(39, 1, '2023-08-02 06:54:21.442556', 30, 91),
(41, 0, '2023-09-23 07:21:56.651711', 13, 91);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_image`
--

CREATE TABLE `accounts_image` (
  `id` int NOT NULL,
  `img` varchar(100) DEFAULT NULL,
  `is_profile` tinyint(1) NOT NULL,
  `created_date` date NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accounts_image`
--

INSERT INTO `accounts_image` (`id`, `img`, `is_profile`, `created_date`, `user_id`) VALUES
(1, 'accounts/3/istockphoto-116377067-612x612.jpg', 1, '2023-03-24', 3),
(2, 'accounts/1/APJ-Abdul-Kalam-feature.jpg', 1, '2023-03-24', 1),
(3, '', 1, '2023-03-28', 3),
(4, 'accounts/10/1681282168265.jpeg', 0, '2023-04-12', 10),
(5, 'accounts/11/profile_img.png', 1, '2023-04-18', 11),
(6, 'accounts/13/air_ballon2.png', 0, '2023-04-18', 13),
(7, 'accounts/9/1681814345100.jpeg', 0, '2023-04-18', 9),
(8, 'accounts/13/profile_img.png', 1, '2023-04-18', 13),
(9, 'accounts/5/file.png', 1, '2023-05-04', 5),
(10, 'accounts/5/file_luYeRFS.png', 1, '2023-05-04', 5),
(11, 'accounts/3/decision_draft.png', 1, '2023-05-04', 3),
(12, 'accounts/5/file_VB8QD5l.png', 1, '2023-05-04', 5),
(13, 'accounts/5/file_KgIyvNU.png', 1, '2023-05-04', 5),
(14, 'accounts/5/file_lsrnWCt.png', 1, '2023-05-04', 5),
(15, 'accounts/5/file_PukFUuh.png', 1, '2023-05-04', 5),
(16, 'accounts/5/file_XUF2gGa.png', 1, '2023-05-04', 5),
(17, 'accounts/3/file.png', 1, '2023-05-04', 3),
(18, 'accounts/3/file_F3dkNI2.png', 1, '2023-05-04', 3),
(19, 'accounts/9/app_development.webp', 0, '2023-05-17', 9),
(20, 'accounts/29/Nutrition_icon.png', 1, '2023-06-09', 29),
(21, 'accounts/9/Hamza_A.png', 1, '2023-06-09', 9),
(22, 'accounts/32/images_1.jfif', 1, '2023-06-20', 32),
(23, 'accounts/33/download_1.jfif', 1, '2023-06-21', 33),
(24, '', 1, '2023-07-11', 3),
(25, 'accounts/91/wp2919540-one-piece-wallpaper-full-hd.jpg', 0, '2023-07-20', 91),
(26, 'accounts/91/images.jfif', 1, '2023-07-26', 91),
(27, 'accounts/91/unnamed.jpg', 0, '2023-08-02', 91),
(28, 'accounts/96/wp2919540-one-piece-wallpaper-full-hd.jpg', 1, '2023-08-02', 96);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_imagelike`
--

CREATE TABLE `accounts_imagelike` (
  `id` int NOT NULL,
  `date` datetime(6) NOT NULL,
  `image_id_id` int NOT NULL,
  `other_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accounts_imagelike`
--

INSERT INTO `accounts_imagelike` (`id`, `date`, `image_id_id`, `other_id`, `user_id`) VALUES
(1, '2023-03-24 12:59:29.225195', 1, 3, 1),
(2, '2023-03-24 12:59:54.669371', 2, 1, 3),
(3, '2023-04-12 06:51:51.370133', 4, 10, 10),
(4, '2023-04-18 10:39:35.990691', 6, 13, 9),
(5, '2023-04-18 10:39:58.294857', 7, 9, 13),
(12, '2023-06-13 05:34:09.170596', 20, 29, 9),
(14, '2023-06-13 13:07:41.235353', 20, 29, 29),
(15, '2023-07-13 05:40:51.107386', 8, 13, 9),
(16, '2023-07-20 12:13:28.438991', 8, 13, 91),
(17, '2023-07-20 13:11:15.799743', 6, 13, 91),
(18, '2023-07-20 13:29:57.553512', 25, 91, 91),
(19, '2023-08-02 10:24:31.802230', 26, 91, 91);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_message`
--

CREATE TABLE `accounts_message` (
  `id` int NOT NULL,
  `msg` varchar(500) NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `date` datetime(6) NOT NULL,
  `other_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accounts_message`
--

INSERT INTO `accounts_message` (`id`, `msg`, `is_read`, `date`, `other_id`, `user_id`) VALUES
(1, 'Hi anna,', 1, '2023-03-25 07:02:01.944283', 3, 1),
(2, 'hi bro,', 0, '2023-03-25 07:03:16.334391', 1, 3),
(3, 'hi bro,', 0, '2023-03-28 05:43:56.960515', 1, 3),
(4, 'hi', 1, '2023-04-18 10:42:04.852210', 9, 13),
(5, 'hello', 1, '2023-04-18 10:49:49.131383', 13, 9),
(6, 'hello', 1, '2023-04-18 10:50:00.812133', 9, 13),
(7, 'r u there', 1, '2023-04-18 10:50:06.302250', 9, 13),
(8, 'jeklslks', 1, '2023-04-18 10:50:10.723303', 13, 9),
(9, 'ok', 1, '2023-04-18 10:50:16.792466', 9, 13),
(10, 'sshjsjs', 1, '2023-04-18 10:50:17.324646', 13, 9),
(11, 'hi', 0, '2023-06-12 06:44:39.538537', 1, 9),
(12, 'hi', 1, '2023-06-12 06:48:47.825716', 13, 9),
(13, 'hai', 0, '2023-06-19 09:59:59.838599', 31, 29),
(14, 'haii', 0, '2023-06-21 05:39:08.510094', 1, 9),
(15, 'haii', 1, '2023-06-21 10:11:43.120826', 13, 9),
(16, 'hii', 1, '2023-06-21 10:12:06.048129', 13, 9),
(17, 'haiii', 1, '2023-06-21 10:38:10.578569', 13, 9),
(18, 'hii', 1, '2023-06-21 10:40:25.144495', 13, 9),
(19, 'akka', 1, '2023-06-21 10:40:33.567357', 13, 9),
(20, 'haii', 0, '2023-06-21 11:16:11.867006', 5, 9),
(21, 'haii', 0, '2023-06-21 11:16:38.077109', 32, 9),
(22, 'hi bro,', 0, '2023-07-11 10:52:18.818574', 1, 3),
(23, 'hello', 1, '2023-07-13 05:44:41.777815', 13, 9),
(24, 'haiiii', 1, '2023-07-14 06:59:38.772071', 13, 91),
(25, 'sdfgsfg', 1, '2023-07-21 12:29:52.983361', 13, 91),
(26, 'solu thambi', 1, '2023-08-02 07:07:24.031825', 91, 13),
(27, 'hkgvdacfjgbvdsaj', 1, '2023-08-02 13:30:17.499579', 91, 13),
(28, ',knasdbhnbdas,vc', 1, '2023-08-02 13:30:20.254273', 91, 13),
(29, 'ljkdsabvcjhsabjhasdbv', 1, '2023-08-02 13:30:22.644685', 91, 13),
(30, 'dsfhbdfbhdf', 1, '2023-08-02 13:30:33.639351', 9, 13),
(31, 'Hai', 0, '2023-08-25 09:34:36.097656', 41, 91),
(32, 'haii', 1, '2023-09-21 12:06:58.865995', 91, 9),
(33, 'test', 1, '2023-09-21 12:07:44.335593', 9, 91),
(34, 'haiiiiiiiiiii', 0, '2023-09-21 12:29:40.855955', 42, 91);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_myuser`
--

CREATE TABLE `accounts_myuser` (
  `id` int NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(26) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `created_date` date NOT NULL,
  `blocked_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `code` varchar(6) NOT NULL,
  `deleted_by` varchar(1) DEFAULT NULL,
  `login_by` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accounts_myuser`
--

INSERT INTO `accounts_myuser` (`id`, `password`, `last_login`, `phone`, `email`, `is_active`, `is_staff`, `is_admin`, `created_date`, `blocked_date`, `deleted_date`, `code`, `deleted_by`, `login_by`) VALUES
(1, 'pbkdf2_sha256$150000$G7jKR1Ifnk53$xpqwQX3ic2iHx6LYuKtkGSxBthlUNUQ5q1iy6e3bSXc=', '2023-04-12 06:21:47.963233', '8778763117', 'rabiyul@desss.com', 1, 0, 0, '2023-03-24', NULL, NULL, '000000', 'O', 'N'),
(2, 'pbkdf2_sha256$150000$aCpGZSKUKOi5$fKlNiacoLxnc+17eXxNURD4V5Qnvec1CEjtYZIQIfgU=', '2023-04-10 07:19:40.121969', NULL, 'python@python.com', 1, 1, 1, '2023-03-24', NULL, NULL, '000000', 'O', 'N'),
(3, 'pbkdf2_sha256$150000$yul7E5npIbT4$QAevFx6ASPVDPl+X1jAedxwKYGF4Y1wGz7rwVi7Ry2k=', '2023-09-25 10:52:29.476898', '9222333456', 'gopi@desss.com', 1, 0, 0, '2023-03-24', NULL, NULL, '000000', 'O', 'N'),
(4, 'pbkdf2_sha256$150000$fxNNDmaJ4DaS$SgjB4kjOY1h1GSVUupl+Gydhw0tsMuTNtoEVv6kK3Cc=', NULL, '9751236141', 'arunchandru@desss.com', 1, 0, 0, '2023-03-24', NULL, NULL, '000000', 'O', 'N'),
(5, 'pbkdf2_sha256$150000$fW8kkZgNoOH3$Kfve+9P4Cp2h3JYT2afLtb+Riy2fphcQtYEmvXfnrEI=', '2023-04-17 06:18:24.877786', '9176878709', 'prabhh@desss.com', 1, 0, 0, '2023-03-24', NULL, NULL, '000000', 'O', 'N'),
(6, 'pbkdf2_sha256$150000$OKiTRRntfI8l$MSPSzouHw7OGSFl0kIAc2c6AQra70mTvXJtLUwPpaTk=', '2023-04-12 06:58:36.150387', '7888788764', 'karthickandroid@desss.com', 1, 0, 0, '2023-04-12', NULL, NULL, '000000', 'O', 'N'),
(7, 'pbkdf2_sha256$150000$EhfDk0ULOBM0$eWUKG8RVBuhN2UqQnBnGg7weLaZ2zEPb6UwB6HbMGOI=', '2023-04-12 06:27:56.957225', '7810894925', 'karthick@desss.com', 1, 0, 0, '2023-04-12', NULL, NULL, '000000', 'O', 'N'),
(8, 'pbkdf2_sha256$150000$PwAaJiQ1F3hp$WDi1BMJGIxL+heOCNYKkvqgxnCOZd3foLnaB9GQidZA=', NULL, 'karthickdesss@desss.com', 'karthickdesss@desss.com', 1, 0, 0, '2023-04-12', NULL, NULL, '000000', 'O', 'E'),
(9, 'pbkdf2_sha256$150000$i59YkwDJgL2a$L/SkZ5xHaDnWYhMbpJf4Y20l6HFFAZc4VEKrO6i57kU=', '2023-09-22 10:17:42.272551', '9176879709', 'prabhu@desss.com', 1, 0, 0, '2023-04-12', NULL, NULL, '000000', 'O', 'N'),
(10, 'pbkdf2_sha256$150000$1RxSOwrgXJc6$+YtbqBBT+A9r/AUVuaRtJohiS+sMYUUgWbal67v6bHY=', NULL, 'karthi.rock1997@gmail.com', 'karthi.rock1997@gmail.com', 1, 0, 0, '2023-04-12', NULL, NULL, '000000', 'O', 'E'),
(11, 'pbkdf2_sha256$150000$eLLEvuqkfKgN$UkU91Sk5cctXjF0GKpzHYYEQFopt5hJvjsIYWcRas4c=', '2023-04-18 10:17:49.982812', '8778763114', 'rabiyuldesss@desss.com', 1, 0, 0, '2023-04-17', NULL, NULL, '000000', 'O', 'N'),
(12, 'pbkdf2_sha256$150000$jMzzHJxIF7kC$ZUTUH49CDX5bJ34MTKIYc9cdIizAIXw8f9EdxrlF2j8=', '2023-05-03 10:02:01.449332', NULL, 'python@desss.com', 1, 1, 1, '2023-04-18', NULL, NULL, '000000', 'O', 'N'),
(13, 'pbkdf2_sha256$150000$cA7zNHAgwV2O$WI2ldKWSjQC+V6EK15xUr/0ulW9v+aYDGibcFkwFsAQ=', '2023-09-25 10:06:28.977150', '7339438971', 'kamali@desss.com', 1, 0, 0, '2023-04-18', NULL, NULL, '000000', 'O', 'N'),
(14, 'pbkdf2_sha256$150000$OdpBxqL2xzEt$7+L+j23ooWGFgxyTnGybA2XmPUr3CTTeHGyrN80EvUc=', '2023-08-07 05:13:19.782656', '9941784866', 'thesingle@desss.com', 1, 1, 1, '2023-04-18', NULL, NULL, '000000', 'O', 'N'),
(15, 'pbkdf2_sha256$150000$ZOkuaDnRjDS1$ow/uoFJlFMten4uFYnmuQvymAeeRlXXTQYWjMXLALwU=', NULL, '7428730894', 'bopaye5760@saeoil.com', 0, 0, 0, '2023-05-03', NULL, NULL, '000000', 'O', 'N'),
(16, 'pbkdf2_sha256$150000$9qNb8TTuw8p5$SGQVJzcJjtM60T+W7qrZebw+DQvJtDtPNheUH6sxP7Y=', NULL, '7777888888', 'hpp@desss.com', 0, 0, 0, '2023-05-03', NULL, NULL, '000000', 'O', 'N'),
(17, 'pbkdf2_sha256$150000$ml5A6BygpVfr$RCIJYWV0R1VxE4TD93CRKeeF5Oq6gq21W94H947c6Qw=', NULL, '899889989', 'hpp1@desss.com', 0, 0, 0, '2023-05-03', NULL, NULL, '000000', 'O', 'N'),
(18, 'pbkdf2_sha256$150000$URJz9CDsdIFf$BSxfN0pXz8WSQoIUVVXUDyudeKSpPiof1FcGZWuWJbE=', NULL, '9789276358', 'rp@yopmail.com', 0, 0, 0, '2023-05-03', NULL, NULL, '000000', 'O', 'N'),
(19, 'pbkdf2_sha256$150000$Rzfsc70j1xZa$sq7heUmRcMHoROPXGbd1T+/wWGeGf68B7+e6qhGrCKc=', NULL, '9222333457', 'praveen@desss.com', 1, 0, 0, '2023-05-04', NULL, NULL, '000000', 'O', 'N'),
(20, 'pbkdf2_sha256$150000$TfTJrdTCXBnR$GD2R6NsuFF4O8ri/RXwWRctB/DpXl79ogbuDUdNbEsA=', NULL, '9222333458', 'praveen2@desss.com', 1, 0, 0, '2023-05-04', NULL, NULL, '000000', 'O', 'N'),
(21, 'pbkdf2_sha256$150000$95ZuD1MaKFW1$R7GZrNqJiYKxC+ecB0KfX6tKK5D5ALx6UI8KRwSp0ts=', NULL, '9222333450', 'praveen3@desss.com', 1, 0, 0, '2023-05-04', NULL, NULL, '000000', 'O', 'N'),
(22, 'pbkdf2_sha256$150000$RK9dX1XADY4l$1TbORx3F9OFYE4ZHeyAask3+fekYMKN0dhC26Rhwrmk=', NULL, '9222333459', 'praveen4@desss.com', 1, 0, 0, '2023-05-04', NULL, NULL, '000000', 'O', 'N'),
(23, 'pbkdf2_sha256$150000$0wfYRTk7St1b$WMKg70zu45o7HguHqx+K20/1yGeIUkprYjWUagW6MiI=', NULL, '9789226567', 'rp3@yopmail.com', 0, 0, 0, '2023-05-04', NULL, NULL, '000000', 'O', 'N'),
(24, 'pbkdf2_sha256$150000$50maS9zfaG9T$rcKZODjJWU2LGQKBCIogzPizjjhLbmZ6KuHnWEUBLKQ=', NULL, '6381284572', 'Knithish117@gmail.com', 1, 0, 0, '2023-06-09', NULL, NULL, '939366', 'O', 'N'),
(25, 'pbkdf2_sha256$150000$6MSMP84jEPdG$8nMuyj/vJOzu0knXGiP+f6BdKSNLx5T+3pP7m2yvM6o=', NULL, '7502363373', 'ganesh@desss.com', 0, 0, 0, '2023-06-09', NULL, NULL, '21458', 'O', 'N'),
(26, 'pbkdf2_sha256$150000$jVSGm4fWv4np$dKU5LrZqk+EKBwYcKtehlsW6h69cT/IxAn4dCruWdQY=', NULL, 'Desssinfo@gmail.com', 'Desssinfo@gmail.com', 0, 0, 0, '2023-06-09', NULL, NULL, '62158', 'O', 'N'),
(27, 'pbkdf2_sha256$150000$dPup3iXpHNZP$SWx10pvJ19DXBVQy/0mOeBTWLIFPKsnd4rPdohcZb+o=', NULL, '9840780643', 'Knkdeva65@gmail.com', 0, 0, 0, '2023-06-09', NULL, NULL, '446739', 'O', 'N'),
(28, 'pbkdf2_sha256$150000$H5MjTobpJOPo$i1RwAykSTUlLrgcHA8Na94eoISUhMs1cIBuOAG5Jweo=', '2023-06-09 10:03:29.191853', '9600802588', 'mukesh@gmail.com', 1, 0, 0, '2023-06-09', NULL, NULL, '000000', 'O', 'N'),
(29, 'pbkdf2_sha256$150000$EB2bRYVbDUoP$TeMah6/vtG59q32+ORTMK7NEHI45NTN7wA1Q3e6QwDs=', '2023-06-20 13:15:42.455153', '6380987461', 'sanjay@desss.com', 0, 0, 0, '2023-06-09', NULL, '2023-06-20', '000000', 'U', 'N'),
(30, '!UaJLft6L6V5lxobngG6wzIGLfA74GOQZnWxQ1iP4', '2023-08-22 10:39:14.908291', '1234yusufdeen@gmail.com', '1234yusufdeen@gmail.com', 1, 0, 0, '2023-06-12', NULL, NULL, '000000', 'O', 'N'),
(31, 'pbkdf2_sha256$150000$zqRCdoUQA0EN$w+zUDM4Kkx+bV2cC7AKa4ag6uK7zcE3LdM5DW+zITuk=', NULL, 'YUSUFDEENAPPLE21@GMAIL.COM', 'YUSUFDEENAPPLE21@GMAIL.COM', 0, 0, 0, '2023-06-13', NULL, NULL, '377632', 'O', 'N'),
(32, '!njK4IHbL8we6Gu9gK1pyIOGNLLB35kefGCLjwzQX', '2023-06-20 09:54:49.828938', '1112yusufdeen@gmail.com', '1112yusufdeen@gmail.com', 0, 0, 0, '2023-06-20', NULL, NULL, '000000', 'U', 'N'),
(33, '!UT47BzqiAsCi9jSXlCoswpbfTSEasI2GP5BnDbsx', '2023-08-02 13:45:23.694667', 'kisssmee1112@gmail.com', 'kisssmee1112@gmail.com', 0, 0, 0, '2023-06-20', NULL, NULL, '000000', 'U', 'N'),
(34, 'pbkdf2_sha256$150000$UKeWtGOEYoeh$czjO6qJHViwi9ZXqcJMvyNg0ROWuQ3IcqX7qEhpTpqI=', NULL, '+916380987461', 'sanjaikanth92@gmail.com', 0, 0, 0, '2023-06-20', NULL, NULL, '000000', 'O', 'N'),
(35, '!0QNQAoJJ93XFMeDqXvglj9vNdzZWSIADGSRMgvjy', '2023-06-20 19:53:12.929385', 'dotamohan@gmail.com', 'dotamohan@gmail.com', 1, 0, 0, '2023-06-20', NULL, NULL, '000000', 'O', 'N'),
(36, 'pbkdf2_sha256$150000$nWtGQAKBnTtI$S2ZKxrdHo4uQUd6OEU96fZRZA6o56Uo6ST2yMkW4x5U=', NULL, '7868860011', 'kisssmee@gmail.com', 0, 0, 0, '2023-06-21', NULL, NULL, '280644', 'O', 'N'),
(37, '!RRtVDBQkeev3S8pC2HKMWQe10bv5X5Mz9qFdtB9a', '2023-06-21 12:15:49.620485', 'yusufdeen4321@gmail.com', 'yusufdeen4321@gmail.com', 1, 0, 0, '2023-06-21', NULL, NULL, '000000', 'O', 'N'),
(38, '!YeYklbWIuo7bzRdVk6QemqQy58mH1EAiCpBrYrQs', '2023-06-21 13:04:04.997936', 'ravananpk786@gmail.com', 'ravananpk786@gmail.com', 1, 0, 0, '2023-06-21', NULL, NULL, '000000', 'O', 'N'),
(39, 'pbkdf2_sha256$150000$XmLqWH3JBzTu$RU311QVzP1rJg+qwiuaI18vCSjFEkmzaDYqXYTwg2xQ=', NULL, '9840750643', 'ravananpl786@gmail.com', 0, 0, 0, '2023-06-22', NULL, NULL, '397006', 'O', 'N'),
(40, 'pbkdf2_sha256$150000$3kF4t4HgVubr$4uyRmMF3wj852Cu+BFTouAQ+O9rbKs+qBSEUC/8Rqn8=', NULL, '9383339899', 'ravananpl76@gmail.com', 0, 0, 0, '2023-06-22', NULL, NULL, '867091', 'O', 'N'),
(41, 'pbkdf2_sha256$150000$xRNIOgHCU2Qs$4g/7MeU23jYqVP581z1RXm/3lRY2KHoy4HRhc3Rsd6U=', NULL, '8754384544', 'ravananpl7@gmail.com', 0, 0, 0, '2023-06-22', NULL, NULL, '633319', 'O', 'N'),
(42, 'pbkdf2_sha256$150000$QM8ZyrEohvHZ$mU2xQWLS5BmM1vbCrjgjNiOk5CeO/iTQiepEz99nqQ4=', NULL, '8248699796', '1113yusufdeen@gmail.com', 0, 0, 0, '2023-06-22', NULL, NULL, '668399', 'O', 'N'),
(43, 'pbkdf2_sha256$150000$gttRBpb4cg3B$z3Erqn2ku+k6E+71Zr3aXLnP9FI2Wu3D4yiO6KXed0M=', NULL, '9876543210', 'ravananpk7876@gmail.com', 0, 0, 0, '2023-06-22', NULL, NULL, '312575', 'O', 'N'),
(44, 'pbkdf2_sha256$150000$dudrVT1Zbk5Y$MilgjTJIU6KZDg72e6xIBu+Z/cOUxzFcNfNGBZ6A7AQ=', NULL, '8925171586', 'ravananpk785476@gmail.com', 0, 0, 0, '2023-06-22', NULL, NULL, '291809', 'O', 'N'),
(45, 'pbkdf2_sha256$150000$0nvTOFeOzL5C$HY+1Z8/tidIHb7HBlt+6Ct7c3VaVgX++rEO53+iUkx4=', NULL, '9087214293', 'yusufdeen1234@gmail.com', 0, 0, 0, '2023-06-22', '2023-07-14', NULL, '865102', 'A', 'N'),
(46, 'pbkdf2_sha256$150000$LJXZ3mUz4tLD$xuHDyspJM+ub+1LKV1knc7CdgFlFmLSvsJKSY7SC/G8=', NULL, '9944698855', 'ravanan@gmail.com', 0, 0, 0, '2023-06-22', NULL, NULL, '963128', 'O', 'N'),
(47, '!bNaw8RW7MxcySKRNrXdh8cSLqGbuS8ehTP1bOFRC', '2023-06-23 13:57:26.273362', 'ganeshklm10@gmail.com', 'ganeshklm10@gmail.com', 1, 0, 0, '2023-06-23', NULL, NULL, '000000', 'O', 'N'),
(48, 'pbkdf2_sha256$150000$WFfBz2D9DbP1$rJPngN7ROeVFz8MRVr1HqZr/4vtf8BXg2+sy8f66FOs=', NULL, '8667698682', 'karthikeyan@desss.com', 0, 0, 0, '2023-06-29', NULL, NULL, '000000', 'O', 'N'),
(49, 'pbkdf2_sha256$150000$4sGoz5sQ9mI2$Bb2OUMIq8VoXvlmd0jPSGpqWakG4PEDs9IEPQX0VE38=', NULL, '9176879702', 'smartinventorry@desss.com', 0, 0, 0, '2023-07-07', NULL, NULL, '25110', 'O', 'N'),
(50, 'pbkdf2_sha256$150000$vwo991pzctgT$3+IaWYGmANGAL2Uc1ACTJL18T8/GZqP4tGmF25MXRTo=', NULL, '9994937573', 'pram@gmail.com', 0, 0, 0, '2023-07-07', NULL, NULL, '540279', 'O', 'N'),
(51, 'pbkdf2_sha256$150000$9m08ejdvfePI$n1Js4ZXrzrE93alAb1IFl9O5bluXcExbuyGfBLLcY6k=', NULL, '8668049601', 'dotamohan2135@gmail.com', 0, 0, 0, '2023-07-07', NULL, NULL, '853742', 'O', 'N'),
(52, 'pbkdf2_sha256$150000$vrFKnWf8774G$LX6TBGavMqgyNocaFLT8y+loQHpBAUtTJX0Ch74xvTo=', NULL, '8668049602', 'dotamohan21351@gmail.com', 0, 0, 0, '2023-07-07', NULL, NULL, '814267', 'O', 'N'),
(53, 'pbkdf2_sha256$150000$W7O9Dpf8FxtF$v5GRlLlArYGydFmTP8EnLCiu6C6A6TmZBsconINHIW4=', NULL, '8428097716', 'smartinventorqy@desss.com', 0, 0, 0, '2023-07-07', NULL, NULL, '569129', 'O', 'N'),
(54, 'pbkdf2_sha256$150000$rYztR4v2K2uZ$0P+da3AFzQEs+net9i87ieTaGaFD3r6n3QyeSQbijuo=', NULL, '8899776678', 'gopi12@gmail.com', 0, 0, 0, '2023-07-10', NULL, NULL, '479443', 'O', 'N'),
(55, 'pbkdf2_sha256$150000$nPXGY91a4m2l$/GC8cBP5OFqy7bMLusFu2PGaqGRWzprA895Kq+7b6JM=', NULL, '8907654321', '123@gmail.com', 0, 0, 0, '2023-07-10', NULL, NULL, '945833', 'O', 'N'),
(56, 'pbkdf2_sha256$150000$PnrlMOuQAnsj$LHGYnWDHvjhM3uey4CaLymL1D3pJLdRqNT9HsQ9lVvA=', NULL, '7598692708', 'rabiyulfahim@desss.com', 0, 0, 0, '2023-07-10', NULL, NULL, '682343', 'O', 'N'),
(57, 'pbkdf2_sha256$150000$L9QVh34hxTkh$6LN6eK6SPdRsBgMZWbe61hw0Y2FJYTLrAzUrmn1knY8=', NULL, '6381463545', 'rasikali147@gmail.com', 1, 0, 0, '2023-07-10', NULL, NULL, '173811', 'O', 'N'),
(58, 'pbkdf2_sha256$150000$2egpOl3VMytw$cLRqjM59WIPg8mYxc6XskKXF6HxqYolka9WlqQhInd4=', NULL, '638146354579', 'rasikali1478@gmail.com', 1, 0, 0, '2023-07-10', NULL, NULL, '764977', 'O', 'N'),
(59, 'pbkdf2_sha256$150000$mKXkyk0vHBid$2qtOOKnQPUIsfKFBFLKuyqbhdwbwiU2dfLWHVbRPUlE=', NULL, '6381463507', 'rasikali14@gmail.com', 1, 0, 0, '2023-07-10', NULL, NULL, '595730', 'O', 'N'),
(60, 'pbkdf2_sha256$150000$fBmSUPDCl6TP$m8Gk9OY4J8N6PycP1Zz0RLOQ7rn7O2bP3XiRqNJn4oM=', NULL, '6789354672', 'rasik453@gmail.com', 1, 0, 0, '2023-07-10', NULL, NULL, '795846', 'O', 'N'),
(61, 'pbkdf2_sha256$150000$p6ujYZup0IYZ$etlX6MJ82BYu0HQLNXJn7nUmmGf6TSnmdZuUNBAJx9I=', NULL, '6789354673', 'rasik4534@gmail.com', 1, 0, 0, '2023-07-10', NULL, NULL, '481629', 'O', 'N'),
(62, 'pbkdf2_sha256$150000$6geU2fyrn4Ky$9m2Z6dPx3ua2Z1+wjV3iaXV4UUzf5CB9vgWOBLZAnQE=', NULL, '7868874141', 'deeen22@gmail.com', 1, 0, 0, '2023-07-10', NULL, NULL, '112989', 'O', 'N'),
(63, 'pbkdf2_sha256$150000$FqOqldG6QfiL$74uN+Ry/KvFRvrnjSfefviMTWmBC+A7h6yf1XjJ6r+Q=', NULL, '6756787653', 'fahim2@gmail.com', 1, 0, 0, '2023-07-10', NULL, NULL, '378410', 'O', 'N'),
(64, 'pbkdf2_sha256$150000$HMvc7boWgVJ0$QL56B1OGfv91G3robc7BiOTOCkKO3smW3MWw6JhIAsw=', NULL, '5645676542', 'prabhu@gmail.com', 1, 0, 0, '2023-07-10', NULL, NULL, '752978', 'O', 'N'),
(65, 'pbkdf2_sha256$150000$ko07Beq6anfb$5Px7dXQ5WUjjxt8GXPbgArmr4nsad8wOFQZPYL7XDhI=', NULL, '6756765432', 'ytre123@gmail.com', 1, 0, 0, '2023-07-10', NULL, NULL, '260742', 'O', 'N'),
(66, 'pbkdf2_sha256$150000$uLWVUQFIgbLm$JA3Jy7OjzCV9LNV+7uBqif3NoIcMVdehCLWPXCsLrKg=', NULL, '9876567892', '123deen@gmail.com', 1, 0, 0, '2023-07-10', NULL, NULL, '568695', 'O', 'N'),
(67, 'pbkdf2_sha256$150000$4CeHnLFSQgo1$qLOm1vrpPSf1bNOeOhc4RjtqMcaGiTBJi15ebyNdzd0=', NULL, '7867896541', 'gopi@gmail.com', 1, 0, 0, '2023-07-10', NULL, NULL, '797445', 'O', 'N'),
(68, 'pbkdf2_sha256$150000$kMmtGOvVRvWr$5Xi/zFqeIkjgM/vbvOdgd4GRb6/R5SpF0606pE4m7Bc=', NULL, '7867896542', 'gopiasdcas@gmail.com', 1, 0, 0, '2023-07-10', NULL, NULL, '906429', 'O', 'N'),
(69, 'pbkdf2_sha256$150000$o4OKnv9U4KYp$Qfy+onmimGxDM9K5y75UqsAsxrsBFPRotFSpWqYl75c=', '2023-07-10 11:29:55.154881', '9566572877', 'sathiyasai0001@gmail.com', 1, 0, 0, '2023-07-10', NULL, NULL, '557414', 'O', 'N'),
(70, 'pbkdf2_sha256$150000$PJkzTXLhiI7e$ffi+6gAnRgtn53hgcwYVSmqY3Ge7j9lm0LauY2IYWIg=', NULL, '6767895462', 'banana@gmail.com', 0, 0, 0, '2023-07-10', NULL, NULL, '555616', 'O', 'N'),
(71, 'pbkdf2_sha256$150000$4HvdXiilT2nC$fE/G/3lajcImrekzWuOY08Gn6WqVMk3I/HTVyPGTZAU=', NULL, '6767895424', 'banana2@gmail.com', 0, 0, 0, '2023-07-10', NULL, NULL, '8022', 'O', 'N'),
(72, 'pbkdf2_sha256$150000$mpkaSH6G2GT4$U0FLdoZSlclDvVTR5BTnV8/H8WlggXjhdZMq4jL8Pzw=', NULL, '6767895421', 'banana1@gmail.com', 0, 0, 0, '2023-07-10', NULL, NULL, '490460', 'O', 'N'),
(73, 'pbkdf2_sha256$150000$feDdgEcfK8o4$7xXYFft5l8Vwy083xmD5TTJBBgHmt789f/L9AhgzBNM=', NULL, '6767895411', 'banana11@gmail.com', 0, 0, 0, '2023-07-10', NULL, NULL, '979644', 'O', 'N'),
(74, 'pbkdf2_sha256$150000$Zs26Q0i48RNn$5iEJnJT0uUPoSc5KSTJpyrz4GVUWsoNN3njJmobAqJQ=', NULL, '6767895011', 'banana110@gmail.com', 0, 0, 0, '2023-07-10', NULL, NULL, '246036', 'O', 'N'),
(75, 'pbkdf2_sha256$150000$FSPw4inNxyta$NFnghfDTRiTguR9IT8Dn9w4YOsbd+85dZ2aa41tjECM=', NULL, '8122114490', 'rajarpr14rr@gmail.com', 0, 0, 0, '2023-07-10', '2023-07-15', NULL, '460134', 'A', 'N'),
(76, 'pbkdf2_sha256$150000$ZWNVQdtOpHCu$HnmVUj60JvqLs3oVhtAwVBbiIlyydgcXgA5gUDHq2MM=', NULL, '8787678670', 'tyg3@gmail.com', 1, 0, 0, '2023-07-10', NULL, NULL, '578165', 'O', 'N'),
(77, 'pbkdf2_sha256$150000$etVhlto9x0hP$SNZaMkXPggstOdiWwGU9bWWyQHLL5N+iYyul9vxuKm8=', NULL, '7868874144', 'hahaha123@gmail.com', 1, 0, 0, '2023-07-10', NULL, NULL, '714325', 'O', 'N'),
(78, 'pbkdf2_sha256$150000$26c0nSidSVbN$pcstbPJpj/YR3nVLiCYBLA39TkUFdmvecdt1xkEp3x4=', NULL, '9600802587', 'mukesh1@gmail.com', 1, 0, 0, '2023-07-11', NULL, NULL, '428699', 'O', 'N'),
(79, 'pbkdf2_sha256$150000$DhokPXKpckVl$mt32ESNZ8YbKXYCIAQevkLAOCP7YgaszMPdzm07/jik=', NULL, '8778763223', 'rafiyulmatiq123@gmail.com', 1, 0, 0, '2023-07-11', NULL, NULL, '338764', 'O', 'N'),
(80, 'pbkdf2_sha256$150000$et4Jj9epp3ns$87R10PnALZzCxH6dK1S5dz0pLB99yziaVUi21BPowjM=', NULL, '9222333460', 'praveen7@desss.com', 1, 0, 0, '2023-07-11', NULL, NULL, '16325', 'O', 'N'),
(81, 'pbkdf2_sha256$150000$oI31d3DSiGJ9$idoYiUd+n/Mes0HmP2JYOHzeEuAq2q5513F6FfOx6Nw=', NULL, '9222333462', 'praveena2@desss.com', 1, 0, 0, '2023-07-11', NULL, NULL, '351583', 'O', 'N'),
(82, 'pbkdf2_sha256$150000$l4vUX4LCeaJC$bZlfg0FuClgJpyIj/5MwmKptpzhE/+AKd/xohJh048E=', NULL, '9765104823', 'ads@gmail.com', 0, 0, 0, '2023-07-11', NULL, NULL, '000000', 'O', 'N'),
(83, 'pbkdf2_sha256$150000$swjV4u8GLZPn$qpbq5KFw1O7sVl1r1JFAdIhWpe3f0oCIKW5I+pv+3bQ=', '2023-07-11 10:07:24.672265', '6381284573', 'nithish.kumar@desss.com', 1, 0, 0, '2023-07-11', NULL, NULL, '000000', 'O', 'N'),
(84, 'pbkdf2_sha256$150000$47JI5iX8u2mJ$ybPUuIi/PVVxLJBN63VYusvK4qHRoBpS9YL3GQdU1WU=', NULL, '7685578657', 'manokar@desss.com', 1, 0, 0, '2023-07-11', NULL, NULL, '952889', 'O', 'N'),
(85, 'pbkdf2_sha256$150000$aHlOpNUYoOqK$OtoIzaZdCkRfMGw6K76B8GR/fVboN9kvBavOlRTRUi4=', NULL, '6381334689', 'prasanth@desss.com', 1, 0, 0, '2023-07-11', NULL, NULL, '595441', 'O', 'N'),
(86, 'pbkdf2_sha256$150000$YQ6mD9e4Ebmx$Iphn9HUkyCXLtPHlmrGPyqQHUFWAYTzsEvADqyIkVIc=', NULL, '9600802586', 'chatgpt@desss.com', 1, 0, 0, '2023-07-11', NULL, NULL, '11321', 'O', 'N'),
(87, 'pbkdf2_sha256$150000$wRPl5mIm9alJ$qrIhaEKWeb0Gejvjgp/jH/2PHbuM7Pn+o4P0LFl7DgI=', NULL, '7395988544', 'rafuyulmatiq123@gmail.com', 1, 0, 0, '2023-07-11', NULL, NULL, '398389', 'O', 'N'),
(88, 'pbkdf2_sha256$150000$9OhlH2hNzLjd$8heTqudS3MjqW4rklVNNjpdnZBFcOj1cthjrB6lPDmE=', '2023-07-11 10:47:31.105791', '9344698081', 'kuruvaikrish0@gmail.com', 1, 0, 0, '2023-07-11', NULL, NULL, '653577', 'O', 'N'),
(89, 'pbkdf2_sha256$150000$czlU7n39PVeY$oTy3F/Y0chBKg/LTxTMuJggKK6G7Zu7QBpmgzYqOEuw=', '2023-07-11 11:43:01.138194', '9840661341', 'sharankarthick@desss.com', 1, 0, 0, '2023-07-11', NULL, NULL, '315237', 'O', 'N'),
(90, 'pbkdf2_sha256$150000$0WOYaDHEOCzx$Vd67IfmVh5TgjVk3Q87Q8Hfd7DrKTOYd/jY5+V/yjiQ=', '2023-07-11 11:07:38.823742', '7871485048', 'abdulsameer.rq61@gmail.com', 1, 0, 0, '2023-07-11', NULL, NULL, '000000', 'O', 'N'),
(91, 'pbkdf2_sha256$150000$T0sEeQ0OTcBC$AB6tAVdZfn4Yu5qPa6Y9wsAGWzWxClTUzOE6SnKr7CA=', '2023-09-23 05:42:40.916637', '6379278323', 'yusuf@desss.com', 1, 0, 0, '2023-07-12', NULL, NULL, '740298', 'O', 'N'),
(92, 'pbkdf2_sha256$150000$Ync3gNLg69FS$Ic1wrl9zTEYX3EAZO6vWWXtjT2RoCbkSU4Eijm6IKrQ=', '2023-08-07 05:51:47.945699', NULL, 'rafuyulmati123@gmail.com', 1, 1, 1, '2023-07-14', NULL, NULL, '000000', 'O', 'N'),
(93, 'pbkdf2_sha256$150000$8s79afq5jaUA$zWkmIVlTvNyDNu183XpVkX3WRVFEVrVa3XDq34AnKtI=', NULL, '8754582208', 'sivaprasadh08@gmail.com', 1, 0, 0, '2023-07-17', NULL, NULL, '660543', 'O', 'N'),
(94, 'pbkdf2_sha256$150000$C83JmXDRHi0W$LebjWVJFiipmPFdv9jtZ/UaSHClLG0rVduSXcWR4+zA=', NULL, '9874563212', '1111yusufdeen@gmail.com', 0, 0, 0, '2023-07-25', NULL, NULL, '210285', 'O', 'N'),
(95, 'pbkdf2_sha256$150000$LxWdTHtsej4J$vAPKBie5b7XjeEXYWchxZLr9mWpiWul8lG0JWa5mQ2k=', NULL, '6516461296', 'yusuf@gmail.com', 0, 0, 0, '2023-07-25', NULL, NULL, '773318', 'O', 'N'),
(96, '!AjcRpdi3XdwgwpfvK8AJMFR3qcGTBCfIy9ftgeDV', '2023-08-02 13:26:04.388010', 'dessstesting@gmail.com', 'dessstesting@gmail.com', 1, 0, 0, '2023-08-02', NULL, NULL, '000000', 'O', 'N'),
(97, 'pbkdf2_sha256$150000$gXZjEZNwfgXU$SyhWgsKc0pFu1PL5yK84lfYgewmC37MMaRPcMNdhxeE=', NULL, '9789096607', 'singleeapp@gmail.com', 1, 0, 0, '2023-08-02', NULL, NULL, '835083', 'O', 'N'),
(98, 'pbkdf2_sha256$150000$KqLtTK6ZHTeJ$zvftX5l7/AoYu8Q+WHUgckuTwbKdB8Q6p7p+TGbBU4s=', NULL, '8689542317', 'gopi11@gmail.com', 0, 0, 0, '2023-08-02', NULL, NULL, '187877', 'O', 'N'),
(99, 'pbkdf2_sha256$150000$Uua92aka9YZ4$sAqaHrepY16rinR7Q4IEQ6l18sMqId4PHu8Bfq3S5CM=', NULL, '8608191885', 'Aspakali180@gamil.com', 0, 0, 0, '2023-08-25', NULL, NULL, '220663', 'O', 'N'),
(100, 'pbkdf2_sha256$150000$SxvDZVcIFGru$n9HP4nJuWzNjX/fFC19fbUIK7hRKPuBjiUXi6YeVyd8=', NULL, 'pravin8754@gmail.com', 'pravin8754@gmail.com', 1, 0, 0, '2023-09-25', NULL, NULL, '000000', 'O', 'E');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_permission`
--

CREATE TABLE `accounts_permission` (
  `id` int NOT NULL,
  `user_tracking` tinyint(1) NOT NULL,
  `hide_online_status` tinyint(1) NOT NULL,
  `friendly_only_can_msg` tinyint(1) NOT NULL,
  `only_friend_can_comment` tinyint(1) NOT NULL,
  `friendly_only_can_view_profile` tinyint(1) NOT NULL,
  `premium_members_only_msg` tinyint(1) NOT NULL,
  `premium_members_only_view` tinyint(1) NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accounts_permission`
--

INSERT INTO `accounts_permission` (`id`, `user_tracking`, `hide_online_status`, `friendly_only_can_msg`, `only_friend_can_comment`, `friendly_only_can_view_profile`, `premium_members_only_msg`, `premium_members_only_view`, `user_id`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 1),
(2, 0, 0, 0, 0, 0, 0, 0, 3),
(3, 0, 0, 0, 0, 0, 0, 0, 5),
(4, 0, 0, 0, 0, 0, 0, 0, 6),
(5, 0, 0, 0, 0, 0, 0, 0, 7),
(6, 0, 0, 0, 0, 0, 0, 0, 8),
(7, 0, 0, 0, 0, 1, 0, 0, 9),
(8, 0, 0, 0, 0, 0, 0, 0, 10),
(9, 0, 0, 0, 0, 0, 0, 0, 11),
(10, 1, 0, 0, 0, 0, 0, 0, 13),
(11, 0, 0, 0, 0, 0, 0, 0, 14),
(12, 0, 0, 0, 0, 0, 0, 0, 15),
(13, 0, 0, 0, 0, 0, 0, 0, 16),
(14, 0, 0, 0, 0, 0, 0, 0, 17),
(15, 0, 0, 0, 0, 0, 0, 0, 18),
(16, 0, 0, 0, 0, 0, 0, 0, 19),
(17, 0, 0, 0, 0, 0, 0, 0, 20),
(18, 0, 0, 0, 0, 0, 0, 0, 21),
(19, 0, 0, 0, 0, 0, 0, 0, 22),
(20, 0, 0, 0, 0, 0, 0, 0, 23),
(21, 0, 0, 0, 0, 0, 0, 0, 24),
(22, 0, 0, 0, 0, 0, 0, 0, 25),
(23, 0, 0, 0, 0, 0, 0, 0, 26),
(24, 0, 0, 0, 0, 0, 0, 0, 27),
(25, 0, 0, 0, 0, 0, 0, 0, 28),
(26, 1, 0, 0, 0, 0, 0, 0, 29),
(27, 1, 0, 0, 0, 0, 0, 0, 30),
(28, 0, 0, 0, 0, 0, 0, 0, 31),
(29, 0, 0, 0, 0, 0, 0, 0, 32),
(30, 0, 0, 0, 0, 1, 0, 0, 33),
(31, 0, 0, 0, 0, 0, 0, 0, 34),
(32, 0, 0, 0, 0, 0, 0, 0, 35),
(33, 0, 0, 0, 0, 0, 0, 0, 36),
(34, 0, 0, 0, 0, 0, 0, 0, 37),
(35, 0, 0, 0, 0, 0, 0, 0, 38),
(36, 0, 0, 0, 0, 0, 0, 0, 39),
(37, 0, 0, 0, 0, 0, 0, 0, 40),
(38, 0, 0, 0, 0, 0, 0, 0, 41),
(39, 0, 0, 0, 0, 0, 0, 0, 42),
(40, 0, 0, 0, 0, 0, 0, 0, 43),
(41, 0, 0, 0, 0, 0, 0, 0, 44),
(42, 0, 0, 0, 0, 0, 0, 0, 45),
(43, 0, 0, 0, 0, 0, 0, 0, 46),
(44, 0, 0, 0, 0, 0, 0, 0, 47),
(45, 0, 0, 0, 0, 0, 0, 0, 48),
(46, 0, 0, 0, 0, 0, 0, 0, 49),
(47, 0, 0, 0, 0, 0, 0, 0, 50),
(48, 0, 0, 0, 0, 0, 0, 0, 51),
(49, 0, 0, 0, 0, 0, 0, 0, 52),
(50, 0, 0, 0, 0, 0, 0, 0, 53),
(51, 0, 0, 0, 0, 0, 0, 0, 54),
(52, 0, 0, 0, 0, 0, 0, 0, 55),
(53, 0, 0, 0, 0, 0, 0, 0, 56),
(54, 0, 0, 0, 0, 0, 0, 0, 57),
(55, 0, 0, 0, 0, 0, 0, 0, 58),
(56, 0, 0, 0, 0, 0, 0, 0, 59),
(57, 0, 0, 0, 0, 0, 0, 0, 60),
(58, 0, 0, 0, 0, 0, 0, 0, 61),
(59, 0, 0, 0, 0, 0, 0, 0, 62),
(60, 0, 0, 0, 0, 0, 0, 0, 63),
(61, 0, 0, 0, 0, 0, 0, 0, 64),
(62, 0, 0, 0, 0, 0, 0, 0, 65),
(63, 0, 0, 0, 0, 0, 0, 0, 66),
(64, 0, 0, 0, 0, 0, 0, 0, 67),
(65, 0, 0, 0, 0, 0, 0, 0, 68),
(66, 0, 0, 0, 0, 0, 0, 0, 69),
(67, 0, 0, 0, 0, 0, 0, 0, 70),
(68, 0, 0, 0, 0, 0, 0, 0, 71),
(69, 0, 0, 0, 0, 0, 0, 0, 72),
(70, 0, 0, 0, 0, 0, 0, 0, 73),
(71, 0, 0, 0, 0, 0, 0, 0, 74),
(72, 0, 0, 0, 0, 0, 0, 0, 75),
(73, 0, 0, 0, 0, 0, 0, 0, 76),
(74, 0, 0, 0, 0, 0, 0, 0, 77),
(75, 0, 0, 0, 0, 0, 0, 0, 78),
(76, 0, 0, 0, 0, 0, 0, 0, 79),
(77, 0, 0, 0, 0, 0, 0, 0, 80),
(78, 0, 0, 0, 0, 0, 0, 0, 81),
(79, 0, 0, 0, 0, 0, 0, 0, 82),
(80, 0, 0, 0, 0, 0, 0, 0, 83),
(81, 0, 0, 0, 0, 0, 0, 0, 84),
(82, 0, 0, 0, 0, 0, 0, 0, 85),
(83, 0, 0, 0, 0, 0, 0, 0, 86),
(84, 0, 0, 0, 0, 0, 0, 0, 87),
(85, 0, 0, 0, 0, 0, 0, 0, 88),
(86, 0, 0, 0, 0, 0, 0, 0, 89),
(87, 0, 0, 0, 0, 0, 0, 0, 90),
(88, 1, 0, 0, 0, 0, 0, 0, 91),
(89, 0, 0, 0, 0, 0, 0, 0, 93),
(90, 0, 0, 0, 0, 0, 0, 0, 94),
(91, 0, 0, 0, 0, 0, 0, 0, 95),
(92, 0, 0, 0, 0, 0, 0, 0, 96),
(93, 0, 0, 0, 0, 0, 0, 0, 97),
(94, 0, 0, 0, 0, 0, 0, 0, 98),
(95, 0, 0, 0, 0, 0, 0, 0, 99),
(96, 0, 0, 0, 0, 0, 0, 0, 100);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_profile`
--

CREATE TABLE `accounts_profile` (
  `id` int NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `city` varchar(200) NOT NULL,
  `is_premium` tinyint(1) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `seeking_for` varchar(1) NOT NULL,
  `latitude` decimal(12,8) NOT NULL,
  `longitude` decimal(12,8) NOT NULL,
  `about` varchar(255) NOT NULL,
  `hobby` varchar(255) NOT NULL,
  `online` tinyint(1) NOT NULL,
  `looking_for` varchar(255) NOT NULL,
  `religion` varchar(255) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `retired` varchar(255) NOT NULL,
  `marital_status` varchar(255) NOT NULL,
  `number_of_children` varchar(255) NOT NULL,
  `living_at_home` varchar(255) NOT NULL,
  `last_msg_count` int NOT NULL,
  `last_fav_count` int NOT NULL,
  `domain` varchar(1) NOT NULL,
  `profile_img_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accounts_profile`
--

INSERT INTO `accounts_profile` (`id`, `first_name`, `last_name`, `dob`, `city`, `is_premium`, `gender`, `seeking_for`, `latitude`, `longitude`, `about`, `hobby`, `online`, `looking_for`, `religion`, `occupation`, `retired`, `marital_status`, `number_of_children`, `living_at_home`, `last_msg_count`, `last_fav_count`, `domain`, `profile_img_id`, `user_id`) VALUES
(1, 'P', 'Hasim', '1999-10-02', '', 0, 'M', 'B', '10.56229610', '78.77814230', 'hii', 'hi', 0, 'Male', 'Hindu', 'Software Engineering', 'No', 'Single', '0', 'No', 0, 0, 'M', NULL, 1),
(2, 'P', 'Testing', '1999-10-02', 'Chennai', 0, 'M', 'F', '37.78583400', '-122.40641700', 'test', 'hi', 1, 'female', 'Hindu', 'Software Engineering', 'No', 'Single', '0', 'No', 0, 0, 'M', 18, 3),
(3, 'P', 'www', '1999-10-02', 'Chennai', 0, 'M', 'F', '13.08600000', '80.27510000', 'hi', 'hi', 0, 'Male', 'Hindu', 'Software Engineering', 'No', 'Single', '0', 'No', 0, 0, 'M', 16, 5),
(4, 'karthick', 'android', '1998-01-28', 'Pudukkottai', 0, 'M', 'F', '10.56243870', '78.77788050', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'M', NULL, 6),
(5, 'karthicks', 'desss', '1997-08-27', 'Pudukkottai', 0, 'M', 'F', '10.56243870', '78.77788050', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'M', NULL, 7),
(6, 'karthickdess', '', NULL, '', 0, '', 'B', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'M', NULL, 8),
(7, 'prabhu', 'gopi', '1998-03-25', 'Philadelphia', 1, 'M', 'M', '39.95570000', '-75.16980000', 'hi', 'playing outside games', 1, 'F', 'Hindu', 'senior developer', 'No', 'single', '0', 'yes', 0, 0, 'M', 21, 9),
(8, 'karthikeyan karthi', '', '1997-08-27', 'Kulattur', 0, 'M', 'F', '10.56234140', '78.77796260', '', '', 1, '', '', '', '', '', '', '', 0, 0, 'M', NULL, 10),
(9, 'Rabi', 'Testing', '1986-10-23', 'Pudukkottai', 0, 'M', 'M', '10.56240120', '78.77789630', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'M', 5, 11),
(10, 'Kamali', 'c sharp', '1995-11-23', 'Pudukkottai', 1, 'F', 'F', '10.55957750', '78.77648700', 'Testing', 'Coding', 0, 'both', 'Christian', 'senior developer', 'No', 'Single', '0', 'Yes', 0, 0, 'M', 8, 13),
(11, 'Thesingle', 'admin', '1995-11-23', '', 0, 'F', 'M', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'M', NULL, 14),
(12, 'Karthik', '', '1997-08-27', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'M', NULL, 15),
(13, 'Hp', 'Testing', '1986-10-23', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'M', NULL, 16),
(14, 'Hp', 'Testing', '1986-10-23', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'M', NULL, 17),
(15, 'praveen', 'test', '1991-09-09', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'M', NULL, 18),
(16, 'praveendesss', 'Testing', '1986-03-24', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'M', NULL, 19),
(17, 'praveendessa', 'Testinga', '1986-03-24', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'M', NULL, 20),
(18, 'praveendessa', 'Testinga', '1986-03-24', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'M', NULL, 21),
(19, 'praveendessa', 'Testinga', '1986-03-24', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'M', NULL, 22),
(20, 'Kumar', '', '1996-05-04', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'M', NULL, 23),
(21, 'Nithish', 'Kumar', '1998-06-08', 'Philadelphia', 0, 'M', 'F', '39.95570000', '-75.16980000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 24),
(22, 'Ganesh', 'T', '1997-10-07', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 25),
(23, 'Desss', 'Test', '1998-06-08', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 26),
(24, 'Desss', 'Test', '1998-06-08', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 27),
(25, 'Mukesh', 'PHP', '1997-06-16', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'M', NULL, 28),
(26, 'Sanjay', 'khan', '2000-01-01', 'Chennai', 0, 'M', 'M', '12.99272310', '80.19942150', 'tufyjfyukjdtydjgh', 'igfiyufiyhfg', 1, '', 'hindu', 'dev', '223333', 'single', '0', 'vgj', 0, 0, 'M', 20, 29),
(27, 'yusuf', 'deen', '1999-05-07', 'Philadelphia', 0, 'M', 'F', '39.95570000', '-75.16980000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 30),
(28, 'YUSUF', 'DEEN', '1999-05-07', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 31),
(29, 'mohamed', 'yusuf', '1999-05-07', 'Chennai', 0, 'M', 'F', '12.89960000', '80.22090000', '', '', 1, '', '', '', '', '', '', '', 0, 0, 'W', 22, 32),
(30, 'yusuf', 'yusuf', '1999-05-07', 'Philadelphia', 0, 'M', 'F', '39.95570000', '-75.16980000', '', '', 1, '', '', '', '', '', '', '', 0, 0, 'W', 23, 33),
(31, 'Sanjai', '', '2001-02-22', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'M', NULL, 34),
(32, 'first_name', 'last_name', NULL, '', 0, '', '', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 35),
(33, 'md', 'yusuf', '1999-05-07', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 36),
(34, 'Yusuf', 'Deenn', '1999-05-07', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 37),
(35, 'Ravanan', 'PK', '1999-07-28', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 1, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 38),
(36, 'deen', 'deen', '1999-05-07', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 39),
(37, 'deen', 'deen', '1999-05-07', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 40),
(38, 'deen', 'deen', '1999-05-07', '', 0, 'F', 'M', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 41),
(39, 'geetha', 'pram', '1999-05-07', '', 0, 'F', 'M', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 42),
(40, 'prem', 'rose', '1999-05-07', '', 0, 'F', 'M', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 43),
(41, '123', '123', '1995-11-09', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 44),
(42, '1111', '1111', '1999-05-07', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 45),
(43, '222', '222', '1999-06-01', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 46),
(44, 'Ganesh', 'T', '1997-10-07', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 1, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 47),
(45, 'karthik', '', '1997-08-27', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'M', NULL, 48),
(46, 'wef', 'wefwef', '2002-11-14', '', 0, 'F', 'M', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 49),
(47, '1234', '5678', '2009-10-13', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 50),
(48, '1111', '1111', '2003-09-02', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 51),
(49, '1111', '1111', '2003-09-02', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 52),
(50, '222', '222', '2006-07-07', '', 0, 'F', 'M', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 53),
(51, 'qq', 'qq', '1998-07-09', '', 0, 'F', 'M', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 54),
(52, '11', '11', '1998-07-16', '', 0, 'F', 'M', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 55),
(53, 'rabiul', 'fahim', '1999-05-07', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 56),
(54, 'yusuf', 'deeen', '1999-05-07', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 57),
(55, 'yusuf', 'deeen', '1999-05-07', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 58),
(56, 'yusuf', 'deeen', '1999-05-07', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 59),
(57, 'Myusuf', 'deeen', '1999-05-07', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 60),
(58, 'Myusuf', 'deeens', '1999-05-07', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 61),
(59, 'qq', 'qq', '1989-06-08', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 62),
(60, 'yusuf', 'deen', '2006-11-16', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 63),
(61, 'prabhu', 'prabhu', '1990-03-08', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 64),
(62, 'yusuf', 'yusuf', '2002-11-14', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 65),
(63, 'deen', 'deen', '2001-10-09', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 66),
(64, 'gopi', 'gopi', '2009-06-25', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 67),
(65, 'gopi', 'gopi', '2009-06-25', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 68),
(66, 'sathiya', 'sai', '1990-06-13', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 69),
(67, 'eee', 'eee', '1995-11-16', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 70),
(68, 'eee', 'eee', '1995-11-16', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 71),
(69, 'eee', 'eee', '1995-11-16', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 72),
(70, 'eee', 'eee', '1995-11-16', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 73),
(71, 'eee', 'eee', '1995-11-16', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 74),
(72, 'raja', 'ggg', '1995-01-14', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 75),
(73, 'deen', 'en', '2006-11-16', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 76),
(74, 'haha', 'haha', '2007-11-13', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 77),
(75, 'Mukesh1', 'PHP', '1997-07-16', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 78),
(76, 'Rabiyulfahim1', 'Hasim1', '1998-05-05', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 79),
(77, 'praveendessa', 'Testinga', '1986-03-24', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 80),
(78, 'praveendessa', 'Testinga', '1986-03-24', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 81),
(79, 'karthik', '', '1998-08-22', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'M', NULL, 82),
(80, 'Nithish', 'Testing', '1997-06-16', 'Chennai', 0, 'M', 'F', '13.08600000', '80.27510000', '', '', 1, '', '', '', '', '', '', '', 0, 0, 'M', NULL, 83),
(81, 'manokar', 'gopi', '1994-06-07', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 84),
(82, 'prasanth', 'prasanth', '1995-06-06', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 85),
(83, 'Chatgpt', 'open', '1996-03-06', '', 0, 'M', 'B', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 86),
(84, 'Rabiyul', 'Matiq', '1997-06-05', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 87),
(85, 'kuruvai', 'Krish', '1997-08-05', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 88),
(86, 'sharan', 'karthick', '2000-02-09', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 1, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 89),
(87, 'Abdul', 'Sameer', '1997-06-17', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'M', NULL, 90),
(88, 'mohamed', 'yusufdeen', '1999-05-07', 'Philadelphia', 1, 'M', 'F', '39.95570000', '-75.16980000', 'hi', 'test', 1, 'female', 'muslim', 'Angular developer', 'no', 'Single', '0', 'Yes', 0, 0, 'W', 26, 91),
(89, 'Desss', 'Ibfo', '2005-01-31', 'Philadelphia', 0, 'M', 'F', '39.95570000', '-75.16980000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 93),
(90, 'qq', 'qq', '1997-06-02', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 94),
(91, 'EWF', 'WERF', '1998-07-16', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 95),
(92, 'Nithish', 'Kumar K', '1998-06-08', 'Philadelphia', 0, 'M', 'M', '39.95570000', '-75.16980000', 'test', 'tset', 0, '', 'hindu', 'test', 'no', 'single', '0', 'yes', 0, 0, 'W', 28, 96),
(93, 'singlee', 'test', '1996-02-08', 'Philadelphia', 0, 'M', 'M', '39.95570000', '-75.16980000', 'test', 'test', 1, '', 'hindu', 'it', 'no', 'single', '0', 'yes', 0, 0, 'W', NULL, 97),
(94, 'mohan', 'gopi', '2007-12-15', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 98),
(95, 'Aspak', 'Ali', '1995-02-02', '', 0, 'M', 'F', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'W', NULL, 99),
(96, 'Pravin Kanth', '', NULL, '', 0, '', 'B', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'M', NULL, 100);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_userflirt`
--

CREATE TABLE `accounts_userflirt` (
  `id` int NOT NULL,
  `date` datetime(6) NOT NULL,
  `other_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accounts_userflirt`
--

INSERT INTO `accounts_userflirt` (`id`, `date`, `other_id`, `user_id`) VALUES
(1, '2023-03-24 11:30:39.913904', 3, 5),
(2, '2023-03-24 11:31:51.144997', 5, 3),
(3, '2023-04-18 10:36:55.389680', 13, 9),
(4, '2023-04-18 10:37:05.489224', 9, 13),
(5, '2023-06-12 12:28:30.331792', 24, 29),
(7, '2023-06-13 05:31:38.761557', 9, 29),
(8, '2023-06-21 13:06:19.334778', 13, 38),
(11, '2023-07-03 07:08:56.883766', 29, 9),
(12, '2023-07-11 12:56:42.500579', 13, 33),
(13, '2023-07-25 13:20:09.232055', 33, 9);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_userlike`
--

CREATE TABLE `accounts_userlike` (
  `id` int NOT NULL,
  `date` datetime(6) NOT NULL,
  `other_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accounts_userlike`
--

INSERT INTO `accounts_userlike` (`id`, `date`, `other_id`, `user_id`) VALUES
(1, '2023-03-24 10:54:36.201342', 1, 3),
(2, '2023-03-24 10:55:04.042244', 3, 1),
(4, '2023-06-12 12:28:15.002365', 24, 29),
(6, '2023-06-13 05:32:36.832543', 29, 9),
(7, '2023-06-13 05:45:50.252436', 9, 29),
(8, '2023-06-21 05:31:17.815795', 32, 9),
(9, '2023-06-21 12:12:45.948939', 3, 9),
(10, '2023-06-21 12:14:24.871813', 13, 37),
(11, '2023-06-21 12:57:05.702232', 9, 33),
(12, '2023-06-21 13:06:19.345115', 13, 38),
(13, '2023-06-21 13:55:37.378020', 33, 9),
(14, '2023-06-22 10:56:32.311498', 41, 33),
(15, '2023-07-11 12:56:42.475567', 13, 33),
(18, '2023-07-20 13:38:45.369497', 37, 13),
(19, '2023-08-02 06:55:39.576543', 91, 13),
(20, '2023-08-02 10:24:18.420967', 9, 91),
(21, '2023-08-02 13:10:55.325162', 13, 91),
(22, '2023-09-21 06:24:09.706290', 91, 9);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_userviewed`
--

CREATE TABLE `accounts_userviewed` (
  `id` int NOT NULL,
  `date` datetime(6) NOT NULL,
  `other_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accounts_userviewed`
--

INSERT INTO `accounts_userviewed` (`id`, `date`, `other_id`, `user_id`) VALUES
(1, '2023-03-24 11:26:12.498837', 3, 5),
(2, '2023-03-24 11:26:38.822849', 5, 3),
(3, '2023-03-28 05:43:52.150890', 5, 3),
(4, '2023-04-10 07:27:54.205024', 3, 1),
(5, '2023-04-18 10:35:13.585185', 9, 13),
(6, '2023-04-18 10:35:27.531701', 9, 13),
(7, '2023-04-18 10:35:35.202665', 13, 9),
(8, '2023-04-18 10:36:54.065013', 13, 9),
(9, '2023-04-18 10:36:59.160342', 9, 13),
(10, '2023-04-18 10:37:40.352145', 13, 9),
(11, '2023-04-18 10:37:43.704674', 9, 13),
(12, '2023-04-18 10:38:28.022312', 9, 13),
(13, '2023-04-18 10:39:30.586959', 13, 9),
(14, '2023-04-18 10:39:40.576314', 9, 13),
(15, '2023-04-18 10:40:40.066646', 9, 13),
(16, '2023-04-18 10:41:06.472666', 13, 9),
(17, '2023-04-18 10:41:54.774427', 9, 13),
(18, '2023-04-18 10:42:07.858040', 13, 9),
(19, '2023-04-18 10:42:23.756126', 9, 13),
(20, '2023-04-18 10:42:46.324522', 13, 9),
(21, '2023-04-18 10:42:48.509088', 9, 13),
(22, '2023-04-18 10:43:02.636393', 9, 13),
(23, '2023-04-18 10:43:32.193475', 9, 13),
(24, '2023-04-18 10:43:33.809717', 13, 9),
(25, '2023-04-18 10:43:55.936250', 13, 9),
(26, '2023-04-18 10:48:25.970452', 13, 9),
(27, '2023-04-18 10:49:40.829632', 13, 9),
(28, '2023-04-18 10:50:39.513921', 13, 9),
(29, '2023-04-18 10:50:59.240316', 9, 13),
(30, '2023-04-18 10:52:48.171672', 13, 9),
(31, '2023-04-18 10:52:49.042262', 9, 13),
(32, '2023-04-18 10:53:11.463530', 13, 9),
(33, '2023-04-18 10:53:25.121962', 9, 13),
(34, '2023-04-18 10:53:55.118869', 13, 9),
(35, '2023-04-18 10:54:11.504336', 13, 9),
(36, '2023-04-18 10:55:55.191412', 13, 9),
(37, '2023-04-20 06:57:39.141321', 13, 9),
(38, '2023-04-20 07:02:45.380421', 13, 9),
(39, '2023-04-20 07:18:05.198529', 13, 9),
(40, '2023-04-20 07:18:40.245779', 13, 9),
(41, '2023-05-17 09:23:58.247707', 13, 9),
(42, '2023-06-09 06:55:51.490777', 24, 14),
(43, '2023-06-09 10:35:55.509354', 13, 29),
(44, '2023-06-09 11:12:07.524988', 13, 9),
(45, '2023-06-09 11:24:42.804174', 9, 29),
(46, '2023-06-09 12:02:46.099920', 1, 29),
(47, '2023-06-09 12:02:54.815374', 9, 29),
(48, '2023-06-09 12:03:00.834416', 9, 29),
(49, '2023-06-09 12:09:47.510386', 9, 29),
(50, '2023-06-09 12:10:19.230223', 9, 29),
(51, '2023-06-09 12:36:15.111314', 3, 29),
(52, '2023-06-12 05:09:22.089832', 13, 9),
(53, '2023-06-12 06:32:47.601443', 13, 9),
(54, '2023-06-12 06:34:32.433322', 29, 9),
(55, '2023-06-12 06:44:29.621410', 1, 9),
(56, '2023-06-12 06:45:04.420544', 29, 9),
(57, '2023-06-12 06:45:06.202052', 29, 9),
(58, '2023-06-12 06:45:06.539121', 29, 9),
(59, '2023-06-12 06:45:06.869251', 29, 9),
(60, '2023-06-12 06:45:07.197538', 29, 9),
(61, '2023-06-12 06:45:07.521720', 29, 9),
(62, '2023-06-12 06:45:07.848068', 29, 9),
(63, '2023-06-12 06:45:08.177181', 29, 9),
(64, '2023-06-12 06:45:08.512062', 29, 9),
(65, '2023-06-12 06:45:08.825706', 29, 9),
(66, '2023-06-12 06:47:44.638122', 29, 9),
(67, '2023-06-12 06:48:40.593352', 13, 9),
(68, '2023-06-12 06:59:42.558532', 1, 9),
(69, '2023-06-12 06:59:50.127191', 5, 9),
(70, '2023-06-12 10:40:01.540685', 13, 9),
(71, '2023-06-12 10:42:36.176207', 29, 9),
(72, '2023-06-12 10:42:56.442171', 29, 9),
(73, '2023-06-12 10:42:58.684273', 13, 9),
(74, '2023-06-12 11:44:09.600802', 18, 9),
(75, '2023-06-12 11:59:03.923417', 9, 29),
(76, '2023-06-12 12:20:50.274002', 3, 29),
(77, '2023-06-12 12:28:10.163223', 24, 29),
(78, '2023-06-12 12:28:21.803236', 24, 29),
(79, '2023-06-12 12:28:37.340719', 7, 29),
(80, '2023-06-12 12:28:46.749313', 9, 29),
(81, '2023-06-12 12:30:35.193393', 9, 29),
(82, '2023-06-12 13:31:27.745020', 29, 9),
(83, '2023-06-13 05:25:19.803609', 31, 9),
(84, '2023-06-13 05:25:37.831915', 29, 9),
(85, '2023-06-13 05:31:29.514149', 9, 29),
(86, '2023-06-13 05:31:48.978269', 9, 29),
(87, '2023-06-13 05:32:12.765428', 9, 29),
(88, '2023-06-13 05:32:13.159681', 9, 29),
(89, '2023-06-13 05:32:27.909517', 29, 9),
(90, '2023-06-13 05:33:04.878955', 29, 9),
(91, '2023-06-13 05:45:37.871219', 9, 29),
(92, '2023-06-18 16:08:09.149177', 19, 9),
(93, '2023-06-18 16:08:24.718694', 1, 9),
(94, '2023-06-19 09:59:49.388354', 31, 29),
(95, '2023-06-19 10:00:12.613904', 9, 29),
(96, '2023-06-20 09:45:15.898219', 30, 9),
(97, '2023-06-20 09:58:59.104588', 13, 32),
(98, '2023-06-20 10:00:13.717642', 13, 32),
(99, '2023-06-21 05:30:58.046268', 32, 9),
(100, '2023-06-21 07:13:14.294583', 36, 9),
(101, '2023-06-21 07:13:50.564473', 36, 9),
(102, '2023-06-21 07:14:59.607293', 36, 9),
(103, '2023-06-21 07:15:26.052277', 36, 9),
(104, '2023-06-21 07:19:57.291579', 34, 9),
(105, '2023-06-21 07:25:06.903601', 3, 9),
(106, '2023-06-21 07:25:19.398883', 3, 9),
(107, '2023-06-21 07:25:23.637465', 3, 9),
(108, '2023-06-21 07:29:49.752525', 3, 9),
(109, '2023-06-21 07:31:00.302675', 1, 9),
(110, '2023-06-21 07:31:20.077691', 36, 9),
(111, '2023-06-21 07:31:41.270820', 13, 9),
(112, '2023-06-21 07:33:30.354094', 36, 9),
(113, '2023-06-21 07:35:45.449678', 29, 9),
(114, '2023-06-21 07:35:58.205609', 29, 9),
(115, '2023-06-21 07:36:37.237608', 29, 9),
(116, '2023-06-21 09:08:55.270648', 30, 9),
(117, '2023-06-21 09:24:58.557995', 32, 9),
(118, '2023-06-21 09:33:55.617218', 5, 9),
(119, '2023-06-21 09:34:10.948367', 3, 9),
(120, '2023-06-21 09:34:25.097913', 6, 9),
(121, '2023-06-21 10:09:29.608148', 29, 9),
(122, '2023-06-21 10:18:39.083016', 34, 9),
(123, '2023-06-21 10:20:34.093749', 32, 9),
(124, '2023-06-21 11:12:33.410650', 3, 9),
(125, '2023-06-21 11:13:13.596516', 11, 9),
(126, '2023-06-21 11:15:53.427866', 5, 9),
(127, '2023-06-21 11:16:29.653324', 32, 9),
(128, '2023-06-21 11:18:16.327984', 29, 9),
(129, '2023-06-21 12:02:51.305709', 32, 9),
(130, '2023-06-21 12:03:09.752778', 32, 9),
(131, '2023-06-21 12:03:22.777875', 32, 9),
(132, '2023-06-21 12:10:37.268991', 32, 9),
(133, '2023-06-21 12:12:26.522870', 3, 9),
(134, '2023-06-21 12:12:51.818606', 1, 9),
(135, '2023-06-21 12:14:03.253333', 13, 37),
(136, '2023-06-21 12:14:46.570323', 13, 37),
(137, '2023-06-21 12:16:34.604701', 13, 37),
(138, '2023-06-21 12:17:01.737720', 13, 30),
(139, '2023-06-21 12:17:54.163826', 13, 30),
(140, '2023-06-21 12:21:10.851204', 13, 33),
(141, '2023-06-21 12:24:51.494550', 1, 9),
(142, '2023-06-21 12:41:28.048067', 33, 9),
(143, '2023-06-21 12:55:59.008755', 9, 33),
(144, '2023-06-21 12:56:14.083561', 33, 9),
(145, '2023-06-21 12:56:44.301574', 9, 33),
(146, '2023-06-21 12:57:00.351754', 9, 33),
(147, '2023-06-21 13:05:56.480034', 13, 38),
(148, '2023-06-21 13:10:24.372162', 13, 33),
(149, '2023-06-21 13:24:19.194565', 13, 33),
(150, '2023-06-21 13:26:02.081933', 33, 9),
(151, '2023-06-21 13:49:44.013047', 9, 33),
(152, '2023-06-21 13:53:02.064434', 9, 33),
(153, '2023-06-21 13:55:49.625784', 36, 9),
(154, '2023-06-21 13:59:56.900482', 13, 33),
(155, '2023-06-21 14:06:38.283046', 29, 9),
(156, '2023-06-22 05:21:33.913719', 13, 33),
(157, '2023-06-22 05:22:04.373475', 9, 33),
(158, '2023-06-22 05:26:59.877725', 41, 33),
(159, '2023-06-22 05:27:29.608772', 41, 33),
(160, '2023-06-22 05:34:05.535684', 42, 33),
(161, '2023-06-22 05:36:25.717939', 41, 33),
(162, '2023-06-22 05:39:34.716035', 13, 33),
(163, '2023-06-22 05:43:17.656462', 41, 33),
(164, '2023-06-22 05:43:27.532078', 13, 33),
(165, '2023-06-22 05:43:31.358515', 41, 33),
(166, '2023-06-22 05:44:19.425163', 32, 9),
(167, '2023-06-22 06:08:02.395190', 43, 33),
(168, '2023-06-22 06:28:40.507905', 44, 9),
(169, '2023-06-22 06:28:55.562679', 38, 9),
(170, '2023-06-22 06:33:15.563875', 30, 9),
(171, '2023-06-22 09:17:02.135628', 5, 9),
(172, '2023-06-22 09:17:12.709184', 43, 33),
(173, '2023-06-22 10:23:57.211128', 21, 9),
(174, '2023-06-22 10:24:05.894884', 18, 9),
(175, '2023-06-22 10:43:43.470577', 33, 9),
(176, '2023-06-22 10:43:50.286368', 29, 9),
(177, '2023-06-22 10:44:14.263698', 3, 9),
(178, '2023-06-22 10:44:19.161352', 33, 9),
(179, '2023-06-22 10:44:36.234038', 3, 9),
(180, '2023-06-22 10:44:41.548434', 33, 9),
(181, '2023-06-22 10:44:51.101824', 33, 9),
(182, '2023-06-22 10:44:55.018181', 29, 9),
(183, '2023-06-22 10:45:41.581982', 33, 9),
(184, '2023-06-22 10:46:37.313739', 33, 9),
(185, '2023-06-22 10:46:46.723331', 33, 9),
(186, '2023-06-22 10:47:43.894081', 33, 9),
(187, '2023-06-22 10:50:14.873838', 13, 33),
(188, '2023-06-22 10:51:20.256564', 42, 33),
(189, '2023-06-22 10:51:49.124303', 9, 33),
(190, '2023-06-22 10:52:03.375118', 9, 33),
(191, '2023-06-22 10:52:09.425892', 9, 33),
(192, '2023-06-22 10:52:25.033751', 43, 33),
(193, '2023-06-22 10:52:34.663315', 43, 33),
(194, '2023-06-22 10:52:45.140194', 33, 9),
(195, '2023-06-22 10:53:17.591578', 3, 9),
(196, '2023-06-22 10:53:31.314236', 33, 9),
(197, '2023-06-22 10:53:49.000679', 33, 9),
(198, '2023-06-22 10:53:58.081794', 9, 33),
(199, '2023-06-22 10:54:43.752284', 33, 9),
(200, '2023-06-22 10:55:01.169480', 33, 9),
(201, '2023-06-22 10:55:17.540649', 13, 33),
(202, '2023-06-22 10:55:21.736107', 9, 33),
(203, '2023-06-22 10:55:24.951795', 9, 33),
(204, '2023-06-22 10:55:36.006607', 41, 33),
(205, '2023-06-22 10:56:35.008205', 9, 33),
(206, '2023-06-22 11:12:19.519474', 33, 9),
(207, '2023-06-22 11:12:30.781308', 33, 9),
(208, '2023-06-22 11:12:41.361646', 33, 9),
(209, '2023-06-22 11:12:51.666632', 33, 9),
(210, '2023-06-22 11:13:03.403698', 9, 33),
(211, '2023-06-22 11:21:26.156489', 9, 33),
(212, '2023-06-22 11:22:28.571323', 9, 33),
(213, '2023-06-22 11:38:37.645292', 9, 33),
(214, '2023-06-22 11:38:45.921144', 9, 33),
(215, '2023-06-22 11:38:59.046528', 9, 33),
(216, '2023-06-22 11:39:07.483487', 41, 33),
(217, '2023-06-22 11:39:25.506160', 9, 33),
(218, '2023-06-22 11:39:29.565114', 9, 33),
(219, '2023-06-22 11:39:29.918756', 9, 33),
(220, '2023-06-22 11:39:37.113447', 9, 33),
(221, '2023-06-22 11:39:38.659372', 9, 33),
(222, '2023-06-22 11:39:40.589082', 9, 33),
(223, '2023-06-22 11:39:42.370722', 13, 33),
(224, '2023-06-22 11:39:57.449636', 13, 33),
(225, '2023-06-22 11:40:13.595684', 43, 33),
(226, '2023-06-22 11:40:36.480676', 9, 33),
(227, '2023-06-22 11:40:52.788429', 13, 33),
(228, '2023-06-22 11:41:14.590439', 33, 9),
(229, '2023-06-22 11:41:29.565219', 9, 33),
(230, '2023-06-22 11:41:49.396179', 33, 9),
(231, '2023-06-22 11:42:01.177575', 9, 33),
(232, '2023-06-22 11:42:02.915301', 9, 33),
(233, '2023-06-22 11:42:27.177209', 33, 9),
(234, '2023-06-22 11:42:42.790115', 9, 33),
(235, '2023-06-22 11:43:08.443096', 33, 9),
(236, '2023-06-22 11:43:15.838999', 33, 9),
(237, '2023-06-22 11:43:29.974320', 33, 9),
(238, '2023-06-22 11:43:58.567912', 33, 9),
(239, '2023-06-22 11:44:11.606365', 33, 9),
(240, '2023-06-22 11:44:24.896950', 33, 9),
(241, '2023-06-22 11:44:41.733065', 9, 33),
(242, '2023-06-22 11:44:54.946528', 33, 9),
(243, '2023-06-22 11:45:07.155770', 9, 33),
(244, '2023-06-22 11:45:13.651360', 9, 33),
(245, '2023-06-22 11:45:22.873760', 9, 33),
(246, '2023-06-22 11:45:38.033512', 9, 33),
(247, '2023-06-22 11:45:44.816050', 9, 33),
(248, '2023-06-22 11:46:19.100464', 43, 33),
(249, '2023-06-22 11:46:23.541188', 9, 33),
(250, '2023-06-22 11:46:55.195994', 9, 33),
(251, '2023-06-22 11:47:04.269216', 9, 33),
(252, '2023-06-22 11:47:36.834356', 9, 33),
(253, '2023-06-22 11:47:50.445062', 13, 33),
(254, '2023-06-22 11:48:33.925037', 9, 33),
(255, '2023-06-22 11:48:59.395413', 9, 33),
(256, '2023-06-22 11:50:21.220931', 9, 33),
(257, '2023-06-22 11:52:43.020968', 9, 33),
(258, '2023-06-22 11:54:47.306486', 41, 33),
(259, '2023-06-22 11:56:04.054796', 13, 33),
(260, '2023-06-22 12:07:29.341835', 9, 33),
(261, '2023-06-22 12:07:34.778630', 9, 33),
(262, '2023-06-22 12:07:42.434876', 13, 33),
(263, '2023-06-22 12:27:49.647743', 13, 33),
(264, '2023-06-22 12:29:12.112281', 13, 33),
(265, '2023-06-22 12:32:22.412743', 41, 33),
(266, '2023-06-22 12:33:20.727022', 9, 33),
(267, '2023-06-22 12:33:26.499819', 33, 9),
(268, '2023-06-22 12:33:36.169069', 9, 33),
(269, '2023-06-22 12:33:37.768904', 9, 33),
(270, '2023-06-22 12:33:47.845405', 9, 33),
(271, '2023-06-22 12:33:55.142822', 9, 33),
(272, '2023-06-22 12:34:16.166553', 9, 33),
(273, '2023-06-22 12:34:32.267059', 13, 33),
(274, '2023-06-22 12:34:45.770784', 41, 33),
(275, '2023-06-22 12:34:56.992027', 9, 33),
(276, '2023-06-22 12:35:33.794661', 13, 33),
(277, '2023-06-22 13:12:09.084175', 9, 33),
(278, '2023-06-22 13:13:20.224876', 13, 33),
(279, '2023-06-22 13:13:45.696424', 13, 33),
(280, '2023-06-22 13:27:50.046478', 13, 33),
(281, '2023-06-22 13:28:35.090778', 43, 33),
(282, '2023-06-22 13:36:06.604226', 43, 33),
(283, '2023-06-23 10:45:57.689335', 32, 9),
(284, '2023-06-23 11:36:59.945017', 3, 9),
(285, '2023-06-23 11:56:43.191802', 29, 9),
(286, '2023-06-23 12:01:09.721918', 33, 9),
(287, '2023-06-23 12:01:13.816453', 3, 9),
(288, '2023-06-23 12:03:32.775871', 5, 9),
(289, '2023-06-23 12:03:46.919990', 1, 9),
(290, '2023-06-23 12:49:18.307748', 32, 9),
(291, '2023-06-23 13:26:15.832592', 33, 9),
(292, '2023-06-23 13:37:28.158614', 5, 9),
(293, '2023-06-23 13:37:35.831100', 3, 9),
(294, '2023-06-23 13:37:41.897035', 32, 9),
(295, '2023-06-23 13:37:46.285585', 33, 9),
(296, '2023-06-23 13:39:28.203803', 29, 9),
(297, '2023-06-24 07:20:26.355419', 10, 9),
(298, '2023-06-24 18:43:58.116362', 32, 9),
(299, '2023-06-29 06:04:26.584366', 29, 9),
(300, '2023-06-29 06:48:27.838113', 32, 9),
(301, '2023-07-03 06:51:03.212927', 33, 9),
(302, '2023-07-03 06:51:06.917445', 33, 9),
(303, '2023-07-03 06:51:12.996490', 32, 9),
(304, '2023-07-03 07:06:51.513395', 33, 9),
(305, '2023-07-03 07:06:56.365259', 29, 9),
(306, '2023-07-04 06:09:45.901449', 22, 9),
(307, '2023-07-04 06:18:44.556384', 21, 9),
(308, '2023-07-06 05:57:13.590758', 33, 9),
(309, '2023-07-06 05:57:20.933455', 32, 9),
(310, '2023-07-06 09:34:20.244307', 33, 9),
(311, '2023-07-06 09:36:21.822116', 33, 9),
(312, '2023-07-06 09:36:21.830763', 33, 9),
(313, '2023-07-06 09:36:28.331325', 33, 9),
(314, '2023-07-06 09:37:20.797382', 42, 33),
(315, '2023-07-06 09:38:58.570337', 43, 33),
(316, '2023-07-06 09:43:40.583559', 13, 33),
(317, '2023-07-06 09:43:53.880393', 41, 33),
(318, '2023-07-06 09:44:00.845196', 9, 33),
(319, '2023-07-06 09:44:27.785085', 32, 9),
(320, '2023-07-06 09:44:37.749472', 33, 9),
(321, '2023-07-06 09:44:54.737863', 33, 9),
(322, '2023-07-06 09:45:05.985634', 33, 9),
(323, '2023-07-06 09:45:15.686099', 33, 9),
(324, '2023-07-06 09:45:27.138550', 33, 9),
(325, '2023-07-06 09:45:42.172211', 33, 9),
(326, '2023-07-06 09:45:50.920967', 32, 9),
(327, '2023-07-06 09:46:56.412662', 33, 9),
(328, '2023-07-06 09:47:02.393533', 30, 9),
(329, '2023-07-06 09:49:26.348011', 33, 9),
(330, '2023-07-06 09:49:29.871841', 29, 9),
(331, '2023-07-06 09:50:53.782272', 33, 9),
(332, '2023-07-06 09:51:00.036786', 33, 9),
(333, '2023-07-06 09:51:13.922972', 29, 9),
(334, '2023-07-06 09:53:14.854734', 32, 9),
(335, '2023-07-06 09:53:33.807554', 33, 9),
(336, '2023-07-06 09:53:40.520469', 29, 9),
(337, '2023-07-06 09:57:33.047617', 3, 9),
(338, '2023-07-06 09:57:56.774659', 21, 9),
(339, '2023-07-06 10:28:15.707210', 32, 9),
(340, '2023-07-06 10:28:23.043275', 33, 9),
(341, '2023-07-06 10:29:43.355618', 3, 9),
(342, '2023-07-06 10:30:02.742910', 33, 9),
(343, '2023-07-07 06:11:27.834626', 5, 9),
(344, '2023-07-07 10:20:56.497067', 33, 9),
(345, '2023-07-07 12:10:57.190559', 33, 9),
(346, '2023-07-07 12:11:11.940071', 33, 9),
(347, '2023-07-07 12:11:13.936489', 33, 9),
(348, '2023-07-07 12:12:02.280673', 41, 33),
(349, '2023-07-07 13:21:51.020440', 53, 33),
(350, '2023-07-07 13:53:03.001599', 33, 9),
(351, '2023-07-07 13:53:10.460008', 33, 9),
(352, '2023-07-10 11:28:09.073455', 21, 9),
(353, '2023-07-10 14:08:52.685315', 3, 9),
(354, '2023-07-11 10:52:13.391084', 5, 3),
(355, '2023-07-11 11:02:02.703702', 41, 89),
(356, '2023-07-11 11:06:14.838786', 41, 89),
(357, '2023-07-11 11:06:18.233690', 42, 89),
(358, '2023-07-11 12:56:26.055507', 13, 33),
(359, '2023-07-12 12:20:58.133561', 13, 33),
(360, '2023-07-12 13:40:37.380738', 13, 91),
(361, '2023-07-13 05:40:36.151857', 13, 9),
(362, '2023-07-13 05:41:13.957019', 9, 13),
(363, '2023-07-13 05:42:15.654644', 13, 9),
(364, '2023-07-13 05:43:10.245072', 13, 9),
(365, '2023-07-13 05:45:25.922930', 21, 9),
(366, '2023-07-13 05:45:40.349735', 13, 9),
(367, '2023-07-13 05:52:40.218256', 9, 13),
(368, '2023-07-13 06:04:23.566130', 41, 13),
(369, '2023-07-13 06:05:07.302680', 91, 9),
(370, '2023-07-13 06:06:02.769078', 13, 9),
(371, '2023-07-13 06:08:50.381844', 13, 9),
(372, '2023-07-13 13:27:05.192594', 13, 91),
(373, '2023-07-13 13:27:24.967647', 13, 91),
(374, '2023-07-13 13:27:39.727033', 42, 91),
(375, '2023-07-14 06:03:14.022328', 13, 91),
(376, '2023-07-14 06:59:29.626688', 13, 91),
(377, '2023-07-14 07:01:29.669433', 91, 13),
(378, '2023-07-14 09:42:47.560273', 42, 91),
(379, '2023-07-14 09:49:36.404853', 41, 91),
(380, '2023-07-14 13:09:09.510807', 13, 91),
(381, '2023-07-15 14:06:16.346158', 13, 91),
(382, '2023-07-18 05:55:32.808325', 13, 91),
(383, '2023-07-18 05:56:11.225790', 42, 91),
(384, '2023-07-18 05:59:11.842891', 13, 91),
(385, '2023-07-20 06:38:22.332934', 13, 91),
(386, '2023-07-20 06:38:31.666207', 13, 91),
(387, '2023-07-20 09:08:58.343367', 13, 91),
(388, '2023-07-20 09:09:03.041330', 53, 91),
(389, '2023-07-20 10:02:13.904248', 13, 91),
(390, '2023-07-20 10:14:18.137174', 13, 91),
(391, '2023-07-20 10:15:02.099112', 13, 91),
(392, '2023-07-20 10:16:13.156286', 13, 91),
(393, '2023-07-20 11:12:22.395371', 13, 91),
(394, '2023-07-20 11:14:54.260596', 13, 91),
(395, '2023-07-20 11:17:12.191053', 13, 91),
(396, '2023-07-20 11:24:49.542190', 13, 91),
(397, '2023-07-20 11:25:58.483743', 13, 91),
(398, '2023-07-20 11:26:17.157237', 13, 91),
(399, '2023-07-20 11:30:47.370959', 13, 91),
(400, '2023-07-20 11:30:55.457970', 13, 91),
(401, '2023-07-20 11:31:10.917521', 13, 91),
(402, '2023-07-20 11:32:06.384280', 13, 91),
(403, '2023-07-20 11:33:48.257232', 13, 91),
(404, '2023-07-20 11:36:11.755490', 13, 91),
(405, '2023-07-20 11:41:10.486800', 13, 91),
(406, '2023-07-20 11:41:11.330623', 13, 91),
(407, '2023-07-20 12:00:24.444927', 13, 91),
(408, '2023-07-20 12:05:43.864111', 13, 91),
(409, '2023-07-20 12:08:07.312659', 13, 91),
(410, '2023-07-20 12:09:21.083992', 13, 91),
(411, '2023-07-20 12:11:51.129841', 13, 91),
(412, '2023-07-20 13:05:13.822046', 13, 91),
(413, '2023-07-20 13:05:26.960952', 13, 91),
(414, '2023-07-20 13:05:44.588155', 13, 91),
(415, '2023-07-20 13:05:55.969734', 13, 91),
(416, '2023-07-20 13:06:33.628520', 13, 91),
(417, '2023-07-20 13:06:41.910656', 13, 91),
(418, '2023-07-20 13:08:32.517574', 13, 91),
(419, '2023-07-20 13:10:50.061507', 13, 91),
(420, '2023-07-20 13:11:07.271012', 13, 91),
(421, '2023-07-20 13:36:08.163966', 41, 91),
(422, '2023-07-20 13:36:17.067785', 41, 91),
(423, '2023-07-20 13:37:23.429944', 13, 91),
(424, '2023-07-20 13:38:07.252843', 91, 13),
(425, '2023-07-20 13:38:36.682053', 33, 13),
(426, '2023-07-20 13:38:38.441374', 37, 13),
(427, '2023-07-20 13:38:56.137307', 91, 13),
(428, '2023-07-21 11:24:30.948751', 91, 13),
(429, '2023-07-21 11:24:51.270451', 91, 13),
(430, '2023-07-22 12:07:23.756916', 49, 13),
(431, '2023-07-22 12:19:52.089467', 91, 13),
(432, '2023-07-22 12:44:07.179431', 13, 91),
(433, '2023-07-22 12:44:07.417869', 13, 91),
(434, '2023-07-25 06:50:26.129470', 42, 91),
(435, '2023-07-25 06:50:58.845340', 13, 91),
(436, '2023-07-25 07:03:44.434847', 41, 91),
(437, '2023-07-25 07:03:50.223174', 42, 91),
(438, '2023-07-25 07:04:14.597589', 43, 91),
(439, '2023-07-25 07:04:34.621295', 41, 91),
(440, '2023-07-25 07:07:17.062018', 55, 91),
(441, '2023-07-25 13:11:17.128724', 9, 91),
(442, '2023-07-25 13:16:14.296421', 33, 9),
(443, '2023-07-25 13:16:25.881744', 9, 33),
(444, '2023-07-25 13:16:40.965059', 33, 9),
(445, '2023-07-25 13:17:06.813950', 9, 33),
(446, '2023-07-25 13:17:20.096619', 33, 9),
(447, '2023-07-25 13:18:00.739368', 33, 9),
(448, '2023-07-25 13:18:20.547639', 33, 9),
(449, '2023-07-25 13:18:49.873878', 33, 9),
(450, '2023-07-25 13:19:46.488904', 33, 9),
(451, '2023-07-25 13:19:54.471664', 9, 33),
(452, '2023-07-25 13:20:12.093113', 33, 9),
(453, '2023-07-25 13:20:44.872466', 33, 9),
(454, '2023-07-25 13:21:04.675488', 91, 9),
(455, '2023-07-25 13:21:10.590551', 33, 9),
(456, '2023-07-25 13:21:21.129432', 33, 9),
(457, '2023-07-25 13:21:53.909648', 9, 33),
(458, '2023-07-25 13:22:41.656345', 33, 9),
(459, '2023-07-25 13:24:22.910027', 33, 9),
(460, '2023-07-25 13:48:22.961789', 33, 9),
(461, '2023-07-25 13:48:45.974566', 33, 9),
(462, '2023-07-25 13:49:06.120247', 33, 9),
(463, '2023-07-25 13:56:17.214214', 3, 9),
(464, '2023-07-25 13:56:42.165049', 11, 9),
(465, '2023-07-26 07:21:54.925621', 33, 9),
(466, '2023-07-26 07:22:04.697027', 33, 9),
(467, '2023-07-26 07:22:46.265345', 33, 9),
(468, '2023-07-26 07:22:52.630795', 33, 9),
(469, '2023-07-26 07:22:56.174887', 33, 9),
(470, '2023-07-26 07:23:05.107559', 33, 9),
(471, '2023-07-26 07:23:06.987695', 33, 9),
(472, '2023-07-26 07:23:07.534684', 33, 9),
(473, '2023-07-26 07:23:22.669111', 33, 9),
(474, '2023-07-26 07:23:29.344952', 13, 9),
(475, '2023-07-26 07:23:38.650942', 5, 9),
(476, '2023-07-26 07:24:03.002617', 9, 91),
(477, '2023-07-26 07:25:07.463076', 91, 9),
(478, '2023-07-26 09:26:08.560799', 9, 91),
(479, '2023-07-26 09:46:10.326703', 9, 91),
(480, '2023-07-26 10:30:52.180055', 11, 9),
(481, '2023-07-26 10:37:40.309813', 9, 91),
(482, '2023-07-27 13:19:30.687949', 9, 91),
(483, '2023-07-28 11:53:42.540215', 91, 13),
(484, '2023-07-28 14:27:45.935301', 33, 13),
(485, '2023-07-28 14:27:49.836069', 30, 13),
(486, '2023-07-28 14:29:41.363559', 41, 13),
(487, '2023-07-28 14:29:46.798992', 42, 13),
(488, '2023-07-28 14:29:50.804922', 43, 13),
(489, '2023-07-28 14:29:56.083994', 54, 13),
(490, '2023-07-28 14:30:48.026253', 11, 9),
(491, '2023-07-28 14:33:57.747124', 84, 91),
(492, '2023-07-28 14:40:36.599591', 91, 13),
(493, '2023-07-31 07:10:29.376853', 30, 91),
(494, '2023-07-31 07:12:34.003770', 13, 91),
(495, '2023-07-31 07:12:43.822881', 41, 91),
(496, '2023-07-31 09:35:28.810348', 13, 91),
(497, '2023-08-02 06:32:30.768818', 13, 30),
(498, '2023-08-02 06:37:00.271135', 91, 30),
(499, '2023-08-02 06:40:59.079539', 13, 30),
(500, '2023-08-02 06:53:51.906719', 91, 30),
(501, '2023-08-02 06:54:05.964896', 42, 91),
(502, '2023-08-02 06:54:14.173288', 30, 91),
(503, '2023-08-02 06:55:28.413571', 91, 13),
(504, '2023-08-02 06:56:05.098796', 11, 9),
(505, '2023-08-02 06:56:26.490246', 13, 9),
(506, '2023-08-02 07:00:30.604249', 42, 30),
(507, '2023-08-02 07:03:04.138044', 91, 30),
(508, '2023-08-02 07:03:17.907428', 91, 30),
(509, '2023-08-02 07:05:12.160765', 11, 9),
(510, '2023-08-02 07:15:14.221155', 42, 13),
(511, '2023-08-02 10:20:13.393265', 9, 13),
(512, '2023-08-02 10:22:59.695018', 9, 91),
(513, '2023-08-02 10:53:51.373557', 13, 96),
(514, '2023-08-02 12:38:59.668955', 9, 97),
(515, '2023-08-02 13:05:51.541992', 1, 96),
(516, '2023-08-02 13:06:02.905367', 1, 96),
(517, '2023-08-02 13:06:12.359678', 1, 96),
(518, '2023-08-02 13:06:53.180864', 1, 96),
(519, '2023-08-02 13:07:20.310692', 1, 96),
(520, '2023-08-02 13:07:30.483879', 1, 96),
(521, '2023-08-02 13:08:23.175342', 41, 91),
(522, '2023-08-02 13:08:27.620289', 41, 91),
(523, '2023-08-02 13:08:33.593280', 41, 91),
(524, '2023-08-02 13:08:38.457195', 97, 96),
(525, '2023-08-02 13:08:50.833310', 41, 91),
(526, '2023-08-02 13:08:53.046800', 96, 97),
(527, '2023-08-02 13:09:01.192278', 41, 91),
(528, '2023-08-02 13:09:22.954800', 41, 91),
(529, '2023-08-02 13:09:35.534391', 13, 91),
(530, '2023-08-02 13:09:48.593955', 33, 9),
(531, '2023-08-02 13:09:53.406841', 33, 9),
(532, '2023-08-02 13:09:56.575863', 30, 9),
(533, '2023-08-02 13:10:06.599900', 30, 9),
(534, '2023-08-02 13:10:18.488967', 30, 9),
(535, '2023-08-02 13:10:39.216525', 97, 96),
(536, '2023-08-02 13:10:42.949864', 91, 13),
(537, '2023-08-02 13:10:56.182709', 13, 91),
(538, '2023-08-02 13:11:02.158877', 13, 91),
(539, '2023-08-02 13:11:11.671882', 13, 91),
(540, '2023-08-02 13:11:17.311272', 13, 91),
(541, '2023-08-02 13:11:37.051130', 13, 30),
(542, '2023-08-02 13:11:43.560575', 13, 91),
(543, '2023-08-02 13:11:58.832734', 91, 13),
(544, '2023-08-02 13:12:13.918544', 97, 96),
(545, '2023-08-02 13:12:17.281423', 42, 13),
(546, '2023-08-02 13:12:18.748681', 97, 96),
(547, '2023-08-02 13:12:26.063391', 91, 13),
(548, '2023-08-02 13:12:55.058594', 13, 91),
(549, '2023-08-02 13:13:57.080977', 91, 13),
(550, '2023-08-02 13:14:08.435703', 13, 91),
(551, '2023-08-02 13:14:43.198575', 91, 13),
(552, '2023-08-02 13:15:53.384160', 96, 97),
(553, '2023-08-02 13:15:54.984953', 96, 97),
(554, '2023-08-02 13:15:55.161483', 96, 97),
(555, '2023-08-02 13:15:55.308237', 96, 97),
(556, '2023-08-02 13:15:55.454941', 96, 97),
(557, '2023-08-02 13:15:55.581096', 96, 97),
(558, '2023-08-02 13:15:55.705925', 96, 97),
(559, '2023-08-02 13:15:55.850369', 96, 97),
(560, '2023-08-02 13:15:56.007085', 96, 97),
(561, '2023-08-02 13:26:33.825025', 55, 91),
(562, '2023-08-02 13:26:42.025054', 1, 96),
(563, '2023-08-02 13:26:59.393854', 55, 91),
(564, '2023-08-02 13:27:07.036034', 55, 91),
(565, '2023-08-02 13:28:12.836866', 13, 91),
(566, '2023-08-02 13:28:29.830544', 13, 91),
(567, '2023-08-02 13:45:32.167848', 41, 33),
(568, '2023-08-03 05:11:20.541946', 13, 91),
(569, '2023-08-03 05:12:10.848934', 91, 13),
(570, '2023-08-03 05:12:17.564586', 13, 91),
(571, '2023-08-03 05:12:34.740404', 13, 91),
(572, '2023-08-03 05:14:53.199903', 13, 91),
(573, '2023-08-03 05:15:08.459782', 30, 91),
(574, '2023-08-03 05:50:38.090395', 13, 91),
(575, '2023-08-03 06:37:05.825027', 91, 9),
(576, '2023-08-03 06:37:18.735825', 9, 91),
(577, '2023-08-03 06:37:20.280524', 9, 91),
(578, '2023-08-03 06:37:21.403806', 9, 91),
(579, '2023-08-03 06:37:22.340627', 9, 91),
(580, '2023-08-03 06:37:23.145804', 9, 91),
(581, '2023-08-03 06:37:23.938396', 9, 91),
(582, '2023-08-03 06:37:24.919763', 9, 91),
(583, '2023-08-03 06:37:25.815009', 9, 91),
(584, '2023-08-03 06:37:26.408650', 13, 91),
(585, '2023-08-03 06:37:30.007616', 13, 91),
(586, '2023-08-03 06:37:33.567552', 13, 91),
(587, '2023-08-03 06:37:37.115321', 30, 91),
(588, '2023-08-03 06:37:42.431267', 9, 91),
(589, '2023-08-03 06:37:58.559722', 9, 91),
(590, '2023-08-03 06:58:50.771448', 13, 91),
(591, '2023-08-03 07:26:38.538057', 13, 91),
(592, '2023-08-03 07:26:44.722213', 13, 91),
(593, '2023-08-03 07:26:47.534080', 9, 91),
(594, '2023-08-03 10:24:30.131559', 13, 91),
(595, '2023-08-03 10:24:32.663871', 41, 91),
(596, '2023-08-03 11:33:04.792486', 13, 91),
(597, '2023-08-03 11:33:17.902264', 41, 91),
(598, '2023-08-03 11:54:59.466031', 91, 13),
(599, '2023-08-03 11:55:43.124562', 13, 91),
(600, '2023-08-03 11:56:35.737558', 91, 13),
(601, '2023-08-04 05:21:30.720331', 13, 91),
(602, '2023-08-14 07:17:34.066454', 13, 91),
(603, '2023-08-14 07:19:26.034448', 13, 91),
(604, '2023-08-25 09:34:28.902934', 41, 91),
(605, '2023-08-25 09:35:04.880491', 13, 91),
(606, '2023-08-25 09:36:39.832425', 91, 13),
(607, '2023-08-25 09:36:48.843320', 91, 13),
(608, '2023-08-31 12:50:41.283805', 41, 91),
(609, '2023-09-16 09:58:27.229742', 13, 91),
(610, '2023-09-21 06:11:00.058648', 1, 9),
(611, '2023-09-21 06:15:01.844698', 3, 9),
(612, '2023-09-21 06:19:26.177444', 33, 9),
(613, '2023-09-21 06:19:27.521231', 33, 9),
(614, '2023-09-21 06:19:28.743568', 91, 9),
(615, '2023-09-21 06:31:28.218868', 3, 9),
(616, '2023-09-21 06:32:53.952652', 91, 9),
(617, '2023-09-21 10:33:36.861307', 91, 9),
(618, '2023-09-21 10:33:48.403465', 30, 9),
(619, '2023-09-21 10:34:10.992576', 33, 9),
(620, '2023-09-21 10:34:14.016267', 11, 9),
(621, '2023-09-21 12:06:43.600771', 91, 9),
(622, '2023-09-21 12:15:24.661414', 42, 91),
(623, '2023-09-21 12:18:24.674061', 9, 91),
(624, '2023-09-21 12:18:28.555346', 9, 91),
(625, '2023-09-21 12:18:30.891666', 9, 91),
(626, '2023-09-21 12:29:25.548636', 42, 91),
(627, '2023-09-21 12:53:46.644491', 91, 9),
(628, '2023-09-21 12:57:07.194583', 1, 9),
(629, '2023-09-21 14:10:38.811955', 53, 91),
(630, '2023-09-22 10:19:37.708115', 33, 9),
(631, '2023-09-22 10:19:39.979621', 91, 9),
(632, '2023-09-22 14:44:12.654259', 41, 91),
(633, '2023-09-23 07:21:47.176351', 9, 91),
(634, '2023-09-23 07:21:50.446061', 13, 91);

-- --------------------------------------------------------

--
-- Table structure for table `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `authtoken_token`
--

INSERT INTO `authtoken_token` (`key`, `created`, `user_id`) VALUES
('02c170d43be30b0f4b9eac4f8234c53ed6327a04', '2023-05-04 06:51:28.039046', 21),
('09c78978b42822a5f215fa2403ff4d02682dd6b4', '2023-06-20 09:54:49.830896', 32),
('0a0b9292e5b08b57d8a69c5d795f1422d6bbeec6', '2023-07-11 10:05:20.947781', 83),
('111750d94d877e5109c46c2476736fcda4b191ee', '2023-04-12 06:27:33.131788', 7),
('11c78429e6b034096c30ed4330ac560b0ae7eb7e', '2023-03-24 07:37:13.473167', 1),
('147830d036fb7efb8d058d27c6a9809e2c24e09a', '2023-07-11 09:44:52.682969', 82),
('16fa295f61c17546f4bdf18818fddcf1c3ef572d', '2023-07-11 11:07:15.699541', 90),
('1b5b9f01377cb25e5ab4e51e1aa9d700ecec119e', '2023-03-24 11:01:09.474830', 5),
('1ca8a8c3d43f6704b4a607a3a7da88f0893d4659', '2023-06-09 10:02:54.607424', 28),
('28345659863a95c96656ac25a3ba5c0908646118', '2023-06-20 13:17:09.151302', 34),
('2c5bd43e5698837adbbf1698505e7c7fae1e114a', '2023-09-25 10:46:29.886391', 100),
('3407b30d25c1ac56c48dfacd1acfc3bbfcaeaabf', '2023-05-04 07:00:01.371167', 23),
('422b54ee3af8c6fc17f82fbef4beca45afeb0b8a', '2023-06-23 13:57:26.275459', 47),
('48aaa6a203ac1e15d80c5baaa26211a38c86c39d', '2023-06-20 12:30:43.167486', 33),
('4b910972f25bed4047f62a752bd9c1b368758bff', '2023-08-02 10:31:17.997477', 24),
('4c587f2e2d5d2a3e7a60ec6de9e2c5c431a912e2', '2023-07-11 10:46:43.321897', 88),
('4d36919fa80423e32d36d64e7c96aa5568dc8c96', '2023-06-21 12:13:12.521014', 37),
('5b25a61bc35ded3e8b3c19e0b3fa801730eaaa90', '2023-07-12 13:27:31.664435', 91),
('5b5fe867d8a62eb34f3ae8a683909685dbe24b88', '2023-04-12 06:44:43.570136', 10),
('5ecab18480e367c3e40a25d61435a6cba29313fc', '2023-08-02 10:53:08.773490', 96),
('6119250ccb36dfde7f1361ec0d6dff0e13e7d9a7', '2023-04-18 11:37:40.750074', 14),
('66abc2d7461af0ab08d6c23d9e283d0710a9b530', '2023-07-25 06:19:31.058921', 94),
('6d92dae7207fad8289761bbf62fe5f2fc1468981', '2023-07-11 10:58:26.471806', 89),
('7299ef7270fd3a543f45ae17ae3cde42b8663ca7', '2023-06-29 06:01:24.145207', 48),
('754c51248755b6f1fe624b7c5151b809be86a061', '2023-04-12 06:42:45.039952', 8),
('79835fc80b5c0e004664576a70afc93879cafb2c', '2023-08-02 11:09:35.193199', 97),
('7c42634439ca62835f6223ce6bd75eed54d1b9fa', '2023-04-17 13:31:10.587058', 11),
('8c778ae2f3e1a0995268de263a539fd169d679f4', '2023-03-24 10:11:16.788980', 3),
('8f8a43a62e6e9fe7f6a1d8efac197aff789ceb27', '2023-05-03 13:07:24.716758', 16),
('906e7478e7f7b92aa648148993e93beca95fa8f0', '2023-06-21 13:04:04.999820', 38),
('9531d8734f7a64ab9b1be3ad771e59178e814100', '2023-08-02 13:49:28.956111', 98),
('95b3bcc4cd1c9126ec243e5996b4d10e47f2c2d7', '2023-06-09 10:13:24.887863', 29),
('9a6fee39e5b6875a2d185e9d77a7c1433ed751c1', '2023-05-03 12:57:13.757447', 15),
('9f90463bc0f67e76cf7d4340aa4dff4ad67c9147', '2023-07-25 13:09:38.097962', 95),
('a89cbaa2123ff4788360864b00aed0c98a7dad4d', '2023-08-25 09:30:39.653662', 99),
('b8466e83249b9392c99fd1ff3a6786d11a9310d2', '2023-05-04 06:52:06.704057', 22),
('b868ca43b17ebee6ab9abe35217a8ad2a2d14438', '2023-07-10 11:29:55.156976', 69),
('be87132b1fa00d10924e8320f76b300e986fa94a', '2023-04-18 10:21:55.845245', 13),
('c0834b3bc1ca8b4bd5123bb276d2355fd12d9d2f', '2023-06-20 19:53:12.931044', 35),
('cff22b8d41258288b6d79e13106d5c3cab61abe9', '2023-05-03 10:02:01.451589', 12),
('d2b5bcf84fdbd570cfc42f2f7fdc25d20799d7d2', '2023-04-10 07:17:16.760293', 2),
('d327b12e2cec74665fe926f3b333b96ed3bbcc08', '2023-05-03 13:17:06.703269', 17),
('d38d086f54e2b5cff1d1e285c66b040ab1ad22d5', '2023-06-13 04:57:52.562657', 30),
('d6cd6e8bd9289769b1f2803514173d2f0f3ab46b', '2023-05-03 13:22:02.994144', 18),
('e88b87321690ec7270815797dfc751a435e81121', '2023-07-17 13:18:28.167070', 93),
('ec5cf5eaf5fbb1588584e3f419cd8703bdf688f1', '2023-04-12 06:25:18.622167', 6),
('eede98e2d9e02fe618c2f194ef5820bf1b65444e', '2023-05-04 06:41:47.641071', 20),
('fce67fdd5f720c3b57786082a0df1e48c674d348', '2023-05-04 06:38:58.795747', 19),
('fd38aed15787d984334017fc87246ff6229e2f1f', '2023-04-12 06:44:39.330375', 9);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add Token', 6, 'add_token'),
(22, 'Can change Token', 6, 'change_token'),
(23, 'Can delete Token', 6, 'delete_token'),
(24, 'Can view Token', 6, 'view_token'),
(25, 'Can add application', 7, 'add_application'),
(26, 'Can change application', 7, 'change_application'),
(27, 'Can delete application', 7, 'delete_application'),
(28, 'Can view application', 7, 'view_application'),
(29, 'Can add access token', 8, 'add_accesstoken'),
(30, 'Can change access token', 8, 'change_accesstoken'),
(31, 'Can delete access token', 8, 'delete_accesstoken'),
(32, 'Can view access token', 8, 'view_accesstoken'),
(33, 'Can add grant', 9, 'add_grant'),
(34, 'Can change grant', 9, 'change_grant'),
(35, 'Can delete grant', 9, 'delete_grant'),
(36, 'Can view grant', 9, 'view_grant'),
(37, 'Can add refresh token', 10, 'add_refreshtoken'),
(38, 'Can change refresh token', 10, 'change_refreshtoken'),
(39, 'Can delete refresh token', 10, 'delete_refreshtoken'),
(40, 'Can view refresh token', 10, 'view_refreshtoken'),
(41, 'Can add association', 11, 'add_association'),
(42, 'Can change association', 11, 'change_association'),
(43, 'Can delete association', 11, 'delete_association'),
(44, 'Can view association', 11, 'view_association'),
(45, 'Can add code', 12, 'add_code'),
(46, 'Can change code', 12, 'change_code'),
(47, 'Can delete code', 12, 'delete_code'),
(48, 'Can view code', 12, 'view_code'),
(49, 'Can add nonce', 13, 'add_nonce'),
(50, 'Can change nonce', 13, 'change_nonce'),
(51, 'Can delete nonce', 13, 'delete_nonce'),
(52, 'Can view nonce', 13, 'view_nonce'),
(53, 'Can add user social auth', 14, 'add_usersocialauth'),
(54, 'Can change user social auth', 14, 'change_usersocialauth'),
(55, 'Can delete user social auth', 14, 'delete_usersocialauth'),
(56, 'Can view user social auth', 14, 'view_usersocialauth'),
(57, 'Can add partial', 15, 'add_partial'),
(58, 'Can change partial', 15, 'change_partial'),
(59, 'Can delete partial', 15, 'delete_partial'),
(60, 'Can view partial', 15, 'view_partial'),
(61, 'Can add FCM device', 16, 'add_fcmdevice'),
(62, 'Can change FCM device', 16, 'change_fcmdevice'),
(63, 'Can delete FCM device', 16, 'delete_fcmdevice'),
(64, 'Can view FCM device', 16, 'view_fcmdevice'),
(65, 'Can add cors model', 17, 'add_corsmodel'),
(66, 'Can change cors model', 17, 'change_corsmodel'),
(67, 'Can delete cors model', 17, 'delete_corsmodel'),
(68, 'Can view cors model', 17, 'view_corsmodel'),
(69, 'Can add my user', 18, 'add_myuser'),
(70, 'Can change my user', 18, 'change_myuser'),
(71, 'Can delete my user', 18, 'delete_myuser'),
(72, 'Can view my user', 18, 'view_myuser'),
(73, 'Can add image', 19, 'add_image'),
(74, 'Can change image', 19, 'change_image'),
(75, 'Can delete image', 19, 'delete_image'),
(76, 'Can view image', 19, 'view_image'),
(77, 'Can add user viewed', 20, 'add_userviewed'),
(78, 'Can change user viewed', 20, 'change_userviewed'),
(79, 'Can delete user viewed', 20, 'delete_userviewed'),
(80, 'Can view user viewed', 20, 'view_userviewed'),
(81, 'Can add user like', 21, 'add_userlike'),
(82, 'Can change user like', 21, 'change_userlike'),
(83, 'Can delete user like', 21, 'delete_userlike'),
(84, 'Can view user like', 21, 'view_userlike'),
(85, 'Can add user flirt', 22, 'add_userflirt'),
(86, 'Can change user flirt', 22, 'change_userflirt'),
(87, 'Can delete user flirt', 22, 'delete_userflirt'),
(88, 'Can view user flirt', 22, 'view_userflirt'),
(89, 'Can add profile', 23, 'add_profile'),
(90, 'Can change profile', 23, 'change_profile'),
(91, 'Can delete profile', 23, 'delete_profile'),
(92, 'Can view profile', 23, 'view_profile'),
(93, 'Can add permission', 24, 'add_permission'),
(94, 'Can change permission', 24, 'change_permission'),
(95, 'Can delete permission', 24, 'delete_permission'),
(96, 'Can view permission', 24, 'view_permission'),
(97, 'Can add message', 25, 'add_message'),
(98, 'Can change message', 25, 'change_message'),
(99, 'Can delete message', 25, 'delete_message'),
(100, 'Can view message', 25, 'view_message'),
(101, 'Can add image like', 26, 'add_imagelike'),
(102, 'Can change image like', 26, 'change_imagelike'),
(103, 'Can delete image like', 26, 'delete_imagelike'),
(104, 'Can view image like', 26, 'view_imagelike'),
(105, 'Can add friend', 27, 'add_friend'),
(106, 'Can change friend', 27, 'change_friend'),
(107, 'Can delete friend', 27, 'delete_friend'),
(108, 'Can view friend', 27, 'view_friend'),
(109, 'Can add favourite', 28, 'add_favourite'),
(110, 'Can change favourite', 28, 'change_favourite'),
(111, 'Can delete favourite', 28, 'delete_favourite'),
(112, 'Can view favourite', 28, 'view_favourite'),
(113, 'Can add comment', 29, 'add_comment'),
(114, 'Can change comment', 29, 'change_comment'),
(115, 'Can delete comment', 29, 'delete_comment'),
(116, 'Can view comment', 29, 'view_comment'),
(117, 'Can add blocked', 30, 'add_blocked'),
(118, 'Can change blocked', 30, 'change_blocked'),
(119, 'Can delete blocked', 30, 'delete_blocked'),
(120, 'Can view blocked', 30, 'view_blocked'),
(121, 'Can add premium', 31, 'add_premium'),
(122, 'Can change premium', 31, 'change_premium'),
(123, 'Can delete premium', 31, 'delete_premium'),
(124, 'Can view premium', 31, 'view_premium'),
(125, 'Can add transaction', 32, 'add_transaction'),
(126, 'Can change transaction', 32, 'change_transaction'),
(127, 'Can delete transaction', 32, 'delete_transaction'),
(128, 'Can view transaction', 32, 'view_transaction'),
(129, 'Can add payment', 33, 'add_payment'),
(130, 'Can change payment', 33, 'change_payment'),
(131, 'Can delete payment', 33, 'delete_payment'),
(132, 'Can view payment', 33, 'view_payment'),
(133, 'Can add add customer', 34, 'add_addcustomer'),
(134, 'Can change add customer', 34, 'change_addcustomer'),
(135, 'Can delete add customer', 34, 'delete_addcustomer'),
(136, 'Can view add customer', 34, 'view_addcustomer'),
(137, 'Can add advertisement', 35, 'add_advertisement'),
(138, 'Can change advertisement', 35, 'change_advertisement'),
(139, 'Can delete advertisement', 35, 'delete_advertisement'),
(140, 'Can view advertisement', 35, 'view_advertisement'),
(141, 'Can add notification', 36, 'add_notification'),
(142, 'Can change notification', 36, 'change_notification'),
(143, 'Can delete notification', 36, 'delete_notification'),
(144, 'Can view notification', 36, 'view_notification'),
(145, 'Can add premium detail', 37, 'add_premiumdetail'),
(146, 'Can change premium detail', 37, 'change_premiumdetail'),
(147, 'Can delete premium detail', 37, 'delete_premiumdetail'),
(148, 'Can view premium detail', 37, 'view_premiumdetail'),
(149, 'Can add about', 38, 'add_about'),
(150, 'Can change about', 38, 'change_about'),
(151, 'Can delete about', 38, 'delete_about'),
(152, 'Can view about', 38, 'view_about'),
(153, 'Can add terms and conditions', 39, 'add_termsandconditions'),
(154, 'Can change terms and conditions', 39, 'change_termsandconditions'),
(155, 'Can delete terms and conditions', 39, 'delete_termsandconditions'),
(156, 'Can view terms and conditions', 39, 'view_termsandconditions'),
(157, 'Can add help', 40, 'add_help'),
(158, 'Can change help', 40, 'change_help'),
(159, 'Can delete help', 40, 'delete_help'),
(160, 'Can view help', 40, 'view_help'),
(161, 'Can add feedback', 41, 'add_feedback'),
(162, 'Can change feedback', 41, 'change_feedback'),
(163, 'Can delete feedback', 41, 'delete_feedback'),
(164, 'Can view feedback', 41, 'view_feedback');

-- --------------------------------------------------------

--
-- Table structure for table `corsheaders_corsmodel`
--

CREATE TABLE `corsheaders_corsmodel` (
  `id` int NOT NULL,
  `cors` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-03-24 07:44:48.198819', '1', 'Rabiyulfahim', 2, '[{\"changed\": {\"fields\": [\"city\", \"is_premium\", \"gender\", \"about\", \"hobby\", \"looking_for\", \"religion\", \"occupation\", \"retired\", \"marital_status\", \"number_of_children\", \"living_at_home\"]}}]', 23, 2),
(2, '2023-03-28 09:42:49.092382', '2', 'Gopi', 2, '[{\"changed\": {\"fields\": [\"is_premium\", \"about\", \"hobby\", \"looking_for\", \"religion\", \"occupation\", \"retired\", \"marital_status\", \"number_of_children\", \"living_at_home\"]}}]', 23, 2),
(3, '2023-04-18 10:24:52.285523', '10', 'Kamali', 2, '[{\"changed\": {\"fields\": [\"is_premium\", \"about\", \"hobby\", \"looking_for\", \"religion\", \"occupation\", \"retired\", \"marital_status\", \"number_of_children\", \"living_at_home\"]}}]', 23, 12),
(4, '2023-04-18 10:48:19.544519', '7', 'prabhu', 2, '[{\"changed\": {\"fields\": [\"city\", \"is_premium\", \"about\", \"hobby\", \"looking_for\", \"religion\", \"occupation\", \"retired\", \"marital_status\", \"number_of_children\", \"living_at_home\"]}}]', 23, 12),
(5, '2023-04-18 11:37:54.069779', '14', 'thesingle@desss.com - 000000', 2, '[{\"changed\": {\"fields\": [\"is_staff\", \"is_admin\"]}}]', 18, 12),
(6, '2023-07-14 06:57:29.556843', '88', 'mohamed', 2, '[{\"changed\": {\"fields\": [\"is_premium\", \"about\", \"hobby\", \"looking_for\", \"religion\", \"occupation\", \"retired\", \"marital_status\", \"number_of_children\", \"living_at_home\"]}}]', 23, 92),
(7, '2023-07-15 06:07:42.872576', '7', 'prabhu', 2, '[{\"changed\": {\"fields\": [\"is_premium\"]}}]', 23, 92),
(8, '2023-07-15 06:07:54.078778', '10', 'Kamali', 2, '[{\"changed\": {\"fields\": [\"is_premium\"]}}]', 23, 92),
(9, '2023-08-07 06:02:36.469096', '7', 'prabhu', 2, '[{\"changed\": {\"fields\": [\"is_premium\"]}}]', 23, 92),
(10, '2023-08-07 06:07:20.148404', '88', 'mohamed', 2, '[{\"changed\": {\"fields\": [\"is_premium\"]}}]', 23, 92);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(30, 'accounts', 'blocked'),
(29, 'accounts', 'comment'),
(28, 'accounts', 'favourite'),
(27, 'accounts', 'friend'),
(19, 'accounts', 'image'),
(26, 'accounts', 'imagelike'),
(25, 'accounts', 'message'),
(18, 'accounts', 'myuser'),
(24, 'accounts', 'permission'),
(23, 'accounts', 'profile'),
(22, 'accounts', 'userflirt'),
(21, 'accounts', 'userlike'),
(20, 'accounts', 'userviewed'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(6, 'authtoken', 'token'),
(4, 'contenttypes', 'contenttype'),
(17, 'corsheaders', 'corsmodel'),
(38, 'extras', 'about'),
(41, 'extras', 'feedback'),
(40, 'extras', 'help'),
(39, 'extras', 'termsandconditions'),
(16, 'fcm_django', 'fcmdevice'),
(8, 'oauth2_provider', 'accesstoken'),
(7, 'oauth2_provider', 'application'),
(9, 'oauth2_provider', 'grant'),
(10, 'oauth2_provider', 'refreshtoken'),
(34, 'services', 'addcustomer'),
(35, 'services', 'advertisement'),
(36, 'services', 'notification'),
(33, 'services', 'payment'),
(31, 'services', 'premium'),
(37, 'services', 'premiumdetail'),
(32, 'services', 'transaction'),
(5, 'sessions', 'session'),
(11, 'social_django', 'association'),
(12, 'social_django', 'code'),
(13, 'social_django', 'nonce'),
(15, 'social_django', 'partial'),
(14, 'social_django', 'usersocialauth');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'accounts', '0001_initial', '2023-03-24 07:23:59.058243'),
(2, 'contenttypes', '0001_initial', '2023-03-24 07:23:59.471854'),
(3, 'admin', '0001_initial', '2023-03-24 07:23:59.490475'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-03-24 07:23:59.528668'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-24 07:23:59.538062'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-03-24 07:23:59.571986'),
(7, 'auth', '0001_initial', '2023-03-24 07:23:59.640274'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-03-24 07:23:59.706867'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-03-24 07:23:59.711561'),
(10, 'auth', '0004_alter_user_username_opts', '2023-03-24 07:23:59.717100'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-03-24 07:23:59.721389'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-03-24 07:23:59.723014'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-03-24 07:23:59.727187'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-03-24 07:23:59.731318'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-03-24 07:23:59.735489'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-03-24 07:23:59.743625'),
(17, 'auth', '0011_update_proxy_permissions', '2023-03-24 07:23:59.756936'),
(18, 'authtoken', '0001_initial', '2023-03-24 07:23:59.775659'),
(19, 'authtoken', '0002_auto_20160226_1747', '2023-03-24 07:23:59.842879'),
(20, 'corsheaders', '0001_initial', '2023-03-24 07:23:59.851667'),
(21, 'extras', '0001_initial', '2023-03-24 07:23:59.902449'),
(22, 'fcm_django', '0001_initial', '2023-03-24 07:23:59.947434'),
(23, 'fcm_django', '0002_auto_20160808_1645', '2023-03-24 07:23:59.990453'),
(24, 'fcm_django', '0003_auto_20170313_1314', '2023-03-24 07:24:00.002846'),
(25, 'fcm_django', '0004_auto_20181128_1642', '2023-03-24 07:24:00.013226'),
(26, 'fcm_django', '0005_auto_20170808_1145', '2023-03-24 07:24:00.046792'),
(27, 'oauth2_provider', '0001_initial', '2023-03-24 07:24:00.131758'),
(28, 'oauth2_provider', '0002_08_updates', '2023-03-24 07:24:00.436319'),
(29, 'oauth2_provider', '0003_auto_20160316_1503', '2023-03-24 07:24:00.500193'),
(30, 'oauth2_provider', '0004_auto_20160525_1623', '2023-03-24 07:24:00.577325'),
(31, 'oauth2_provider', '0005_auto_20170514_1141', '2023-03-24 07:24:01.247189'),
(32, 'oauth2_provider', '0006_auto_20171214_2232', '2023-03-24 07:24:01.396741'),
(33, 'sessions', '0001_initial', '2023-03-24 07:24:01.424938'),
(34, 'default', '0001_initial', '2023-03-24 07:24:01.511881'),
(35, 'social_auth', '0001_initial', '2023-03-24 07:24:01.513495'),
(36, 'default', '0002_add_related_name', '2023-03-24 07:24:01.571322'),
(37, 'social_auth', '0002_add_related_name', '2023-03-24 07:24:01.573277'),
(38, 'default', '0003_alter_email_max_length', '2023-03-24 07:24:01.579456'),
(39, 'social_auth', '0003_alter_email_max_length', '2023-03-24 07:24:01.581013'),
(40, 'default', '0004_auto_20160423_0400', '2023-03-24 07:24:01.593954'),
(41, 'social_auth', '0004_auto_20160423_0400', '2023-03-24 07:24:01.595887'),
(42, 'social_auth', '0005_auto_20160727_2333', '2023-03-24 07:24:01.605138'),
(43, 'social_django', '0006_partial', '2023-03-24 07:24:01.615558'),
(44, 'social_django', '0007_code_timestamp', '2023-03-24 07:24:01.632865'),
(45, 'social_django', '0008_partial_timestamp', '2023-03-24 07:24:01.650054'),
(46, 'social_django', '0005_auto_20160727_2333', '2023-03-24 07:24:01.664945'),
(47, 'social_django', '0001_initial', '2023-03-24 07:24:01.666672'),
(48, 'social_django', '0003_alter_email_max_length', '2023-03-24 07:24:01.667919'),
(49, 'social_django', '0002_add_related_name', '2023-03-24 07:24:01.669129'),
(50, 'social_django', '0004_auto_20160423_0400', '2023-03-24 07:24:01.670479');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('06vckjdya2gsvp7tktb44ghiyszerddy', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-08-08 13:15:29.200346'),
('0dcvy6xlk8v2nze0ucwur0fbsmvlz4r5', 'OTdlOTFkODc5MmJmOWEwNDI3YjQzODM4OGE5ZDE2MGJmOGYzMDg5Njp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQxZWM1OTVhNWM5YmNiMDQwYzc3MDQ0MjU4ZWNhOTcxMDE0M2U2OTIifQ==', '2023-08-16 13:25:53.009057'),
('0ebqyyaaiddtyynmriz62vo9u1o4cdpc', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-29 06:07:51.948822'),
('0fakw3np64bbq28hz7pd1swm8wtlpubw', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-08-07 04:39:16.989718'),
('0jqg1wdmkhu48uk9ptooqof8makzivlv', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-24 14:08:32.276446'),
('0ny79t43enr0pcmguj2m2wz43xzvnp8i', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-26 07:04:50.859594'),
('0o6c1m64hbrs4l54wk3va214gtc7ks6g', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-28 05:34:29.960866'),
('0qj0rbyfhusvge7zx502nr9vl1dozywy', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-08 07:07:09.875241'),
('0ro4y3m6zf2rihtp81as8cq5w3l16xgr', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-26 13:15:41.774631'),
('0t3dvcz8e53318twh0uzcgeey7j4p0hu', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:58:44.820521'),
('0xbmh475rr1kmrvu17ftz8srfzr0660h', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-08-08 05:48:46.019050'),
('0ymjwzmh5zt9wyxxj8puguigmxeidgsx', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-26 05:52:22.922789'),
('0zwx63mawb4al2oxqqyiyff2s1uxt4s2', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-21 06:42:52.883947'),
('11hx8dmhn46mvzen3cdmazt9th74oh2s', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:52:58.538040'),
('13kz4u5d5fr3cnvatpoc0of2f8rev7ab', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-29 09:31:04.893778'),
('169xc5mxtqeh1dpr01uotrikk6thw560', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-24 14:07:25.598157'),
('198g595ckmrtu6csp9d79nhk91ppdho9', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-07 05:56:53.648522'),
('1g125zqzhfux65yp4c1oly4dlr7ww176', 'YTIzMjEwNDdhNzBkMzRjNjRhOWM3ODFhZTg5YjJlMDRmMjk1MDg3Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5BbGxvd0FsbFVzZXJzTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjQ3ZmQwYjZiZDUyYjg2NDAyNDIwZTU3ZmY5ZGRjNjI3ZGE2MWViMyJ9', '2023-05-18 07:10:14.612355'),
('1kk5fd0ooet3yu6a808wwmw72791u346', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-05 10:18:24.084242'),
('1kvwrp7gd26x9w3v5brdviyoljmsnyxw', 'OTdlOTFkODc5MmJmOWEwNDI3YjQzODM4OGE5ZDE2MGJmOGYzMDg5Njp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQxZWM1OTVhNWM5YmNiMDQwYzc3MDQ0MjU4ZWNhOTcxMDE0M2U2OTIifQ==', '2023-10-06 09:40:11.509044'),
('1kxg9fil6fsqwzjpcsko3vt4cqdp0qj0', 'OTdlOTFkODc5MmJmOWEwNDI3YjQzODM4OGE5ZDE2MGJmOGYzMDg5Njp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQxZWM1OTVhNWM5YmNiMDQwYzc3MDQ0MjU4ZWNhOTcxMDE0M2U2OTIifQ==', '2023-08-17 05:59:17.437283'),
('1qsm53t71jt43aoh5fnjjqqkr07ue0sh', 'MTJmYmE4NmM0OWM2MzBiMzk3Yzg4OTRjZTE4ODIwMmQwMDk5NzA0NTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzExMDRiOGQwMTI4ZjhkNjI5OWJhY2IyMzg3MDVhMzlmYTU4NGZjIn0=', '2023-07-21 10:23:13.679836'),
('1svm8uae9cundnduw99d1gvigr5r43k2', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-27 06:03:00.917380'),
('1um6hy5c6f2ttzfc2ryq710duwe2nt8b', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-31 05:44:17.167384'),
('1vqylw7bbe96olwwb9ont985psp3w6x8', 'OTdlOTFkODc5MmJmOWEwNDI3YjQzODM4OGE5ZDE2MGJmOGYzMDg5Njp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQxZWM1OTVhNWM5YmNiMDQwYzc3MDQ0MjU4ZWNhOTcxMDE0M2U2OTIifQ==', '2023-08-17 05:06:13.390019'),
('1y98g5671ji582tmlg8g2hlti1rvzgye', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-27 06:04:37.162776'),
('1zd1e36r2gxe0bcvdblp4viemkokulrc', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-08-08 07:09:40.131185'),
('21telg05vwf1o6sd77hb508vwe0io1q6', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-21 10:47:10.466312'),
('2437izkc8wiouzh3qnfrv7f8ut9g5hzd', 'Mjg5OTEzY2Y0OTZkZmNkZDU1ZDBkOTQwMGIxMTZjYzQ1YjU0YTUxNzp7Il9hdXRoX3VzZXJfaWQiOiI5NiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiI1OGI3YTNiODA5ZDFmNzNjY2U3ZTA4ZjU1YTU2YWZmZmQ2NjE3NDcyIn0=', '2023-08-16 13:26:04.389947'),
('24xsj060obj8vs10x2j631aqxg6akb03', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-14 11:14:24.730655'),
('25hf6kq68eezuy9shzz2b00mxmk7juwg', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-07 06:28:09.888371'),
('26e28r0anh3t2c9kejhf506l7rucwlr2', 'OTdlOTFkODc5MmJmOWEwNDI3YjQzODM4OGE5ZDE2MGJmOGYzMDg5Njp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQxZWM1OTVhNWM5YmNiMDQwYzc3MDQ0MjU4ZWNhOTcxMDE0M2U2OTIifQ==', '2023-10-05 12:07:30.675851'),
('280hcrpbr81yujc8rmah6o3zkqobij2s', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-29 08:28:07.866448'),
('28ulr6iklnjbqvtklw6a80jf6911q188', 'YWQwODgxZjYxZjliNmU5MDdmMTMzYjVmODE1N2MzNWE5ZGM3MDFmMTp7fQ==', '2023-05-17 10:02:01.447565'),
('2c97nlyp2ylnlrkznn4dsqoqzc5fo1br', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-08-16 13:45:23.696847'),
('2gz7dgw0qilbw1yiopzzk1jtfkufimj0', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-08-08 05:55:38.731908'),
('2kcbche1buz9ro7vl9ya49eouv6eqz7r', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:27:38.644197'),
('2qdbbz9hnbdr3q7vbhwsu9j6jfi7hxmp', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-08 11:32:23.141721'),
('2riirsnwbhq4qqhxzn4mn57fnbwugmdb', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:38:40.505358'),
('2rlecicoxmi6a2jbz4yj5rgsjiv2shix', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-20 09:55:43.791247'),
('2s6acpjbagqs51lf68u2za0w9pfd3bwt', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-21 11:30:37.282282'),
('2st6tbi2x0jec0xklcbn6ha71ni0wufr', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-29 06:48:59.202384'),
('2ug44b2t97k67kpj3dxeduml6rixwh69', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-28 11:15:31.708890'),
('300je1qkw004o06vj11880c7osx23afh', 'ZTRlOGJiYzgyMmJhMWY0NzUxMGZjOWExOTg1YTkxYWE5MTk0ZWExZjp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjhlMmQ0OWFjOTM5MDdiNTE5ZjA0ZTI1NDE3OTQwZWUyZTI0YjYyOGQifQ==', '2023-08-11 05:50:03.131396'),
('30i74cjdluwg8zo2quvft2avsp1rzhul', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-14 10:01:11.770379'),
('30xncwke1qx9o32ru7b89e9c2e3gtdxs', 'YTIzMjEwNDdhNzBkMzRjNjRhOWM3ODFhZTg5YjJlMDRmMjk1MDg3Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5BbGxvd0FsbFVzZXJzTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjQ3ZmQwYjZiZDUyYjg2NDAyNDIwZTU3ZmY5ZGRjNjI3ZGE2MWViMyJ9', '2023-05-18 08:25:16.557184'),
('334nts2b5p4k1gif5a8csd67z0jv99fd', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-03 13:17:05.803832'),
('33i3wf5e81puafsldd0tq25g11tu63lp', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-31 05:55:49.178718'),
('342jqhdfkpgbr0oqfw96z5opye39u1ez', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-29 11:24:53.976559'),
('34vvpcd0tvintqrztbl0t7dl5idixkzt', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-28 07:02:06.118384'),
('38ddghwqgp5dqubba8ig1jvfujg7rthv', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-07-29 06:26:21.547847'),
('3g11odp2k6xctkoev898bs9jnoh9f3mx', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-06 10:22:44.113341'),
('3iew9mximwilyzczpqsigzfynjn4922t', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-21 06:01:10.128895'),
('3jihjl8iaxvtwz5iorla8kzlsgfgk9d0', 'MTJmYmE4NmM0OWM2MzBiMzk3Yzg4OTRjZTE4ODIwMmQwMDk5NzA0NTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzExMDRiOGQwMTI4ZjhkNjI5OWJhY2IyMzg3MDVhMzlmYTU4NGZjIn0=', '2023-08-17 11:54:50.430828'),
('3mqzwr1s185dd9znc4ivpycqqzitk73y', 'MTJmYmE4NmM0OWM2MzBiMzk3Yzg4OTRjZTE4ODIwMmQwMDk5NzA0NTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzExMDRiOGQwMTI4ZjhkNjI5OWJhY2IyMzg3MDVhMzlmYTU4NGZjIn0=', '2023-08-16 13:30:00.041217'),
('3oxuuy3ptl2btzj962cl8f0liyut4ep3', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-20 10:00:15.357709'),
('3qrpu0xiixvfr5v79uzepe1zmz3ume2s', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-05-02 11:58:54.916086'),
('3t4c7u5uwlj76sze8mnfhaf33hhbcmaa', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-28 10:54:17.353100'),
('3ujo3io9n3faokk38jy1p6e0fj8mz5lj', 'Mjg5OTEzY2Y0OTZkZmNkZDU1ZDBkOTQwMGIxMTZjYzQ1YjU0YTUxNzp7Il9hdXRoX3VzZXJfaWQiOiI5NiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiI1OGI3YTNiODA5ZDFmNzNjY2U3ZTA4ZjU1YTU2YWZmZmQ2NjE3NDcyIn0=', '2023-08-16 10:53:08.774678'),
('3wm0ip5splofms91t2oftzhhy5s0pja5', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:43:03.299522'),
('3xpp7f1gnas0t7kwcrpq254rqnuwkfui', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-08-07 14:07:44.506684'),
('3xpv15t5al3acvaogty0c5mht5ix0mwg', 'OTdlOTFkODc5MmJmOWEwNDI3YjQzODM4OGE5ZDE2MGJmOGYzMDg5Njp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQxZWM1OTVhNWM5YmNiMDQwYzc3MDQ0MjU4ZWNhOTcxMDE0M2U2OTIifQ==', '2023-08-17 05:58:06.599381'),
('3zdfoc5onmocyonr4cunbkg28rsi850t', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-06 09:16:10.842565'),
('3zpwrxqeoq5hp73uu2836yvqyionh2xg', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-05 12:39:35.962787'),
('3zxvjvn9nl6k7x4sud7wmnjyv6s270ak', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-05 13:24:03.957449'),
('409jjnckxkeda8mmp6hybtd5qtmcg6ze', 'ZTRlOGJiYzgyMmJhMWY0NzUxMGZjOWExOTg1YTkxYWE5MTk0ZWExZjp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjhlMmQ0OWFjOTM5MDdiNTE5ZjA0ZTI1NDE3OTQwZWUyZTI0YjYyOGQifQ==', '2023-08-10 07:18:14.472446'),
('43nh22krao2glhbv1q6fp95712p611im', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-24 07:28:29.185623'),
('44rbi9lw7zle16o66fzx7rfwyzgozcxv', 'OTdlOTFkODc5MmJmOWEwNDI3YjQzODM4OGE5ZDE2MGJmOGYzMDg5Njp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQxZWM1OTVhNWM5YmNiMDQwYzc3MDQ0MjU4ZWNhOTcxMDE0M2U2OTIifQ==', '2023-10-07 05:42:40.921570'),
('462vrre80bugos5k9xmhn7ugjvp1sawc', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-26 06:42:43.111989'),
('463h0wbd1rwn6gea8uqdmu5wbokvm0y1', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-06 06:04:22.848292'),
('4q1m2kavrqkqsqduap4wt31yotharp9x', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-18 06:08:56.316699'),
('4xo34uj2viayvch9bytwf7cz9b88953q', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:42:01.858943'),
('4y9hjiow7mqoc15i5ak3lnccouhcl5de', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-07-28 06:59:24.471670'),
('536gzfn9q9ly72gxnz1fs36mw5ds4514', 'OTdlOTFkODc5MmJmOWEwNDI3YjQzODM4OGE5ZDE2MGJmOGYzMDg5Njp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQxZWM1OTVhNWM5YmNiMDQwYzc3MDQ0MjU4ZWNhOTcxMDE0M2U2OTIifQ==', '2023-08-16 13:19:49.388432'),
('56mszswniw133n4ttb12zvdar1cjiu91', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-07 12:06:52.613469'),
('5bb86bdxg4t13luge3m9oevnh7ak9p3h', 'OTdlOTFkODc5MmJmOWEwNDI3YjQzODM4OGE5ZDE2MGJmOGYzMDg5Njp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQxZWM1OTVhNWM5YmNiMDQwYzc3MDQ0MjU4ZWNhOTcxMDE0M2U2OTIifQ==', '2023-09-30 10:01:48.221129'),
('5h35tksj6ytsjepvga3x3yvj4ob9ocsy', 'YzMxZTZkODZlOTQxODM5NzYwYmYxNTIyYjU5NDg0MTZkYjAwMjNkMTp7Il9hdXRoX3VzZXJfaWQiOiIzMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiJlOTJhOWZmMWM2NWNkMTc3Y2U1ZDAzZTk0YmY0ZDAyOGVmN2Y2ODFjIn0=', '2023-07-05 12:16:45.125356'),
('5h51r4xf5h8ctvstbrepydpeiez9vh1n', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-08-08 09:43:28.059277'),
('5j6fz8wxfseqakd0ambxc2nzdeg44x52', 'OTdlOTFkODc5MmJmOWEwNDI3YjQzODM4OGE5ZDE2MGJmOGYzMDg5Njp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQxZWM1OTVhNWM5YmNiMDQwYzc3MDQ0MjU4ZWNhOTcxMDE0M2U2OTIifQ==', '2023-09-18 11:25:32.321504'),
('5jtjd7nyrdelvm069lvf3zaodx6u6b0i', 'ZTJiZmQ3MWZjMTJjNzU5NGQ3YzgxYjFkZDYzYzI5NTc0ZTk0ZjYzMTp7Il9hdXRoX3VzZXJfaWQiOiI0NyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiJkM2QxMjI3Y2E4MjIwYmM0OTBmZTQ3NWQxN2NkYmE4MDIyYTkwOWIzIn0=', '2023-07-07 13:57:26.276563'),
('5ncbah4dok47f8cwoydbh2fvol39m4hx', 'OTdlOTFkODc5MmJmOWEwNDI3YjQzODM4OGE5ZDE2MGJmOGYzMDg5Njp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQxZWM1OTVhNWM5YmNiMDQwYzc3MDQ0MjU4ZWNhOTcxMDE0M2U2OTIifQ==', '2023-08-16 13:20:10.319906'),
('5o6fn3rit7q0nd24dsyk0tyel2dh4azs', 'Y2VjMDdiMjZjYjViY2Q1MjVmOWY1YzA3MzU3ZDNhYzY3OTFkY2U3NDp7Il9wYXNzd29yZF9yZXNldF90b2tlbiI6IjZjby1lMzg5ZjI3YzYwY2RlZTFmYWI3OCJ9', '2023-07-31 13:24:16.635400'),
('5p9s9cuzmkrj8dlzp2sgs3obqr1l7qvu', 'ZTRlOGJiYzgyMmJhMWY0NzUxMGZjOWExOTg1YTkxYWE5MTk0ZWExZjp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjhlMmQ0OWFjOTM5MDdiNTE5ZjA0ZTI1NDE3OTQwZWUyZTI0YjYyOGQifQ==', '2023-08-10 05:56:17.049578'),
('5pg6pipdpu28b2oh89whh7obtqyxyz3j', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-02 16:07:56.012444'),
('5phrgz3y2s0vgnb5ux4tndx2bt5163wz', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-26 12:20:30.179411'),
('5pnalhu4n3sfi0yl7ykzouma3jiofiyn', 'OTdlOTFkODc5MmJmOWEwNDI3YjQzODM4OGE5ZDE2MGJmOGYzMDg5Njp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQxZWM1OTVhNWM5YmNiMDQwYzc3MDQ0MjU4ZWNhOTcxMDE0M2U2OTIifQ==', '2023-09-30 09:57:29.430352'),
('5pvsw0a2lyopei8ngz1zq6d812jj0ald', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-11 09:55:32.138657'),
('5q70r1b7s1l2xlwy07mncfytwqevnjj7', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-08-09 11:31:56.204820'),
('5ufrjqqwy6kdt1v65926nn981pzzy8ys', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 11:05:52.808671'),
('5zs5n1k3rblpoylil3cnbhxp1ien3g15', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:55:46.491362'),
('60oprw5qpt91oye5wiqrvcsr6as42eo7', 'YTIzMjEwNDdhNzBkMzRjNjRhOWM3ODFhZTg5YjJlMDRmMjk1MDg3Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5BbGxvd0FsbFVzZXJzTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjQ3ZmQwYjZiZDUyYjg2NDAyNDIwZTU3ZmY5ZGRjNjI3ZGE2MWViMyJ9', '2023-05-18 08:17:44.604428'),
('62qeidu15azuc0f7etjj3s3a2zlxxg4v', 'OTdlOTFkODc5MmJmOWEwNDI3YjQzODM4OGE5ZDE2MGJmOGYzMDg5Njp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQxZWM1OTVhNWM5YmNiMDQwYzc3MDQ0MjU4ZWNhOTcxMDE0M2U2OTIifQ==', '2023-08-18 14:00:47.558168'),
('62y96uznm8pnkhxqs4e0ut6jre3lxtnp', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-11 12:21:14.140707'),
('6708iapd77koctu2zzo8mrezufrr50ms', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-20 10:25:40.576264'),
('69a034d4ftm3z6g0pnfxv7214mrz1z9t', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-27 12:02:06.892406'),
('69givbsj3m118xfubhly5zjgx8u8d29u', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-05-02 11:52:08.526373'),
('6dkxc31nhwwn834v5dsorxokilkhs86b', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-05 07:30:45.974958'),
('6h4tttqwegehvs9mxxxzaow0mq597zop', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-08 11:31:42.356563'),
('6h5rl1jyyactwstebssq2eaz74p2p0et', 'YThjNWUyMjc0MDM1NGY1ZjAxMzkwMzc4MThiNDhmMTlmMGEzNjMyNDp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwM2Y3MTg3MGY3YmZjOTk0ZWI3MTE3NmQ4YTFmZGVjMjlkOWM1YmY1In0=', '2023-05-02 10:17:49.985424'),
('6iqdwfdk2ihwcqrpi8uuvo0njadbphzk', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-08 18:43:43.499612'),
('6ir2sotoli9hq585zg6n3blvqne8o6s5', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-21 09:43:17.122045'),
('6j35wmckxrkbvu4nv1siq7esils4a5z9', 'MTJmYmE4NmM0OWM2MzBiMzk3Yzg4OTRjZTE4ODIwMmQwMDk5NzA0NTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzExMDRiOGQwMTI4ZjhkNjI5OWJhY2IyMzg3MDVhMzlmYTU4NGZjIn0=', '2023-05-02 11:06:57.689478'),
('6p14pl265pt9qiqptnptdb5ha4qmps31', 'YzMxZTZkODZlOTQxODM5NzYwYmYxNTIyYjU5NDg0MTZkYjAwMjNkMTp7Il9hdXRoX3VzZXJfaWQiOiIzMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiJlOTJhOWZmMWM2NWNkMTc3Y2U1ZDAzZTk0YmY0ZDAyOGVmN2Y2ODFjIn0=', '2023-07-05 12:17:20.320235'),
('6tg1vpbodhnbukz2a9z0lzb1id4xplr8', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-11 11:44:43.995821'),
('6urbs8c14axejg0wdporq9ocb56qqz1a', 'ZTRlOGJiYzgyMmJhMWY0NzUxMGZjOWExOTg1YTkxYWE5MTk0ZWExZjp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjhlMmQ0OWFjOTM5MDdiNTE5ZjA0ZTI1NDE3OTQwZWUyZTI0YjYyOGQifQ==', '2023-08-16 06:33:47.144695'),
('6v2c9nfvx64dr4h2nb93qlvy7t5mg8a6', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-24 11:27:01.601081'),
('6zyhr9lqbf0pttwknf4desccatheque4', 'ZTRlOGJiYzgyMmJhMWY0NzUxMGZjOWExOTg1YTkxYWE5MTk0ZWExZjp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjhlMmQ0OWFjOTM5MDdiNTE5ZjA0ZTI1NDE3OTQwZWUyZTI0YjYyOGQifQ==', '2023-08-10 13:47:18.442906'),
('78srbraopsy9w5ofrvntsk2tjl1moxre', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-16 05:20:54.025923'),
('79h0zg8zj8xhwu9cnrqv2llqyla5fcwi', 'YThjNWUyMjc0MDM1NGY1ZjAxMzkwMzc4MThiNDhmMTlmMGEzNjMyNDp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwM2Y3MTg3MGY3YmZjOTk0ZWI3MTE3NmQ4YTFmZGVjMjlkOWM1YmY1In0=', '2023-05-01 13:33:04.548415'),
('7c2z6pzxrpzylozoo3szyo4au9zgxpso', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-27 06:39:53.608568'),
('7ib3r3x3ejbgandzqrz0zi7zujatbcv2', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-05 09:59:26.907455'),
('7p8a679xhdq1d8yremdl0xcingp76xga', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-06 10:24:15.945415'),
('7rtksyxrujejq4xxndejwzqt0sxeiphv', 'MTJmYmE4NmM0OWM2MzBiMzk3Yzg4OTRjZTE4ODIwMmQwMDk5NzA0NTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzExMDRiOGQwMTI4ZjhkNjI5OWJhY2IyMzg3MDVhMzlmYTU4NGZjIn0=', '2023-05-02 10:27:50.075170'),
('7u4xljjz4lvd27srv6hmipe07k5drhrm', 'OTdlOTFkODc5MmJmOWEwNDI3YjQzODM4OGE5ZDE2MGJmOGYzMDg5Njp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQxZWM1OTVhNWM5YmNiMDQwYzc3MDQ0MjU4ZWNhOTcxMDE0M2U2OTIifQ==', '2023-09-19 11:08:01.602219'),
('7zp6ygy2derkng8ut5ze49jf0akf8ywk', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-06 05:16:04.089688'),
('7zu1ii5hxeom2n2k6ysoz8bpybepu9fr', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-05 10:21:56.120361'),
('80s5iojdg1vbduz67tqvcb2p1woay0qf', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-25 12:55:51.993017'),
('83n93nhjijrmpgwxl5q8ypd1ejzmy9xy', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-08-08 09:45:08.933358'),
('86o4bg5y5akhdwaukdx3f3f4l23f8dt3', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-08-08 13:15:54.511999'),
('8aknd68twtu7o2e9a80zakr21a0ly0xb', 'OTdlOTFkODc5MmJmOWEwNDI3YjQzODM4OGE5ZDE2MGJmOGYzMDg5Njp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQxZWM1OTVhNWM5YmNiMDQwYzc3MDQ0MjU4ZWNhOTcxMDE0M2U2OTIifQ==', '2023-08-17 10:24:16.202841'),
('8hwy3d08yxu80fxncgemar77z45fv3mx', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-06 12:54:17.122357'),
('8lmvfz492cev2gqzq98ba5ozg799aihv', 'MTJmYmE4NmM0OWM2MzBiMzk3Yzg4OTRjZTE4ODIwMmQwMDk5NzA0NTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzExMDRiOGQwMTI4ZjhkNjI5OWJhY2IyMzg3MDVhMzlmYTU4NGZjIn0=', '2023-08-16 13:13:52.095697'),
('8t17l9xq8zsswrnbgnwtebbwpyne4i5l', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-08-17 06:36:19.213552'),
('9592zuqdepltrqtlglt0w15fei48320r', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-14 05:26:26.153862'),
('96pxgt6v2lrjtm9hmzu086qs6lvcyxde', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-08-08 09:45:45.597176'),
('97743k9v6o92sm5upukwprt3bgqjcz68', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-31 09:26:09.070378'),
('97m3gf7ohml96q6rchd12l6hp637c33n', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-15 06:43:50.230920'),
('98nqfhy9zgt9surbrt6kkf33vwijzmgy', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-26 13:21:33.754242'),
('98w2o7dlq3kas133qlqqx9fxakde4p8e', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-13 06:48:12.384663'),
('99u72o8obutqcofrrekdujz4st1tiq3t', 'OTdlOTFkODc5MmJmOWEwNDI3YjQzODM4OGE5ZDE2MGJmOGYzMDg5Njp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQxZWM1OTVhNWM5YmNiMDQwYzc3MDQ0MjU4ZWNhOTcxMDE0M2U2OTIifQ==', '2023-10-06 14:36:42.156564'),
('9h6i6yuu6ucl58i9uxyb1lz0pm0ct1p6', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-27 05:41:29.150584'),
('9jac8ostrcesuy8atq84tsuwnk6eqfct', 'OTdlOTFkODc5MmJmOWEwNDI3YjQzODM4OGE5ZDE2MGJmOGYzMDg5Njp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQxZWM1OTVhNWM5YmNiMDQwYzc3MDQ0MjU4ZWNhOTcxMDE0M2U2OTIifQ==', '2023-08-21 05:31:49.508046'),
('9p33ryl54bcjnxgktgyzfv55blh8qahl', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-28 09:54:08.820607'),
('9r5r55r89elg7weadt2fw6n9e4zzssmn', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:37:03.458205'),
('9utcvoaaislgny8qx3oaep5iubs9y7c1', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-05 12:18:57.948532'),
('9we119j29wvsy00vliw5bdsa7rtpxnyo', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-04 09:55:57.176770'),
('a0mrm61eqr6mhcjlndy1vd4duolscsid', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:35:19.695866'),
('a2g02h63c589jpgyd365fviveopy5gca', 'MTJmYmE4NmM0OWM2MzBiMzk3Yzg4OTRjZTE4ODIwMmQwMDk5NzA0NTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzExMDRiOGQwMTI4ZjhkNjI5OWJhY2IyMzg3MDVhMzlmYTU4NGZjIn0=', '2023-08-05 11:56:46.566842'),
('a633ds3yvk8dhn58pfobg5h2sbsnfde2', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-04 12:35:08.449435'),
('a6z6t3w0idnuonvrncxc6bpfo9kuv8f3', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-08-08 12:59:16.072311'),
('aamv9207mrwwtgthwh5xz3ealrxrypno', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-02 13:57:37.179350'),
('abzvqdw12njfsmwvq073wp7w5tvucf2w', 'MTJmYmE4NmM0OWM2MzBiMzk3Yzg4OTRjZTE4ODIwMmQwMDk5NzA0NTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzExMDRiOGQwMTI4ZjhkNjI5OWJhY2IyMzg3MDVhMzlmYTU4NGZjIn0=', '2023-07-28 07:00:52.539789'),
('ad4i9noe4k4tevr0f5dciztl5rpzyumf', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-31 05:13:03.066278'),
('adicaf7v50tk9rejioalhwv9w29cm2v1', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-05 06:56:24.255273'),
('afbjcz20vu622udi3wi6arvl7x2zvwwe', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-27 14:34:00.083691'),
('afordp0hy3zgrkrz2vzvedn7l0vrdfqa', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:36:16.329103'),
('ai52ii3j8rmtyemqq87ukzvxuvi4ovai', 'MTJmYmE4NmM0OWM2MzBiMzk3Yzg4OTRjZTE4ODIwMmQwMDk5NzA0NTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzExMDRiOGQwMTI4ZjhkNjI5OWJhY2IyMzg3MDVhMzlmYTU4NGZjIn0=', '2023-08-16 06:34:48.032820'),
('akfnsyfde19jnmfzs4966ki2o23h1cnv', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-26 13:06:18.901184'),
('akxejdzcn4x4mo7ldm0slcrzfubugynr', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-21 12:04:22.925974'),
('aqaesl0lzhwyggq448nm7q50pjqurxrz', 'YTIzMjEwNDdhNzBkMzRjNjRhOWM3ODFhZTg5YjJlMDRmMjk1MDg3Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5BbGxvd0FsbFVzZXJzTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjQ3ZmQwYjZiZDUyYjg2NDAyNDIwZTU3ZmY5ZGRjNjI3ZGE2MWViMyJ9', '2023-07-24 11:33:57.646302'),
('avels6a4e0w68i3gpv2bavhug1hk5mmf', 'MTJmYmE4NmM0OWM2MzBiMzk3Yzg4OTRjZTE4ODIwMmQwMDk5NzA0NTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzExMDRiOGQwMTI4ZjhkNjI5OWJhY2IyMzg3MDVhMzlmYTU4NGZjIn0=', '2023-05-02 11:09:29.642861');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ax3zhkm1vnsjbfq8s3kctvbkbeao1hio', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-21 06:36:44.287231'),
('b0qjiuokigr0vu15e62w0r8oaalu91oj', 'YTIzMjEwNDdhNzBkMzRjNjRhOWM3ODFhZTg5YjJlMDRmMjk1MDg3Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5BbGxvd0FsbFVzZXJzTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjQ3ZmQwYjZiZDUyYjg2NDAyNDIwZTU3ZmY5ZGRjNjI3ZGE2MWViMyJ9', '2023-04-26 07:00:11.573618'),
('b27kurmkiiucouzpq8tcla3ywwmwk7q0', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:35:40.775934'),
('b2j41pxow75s49y5xwu56jbvoww8rxgg', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-25 06:08:48.697522'),
('b2z1anyiempvb91f2aw0agh6iaeb8ts1', 'MTJmYmE4NmM0OWM2MzBiMzk3Yzg4OTRjZTE4ODIwMmQwMDk5NzA0NTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzExMDRiOGQwMTI4ZjhkNjI5OWJhY2IyMzg3MDVhMzlmYTU4NGZjIn0=', '2023-06-26 05:08:36.674295'),
('b47chkcu3s1hmh96q8x9khg8loxxjyua', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-06 05:43:02.337485'),
('b4ltvh34smviuax18qnx8m1q090ry5p7', 'ZGY0MzlkNmQyODU1YjhmZDc1NmU5NmFhMDllY2I2NTUyNTgwNmFmODp7Il9hdXRoX3VzZXJfaWQiOiIyOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjIzNThhZTJmMGI3NzVmZjNhMWY1M2ZlNWNmYzgwYWM2NWE1NWRjYzQifQ==', '2023-06-27 05:29:17.585643'),
('b8azjveuq8pim3wj7rf6gh3n214d2pi5', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-11 10:16:59.889350'),
('b9amn0qpmetld7zgu5k51dtlnnycs16h', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-08 06:23:52.327519'),
('b9v9c65s4iuj2fneov046dlx7neahbc8', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-25 06:17:36.965347'),
('behn5lbau6py2qpi3vdmotizdakmfm1q', 'NWNiMWMxM2ZjMWU5MTVlMDQ3MTE1YWY2NmEyMWVmNTg2MzExMTgwYzp7Il9hdXRoX3VzZXJfaWQiOiIzNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZjEzMGQ0MjRkYmE3ZjA3MWQ0ZDNmMzM5NWU1NzlhODZmZGI3ODE3In0=', '2023-07-05 12:15:49.622478'),
('bepoyv5niltsyegem7edllzsqrsz424a', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-25 06:09:46.404479'),
('bex6d0x2kuu0mxxmr2qtgna5xd5cypa0', 'MTJmYmE4NmM0OWM2MzBiMzk3Yzg4OTRjZTE4ODIwMmQwMDk5NzA0NTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzExMDRiOGQwMTI4ZjhkNjI5OWJhY2IyMzg3MDVhMzlmYTU4NGZjIn0=', '2023-07-27 05:50:27.803243'),
('bgda1sj9bkdk4audjap7des271kqgzo8', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-28 12:45:43.436887'),
('bk6p77uppecmqqpybkq9mflwy68fkkk0', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:53:47.585289'),
('bsuldoidq98ld0hbmsr6hulptvo4bs14', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-29 14:02:43.072813'),
('c4srnat2aiaubqgwfvhihkdmcrt0mtoo', 'ZTRlOGJiYzgyMmJhMWY0NzUxMGZjOWExOTg1YTkxYWE5MTk0ZWExZjp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjhlMmQ0OWFjOTM5MDdiNTE5ZjA0ZTI1NDE3OTQwZWUyZTI0YjYyOGQifQ==', '2023-08-14 06:51:03.611160'),
('c5aar57axp0srej0oqtayh12yl4jy9ud', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:40:58.575686'),
('cake35u6bp2vhhbng3of29hu7x5wq90g', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-08-08 07:07:47.355836'),
('cbo9veo4k9sb8n68b7mmp1kykqmg2wti', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-05 06:55:40.543096'),
('ckl45p2v1cyrf5gmjt0t5dn9n8otmcx7', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-08-04 13:55:10.464601'),
('ckyaowvr4o3ae6zgdk41vwyhzj7m47hm', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-05 12:58:07.022679'),
('cmx8h45phkyo0zshs6f2kbi0zzu79udx', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-24 13:23:33.842237'),
('codib7cl69orb6xg3m9awlhro50ubpux', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-28 11:38:48.067047'),
('crvgt17mu0ry3057ofzpy4h7bdslkpys', 'ZGQxZmUxNTc1ZGFjNjYxMTUyZjczOGM5ODAzN2NlZjg4MTBiYjgxODp7Il9hdXRoX3VzZXJfaWQiOiI4OSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImVhYjNkNTQ3NGZlMTg4YjEyZGYyMzFmYjQ0YjFjZGM0Y2ZmMzAxYzgifQ==', '2023-07-25 11:43:01.140949'),
('crxza8g8ums2g7pv20euokrhqvrw0x3j', 'OTdlOTFkODc5MmJmOWEwNDI3YjQzODM4OGE5ZDE2MGJmOGYzMDg5Njp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQxZWM1OTVhNWM5YmNiMDQwYzc3MDQ0MjU4ZWNhOTcxMDE0M2U2OTIifQ==', '2023-08-25 06:41:56.882835'),
('ct1ztgop364g49pxe50p3wsovl4rbl8t', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:38:17.973456'),
('cvt7uikgewswfo548eja00raz3jwl850', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-17 05:09:43.748936'),
('cyuazk14i4klges01ciprvzr0aekng6t', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-07 11:24:21.743401'),
('d3r1dig25qob7k1fgi0kdoxzs8qpqy89', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-21 06:43:04.211044'),
('d4d0qji3xu11yubs4qh2g9zi80l5p88q', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-08-06 06:56:47.287307'),
('d5jbwt34sm6ox7v09ny2n5h00b69kcn8', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-24 14:10:02.981526'),
('d69cah5fvsiufdq42uimopvppoe3ymff', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-25 14:12:23.479649'),
('d6b6gbyy11533re7fwdviszhlsv7mmtx', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-28 06:28:12.750047'),
('d6ifsty47uz3oferp6zmf4nyr6vbelxn', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:51:56.871870'),
('daesh6luzhn9yag4endiy503x2ns7w41', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-08-08 09:49:32.736430'),
('ddbkpm1c2qrumby8khlnwe6fi6swp3v4', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-08-08 09:49:03.374844'),
('dhrol7hbiwai5t1lvt00xiyrijscrxdh', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-08 06:37:46.442849'),
('dnpjpwe2gn4o4g6tlckrw1uz1ai7od7e', 'MTJmYmE4NmM0OWM2MzBiMzk3Yzg4OTRjZTE4ODIwMmQwMDk5NzA0NTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzExMDRiOGQwMTI4ZjhkNjI5OWJhY2IyMzg3MDVhMzlmYTU4NGZjIn0=', '2023-08-21 05:32:37.757454'),
('do7bx01onka89zgfh6jgncvuq0bua1en', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-28 09:40:15.801044'),
('dplrwap0qryyu0e79f93z7bjzhi5p5qa', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-28 06:20:02.018717'),
('dpza0ynstm12zijnwhnuw7qd9mziforf', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-28 10:13:40.429199'),
('drj6ghcggaoolyhqg77s9746u3rumbc7', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-05 12:39:13.209225'),
('dt75t9eeuo9zmwm6begn6ah9m6r9gcpg', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-08-08 12:44:17.119170'),
('dvce4ser2ks9hy6ik5ft816mloydsu1x', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-06-26 05:07:54.140928'),
('dw9o24gyl4bxi4p36gklcke8c96ffq60', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-06 12:38:16.374543'),
('dyaebnmptsauh39ooiss597nr7lyfxs7', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-20 08:58:50.231997'),
('dzdnxbnbzfrge66a6e3r5vek6x250cbj', 'OTdlOTFkODc5MmJmOWEwNDI3YjQzODM4OGE5ZDE2MGJmOGYzMDg5Njp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQxZWM1OTVhNWM5YmNiMDQwYzc3MDQ0MjU4ZWNhOTcxMDE0M2U2OTIifQ==', '2023-08-16 13:19:40.363527'),
('e0z4bqprhclmi550sbbh09dzvsv74zfb', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-25 06:02:24.838937'),
('e2wsk1ju24c35jillr9mnmhmkfqmgyg5', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-08-08 09:47:24.238860'),
('e6xzh9r95oz0r83xdwppfnm3n6umn9ry', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-29 06:39:49.961476'),
('e929an9esvajgszv2anx5efn5kbdeudk', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:43:47.546403'),
('eaa2b0dc4r00wsn3l98b1lfv2c04nqft', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-31 05:55:38.058616'),
('eg4s083ommhpk7psmvzzuafrp3p12wu5', 'ZTRlOGJiYzgyMmJhMWY0NzUxMGZjOWExOTg1YTkxYWE5MTk0ZWExZjp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjhlMmQ0OWFjOTM5MDdiNTE5ZjA0ZTI1NDE3OTQwZWUyZTI0YjYyOGQifQ==', '2023-08-14 06:58:26.653788'),
('emm96m161wzjlh7il24i027k2syj2zx7', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-08-08 09:33:45.457559'),
('ep4qf83bjxk7qncc4y13mf0220x1fq5k', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:53:28.571242'),
('eqrufxlu6ea94uismwwtie2z36a4fktb', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-26 08:27:10.774693'),
('eqwhdebj1a7b3y1wpy7m6tvjjoixdjsu', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-08 13:05:37.893089'),
('ervu2hqpw91ipfxgyhqyq77m7gql7kkh', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 11:06:00.671627'),
('exipgw757fyojunm85ovz9rq8w0hbger', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:38:04.325358'),
('f0ey8wdntxi8nvh5luvdszxdx8wdnwcw', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-14 05:38:00.800074'),
('f4n5nhy8skqq74iibori6u8mo823h17x', 'YTIzMjEwNDdhNzBkMzRjNjRhOWM3ODFhZTg5YjJlMDRmMjk1MDg3Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5BbGxvd0FsbFVzZXJzTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjQ3ZmQwYjZiZDUyYjg2NDAyNDIwZTU3ZmY5ZGRjNjI3ZGE2MWViMyJ9', '2023-05-18 07:30:39.975335'),
('f5cqijkkgkxsv5v06jdw9xizbwtrqgt3', 'YTIzMjEwNDdhNzBkMzRjNjRhOWM3ODFhZTg5YjJlMDRmMjk1MDg3Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5BbGxvd0FsbFVzZXJzTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjQ3ZmQwYjZiZDUyYjg2NDAyNDIwZTU3ZmY5ZGRjNjI3ZGE2MWViMyJ9', '2023-07-29 06:47:44.041089'),
('f6krzfp91k2w23u52h7yt8r8w55jkdvv', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-05 12:24:30.739007'),
('f9ttv1p35cn4fubb8z8zh5h4gmmf69hz', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-27 13:23:36.042720'),
('fdplx67o6mrof2a74miky0yzc0qh5lt1', 'NTE4NDUyOTlkZDZiNTdjMDNiMTc5M2NjZWYyZjg5NWFlODc4ZmU4MDp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjkzOTA0NWUxMzA4YmMxYzVkNGM4MjhlNmViNDU3MmM2NjhmNmQzZWEifQ==', '2023-04-26 06:27:56.959748'),
('felfw7at19b1hwwwclrz8q25gwc1mwvn', 'MTJmYmE4NmM0OWM2MzBiMzk3Yzg4OTRjZTE4ODIwMmQwMDk5NzA0NTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzExMDRiOGQwMTI4ZjhkNjI5OWJhY2IyMzg3MDVhMzlmYTU4NGZjIn0=', '2023-07-27 06:04:06.964530'),
('fh2wwti2txctistwrj0ki6nevl6lmui4', 'ZTRlOGJiYzgyMmJhMWY0NzUxMGZjOWExOTg1YTkxYWE5MTk0ZWExZjp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjhlMmQ0OWFjOTM5MDdiNTE5ZjA0ZTI1NDE3OTQwZWUyZTI0YjYyOGQifQ==', '2023-08-10 06:09:32.405060'),
('fje05nkc8htueel9hjwqgeju08klvp36', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-08-08 09:42:33.244266'),
('fmob9hr5581ny7oxvf9be1nxzow12i0a', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-21 09:46:43.153325'),
('fpl3tvlgmpagd5u4yv1eldf44s8zq9o6', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-10-05 06:14:57.348441'),
('ftsm2v7596fd8qyse0ym0m9opbtbtexi', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-21 06:11:12.288602'),
('fumqvjuh87y0bkzysupnlie8zif99hrr', 'ZGY0MzlkNmQyODU1YjhmZDc1NmU5NmFhMDllY2I2NTUyNTgwNmFmODp7Il9hdXRoX3VzZXJfaWQiOiIyOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjIzNThhZTJmMGI3NzVmZjNhMWY1M2ZlNWNmYzgwYWM2NWE1NWRjYzQifQ==', '2023-06-26 13:37:30.146353'),
('g0tw5217cwt531wofadtgjyfdz9qru48', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-07-29 06:41:33.642520'),
('g2m4586n6eqli8nflgigbackfxvgirqa', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-28 13:03:30.829377'),
('g3unc2vhw37b7iqh4tv4ii677ggr4bfw', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-25 05:48:54.312897'),
('g87hvu1ttgcqazl1poasgx1c7183lho5', 'YzMxZTZkODZlOTQxODM5NzYwYmYxNTIyYjU5NDg0MTZkYjAwMjNkMTp7Il9hdXRoX3VzZXJfaWQiOiIzMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiJlOTJhOWZmMWM2NWNkMTc3Y2U1ZDAzZTk0YmY0ZDAyOGVmN2Y2ODFjIn0=', '2023-07-31 05:57:26.235633'),
('gadi8234pxgmvy54k232swi5qs6mgabd', 'OTdlOTFkODc5MmJmOWEwNDI3YjQzODM4OGE5ZDE2MGJmOGYzMDg5Njp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQxZWM1OTVhNWM5YmNiMDQwYzc3MDQ0MjU4ZWNhOTcxMDE0M2U2OTIifQ==', '2023-08-18 05:20:59.547741'),
('gcdypdvux793wfj9q34fjbq1428wkmrn', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-17 06:47:27.625990'),
('gdoxdmkbrbxv34ja1x9hs241ds7k1oe0', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:49:29.053891'),
('gf8wlsvt3z0m2c8k9okkepfw0i63njsw', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-05 12:07:38.700700'),
('gh5cvx4ohjm43yvfay32yw1rprmk7p5j', 'YThjNWUyMjc0MDM1NGY1ZjAxMzkwMzc4MThiNDhmMTlmMGEzNjMyNDp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwM2Y3MTg3MGY3YmZjOTk0ZWI3MTE3NmQ4YTFmZGVjMjlkOWM1YmY1In0=', '2023-05-02 10:17:29.198196'),
('gkhfk8hx9leh7allyf90cqy7gczt9u3g', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-06-09 09:39:14.117515'),
('gl0s4qbgqn8cw1u6qci31alzcvwus8nx', 'YThjNWUyMjc0MDM1NGY1ZjAxMzkwMzc4MThiNDhmMTlmMGEzNjMyNDp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwM2Y3MTg3MGY3YmZjOTk0ZWI3MTE3NmQ4YTFmZGVjMjlkOWM1YmY1In0=', '2023-05-02 10:17:18.272891'),
('gl6b47dohxqc3uktjhy69jpizaae824l', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-08-07 10:11:31.174603'),
('glvix81qdq4ebs9lmc3j395xrbqan3j2', 'ZTRlOGJiYzgyMmJhMWY0NzUxMGZjOWExOTg1YTkxYWE5MTk0ZWExZjp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjhlMmQ0OWFjOTM5MDdiNTE5ZjA0ZTI1NDE3OTQwZWUyZTI0YjYyOGQifQ==', '2023-08-14 07:08:54.279532'),
('gnefuyoazjqe9nvje4qzvx9cu7f2vnve', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-08-08 06:25:49.596478'),
('gv1tgaviayx58bbmf2emya64yb22x50y', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-20 09:44:19.495600'),
('gvxhyrlvuvjoc0fti0ru0f4ttasrmebc', 'OTdlOTFkODc5MmJmOWEwNDI3YjQzODM4OGE5ZDE2MGJmOGYzMDg5Njp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQxZWM1OTVhNWM5YmNiMDQwYzc3MDQ0MjU4ZWNhOTcxMDE0M2U2OTIifQ==', '2023-08-16 13:19:10.922406'),
('h13r4dbetaw5rmzvs7clqlv7ki9tnb1h', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-27 09:48:13.689257'),
('h1drtkhrg3f400wga7403lubso8w3mgz', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-24 07:25:46.422417'),
('h434w3zv6p04ycjykjsjv6o189ccljpn', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-05 12:57:39.750012'),
('h5d9cujd456ywwtl41f180y0idg4rbcg', 'MTJmYmE4NmM0OWM2MzBiMzk3Yzg4OTRjZTE4ODIwMmQwMDk5NzA0NTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzExMDRiOGQwMTI4ZjhkNjI5OWJhY2IyMzg3MDVhMzlmYTU4NGZjIn0=', '2023-08-03 12:11:34.566747'),
('h654t9lgj0canfspzg87blle42y9gucr', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-06-23 11:11:35.087695'),
('heevuu8o4l1gjn9yibjpgv3yaiwsq03q', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-08-08 07:06:49.517306'),
('hfng05im1v2vpiuydixaeu6lagfdk0eb', 'YzMxZTZkODZlOTQxODM5NzYwYmYxNTIyYjU5NDg0MTZkYjAwMjNkMTp7Il9hdXRoX3VzZXJfaWQiOiIzMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiJlOTJhOWZmMWM2NWNkMTc3Y2U1ZDAzZTk0YmY0ZDAyOGVmN2Y2ODFjIn0=', '2023-08-16 06:15:00.629978'),
('hhpnst6rrqmo1je0dp9vxu9w5o0i2xk1', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-20 05:57:04.942453'),
('hkje11uvdgk9x5fpx8qmfmapy4adproo', 'YTIzMjEwNDdhNzBkMzRjNjRhOWM3ODFhZTg5YjJlMDRmMjk1MDg3Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5BbGxvd0FsbFVzZXJzTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjQ3ZmQwYjZiZDUyYjg2NDAyNDIwZTU3ZmY5ZGRjNjI3ZGE2MWViMyJ9', '2023-07-29 09:12:49.589207'),
('hnuq8autfj3c75czvevmm8f0vk6d915w', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-27 11:24:07.351813'),
('hs4cm4m3cy8jgn92ka9wascyu77cp19t', 'MTJmYmE4NmM0OWM2MzBiMzk3Yzg4OTRjZTE4ODIwMmQwMDk5NzA0NTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzExMDRiOGQwMTI4ZjhkNjI5OWJhY2IyMzg3MDVhMzlmYTU4NGZjIn0=', '2023-07-21 10:21:43.597462'),
('i0ih4a72r82tw90w61jnnutj4p610mbb', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-07 05:21:53.549916'),
('i1dkce764wfivpxvlyt5x3m8rl4far96', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-26 13:21:57.434916'),
('i5r4cxvn2tkkbrgaoalkt876aahl90qh', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-07-28 09:49:16.490882'),
('i9ahz7zx86mgj2kcehjttqh0q8aw8xlf', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-27 08:43:46.254661'),
('ibi324b3pwyguva1to7c6i19eh17pb4n', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-26 05:08:31.641478'),
('ic0kucrnrjotfw1chukxdhg3us4z9x92', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:43:16.174443'),
('idnq5jhk2ij2tvccmsm7dmm5t774louc', 'MTJmYmE4NmM0OWM2MzBiMzk3Yzg4OTRjZTE4ODIwMmQwMDk5NzA0NTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzExMDRiOGQwMTI4ZjhkNjI5OWJhY2IyMzg3MDVhMzlmYTU4NGZjIn0=', '2023-10-09 10:06:28.981101'),
('ifkmib72o39a9ponagjt0df5gfnxcgjp', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-08-08 13:14:55.274309'),
('igif1fgsv0a6b1tf3fypyprpeje6s0o2', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-08-08 13:11:07.913139'),
('iinomfmsv2dn2stbuj5y21ce9qzavbwf', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-07 06:17:49.126084'),
('il52lvpmogiu5ewt5kt911xz431dzmme', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-20 04:26:34.695945'),
('iw5gbc5jwt01jx578jkit0t8m22o5ti1', 'MTJmYmE4NmM0OWM2MzBiMzk3Yzg4OTRjZTE4ODIwMmQwMDk5NzA0NTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzExMDRiOGQwMTI4ZjhkNjI5OWJhY2IyMzg3MDVhMzlmYTU4NGZjIn0=', '2023-10-05 03:52:53.220756'),
('iwoq2j02brpwdnrfzn3calwv6os5et56', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-07 10:51:52.452727'),
('ixo8d6ojuhqeg7g0esq9qjw9mdq5ghlb', 'YTIzMjEwNDdhNzBkMzRjNjRhOWM3ODFhZTg5YjJlMDRmMjk1MDg3Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5BbGxvd0FsbFVzZXJzTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjQ3ZmQwYjZiZDUyYjg2NDAyNDIwZTU3ZmY5ZGRjNjI3ZGE2MWViMyJ9', '2023-05-18 07:59:39.813645'),
('j23swtwwb5lqm5g0jc6keld1zhi2icb9', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-10-05 06:10:07.428814'),
('j3xbmw1op7mkt3k1iarl17usc7qgr9wk', 'YzMxZTZkODZlOTQxODM5NzYwYmYxNTIyYjU5NDg0MTZkYjAwMjNkMTp7Il9hdXRoX3VzZXJfaWQiOiIzMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiJlOTJhOWZmMWM2NWNkMTc3Y2U1ZDAzZTk0YmY0ZDAyOGVmN2Y2ODFjIn0=', '2023-09-05 10:39:14.910586'),
('j6096dtdgfi7qypzy7lsgyybok3w68ft', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-05 07:02:54.939439'),
('jdfgk7u5gdzmt4uoa5culuml3j7vz5n4', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-29 13:01:24.356759'),
('jdfwi6t8x7oqku1ya3ejvscuy9qhkjla', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-21 10:46:02.340946'),
('jdx701prdzqwatqswfizpwqszhtr9q8d', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-29 11:47:53.296858'),
('jiy6vd91sjgev9ldgtjkouhm7qwkgar1', 'MTJmYmE4NmM0OWM2MzBiMzk3Yzg4OTRjZTE4ODIwMmQwMDk5NzA0NTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzExMDRiOGQwMTI4ZjhkNjI5OWJhY2IyMzg3MDVhMzlmYTU4NGZjIn0=', '2023-07-27 05:25:22.246621'),
('js70pxs5oshawuosqziws0vwyfwfqek1', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-15 12:47:28.556627'),
('jvjitbjfzb7gxi7xk5sbcgiyxfnwspz4', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-06-23 06:55:19.011563'),
('k15cnf0duau0jszc640pu8cnz969b28t', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-25 13:13:15.239179'),
('k1z32nd8ju9bwrcsi8j5jnm46zwl9jf0', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-11 10:30:39.210890'),
('k2o9xzua6zgxg5hd9uez81ecpl2kl1qn', 'YTIzMjEwNDdhNzBkMzRjNjRhOWM3ODFhZTg5YjJlMDRmMjk1MDg3Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5BbGxvd0FsbFVzZXJzTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjQ3ZmQwYjZiZDUyYjg2NDAyNDIwZTU3ZmY5ZGRjNjI3ZGE2MWViMyJ9', '2023-05-18 07:56:40.118331'),
('kaijh0hwbznw9xvs7qkclqdlb0otoljw', 'YTIzMjEwNDdhNzBkMzRjNjRhOWM3ODFhZTg5YjJlMDRmMjk1MDg3Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5BbGxvd0FsbFVzZXJzTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjQ3ZmQwYjZiZDUyYjg2NDAyNDIwZTU3ZmY5ZGRjNjI3ZGE2MWViMyJ9', '2023-05-18 08:07:28.250553'),
('kcrppgtipqebt9eijepavgqpix3dvdfz', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-26 13:12:16.251274'),
('kk2qybz3gfdqdnovuwvge1ttjy3tmm6g', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-08-01 05:55:44.664164'),
('knennormtc21ymu4fp2g64we5bijpjo9', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-29 07:23:30.345196'),
('knxjqiurq3yt2o5q96ux505qk1hoxb25', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-13 06:03:11.447549'),
('kq1yq7xqglb37dvpbkfqt15dkd2sdpfd', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:57:11.658197'),
('l1p9lkd3l9rffl66ccaq50c9o4qa4n6y', 'ZGY0MzlkNmQyODU1YjhmZDc1NmU5NmFhMDllY2I2NTUyNTgwNmFmODp7Il9hdXRoX3VzZXJfaWQiOiIyOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjIzNThhZTJmMGI3NzVmZjNhMWY1M2ZlNWNmYzgwYWM2NWE1NWRjYzQifQ==', '2023-07-04 13:15:32.390357'),
('l1q3trtb9q49775v2mk9j3v5v67yhvo3', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-08 07:05:15.288519'),
('l3k3y74613akx9p78mcwcg18auk4f4nh', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-14 05:51:52.688201'),
('l6kodu63gena0uucew0aqspy3bghiu2r', 'NWNiMWMxM2ZjMWU5MTVlMDQ3MTE1YWY2NmEyMWVmNTg2MzExMTgwYzp7Il9hdXRoX3VzZXJfaWQiOiIzNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZjEzMGQ0MjRkYmE3ZjA3MWQ0ZDNmMzM5NWU1NzlhODZmZGI3ODE3In0=', '2023-07-05 12:13:12.522197'),
('l7h5xjk0nmh4iq01ln144eyb63jo1lhf', 'OTdlOTFkODc5MmJmOWEwNDI3YjQzODM4OGE5ZDE2MGJmOGYzMDg5Njp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQxZWM1OTVhNWM5YmNiMDQwYzc3MDQ0MjU4ZWNhOTcxMDE0M2U2OTIifQ==', '2023-09-08 09:33:57.402231'),
('l9hhj5bg9ljrnnjcchhg30n14y4qkany', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-07 06:24:40.477832'),
('lbbtpnm145tzpncmp67wp83a32l11u09', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-08-16 06:40:03.998227'),
('lchg18ygb75609ug3b6axt9ztcbf8zs2', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-31 06:00:03.480925'),
('lfmpu0lykc9i3ehga3uacp7vry4mnic8', 'ZGQ5YTJmYjZkNzM4ZDc0ZGZkYmUxNGFkNTAyYTQxN2Q5ZTIxOWNlMDp7Il9hdXRoX3VzZXJfaWQiOiIxMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjRiNzRmNDA3MjZiMjM2MjQ5MDE0OTc4MzNhNWM2NGQ0ODU2ZWM0NjMifQ==', '2023-05-02 11:37:07.827112'),
('lgdg3m0jsvon0iugjg0km0wbmbyvvuv6', 'ZGY0MzlkNmQyODU1YjhmZDc1NmU5NmFhMDllY2I2NTUyNTgwNmFmODp7Il9hdXRoX3VzZXJfaWQiOiIyOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjIzNThhZTJmMGI3NzVmZjNhMWY1M2ZlNWNmYzgwYWM2NWE1NWRjYzQifQ==', '2023-06-23 10:35:51.439134'),
('lh47ox5pmtjdtqpizkr0z1h8j62gfw0w', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-05 06:54:30.821395'),
('lj6jd3z0sl7rzze4j18xuj9hx687xyib', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-05 12:39:58.478566'),
('lll3hjuqg42f2qyleeshr56xl2554axi', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-21 05:09:58.388204'),
('lmmpmd7xqcrjkuzgf997j6co1zuxz4ei', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:40:15.105028'),
('lnlkh0b2ojitu6gh8w57lvd11e25qqb7', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-11 06:28:17.143676'),
('loxtyzpzeks22tbnnsr1kyek0ny7xcup', 'YzMxZTZkODZlOTQxODM5NzYwYmYxNTIyYjU5NDg0MTZkYjAwMjNkMTp7Il9hdXRoX3VzZXJfaWQiOiIzMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiJlOTJhOWZmMWM2NWNkMTc3Y2U1ZDAzZTk0YmY0ZDAyOGVmN2Y2ODFjIn0=', '2023-08-07 14:07:13.646498'),
('lr104o5ecfgpbvliexp0zcbfszw0vpn4', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-04 06:57:25.750401'),
('lrwdappgvz82wxuxmbl70yvl99qxsvzu', 'ZGY0MzlkNmQyODU1YjhmZDc1NmU5NmFhMDllY2I2NTUyNTgwNmFmODp7Il9hdXRoX3VzZXJfaWQiOiIyOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjIzNThhZTJmMGI3NzVmZjNhMWY1M2ZlNWNmYzgwYWM2NWE1NWRjYzQifQ==', '2023-06-26 11:57:41.718701');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('luwqnvbjxi8jnbed1tycjzngyv50b85p', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-06-27 05:24:38.382562'),
('lwdfqb7l0v8tflizb5xhm0bk5406kjsd', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-05 06:31:21.285922'),
('lwokr6tekf1xvet0kso1c99rh2f63ejg', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-27 06:51:58.322057'),
('lxvvgypps0ln8zlub033dn7kos93w1tm', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-24 11:20:34.988224'),
('m003grmrsiit7c1x217c3cxaz3p74gjg', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-06 05:14:32.654392'),
('m1d73gk6i4s5xbi1uxiuo6dht5jqmv76', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-27 09:10:54.800386'),
('m1po14p2ry6ycgg6wokyq9dja70slwnv', 'ZTRlOGJiYzgyMmJhMWY0NzUxMGZjOWExOTg1YTkxYWE5MTk0ZWExZjp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjhlMmQ0OWFjOTM5MDdiNTE5ZjA0ZTI1NDE3OTQwZWUyZTI0YjYyOGQifQ==', '2023-08-09 11:37:05.244491'),
('m3a8ncw4jsq9twv7aqbgy29a922eg1qw', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-08-09 07:21:42.247990'),
('m5lm2pprenhv90lyuodhhmqpxf2k4pqr', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-25 06:07:43.276512'),
('m6rvqz40zj9t0mdvxbyrxduqqp4g3rpd', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-20 08:59:15.406755'),
('m72fnflxvfl086bee2nyblkic7vc0h3w', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-05 12:55:34.208541'),
('m72ts770hc4547hpzrow1266u0nn42v1', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-27 10:58:56.040547'),
('m8q8pf9282rv2anweccn49rvntk8v3a1', 'ZTRlOGJiYzgyMmJhMWY0NzUxMGZjOWExOTg1YTkxYWE5MTk0ZWExZjp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjhlMmQ0OWFjOTM5MDdiNTE5ZjA0ZTI1NDE3OTQwZWUyZTI0YjYyOGQifQ==', '2023-08-09 11:47:00.740644'),
('m9tsh0nucxlh4y731ar05ft2t0rpfx8s', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-10-06 09:24:29.222739'),
('ma68zx5atjj8g6iqdxm6jvr3qntye8ik', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-14 14:23:40.706531'),
('mbk7gpdnfup7d9k8qdiumzj9wgl4yqwx', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-11 10:01:16.148343'),
('md8ly26z84n5dh495ioy2elvuh9rt2o6', 'MTJmYmE4NmM0OWM2MzBiMzk3Yzg4OTRjZTE4ODIwMmQwMDk5NzA0NTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzExMDRiOGQwMTI4ZjhkNjI5OWJhY2IyMzg3MDVhMzlmYTU4NGZjIn0=', '2023-05-02 10:55:44.021506'),
('mezdm9hrcl77xads2rbo83nacwlh1ubr', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-29 05:56:30.608455'),
('mkrhr7etsqvqt7tz8ax8looi31t67b0p', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-05 12:40:15.299112'),
('mnczrahdcljetaasbfl0rff3oboqr229', 'M2Y2OTVkY2ZhYTEwZTA5MGE5MGEwOWU3NzNjNjA5OGJhNzJmN2U5NDp7Il9hdXRoX3VzZXJfaWQiOiIzMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIxOTgyYjUyNmVjYWViZDVmMGIxMzgzNjJlZjg1OTgwNzRjYWNkZmQzIn0=', '2023-07-04 09:54:49.832245'),
('mpvp6asxnu60fr632p2h1h6try5uocts', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-31 09:25:14.562483'),
('mqzuyla5pbs9do3dtxky4qkocutj0lg1', 'ZjI3ZWI4MTI5MzEwODY1YzBkNmQ0YzViZDgxZjU5ZDhjYjFiNjAwNDp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjBmZjUwZjA4NzE2MmU0OTk2ZjU5MDcwOGU5Y2I4MDc4MDYxYmQ4MjkifQ==', '2023-04-26 06:26:19.074890'),
('mw5zswor5iu57l82zfq1cul8cf3g2k7q', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-27 09:27:14.673397'),
('n0w3qa0t1g2u7yzh08zfd5sl6r3bet8u', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 11:15:31.609519'),
('n16vnl40al4xa07aywajwmu24sdjcq9d', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-12 14:47:27.796528'),
('n1tuxhap6su2xy0tpkqx4s9krh5ykidn', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-06-03 05:41:25.331583'),
('n4ukoextrnl8lqp9dmnlabcbmfdxs0cd', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-07 11:23:18.493323'),
('n7wkijgci7qf1yj5hivki3kthi81f7of', 'MTJmYmE4NmM0OWM2MzBiMzk3Yzg4OTRjZTE4ODIwMmQwMDk5NzA0NTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzExMDRiOGQwMTI4ZjhkNjI5OWJhY2IyMzg3MDVhMzlmYTU4NGZjIn0=', '2023-05-02 11:33:33.566191'),
('n9raq69chkdt110bw0za9p384ymx2k9c', 'Mjg5OTEzY2Y0OTZkZmNkZDU1ZDBkOTQwMGIxMTZjYzQ1YjU0YTUxNzp7Il9hdXRoX3VzZXJfaWQiOiI5NiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiI1OGI3YTNiODA5ZDFmNzNjY2U3ZTA4ZjU1YTU2YWZmZmQ2NjE3NDcyIn0=', '2023-08-16 13:15:30.427571'),
('ncn0vgysl00mcph89n09i67x8saqsuc6', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-07-28 06:02:42.878008'),
('nd3zytht1943lwij5keb8gv370nh8fjv', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-08-01 05:54:59.822568'),
('necrflnqokoqdu9av26se2q06qr2s1e8', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-21 04:37:13.868997'),
('nhrcgt5eb8p5z6p5aw640lirqz4821pv', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-08-11 05:54:46.887822'),
('nigbhs6r7l4m9pmlmhqrdm16bt2drr8e', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-20 09:56:56.060475'),
('nkvu50t3f63gfll3h76ldodt9u9373e4', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:39:53.390603'),
('nlcgnd61m335xda4k8gh381wlaxwrrlu', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-08-01 05:51:35.550460'),
('nmu2yo85j5u62c9qzkj8sxy8zqbxxtkh', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-15 12:08:00.215373'),
('npbc4k3pf8rlw5lq2ghcw71muzg2ubmw', 'ZjI3ZWI4MTI5MzEwODY1YzBkNmQ0YzViZDgxZjU5ZDhjYjFiNjAwNDp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjBmZjUwZjA4NzE2MmU0OTk2ZjU5MDcwOGU5Y2I4MDc4MDYxYmQ4MjkifQ==', '2023-04-26 06:58:36.163748'),
('npli5hiafgpacqck43og9nwamnezhgpo', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-05-02 11:44:37.486898'),
('nq8amf7rac0xs13oym4ivmmim8va8c8k', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-06 12:40:14.420099'),
('nuwlzazgijrxqmdvamdexhvv78c5whrs', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-10 12:34:21.016233'),
('nw2yx93o3mfpnya3kieie4bmthnky0fm', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-31 09:23:34.545569'),
('nx7ojnqcbvaua2t14xnhnwr1bru000hp', 'YTIzMjEwNDdhNzBkMzRjNjRhOWM3ODFhZTg5YjJlMDRmMjk1MDg3Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5BbGxvd0FsbFVzZXJzTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjQ3ZmQwYjZiZDUyYjg2NDAyNDIwZTU3ZmY5ZGRjNjI3ZGE2MWViMyJ9', '2023-10-09 10:30:45.193108'),
('nxvcfdiu4kztb2klq1ydymnx75qtmdez', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:42:30.544956'),
('ny9loj2b85zeyanb22ezzt96uupyt5zm', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-21 09:44:25.161808'),
('o2jh3x4nikqlk9l57lq9f032tspbyclh', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-21 05:13:19.787078'),
('o2jn5v0hmra1vtbny4e4k6yj5m51ae96', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-14 10:11:55.229058'),
('o3uojxfjuvnth5mgv08llp3br7hpfrqa', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-08 12:58:40.009492'),
('o5vo7y0bf3hk18zbyiw32dox01h3j5n5', 'MTJmYmE4NmM0OWM2MzBiMzk3Yzg4OTRjZTE4ODIwMmQwMDk5NzA0NTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzExMDRiOGQwMTI4ZjhkNjI5OWJhY2IyMzg3MDVhMzlmYTU4NGZjIn0=', '2023-05-02 11:12:20.703360'),
('o6uxgnuzqvrhy0icem33hw9vh5lgavmi', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-29 07:04:54.333451'),
('o8ew5rj25zzgprtmndizrb5cbc7hi626', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-26 12:26:12.765403'),
('oacyys3wfpr1olhh8kdy044006lyj8ug', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-14 12:28:31.400611'),
('oaeq8el2a6tarlrv3jr9llp1o3zztt0k', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-05 06:04:06.071133'),
('obd77me6x34xiye4m7u4vyb1x94l5r68', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-06 05:26:55.120246'),
('ojfk3ur202jy5d6pn21eydxd0utyp9nz', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-06 06:28:25.884658'),
('ojqyzfqpyc7pkxm74oi2uwbr1pjeki39', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-27 06:08:41.217265'),
('ontvr6j6n14u3jo0dq9tcibwzo2d6i0m', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-07-27 13:26:48.023245'),
('oohahkw7i5886sbqzkr3a5a6g6w660bl', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-21 10:15:56.456225'),
('ox8m3tfb0grexc6nenirw8jd42s4sm3s', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-11 09:32:19.621964'),
('p04ijm3eymh67kxrk3zns1x3uearkntf', 'YTIzMjEwNDdhNzBkMzRjNjRhOWM3ODFhZTg5YjJlMDRmMjk1MDg3Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5BbGxvd0FsbFVzZXJzTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjQ3ZmQwYjZiZDUyYjg2NDAyNDIwZTU3ZmY5ZGRjNjI3ZGE2MWViMyJ9', '2023-10-09 10:52:29.480237'),
('p0in8smh0vpwqeatm4318c72hdc4bgfp', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-05-02 11:40:38.252685'),
('p1ur4x0vb48i7563dvhmo3ybmzv6fet6', 'ZGY0MzlkNmQyODU1YjhmZDc1NmU5NmFhMDllY2I2NTUyNTgwNmFmODp7Il9hdXRoX3VzZXJfaWQiOiIyOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjIzNThhZTJmMGI3NzVmZjNhMWY1M2ZlNWNmYzgwYWM2NWE1NWRjYzQifQ==', '2023-07-04 13:15:42.459005'),
('p216hdrt8fm1j58lwurobr5tmggylqwc', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-14 06:44:09.617971'),
('p48rwfica5pcpi0n5ke6zwo3fldzze1g', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:37:21.014078'),
('p8sleav3fv0v6qbs8bnmya2948ics7ti', 'OTdlOTFkODc5MmJmOWEwNDI3YjQzODM4OGE5ZDE2MGJmOGYzMDg5Njp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQxZWM1OTVhNWM5YmNiMDQwYzc3MDQ0MjU4ZWNhOTcxMDE0M2U2OTIifQ==', '2023-09-04 11:01:25.394362'),
('palrn8mely67ltluug2mkjqhapfkd888', 'ZTRlOGJiYzgyMmJhMWY0NzUxMGZjOWExOTg1YTkxYWE5MTk0ZWExZjp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjhlMmQ0OWFjOTM5MDdiNTE5ZjA0ZTI1NDE3OTQwZWUyZTI0YjYyOGQifQ==', '2023-08-14 06:58:57.276227'),
('pbfctr9kcnsz9921e84frqok3e2wlpu3', 'ZGY0MzlkNmQyODU1YjhmZDc1NmU5NmFhMDllY2I2NTUyNTgwNmFmODp7Il9hdXRoX3VzZXJfaWQiOiIyOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjIzNThhZTJmMGI3NzVmZjNhMWY1M2ZlNWNmYzgwYWM2NWE1NWRjYzQifQ==', '2023-06-23 10:14:54.099297'),
('pbfpzpnh3dth86l8rf0aijaiiw7q1l9n', 'ZTRlOGJiYzgyMmJhMWY0NzUxMGZjOWExOTg1YTkxYWE5MTk0ZWExZjp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjhlMmQ0OWFjOTM5MDdiNTE5ZjA0ZTI1NDE3OTQwZWUyZTI0YjYyOGQifQ==', '2023-08-14 06:55:44.234211'),
('pc9loidy449k17qp2pf6sn6py52q11z2', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-08-08 07:09:07.679053'),
('ph1ghoar62uwjkxjk9u91d5eqsvwj4ui', 'OTdlOTFkODc5MmJmOWEwNDI3YjQzODM4OGE5ZDE2MGJmOGYzMDg5Njp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQxZWM1OTVhNWM5YmNiMDQwYzc3MDQ0MjU4ZWNhOTcxMDE0M2U2OTIifQ==', '2023-09-09 10:46:23.752384'),
('phuxr87kabc1tzhnux74sdniwu4qpsd1', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-06 10:50:12.241754'),
('pl1cpm8d1yxolk2br5gmk09quprga4vl', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-14 12:10:13.376501'),
('pmg0u16j6u3gkt6i33nsm1jwt71axpq0', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-07-27 14:11:09.959778'),
('pmmy7f0k72fwvwe3h30zlk8gu1l0xbxd', 'YTIzMjEwNDdhNzBkMzRjNjRhOWM3ODFhZTg5YjJlMDRmMjk1MDg3Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5BbGxvd0FsbFVzZXJzTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjQ3ZmQwYjZiZDUyYjg2NDAyNDIwZTU3ZmY5ZGRjNjI3ZGE2MWViMyJ9', '2023-05-18 07:10:54.328652'),
('psghn28e3ddo4lu7w2xq6id3vuds3fe2', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-04 12:30:43.168775'),
('pvwmbcibulyyll7jhnaib9x8yg62f6oo', 'N2QyMTI3OGVkYjI0MThhMGI5NjJhYzgwNWE1ODgwNGIzNmI2MjVkYTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5BbGxvd0FsbFVzZXJzTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGI4ZTAyZmZlOTE2MmQ0YzE0ZmJiYThmZWU2ODI0ZGY3M2FkNGI0MCJ9', '2023-05-01 06:18:24.891595'),
('pwzzv489f8mil062tcwh9249h6wr72wx', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-11 06:30:15.225083'),
('px49bugpetcfx4iecyrw9x9dd6h6nvfn', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-06 05:26:43.694898'),
('q1pxmozd2t8tcxshpks4ge78x6czo7jd', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-15 11:46:20.405873'),
('q3tzlb8hbjhekn2dt0843mfaqm3q05fb', 'OTVmZDdmYWY4ZDdkNDMzNmM3NTk0YTBmNDY4OGQ0MDkyMzkxNDQ1NDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjI2NGY1YzdmN2U5ZjliMTQ0NjdlNzY1MTgwYTZjMzAwOGVmNzNjMmEifQ==', '2023-04-26 06:21:47.967551'),
('q6a71gzjaiu9wh4x0h5fly6xy2393ys6', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-08 07:23:06.689342'),
('q96nl4sq427k1n7ykqdeb269fhflzulk', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-08-08 06:44:57.100400'),
('qdvaambfpjv5hh742ivjnuxdbbdvncih', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-11 09:21:05.927596'),
('qfs6vu5qh7fkyqyurvtpykdcve2n8n0c', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-08 07:22:36.353482'),
('qg7n01r2xwlntj9w5jf9ooibldt44svs', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-14 05:14:19.477725'),
('qlrsfd018r0urz2fwecauynzet9t7nof', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-28 06:10:40.504114'),
('quhxyx69t4x31lpkfa5aji2fa3vuphcx', 'MTJmYmE4NmM0OWM2MzBiMzk3Yzg4OTRjZTE4ODIwMmQwMDk5NzA0NTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzExMDRiOGQwMTI4ZjhkNjI5OWJhY2IyMzg3MDVhMzlmYTU4NGZjIn0=', '2023-08-04 11:16:25.066046'),
('r0gbo8phes6tl669680uvzy4x515t2ad', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-08-10 05:17:44.273454'),
('r21x2ru0b8ei9q8vtl8zr2w094ptyuis', 'YzMxZTZkODZlOTQxODM5NzYwYmYxNTIyYjU5NDg0MTZkYjAwMjNkMTp7Il9hdXRoX3VzZXJfaWQiOiIzMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiJlOTJhOWZmMWM2NWNkMTc3Y2U1ZDAzZTk0YmY0ZDAyOGVmN2Y2ODFjIn0=', '2023-06-27 04:57:52.563905'),
('r28s68lt60a46vz3anpyg8l98c882jll', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-07-29 14:05:12.433436'),
('r3cg5qau5l239x02bg4lfhy5wot7dhc2', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-21 06:31:07.484847'),
('r6gdcuw64b0y5cfk7bgt33loodyty6z5', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-28 12:53:54.660817'),
('ra91qw0o895i9j75drzcvhmonhg3ug5i', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-08-08 06:23:48.135914'),
('rcm65wn2oogigkmzo67w7cdntv80ewve', 'MTJmYmE4NmM0OWM2MzBiMzk3Yzg4OTRjZTE4ODIwMmQwMDk5NzA0NTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzExMDRiOGQwMTI4ZjhkNjI5OWJhY2IyMzg3MDVhMzlmYTU4NGZjIn0=', '2023-07-26 12:10:01.543371'),
('rndvl1m12cmr4lzhgpb2cbclfbypz1zo', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-27 11:53:09.971835'),
('rq8e7k4yqoldhcxsjtbylapjb7k5egvm', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-07-28 09:42:31.770768'),
('rrvn1o3a509mcxttgrur15u2m0hrybc3', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-25 05:48:36.812232'),
('rtw3gzvhnaaaa3qwqyaeqptxnaxk42pj', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-07-27 14:39:23.524693'),
('s0mbmacp1hg8p3wk2upemz5nq5ubu7c5', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-08-04 04:46:32.855390'),
('s5xh49gbgpi2xssnra4ts7ljbadtn2gy', 'OTdlOTFkODc5MmJmOWEwNDI3YjQzODM4OGE5ZDE2MGJmOGYzMDg5Njp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQxZWM1OTVhNWM5YmNiMDQwYzc3MDQ0MjU4ZWNhOTcxMDE0M2U2OTIifQ==', '2023-08-20 10:11:09.659644'),
('s85k2ktifjr1ucl8pzpvs5abbs192usm', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-20 03:39:41.363507'),
('s87drohlruhhrrcabnv571ixqq7mk42m', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-24 14:01:27.103409'),
('sca04a1glp5slwv5lu8an8dqw721pp1o', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-29 08:04:52.699347'),
('sdm8j97a6iligqkykonikfdbplup7fsk', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-29 05:46:10.337743'),
('se3y4h2q6u31756gd0t38sep4p13xk9b', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-08-03 04:42:57.933684'),
('sfd4hgqcxmnqf4o5yzwgf6fah9ona7op', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-08-05 05:05:51.867391'),
('sfx6e9lonr2cunyxj0q9qpc1qo8kvwlw', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-05 13:24:52.316160'),
('si0jaktb0wrw4uj8xgqmc9rw7tf71lw0', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:37:47.095000'),
('smgfvavjrgtvlhxf2ud0vbu1w17tvn7b', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-08-08 12:09:23.252907'),
('sn01gzba9xkyvu53l9p5lbf2dwz0kab8', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-04 09:44:45.866160'),
('ss13ef8m0jrq73xilquaroke6kbt6tg8', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-27 10:08:19.341847'),
('svbll8w0i1zt0g2j56ba2gwvo54fwm0b', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-05 05:30:26.289771'),
('sxd1zoif2hz9oe86c2q94pw86gok006n', 'OTdlOTFkODc5MmJmOWEwNDI3YjQzODM4OGE5ZDE2MGJmOGYzMDg5Njp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQxZWM1OTVhNWM5YmNiMDQwYzc3MDQ0MjU4ZWNhOTcxMDE0M2U2OTIifQ==', '2023-08-26 05:58:24.681291'),
('syab31oh1eob40i69elsbzlfowu3u0om', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-08 12:40:01.515917'),
('t3qo2cudul9hvi4z5kgplcadvfv2xsqw', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-10-06 10:17:42.276191'),
('taz248rdtjbk9ofpu997wz4rg0zafc9b', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 11:07:41.622103'),
('tc63k3h83zktxo0j0kmmgja3l45ntr8b', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-21 12:11:39.341928'),
('tdfc7khzlfuu04m7ib52r7v34fj4w2gx', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-27 05:31:58.852339'),
('thwhzpog8q0hrq50ovlsfjjom04xtrwa', 'OTVmZDdmYWY4ZDdkNDMzNmM3NTk0YTBmNDY4OGQ0MDkyMzkxNDQ1NDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjI2NGY1YzdmN2U5ZjliMTQ0NjdlNzY1MTgwYTZjMzAwOGVmNzNjMmEifQ==', '2023-04-24 07:24:19.799823'),
('ti7wiix1ihpbo286z5zybdz8iirxve0a', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-21 10:35:21.001388'),
('tjtxrnbaw4912gvcetiqo3a3i1oszkjj', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-06 12:37:45.125981'),
('twrkcjjls6h1xr0fokce02kls3y3itj5', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-08-05 11:57:27.220554'),
('tz5fe83e7qfi9jbup8h0fi0f7ao82r7t', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-04 07:17:58.021415'),
('u1onq10mkvljogifhg2791reo00p2331', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-28 13:43:28.345817'),
('u2zo385qzou3jdugpmds99jimud843hu', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-11 10:49:47.283785'),
('u78a5saz0i2eihzd283vr1579lgt61kh', 'YWQwODgxZjYxZjliNmU5MDdmMTMzYjVmODE1N2MzNWE5ZGM3MDFmMTp7fQ==', '2023-07-31 13:24:26.444851'),
('u88bvunumy57j9m85maukpvyxvih4mgz', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-11 05:36:12.071271'),
('uczg86rn59oj7yiibtuprl7gr9r7mqz5', 'OTdlOTFkODc5MmJmOWEwNDI3YjQzODM4OGE5ZDE2MGJmOGYzMDg5Njp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQxZWM1OTVhNWM5YmNiMDQwYzc3MDQ0MjU4ZWNhOTcxMDE0M2U2OTIifQ==', '2023-08-17 06:00:28.370171'),
('ufd7w1ykiyijfhhex0esqrgh41ojhme1', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-14 05:58:36.074843'),
('uiewihzgrsaajytmxjqouf2d76ku5uh7', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-05 06:28:49.037107'),
('uig4x81214qbzj4a4fxjx3uyuqa1bh1b', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-27 14:31:59.568331'),
('uj99rscv520xwvh39okreq2hg9s1u2hm', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-20 10:43:11.640872'),
('uljvf2xfy95nnerulxwmj1ltsbsbja4o', 'OTVmZDdmYWY4ZDdkNDMzNmM3NTk0YTBmNDY4OGQ0MDkyMzkxNDQ1NDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjI2NGY1YzdmN2U5ZjliMTQ0NjdlNzY1MTgwYTZjMzAwOGVmNzNjMmEifQ==', '2023-04-24 07:27:04.558188'),
('ulssn6cmr99xrrvbxqcjwqt1owewkcim', 'ZTRlOGJiYzgyMmJhMWY0NzUxMGZjOWExOTg1YTkxYWE5MTk0ZWExZjp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjhlMmQ0OWFjOTM5MDdiNTE5ZjA0ZTI1NDE3OTQwZWUyZTI0YjYyOGQifQ==', '2023-08-14 07:00:34.993989'),
('unmmt2cfvh2onz46bzfsw6quqinc4tws', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-11 06:47:16.467317'),
('uom5ez9dc8xurvt0g8tkf4ndaggqp3t3', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-08-01 05:56:06.323582'),
('up8cl5r6d29tiomtelhi4muuqrs0qu6b', 'Mzg5NmZiY2ExMWVkYzBiYzI2NTBlNWI2Y2I3NWUxMTg5MjM5OGFiMzp7Il9hdXRoX3VzZXJfaWQiOiIzOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIwMWMzOGZjZDZmMGE1NTk5MDRjMjk0Mjk3NzljZDY5ZjNlZDJlMmRkIn0=', '2023-07-05 13:04:05.001516'),
('upymhn6aodbd89djfd2xg7i1xbwz9qc3', 'OTdlOTFkODc5MmJmOWEwNDI3YjQzODM4OGE5ZDE2MGJmOGYzMDg5Njp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQxZWM1OTVhNWM5YmNiMDQwYzc3MDQ0MjU4ZWNhOTcxMDE0M2U2OTIifQ==', '2023-08-21 06:05:44.030983'),
('v1hrwdpwx5f5j1qe28sid9qtotfsc478', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-31 05:55:22.712701'),
('v2ypgxf39gcol4zmc9du7pesqzz56m0h', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 11:06:37.229250'),
('var0nzkz8t2m978rqqglcn9451hbkbb9', 'MTJmYmE4NmM0OWM2MzBiMzk3Yzg4OTRjZTE4ODIwMmQwMDk5NzA0NTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzExMDRiOGQwMTI4ZjhkNjI5OWJhY2IyMzg3MDVhMzlmYTU4NGZjIn0=', '2023-09-08 09:36:30.244127'),
('vea5mhkscitjh8osmyuk5p0fftgarp7a', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 11:09:48.244097'),
('vl94j8zuwxn97qz8219fcq73h7nc7bh7', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-07 10:34:41.616781'),
('vqcbo2kv4bls58icepyox21y82ppyrvl', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-20 10:25:23.296084'),
('vv14hgnwnppwz5n0r459pcswh7qcnqs2', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-14 14:07:40.579891'),
('vw3eua2bvn6tvkst14i64xfz9ll8uk9e', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-06-23 10:27:26.658861'),
('vy8c1f1e4ug08ia5qjxag9kj2nbymrpa', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-28 14:05:16.093291'),
('vyg32ujhjjxhi9g8rmo8cz2nwph56ufu', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-08 07:05:31.584596'),
('w88nillz4yys530suj7izf06rzialqtb', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-27 12:45:35.876840'),
('w8nykjj5bru1t504jtqhrg25r3ndo7ua', 'MTJmYmE4NmM0OWM2MzBiMzk3Yzg4OTRjZTE4ODIwMmQwMDk5NzA0NTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzExMDRiOGQwMTI4ZjhkNjI5OWJhY2IyMzg3MDVhMzlmYTU4NGZjIn0=', '2023-08-17 05:12:03.144283');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('wbqxalu7nbaznmemej95tkrxzm8l5yvo', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-07-29 06:17:00.776948'),
('wdrte18jsup40uvvg7364rzwdqy1ho21', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-08 13:05:14.107843'),
('wiuadjdzaxd1e6pez9v0cz1wx9qv4ibm', 'OTdlOTFkODc5MmJmOWEwNDI3YjQzODM4OGE5ZDE2MGJmOGYzMDg5Njp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQxZWM1OTVhNWM5YmNiMDQwYzc3MDQ0MjU4ZWNhOTcxMDE0M2U2OTIifQ==', '2023-09-14 12:49:41.839953'),
('wqb216ya7nvgaq9fk151dxznw5vh7csw', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-08 07:53:23.075458'),
('wuvew8wq6rtg357cxda21t4yess9oe3w', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-14 12:27:33.741144'),
('wwexv9mjkeh63zmhpgt9n4m62qn698y2', 'MTJmYmE4NmM0OWM2MzBiMzk3Yzg4OTRjZTE4ODIwMmQwMDk5NzA0NTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzExMDRiOGQwMTI4ZjhkNjI5OWJhY2IyMzg3MDVhMzlmYTU4NGZjIn0=', '2023-08-11 11:52:03.331162'),
('wwkqxdifaqfwtyn0544dto39dcplhpxd', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-29 14:11:12.798877'),
('wxlesd6ui0qfg7kk3dnsd1pp6c25z0mo', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-11 12:10:45.507370'),
('wyf17ouinwfp75r1yei8esrwl0f34gi1', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-04 12:31:48.837144'),
('x0v37cda191h5uwo6hocg63dj6otxsmz', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-06 13:13:09.962547'),
('x1cuzynb1835hsenqj940tbq5xby50yj', 'OTdlOTFkODc5MmJmOWEwNDI3YjQzODM4OGE5ZDE2MGJmOGYzMDg5Njp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQxZWM1OTVhNWM5YmNiMDQwYzc3MDQ0MjU4ZWNhOTcxMDE0M2U2OTIifQ==', '2023-10-05 05:46:32.331256'),
('x3pjr0aps0gjk6yazu9h5k0ib84uvr5z', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-21 05:41:53.787807'),
('x56lc9vqcdegiehs3xioptaolb44ejfn', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-08-14 06:33:03.960070'),
('x6rkiw2rpnmhcdmhmjxo228nq5aqm68r', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-25 12:46:22.123883'),
('x7xkdo9fw0apo2l53rhdz4pnrp15xz7a', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-28 05:50:38.601890'),
('xbt42z9khkiehg1qwdtkejapmhadhopo', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-28 13:09:52.752856'),
('xdrisobi233rpre7k38r7ta95epl3jy4', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-06 05:43:50.755881'),
('xi8mh220yzqdx74ljapyrrk21m00ow8c', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-27 05:42:58.688943'),
('xihbqi5ymj69oex29p3tgslmm0wkujsv', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-05 06:40:21.965531'),
('xj3zzcwijsjp9b0jx502475v21pwbge9', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:47:48.587327'),
('xlonu9kpx9jknanrh2g1h9vvi0qdvcb5', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-08-07 14:14:40.055164'),
('xm9g9nehho4c0sdauf8p1d4v7ag29exo', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-25 13:14:43.144382'),
('xrt2r0loqvo9lm3n6zw7b38oiapwzz9r', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-05 06:19:18.627315'),
('xst3ane931q0jmxenjpb3qyp613rejlq', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-27 05:40:25.177944'),
('xuih8qoekmroozmbq9llv4owacx72r2t', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-06-22 11:40:01.736878'),
('xvyiiwp656qrb1tvzmquqhi4s8zxsc8a', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-06-23 04:57:23.016320'),
('xxgvkg78sxh5s4hheiepi6p7yfp7nqoa', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-31 05:55:59.945978'),
('ybufo5ac6holqpswwdei1jbu48qwxexu', 'ZGY0MzlkNmQyODU1YjhmZDc1NmU5NmFhMDllY2I2NTUyNTgwNmFmODp7Il9hdXRoX3VzZXJfaWQiOiIyOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjIzNThhZTJmMGI3NzVmZjNhMWY1M2ZlNWNmYzgwYWM2NWE1NWRjYzQifQ==', '2023-07-03 09:59:25.170725'),
('yfj5vcsrvwmu7u7vzgw0cr4amzyi0p2y', 'YTIzMjEwNDdhNzBkMzRjNjRhOWM3ODFhZTg5YjJlMDRmMjk1MDg3Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5BbGxvd0FsbFVzZXJzTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjQ3ZmQwYjZiZDUyYjg2NDAyNDIwZTU3ZmY5ZGRjNjI3ZGE2MWViMyJ9', '2023-05-18 08:09:57.099839'),
('yq69hwbn5n77ob2nnwfmlcpcetmeq4sj', 'ZTRlOGJiYzgyMmJhMWY0NzUxMGZjOWExOTg1YTkxYWE5MTk0ZWExZjp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjhlMmQ0OWFjOTM5MDdiNTE5ZjA0ZTI1NDE3OTQwZWUyZTI0YjYyOGQifQ==', '2023-08-14 07:09:39.409817'),
('yzb4rcoize0yyh8ltgpmqszl7czlsc2g', 'OTdlOTFkODc5MmJmOWEwNDI3YjQzODM4OGE5ZDE2MGJmOGYzMDg5Njp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQxZWM1OTVhNWM5YmNiMDQwYzc3MDQ0MjU4ZWNhOTcxMDE0M2U2OTIifQ==', '2023-08-28 07:05:37.330804'),
('z0xkvej5o37x7obthnwcspd9i89ydh07', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-07-27 14:23:32.971578'),
('z1pscoj2yfsslhl5a47y8uz0wlyz0u91', 'YzMxZTZkODZlOTQxODM5NzYwYmYxNTIyYjU5NDg0MTZkYjAwMjNkMTp7Il9hdXRoX3VzZXJfaWQiOiIzMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiJlOTJhOWZmMWM2NWNkMTc3Y2U1ZDAzZTk0YmY0ZDAyOGVmN2Y2ODFjIn0=', '2023-06-27 05:10:23.360159'),
('z6rb3rmjtjfwnbjdnonm798bzuvm403f', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-07-05 06:42:30.841730'),
('z7iy5lx028rnl7mgls4817mu1pu5nugw', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-08-08 13:01:04.316286'),
('zehph399idxdkhqgnu3tkcanndy1mzb4', 'MDk4NTQ0MDBjMDZiOWMzM2M0NGE1ZDAwZDNjM2YyMTc3OGI2YTZiOTp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzZmEwYTRhYmQ4NGRkZDc5MGM0NTg3YjdhZDM2YjFjN2I4ZTcxIn0=', '2023-07-20 09:37:09.922410'),
('zinitv35gifobcmahulchculti7d5e2h', 'Y2VmMDM3ZTM1MzY4YTJhYzFkNDQ3YTQ1YWUyYmIwMjdkYWUwZmExYTp7Il9hdXRoX3VzZXJfaWQiOiI2OSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNjkxNjJhYTE5NDA0MmY0YWQxYTRkMTVmMWIxZTgwNjVhYjgxZTM0In0=', '2023-07-24 11:29:55.158868'),
('zqa2bxp2ulftpkhhl9s4ni9bmh0d51o0', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-08-09 06:09:54.132172'),
('zqn7w6qbxr9n94ypwlsvbh1wh2v6tgf5', 'OTZmOWJmZDU0MjYwYmViMTY4Mjg1YmQzNmRlYzU1MzZlNDg5NTA2MTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDc5NTZmNGUwOTJiODlmNzgwYTQ1ZTQzNjc1NjM1YjdhMzhmZjcifQ==', '2023-07-27 08:53:13.643125'),
('zrje0ub03t7opad9ye39biherbw2e6tj', 'OTdlOTFkODc5MmJmOWEwNDI3YjQzODM4OGE5ZDE2MGJmOGYzMDg5Njp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQxZWM1OTVhNWM5YmNiMDQwYzc3MDQ0MjU4ZWNhOTcxMDE0M2U2OTIifQ==', '2023-08-16 10:35:56.249062'),
('zt8bqooew8nxxup2efugqdv76olexj6k', 'NzAzODk3ZWU3ZTZmZDg3NGU0YTAxMDMwZmViZWE0YzYwODg5MGI1Nzp7Il9hdXRoX3VzZXJfaWQiOiIzNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLmdvb2dsZS5Hb29nbGVPQXV0aDIiLCJfYXV0aF91c2VyX2hhc2giOiIwNjhkNTVlNzI5NGZkNGNiMzI0MmZlYzZiNTYwNThlMWNkZWVkMGM4In0=', '2023-07-04 19:53:12.932239'),
('ztevruklymi4a2jb61hz2pvgs1flp74w', 'OTVmZDdmYWY4ZDdkNDMzNmM3NTk0YTBmNDY4OGQ0MDkyMzkxNDQ1NDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjI2NGY1YzdmN2U5ZjliMTQ0NjdlNzY1MTgwYTZjMzAwOGVmNzNjMmEifQ==', '2023-04-24 07:20:54.210508'),
('zucbznb1wckgsjr3676s08zkjy6ot3s6', 'ZTRlOGJiYzgyMmJhMWY0NzUxMGZjOWExOTg1YTkxYWE5MTk0ZWExZjp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjhlMmQ0OWFjOTM5MDdiNTE5ZjA0ZTI1NDE3OTQwZWUyZTI0YjYyOGQifQ==', '2023-08-09 12:42:44.112244'),
('zy8ze5bgo5eh2jua2wmx3qbcicxam7yu', 'OGNmN2U4OTk3YWJmOGI5M2JiYzg5ZTVjYWJmMjRiZWJkOWZhMDQ4MDp7Il9hdXRoX3VzZXJfaWQiOiI5MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuQWxsb3dBbGxVc2Vyc01vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1MWVjZGUyNWVhY2I5NjdmNmZkNGI0ODYyYmJmYjFkOTM4MjgzZTEifQ==', '2023-08-07 11:36:04.426358');

-- --------------------------------------------------------

--
-- Table structure for table `extras_about`
--

CREATE TABLE `extras_about` (
  `id` int NOT NULL,
  `about_single` longtext NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `extras_about`
--

INSERT INTO `extras_about` (`id`, `about_single`, `date`) VALUES
(1, 'hiii', '2023-04-12');

-- --------------------------------------------------------

--
-- Table structure for table `extras_feedback`
--

CREATE TABLE `extras_feedback` (
  `id` int NOT NULL,
  `feed` varchar(250) NOT NULL,
  `date` date NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `extras_feedback`
--

INSERT INTO `extras_feedback` (`id`, `feed`, `date`, `user_id`) VALUES
(1, 'thanks', '2023-04-12', 10),
(2, 'Testing', '2023-04-18', 13),
(3, 'Thanks for the training', '2023-04-18', 9),
(4, 'test', '2023-06-12', 29),
(5, 'test', '2023-08-02', 13),
(6, 'testing', '2023-08-03', 91),
(7, 'testing1', '2023-08-03', 91),
(8, 'testing2', '2023-08-03', 91),
(9, 'testing', '2023-08-03', 91),
(10, 'testing', '2023-08-03', 13),
(11, 'testing', '2023-08-03', 13),
(12, 'one', '2023-08-03', 13),
(13, 'gopiiii', '2023-08-03', 91),
(14, 'testing', '2023-08-03', 91),
(15, 'test', '2023-08-03', 91),
(16, 'test', '2023-08-03', 91),
(17, 'test', '2023-08-03', 91),
(18, 'test', '2023-08-03', 91),
(19, 'test', '2023-08-03', 91),
(20, 'test', '2023-08-03', 91),
(21, 'test', '2023-08-03', 91),
(22, 'test', '2023-08-03', 91),
(23, 'hai', '2023-08-11', 91);

-- --------------------------------------------------------

--
-- Table structure for table `extras_help`
--

CREATE TABLE `extras_help` (
  `id` int NOT NULL,
  `question` varchar(250) NOT NULL,
  `answer` longtext NOT NULL,
  `date` date NOT NULL,
  `staff_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `extras_help`
--

INSERT INTO `extras_help` (`id`, `question`, `answer`, `date`, `staff_id`) VALUES
(1, 'Does match have fake profiles?', 'According to the Match.com online dating class action, users only learn that the profiles are fake after they pay for a subscription. ... In reality, the messages are allegedly from fake profiles and a ploy to get users to upgrade to paid services.', '2023-04-12', 1),
(2, 'Can you get in trouble for making a fake profile?', 'No, it is no crime to create a fake facebook profile. ... All the same, social media does not account for identity, so using a fake name is no crime. Think it this way, personal verified accounts are not even 10%, so using fake or incomplete data may be really frequent at facebook.', '2023-04-12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `extras_termsandconditions`
--

CREATE TABLE `extras_termsandconditions` (
  `id` int NOT NULL,
  `terms` longtext NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `extras_termsandconditions`
--

INSERT INTO `extras_termsandconditions` (`id`, `terms`, `date`) VALUES
(1, '<p class=\"MsoNormal\"><i><span>Effective on December&#10;25,2019</span></i><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><span>California&#10;subscribers: You may cancel your subscription, without penalty or obligation,&#10;at any time prior to midnight of the third business day following the date you&#10;subscribed. If you subscribed using an External Service (e.g., Apple ID, Google&#10;Play), you must cancel through your External Service, as set forth in more&#10;detail in Section 8a. If you subscribed through your Apple ID, refunds are&#10;handled by Apple/Google, not </span><b><span>(MEDIA COMPANY NAME HERE..STILL PENDING).</span></b><span>You can request a refund from Apple through&#10;your Apple ID account on your phone or at&#160;</span><a href=\"https://getsupport.apple.com/\" target=\"_blank\"><span>https://getsupport.apple.com</span></a><span>. All other users may request a refund by&#10;contacting PeopleMedia Customer Service at by clicking&#160;</span><a href=\"https://peoplemedia.custhelp.com/ci/pta/login/redirect/ask/theme/blackpeoplemeetv6/src/www.blackpeoplemeet.com_v3_help_iframehelper/pmsite/2/p_li/IL6iNIDCslL2vEaS2TbFtIx1I0TMd7TqpbwjMzdcGsKj3L8YlFwvzo_18Q1YNe5ViCYqjE2KZTanjBqR_HvNMnZbWeIeQUtXaFpL1gX_8dJ15iUDULXTGPON61LXP1_eT4WOcZ1vcNSZfmd8alJ6IPUOgoOs_N7Fj14em9F9Hi0lKqd_j6HGM3aZeJipaHRUzuS82Tuz7mHuyB_cuiycawzN_X6yKfI10Zz~44IjQ8TMqS_QzmeKckY0qIfir54qwMMJdM0hUaUTQP_XG7IC7KStf6EnGJVReMONTHNz3mJDBEzdWW6NZC~HVSwKKUrlr2fp0aV9sdQWNqXkxuO4VqUJFVOPZxtHzpg53VV18oEXrClROBekGhT3ItepJjja7IJKrRcAUUwvcgrnJzQ~A89AF1Kwcc25AFO_6lIPNVMt5ATUZXIwRf5ImBVuiui2\" target=\"_blank\"><span>here</span></a><span>,&#10;or by mailing or delivering a signed and dated notice that states that you, the&#10;buyer, are canceling this agreement, or words of similar effect. Please also&#10;include your name and the email address, phone number, or other unique&#10;identifier you used to sign up for your account. This notice shall be sent to: </span><b><span>(MEDIA&#10;COMPANY NAME HERE..STILL PENDING).</span></b><span>Attn: Cancellations, </span><b><span>(MEDIA COMPANY NAME HERE..STILL PENDING).ADDRESS&#10;GOES HERE</span></b><span>, USA. The Company\'s&#10;business is conducted, in part, at</span><b><span>. ADDRESS GOES HERE.</span></b><span>You may have these terms of use e-mailed to&#10;you by sending a letter to Terms Inquiries, P.O. Box 555692,Hous, Texas 75ff5,&#10;USA. In accordance with Cal. Civ. Code &#167;1789.3, you may report complaints to&#10;the Complaint Assistance Unit of the Division of Consumer Services of the&#10;California Department of Consumer Affairs by contacting them in writing at&#10;Consumer Information Division, 1625 North Market Blvd., Suite N112 Sacramento,&#10;CA 95834, or by telephone at (800) 952-5210.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>We have included brief&#10;summaries at the beginning of each section to make it easier for you to read&#10;and understand this agreement. The summaries do not replace the text of each&#10;section, and you should still read each section in its entirety.</span></i></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>1. INTRODUCTION</span></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>By accessing or using </span></i></b><b><span>(MEDIA&#10;COMPANY NAME HERE..STILL PENDING).</span></b><b><i><span>, you agree to be bound by these terms, including our&#160;</span></i></b><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy\" target=\"_blank\"><b><i><span>Privacy</span></i></b></a><b><i><span>&#160;and&#160;</span></i></b><a href=\"https://www.blackpeoplemeet.com/v3/cookiepolicy\" target=\"_blank\"><b><i><span>Cookie</span></i></b></a><b><i><span>&#160;Policies, so it is important that you&#10;read this agreement carefully before you create an account. We may update the&#10;terms from time to time, so you should check this page regularly for updates.</span></i></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><span>Welcome to The Single&#10;App, operated by </span><b><span>(MEDIA COMPANY NAME HERE..STILL PENDING).</span></b><span>As used in this Agreement, the terms &#34;</span><b><span>(MEDIA&#10;COMPANY NAME HERE..STILL PENDING).</span></b><span>&#34;, &#34;us&#34;, &#34;we&#34;, the &#34;Company&#34;,&#10;and &#34;our&#34; shall refer to PeopleMedia, Inc.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>By accessing or using&#10;our Services on TheSIngleApp.com (the &#34;Website&#34;), the TheSingleApp.com&#10;mobile application (the &#34;App&#34;), or any other platforms or services The&#10;Single App may offer (collectively, the &#34;Service&#34; or our&#10;&#34;Services&#34;), you agree to, and are bound by, these Terms of Use (the&#10;&#34;Terms&#34; or &#34;Agreement&#34;). This Agreement applies to anyone&#10;who accesses or uses our Services, regardless of registration or subscription&#10;status.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>Your use of our&#10;Services is also subject to the&#160;</span><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy\" target=\"_blank\"><span>Privacy&#10;Policy</span></a><span>,&#160;</span><a href=\"https://www.blackpeoplemeet.com/v3/cookiepolicy\" target=\"_blank\"><span>Cookie&#10;Policy</span></a><span>,&#160;</span><a href=\"https://www.blackpeoplemeet.com/v3/guidelines\" target=\"_blank\"><span>Community&#10;Guidelines</span></a><span>, and any terms&#10;disclosed and agreed to by you when you purchase additional features, products,&#10;or services from </span><b><span>(MEDIA COMPANY NAME HERE..STILL PENDING).</span></b><span> (&#34;Additional Terms Upon Purchase&#34;),&#10;which are incorporated into this Agreement by reference. If you do not wish to&#10;be bound by this Agreement, do not use our Services.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>We reserve the right&#10;to modify, amend, or change the Terms at any time. Notice of any material change&#10;will be posted on this page with an updated effective date. In certain&#10;circumstances, we may notify you of a change to the Terms via email or other&#10;means, as appropriate under the circumstances; however, you are responsible for&#10;regularly checking this page for notice of any changes. We agree that future&#10;changes will not be retroactive without your consent. Your continued use of our&#10;Services constitutes your acceptance of any change, and you will be legally&#10;bound by the updated Terms. If you do not accept a change to the terms, you&#10;should stop using our Services immediately.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>2. ACCOUNT&#10;ELIGIBILITY; YOUR RESPONSIBILITIES</span></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>Before you create an&#10;account on (MEDIA COMPANY NAME HERE..STILL PENDING).h, make sure you are&#10;eligible to use our Services. This Section also details what you can and can\'t&#10;do when using the Services, as well as the rights you grant PeopleMedia.</span></i></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>By using our Services,&#10;you represent and warrant that:</span></b><span></span></p>&#10;&#10;<ol start=\"1\" type=\"1\">&#10; <li class=\"MsoNormal\"><span>You are at least 18 years old;</span></li>&#10; <li class=\"MsoNormal\"><span>You are legally qualified to&#10;     enter a binding contract with </span><b><span>(MEDIA COMPANY NAME HERE..STILL PENDING).</span></b><span></span></li>&#10; <li class=\"MsoNormal\"><span>You are single or separated&#10;     from your spouse;</span></li>&#10; <li class=\"MsoNormal\"><span>You are not located in a&#10;     country that is subject to a U.S. Government embargo, or that has been&#10;     designated by the U.S. Government as a &#34;terrorist supporting&#34;&#10;     country;</span></li>&#10; <li class=\"MsoNormal\"><span>You are not on any list of&#10;     individuals prohibited from conducting business with the United States;</span></li>&#10; <li class=\"MsoNormal\"><span>You are not prohibited by law&#10;     from using our services;</span></li>&#10; <li class=\"MsoNormal\"><span>You have not have been&#10;     convicted of or pled no contest to a felony or indictable offense (or&#10;     crime of similar severity), a sex crime, or any crime involving violence;</span></li>&#10; <li class=\"MsoNormal\"><span>You are not required to&#10;     register as a sex offender with any state, federal or local sex offender&#10;     registry;</span></li>&#10; <li class=\"MsoNormal\"><span>You do not have more than one&#10;     account on our Services; and</span></li>&#10; <li class=\"MsoNormal\"><span>You have not previously been removed&#10;     from our Services by us, unless you have our express written permission to&#10;     create a new account.</span></li>&#10;</ol>&#10;&#10;<p class=\"MsoNormal\"><span>If at any time you&#10;cease to meet these requirements, you must immediately delete your account.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>You agree to:</span></b><span></span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><span>Comply with these Terms, and&#10;     check this page from time to time to ensure you are aware of any change;</span></li>&#10; <li class=\"MsoNormal\"><span>Comply with all applicable&#10;     laws, including without limitation, privacy laws, intellectual property&#10;     laws, anti-spam laws, and regulatory requirements;</span></li>&#10; <li class=\"MsoNormal\"><span>Use the latest version of the&#10;     Website and/or App;</span></li>&#10; <li class=\"MsoNormal\"><span>Treat other users in a&#10;     courteous and respectful manner, both on and off our Services;</span></li>&#10; <li class=\"MsoNormal\"><span>Be respectful when&#10;     communicating with any of our customer care representatives or other&#10;     employees;</span></li>&#10; <li class=\"MsoNormal\"><span>Review the&#160;</span><span><a href=\"https://www.blackpeoplemeet.com/v3/datingtips\" target=\"_blank\"><span>Safety&#10;     Tips</span></a></span><span>;</span></li>&#10; <li class=\"MsoNormal\"><span>Review and comply with&#10;     the&#160;</span><span><a href=\"https://www.blackpeoplemeet.com/v3/guidelines\" target=\"_blank\"><span>Community&#10;     Guidelines</span></a></span><span>, as&#10;     updated from time to time; and</span></li>&#10; <li class=\"MsoNormal\"><span>Maintain a strong password and&#10;     take reasonable measures to protect the security of your login&#10;     information.</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><b><span>You agree that you&#10;will not:</span></b><span></span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><span>Misrepresent your identity,&#10;     age, current or previous positions, qualifications, or affiliations with a&#10;     person or entity;</span></li>&#10; <li class=\"MsoNormal\"><span>Use the Services in a way that&#10;     damages the Services or prevents their use by other users;</span></li>&#10; <li class=\"MsoNormal\"><span>Use our Services in a way to&#10;     interfere with, disrupt or negatively affect the platform, the servers, or&#10;     our Services\' networks;</span></li>&#10; <li class=\"MsoNormal\"><span>Use our Services for any&#10;     harmful, illegal, or nefarious purpose;</span></li>&#10; <li class=\"MsoNormal\"><span>Harass, bully, stalk,&#10;     intimidate, assault, defame, harm or otherwise mistreat any person;</span></li>&#10; <li class=\"MsoNormal\"><span>Post or share Prohibited&#10;     Content (see below);</span></li>&#10; <li class=\"MsoNormal\"><span>Solicit passwords for any&#10;     purpose, or personal identifying information for commercial or unlawful&#10;     purposes from other users or disseminate another person\'s personal&#10;     information without his or her permission;</span></li>&#10; <li class=\"MsoNormal\"><span>Solicit money or other items of&#10;     value from another user, whether as a gift, loan, or form of compensation;</span></li>&#10; <li class=\"MsoNormal\"><span>Use another user\'s account;</span></li>&#10; <li class=\"MsoNormal\"><span>Use our Services in relation to&#10;     fraud, a pyramid scheme, or other similar practice; or</span></li>&#10; <li class=\"MsoNormal\"><span>Violate the terms of the&#10;     license granted to you by </span><b><span>(MEDIA COMPANY NAME HERE..STILL PENDING). </span></b><span>&#160;(see Section 6&#10;     below).</span></li>&#10; <li class=\"MsoNormal\"><span>Disclose private or proprietary&#10;     information that you do not have the right to disclose;</span></li>&#10; <li class=\"MsoNormal\"><span>Copy, modify, transmit,&#10;     distribute, or create any derivative works from, any Member Content or Our&#10;     Content, or any copyrighted material, images, trademarks, trade names,&#10;     service marks, or other intellectual property, content or proprietary&#10;     information accessible through our Services without PeopleMedia\'s prior&#10;     written consent;</span></li>&#10; <li class=\"MsoNormal\"><span>Express or imply that any&#10;     statements you make are endorsed by </span><b><span>(MEDIA COMPANY NAME&#10;     HERE..STILL PENDING).</span></b><span></span></li>&#10; <li class=\"MsoNormal\"><span>Use any robot, crawler, site&#10;     search/retrieval application, proxy or other manual or automatic device,&#10;     method or process to access, retrieve, index, &#34;data mine,&#34; or in&#10;     any way reproduce or circumvent the navigational structure or presentation&#10;     of our Services or its contents;</span></li>&#10; <li class=\"MsoNormal\"><span>Upload viruses or other&#10;     malicious code or otherwise compromise the security of our Services;</span></li>&#10; <li class=\"MsoNormal\"><span>Forge headers or otherwise&#10;     manipulate identifiers to disguise the origin of any information&#10;     transmitted to or through our Services;</span></li>&#10; <li class=\"MsoNormal\"><span>&#34;Frame&#34; or&#10;     &#34;mirror&#34; any part of our Services without </span><b><span>(MEDIA COMPANY NAME HERE..STILL PENDING). </span></b><span>&#160;prior written&#10;     authorization;</span></li>&#10; <li class=\"MsoNormal\"><span>Use meta tags or code or other&#10;     devices containing any reference to PeopleMedia or the platform (or any&#10;     trademark, trade name, service mark, logo or slogan of PeopleMedia) to&#10;     direct any person to any other website for any purpose;</span></li>&#10; <li class=\"MsoNormal\"><span>Modify, adapt, sublicense,&#10;     translate, sell, reverse engineer, decipher, decompile or otherwise&#10;     disassemble any portion of our Services, or cause others to do so;</span></li>&#10; <li class=\"MsoNormal\"><span>Use or develop any third-party&#10;     applications that interact with our Services or Member Content or&#10;     information without our written consent;</span></li>&#10; <li class=\"MsoNormal\"><span>Use, access, or publish the </span><b><span>(MEDIA COMPANY NAME HERE..STILL PENDING). </span></b><span>application programming interface without our written&#10;     consent;</span></li>&#10; <li class=\"MsoNormal\"><span>Probe, scan or test the&#10;     vulnerability of our Services or any system or network; or</span></li>&#10; <li class=\"MsoNormal\"><span>Encourage, promote, or agree to&#10;     engage in any activity that violates these Terms.</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><b><span>Prohibited Content-</span></b><b><span>(MEDIA&#10;COMPANY NAME HERE..STILL PENDING).</span></b><b><span> prohibits uploading or sharing content that:</span></b><span></span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><span>Is likely to be deemed&#10;     offensive or to harass, upset, embarrass, alarm or annoy any other person;</span></li>&#10; <li class=\"MsoNormal\"><span>Is obscene, pornographic,&#10;     violent or otherwise may offend human dignity, or contains nudity;</span></li>&#10; <li class=\"MsoNormal\"><span>Is abusive, insulting or&#10;     threatening, discriminatory or that promotes or encourages racism, sexism,&#10;     hatred or bigotry;</span></li>&#10; <li class=\"MsoNormal\"><span>Encourages or facilitates any illegal&#10;     activity including, without limitation, terrorism, inciting racial hatred&#10;     or the submission of which in itself constitutes committing a criminal&#10;     offense;</span></li>&#10; <li class=\"MsoNormal\"><span>Is defamatory, libelous, or&#10;     untrue;</span></li>&#10; <li class=\"MsoNormal\"><span>Relates to commercial&#10;     activities (including, without limitation, sales, competitions,&#10;     promotions, and advertising, solicitation for services, &#34;sugar&#10;     daddy&#34; or &#34;sugar baby&#34; relationships, links to other&#10;     websites or premium line telephone numbers);</span></li>&#10; <li class=\"MsoNormal\"><span>Involves the transmission of&#10;     &#34;junk&#34; mail or &#34;spam&#34;;</span></li>&#10; <li class=\"MsoNormal\"><span>Contains any spyware, adware,&#10;     viruses, corrupt files, worm programs or other malicious code designed to&#10;     interrupt, damage or limit the functionality of or disrupt any software,&#10;     hardware, telecommunications, networks, servers or other equipment, Trojan&#10;     horse or any other material designed to damage, interfere with, wrongly&#10;     intercept or expropriate any data or personal information whether from </span><b><span>(MEDIA COMPANY NAME HERE..STILL PENDING). </span></b><span>&#160;or otherwise;</span></li>&#10; <li class=\"MsoNormal\"><span>Infringes upon any third&#10;     party\'s rights (including, without limitation, intellectual property&#10;     rights and privacy rights);</span></li>&#10; <li class=\"MsoNormal\"><span>Was not written by you or was&#10;     automatically generated, unless expressly authorized by </span><b><span>(MEDIA COMPANY NAME HERE..STILL PENDING).</span></b><span></span></li>&#10; <li class=\"MsoNormal\"><span>Includes the image or likeness&#10;     of another person without that person\'s consent (or in the case of a&#10;     minor, the minor\'s parent or guardian), or is an image or likeness or a&#10;     minor unaccompanied by the minor\'s parent or guardian;</span></li>&#10; <li class=\"MsoNormal\"><span>Is inconsistent with the&#10;     intended use of the Services; or</span></li>&#10; <li class=\"MsoNormal\"><span>May harm the reputation of&#10;     PeopleMedia or its affiliates.</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>The uploading or&#10;sharing of content that violates these terms (&#34;Prohibited Content&#34;)&#10;may result in the immediate suspension or termination of your account.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>3. CONTENT</span></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>It is important that&#10;you understand your rights and responsibilities with regard to the content on&#10;our Services, including any content you provide or post. You are expressly&#10;prohibited from posting inappropriate content.</span></i></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><span>While using our&#10;Services, you will have access to: (i) content that you upload or provide while&#10;using our Services (&#34;Your Content&#34;); (ii) content that other users&#10;upload or provide while using our Services (&#34;Member Content&#34;); and&#10;(iii) content that</span><b><span>(MEDIA COMPANY NAME HERE..STILL PENDING).</span></b><span>provides on and through our Services&#10;(&#34;Our Content&#34;). In this agreement, &#34;content&#34; includes,&#10;without limitation, all text, images, video, audio, or other material on our&#10;Services, including information on users\' profiles and in direct messages&#10;between users.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>3a. YOUR CONTENT</span></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>You are responsible&#10;for Your Content. Don\'t share anything that you wouldn\'t want others to see,&#10;that would violate this Agreement, or that may expose you or us to legal&#10;liability.</span></i></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><span>You are solely&#10;responsible and liable for Your Content, and, therefore, you agree to&#10;indemnify, defend, release, and hold us harmless from any claims made in&#10;connection with Your Content.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>You represent and&#10;warrant to us that the information you provide to us or any other user is&#10;accurate, including any information submitted through Facebook or other&#10;third-party sources (if applicable), and that you will update your account&#10;information as necessary to ensure its accuracy.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>The content included&#10;on your individual profile should be relevant to the intended use of our&#10;Services. You may not display any personal contact or banking information,&#10;whether in relation to you or any other person (for example, names, home&#10;addresses or postcodes, telephone numbers, email addresses, URLs, credit/debit&#10;card or other banking details). If you choose to reveal any personal&#10;information about yourself to other users, you do so at your own risk. We&#10;encourage you to use caution in disclosing any personal information online.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>Your individual&#10;profile will be visible to other people around the world, so be sure that you&#10;are comfortable sharing Your Content before you post. You acknowledge and agree&#10;that Your Content may be viewed by other users, and, notwithstanding these&#10;Terms, other users may share Your Content with third parties. By uploading Your&#10;Content, you represent and warrant to us that you have all necessary rights and&#10;licenses to do so and automatically grant us a license to use Your Content as&#10;provided under Section 7 below.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>You understand and&#10;agree that we may monitor or review Your Content, and we have the right to&#10;remove, delete, edit, limit, or block or prevent access to any of Your Content&#10;at any time in our sole discretion. Furthermore, you understand agree that we&#10;have no obligation to display or review Your Content.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>3b. MEMBER CONTENT</span></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>While you will have&#10;access to Member Content, it is not yours and you may not copy or use Member&#10;Content for any purpose except as contemplated by these Terms.</span></i></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><span>Other users will also&#10;share content on our Services. Member Content belongs to the user who posted&#10;the content and is stored on our servers and displayed at the direction of that&#10;user.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>You do not have any&#10;rights in relation to Member Content, and you may only use Member Content to&#10;the extent that your use is consistent with our Services\' purpose of allowing&#10;use to communicate with and meet one another. You may not copy the Member&#10;Content or use Member Content for commercial purposes, to spam, to harass, or&#10;to make unlawful threats. We reserve the right to terminate your account if you&#10;misuse Member Content.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>3c. OUR CONTENT</span></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>PeopleMedia owns all&#10;other content on our Services.</span></i></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><span>Any other text,&#10;content, graphics, user interfaces, trademarks, logos, sounds, artwork, images,&#10;and other intellectual property appearing on our Services is owned, controlled&#10;or licensed by us and protected by copyright, trademark and other intellectual&#10;property law rights. All rights, title, and interest in and to Our Content&#10;remains with us at all times.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>We grant you a limited&#10;license to access and use Our Content as provided under Section 6 below, and we&#10;reserve all other rights.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>4. INAPPROPRIATE&#10;CONTENT AND MISCONDUCT; REPORTING</span></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>PeopleMedia does not&#10;tolerate inappropriate content or behavior on our Services.</span></i></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><span>We are committed to&#10;maintaining a positive and respectful PeopleMedia community, and we do not&#10;tolerate any inappropriate content or misconduct, whether on or off of the&#10;Services. We encourage you to report any inappropriate Member Content or&#10;misconduct by other users. You can report a user directly through the&#10;&#34;Report a Concern&#34; link on a user\'s profile or at the bottom of every&#10;email. You may also email PeopleMedia Customer Service by clicking&#160;</span><a href=\"https://peoplemedia.custhelp.com/ci/pta/login/redirect/ask/theme/blackpeoplemeetv6/src/www.blackpeoplemeet.com_v3_help_iframehelper/pmsite/2/p_li/IL6iNIDCslL2vEaS2TbFtIx1I0TMd7TqpbwjMzdcGsKj3L8YlFwvzo_18Q1YNe5ViCYqjE2KZTanjBqR_HvNMnZbWeIeQUtXaFpL1gX_8dJ15iUDULXTGPON61LXP1_eT4WOcZ1vcNSZfmd8alJ6IPUOgoOs_N7Fj14em9F9Hi0lKqd_j6HGM3aZeJipaHRUzuS82Tuz7mHuyB_cuiycawzN_X6yKfI10Zz~44IjQ8TMqS_QzmeKckY0qIfir54qwMMJdM0hUaUTQP_XG7IC7KStf6EnGJVReMONTHNz3mJDBEzdWW6NZC~HVSwKKUrlr2fp0aV9sdQWNqXkxuO4VqUJFVOPZxtHzpg53VV18oEXrClROBekGhT3ItepJjja7IJKrRcAUUwvcgrnJzQ~A89AF1Kwcc25AFO_6lIPNVMt5ATUZXIwRf5ImBVuiui2\" target=\"_blank\"><span>here</span></a><span>.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>Member Content is&#10;subject to the terms and conditions of Sections 512(c) and/or 512(d) of the&#10;Digital Millennium Copyright Act 1998. To submit a complaint regarding Member&#10;Content that may constitute intellectual property infringement, see Section 12&#10;(Digital Millennium Copyright Act) below.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>5. PRIVACY</span></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>Privacy is important&#10;to us. We have a separate policy about it that you should read.</span></i></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><span>For information about&#10;how </span><b><span>(MEDIA COMPANY NAME HERE..STILL PENDING).</span></b><span> and its affiliates collect, use, and share&#10;your personal data, please read our&#160;</span><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy\" target=\"_blank\"><span>Privacy&#10;Policy</span></a><span>. By using our&#10;Services, you agree that we may use your personal data in accordance with&#10;our&#160;</span><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy\" target=\"_blank\"><span>Privacy Policy</span></a><span>.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>6. RIGHTS YOU ARE&#10;GRANTED BY PEOPLEMEDIA</span></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>PeopleMedia grants you&#10;the right to use and enjoy our Services, subject to these Terms.</span></i></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><span>For as long as you&#10;comply with these Terms, </span><b><span>(MEDIA COMPANY NAME HERE..STILL PENDING).</span></b><span> grants you a personal, worldwide,&#10;royalty-free, non-assignable, non-exclusive, revocable, and non-sublicensable&#10;license to access and use our Services for purposes as intended by PeopleMedia&#10;and permitted by these Terms and applicable laws.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>7. RIGHTS YOU GRANT&#10;PEOPLEMEDIA</span></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>You own all of the&#10;content you provide to </span></i></b><b><span>(MEDIA COMPANY NAME HERE..STILL PENDING).</span></b><b><i><span>, but you also grant us the right to use Your&#10;Content as provided in this Agreement.</span></i></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><span>By creating an&#10;account, you grant to </span><b><span>(MEDIA COMPANY NAME HERE..STILL PENDING).</span></b><span> a worldwide, perpetual, transferable,&#10;sub-licensable, royalty-free right and license to host, store, use, copy,&#10;display, reproduce, adapt, edit, publish, translate, modify, and distribute&#10;Your Content, including any information you authorize us to access from&#10;Facebook or other third-party source (if applicable), in whole or in part, and&#10;in any format or medium currently known or developed in the future. </span><b><span>(MEDIA&#10;COMPANY NAME HERE..STILL PENDING).</span></b><span> license to Your Content shall be non-exclusive, except that PeopleMedia\'s&#10;license shall be exclusive with respect to derivative works created through use&#10;of our Services. For example, </span><b><span>(MEDIA COMPANY NAME HERE..STILL PENDING).</span></b><span>would have an exclusive license to screenshots&#10;of our Services that include Your Content.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>In addition, so that </span><b><span>(MEDIA&#10;COMPANY NAME HERE..STILL PENDING).</span></b><span>can prevent the use of Your Content outside of our Services, you&#10;authorize </span><b><span>(MEDIA COMPANY NAME HERE..STILL PENDING).</span></b><span> to act on your behalf with respect to&#10;infringing uses of Your Content taken from our Services by other users or third&#10;parties. This expressly includes the authority, but not the obligation, to send&#10;notices pursuant to 17 U.S.C. &#167; 512(c)(3) (i.e., DMCA Takedown Notices) on your&#10;behalf if Your Content is taken and used by third parties outside of our&#10;Services. </span><b><span>(MEDIA COMPANY NAME HERE..STILL PENDING).</span></b><span> is not obligated to take any action with&#10;regard to use of Your Content by other users or third parties. </span><b><span>(MEDIA&#10;COMPANY NAME HERE..STILL PENDING).</span></b><span>license to Your Content is subject to your rights under&#10;applicable law (for example, laws regarding personal data protection to the&#10;extent the content contains personal information as defined by those laws).</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>In consideration for </span><b><span>(MEDIA&#10;COMPANY NAME HERE..STILL PENDING).</span></b><span>allowing you to use our Services, you agree that we, our&#10;affiliates, and our third-party partners may place advertising on our Services.&#10;By submitting suggestions or feedback to PeopleMedia regarding our Services,&#10;you agree that </span><b><span>(MEDIA COMPANY NAME HERE..STILL PENDING).</span></b><span> may use and share such feedback for any&#10;purpose without compensating you.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>You agree that </span><b><span>(MEDIA&#10;COMPANY NAME HERE..STILL PENDING).</span></b><span> may access, preserve, and disclose your account information,&#10;including Your Content, if required to do so by law or upon a good faith belief&#10;that such access, preservation, or disclosure is reasonably necessary to: (i)&#10;comply with legal process; (ii) enforce these Terms; (iii) respond to claims&#10;that any content violates the rights of third parties; (iv) respond to your&#10;requests for customer service; or (v) protect the rights, property or personal&#10;safety of the Company or any other person.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>8. PURCHASES AND&#10;AUTOMATICALLY RENEWING SUBSCRIPTIONS</span></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>You will have the&#10;opportunity to purchase products and services from </span></i></b><b><span>(MEDIA&#10;COMPANY NAME HERE..STILL PENDING).</span></b><b><i><span>. If you purchase a subscription, it will automatically&#10;renew&#8212;and you will be charged&#8212;until you cancel.</span></i></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>(MEDIA COMPANY NAME HERE..STILL PENDING).</span></b><span>may offer products and services for purchase&#10;through iTunes, Google Play or other external services authorized by </span><b><span>(MEDIA&#10;COMPANY NAME HERE..STILL PENDING).</span></b><span> (each, an &#34;External Service,&#34; and any purchases made&#10;thereon, an &#34;External Service Purchase&#34;). </span><b><span>(MEDIA COMPANY NAME&#10;HERE..STILL PENDING).</span></b><span> may also offer&#10;products and services for purchase via credit card or other payment processors&#10;on the Website or inside the App (&#34;Internal Purchases&#34;).</span><span>&#160;If you purchase a subscription, it will&#10;automatically renew until you cancel, in accordance with the terms disclosed to&#10;you at the time of purchase, as further described below.</span><span>&#160;If you cancel your subscription, you&#10;will continue to have access to your subscription benefits until the end of&#10;your subscription period, at which point it will expire.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>Because our Services&#10;may be utilized without a subscription, canceling your subscription does not&#10;remove your profile from our Services. If you wish to fully terminate your&#10;membership, you must terminate your membership as set forth in Section 9.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>8a. EXTERNAL SERVICE&#10;PURCHASES AND SUBSCRIPTIONS</span></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>External Service&#10;Purchases, including subscriptions, may be processed through the External&#10;Service, in which case those purchases must be managed through your External&#10;Service Account. Subscriptions automatically renew until you cancel.</span></i></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><span>When making a purchase&#10;on the Service, you may have the option to pay through an External Service,&#10;such as with your Apple ID or Google account (&#34;your External Service&#10;Account&#34;), and your External Service Account will be charged for the&#10;purchase in accordance with the terms disclosed to you at the time of purchase&#10;and the general terms applicable to your External Service Account. Some&#10;External Services may charge you sales tax, depending on where you live, which&#10;may change from time to time.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>If your External Service&#10;Purchase includes an automatically renewing subscription, your External Service&#10;Account will continue to be periodically charged for the subscription until you&#10;cancel. After your initial subscription commitment period, and again after any&#10;subsequent subscription period, the subscription will automatically continue&#10;for the price and time period you agreed to when subscribing.</span></p>&#10;&#10;<p class=\"MsoNormal\"><u><span>To cancel a subscription</span></u><span>: If you do not want your subscription to renew&#10;automatically, or if you want to change or terminate your subscription, you&#10;must log in to your External Service Account and follow instructions to manage&#10;or cancel your subscription, even if you have otherwise deleted your account&#10;with us or if you have deleted the App from your device. For example, if you&#10;subscribed using your Apple ID, cancellation is handled by Apple, not <b>(MEDIA COMPANY NAME HERE..STILL PENDING).</b>.&#10;To cancel a purchase made with your Apple ID, go to Settings &gt; iTunes &amp;&#10;App Stores &gt; [click on your Apple ID] &gt; View Apple ID &gt; Subscriptions,&#10;then find your PeopleMedia subscription and follow the instructions to cancel.&#10;You can also request assistance at&#160;</span><a href=\"https://getsupport.apple.com/\" target=\"_blank\"><span>https://getsupport.apple.com</span></a><span>. Similarly, if you subscribed on Google Play,&#10;cancellation is handled by Google. To cancel a purchase made through Google&#10;Play, launch the Google Play app on your mobile device and go to Menu &gt; My&#10;Apps &gt; Subscriptions, then find your PeopleMedia subscription and follow the&#10;instructions to cancel. You can also request assistance at&#160;</span><a href=\"https://play.google.com/\" target=\"_blank\"><span>https://play.google.com</span></a><span>. If you cancel a subscription, you may continue&#10;to use the cancelled service until the end of your then-current subscription&#10;term. The subscription will not be renewed when your then-current term expires.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>If you initiate a&#10;chargeback or otherwise reverse a payment made with your External Service&#10;Account, </span><b><span>(MEDIA COMPANY NAME HERE..STILL PENDING).</span></b><span>may terminate your account immediately in its&#10;sole discretion, on the basis that you have determined that you do not want a </span><b><span>(MEDIA&#10;COMPANY NAME HERE..STILL PENDING).</span></b><span> subscription. In the event that your chargeback or other payment&#10;reversal is overturned, please contact&#160;</span><a href=\"https://peoplemedia.custhelp.com/ci/pta/login/redirect/ask/theme/blackpeoplemeetv6/src/www.blackpeoplemeet.com_v3_help_iframehelper/pmsite/2/p_li/IL6iNIDCslL2vEaS2TbFtIx1I0TMd7TqpbwjMzdcGsKj3L8YlFwvzo_18Q1YNe5ViCYqjE2KZTanjBqR_HvNMnZbWeIeQUtXaFpL1gX_8dJ15iUDULXTGPON61LXP1_eT4WOcZ1vcNSZfmd8alJ6IPUOgoOs_N7Fj14em9F9Hi0lKqd_j6HGM3aZeJipaHRUzuS82Tuz7mHuyB_cuiycawzN_X6yKfI10Zz~44IjQ8TMqS_QzmeKckY0qIfir54qwMMJdM0hUaUTQP_XG7IC7KStf6EnGJVReMONTHNz3mJDBEzdWW6NZC~HVSwKKUrlr2fp0aV9sdQWNqXkxuO4VqUJFVOPZxtHzpg53VV18oEXrClROBekGhT3ItepJjja7IJKrRcAUUwvcgrnJzQ~A89AF1Kwcc25AFO_6lIPNVMt5ATUZXIwRf5ImBVuiui2\" target=\"_blank\"><span>Customer Care</span></a><span>. </span><b><span>(MEDIA COMPANY NAME HERE..STILL PENDING).</span></b><span>will retain all funds charged to your External&#10;Service Account until you cancel your subscription through your External&#10;Service Account. Certain users may be entitled to request a refund. See Section&#10;8d below for more information.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>8b. INTERNAL PURCHASES AND&#10;SUBSCRIPTIONS</span></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>Internal Purchases,&#10;including subscriptions, are processed using the Payment Method you provide on&#10;the Website or App. Subscriptions automatically renew until you cancel.</span></i></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><span>If you make an&#10;Internal Purchase, you agree to pay the prices displayed to you for the&#10;Services you\'ve selected as well as any sales or similar taxes that may be&#10;imposed on your payments (and as may change from time to time), and you&#10;authorize </span><b><span>(MEDIA COMPANY NAME HERE..STILL PENDING).</span></b><span> to charge the payment method you provide&#10;(your &#34;Payment Method&#34;). </span><b><span>(MEDIA COMPANY NAME HERE..STILL PENDING).</span></b><span> may correct any billing errors or mistakes&#10;even if we have already requested or received payment. If you initiate a chargeback&#10;or otherwise reverse a payment made with your Payment Method, </span><b><span>(MEDIA&#10;COMPANY NAME HERE..STILL PENDING).</span></b><span>may terminate your account immediately in its sole discretion,&#10;on the basis that you have determined that you do not want a </span><b><span>(MEDIA&#10;COMPANY NAME HERE..STILL PENDING).</span></b><span> subscription. In the event that your chargeback or other&#10;payment reversal is overturned, please contact&#160;</span><a href=\"https://peoplemedia.custhelp.com/ci/pta/login/redirect/ask/theme/blackpeoplemeetv6/src/www.blackpeoplemeet.com_v3_help_iframehelper/pmsite/2/p_li/IL6iNIDCslL2vEaS2TbFtIx1I0TMd7TqpbwjMzdcGsKj3L8YlFwvzo_18Q1YNe5ViCYqjE2KZTanjBqR_HvNMnZbWeIeQUtXaFpL1gX_8dJ15iUDULXTGPON61LXP1_eT4WOcZ1vcNSZfmd8alJ6IPUOgoOs_N7Fj14em9F9Hi0lKqd_j6HGM3aZeJipaHRUzuS82Tuz7mHuyB_cuiycawzN_X6yKfI10Zz~44IjQ8TMqS_QzmeKckY0qIfir54qwMMJdM0hUaUTQP_XG7IC7KStf6EnGJVReMONTHNz3mJDBEzdWW6NZC~HVSwKKUrlr2fp0aV9sdQWNqXkxuO4VqUJFVOPZxtHzpg53VV18oEXrClROBekGhT3ItepJjja7IJKrRcAUUwvcgrnJzQ~A89AF1Kwcc25AFO_6lIPNVMt5ATUZXIwRf5ImBVuiui2\" target=\"_blank\"><span>Customer Care</span></a><span>.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>If your Internal Purchase&#10;includes an automatically renewing subscription, your Payment Method will&#10;continue to be periodically charged for the subscription until you cancel.&#10;After your initial subscription commitment period, and again after any&#10;subsequent subscription period, your subscription will automatically continue&#10;for the price and time period you agreed to when subscribing, until you cancel.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>To cancel a subscription,&#10;log in to the Website and go to the Settings tool. If you cancel a&#10;subscription, you may continue to use the cancelled service until the end of&#10;your then-current subscription term. The subscription will not be renewed when&#10;your then-current term expires.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>You may edit your&#10;Payment Method information by using the Settings tool. If a payment is not&#10;successfully processed, due to expiration, insufficient funds, or otherwise,&#10;you remain responsible for any uncollected amounts and authorize us to continue&#10;billing the Payment Method, as it may be updated. This may result in a change&#10;to your payment billing dates.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>In addition, you&#10;authorize us to obtain updated or replacement expiration dates and card numbers&#10;for your credit or debit card as provided by your credit or debit card issuer.&#10;The terms of your payment will be based on your Payment Method and may be&#10;determined by agreements between you and the financial institution, credit card&#10;issuer, or other provider of your chosen Payment Method. Certain users may be&#10;entitled to request a refund. See Section 8d below for more information.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>8c. VIRTUAL ITEMS</span></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>Virtual items are&#10;non-refundable and subject to certain conditions.</span></i></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><span>From time to time, you&#10;may have the opportunity purchase a limited, personal, non-transferable,&#10;non-sublicensable, revocable license to use or access special limited-use&#10;features such as &#34;Boost&#34; (&#34;Virtual Item(s)&#34;) from </span><b><span>(MEDIA&#10;COMPANY NAME HERE..STILL PENDING).</span></b><span>You may only purchase Virtual Items from us or our authorized&#10;partners through our Services. Virtual Items represent a limited license right&#10;governed by this Agreement, and, except as otherwise prohibited by applicable&#10;law, no title or ownership in or to Virtual Items is being transferred or&#10;assigned to you. This Agreement should not be construed as a sale of any rights&#10;in Virtual Items.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>Any Virtual Item&#10;balance shown in your account does not constitute a real-world balance or&#10;reflect any stored value, but instead constitutes a measurement of the extent&#10;of your license. Virtual Items do not incur fees for non-use; however, the&#10;license granted to you in Virtual Items will terminate in accordance with the&#10;terms of this Agreement, on the earlier of when </span><b><span>(MEDIA COMPANY NAME&#10;HERE..STILL PENDING).</span></b><span> ceases providing our&#10;Services, or your account is otherwise closed or terminated.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>(MEDIA COMPANY NAME HERE..STILL PENDING).</span></b><span>in its sole discretion, reserves the right to&#10;charge fees for the right to access or use Virtual Items and/or may distribute&#10;Virtual Items with or without charge. </span><b><span>MEDIA COMPANY NAME&#10;HERE..STILL PENDING).</span></b><span> may manage, regulate,&#10;control, modify, or eliminate Virtual Items at any time, including taking&#10;actions that may impact the perceived value or purchase price, if applicable,&#10;of any Virtual Items. </span><b><span>(MEDIA COMPANY NAME HERE..STILL PENDING).</span></b><span>shall have no liability to you or any third&#10;party in the event that</span><b><span>(MEDIA COMPANY NAME HERE..STILL PENDING).</span></b><span>exercises any such rights. The transfer of&#10;Virtual Items is prohibited, and you shall not sell, redeem, or otherwise&#10;transfer Virtual Items to any person or entity. Virtual Items may only be&#10;redeemed through our Services.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>ALL PURCHASES AND REDEMPTIONS&#10;OF VIRTUAL ITEMS MADE THROUGH OUR SERVICES ARE FINAL AND NON-REFUNDABLE. YOU&#10;ACKNOWLEDGE THAT PEOPLEMEDIA IS NOT REQUIRED TO PROVIDE A REFUND FOR ANY&#10;REASON, AND THAT YOU WILL NOT RECEIVE MONEY OR OTHER COMPENSATION FOR UNUSED&#10;VIRTUAL ITEMS WHEN AN ACCOUNT IS CLOSED, WHETHER SUCH CLOSURE WAS VOLUNTARY OR&#10;INVOLUNTARY.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>8d. REFUNDS</span></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>Generally, all&#10;purchases are nonrefundable. Special terms apply in Arizona, California,&#10;Connecticut, Illinois, Iowa, Minnesota, New York, North Carolina, Ohio, Rhode&#10;Island, and Wisconsin.</span></i></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><span>Generally, all&#10;purchases are final and nonrefundable, and there are no refunds or credits for&#10;partially used periods, except if the laws applicable in your jurisdiction&#10;provide for refunds.</span></p>&#10;&#10;<p class=\"MsoNormal\"><u><span>For subscribers&#10;residing in Arizona, California, Connecticut, Illinois, Iowa, Minnesota, New&#10;York, North Carolina, Ohio, Rhode Island, and Wisconsin:</span></u><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>Your Right to&#10;Cancel-You may cancel your subscription, without penalty or obligation, at any&#10;time prior to midnight of the third business day following the date you&#10;subscribed.</span></b><span>&#160;In the event&#10;that you die before the end of your subscription period, your estate shall be&#10;entitled to a refund of that portion of any payment you had made for your&#10;subscription which is allocable to the period after your death. In the event&#10;that you become disabled (such that you are unable to use our Services) before&#10;the end of your subscription period, you shall be entitled to a refund of that&#10;portion of any payment you had made for your subscription which is allocable to&#10;the period after your disability by providing the company notice in the same&#10;manner as you request a refund as described below.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>Purchases of Virtual&#10;Items are FINAL AND NON-REFUNDABLE.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>If any of the above&#10;apply to you and you subscribed using your Apple ID, your refund requests are&#10;handled by Apple, not </span><b><span>MEDIA COMPANY NAME HERE..STILL PENDING).</span></b><span>To request a refund, please contact your&#10;External Service directly; for example using your Apple device, go to Settings&#10;&gt; iTunes &amp; App Stores &gt; [click on your Apple ID] &gt; View Apple ID&#10;&gt; Purchase History. Find the transaction and select &#34;Report a&#10;Problem.&#34; You can also request a refund at&#160;</span><a href=\"https://getsupport.apple.com/\" target=\"_blank\"><span>https://getsupport.apple.com</span></a><span>. For any other purchase, please contact&#10;PeopleMedia Customer Service with your order number (see your confirmation&#10;email) by mailing or delivering a signed and dated notice which states that&#10;you, the buyer, are canceling this agreement, or words of similar effect.&#10;Please also include the email address or telephone number associated with your&#10;account along with your order number. This notice shall be sent to: </span><b><span>MEDIA&#10;COMPANY NAME HERE..STILL PENDING).</span></b><span>Attn: Cancellations, </span><b><span>MEDIA COMPANY addressHERE..STILL PENDING).</span></b><span>USA (California and Ohio users may also email&#10;us by clicking&#160;</span><a href=\"https://peoplemedia.custhelp.com/ci/pta/login/redirect/ask/theme/blackpeoplemeetv6/src/www.blackpeoplemeet.com_v3_help_iframehelper/pmsite/2/p_li/IL6iNIDCslL2vEaS2TbFtIx1I0TMd7TqpbwjMzdcGsKj3L8YlFwvzo_18Q1YNe5ViCYqjE2KZTanjBqR_HvNMnZbWeIeQUtXaFpL1gX_8dJ15iUDULXTGPON61LXP1_eT4WOcZ1vcNSZfmd8alJ6IPUOgoOs_N7Fj14em9F9Hi0lKqd_j6HGM3aZeJipaHRUzuS82Tuz7mHuyB_cuiycawzN_X6yKfI10Zz~44IjQ8TMqS_QzmeKckY0qIfir54qwMMJdM0hUaUTQP_XG7IC7KStf6EnGJVReMONTHNz3mJDBEzdWW6NZC~HVSwKKUrlr2fp0aV9sdQWNqXkxuO4VqUJFVOPZxtHzpg53VV18oEXrClROBekGhT3ItepJjja7IJKrRcAUUwvcgrnJzQ~A89AF1Kwcc25AFO_6lIPNVMt5ATUZXIwRf5ImBVuiui2\" target=\"_blank\"><span>here</span></a><span>&#160;or&#10;send a facsimile to 214-853-4309).</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>9. ACCOUNT TERMINATION</span></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>If you no longer wish&#10;to use our Services, or if we terminate your account for any reason, here\'s&#10;what you need to know.</span></i></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><span>You can delete your&#10;account at any time by logging into the Website, going to &#34;Settings&#34;&#10;(the gear/pencil icon in the top right corner), and following the instructions&#10;to cancel your membership.&#160;<b>However, you will need to cancel / manage&#10;any External Service Purchases through your External Service Account (e.g.,&#10;iTunes, Google Play) to avoid additional billing.</b></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>MEDIA COMPANY</span></b><span>reserves&#10;the right to investigate and, if appropriate, suspend or terminate your account&#10;without a refund if you have violated these Terms, misused our Services, or&#10;behaved in a way that</span><b><span>MEDIA COMPANY </span></b><span>regards as inappropriate or unlawful, on or off our Services. We&#10;reserve the right to make use of any personal, technological, legal, or other means&#10;available to enforce the Terms, at any time without liability and without the&#10;obligation to give you prior notice, including, but not limited to, preventing&#10;you from accessing the Services.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>If your account is&#10;terminated by you or by </span><b><span>MEDIA COMPANY</span></b><span> for any reason, these Terms continue and remain enforceable&#10;between you and </span><b><span>MEDIA COMPANY </span></b><span>and you will not be entitled to any refund for purchases made.&#10;Your information will be maintained and deleted in accordance with our&#160;</span><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy\" target=\"_blank\"><span>Privacy&#10;Policy</span></a><span>.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>10. NO CRIMINAL&#10;BACKGROUND OR IDENTITY VERIFICATION CHECKS</span></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>MEDIA COMPANY</span></b><b><i><span> does not conduct criminal background or identity verification&#10;checks on its users. Use your best judgment when interacting with others and&#10;check out our&#160;</span></i></b><a href=\"https://www.blackpeoplemeet.com/v3/datingtips\" target=\"_blank\"><b><i><span>Safety&#10;Tips</span></i></b></a><b><i><span>.</span></i></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>YOU UNDERSTAND THAT </span></b><b><span>MEDIA&#10;COMPANY</span></b><b><span> DOES NOT CONDUCT&#10;CRIMINAL BACKGROUND OR IDENTITY VERIFICATION CHECKS ON ITS USERS OR OTHERWISE&#10;INQUIRE INTO THE BACKGROUND OF ITS USERS.</span></b><span>&#160;</span><b><span>MEDIA COMPANY</span></b><span> MAKES NO REPRESENTATIONS OR WARRANTIES AS TO THE CONDUCT,&#10;IDENTITY, INTENTIONS, LEGITIMACY, OR VERACITY OF USERS. </span><b><span>MEDIA&#10;COMPANY</span></b><span> RESERVES THE RIGHT TO&#10;CONDUCT&#8212;AND YOU AUTHORIZE PEOPLEMEDIA TO CONDUCT&#8212;ANY CRIMINAL BACKGROUND CHECK&#10;OR OTHER SCREENINGS (SUCH AS SEX OFFENDER REGISTER SEARCHES) AT ANY TIME USING&#10;AVAILABLE PUBLIC RECORDS, AND YOU AGREE THAT ANY INFORMATION YOU PROVIDE MAY BE&#10;USED FOR THAT PURPOSE. IF THE COMPANY DECIDES TO CONDUCT ANY SCREENING THROUGH&#10;A CONSUMER REPORTING AGENCY, YOU HEREBY AUTHORIZE THE COMPANY TO OBTAIN AND USE&#10;A CONSUMER REPORT ABOUT YOU TO DETERMINE YOUR ELIGIBILITY UNDER THESE TERMS.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>YOU ARE SOLELY&#10;RESPONSIBLE FOR YOUR INTERACTIONS WITH OTHER USERS. SEX OFFENDER SCREENINGS AND&#10;OTHER TOOLS DO NOT GUARANTEE YOUR SAFETY AND ARE NOT A SUBSTITUTE FOR FOLLOWING&#10;THE&#160;</span><a href=\"https://www.blackpeoplemeet.com/v3/datingtips\" target=\"_blank\"><span>SAFETY TIPS</span></a><span>&#160;AND OTHER SENSIBLE SAFETY PRECAUTIONS. ALWAYS USE YOUR&#10;BEST JUDGMENT AND TAKE APPROPRIATE SAFETY PRECAUTIONS WHEN COMMUNICATING WITH&#10;OR MEETING NEW PEOPLE. COMMUNICATIONS RECEIVED THROUGH THE SERVICE, INCLUDING&#10;AUTOMATIC NOTIFICATIONS SENT BY PEOPLEMEDIA, MAY RESULT FROM USERS ENGAGING&#10;WITH THE SERVICE FOR IMPROPER PURPOSES, INCLUDING FRAUD, ABUSE, HARASSMENT, OR&#10;OTHER SUCH IMPROPER BEHAVIOR.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>Though </span><b><span>MEDIA&#10;COMPANY </span></b><span>strives to encourage a&#10;respectful user experience, it is not responsible for the conduct of any user&#10;on or off the Service. You agree to use caution in all interactions with other&#10;users, particularly if you decide to communicate off the Service or meet in&#10;person.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>11. DISCLAIMER</span></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>MEDIA COMPANY</span></b><b><i><span> Services are provided &#34;as is&#34; and we do not make, and&#10;cannot make, any representations about the content or features of our Services.</span></i></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>MEDIA COMPANY</span></b><span>&#10;PROVIDES OUR SERVICES ON AN &#34;AS IS&#34; AND &#34;AS AVAILABLE&#34;&#10;BASIS AND TO THE EXTENT PERMITTED BY APPLICABLE LAW, GRANTS NO WARRANTIES OF&#10;ANY KIND, WHETHER EXPRESS, IMPLIED, STATUTORY OR OTHERWISE WITH RESPECT TO OUR&#10;SERVICES (INCLUDING ALL CONTENT CONTAINED THEREIN), INCLUDING, WITHOUT&#10;LIMITATION, ANY IMPLIED WARRANTIES OF SATISFACTORY QUALITY, MERCHANTABILITY,&#10;FITNESS FOR A PARTICULAR PURPOSE OR NON-INFRINGEMENT. PEOPLEMEDIA DOES NOT&#10;REPRESENT OR WARRANT THAT (A) OUR SERVICES WILL BE UNINTERRUPTED, SECURE, OR&#10;ERROR FREE, (B) ANY DEFECTS OR ERRORS IN OUR SERVICES WILL BE CORRECTED, OR (C)&#10;THAT ANY CONTENT OR INFORMATION YOU OBTAIN ON OR THROUGH OUR SERVICES WILL BE&#10;ACCURATE. FURTHERMORE, PEOPLEMEDIA MAKES NO GUARANTEES AS TO THE NUMBER OF&#10;ACTIVE USERS AT ANY TIME; USERS\' ABILITY OR DESIRE TO COMMUNICATE WITH OR MEET&#10;YOU, OR THE ULTIMATE COMPATIBILITY WITH OR CONDUCT BY USERS YOU MEET THROUGH&#10;THE SERVICES.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>MEDIA COMPANY</span></b><span>&#10;TAKES NO RESPONSIBILITY FOR ANY CONTENT THAT YOU OR ANOTHER USER OR THIRD PARTY&#10;POSTS, SENDS, OR RECEIVES THROUGH OUR SERVICES NOR DOES </span><b><span>MEDIA&#10;COMPANY</span></b><span> TAKE ANY&#10;RESPONSIBILITY FOR THE IDENTITY, INTENTIONS, LEGITIMACY, OR VERACITY OF ANY&#10;USERS WITH WHOM YOU MAY COMMUNICATION THROUGH </span><b><span>MEDIA COMPANY </span></b><span>ANY MATERIAL DOWNLOADED OR OTHERWISE OBTAINED&#10;THROUGH THE USE OF OUR SERVICES IS ACCESSED AT YOUR OWN DISCRETION AND RISK. </span><b><span>MEDIA&#10;COMPANY </span></b><span>IS NOT RESPONSIBLE FOR&#10;ANY DAMAGE TO YOUR COMPUTER HARDWARE, COMPUTER SOFTWARE, OR OTHER EQUIPMENT OR&#10;TECHNOLOGY INCLUDING, BUT WITHOUT LIMITATION, DAMAGE FROM ANY SECURITY BREACH&#10;OR FROM ANY VIRUS, BUGS, TAMPERING, FRAUD, ERROR, OMISSION, INTERRUPTION,&#10;DEFECT, DELAY IN OPERATION OR TRANSMISSION, COMPUTER LINE OR NETWORK FAILURE,&#10;OR ANY OTHER TECHNICAL OR OTHER MALFUNCTION.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>12. DIGITAL MILLENNIUM&#10;COPYRIGHT ACT</span></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>We take copyright&#10;infringement very seriously. We ask you to help us to ensure we address it&#10;promptly and effectively.</span></i></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>MEDIA COMPANY</span></b><span>&#10;has adopted the following policy towards copyright infringement in accordance&#10;with the Digital Millennium Copyright Act (the &#34;DMCA&#34;). If you&#10;believe any Member Content or Our Content infringes upon your intellectual&#10;property rights, please submit a notification alleging such infringement&#10;(&#34;DMCA Takedown Notice&#34;) including the following:</span></p>&#10;&#10;<ol start=\"1\" type=\"1\">&#10; <li class=\"MsoNormal\"><span>A physical or electronic&#10;     signature of a person authorized to act on behalf of the owner of an&#10;     exclusive right that is allegedly infringed;</span></li>&#10; <li class=\"MsoNormal\"><span>Identification of the&#10;     copyrighted work claimed to have been infringed, or, if multiple&#10;     copyrighted works at a single online site are covered by a single&#10;     notification, a representative list of such works;</span></li>&#10; <li class=\"MsoNormal\"><span>Identification of the material&#10;     claimed to be infringing or to be the subject of infringing activity and&#10;     that is to be removed or access disabled and information reasonably&#10;     sufficient to permit the service provider to locate the material;</span></li>&#10; <li class=\"MsoNormal\"><span>Information reasonably&#10;     sufficient to permit the service provider to contact you, such as an&#10;     address, telephone number, and, if available, an electronic mail;</span></li>&#10; <li class=\"MsoNormal\"><span>A statement that you have a&#10;     good faith belief that use of the material in the manner complained of is&#10;     not authorized by the copyright owner, its agent, or the law; and</span></li>&#10; <li class=\"MsoNormal\"><span>A statement that, under penalty&#10;     of perjury, the information in the notification is accurate and you are&#10;     authorized to act on behalf of the owner of the exclusive right that is&#10;     allegedly infringed.</span></li>&#10;</ol>&#10;&#10;<p class=\"MsoNormal\"><span>Any DMCA Takedown&#10;Notices should be sent to&#160;</span><a href=\"mailto:copyright@match.com\"><span>copyright@match.com</span></a><span>, by phone to 214-576-3272 or via mail to the&#10;following address: Copyright Compliance Department c/o Match Group Legal, 8750&#10;N. Central Expressway, Dallas, Texas 75231.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>PeopleMedia will&#10;terminate the accounts of repeat infringers.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>13. ADS AND&#10;THIRD-PARTY CONTENT</span></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>Like many&#10;subscription-based services, there are ads on our websites.</span></i></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><span>Our Services may&#10;contain advertisements and promotions offered by third parties and links to&#10;other websites or resources.</span><b><span>MEDIA COMPANY </span></b><span>may also provide non-commercial links or references to third&#10;parties within its content.</span><b><span>MEDIA COMPANY </span></b><span>is not responsible for the availability (or lack of&#10;availability) of any external websites or resources or their content.&#10;Furthermore, </span><b><span>MEDIA COMPANY</span></b><span> is not responsible for, and does not endorse, any products or&#10;services that may be offered by third-party websites or resources. If you&#10;choose to interact with the third parties made available through our Services,&#10;such party\'s terms will govern their relationship with you.</span><b><span>MEDIA&#10;COMPANY </span></b><span>is not responsible or&#10;liable for such third parties\' terms or actions.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>14. LIMITATION OF&#10;LIABILITY.</span></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>MEDIA COMPANY </span></b><b><i><span>liability is limited to the maximum extent by applicable law.</span></i></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><span>TO THE FULLEST EXTENT&#10;PERMITTED BY APPLICABLE LAW, IN NO EVENT WILL PEOPLEMEDIA, ITS AFFILIATES,&#10;EMPLOYEES, LICENSORS, OR SERVICE PROVIDERS BE LIABLE FOR ANY INDIRECT,&#10;CONSEQUENTIAL, EXEMPLARY, INCIDENTAL, SPECIAL OR PUNITIVE DAMAGES, INCLUDING,&#10;WITHOUT LIMITATION, LOSS OF PROFITS, WHETHER INCURRED DIRECTLY OR INDIRECTLY,&#10;OR ANY LOSS OF DATA, USE, GOODWILL, OR OTHER INTANGIBLE LOSSES, RESULTING FROM:&#10;(I) YOUR ACCESS TO OR USE OF OR INABILITY TO ACCESS OR USE THE SERVICES, (II) THE&#10;CONDUCT OR CONTENT OF OTHER USERS OR THIRD PARTIES ON, THROUGH, OR FOLLOWING&#10;USE OF THE SERVICES; OR (III) UNAUTHORIZED ACCESS, USE, OR ALTERATION OF YOUR&#10;CONTENT, EVEN IF PEOPLEMEDIA HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH&#10;DAMAGES. IN NO EVENT WILL PEOPLEMEDIA\'S AGGREGATE LIABILITY TO YOU FOR ALL&#10;CLAIMS RELATING TO THE SERVICES EXCEED THE AMOUNT PAID, IF ANY, BY YOU TO&#10;PEOPLEMEDIA FOR THE SERVICES WHILE YOU HAVE AN ACCOUNT.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>THE LIMITATION OF&#10;LIABILITY PROVISIONS SET FORTH IN THIS SECTION 14 SHALL APPLY EVEN IF YOUR&#10;REMEDIES UNDER THIS AGREEMENT FAIL WITH RESPECT TO THEIR ESSENTIAL PURPOSE.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>SOME JURISDICTIONS DO&#10;NOT ALLOW THE EXCLUSION OR LIMITATION OF CERTAIN DAMAGES, SO SOME OR ALL OF THE&#10;EXCLUSIONS AND LIMITATIONS IN THIS SECTION MAY NOT APPLY TO YOU.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>15. DISPUTE RESOLUTION</span></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>In the unlikely event&#10;that we have a legal dispute, here is what you need to know.</span></i></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><span>If you are&#10;dissatisfied with our Services for any reason, please contact </span><b><span>MEDIA&#10;COMPANY </span></b><span>Customer Service first&#10;so that we can try to resolve your concerns without the need of outside&#10;assistance. If you choose to pursue a claim against </span><b><span>MEDIA COMPANY</span></b><span>, these terms will apply.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>15a. ARBITRATION,&#10;CLASS-ACTION WAIVER, AND JURY WAIVER</span></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>If you pursue a legal&#10;claim against </span></i></b><b><span>MEDIA COMPANY </span></b><b><i><span>you agree to arbitration (with limited&#10;exceptions).</span></i></b><span></span></p>&#10;&#10;<ol start=\"1\" type=\"1\">&#10; <li class=\"MsoNormal\"><span>The exclusive means of&#10;     resolving any dispute or claim arising out of or relating to this&#10;     Agreement (including any alleged breach thereof) or our Services shall be&#10;     BINDING ARBITRATION administered by JAMS under the JAMS Streamlined&#10;     Arbitration Rules &amp; Procedures, except as modified by our&#160;</span><span><a href=\"https://www.blackpeoplemeet.com/v3/termsandconditionspopup#arbitrationProcedures\"><span>Arbitration&#10;     Procedures</span></a></span><span>. The one&#10;     exception to the exclusivity of arbitration is that either party has the&#10;     right to bring an individual claim against the other in a small-claims&#10;     court of competent jurisdiction, or, if filed in arbitration, the&#10;     responding party may request that the dispute proceed in small claims&#10;     court if the party\'s claim is within the jurisdiction of the small claims&#10;     court. If the responding party requests to proceed in small claims court&#10;     before the appointment of the arbitrator, the arbitration shall be&#10;     administratively closed, and if requested after the appointment of the&#10;     arbitrator, the arbitrator shall determine if the dispute should be&#10;     decided in arbitration or if the arbitration should be administratively&#10;     closed and decided in small claims court. Whether you choose arbitration&#10;     or small-claims court, you may not under any circumstances commence or&#10;     maintain against the Company any class action, class arbitration, or other&#10;     representative action or proceeding.</span></li>&#10; <li class=\"MsoNormal\"><span>By using our Services in any&#10;     manner, you agree to the above arbitration agreement. In doing so, YOU&#10;     GIVE UP YOUR RIGHT TO GO TO COURT to assert or defend any claims between&#10;     you and the Company (except for matters that may be taken to small-claims&#10;     court). YOU ALSO GIVE UP YOUR RIGHT TO PARTICIPATE IN A CLASS ACTION OR&#10;     OTHER CLASS PROCEEDING. Your rights will be determined by a NEUTRAL&#10;     ARBITRATOR, NOT A JUDGE OR JURY, and the arbitrator shall determine all&#10;     issues regarding the arbitrability of the dispute. You are entitled to a&#10;     fair hearing before the arbitrator. The arbitrator can grant any relief&#10;     that a court can, but you should note that arbitration proceedings are&#10;     usually simpler and more streamlined than trials and other judicial&#10;     proceedings. Decisions by the arbitrator are enforceable in court and may&#10;     be overturned by a court only for very limited reasons. For details on the&#10;     arbitration process, see our&#160;</span><span><a href=\"https://www.blackpeoplemeet.com/v3/termsandconditionspopup#arbitrationProcedures\"><span>Arbitration&#10;     Procedures</span></a></span><span>.</span></li>&#10; <li class=\"MsoNormal\"><span>Any proceeding to enforce this&#10;     arbitration agreement, including any proceeding to confirm, modify, or&#10;     vacate an arbitration award, may be commenced in any court of competent&#10;     jurisdiction. In the event that this arbitration agreement is for any&#10;     reason held to be unenforceable, any litigation against the Company&#10;     (except for small-claims court actions) may be commenced only in the&#10;     federal or state courts located in Dallas County, Texas. You hereby&#10;     irrevocably consent to the jurisdiction of those courts for such purposes.</span></li>&#10;</ol>&#10;&#10;<p class=\"MsoNormal\"><b><span>15b. GOVERNING LAW</span></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>Texas law and the&#10;Federal Arbitration Act will apply if there is a dispute (except where&#10;prohibited by law).</span></i></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><span>Except where our&#10;arbitration agreement is prohibited by law, the laws of Texas, U.S.A.,&#10;excluding Texas\'s conflict of laws rules, will apply to any disputes arising&#10;out of or relating to this Agreement or our Services. Notwithstanding the&#10;foregoing, the Arbitration Agreement in Section 15a above shall be governed by&#10;the Federal Arbitration Act. For the avoidance of doubt, the choice of Texas&#10;governing law shall not supersede any mandatory consumer protection legislation&#10;in such jurisdictions.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>15c. VENUE</span></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>Any claims that are&#10;not submitted to arbitration for any reason must be litigated in Dallas County,&#10;Texas (except for claims brought in small claims court, or where prohibited by&#10;law).</span></i></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><span>Except for claims that&#10;may be properly brought in a small claims court of competent jurisdiction in&#10;the county or other jurisdiction in which you reside or in Dallas County,&#10;Texas, all claims arising out of or relating to this Agreement, to our&#10;Services, or to your relationship with </span><b><span>MEDIA COMPANY </span></b><span>that for whatever reason are not submitted to&#10;arbitration will be litigated exclusively in the federal or state courts of&#10;Dallas County, Texas, U.S.A. You and </span><b><span>MEDIA COMPANY</span></b><span> consent to the exercise of personal&#10;jurisdiction of courts in the State of Texas and waive any claim that such&#10;courts constitute an inconvenient forum.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>16. INDEMNITY BY YOU</span></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>You agree to indemnify&#10;</span></i></b><b><span>MEDIA COMPANY</span></b><b><i><span> if a claim is made against </span></i></b><b><span>MEDIA COMPANY</span></b><b><i><span> due to your actions.</span></i></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><span>You agree, to the&#10;extent permitted under applicable law, to indemnify, defend, and hold harmless </span><b><span>MEDIA&#10;COMPANY</span></b><span>, our affiliates, and&#10;their and our respective officers, directors, agents, and employees from and&#10;against any and all complaints, demands, claims, damages, losses, costs,&#10;liabilities, and expenses, including attorney\'s fees, due to, arising out of,&#10;or relating in any way to your access to or use of our Services, Your Content,&#10;Your conduct toward other users, or your breach of this Agreement.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>17. ACCEPTANCE OF&#10;TERMS</span></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>By using our Services,&#10;you accept the Terms of this Agreement.</span></i></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><span>By using our Services,&#10;whether through a mobile device, mobile application, or computer, you agree to&#10;be bound by (i) these Terms, which we may amend from time to time, (ii)&#10;our&#160;</span><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy\" target=\"_blank\"><span>Privacy Policy</span></a><span>&#160;and&#160;</span><a href=\"https://www.blackpeoplemeet.com/v3/cookiepolicy\" target=\"_blank\"><span>Cookie&#10;Policy</span></a><span>, (iii) the&#160;</span><a href=\"https://www.blackpeoplemeet.com/v3/guidelines\" target=\"_blank\"><span>Community&#10;Guidelines</span></a><span>, and (iv) any&#10;Additional Terms Upon Purchase. If you do not accept and agree to be bound by&#10;all of the terms of this Agreement, please do not use our Services.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>The section headings&#10;and summaries contained herein are inserted for convenience only and shall not&#10;be considered in interpreting any term or provision hereof. All pronouns and&#10;any variations thereof shall be deemed to refer to the masculine, feminine,&#10;neuter, singular or plural as the identity of the entities or persons referred&#10;to any require. Any word both capitalized and uncapitalized will be deemed to&#10;have the same meaning.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>18. ENTIRE AGREEMENT</span></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>This Agreement&#10;supersedes any previous agreements or representations.</span></i></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><span>These Terms, with&#10;the&#160;</span><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy\" target=\"_blank\"><span>Privacy Policy</span></a><span>,&#160;</span><a href=\"https://www.blackpeoplemeet.com/v3/cookiepolicy\" target=\"_blank\"><span>Cookie&#10;Policy</span></a><span>,&#160;</span><a href=\"https://www.blackpeoplemeet.com/v3/guidelines\" target=\"_blank\"><span>Community&#10;Guidelines</span></a><span>, and any Additional&#10;Terms Upon Purchase, contain the entire agreement between you and </span><b><span>MEDIA&#10;COMPANY </span></b><span>regarding the use of&#10;our Services. The Terms supersede all previous agreements, representations, and&#10;arrangements between us, written or oral. If any provision of these Terms is&#10;held invalid, illegal, or otherwise unenforceable, the remainder of the Terms&#10;shall continue in full force and effect. The failure of the Company to exercise&#10;or enforce any right or provision of these Terms shall not constitute a waiver&#10;of such right or provision. You agree that your </span><b><span>MEDIA COMPANY </span></b><span>account is non-transferable and all of your&#10;rights to your account and its content terminate upon your death, unless&#10;otherwise provided by law. Any rights and licenses granted hereunder, may not&#10;be transferred or assigned by you, but may be assigned by us without&#10;restriction. No agency, partnership, joint venture, fiduciary or other special&#10;relationship or employment is created as a result of these Terms, and you may&#10;not make any representations on behalf of or bind </span><b><span>MEDIA COMPANY </span></b><span>in any manner.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>19. SPECIAL STATE&#10;TERMS</span></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>Special terms apply in&#10;Arizona, California, Connecticut, Illinois, Iowa, Minnesota, New York, North&#10;Carolina, Ohio, Rhode Island, Wisconsin</span></i></b><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><u><span>For subscribers&#10;residing in New York:</span></u><span></span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><span>The Services do not guarantee&#10;     any number of &#34;referrals&#34;&#8212;rather, the functionality of the&#10;     Services is such that the subscriber can view as many profiles as he/she&#10;     would like;</span></li>&#10; <li class=\"MsoNormal\"><span>Upon notice in writing and&#10;     delivered to </span><b><span>MEDIA COMPANY legal group name and address</span></b><span>, USA, subscribers may place their subscription on hold&#10;     for up to one year;</span></li>&#10; <li class=\"MsoNormal\"><span>How your information is used&#10;     and how you may access your information is set forth in our&#160;</span><span><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy\" target=\"_blank\"><span>Privacy&#10;     Policy</span></a></span><span>;</span></li>&#10; <li class=\"MsoNormal\"><span>You may review the New York&#10;     Dating Service Consumer Bill of Rights&#160;</span><span><a href=\"https://www.nysenate.gov/legislation/laws/GBS/394-C\" target=\"_blank\"><span>here</span></a></span><span>;</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><u><span>For subscribers&#10;residing in North Carolina:</span></u><span></span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><span>You may review the North&#10;     Carolina Buyer\'s Rights&#160;</span><span><a href=\"https://www.ncleg.gov/EnactedLegislation/Statutes/PDF/BySection/Chapter_66/GS_66-120.pdf\" target=\"_blank\"><span>here</span></a></span><span>.</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><u><span>For subscribers&#10;residing in Illinois, New York, North Carolina, and Ohio :</span></u><span></span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><span>Our Services are widely&#10;     available in the United States-if you believe that you have moved outside&#10;     a location where we provide the Services, please contact us in writing&#10;     delivered to </span><b><span>TSA Legal, P.O. Box 251111DDF2, HOUSTON,&#10;     Texas 70255,</span></b><span>USA, and we will work with you&#10;     to provide alternative services or a refund.</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><u><span>For subscribers&#10;residing in Arizona, California, Connecticut, Illinois, Iowa, Minnesota, New&#10;York, North Carolina, Ohio, Rhode Island, and Wisconsin:</span></u><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>Your Right to&#10;Cancel-You may cancel your subscription, without penalty or obligation, at any&#10;time prior to midnight of the third business day following the date you&#10;subscribed.</span></b><span>&#160;In the event&#10;that you die before the end of your subscription period, your estate shall be&#10;entitled to a refund of that portion of any payment you had made for your&#10;subscription which is allocable to the period after your death. In the event&#10;that you become disabled (such that you are unable to use our Services) before&#10;the end of your subscription period, you shall be entitled to a refund of that&#10;portion of any payment you had made for your subscription which is allocable to&#10;the period after your disability by providing the company notice in the same&#10;manner as you request a refund as described above in Section 8.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>ARBITRATION PROCEDURES</span></p>&#10;&#10;<ol start=\"1\" type=\"1\">&#10; <li class=\"MsoNormal\"><u><span>Overview</span></u><span>. Arbitration is an alternative to litigation where a&#10;     neutral person (the arbitrator) hears and decides the parties\' dispute.&#10;     Arbitration proceedings are designed to provide parties with a fair&#10;     hearing in a manner that is faster and less formal than court proceedings.&#10;     The following procedures (the &#34;Arbitration Procedures&#34;) are&#10;     applicable to all arbitration proceedings involving you and </span><b><span>MEDIA COMPANY</span></b><span></span></li>&#10; <li class=\"MsoNormal\"><u><span>Pre-Arbitration&#10;     Dispute Resolution</span></u><span>.&#10;     </span><b><span>MEDIA&#10;     COMPANY </span></b><span>is always&#10;     interested in resolving disputes amicably and efficiently. So before you&#10;     commence an arbitration, we suggest that you contact us to explain your&#10;     complaint, as we may be able to resolve it without the need for&#10;     arbitration. You may contact us online or at </span><span>&#160;Legal, Address&#10;     here.</span></li>&#10; <li class=\"MsoNormal\"><u><span>Administrator</span></u><span>. The administrator for the arbitration is JAMS, an&#10;     organization that is not affiliated with PeopleMedia. JAMS facilitates,&#10;     but does not itself conduct, the arbitration. The arbitrator who will hear&#10;     and decide your dispute will be chosen from JAMS\'s roster of neutral&#10;     arbitrators. For information on JAMS, please visit its website,&#160;</span><span><a href=\"https://www.jamsadr.com/\" target=\"_blank\"><span>https://www.jamsadr.com/</span></a></span><span>. Information about JAMS\'s rules and fees for resolving&#10;     disputes can be found at JAMS\'s Streamlined Arbitration Rules &amp;&#10;     Procedures page,&#160;</span><span><a href=\"https://www.jamsadr.com/rules-streamlined-arbitration/\" target=\"_blank\"><span>https://www.jamsadr.com/rules-streamlined-arbitration/</span></a></span><span>.</span></li>&#10; <li class=\"MsoNormal\"><u><span>Applicable Rules</span></u><span>. The arbitration will be governed by JAMS\'s&#10;     Streamlined Arbitration Rules &amp; Procedures (the &#34;JAMS&#10;     Rules&#34;), as modified by these Arbitration Procedures. If there is any&#10;     inconsistency between the JAMS Rules and these Arbitration Procedures, the&#10;     Arbitration Procedures will control. However, if the arbitrator determines&#10;     that strict application of the Arbitration Procedures would not result in&#10;     a fundamentally fair arbitration, the arbitrator may make any order&#10;     necessary to provide a fundamentally fair arbitration that is consistent&#10;     with the JAMS Rules.</span></li>&#10; <li class=\"MsoNormal\"><u><span>Commencing an Arbitration</span></u><span>. To commence an arbitration against PeopleMedia, you&#10;     must complete a short form, submit it to JAMS, and send a copy to&#10;     PeopleMedia at Match Legal, PO Box 25458, Dallas, TX 75225. To learn more&#10;     about commencing an arbitration and to obtain a form to institute&#10;     arbitration, please visit the JAMS website and download the form available&#10;     at:&#160;</span><span><a href=\"https://www.jamsadr.com/files/Uploads/Documents/JAMS_Arbitration_Demand.pdf\" target=\"_blank\"><span>https://www.jamsadr.com/files/Uploads/Documents/JAMS_Arbitration_Demand.pdf</span></a></span><span>. You may represent yourself in the arbitration or have&#10;     a lawyer (or some other representative) act on your behalf. Upon receipt&#10;     of an arbitration claim, PeopleMedia may assert any counterclaims it may&#10;     have against the complaining party.</span></li>&#10; <li class=\"MsoNormal\"><u><span>Fees</span></u><span>. You are responsible for paying your portion of the&#10;     fees set forth in the JAMS fee schedule for consumer disputes. </span><b><span>MEDIA COMPANY </span></b><span>will&#10;     pay all remaining fees. If your claim against </span><b><span>MEDIA COMPANY</span></b><span> is for less than $1,000, and you succeed on the&#10;     merits, we will pay all fees. If you believe you cannot afford the JAMS&#10;     fee, you may apply to JAMS for a fee waiver.</span></li>&#10; <li class=\"MsoNormal\"><u><span>Discovery</span></u><span>. Each party may (a) request relevant, non-privileged&#10;     documents from the other party; and (b) request that the other party&#10;     provide the particulars of its claims or defenses. Any such discovery&#10;     requests must be served on the other party within 21 days after the&#10;     arbitrator\'s appointment. The responding party shall provide the&#10;     requesting party with all responsive, non-privileged documents, the&#10;     requested particulars, and/or any objections to the requests within 15&#10;     days after receipt of the requests. Any disputes about discovery or&#10;     requests for extensions shall be submitted promptly to the arbitrator for&#10;     prompt resolution. In ruling on any discovery dispute or extension&#10;     request, the arbitrator shall take into consideration the nature, amount,&#10;     and scope of the underlying arbitration claim, the cost and other effort&#10;     what would be involved in providing the requested discovery, the case&#10;     schedule, and whether the requested discovery is necessary for the&#10;     adequate preparation of a claim or defense.</span></li>&#10; <li class=\"MsoNormal\"><u><span>Communications with the&#10;     Arbitrator</span></u><span>. Whenever communicating with&#10;     the arbitrator, the parties must include each other &#8211; for example, by&#10;     including the other party on a telephone conference call and copying the&#10;     other party on any written submissions, such as letters or emails. To the&#10;     extent practicable, conferences with the arbitrator will take place by&#10;     telephone conference call or email. Ex parte communications are not&#10;     permitted with any arbitrator.</span></li>&#10; <li class=\"MsoNormal\"><u><span>Confidentiality</span></u><span>. Upon either party\'s request, the arbitrator will&#10;     issue an order requiring that confidential information of either party&#10;     disclosed during the arbitration (whether in documents or orally) may not&#10;     be used or disclosed except in connection with the arbitration or a&#10;     proceeding to enforce the arbitration award and that any permitted filing&#10;     of confidential information must be done under seal.</span></li>&#10; <li class=\"MsoNormal\"><u><span>Arbitration Hearing</span></u><span>. The Parties agree to waive an oral Hearing and submit&#10;     the dispute to the Arbitrator for an Award based on written submissions&#10;     and other evidence as the Parties may agree, unless a party requests an&#10;     oral Hearing in writing within 10 days after the arbitrator\'s appointment.</span></li>&#10; <li class=\"MsoNormal\"><u><span>Arbitration Award</span></u><span>. The arbitrator will render a written decision within&#10;     30 days after the hearing or, if no hearing was held, within 14 days after&#10;     any rebuttal or supplemental statements are due. The decision must clearly&#10;     specify the relief, if any, awarded and contain a brief statement of the&#10;     reasons for the award.</span></li>&#10;</ol>&#10;&#10;<p class=\"MsoNormal\"><span>&#160;</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>Click&#160;</span><a href=\"https://www.blackpeoplemeet.com/v3/termsandconditions/archive\"><span>here</span></a><span>&#160;to view previous Terms and Conditions.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>&#160;</span></p>&#10;&#10;<h3><span>&#160;</span><u><span>Dating&#10;Safety Tips</span></u></h3>&#10;&#10;<p class=\"MsoNormal\"><span>Meeting new people is exciting, but you should always be&#10;cautious when interacting with someone you don&#8217;t know. Use your best judgment&#10;and put your safety first, whether you are exchanging initial messages or&#10;meeting in person. While you can&#8217;t control the actions of others, there are&#10;things you can do to help you stay safe during you&#8217;re the Single App experience.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><u><span>Online Safety</span></u></b></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><b><span>Never Send Money or Share Financial Information</span></b><span><br>&#10;     Never send money, especially over wire transfer, even if the person claims&#10;     to be in an emergency. Wiring money is like sending cash &#8212; it&#8217;s nearly&#10;     impossible to reverse the transaction or trace where the money went. Never&#10;     share information that could be used to access your financial accounts. If&#10;     another user asks you for money, report it to us immediately.<br>&#10;     <br>&#10;     For tips on avoiding romance scams, check out some advice from the U.S&#10;     Federal Trade Commission&#160;</span><span><a href=\"https://www.consumer.ftc.gov/articles/0004-online-dating-scams\"><span>on the FTC website</span></a></span><span>&#160;or in the video below.</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\" align=\"center\"><a href=\"https://www.consumer.ftc.gov/articles/0004-online-dating-scams\"><span>https://www.consumer.ftc.gov/articles/0004-online-dating-scams</span></a><span><br>&#10;<br>&#10;<br>&#10;</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><b><span>Protect Your Personal Information</span></b><span><br>&#10;     Never share personal information, such as your social security number,&#10;     home or work address, or details about your daily routine (e.g., that you&#10;     go to a certain gym every Monday) with people you don&#8217;t know. If you are a&#10;     parent, limit the information that you share about your children on your&#10;     profile and in early communications. Avoid sharing details such as your&#10;     children&#8217;s names, where they go to school, or their ages or genders</span></li>&#10; <li class=\"MsoNormal\"><b><span>Stay on the Platform</span></b><span><br>&#10;     Keep conversations on theThe Single App platform while you&#8217;re getting to&#10;     know someone. Users with bad intentions often try to move the conversation&#10;     to text, messaging apps, email, or phone right away.</span></li>&#10; <li class=\"MsoNormal\"><b><span>Be Wary of Long Distance and Overseas Relationships</span></b><span><br>&#10;     Watch out for scammers who claim to be from your country but stuck&#10;     somewhere else, especially if they ask for financial help to return home.&#10;     Be wary of anyone who will not meet in person or talk on a phone/video&#10;     call&#8212;they may not be who they say they are. If someone is avoiding your&#10;     questions or pushing for a serious relationship without meeting or getting&#10;     to know you first &#8212; that&#8217;s a red flag.</span></li>&#10; <li class=\"MsoNormal\"><b><span>Report All Suspicious and Offensive Behavior</span></b><span><br>&#10;     You know when someone&#8217;s crossed the line and when they do, we want to know&#10;     about it. Block and report anyone that violates our terms. Here are some&#10;     examples of violations:</span></li>&#10; <ul type=\"circle\">&#10;  <li class=\"MsoNormal\"><span>Requests for money or donations</span></li>&#10;  <li class=\"MsoNormal\"><span>Underage users</span></li>&#10;  <li class=\"MsoNormal\"><span>Harassment, threats, and offensive messages</span></li>&#10;  <li class=\"MsoNormal\"><span>Inappropriate or harmful behavior during or after&#10;      meeting in person</span></li>&#10;  <li class=\"MsoNormal\"><span>Fraudulent profiles</span></li>&#10;  <li class=\"MsoNormal\"><span>Spam or solicitation including links to commercial&#10;      websites or attempts to sell products or services</span></li>&#10; </ul>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>You can report any concerns about suspicious behavior from any&#10;profile page or messaging window or&#160;</span><a href=\"https://www.blackpeoplemeet.com/v3/help\"><b><span>here</span></b></a><span>.&#10;For more information, check out our&#160;</span><a href=\"https://www.blackpeoplemeet.com/v3/guidelines\"><b><span>Community Guidelines</span></b></a><span>.</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><b><span>Protect Your Account</span></b><span><br>&#10;     Be sure to pick a strong password, and always be careful when logging into&#10;     your account from a public or shared computer. BlackPeopleMeet will never&#10;     send you an email asking for your username and password information &#8212; if&#10;     you receive an email asking for account information, report it&#10;     immediately.</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><b><u><span>Meeting in Person</span></u></b></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><b><span>Don&#8217;t Be In A Rush</span></b><span><br>&#10;     Take your time and get to know the other person before agreeing to meet or&#10;     chat off The Single App. Don&#8217;t be afraid to ask questions to screen for&#10;     any red flags or personal dealbreakers. A phone or video call can be a&#10;     useful screening tool before meeting.</span></li>&#10; <li class=\"MsoNormal\"><b><span>Meet in Public and Stay in Public</span></b><span><br>&#10;     Meet for the first few times in a populated, public place &#8212; never at your&#10;     home, your date&#8217;s home, or any other private location. If your date&#10;     pressures you to go to a private location, end the date.</span></li>&#10; <li class=\"MsoNormal\"><b><span>Tell Friends and Family About Your Plans</span></b><span><br>&#10;     Tell a friend or family member of your plans, including when and where&#10;     you&#8217;re going. Have your cell phone charged and with you at all times.</span></li>&#10; <li class=\"MsoNormal\"><b><span>Be in Control of Your Transportation</span></b><span><br>&#10;     We want you to be in control of how you get to and from your date so that&#10;     you can leave whenever you want. If you&#8217;re driving yourself, it&#8217;s a good&#10;     idea to have a backup plan such as a ride-share app or a friend to pick&#10;     you up.</span></li>&#10; <li class=\"MsoNormal\"><b><span>Know Your Limits</span></b><span><br>&#10;     Be aware of the effects of drugs or alcohol on you specifically &#8212; they can&#10;     impair your judgment and your alertness. If your date tries to pressure&#10;     you to use drugs or drink more than you&#8217;re comfortable with, hold your&#10;     ground and end the date.</span></li>&#10; <li class=\"MsoNormal\"><b><span>Don&#8217;t Leave Drinks or Personal Items Unattended</span></b><span><br>&#10;     Know where your drink comes from and know where it is at all times &#8212; only&#10;     accept drinks poured or served directly from the bartender or server. Many&#10;     substances that are slipped into drinks to facilitate sexual assault are&#10;     odorless, colorless, and tasteless. Also, keep your phone, purse, wallet,&#10;     and anything containing personal information on you at all times.</span></li>&#10; <li class=\"MsoNormal\"><b><span>If You Feel Uncomfortable, Leave</span></b><span><br>&#10;     It&#8217;s okay to end the date early if you&#8217;re feeling uncomfortable. In fact,&#10;     it&#8217;s encouraged. And if your instincts are telling you something is off or&#10;     you feel unsafe, ask the bartender or server for help.</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><b><u><span>Sexual Health &amp; Consent</span></u></b></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><b><span>Protect Yourself</span></b><span><br>&#10;     When used correctly and consistently, condoms can significantly reduce the&#10;     risk of contracting and passing on STI&#8217;s like HIV. But, be aware of STIs&#10;     like herpes or HPV that can be passed on through skin-to-skin contact. The&#10;     risk of contracting some STIs can be reduced through&#160;</span><span><a href=\"http://www.ashasexualhealth.org/stdsstis/vaccines/\"><span>vaccination</span></a></span><span>.</span></li>&#10; <li class=\"MsoNormal\"><b><span>Know Your Status</span></b><span><br>&#10;     Not all STIs show symptoms, and you don&#8217;t want to be in the dark about&#10;     your status. Stay on top of your health and prevent the spread of STIs by&#10;     getting tested regularly. Here&#8217;s where you can&#160;</span><span><a href=\"https://gettested.cdc.gov/\"><span>find a clinic near you</span></a></span><span>&#160;(US only).</span></li>&#10; <li class=\"MsoNormal\"><b><span>Talk About It</span></b><span><br>&#10;     Communication is everything: Before you get physically intimate with a&#10;     partner, talk about sexual health and STI testing. And be aware &#8212; in some&#10;     places, it&#8217;s actually a crime to knowingly pass on an STI. Need help&#10;     starting the conversation?&#160;</span><span><a href=\"https://www.plannedparenthood.org/learn/stds-hiv-safer-sex/get-tested/how-do-i-talk-my-partner-about-std-testing\"><span>Here are some tips</span></a></span><span>.</span></li>&#10; <li class=\"MsoNormal\"><b><span>Consent</span></b><span><br>&#10;     All sexual activity must start with consent and should include ongoing&#10;     check-ins with your partner. Verbal communication can help you and your&#10;     partner ensure that you respect each other&#8217;s boundaries. Consent can be&#10;     withdrawn at any time, and sex is never owed to anyone. Do not proceed if&#10;     your partner seems uncomfortable or unsure, or if your partner is unable&#10;     to consent due to the effects of drugs or alcohol. Read more about&#10;     it&#160;</span><span><a href=\"https://www.rainn.org/articles/what-is-consent\"><span>here</span></a></span><span>.</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><b><u><span>Resources for Help, Support, or Advice</span></u></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>Remember &#8212; even if you follow these tips, no method of risk&#10;reduction is perfect. If you have a negative experience, please know that it is&#10;not your fault and help is available. Report any incidents&#160;</span><a href=\"https://www.blackpeoplemeet.com/v3/help\"><b><span>here</span></b></a><span>,&#10;and consider reaching out to one of the resources below.&#160;<b>If you feel&#10;you are in immediate danger or need emergency assistance, call 911 (U.S. or&#10;Canada) or your local law enforcement agency.</b></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>RAINN&#8217;s National Sexual Assault Hotline</span></b><span><br>&#10;1-800-656-HOPE (4673) |&#160;</span><a href=\"https://hotline.rainn.org/online\"><span>online.rainn.org</span></a><span>&#160;|&#160;</span><a href=\"https://www.rainn.org/\"><span>www.rainn.org</span></a><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>Planned Parenthood</span></b><span><br>&#10;1-800-230-7526 |&#160;</span><a href=\"https://www.plannedparenthood.org/\"><span>www.plannedparenthood.org</span></a><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>National Domestic Violence Hotline</span></b><span><br>&#10;1-800-799-SAFE (7233) or 1-800-787-3224 |&#160;</span><a href=\"https://www.thehotline.org/\"><span>www.thehotline.org</span></a><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>National Human Trafficking Hotline</span></b><span><br>&#10;1-888-272-7888 or text 233733 |&#160;</span><a href=\"https://humantraffickinghotline.org/\"><span>www.humantraffickinghotline.org</span></a><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>National Sexual Violence Resource Center</span></b><span><br>&#10;1-877-739-3895 |&#160;</span><a href=\"https://www.nsvrc.org/\"><span>www.nsvrc.org</span></a><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>National Center for Missing &amp; Exploited Children</span></b><span><br>&#10;1-800-THE-LOST (843-5678) |&#160;</span><a href=\"https://www.missingkids.org/gethelpnow/cybertipline\"><span>www.cybertipline.com</span></a><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>Cyber Civil Rights Initiative</span></b><span><br>&#10;1-844-878-2274 |&#160;</span><a href=\"https://www.cybercivilrights.org/\"><span>www.cybercivilrights.org</span></a><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>VictimConnect - Crime Victim Resource Center</span></b><span><br>&#10;1-855-4VICTIM (855-484-2856) |&#160;</span><a href=\"https://victimconnect.org/\"><span>www.victimconnect.org</span></a><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>FBI Internet Crime Complaint Center</span></b><span><br>&#10;</span><a href=\"https://www.ic3.gov/default.aspx\"><span>www.ic3.gov</span></a><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>LGBT National Help Center</span></b><span><br>&#10;1-888-843-4564 |&#160;</span><a href=\"http://www.glbtnationalhelpcenter.org/\"><span>www.glbtnationalhelpcenter.org</span></a><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>Trans Lifeline</span></b><span><br>&#10;1-877-565-8860 (US) or 1-877-330-6366 (CA) |&#160;</span><a href=\"https://www.translifeline.org/\"><span>www.translifeline.org</span></a><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><span>If you are outside the US:</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><span><a href=\"https://mtch.com/safety-details-international\"><span>Click here</span></a></span><span>&#160;for additional resources in many of the countries&#10;     where we operate.</span></li>&#10;</ul>', '2023-04-12');
INSERT INTO `extras_termsandconditions` (`id`, `terms`, `date`) VALUES
(2, '<style>\r\n    .titdat {\r\n        display: flex !important;\r\n    }\r\n</style>\r\n<p class=\"MsoNormal\"><span>Welcome to </span><span>TheSingleApp.com&#10;</span><span>Privacy Policy. Thank&#10;you for\r\n    taking the time to read it.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>We appreciate that you&#10;trust us\r\n    with your information and we intend to always keep that trust. This&#10;starts with making sure you understand\r\n    the information we collect, why we&#10;collect it, how it is used and your choices regarding your information.\r\n    This&#10;Policy describes our privacy practices in plain language, keeping legal and&#10;technical jargon to a\r\n    minimum.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>This Privacy Policy&#10;applies beginning May 25, 2018.\r\n    The previous version of this Privacy Policy,&#10;available&#160;</span><a\r\n    href=\"https://www.blackpeoplemeet.com/v3/privacypolicy/archive/20161116\"><span>here</span></a><span>, will apply\r\n    until then.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>EFFECTIVE DATE: May&#10;25, 2018</span></p>&#10;&#10;\r\n   <div>\r\n    <div class=\"titdat\" >\r\n        <p class=\"Mssingleapp-terms/id2.htmloNormal\"  ><span>1.</span></p>&#10;&#10;<p class=\"MsoNormal\"><a\r\n            href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#WhoWeAre\"><span>WHO WE ARE</span></a><span></span></p>\r\n    &#10;&#10;\r\n    </div>\r\n    &#10;&#10;\r\n    <div class=\"titdat\" >\r\n        <p class=\"MsoNormal\"  ><span>2.</span></p>\r\n        <p class=\"MsoNormal\"><a\r\n            href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#WhereThisPrivacyPolicyApplies\"><span>WHERE THIS PRIVACY\r\n                POLICY APPLIES</span></a><span></span></p>&#10;&#10;\r\n    </div>\r\n&#10;&#10;\r\n    <div class=\"titdat\">\r\n        <p class=\"MsoNormal\"  ><span>3.</span></p>\r\n        <p class=\"MsoNormal\"><a\r\n            href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#InformationWeCollect\"><span>INFORMATION WE\r\n                COLLECT</span></a><span></span></p>&#10;&#10;\r\n    </div>\r\n&#10;&#10;\r\n    <div class=\"titdat\">\r\n        <p class=\"MsoNormal\"  ><span>4.</span></p>\r\n        <p class=\"MsoNormal\"><a\r\n            href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#CookiesAndOtherSimilarDataCollectionTechnologies\"><span>COOKIES\r\n                AND OTHER SIMILAR DATA COLLECTION&#10;TECHNOLOGIES</span></a><span></span></p>&#10;&#10;\r\n    </div>&#10;&#10;\r\n    <div class=\"titdat\">\r\n        <p class=\"MsoNormal\"><span>5.</span></p>\r\n        <p class=\"MsoNormal\"><a\r\n            href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#HowWeUseInformation\"><span>HOW WE USE\r\n                INFORMATION</span></a><span></span></p>&#10;&#10;\r\n    </div>\r\n&#10;&#10;\r\n    <div class=\"titdat\">\r\n        <p class=\"MsoNormal\"  ><span>6.</span></p>\r\n        <p class=\"MsoNormal\"><a\r\n            href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#HowWeShareInformation\"><span>HOW WE SHARE\r\n                INFORMATION</span></a><span></span></p>&#10;&#10;\r\n    </div>\r\n&#10;&#10;\r\n    <div class=\"titdat\">\r\n        <p class=\"MsoNormal\"  ><span>7.</span></p>\r\n        <p class=\"MsoNormal\"><a\r\n            href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#CrossBorderDataTransfers\"><span>CROSS-BORDER DATA\r\n                TRANSFERS</span></a><span></span></p>&#10;&#10;\r\n    </div>\r\n&#10;&#10;\r\n    <div class=\"titdat\">\r\n        <p class=\"MsoNormal\"  ><span>8.</span></p>\r\n        <p class=\"MsoNormal\"><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#YourRights\"><span>YOUR\r\n            RIGHTS</span></a><span></span></p>&#10;&#10;\r\n    </div>        \r\n&#10;&#10;\r\n    <div class=\"titdat\">\r\n        <p class=\"MsoNormal\"  ><span>9.</span></p>\r\n        <p class=\"MsoNormal\"><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#ResidentsOfCalifornia\"><span>RESIDENTS OF\r\n            CALIFORNIA</span></a><span></span></p>&#10;&#10;\r\n    </div>\r\n&#10;&#10;\r\n    <div class=\"titdat\">\r\n        <p class=\"MsoNormal\"  ><span>10.</span></p>\r\n        <p class=\"MsoNormal\"><a\r\n            href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#HowWeProtectYourInformation\"><span>HOW WE PROTECT YOUR\r\n                INFORMATION</span></a><span></span></p>&#10;&#10;\r\n    </div>\r\n&#10;&#10;\r\n    <div class=\"titdat\">\r\n        <p class=\"MsoNormal\"  ><span>11.</span></p>\r\n        <p class=\"MsoNormal\"><a\r\n            href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#HowLongWeRetainYourInformation\"><span>HOW LONG WE RETAIN\r\n                YOUR INFORMATION</span></a><span></span></p>&#10;&#10;\r\n    </div>\r\n&#10;&#10;\r\n    <div class=\"titdat\">\r\n        <p class=\"MsoNormal\"  ><span>12.</span></p>\r\n        <p class=\"MsoNormal\"><a\r\n            href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#ChildrensPrivacy\"><span>CHILDREN\'S\r\n                PRIVACY</span></a><span></span></p>&#10;&#10;\r\n    </div>\r\n&#10;&#10;\r\n    <div class=\"titdat\">\r\n        <p class=\"MsoNormal\"  ><span>13.</span></p>\r\n        <p class=\"MsoNormal\"><a\r\n            href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#PrivacyPolicyChanges\"><span>PRIVACY POLICY\r\n                CHANGES</span></a><span></span></p>&#10;&#10;\r\n    </div>\r\n&#10;&#10;\r\n    <div class=\"titdat\">\r\n        <p class=\"MsoNormal\"  ><span>14.</span></p>\r\n        <p class=\"MsoNormal\"><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#HowToContactUs\"><span>HOW TO\r\n            CONTACT US</span></a><span></span></p>&#10;&#10;\r\n    </div>\r\n   </div>\r\n   <p class=\"MsoNormal\"><b><span>1.WHO WE ARE</span></b></p>\r\n&#10;&#10;<p class=\"MsoNormal\"><span>If you live in the&#10;United States or Canada, the company that is responsible for\r\n    your information&#10;under this Privacy Policy (the &#34;data controller&#34;) is:</span></p>&#10;&#10;<p\r\nclass=\"MsoNormal\"><b><span>Media company name and address here.&#160;&#10;</span></b></p>&#10;&#10;<p\r\nclass=\"MsoNormal\"><b><span>2.WHERE THIS PRIVACY POLICY APPLIES</span></b></p>&#10;&#10;<p class=\"MsoNormal\">\r\n<span>This Privacy Policy&#10;applies to websites, apps, events and other services operated by\r\n</span><span>TheSingleApp.com&#10;</span><span>For simplicity, we&#10;refer to all of these as our\r\n    &#34;services&#34; in this Privacy Policy. To&#10;make it extra clear, we\'ve added links to this Privacy Policy\r\n    on all applicable&#10;services.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>Some services may&#10;require\r\n    their own unique privacy policy. If a particular service has its own&#10;privacy policy, then that policy -- not\r\n    this Privacy Policy -- applies.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>3.INFORMATION WE\r\n        COLLECT</span></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>It goes without&#10;saying, we can\'t help you\r\n    develop meaningful connections without some&#10;information about you, such as basic profile details and the\r\n    types of people&#10;you\'d like to meet. We also collect information generated as you use our&#10;services, for\r\n    example access logs, as well as information from third parties,&#10;like when you access our services through a\r\n    social media account. If you want&#10;additional info, we go into more detail below.</span></p>&#10;&#10;<p\r\nclass=\"MsoNormal\"><b><i><span>Information you give us</span></i></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>You\r\n    choose to give us&#10;certain information when using our services. This includes:</span></p>&#10;&#10;<ul\r\ntype=\"disc\">&#10; <li class=\"MsoNormal\"><span>When you create an account, you&#10; provide us with at least your\r\n        login credentials, as well as some basic&#10; details necessary for the service to work, such as your gender\r\n        and date of&#10; birth.</span></li>&#10; <li class=\"MsoNormal\"><span>When you complete your profile,&#10;\r\n        you can share with us additional information, such as details on your&#10; personality, lifestyle, interests\r\n        and other details about you, as well as&#10; content such as photos and videos. To add certain content, like\r\n        pictures&#10; or videos, you may allow us to access your camera or photo album. Some of&#10; the information\r\n        you choose to provide us may be considered&#10; &#34;special&#34; or &#34;sensitive&#34; in certain\r\n        jurisdictions, for&#10; example your racial or ethnic origins, sexual orientation and religious&#10;\r\n        beliefs. By choosing to provide this information, you consent to our&#10; processing of that\r\n        information.</span></li>&#10; <li class=\"MsoNormal\"><span>When you subscribe to a paid&#10; service or make\r\n        a purchase directly from us (rather than through a&#10; platform such as iOS or Android), you provide us or\r\n        our payment service&#10; provider with information, such as your debit or credit card number or&#10; other\r\n        financial information.</span></li>&#10; <li class=\"MsoNormal\"><span>When you participate in surveys&#10; or\r\n        focus groups, you give us your insights into our products and services,&#10; responses to our questions and\r\n        testimonials.</span></li>&#10; <li class=\"MsoNormal\"><span>When you choose to participate&#10; in our\r\n        promotions, events or contests, we collect the information that you&#10; use to register or enter.</span>\r\n</li>&#10; <li class=\"MsoNormal\"><span>If you contact our customer&#10; care team, we collect the information you\r\n        give us during the interaction.&#10; Sometimes, we monitor or record these interactions for training\r\n        purposes&#10; and to ensure a high quality of service.</span></li>&#10; <li class=\"MsoNormal\"><span>If you\r\n        ask us to communicate&#10; with or otherwise process information of other people (for example, if you&#10;\r\n        ask us to send an email on your behalf to one of your friends), we collect&#10; the information about others\r\n        that you give us in order to complete your&#10; request.</span></li>&#10; <li class=\"MsoNormal\"><span>Of\r\n        course, we also process your&#10; chats with other users as well as the content you publish, as part of\r\n        the&#10; operation of the services.</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\">\r\n<b><i><span>Information we receive from others</span></i></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>In addition to\r\n    the&#10;information you provide us directly, we receive information about you from&#10;others, including:</span>\r\n</p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><b><span>Other&#10; Users</span></b></li>&#10;</ul>&#10;&#10;\r\n<p class=\"MsoNormal\"><span>Other users may provide information about you as they use our&#10;services. For instance, we\r\n    may collect information about you from other users&#10;if they contact us about you.</span></p>&#10;&#10;<ul\r\ntype=\"disc\">&#10; <li class=\"MsoNormal\"><b><span>Social&#10; Media</span></b></li>&#10;</ul>&#10;&#10;<p\r\nclass=\"MsoNormal\"><span>You may be able to use your social media login (such as Facebook&#10;Login) to create and\r\n    log into your </span><span>TheSingleApp.com </span><span>account. This saves you from having to&#10;remember yet\r\n    another user name and password and allows you to share some&#10;information from your social media account with\r\n    us.</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><b><span>Other&#10; Partners</span></b></li>\r\n&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>We may receive info about you from our partners, for\r\n    instance&#10;when BlackPeopleMeet.com accounts can be created through a partner\'s websites&#10;(in which case\r\n    they pass along registration information to us) or where </span><span>TheSingleApp.com&#10;</span><span>ads are\r\n    published on a&#10;partner\'s websites and platforms (in which case they may pass along details on&#10;a\r\n    campaign\'s success).</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>Information collected when you use\r\n            our&#10;services</span></i></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>When you use our&#10;services,\r\n    we collect information about which features you\'ve used, how you\'ve&#10;used them and the devices you use to\r\n    access our services. See below for more&#10;details:</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li\r\n    class=\"MsoNormal\"><b><span>Usage&#10; Information</span></b></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\">\r\n<span>We collect information about your activity on our services, for&#10;instance how you use them (e.g., date and\r\n    time you logged in, features you\'ve&#10;been using, searches, clicks and pages which have been shown to you,\r\n    referring&#10;webpage address, advertising that you click on) and how you interact with other&#10;users (e.g.,\r\n    users you connect and interact with, time and date of your&#10;exchanges, number of messages you send and\r\n    receive).</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><b><span>Device&#10;\r\n            Information</span></b></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>We collect information from\r\n    and about the device(s) you use to&#10;access our services, including:</span></p>&#10;&#10;<ul type=\"disc\">&#10;\r\n<ul type=\"circle\">&#10; <li class=\"MsoNormal\"><span>hardware and software&#10; information such as IP address,\r\n            device ID and type, device-specific and&#10; apps settings and characteristics, app crashes, advertising\r\n            IDs (such as&#10; Google\'s AAID and Apple\'s IDFA, both of which are randomly generated&#10; numbers that\r\n            you can reset by going into your device\' settings), browser&#10; type, version and language, operating\r\n            system, time zones, identifiers&#10; associated with cookies or other technologies that may uniquely\r\n            identify&#10; your device or browser (e.g., IMEI/UDID and MAC address);</span></li>&#10; <li\r\n        class=\"MsoNormal\"><span>information on your wireless&#10; and mobile network connection, like your service\r\n            provider and signal&#10; strength;</span></li>&#10; <li class=\"MsoNormal\"><span>information on device\r\n            sensors&#10; such as accelerometers, gyroscopes and compasses.</span></li>&#10; </ul>&#10; <li\r\n    class=\"MsoNormal\"><b><span>Other&#10; information with your consent</span></b></li>&#10;</ul>&#10;&#10;<p\r\nclass=\"MsoNormal\"><span>If you give us permission, we can collect your precise&#10;geolocation (latitude and\r\n    longitude) through various means, depending on the&#10;service and device you\'re using, including GPS, Bluetooth\r\n    or Wi-Fi connections.&#10;The collection of your geolocation may occur in the background even when\r\n    you&#10;aren\'t using the services if the permission you gave us expressly permits such&#10;collection. If you\r\n    decline permission for us to collect your geolocation, we&#10;will not collect it.</span></p>&#10;&#10;<p\r\nclass=\"MsoNormal\"><span>Similarly, if you consent, we may collect your photos and videos&#10;(for instance, if you\r\n    want to publish a photo, video or streaming on the&#10;services).</span></p>&#10;&#10;<p class=\"MsoNormal\">\r\n<b><span>4.COOKIES AND OTHER SIMILAR DATA COLLECTION&#10;TECHNOLOGIES</span></b></p>&#10;&#10;<p class=\"MsoNormal\">\r\n<span>We use and may allow&#10;others to use cookies and similar technologies (e.g., web beacons, pixels)\r\n    to&#10;recognize you and/or your device(s). You may read our&#160;</span><a\r\n    href=\"https://www.blackpeoplemeet.com/v3/cookiepolicy\"><span>Cookie Policy</span></a><span>&#160;for more\r\n    information on why we use them (such as&#10;authenticating you, remembering your preferences and settings,\r\n    analyzing site&#10;traffic and trends, delivering and measuring the effectiveness of advertising&#10;campaigns,\r\n    allowing you to use social features) and how you can better control&#10;their use, through your browser settings\r\n    and other tools.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>Some web browsers&#10;(including Safari,\r\n    Internet Explorer, Firefox and Chrome) have a &#34;Do Not&#10;Track&#34; (&#34;<b>DNT</b>&#34;) feature that\r\n    tells a website that a user&#10;does not want to have his or her online activity tracked. If a website\r\n    that&#10;responds to a DNT signal receives a DNT signal, the browser can block that&#10;website from collecting\r\n    certain information about the browser\'s user. Not all&#10;browsers offer a DNT option and DNT signals are not\r\n    yet uniform. For this&#10;reason, many businesses, including BlackPeopleMeet.com, do not currently&#10;respond\r\n    to DNT signals.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>5.HOW WE USE INFORMATION</span></b></p>\r\n&#10;&#10;<p class=\"MsoNormal\"><span>The main reason we use&#10;your information is to deliver and improve our services.\r\n    Additionally, we use&#10;your info to help keep you safe and to provide you with advertising that may be&#10;of\r\n    interest to you. Read on for a more detailed explanation of the various&#10;reasons we use your information,\r\n    together with practical examples.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>To administer your\r\n            account and provide our&#10;services to you</span></i></b></p>&#10;&#10;<ul type=\"disc\">&#10; <li\r\n    class=\"MsoNormal\"><span>Create and manage your account</span></li>&#10; <li class=\"MsoNormal\"><span>Provide you\r\n        with customer&#10; support and respond to your requests</span></li>&#10; <li class=\"MsoNormal\">\r\n    <span>Complete your transactions</span></li>&#10; <li class=\"MsoNormal\"><span>Communicate with you about\r\n        our&#10; services, including order management and billing</span></li>&#10;</ul>&#10;&#10;<p\r\nclass=\"MsoNormal\"><b><i><span>To help you connect with other users</span></i></b></p>&#10;&#10;<ul type=\"disc\">&#10;\r\n<li class=\"MsoNormal\"><span>Analyze your profile and that&#10; of other users to recommend meaningful\r\n        connections</span></li>&#10; <li class=\"MsoNormal\"><span>Show users\' profiles to one another</span></li>\r\n&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>To ensure a consistent experience across\r\n            your&#10;devices</span></i></b></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><span>Link the\r\n        various devices you&#10; use so that you can enjoy a consistent experience of our services on all&#10; of\r\n        them. We do this by linking devices and browser data, such as when you&#10; log into your account on\r\n        different devices or by using partial or full IP&#10; address, browser version and similar data about your\r\n        devices to help&#10; identify and link them.</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\">\r\n<b><i><span>To serve you relevant offers and ads</span></i></b></p>&#10;&#10;<ul type=\"disc\">&#10; <li\r\n    class=\"MsoNormal\"><span>Administer sweepstakes,&#10; contests, discounts or other offers</span></li>&#10; <li\r\n    class=\"MsoNormal\"><span>Develop, display and track&#10; content and advertising tailored to your interests on\r\n        our services and&#10; other sites</span></li>&#10; <li class=\"MsoNormal\"><span>Communicate with you by\r\n        email,&#10; phone, social media or mobile device about products or services that we&#10; think may interest\r\n        you</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>To improve our services and develop new\r\n            ones</span></i></b></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><span>Administer focus\r\n        groups and&#10; surveys</span></li>&#10; <li class=\"MsoNormal\"><span>Conduct research and analysis&#10; of\r\n        users\' behavior to improve our services and content (for instance, we&#10; may decide to change the look and\r\n        feel or even substantially modify a&#10; given feature based on users\' behavior)</span></li>&#10; <li\r\n    class=\"MsoNormal\"><span>Develop new features and&#10; services (for example, we may decide to build a new\r\n        interests-based&#10; feature further to requests received from users).</span></li>&#10;</ul>&#10;&#10;<p\r\nclass=\"MsoNormal\"><b><i><span>To prevent, detect and fight fraud or other&#10;illegal or unauthorized\r\n            activities</span></i></b></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><span>Address ongoing\r\n        or alleged&#10; misbehavior on and off-platform</span></li>&#10; <li class=\"MsoNormal\"><span>Perform data\r\n        analysis to better&#10; understand and design countermeasures against these activities</span></li>&#10; <li\r\n    class=\"MsoNormal\"><span>Retain data related to&#10; fraudulent activities to prevent against recurrences</span>\r\n</li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>To ensure legal compliance</span></i></b></p>&#10;&#10;<ul\r\ntype=\"disc\">&#10; <li class=\"MsoNormal\"><span>Comply with legal requirements</span></li>&#10; <li class=\"MsoNormal\">\r\n    <span>Assist law enforcement</span></li>&#10; <li class=\"MsoNormal\"><span>Enforce or exercise our rights,&#10;\r\n        for example our Terms</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>To process\r\n    your&#10;information as described above, we rely on the following legal bases:</span></p>&#10;&#10;<ul\r\ntype=\"disc\">&#10; <li class=\"MsoNormal\"><i><span>Provide our service to you:</span></i><span>&#160;Most of the time,\r\n        the reason we process your&#10; information is to perform the contract that you have with us. For&#10;\r\n        instance, as you go about using our service to build meaningful&#10; connections, we use your information to\r\n        maintain your account and your&#10; profile, to make it viewable to other users and recommend other users\r\n        to&#10; you.</span></li>&#10; <li class=\"MsoNormal\"><i><span>Legitimate interests:</span></i><span>&#160;We\r\n        may use your information where we have&#10; legitimate interests to do so. For instance, we analyze users\'\r\n        behavior on&#10; our services to continuously improve our offerings, we suggest offers we&#10; think might\r\n        interest you, and we process information for administrative,&#10; fraud detection and other legal\r\n        purposes.</span></li>&#10; <li class=\"MsoNormal\"><i><span>Consent:</span></i><span>&#160;From time to time,\r\n        we may ask for your consent to&#10; use your information for certain specific reasons. You may withdraw\r\n        your&#10; consent at any time by contacting us at the address provided at the end of&#10; this Privacy\r\n        Policy.</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><b><span>6.HOW WE SHARE INFORMATION</span></b>\r\n</p>&#10;&#10;<p class=\"MsoNormal\"><span>Since our goal is to&#10;help you make meaningful connections, the main sharing\r\n    of users\' information&#10;is, of course, with other users. We also share some users\' information with\r\n    service&#10;providers and partners who assist us in operating the services, with other&#10;Match Group companies\r\n    and, in some cases, legal authorities. Read on for more&#10;details about how your information is shared with\r\n    others.</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><b><i><span>With&#10; other\r\n                users</span></i></b></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>You share information with\r\n    other users when you voluntarily&#10;disclose information on the service (including your public profile). Please\r\n    be&#10;careful with your information and make sure that the content you share is stuff&#10;that you\'re\r\n    comfortable being publically viewable since neither you nor we can&#10;control what others do with your\r\n    information once you share it.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>If you choose to limit the\r\n    audience for all or part of your&#10;profile or for certain content or information about you, then it will\r\n    be&#10;visible according to your settings.</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\">\r\n    <b><i><span>With&#10; our service providers and partners</span></i></b></li>&#10;</ul>&#10;&#10;<p\r\nclass=\"MsoNormal\"><span>We use third parties to help us operate and improve our&#10;services. These third parties\r\n    assist us with various tasks, including data&#10;hosting and maintenance, analytics, customer care, marketing,\r\n    advertising,&#10;payment processing and security operations.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>We\r\n    may also share information with partners who distribute and&#10;assist us in advertising our services. For\r\n    instance, we may share limited&#10;information on you in hashed, non-human readable form to advertising\r\n    partners.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>We follow a strict vetting process prior to engaging\r\n    any service&#10;provider or working with any partner. All of our service providers and partners&#10;must agree\r\n    to strict confidentiality obligations.</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\">\r\n    <b><i><span>With&#10; other legal Group businesses</span></i></b></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\">\r\n<span>TheSingleApp.com </span><span>is part of the Match Group family of&#10;businesses which, as of the date of\r\n    this Privacy Policy, includes websites and&#10;apps such as Tinder, OkCupid, Plenty of Fish, Match, Meetic,\r\n    BlackPeopleMeet,&#10;LoveScout24, OurTime, Pairs, ParPerfeito, and Twoo (for more\r\n    details,&#10;click&#160;</span><a href=\"http://www.mtch.com/\"\r\n    target=\"_blank\"><span>here</span></a><span>).</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>We share your\r\n    information with other Match Group companies to&#10;benefit you in two respects:</span></p>&#10;&#10;<ul\r\ntype=\"disc\">&#10; <ul type=\"circle\">&#10; <li class=\"MsoNormal\"><span>for other Match Group&#10; companies to assist\r\n            us in processing your information, as service&#10; providers, upon our instructions and on our behalf.\r\n            Assistance provided&#10; by other Match Group companies may include technical processing&#10;\r\n            operations, such as data hosting and maintenance, customer care,&#10; marketing and targeted\r\n            advertising, finance and accounting assistance,&#10; better understanding how our service is used and\r\n            users\' behavior to&#10; improve our service, securing our data and systems and fighting against&#10;\r\n            spam, abuse, fraud, infringement and other wrongdoings.</span></li>&#10; <li class=\"MsoNormal\"><span>In\r\n            order to improve your&#10; chances at building significant connections with others, we may make you&#10;\r\n            visible on other Match Group services or allow you to benefit from&#10; cross-platform functionalities.\r\n            We will of course comply with applicable&#10; law and, where relevant, notify you of any such\r\n            opportunity and allow you&#10; to agree or to refuse. Examples of such opportunities may include\r\n            the&#10; creation of a new service within Match Group, addressing a specific&#10; demographic that we\r\n            feel would be interesting to you based on your search&#10; criteria.</span></li>&#10; </ul>&#10;</ul>\r\n&#10;&#10;<p class=\"MsoNormal\"><span>We may also share information with other Match Group companies&#10;for legitimate\r\n    business purposes such as corporate audit, analysis and&#10;consolidated reporting as well as compliance with\r\n    applicable laws. We may also&#10;share user information with other Match Group companies to remove users\r\n    who&#10;violate our terms of service, or have been reported for criminal activity&#10;and/or bad behavior. In\r\n    some instances, we may remove that user from all&#10;platforms.</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li\r\n    class=\"MsoNormal\"><b><i><span>For&#10; corporate transactions</span></i></b></li>&#10;</ul>&#10;&#10;<p\r\nclass=\"MsoNormal\"><span>We may transfer your information if we are involved, whether in&#10;whole or in part, in a\r\n    merger, sale, acquisition, divestiture, restructuring,&#10;reorganization, dissolution, bankruptcy or other\r\n    change of ownership or&#10;control.</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\">\r\n    <b><i><span>When&#10; required by law</span></i></b></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>We may\r\n    disclose your information if reasonably necessary: (i) to&#10;comply with a legal process, such as a court\r\n    order, subpoena or search warrant,&#10;government / law enforcement investigation or other legal requirements;\r\n    (ii) to&#10;assist in the prevention or detection of crime (subject in each case to&#10;applicable law); or\r\n    (iii) to protect the safety of any person.</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\">\r\n    <b><i><span>To&#10; enforce legal rights</span></i></b></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>We\r\n    may also share information: (i) if disclosure would mitigate&#10;our liability in an actual or threatened\r\n    lawsuit; (ii) as necessary to protect&#10;our legal rights and legal rights of our users, business partners or\r\n    other&#10;interested parties; (iii) to enforce our agreements with you; and (iv) to&#10;investigate, prevent, or\r\n    take other action regarding illegal activity, suspected&#10;fraud or other wrongdoing.</span></p>&#10;&#10;<ul\r\ntype=\"disc\">&#10; <li class=\"MsoNormal\"><b><i><span>With&#10; your consent or at your request</span></i></b></li>\r\n&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>We may ask for your consent to share your information with\r\n    third&#10;parties. In any such case, we will make it clear why we want to share the&#10;information.</span></p>\r\n&#10;&#10;<p class=\"MsoNormal\"><span>We may use and share&#10;non-personal information (meaning information that, by\r\n    itself, does not&#10;identify who you are such as device information, general demographics,\r\n    general&#10;behavioral data, geolocation in de-identified form), as well as personal&#10;information in hashed,\r\n    non-human readable form, under any of the above&#10;circumstances. We may also share this information with other\r\n    Match Group&#10;companies and third parties (notably advertisers) to develop and deliver&#10;targeted\r\n    advertising on our services and on websites or applications of third&#10;parties, and to analyze and report on\r\n    advertising you see. We may combine this&#10;information with additional non-personal information or personal\r\n    information in&#10;hashed, non-human readable form collected from other sources. More information&#10;on our use\r\n    of cookies and similar technologies can be found in our&#160;</span><a\r\n    href=\"https://www.blackpeoplemeet.com/v3/cookiepolicy\"><span>Cookie Policy</span></a><span>.</span></p>\r\n&#10;&#10;<p class=\"MsoNormal\"><b><span>7.CROSS-BORDER DATA TRANSFERS</span></b></p>&#10;&#10;<p class=\"MsoNormal\">\r\n<span>Sharing of information&#10;laid out in&#160;</span><a\r\n    href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#HowWeShareInformation\"><span>Section\r\n        6</span></a><span>&#160;sometimes involves cross-border data transfers, for&#10;instance to the United\r\n    States of America and other jurisdictions. As an&#10;example, where the service allows for users to be located\r\n    in the European&#10;Economic Area (&#34;EEA&#34;), their personal information is transferred to&#10;countries\r\n    outside of the EEA. We use standard contract clauses approved by the&#10;European Commission or other suitable\r\n    safeguard to permit data transfers from&#10;the EEA to other countries. Standard contractual clauses are\r\n    commitments&#10;between companies transferring personal data, binding them to protect the&#10;privacy and\r\n    security of your data.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>8.YOUR RIGHTS</span></b></p>&#10;&#10;\r\n<p class=\"MsoNormal\"><span>We want you to be in&#10;control of your information, so we have provided you with the\r\n    following tools:</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><u><span>Access / Update tools\r\n            in the&#10; service.</span></u><span>&#160;Tools and account&#10; settings that help you to access,\r\n        rectify or delete information that you&#10; provided to us and that\'s associated with your account directly\r\n        within the&#10; service. If you have any question on those tools and settings, please&#10; contact our\r\n        customer care team for help&#160;</span><span><a\r\n            href=\"https://peoplemedia.custhelp.com/ci/pta/login/redirect/ask/theme/blackpeoplemeetv6/src/www.blackpeoplemeet.com_v3_help_iframehelper/pmsite/2/p_li/IL6iNIDCslL2vEaS2TbFtIx1I0TMd7TqpbwjMzdcGsKj3L8YlFwvzo_18Q1YNe5ViCYqjE2KZTanjBqR_HvNMnZbWeIeQUtXaFpL1gX_8dJ15iUDULXTGPON61LXP1_eT4WOcZ1vcNSZfmd8alJ6IPUOgoOs_N7Fj14em9F9Hi0lKqd_j6HGM3aZeJipaHRUzuS82Tuz7mHuyB_cuiycawzN_X6yKfI10Zz~44IjQ8TMqS_QzmeKckY0qIfir54qwMMJdM0hUaUTQP_XG7IC7KStf6EnGJVReMONTHNz3mJDBEzdWW6NZC~HVSwKKUrlr2fp0aV9sdQWNqXkxuO4VqUJFVOPZxtHzpg53VV18oEXrClROBekGhT3ItepJjja7IJKrRcAUUwvcgrnJzQ~A89AF1Kwcc25AFO_6lIPNVPojV4XSHLhhaMRo5ICNhgW\"\r\n            target=\"_blank\"><span>here</span></a></span><span>.</span></li>&#10; <li class=\"MsoNormal\">\r\n    <u><span>Device permissions.</span></u><span>&#160;Mobile platforms have permission systems for&#10; specific\r\n        types of device data and notifications, such as phone book and&#10; location services as well as push\r\n        notifications. You can change your&#10; settings on your device to either consent or oppose the collection\r\n        of the&#10; corresponding information or the display of the corresponding&#10; notifications. Of course, if\r\n        you do that, certain services may lose full&#10; functionality.</span></li>&#10; <li class=\"MsoNormal\">\r\n    <u><span>Deletion.</span></u><span>&#160;You can delete your account by using the&#10; corresponding\r\n        functionality directly on the service.</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>We want you\r\n    to be&#10;aware of your privacy rights. Here are a few key points to remember:</span></p>&#10;&#10;<ul\r\ntype=\"disc\">&#10; <li class=\"MsoNormal\"><u><span>Reviewing your information.</span></u><span>&#160;Applicable\r\n        privacy laws may give you the right to&#10; review the personal information we keep about you (depending on\r\n        the&#10; jurisdiction, this may be called right of access, right of portability or&#10; variations of those\r\n        terms). You can request a copy of your personal&#10; information by putting in such a\r\n        request&#160;</span><span><a\r\n            href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#HowToContactUs\"><span>here</span></a></span><span>.</span>\r\n</li>&#10; <li class=\"MsoNormal\"><u><span>Updating your information.</span></u><span>&#160;If you believe that the\r\n        information we hold about&#10; you is inaccurate or that we are no longer entitled to use it and want\r\n        to&#10; request its rectification, deletion or object to its processing, please&#10; contact\r\n        us&#160;</span><span><a\r\n            href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#HowToContactUs\"><span>here</span></a></span><span>.</span>\r\n</li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>For your protection&#10;and the protection of all of our users,\r\n    we may ask you to provide proof of&#10;identity before we can answer the above requests.</span></p>&#10;&#10;<p\r\nclass=\"MsoNormal\"><span>Keep in mind, we may&#10;reject requests for certain reasons, including if the request is\r\n    unlawful or if&#10;it may infringe on trade secrets or intellectual property or the privacy of&#10;another user.\r\n    If you wish to receive information relating to another user, such&#10;as a copy of any messages you received\r\n    from him or her through our service, the&#10;other user will have to contact our Privacy Officer to provide\r\n    their written&#10;consent before the information is released.</span></p>&#10;&#10;<p class=\"MsoNormal\">\r\n<span>Also, we may not be&#10;able to accommodate certain requests to object to the processing of\r\n    personal&#10;information, notably where such requests would not allow us to provide our&#10;service to you\r\n    anymore. For instance, we cannot provide our service if we do&#10;not have your date of birth.</span></p>\r\n&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><u><span>Uninstall.</span></u><span>&#160;You can stop all\r\n        information collection by an app&#10; by uninstalling it using the standard uninstall process for your\r\n        device.&#10; If you uninstall the app from your mobile device, the unique identifier&#10; associated with\r\n        your device will continue to be stored. If you re-install&#10; the application on the same mobile device, we\r\n        will be able to re-associate&#10; this identifier to your previous transactions and activities.</span></li>\r\n&#10; <li class=\"MsoNormal\"><u><span>Accountability.</span></u><span>&#160;In certain countries, including in the\r\n        European&#10; Union, you have a right to lodge a complaint with the appropriate data&#10; protection\r\n        authority if you have concerns about how we process your&#10; personal information. The data protection\r\n        authority you can lodge a&#10; complaint with notably may be that of your habitual residence, where you&#10;\r\n        work or where we are established.</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><b><span>9.RESIDENTS\r\n        OF CALIFORNIA</span></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>If you are a&#10;California resident, you\r\n    can request a notice disclosing the categories of&#10;personal information about you that we have shared with\r\n    third parties for their&#10;direct marketing purposes during the preceding calendar year. To request\r\n    this&#10;notice, please submit your request&#160;</span><a\r\n    href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#HowToContactUs\"><span>here</span></a><span>. Please allow\r\n    30 days for a response. For your protection and&#10;the protection of all of our users, we may ask you to\r\n    provide proof of identity&#10;before we can answer such a request.</span></p>&#10;&#10;<p class=\"MsoNormal\">\r\n<b><span>10.HOW WE PROTECT YOUR INFORMATION</span></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>We work hard\r\n    to&#10;protect you from unauthorized access to or alteration, disclosure or&#10;destruction of your personal\r\n    information. As with all technology companies,&#10;although we take steps to secure your information, we do not\r\n    promise, and you&#10;should not expect, that your personal information will always remain secure.</span></p>\r\n&#10;&#10;<p class=\"MsoNormal\"><span>We regularly monitor&#10;our systems for possible vulnerabilities and attacks and\r\n    regularly review our&#10;information collection, storage and processing practices to update our&#10;physical,\r\n    technical and organizational security measures.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>We may suspend\r\n    your&#10;use of all or part of the services without notice if we suspect or detect any&#10;breach of security.\r\n    If you believe that your account or information is no&#10;longer secure, please notify us\r\n    immediately&#160;</span><a\r\n    href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#HowToContactUs\"><span>here</span></a><span>.</span></p>\r\n&#10;&#10;<p class=\"MsoNormal\"><b><span>11.HOW LONG WE RETAIN YOUR INFORMATION</span></b></p>&#10;&#10;<p\r\nclass=\"MsoNormal\"><span>We keep your personal&#10;information only as long as we need it for legitimate business\r\n    purposes (as laid&#10;out in&#160;</span><a\r\n    href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#HowWeUseInformation\"><span>Section 5</span></a><span>)\r\n    and as permitted by applicable law.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>In practice, we delete&#10;or\r\n    anonymize your information upon deletion of your account, unless:</span></p>&#10;&#10;<ol start=\"1\" type=\"1\">\r\n&#10; <li class=\"MsoNormal\"><span>we must keep it to comply with&#10; applicable law;</span></li>&#10; <li\r\n    class=\"MsoNormal\"><span>we must keep it to evidence our&#10; compliance with applicable law;</span></li>&#10;\r\n<li class=\"MsoNormal\"><span>there is an outstanding issue,&#10; claim or dispute requiring us to keep the relevant\r\n        information until it is&#10; resolved; or</span></li>&#10; <li class=\"MsoNormal\"><span>the information must\r\n        be kept&#10; for our legitimate business interests, such as fraud prevention and&#10; enhancing users\'\r\n        safety and security. For example, information may need to&#10; be kept to prevent a user who was banned for\r\n        unsafe behavior or security&#10; incidents from opening a new account.</span></li>&#10;</ol>&#10;&#10;<p\r\nclass=\"MsoNormal\"><span>Keep in mind that even&#10;though our systems are designed to carry out data deletion\r\n    processes according&#10;to the above guidelines, we cannot promise that all data will be deleted within&#10;a\r\n    specific timeframe due to technical constraints.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>12.CHILDREN\'S\r\n        PRIVACY</span></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>Our services are restricted&#10;to users who are\r\n    18 years of age or older. We do not permit users under the age&#10;of 18 on our platform and we do not knowingly\r\n    collect personal information from&#10;anyone under the age of 18. If you suspect that a user is under the age of\r\n    18,&#10;please use the reporting mechanism available through the service.</span></p>&#10;&#10;<p\r\nclass=\"MsoNormal\"><b><span>13.PRIVACY POLICY CHANGES</span></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>Because\r\n    we\'re always&#10;looking for new and innovative ways to help you build meaningful connections,&#10;this policy\r\n    may change over time. We will notify you before any material&#10;changes take effect so that you have time to\r\n    review the changes.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>14.HOW TO CONTACT US</span></b></p>\r\n&#10;&#10;<p class=\"MsoNormal\"><span>If you have questions&#10;about this Privacy Policy, here\'s how you can reach\r\n    us:</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>Online:</span></b><span>&#160;</span><a\r\n    href=\"https://peoplemedia.custhelp.com/ci/pta/login/redirect/ask/theme/blackpeoplemeetv6/src/www.blackpeoplemeet.com_v3_help_iframehelper/pmsite/2/p_li/IL6iNIDCslL2vEaS2TbFtIx1I0TMd7TqpbwjMzdcGsKj3L8YlFwvzo_18Q1YNe5ViCYqjE2KZTanjBqR_HvNMnZbWeIeQUtXaFpL1gX_8dJ15iUDULXTGPON61LXP1_eT4WOcZ1vcNSZfmd8alJ6IPUOgoOs_N7Fj14em9F9Hi0lKqd_j6HGM3aZeJipaHRUzuS82Tuz7mHuyB_cuiycawzN_X6yKfI10Zz~44IjQ8TMqS_QzmeKckY0qIfir54qwMMJdM0hUaUTQP_XG7IC7KStf6EnGJVReMONTHNz3mJDBEzdWW6NZC~HVSwKKUrlr2fp0aV9sdQWNqXkxuO4VqUJFVOPZxtHzpg53VV18oEXrClROBekGhT3ItepJjja7IJKrRcAUUwvcgrnJzQ~A89AF1Kwcc25AFO_6lIPNVPojV4XSHLhhaMRo5ICNhgW\"\r\n    target=\"_blank\"><span>here</span></a><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>By\r\n        Post:</span></b><span><br>&#10;Privacy Officer<br>&#10;meadia group address and name here</span></p>', '2023-04-12');
INSERT INTO `extras_termsandconditions` (`id`, `terms`, `date`) VALUES
(3, '<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC\" crossorigin=\"anonymous\">\r\n\r\n<style>\r\n    .titdat {\r\n        display: flex !important;\r\n    }\r\n</style>\r\n<p class=\"MsoNormal\"><span>Welcome to </span><span>TheSingleApp.com&#10;</span><span>Privacy Policy. Thank&#10;you for\r\n    taking the time to read it.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>We appreciate that you&#10;trust us\r\n    with your information and we intend to always keep that trust. This&#10;starts with making sure you understand\r\n    the information we collect, why we&#10;collect it, how it is used and your choices regarding your information.\r\n    This&#10;Policy describes our privacy practices in plain language, keeping legal and&#10;technical jargon to a\r\n    minimum.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>This Privacy Policy&#10;applies beginning May 25, 2018.\r\n    The previous version of this Privacy Policy,&#10;available&#160;</span><a\r\n    href=\"https://www.blackpeoplemeet.com/v3/privacypolicy/archive/20161116\"><span>here</span></a><span>, will apply\r\n    until then.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>EFFECTIVE DATE: May&#10;25, 2018</span></p>&#10;&#10;\r\n   <div>\r\n    <div class=\"titdat d-flex\" >\r\n        <p class=\"Mssingleapp-terms/id2.htmloNormal\"  ><span>1.</span></p>&#10;&#10;<p class=\"MsoNormal\"><a\r\n            href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#WhoWeAre\"><span>WHO WE ARE</span></a><span></span></p>\r\n    &#10;&#10;\r\n    </div>\r\n    &#10;&#10;\r\n    <div class=\"titdat d-flex\" >\r\n        <p class=\"MsoNormal\"  ><span>2.</span></p>\r\n        <p class=\"MsoNormal\"><a\r\n            href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#WhereThisPrivacyPolicyApplies\"><span>WHERE THIS PRIVACY\r\n                POLICY APPLIES</span></a><span></span></p>&#10;&#10;\r\n    </div>\r\n&#10;&#10;\r\n    <div class=\"titdat d-flex\">\r\n        <p class=\"MsoNormal\"  ><span>3.</span></p>\r\n        <p class=\"MsoNormal\"><a\r\n            href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#InformationWeCollect\"><span>INFORMATION WE\r\n                COLLECT</span></a><span></span></p>&#10;&#10;\r\n    </div>\r\n&#10;&#10;\r\n    <div class=\"titdat d-flex\">\r\n        <p class=\"MsoNormal\"  ><span>4.</span></p>\r\n        <p class=\"MsoNormal\"><a\r\n            href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#CookiesAndOtherSimilarDataCollectionTechnologies\"><span>COOKIES\r\n                AND OTHER SIMILAR DATA COLLECTION&#10;TECHNOLOGIES</span></a><span></span></p>&#10;&#10;\r\n    </div>&#10;&#10;\r\n    <div class=\"titdat d-flex\">\r\n        <p class=\"MsoNormal\"><span>5.</span></p>\r\n        <p class=\"MsoNormal\"><a\r\n            href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#HowWeUseInformation\"><span>HOW WE USE\r\n                INFORMATION</span></a><span></span></p>&#10;&#10;\r\n    </div>\r\n&#10;&#10;\r\n    <div class=\"titdat d-flex\">\r\n        <p class=\"MsoNormal\"  ><span>6.</span></p>\r\n        <p class=\"MsoNormal\"><a\r\n            href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#HowWeShareInformation\"><span>HOW WE SHARE\r\n                INFORMATION</span></a><span></span></p>&#10;&#10;\r\n    </div>\r\n&#10;&#10;\r\n    <div class=\"titdat d-flex\">\r\n        <p class=\"MsoNormal\"  ><span>7.</span></p>\r\n        <p class=\"MsoNormal\"><a\r\n            href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#CrossBorderDataTransfers\"><span>CROSS-BORDER DATA\r\n                TRANSFERS</span></a><span></span></p>&#10;&#10;\r\n    </div>\r\n&#10;&#10;\r\n    <div class=\"titdat d-flex\">\r\n        <p class=\"MsoNormal\"  ><span>8.</span></p>\r\n        <p class=\"MsoNormal\"><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#YourRights\"><span>YOUR\r\n            RIGHTS</span></a><span></span></p>&#10;&#10;\r\n    </div>        \r\n&#10;&#10;\r\n    <div class=\"titdat d-flex\">\r\n        <p class=\"MsoNormal\"  ><span>9.</span></p>\r\n        <p class=\"MsoNormal\"><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#ResidentsOfCalifornia\"><span>RESIDENTS OF\r\n            CALIFORNIA</span></a><span></span></p>&#10;&#10;\r\n    </div>\r\n&#10;&#10;\r\n    <div class=\"titdat d-flex\">\r\n        <p class=\"MsoNormal\"  ><span>10.</span></p>\r\n        <p class=\"MsoNormal\"><a\r\n            href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#HowWeProtectYourInformation\"><span>HOW WE PROTECT YOUR\r\n                INFORMATION</span></a><span></span></p>&#10;&#10;\r\n    </div>\r\n&#10;&#10;\r\n    <div class=\"titdat d-flex\">\r\n        <p class=\"MsoNormal\"  ><span>11.</span></p>\r\n        <p class=\"MsoNormal\"><a\r\n            href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#HowLongWeRetainYourInformation\"><span>HOW LONG WE RETAIN\r\n                YOUR INFORMATION</span></a><span></span></p>&#10;&#10;\r\n    </div>\r\n&#10;&#10;\r\n    <div class=\"titdat d-flex\">\r\n        <p class=\"MsoNormal\"  ><span>12.</span></p>\r\n        <p class=\"MsoNormal\"><a\r\n            href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#ChildrensPrivacy\"><span>CHILDREN\'S\r\n                PRIVACY</span></a><span></span></p>&#10;&#10;\r\n    </div>\r\n&#10;&#10;\r\n    <div class=\"titdat d-flex\">\r\n        <p class=\"MsoNormal\"  ><span>13.</span></p>\r\n        <p class=\"MsoNormal\"><a\r\n            href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#PrivacyPolicyChanges\"><span>PRIVACY POLICY\r\n                CHANGES</span></a><span></span></p>&#10;&#10;\r\n    </div>\r\n&#10;&#10;\r\n    <div class=\"titdat d-flex\">\r\n        <p class=\"MsoNormal\"  ><span>14.</span></p>\r\n        <p class=\"MsoNormal\"><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#HowToContactUs\"><span>HOW TO\r\n            CONTACT US</span></a><span></span></p>&#10;&#10;\r\n    </div>\r\n   </div>\r\n   <p class=\"MsoNormal\"><b><span>1.WHO WE ARE</span></b></p>\r\n&#10;&#10;<p class=\"MsoNormal\"><span>If you live in the&#10;United States or Canada, the company that is responsible for\r\n    your information&#10;under this Privacy Policy (the &#34;data controller&#34;) is:</span></p>&#10;&#10;<p\r\nclass=\"MsoNormal\"><b><span>Media company name and address here.&#160;&#10;</span></b></p>&#10;&#10;<p\r\nclass=\"MsoNormal\"><b><span>2.WHERE THIS PRIVACY POLICY APPLIES</span></b></p>&#10;&#10;<p class=\"MsoNormal\">\r\n<span>This Privacy Policy&#10;applies to websites, apps, events and other services operated by\r\n</span><span>TheSingleApp.com&#10;</span><span>For simplicity, we&#10;refer to all of these as our\r\n    &#34;services&#34; in this Privacy Policy. To&#10;make it extra clear, we\'ve added links to this Privacy Policy\r\n    on all applicable&#10;services.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>Some services may&#10;require\r\n    their own unique privacy policy. If a particular service has its own&#10;privacy policy, then that policy -- not\r\n    this Privacy Policy -- applies.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>3.INFORMATION WE\r\n        COLLECT</span></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>It goes without&#10;saying, we can\'t help you\r\n    develop meaningful connections without some&#10;information about you, such as basic profile details and the\r\n    types of people&#10;you\'d like to meet. We also collect information generated as you use our&#10;services, for\r\n    example access logs, as well as information from third parties,&#10;like when you access our services through a\r\n    social media account. If you want&#10;additional info, we go into more detail below.</span></p>&#10;&#10;<p\r\nclass=\"MsoNormal\"><b><i><span>Information you give us</span></i></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>You\r\n    choose to give us&#10;certain information when using our services. This includes:</span></p>&#10;&#10;<ul\r\ntype=\"disc\">&#10; <li class=\"MsoNormal\"><span>When you create an account, you&#10; provide us with at least your\r\n        login credentials, as well as some basic&#10; details necessary for the service to work, such as your gender\r\n        and date of&#10; birth.</span></li>&#10; <li class=\"MsoNormal\"><span>When you complete your profile,&#10;\r\n        you can share with us additional information, such as details on your&#10; personality, lifestyle, interests\r\n        and other details about you, as well as&#10; content such as photos and videos. To add certain content, like\r\n        pictures&#10; or videos, you may allow us to access your camera or photo album. Some of&#10; the information\r\n        you choose to provide us may be considered&#10; &#34;special&#34; or &#34;sensitive&#34; in certain\r\n        jurisdictions, for&#10; example your racial or ethnic origins, sexual orientation and religious&#10;\r\n        beliefs. By choosing to provide this information, you consent to our&#10; processing of that\r\n        information.</span></li>&#10; <li class=\"MsoNormal\"><span>When you subscribe to a paid&#10; service or make\r\n        a purchase directly from us (rather than through a&#10; platform such as iOS or Android), you provide us or\r\n        our payment service&#10; provider with information, such as your debit or credit card number or&#10; other\r\n        financial information.</span></li>&#10; <li class=\"MsoNormal\"><span>When you participate in surveys&#10; or\r\n        focus groups, you give us your insights into our products and services,&#10; responses to our questions and\r\n        testimonials.</span></li>&#10; <li class=\"MsoNormal\"><span>When you choose to participate&#10; in our\r\n        promotions, events or contests, we collect the information that you&#10; use to register or enter.</span>\r\n</li>&#10; <li class=\"MsoNormal\"><span>If you contact our customer&#10; care team, we collect the information you\r\n        give us during the interaction.&#10; Sometimes, we monitor or record these interactions for training\r\n        purposes&#10; and to ensure a high quality of service.</span></li>&#10; <li class=\"MsoNormal\"><span>If you\r\n        ask us to communicate&#10; with or otherwise process information of other people (for example, if you&#10;\r\n        ask us to send an email on your behalf to one of your friends), we collect&#10; the information about others\r\n        that you give us in order to complete your&#10; request.</span></li>&#10; <li class=\"MsoNormal\"><span>Of\r\n        course, we also process your&#10; chats with other users as well as the content you publish, as part of\r\n        the&#10; operation of the services.</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\">\r\n<b><i><span>Information we receive from others</span></i></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>In addition to\r\n    the&#10;information you provide us directly, we receive information about you from&#10;others, including:</span>\r\n</p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><b><span>Other&#10; Users</span></b></li>&#10;</ul>&#10;&#10;\r\n<p class=\"MsoNormal\"><span>Other users may provide information about you as they use our&#10;services. For instance, we\r\n    may collect information about you from other users&#10;if they contact us about you.</span></p>&#10;&#10;<ul\r\ntype=\"disc\">&#10; <li class=\"MsoNormal\"><b><span>Social&#10; Media</span></b></li>&#10;</ul>&#10;&#10;<p\r\nclass=\"MsoNormal\"><span>You may be able to use your social media login (such as Facebook&#10;Login) to create and\r\n    log into your </span><span>TheSingleApp.com </span><span>account. This saves you from having to&#10;remember yet\r\n    another user name and password and allows you to share some&#10;information from your social media account with\r\n    us.</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><b><span>Other&#10; Partners</span></b></li>\r\n&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>We may receive info about you from our partners, for\r\n    instance&#10;when BlackPeopleMeet.com accounts can be created through a partner\'s websites&#10;(in which case\r\n    they pass along registration information to us) or where </span><span>TheSingleApp.com&#10;</span><span>ads are\r\n    published on a&#10;partner\'s websites and platforms (in which case they may pass along details on&#10;a\r\n    campaign\'s success).</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>Information collected when you use\r\n            our&#10;services</span></i></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>When you use our&#10;services,\r\n    we collect information about which features you\'ve used, how you\'ve&#10;used them and the devices you use to\r\n    access our services. See below for more&#10;details:</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li\r\n    class=\"MsoNormal\"><b><span>Usage&#10; Information</span></b></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\">\r\n<span>We collect information about your activity on our services, for&#10;instance how you use them (e.g., date and\r\n    time you logged in, features you\'ve&#10;been using, searches, clicks and pages which have been shown to you,\r\n    referring&#10;webpage address, advertising that you click on) and how you interact with other&#10;users (e.g.,\r\n    users you connect and interact with, time and date of your&#10;exchanges, number of messages you send and\r\n    receive).</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><b><span>Device&#10;\r\n            Information</span></b></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>We collect information from\r\n    and about the device(s) you use to&#10;access our services, including:</span></p>&#10;&#10;<ul type=\"disc\">&#10;\r\n<ul type=\"circle\">&#10; <li class=\"MsoNormal\"><span>hardware and software&#10; information such as IP address,\r\n            device ID and type, device-specific and&#10; apps settings and characteristics, app crashes, advertising\r\n            IDs (such as&#10; Google\'s AAID and Apple\'s IDFA, both of which are randomly generated&#10; numbers that\r\n            you can reset by going into your device\' settings), browser&#10; type, version and language, operating\r\n            system, time zones, identifiers&#10; associated with cookies or other technologies that may uniquely\r\n            identify&#10; your device or browser (e.g., IMEI/UDID and MAC address);</span></li>&#10; <li\r\n        class=\"MsoNormal\"><span>information on your wireless&#10; and mobile network connection, like your service\r\n            provider and signal&#10; strength;</span></li>&#10; <li class=\"MsoNormal\"><span>information on device\r\n            sensors&#10; such as accelerometers, gyroscopes and compasses.</span></li>&#10; </ul>&#10; <li\r\n    class=\"MsoNormal\"><b><span>Other&#10; information with your consent</span></b></li>&#10;</ul>&#10;&#10;<p\r\nclass=\"MsoNormal\"><span>If you give us permission, we can collect your precise&#10;geolocation (latitude and\r\n    longitude) through various means, depending on the&#10;service and device you\'re using, including GPS, Bluetooth\r\n    or Wi-Fi connections.&#10;The collection of your geolocation may occur in the background even when\r\n    you&#10;aren\'t using the services if the permission you gave us expressly permits such&#10;collection. If you\r\n    decline permission for us to collect your geolocation, we&#10;will not collect it.</span></p>&#10;&#10;<p\r\nclass=\"MsoNormal\"><span>Similarly, if you consent, we may collect your photos and videos&#10;(for instance, if you\r\n    want to publish a photo, video or streaming on the&#10;services).</span></p>&#10;&#10;<p class=\"MsoNormal\">\r\n<b><span>4.COOKIES AND OTHER SIMILAR DATA COLLECTION&#10;TECHNOLOGIES</span></b></p>&#10;&#10;<p class=\"MsoNormal\">\r\n<span>We use and may allow&#10;others to use cookies and similar technologies (e.g., web beacons, pixels)\r\n    to&#10;recognize you and/or your device(s). You may read our&#160;</span><a\r\n    href=\"https://www.blackpeoplemeet.com/v3/cookiepolicy\"><span>Cookie Policy</span></a><span>&#160;for more\r\n    information on why we use them (such as&#10;authenticating you, remembering your preferences and settings,\r\n    analyzing site&#10;traffic and trends, delivering and measuring the effectiveness of advertising&#10;campaigns,\r\n    allowing you to use social features) and how you can better control&#10;their use, through your browser settings\r\n    and other tools.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>Some web browsers&#10;(including Safari,\r\n    Internet Explorer, Firefox and Chrome) have a &#34;Do Not&#10;Track&#34; (&#34;<b>DNT</b>&#34;) feature that\r\n    tells a website that a user&#10;does not want to have his or her online activity tracked. If a website\r\n    that&#10;responds to a DNT signal receives a DNT signal, the browser can block that&#10;website from collecting\r\n    certain information about the browser\'s user. Not all&#10;browsers offer a DNT option and DNT signals are not\r\n    yet uniform. For this&#10;reason, many businesses, including BlackPeopleMeet.com, do not currently&#10;respond\r\n    to DNT signals.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>5.HOW WE USE INFORMATION</span></b></p>\r\n&#10;&#10;<p class=\"MsoNormal\"><span>The main reason we use&#10;your information is to deliver and improve our services.\r\n    Additionally, we use&#10;your info to help keep you safe and to provide you with advertising that may be&#10;of\r\n    interest to you. Read on for a more detailed explanation of the various&#10;reasons we use your information,\r\n    together with practical examples.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>To administer your\r\n            account and provide our&#10;services to you</span></i></b></p>&#10;&#10;<ul type=\"disc\">&#10; <li\r\n    class=\"MsoNormal\"><span>Create and manage your account</span></li>&#10; <li class=\"MsoNormal\"><span>Provide you\r\n        with customer&#10; support and respond to your requests</span></li>&#10; <li class=\"MsoNormal\">\r\n    <span>Complete your transactions</span></li>&#10; <li class=\"MsoNormal\"><span>Communicate with you about\r\n        our&#10; services, including order management and billing</span></li>&#10;</ul>&#10;&#10;<p\r\nclass=\"MsoNormal\"><b><i><span>To help you connect with other users</span></i></b></p>&#10;&#10;<ul type=\"disc\">&#10;\r\n<li class=\"MsoNormal\"><span>Analyze your profile and that&#10; of other users to recommend meaningful\r\n        connections</span></li>&#10; <li class=\"MsoNormal\"><span>Show users\' profiles to one another</span></li>\r\n&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>To ensure a consistent experience across\r\n            your&#10;devices</span></i></b></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><span>Link the\r\n        various devices you&#10; use so that you can enjoy a consistent experience of our services on all&#10; of\r\n        them. We do this by linking devices and browser data, such as when you&#10; log into your account on\r\n        different devices or by using partial or full IP&#10; address, browser version and similar data about your\r\n        devices to help&#10; identify and link them.</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\">\r\n<b><i><span>To serve you relevant offers and ads</span></i></b></p>&#10;&#10;<ul type=\"disc\">&#10; <li\r\n    class=\"MsoNormal\"><span>Administer sweepstakes,&#10; contests, discounts or other offers</span></li>&#10; <li\r\n    class=\"MsoNormal\"><span>Develop, display and track&#10; content and advertising tailored to your interests on\r\n        our services and&#10; other sites</span></li>&#10; <li class=\"MsoNormal\"><span>Communicate with you by\r\n        email,&#10; phone, social media or mobile device about products or services that we&#10; think may interest\r\n        you</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>To improve our services and develop new\r\n            ones</span></i></b></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><span>Administer focus\r\n        groups and&#10; surveys</span></li>&#10; <li class=\"MsoNormal\"><span>Conduct research and analysis&#10; of\r\n        users\' behavior to improve our services and content (for instance, we&#10; may decide to change the look and\r\n        feel or even substantially modify a&#10; given feature based on users\' behavior)</span></li>&#10; <li\r\n    class=\"MsoNormal\"><span>Develop new features and&#10; services (for example, we may decide to build a new\r\n        interests-based&#10; feature further to requests received from users).</span></li>&#10;</ul>&#10;&#10;<p\r\nclass=\"MsoNormal\"><b><i><span>To prevent, detect and fight fraud or other&#10;illegal or unauthorized\r\n            activities</span></i></b></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><span>Address ongoing\r\n        or alleged&#10; misbehavior on and off-platform</span></li>&#10; <li class=\"MsoNormal\"><span>Perform data\r\n        analysis to better&#10; understand and design countermeasures against these activities</span></li>&#10; <li\r\n    class=\"MsoNormal\"><span>Retain data related to&#10; fraudulent activities to prevent against recurrences</span>\r\n</li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>To ensure legal compliance</span></i></b></p>&#10;&#10;<ul\r\ntype=\"disc\">&#10; <li class=\"MsoNormal\"><span>Comply with legal requirements</span></li>&#10; <li class=\"MsoNormal\">\r\n    <span>Assist law enforcement</span></li>&#10; <li class=\"MsoNormal\"><span>Enforce or exercise our rights,&#10;\r\n        for example our Terms</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>To process\r\n    your&#10;information as described above, we rely on the following legal bases:</span></p>&#10;&#10;<ul\r\ntype=\"disc\">&#10; <li class=\"MsoNormal\"><i><span>Provide our service to you:</span></i><span>&#160;Most of the time,\r\n        the reason we process your&#10; information is to perform the contract that you have with us. For&#10;\r\n        instance, as you go about using our service to build meaningful&#10; connections, we use your information to\r\n        maintain your account and your&#10; profile, to make it viewable to other users and recommend other users\r\n        to&#10; you.</span></li>&#10; <li class=\"MsoNormal\"><i><span>Legitimate interests:</span></i><span>&#160;We\r\n        may use your information where we have&#10; legitimate interests to do so. For instance, we analyze users\'\r\n        behavior on&#10; our services to continuously improve our offerings, we suggest offers we&#10; think might\r\n        interest you, and we process information for administrative,&#10; fraud detection and other legal\r\n        purposes.</span></li>&#10; <li class=\"MsoNormal\"><i><span>Consent:</span></i><span>&#160;From time to time,\r\n        we may ask for your consent to&#10; use your information for certain specific reasons. You may withdraw\r\n        your&#10; consent at any time by contacting us at the address provided at the end of&#10; this Privacy\r\n        Policy.</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><b><span>6.HOW WE SHARE INFORMATION</span></b>\r\n</p>&#10;&#10;<p class=\"MsoNormal\"><span>Since our goal is to&#10;help you make meaningful connections, the main sharing\r\n    of users\' information&#10;is, of course, with other users. We also share some users\' information with\r\n    service&#10;providers and partners who assist us in operating the services, with other&#10;Match Group companies\r\n    and, in some cases, legal authorities. Read on for more&#10;details about how your information is shared with\r\n    others.</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><b><i><span>With&#10; other\r\n                users</span></i></b></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>You share information with\r\n    other users when you voluntarily&#10;disclose information on the service (including your public profile). Please\r\n    be&#10;careful with your information and make sure that the content you share is stuff&#10;that you\'re\r\n    comfortable being publically viewable since neither you nor we can&#10;control what others do with your\r\n    information once you share it.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>If you choose to limit the\r\n    audience for all or part of your&#10;profile or for certain content or information about you, then it will\r\n    be&#10;visible according to your settings.</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\">\r\n    <b><i><span>With&#10; our service providers and partners</span></i></b></li>&#10;</ul>&#10;&#10;<p\r\nclass=\"MsoNormal\"><span>We use third parties to help us operate and improve our&#10;services. These third parties\r\n    assist us with various tasks, including data&#10;hosting and maintenance, analytics, customer care, marketing,\r\n    advertising,&#10;payment processing and security operations.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>We\r\n    may also share information with partners who distribute and&#10;assist us in advertising our services. For\r\n    instance, we may share limited&#10;information on you in hashed, non-human readable form to advertising\r\n    partners.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>We follow a strict vetting process prior to engaging\r\n    any service&#10;provider or working with any partner. All of our service providers and partners&#10;must agree\r\n    to strict confidentiality obligations.</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\">\r\n    <b><i><span>With&#10; other legal Group businesses</span></i></b></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\">\r\n<span>TheSingleApp.com </span><span>is part of the Match Group family of&#10;businesses which, as of the date of\r\n    this Privacy Policy, includes websites and&#10;apps such as Tinder, OkCupid, Plenty of Fish, Match, Meetic,\r\n    BlackPeopleMeet,&#10;LoveScout24, OurTime, Pairs, ParPerfeito, and Twoo (for more\r\n    details,&#10;click&#160;</span><a href=\"http://www.mtch.com/\"\r\n    target=\"_blank\"><span>here</span></a><span>).</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>We share your\r\n    information with other Match Group companies to&#10;benefit you in two respects:</span></p>&#10;&#10;<ul\r\ntype=\"disc\">&#10; <ul type=\"circle\">&#10; <li class=\"MsoNormal\"><span>for other Match Group&#10; companies to assist\r\n            us in processing your information, as service&#10; providers, upon our instructions and on our behalf.\r\n            Assistance provided&#10; by other Match Group companies may include technical processing&#10;\r\n            operations, such as data hosting and maintenance, customer care,&#10; marketing and targeted\r\n            advertising, finance and accounting assistance,&#10; better understanding how our service is used and\r\n            users\' behavior to&#10; improve our service, securing our data and systems and fighting against&#10;\r\n            spam, abuse, fraud, infringement and other wrongdoings.</span></li>&#10; <li class=\"MsoNormal\"><span>In\r\n            order to improve your&#10; chances at building significant connections with others, we may make you&#10;\r\n            visible on other Match Group services or allow you to benefit from&#10; cross-platform functionalities.\r\n            We will of course comply with applicable&#10; law and, where relevant, notify you of any such\r\n            opportunity and allow you&#10; to agree or to refuse. Examples of such opportunities may include\r\n            the&#10; creation of a new service within Match Group, addressing a specific&#10; demographic that we\r\n            feel would be interesting to you based on your search&#10; criteria.</span></li>&#10; </ul>&#10;</ul>\r\n&#10;&#10;<p class=\"MsoNormal\"><span>We may also share information with other Match Group companies&#10;for legitimate\r\n    business purposes such as corporate audit, analysis and&#10;consolidated reporting as well as compliance with\r\n    applicable laws. We may also&#10;share user information with other Match Group companies to remove users\r\n    who&#10;violate our terms of service, or have been reported for criminal activity&#10;and/or bad behavior. In\r\n    some instances, we may remove that user from all&#10;platforms.</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li\r\n    class=\"MsoNormal\"><b><i><span>For&#10; corporate transactions</span></i></b></li>&#10;</ul>&#10;&#10;<p\r\nclass=\"MsoNormal\"><span>We may transfer your information if we are involved, whether in&#10;whole or in part, in a\r\n    merger, sale, acquisition, divestiture, restructuring,&#10;reorganization, dissolution, bankruptcy or other\r\n    change of ownership or&#10;control.</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\">\r\n    <b><i><span>When&#10; required by law</span></i></b></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>We may\r\n    disclose your information if reasonably necessary: (i) to&#10;comply with a legal process, such as a court\r\n    order, subpoena or search warrant,&#10;government / law enforcement investigation or other legal requirements;\r\n    (ii) to&#10;assist in the prevention or detection of crime (subject in each case to&#10;applicable law); or\r\n    (iii) to protect the safety of any person.</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\">\r\n    <b><i><span>To&#10; enforce legal rights</span></i></b></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>We\r\n    may also share information: (i) if disclosure would mitigate&#10;our liability in an actual or threatened\r\n    lawsuit; (ii) as necessary to protect&#10;our legal rights and legal rights of our users, business partners or\r\n    other&#10;interested parties; (iii) to enforce our agreements with you; and (iv) to&#10;investigate, prevent, or\r\n    take other action regarding illegal activity, suspected&#10;fraud or other wrongdoing.</span></p>&#10;&#10;<ul\r\ntype=\"disc\">&#10; <li class=\"MsoNormal\"><b><i><span>With&#10; your consent or at your request</span></i></b></li>\r\n&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>We may ask for your consent to share your information with\r\n    third&#10;parties. In any such case, we will make it clear why we want to share the&#10;information.</span></p>\r\n&#10;&#10;<p class=\"MsoNormal\"><span>We may use and share&#10;non-personal information (meaning information that, by\r\n    itself, does not&#10;identify who you are such as device information, general demographics,\r\n    general&#10;behavioral data, geolocation in de-identified form), as well as personal&#10;information in hashed,\r\n    non-human readable form, under any of the above&#10;circumstances. We may also share this information with other\r\n    Match Group&#10;companies and third parties (notably advertisers) to develop and deliver&#10;targeted\r\n    advertising on our services and on websites or applications of third&#10;parties, and to analyze and report on\r\n    advertising you see. We may combine this&#10;information with additional non-personal information or personal\r\n    information in&#10;hashed, non-human readable form collected from other sources. More information&#10;on our use\r\n    of cookies and similar technologies can be found in our&#160;</span><a\r\n    href=\"https://www.blackpeoplemeet.com/v3/cookiepolicy\"><span>Cookie Policy</span></a><span>.</span></p>\r\n&#10;&#10;<p class=\"MsoNormal\"><b><span>7.CROSS-BORDER DATA TRANSFERS</span></b></p>&#10;&#10;<p class=\"MsoNormal\">\r\n<span>Sharing of information&#10;laid out in&#160;</span><a\r\n    href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#HowWeShareInformation\"><span>Section\r\n        6</span></a><span>&#160;sometimes involves cross-border data transfers, for&#10;instance to the United\r\n    States of America and other jurisdictions. As an&#10;example, where the service allows for users to be located\r\n    in the European&#10;Economic Area (&#34;EEA&#34;), their personal information is transferred to&#10;countries\r\n    outside of the EEA. We use standard contract clauses approved by the&#10;European Commission or other suitable\r\n    safeguard to permit data transfers from&#10;the EEA to other countries. Standard contractual clauses are\r\n    commitments&#10;between companies transferring personal data, binding them to protect the&#10;privacy and\r\n    security of your data.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>8.YOUR RIGHTS</span></b></p>&#10;&#10;\r\n<p class=\"MsoNormal\"><span>We want you to be in&#10;control of your information, so we have provided you with the\r\n    following tools:</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><u><span>Access / Update tools\r\n            in the&#10; service.</span></u><span>&#160;Tools and account&#10; settings that help you to access,\r\n        rectify or delete information that you&#10; provided to us and that\'s associated with your account directly\r\n        within the&#10; service. If you have any question on those tools and settings, please&#10; contact our\r\n        customer care team for help&#160;</span><span><a\r\n            href=\"https://peoplemedia.custhelp.com/ci/pta/login/redirect/ask/theme/blackpeoplemeetv6/src/www.blackpeoplemeet.com_v3_help_iframehelper/pmsite/2/p_li/IL6iNIDCslL2vEaS2TbFtIx1I0TMd7TqpbwjMzdcGsKj3L8YlFwvzo_18Q1YNe5ViCYqjE2KZTanjBqR_HvNMnZbWeIeQUtXaFpL1gX_8dJ15iUDULXTGPON61LXP1_eT4WOcZ1vcNSZfmd8alJ6IPUOgoOs_N7Fj14em9F9Hi0lKqd_j6HGM3aZeJipaHRUzuS82Tuz7mHuyB_cuiycawzN_X6yKfI10Zz~44IjQ8TMqS_QzmeKckY0qIfir54qwMMJdM0hUaUTQP_XG7IC7KStf6EnGJVReMONTHNz3mJDBEzdWW6NZC~HVSwKKUrlr2fp0aV9sdQWNqXkxuO4VqUJFVOPZxtHzpg53VV18oEXrClROBekGhT3ItepJjja7IJKrRcAUUwvcgrnJzQ~A89AF1Kwcc25AFO_6lIPNVPojV4XSHLhhaMRo5ICNhgW\"\r\n            target=\"_blank\"><span>here</span></a></span><span>.</span></li>&#10; <li class=\"MsoNormal\">\r\n    <u><span>Device permissions.</span></u><span>&#160;Mobile platforms have permission systems for&#10; specific\r\n        types of device data and notifications, such as phone book and&#10; location services as well as push\r\n        notifications. You can change your&#10; settings on your device to either consent or oppose the collection\r\n        of the&#10; corresponding information or the display of the corresponding&#10; notifications. Of course, if\r\n        you do that, certain services may lose full&#10; functionality.</span></li>&#10; <li class=\"MsoNormal\">\r\n    <u><span>Deletion.</span></u><span>&#160;You can delete your account by using the&#10; corresponding\r\n        functionality directly on the service.</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>We want you\r\n    to be&#10;aware of your privacy rights. Here are a few key points to remember:</span></p>&#10;&#10;<ul\r\ntype=\"disc\">&#10; <li class=\"MsoNormal\"><u><span>Reviewing your information.</span></u><span>&#160;Applicable\r\n        privacy laws may give you the right to&#10; review the personal information we keep about you (depending on\r\n        the&#10; jurisdiction, this may be called right of access, right of portability or&#10; variations of those\r\n        terms). You can request a copy of your personal&#10; information by putting in such a\r\n        request&#160;</span><span><a\r\n            href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#HowToContactUs\"><span>here</span></a></span><span>.</span>\r\n</li>&#10; <li class=\"MsoNormal\"><u><span>Updating your information.</span></u><span>&#160;If you believe that the\r\n        information we hold about&#10; you is inaccurate or that we are no longer entitled to use it and want\r\n        to&#10; request its rectification, deletion or object to its processing, please&#10; contact\r\n        us&#160;</span><span><a\r\n            href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#HowToContactUs\"><span>here</span></a></span><span>.</span>\r\n</li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>For your protection&#10;and the protection of all of our users,\r\n    we may ask you to provide proof of&#10;identity before we can answer the above requests.</span></p>&#10;&#10;<p\r\nclass=\"MsoNormal\"><span>Keep in mind, we may&#10;reject requests for certain reasons, including if the request is\r\n    unlawful or if&#10;it may infringe on trade secrets or intellectual property or the privacy of&#10;another user.\r\n    If you wish to receive information relating to another user, such&#10;as a copy of any messages you received\r\n    from him or her through our service, the&#10;other user will have to contact our Privacy Officer to provide\r\n    their written&#10;consent before the information is released.</span></p>&#10;&#10;<p class=\"MsoNormal\">\r\n<span>Also, we may not be&#10;able to accommodate certain requests to object to the processing of\r\n    personal&#10;information, notably where such requests would not allow us to provide our&#10;service to you\r\n    anymore. For instance, we cannot provide our service if we do&#10;not have your date of birth.</span></p>\r\n&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><u><span>Uninstall.</span></u><span>&#160;You can stop all\r\n        information collection by an app&#10; by uninstalling it using the standard uninstall process for your\r\n        device.&#10; If you uninstall the app from your mobile device, the unique identifier&#10; associated with\r\n        your device will continue to be stored. If you re-install&#10; the application on the same mobile device, we\r\n        will be able to re-associate&#10; this identifier to your previous transactions and activities.</span></li>\r\n&#10; <li class=\"MsoNormal\"><u><span>Accountability.</span></u><span>&#160;In certain countries, including in the\r\n        European&#10; Union, you have a right to lodge a complaint with the appropriate data&#10; protection\r\n        authority if you have concerns about how we process your&#10; personal information. The data protection\r\n        authority you can lodge a&#10; complaint with notably may be that of your habitual residence, where you&#10;\r\n        work or where we are established.</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><b><span>9.RESIDENTS\r\n        OF CALIFORNIA</span></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>If you are a&#10;California resident, you\r\n    can request a notice disclosing the categories of&#10;personal information about you that we have shared with\r\n    third parties for their&#10;direct marketing purposes during the preceding calendar year. To request\r\n    this&#10;notice, please submit your request&#160;</span><a\r\n    href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#HowToContactUs\"><span>here</span></a><span>. Please allow\r\n    30 days for a response. For your protection and&#10;the protection of all of our users, we may ask you to\r\n    provide proof of identity&#10;before we can answer such a request.</span></p>&#10;&#10;<p class=\"MsoNormal\">\r\n<b><span>10.HOW WE PROTECT YOUR INFORMATION</span></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>We work hard\r\n    to&#10;protect you from unauthorized access to or alteration, disclosure or&#10;destruction of your personal\r\n    information. As with all technology companies,&#10;although we take steps to secure your information, we do not\r\n    promise, and you&#10;should not expect, that your personal information will always remain secure.</span></p>\r\n&#10;&#10;<p class=\"MsoNormal\"><span>We regularly monitor&#10;our systems for possible vulnerabilities and attacks and\r\n    regularly review our&#10;information collection, storage and processing practices to update our&#10;physical,\r\n    technical and organizational security measures.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>We may suspend\r\n    your&#10;use of all or part of the services without notice if we suspect or detect any&#10;breach of security.\r\n    If you believe that your account or information is no&#10;longer secure, please notify us\r\n    immediately&#160;</span><a\r\n    href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#HowToContactUs\"><span>here</span></a><span>.</span></p>\r\n&#10;&#10;<p class=\"MsoNormal\"><b><span>11.HOW LONG WE RETAIN YOUR INFORMATION</span></b></p>&#10;&#10;<p\r\nclass=\"MsoNormal\"><span>We keep your personal&#10;information only as long as we need it for legitimate business\r\n    purposes (as laid&#10;out in&#160;</span><a\r\n    href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#HowWeUseInformation\"><span>Section 5</span></a><span>)\r\n    and as permitted by applicable law.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>In practice, we delete&#10;or\r\n    anonymize your information upon deletion of your account, unless:</span></p>&#10;&#10;<ol start=\"1\" type=\"1\">\r\n&#10; <li class=\"MsoNormal\"><span>we must keep it to comply with&#10; applicable law;</span></li>&#10; <li\r\n    class=\"MsoNormal\"><span>we must keep it to evidence our&#10; compliance with applicable law;</span></li>&#10;\r\n<li class=\"MsoNormal\"><span>there is an outstanding issue,&#10; claim or dispute requiring us to keep the relevant\r\n        information until it is&#10; resolved; or</span></li>&#10; <li class=\"MsoNormal\"><span>the information must\r\n        be kept&#10; for our legitimate business interests, such as fraud prevention and&#10; enhancing users\'\r\n        safety and security. For example, information may need to&#10; be kept to prevent a user who was banned for\r\n        unsafe behavior or security&#10; incidents from opening a new account.</span></li>&#10;</ol>&#10;&#10;<p\r\nclass=\"MsoNormal\"><span>Keep in mind that even&#10;though our systems are designed to carry out data deletion\r\n    processes according&#10;to the above guidelines, we cannot promise that all data will be deleted within&#10;a\r\n    specific timeframe due to technical constraints.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>12.CHILDREN\'S\r\n        PRIVACY</span></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>Our services are restricted&#10;to users who are\r\n    18 years of age or older. We do not permit users under the age&#10;of 18 on our platform and we do not knowingly\r\n    collect personal information from&#10;anyone under the age of 18. If you suspect that a user is under the age of\r\n    18,&#10;please use the reporting mechanism available through the service.</span></p>&#10;&#10;<p\r\nclass=\"MsoNormal\"><b><span>13.PRIVACY POLICY CHANGES</span></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>Because\r\n    we\'re always&#10;looking for new and innovative ways to help you build meaningful connections,&#10;this policy\r\n    may change over time. We will notify you before any material&#10;changes take effect so that you have time to\r\n    review the changes.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>14.HOW TO CONTACT US</span></b></p>\r\n&#10;&#10;<p class=\"MsoNormal\"><span>If you have questions&#10;about this Privacy Policy, here\'s how you can reach\r\n    us:</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>Online:</span></b><span>&#160;</span><a\r\n    href=\"https://peoplemedia.custhelp.com/ci/pta/login/redirect/ask/theme/blackpeoplemeetv6/src/www.blackpeoplemeet.com_v3_help_iframehelper/pmsite/2/p_li/IL6iNIDCslL2vEaS2TbFtIx1I0TMd7TqpbwjMzdcGsKj3L8YlFwvzo_18Q1YNe5ViCYqjE2KZTanjBqR_HvNMnZbWeIeQUtXaFpL1gX_8dJ15iUDULXTGPON61LXP1_eT4WOcZ1vcNSZfmd8alJ6IPUOgoOs_N7Fj14em9F9Hi0lKqd_j6HGM3aZeJipaHRUzuS82Tuz7mHuyB_cuiycawzN_X6yKfI10Zz~44IjQ8TMqS_QzmeKckY0qIfir54qwMMJdM0hUaUTQP_XG7IC7KStf6EnGJVReMONTHNz3mJDBEzdWW6NZC~HVSwKKUrlr2fp0aV9sdQWNqXkxuO4VqUJFVOPZxtHzpg53VV18oEXrClROBekGhT3ItepJjja7IJKrRcAUUwvcgrnJzQ~A89AF1Kwcc25AFO_6lIPNVPojV4XSHLhhaMRo5ICNhgW\"\r\n    target=\"_blank\"><span>here</span></a><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>By\r\n        Post:</span></b><span><br>&#10;Privacy Officer<br>&#10;meadia group address and name here</span></p>', '2023-07-25');

-- --------------------------------------------------------

--
-- Table structure for table `fcm_django_fcmdevice`
--

CREATE TABLE `fcm_django_fcmdevice` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `device_id` varchar(150) DEFAULT NULL,
  `registration_id` longtext NOT NULL,
  `type` varchar(10) NOT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `fcm_django_fcmdevice`
--

INSERT INTO `fcm_django_fcmdevice` (`id`, `name`, `active`, `date_created`, `device_id`, `registration_id`, `type`, `user_id`) VALUES
(1, NULL, 0, '2023-04-10 07:20:54.899703', NULL, 'cI_coYiuCtU:APA91bH6cH_qb1awsqR27I7eWBT1LU9zBfWZ336ANALUjOGIco149pusGasoqsVMyos-8TLrQAkOFV7wbiY2KfhVmSMU2X7vZqdOJBjy328AeoX9t70nnKenMZ08rQslX2uH6wWyhZ6t', 'android', 1),
(2, NULL, 0, '2023-04-12 06:26:20.523118', NULL, 'cI_coYiuCtU:APA91bH6cH_qb1awsqR27I7eWBT1LU9zBfWZ336ANALUjOGIco149pusGasoqsVMyos-8TLrQAkOFV7wbiY2KfhVmSMU2X7vZqdOJBjy328AeoX9t70nnKenMZ08rQslX2uH6wWyhZ6t', 'android', 6),
(3, NULL, 0, '2023-04-12 06:27:57.477443', NULL, 'cI_coYiuCtU:APA91bH6cH_qb1awsqR27I7eWBT1LU9zBfWZ336ANALUjOGIco149pusGasoqsVMyos-8TLrQAkOFV7wbiY2KfhVmSMU2X7vZqdOJBjy328AeoX9t70nnKenMZ08rQslX2uH6wWyhZ6t', 'android', 7),
(4, NULL, 0, '2023-04-12 06:44:53.447688', NULL, 'cI_coYiuCtU:APA91bH6cH_qb1awsqR27I7eWBT1LU9zBfWZ336ANALUjOGIco149pusGasoqsVMyos-8TLrQAkOFV7wbiY2KfhVmSMU2X7vZqdOJBjy328AeoX9t70nnKenMZ08rQslX2uH6wWyhZ6t', 'android', 10),
(5, NULL, 0, '2023-04-18 10:17:18.721489', NULL, 'ebkW91p5pVc:APA91bF4BHBhhTIZnQUq0prpTzovvX7iMpw6zg2v8ZzhKcsEi2FJUGoS-6rl2vZgAaeDTGsj3bqdnoF-Axn0_dQsgblTQ7tXvdM9fNR7JxotLAk5_DaU1kzaXPLx7Dva5egxQoezZFQQ', 'android', 11),
(6, NULL, 0, '2023-04-18 10:27:39.188849', NULL, 'ebkW91p5pVc:APA91bF4BHBhhTIZnQUq0prpTzovvX7iMpw6zg2v8ZzhKcsEi2FJUGoS-6rl2vZgAaeDTGsj3bqdnoF-Axn0_dQsgblTQ7tXvdM9fNR7JxotLAk5_DaU1kzaXPLx7Dva5egxQoezZFQQ', 'android', 9),
(7, NULL, 0, '2023-04-18 10:51:57.426703', NULL, 'c2KTPxyo2n8:APA91bFdpDkV9QKbI71uU_smA7OMssZK6hyb9vDp6wT4kcXyw9_r5P7xRwdaw1VTZp7nvzsDZUF_qJcuqNOibz9mIwwIbrLZVzeeXT6LzeIfokY6LM0TMfXr0HG48PYWRB14Uue68pzw', 'android', 9),
(8, NULL, 0, '2023-04-18 11:33:20.031017', NULL, 'c2KTPxyo2n8:APA91bFdpDkV9QKbI71uU_smA7OMssZK6hyb9vDp6wT4kcXyw9_r5P7xRwdaw1VTZp7nvzsDZUF_qJcuqNOibz9mIwwIbrLZVzeeXT6LzeIfokY6LM0TMfXr0HG48PYWRB14Uue68pzw', 'android', 10),
(9, NULL, 0, '2023-06-09 10:13:52.051874', NULL, 'c2KTPxyo2n8:APA91bFdpDkV9QKbI71uU_smA7OMssZK6hyb9vDp6wT4kcXyw9_r5P7xRwdaw1VTZp7nvzsDZUF_qJcuqNOibz9mIwwIbrLZVzeeXT6LzeIfokY6LM0TMfXr0HG48PYWRB14Uue68pzw', 'android', 29),
(10, NULL, 0, '2023-06-19 09:59:25.916363', NULL, 'f3ryTT3A_uE:APA91bGvzH92RP7AMsaUAnX9UwzvaMHGar8F3x0ZICFsSy81SZN04k7RjhENcIpGRQBb6qiUgpsulf5rvYuu91ShyHzEXHz_1PMvOFFydwQZoG_iF-tdzL1Q10eegFmDTklE1HedCEfF', 'android', 29),
(11, NULL, 0, '2023-06-21 10:10:58.361354', NULL, 'c2KTPxyo2n8:APA91bFdpDkV9QKbI71uU_smA7OMssZK6hyb9vDp6wT4kcXyw9_r5P7xRwdaw1VTZp7nvzsDZUF_qJcuqNOibz9mIwwIbrLZVzeeXT6LzeIfokY6LM0TMfXr0HG48PYWRB14Uue68pzw', 'android', 10),
(12, NULL, 0, '2023-06-29 06:03:12.259625', NULL, 'cMvBlvU2UQ4:APA91bH9WWp7udAn041B3RuVxzkYBx_Vet4l1cHtAx6dzAU6uX1CvRZZO9qFKh4eUYqU11jN5BKfJqqgao71qKJ9W3Mgc38qkXkth3-YKEn0wvFnDajbadjPhH1xyBhsckPGiV8dwQks', 'android', 9),
(13, NULL, 0, '2023-07-13 05:40:26.805883', NULL, 'c2KTPxyo2n8:APA91bFdpDkV9QKbI71uU_smA7OMssZK6hyb9vDp6wT4kcXyw9_r5P7xRwdaw1VTZp7nvzsDZUF_qJcuqNOibz9mIwwIbrLZVzeeXT6LzeIfokY6LM0TMfXr0HG48PYWRB14Uue68pzw', 'android', 9),
(14, NULL, 0, '2023-07-13 05:50:29.162828', NULL, 'c2KTPxyo2n8:APA91bFdpDkV9QKbI71uU_smA7OMssZK6hyb9vDp6wT4kcXyw9_r5P7xRwdaw1VTZp7nvzsDZUF_qJcuqNOibz9mIwwIbrLZVzeeXT6LzeIfokY6LM0TMfXr0HG48PYWRB14Uue68pzw', 'android', 13),
(15, NULL, 0, '2023-07-18 05:55:01.488330', NULL, 'deHUyf9dl5k:APA91bE_DiJl-twtRLzQOFlxcSBc_OVfVp7Vn5567D0heZeaDxMW2wxsjxHau-7WUa_TO_3XuhxYx-f9bWJJ0iSWjB_eOFlYMPEoGY5tUOmsVyj5HirvUKfm7wh6SFGy4X1POkrBEuBW', 'android', 91),
(16, NULL, 1, '2023-09-25 10:06:48.418384', NULL, 'c2KTPxyo2n8:APA91bFdpDkV9QKbI71uU_smA7OMssZK6hyb9vDp6wT4kcXyw9_r5P7xRwdaw1VTZp7nvzsDZUF_qJcuqNOibz9mIwwIbrLZVzeeXT6LzeIfokY6LM0TMfXr0HG48PYWRB14Uue68pzw', 'android', 10);

-- --------------------------------------------------------

--
-- Table structure for table `oauth2_provider_accesstoken`
--

CREATE TABLE `oauth2_provider_accesstoken` (
  `id` bigint NOT NULL,
  `token` varchar(255) NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext NOT NULL,
  `application_id` bigint DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `source_refresh_token_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth2_provider_application`
--

CREATE TABLE `oauth2_provider_application` (
  `id` bigint NOT NULL,
  `client_id` varchar(100) NOT NULL,
  `redirect_uris` longtext NOT NULL,
  `client_type` varchar(32) NOT NULL,
  `authorization_grant_type` varchar(32) NOT NULL,
  `client_secret` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` int DEFAULT NULL,
  `skip_authorization` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth2_provider_grant`
--

CREATE TABLE `oauth2_provider_grant` (
  `id` bigint NOT NULL,
  `code` varchar(255) NOT NULL,
  `expires` datetime(6) NOT NULL,
  `redirect_uri` varchar(255) NOT NULL,
  `scope` longtext NOT NULL,
  `application_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth2_provider_refreshtoken`
--

CREATE TABLE `oauth2_provider_refreshtoken` (
  `id` bigint NOT NULL,
  `token` varchar(255) NOT NULL,
  `access_token_id` bigint DEFAULT NULL,
  `application_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `revoked` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services_addcustomer`
--

CREATE TABLE `services_addcustomer` (
  `id` int NOT NULL,
  `name_of_customer` varchar(100) NOT NULL,
  `email_of_customer` varchar(254) NOT NULL,
  `phone_of_customer` varchar(15) NOT NULL,
  `company_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services_advertisement`
--

CREATE TABLE `services_advertisement` (
  `id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `created_date` date NOT NULL,
  `from_date_to_display` date DEFAULT NULL,
  `to_date_to_display` date NOT NULL,
  `staff_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services_notification`
--

CREATE TABLE `services_notification` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `other_id` int NOT NULL,
  `date` datetime(6) NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `msg` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `services_notification`
--

INSERT INTO `services_notification` (`id`, `user_id`, `other_id`, `date`, `is_read`, `msg`) VALUES
(1, 3, 1, '2023-03-24 10:54:36.205910', 1, ' Gopi  Liked your Profile'),
(2, 1, 3, '2023-03-24 10:55:04.046878', 1, ' Rabiyulfahim  Liked your Profile'),
(3, 1, 4, '2023-03-24 10:57:38.426467', 0, ' Rabiyulfahim  Favoured your Profile'),
(4, 5, 3, '2023-03-24 11:05:08.116492', 1, ' Prabhu  Favoured your Profile'),
(5, 3, 5, '2023-03-24 11:05:56.857819', 0, ' Gopi  Favoured your Profile'),
(6, 5, 3, '2023-03-24 11:26:12.504003', 1, ' Prabhu  Viewed your Profile'),
(7, 3, 5, '2023-03-24 11:26:38.827736', 0, ' Gopi  Viewed your Profile'),
(8, 5, 3, '2023-03-24 11:30:39.918392', 1, ' Prabhu  Flirted your Profile'),
(9, 3, 5, '2023-03-24 11:31:51.149086', 0, ' Gopi  Flirted your Profile'),
(10, 1, 3, '2023-03-24 12:59:29.231614', 1, ' Rabiyulfahim  Liked your Profile Image'),
(11, 3, 1, '2023-03-24 12:59:54.675808', 1, ' Gopi  Liked your Profile Image'),
(12, 3, 1, '2023-03-24 13:01:29.215537', 1, ' Gopi  Commented your Profile Image'),
(13, 1, 3, '2023-03-25 07:04:46.176155', 1, ' Rabiyulfahim  send a Friend Request'),
(14, 1, 3, '2023-03-25 07:07:19.275680', 1, ' Rabiyulfahim  send a Friend Request'),
(15, 3, 5, '2023-03-28 05:43:52.154937', 0, ' Gopi  Viewed your Profile'),
(16, 3, 1, '2023-03-28 05:43:55.557979', 1, ' Gopi  Commented your Profile Image'),
(17, 1, 3, '2023-04-10 07:27:54.218232', 1, ' Rabiyulfahim  Viewed your Profile'),
(18, 13, 9, '2023-04-18 10:35:13.591076', 1, ' Kamali  Viewed your Profile'),
(19, 13, 9, '2023-04-18 10:35:27.536194', 1, ' Kamali  Viewed your Profile'),
(20, 9, 13, '2023-04-18 10:35:35.206967', 1, ' prabhu  Viewed your Profile'),
(21, 9, 13, '2023-04-18 10:36:54.071210', 1, ' prabhu  Viewed your Profile'),
(22, 9, 13, '2023-04-18 10:36:55.394871', 1, ' prabhu  Flirted your Profile'),
(23, 13, 9, '2023-04-18 10:36:59.164112', 1, ' Kamali  Viewed your Profile'),
(24, 13, 9, '2023-04-18 10:37:05.494119', 1, ' Kamali  Flirted your Profile'),
(25, 9, 13, '2023-04-18 10:37:40.356804', 1, ' prabhu  Viewed your Profile'),
(26, 13, 9, '2023-04-18 10:37:43.709148', 1, ' Kamali  Viewed your Profile'),
(27, 13, 9, '2023-04-18 10:38:03.314625', 1, ' Kamali  Favoured your Profile'),
(28, 13, 9, '2023-04-18 10:38:28.026796', 1, ' Kamali  Viewed your Profile'),
(29, 9, 13, '2023-04-18 10:39:30.592189', 1, ' prabhu  Viewed your Profile'),
(30, 9, 13, '2023-04-18 10:39:35.996962', 1, ' prabhu  Liked your Profile Image'),
(31, 13, 9, '2023-04-18 10:39:40.581524', 1, ' Kamali  Viewed your Profile'),
(32, 13, 9, '2023-04-18 10:39:58.301378', 1, ' Kamali  Liked your Profile Image'),
(33, 13, 9, '2023-04-18 10:40:04.506237', 1, ' Kamali  Commented your Profile Image'),
(34, 13, 9, '2023-04-18 10:40:40.071496', 1, ' Kamali  Viewed your Profile'),
(35, 9, 13, '2023-04-18 10:41:06.476916', 1, ' prabhu  Viewed your Profile'),
(36, 9, 13, '2023-04-18 10:41:13.725600', 1, ' prabhu  Commented your Profile Image'),
(37, 13, 9, '2023-04-18 10:41:54.778940', 1, ' Kamali  Viewed your Profile'),
(38, 9, 13, '2023-04-18 10:42:07.865127', 1, ' prabhu  Viewed your Profile'),
(39, 9, 13, '2023-04-18 10:42:10.532832', 1, ' prabhu  send a Friend Request'),
(40, 13, 9, '2023-04-18 10:42:23.768910', 1, ' Kamali  Viewed your Profile'),
(41, 9, 13, '2023-04-18 10:42:46.330504', 1, ' prabhu  Viewed your Profile'),
(42, 13, 9, '2023-04-18 10:42:48.513043', 1, ' Kamali  Viewed your Profile'),
(43, 13, 9, '2023-04-18 10:42:52.378101', 1, ' Kamali  send a Friend Request'),
(44, 13, 9, '2023-04-18 10:43:02.642255', 1, ' Kamali  Viewed your Profile'),
(45, 9, 13, '2023-04-18 10:43:27.870250', 1, 'prabhu accepted your friend request'),
(46, 13, 9, '2023-04-18 10:43:32.196659', 1, ' Kamali  Viewed your Profile'),
(47, 9, 13, '2023-04-18 10:43:33.812805', 1, ' prabhu  Viewed your Profile'),
(48, 9, 13, '2023-04-18 10:43:55.940582', 1, ' prabhu  Viewed your Profile'),
(49, 9, 13, '2023-04-18 10:48:25.973298', 1, ' prabhu  Viewed your Profile'),
(50, 9, 13, '2023-04-18 10:49:40.835673', 1, ' prabhu  Viewed your Profile'),
(51, 9, 13, '2023-04-18 10:50:39.518163', 1, ' prabhu  Viewed your Profile'),
(52, 13, 9, '2023-04-18 10:50:59.244448', 1, ' Kamali  Viewed your Profile'),
(53, 13, 9, '2023-04-18 10:51:04.402589', 1, ' Kamali  send a Friend Request'),
(54, 9, 13, '2023-04-18 10:52:12.929944', 1, 'prabhu accepted your friend request'),
(55, 9, 13, '2023-04-18 10:52:48.174081', 1, ' prabhu  Viewed your Profile'),
(56, 13, 9, '2023-04-18 10:52:49.044878', 1, ' Kamali  Viewed your Profile'),
(57, 9, 13, '2023-04-18 10:53:11.467789', 1, ' prabhu  Viewed your Profile'),
(58, 13, 9, '2023-04-18 10:53:25.133193', 1, ' Kamali  Viewed your Profile'),
(59, 9, 13, '2023-04-18 10:53:55.123399', 1, ' prabhu  Viewed your Profile'),
(60, 9, 13, '2023-04-18 10:54:11.509361', 1, ' prabhu  Viewed your Profile'),
(61, 9, 13, '2023-04-18 10:55:55.193868', 1, ' prabhu  Viewed your Profile'),
(62, 9, 13, '2023-04-20 06:57:39.146914', 1, ' prabhu  Viewed your Profile'),
(63, 9, 13, '2023-04-20 06:58:25.316311', 1, ' prabhu  Favoured your Profile'),
(64, 9, 13, '2023-04-20 07:02:45.383790', 1, ' prabhu  Viewed your Profile'),
(65, 9, 13, '2023-04-20 07:18:05.202759', 1, ' prabhu  Viewed your Profile'),
(66, 9, 13, '2023-04-20 07:18:40.250259', 1, ' prabhu  Viewed your Profile'),
(67, 9, 13, '2023-05-17 09:23:58.252829', 1, ' prabhu  Viewed your Profile'),
(68, 14, 24, '2023-06-09 06:55:51.494928', 1, ' Thesingle  Viewed your Profile'),
(69, 29, 13, '2023-06-09 10:35:55.514268', 1, ' Sanjay  Viewed your Profile'),
(70, 9, 13, '2023-06-09 11:12:07.529329', 1, ' prabhu  Viewed your Profile'),
(71, 29, 9, '2023-06-09 11:24:42.808406', 1, ' Sanjay  Viewed your Profile'),
(72, 29, 1, '2023-06-09 12:02:46.113021', 0, ' Sanjay  Viewed your Profile'),
(73, 29, 1, '2023-06-09 12:02:49.042572', 0, ' Sanjay  send a Friend Request'),
(74, 29, 9, '2023-06-09 12:02:54.820239', 1, ' Sanjay  Viewed your Profile'),
(75, 29, 9, '2023-06-09 12:02:56.257146', 1, ' Sanjay  send a Friend Request'),
(76, 29, 9, '2023-06-09 12:03:00.837547', 1, ' Sanjay  Viewed your Profile'),
(77, 29, 9, '2023-06-09 12:03:21.317118', 1, ' Sanjay  Liked your Profile'),
(78, 29, 9, '2023-06-09 12:09:47.514749', 1, ' Sanjay  Viewed your Profile'),
(79, 29, 9, '2023-06-09 12:10:19.234214', 1, ' Sanjay  Viewed your Profile'),
(80, 29, 3, '2023-06-09 12:36:15.116495', 1, ' Sanjay  Viewed your Profile'),
(81, 9, 13, '2023-06-12 05:09:22.098436', 1, ' prabhu  Viewed your Profile'),
(82, 9, 13, '2023-06-12 05:09:24.336103', 1, ' prabhu  send a Friend Request'),
(83, 9, 13, '2023-06-12 06:32:47.614187', 1, ' prabhu  Viewed your Profile'),
(84, 9, 29, '2023-06-12 06:34:32.437304', 1, ' prabhu  Viewed your Profile'),
(85, 9, 1, '2023-06-12 06:44:29.624462', 0, ' prabhu  Viewed your Profile'),
(86, 9, 29, '2023-06-12 06:45:04.424814', 1, ' prabhu  Viewed your Profile'),
(87, 9, 29, '2023-06-12 06:45:06.205197', 1, ' prabhu  Viewed your Profile'),
(88, 9, 29, '2023-06-12 06:45:06.542806', 1, ' prabhu  Viewed your Profile'),
(89, 9, 29, '2023-06-12 06:45:06.874526', 1, ' prabhu  Viewed your Profile'),
(90, 9, 29, '2023-06-12 06:45:07.200526', 1, ' prabhu  Viewed your Profile'),
(91, 9, 29, '2023-06-12 06:45:07.525431', 1, ' prabhu  Viewed your Profile'),
(92, 9, 29, '2023-06-12 06:45:07.851855', 1, ' prabhu  Viewed your Profile'),
(93, 9, 29, '2023-06-12 06:45:08.181187', 1, ' prabhu  Viewed your Profile'),
(94, 9, 29, '2023-06-12 06:45:08.520263', 1, ' prabhu  Viewed your Profile'),
(95, 9, 29, '2023-06-12 06:45:08.828131', 1, ' prabhu  Viewed your Profile'),
(96, 9, 29, '2023-06-12 06:47:44.642710', 1, ' prabhu  Viewed your Profile'),
(97, 9, 13, '2023-06-12 06:48:40.595617', 1, ' prabhu  Viewed your Profile'),
(98, 9, 1, '2023-06-12 06:59:42.563653', 0, ' prabhu  Viewed your Profile'),
(99, 9, 5, '2023-06-12 06:59:50.133021', 0, ' prabhu  Viewed your Profile'),
(100, 9, 13, '2023-06-12 10:40:01.548207', 1, ' prabhu  Viewed your Profile'),
(101, 9, 29, '2023-06-12 10:42:36.181866', 1, ' prabhu  Viewed your Profile'),
(102, 9, 29, '2023-06-12 10:42:56.444534', 1, ' prabhu  Viewed your Profile'),
(103, 9, 13, '2023-06-12 10:42:58.688182', 1, ' prabhu  Viewed your Profile'),
(104, 9, 18, '2023-06-12 11:44:09.605168', 0, ' prabhu  Viewed your Profile'),
(105, 29, 9, '2023-06-12 11:59:03.927636', 1, ' Sanjay  Viewed your Profile'),
(106, 29, 3, '2023-06-12 12:20:50.278247', 1, ' Sanjay  Viewed your Profile'),
(107, 29, 24, '2023-06-12 12:28:10.167769', 1, ' Sanjay  Viewed your Profile'),
(108, 29, 24, '2023-06-12 12:28:15.006995', 1, ' Sanjay  Liked your Profile'),
(109, 29, 24, '2023-06-12 12:28:21.807494', 1, ' Sanjay  Viewed your Profile'),
(110, 29, 24, '2023-06-12 12:28:26.261493', 1, ' Sanjay  send a Friend Request'),
(111, 29, 24, '2023-06-12 12:28:30.346895', 1, ' Sanjay  Flirted your Profile'),
(112, 29, 24, '2023-06-12 12:28:30.350577', 1, ' Sanjay  Favoured your Profile'),
(113, 29, 7, '2023-06-12 12:28:37.345436', 0, ' Sanjay  Viewed your Profile'),
(114, 29, 7, '2023-06-12 12:28:40.329472', 0, ' Sanjay  Favoured your Profile'),
(115, 29, 9, '2023-06-12 12:28:46.753355', 1, ' Sanjay  Viewed your Profile'),
(116, 29, 9, '2023-06-12 12:30:35.197779', 1, ' Sanjay  Viewed your Profile'),
(117, 9, 29, '2023-06-12 13:31:27.752270', 1, ' prabhu  Viewed your Profile'),
(118, 9, 29, '2023-06-12 13:31:40.001500', 1, ' prabhu  Liked your Profile'),
(119, 9, 29, '2023-06-12 13:31:40.594672', 1, ' prabhu  Favoured your Profile'),
(120, 9, 29, '2023-06-12 13:31:40.603268', 1, ' prabhu  Flirted your Profile'),
(121, 9, 31, '2023-06-13 05:25:19.812663', 0, ' prabhu  Viewed your Profile'),
(122, 9, 31, '2023-06-13 05:25:28.278352', 0, ' prabhu  send a Friend Request'),
(123, 9, 29, '2023-06-13 05:25:37.835853', 1, ' prabhu  Viewed your Profile'),
(124, 9, 29, '2023-06-13 05:25:41.217420', 1, ' prabhu  send a Friend Request'),
(125, 29, 9, '2023-06-13 05:31:29.521022', 1, ' Sanjay  Viewed your Profile'),
(126, 29, 9, '2023-06-13 05:31:38.720482', 1, ' Sanjay  Favoured your Profile'),
(127, 29, 9, '2023-06-13 05:31:38.763988', 1, ' Sanjay  Flirted your Profile'),
(128, 29, 9, '2023-06-13 05:31:48.982586', 1, ' Sanjay  Viewed your Profile'),
(129, 29, 9, '2023-06-13 05:32:12.772876', 1, ' Sanjay  Viewed your Profile'),
(130, 29, 9, '2023-06-13 05:32:13.171723', 1, ' Sanjay  Viewed your Profile'),
(131, 9, 29, '2023-06-13 05:32:27.921880', 1, ' prabhu  Viewed your Profile'),
(132, 9, 29, '2023-06-13 05:32:36.838043', 1, ' prabhu  Liked your Profile'),
(133, 9, 29, '2023-06-13 05:33:04.883401', 1, ' prabhu  Viewed your Profile'),
(134, 9, 29, '2023-06-13 05:33:30.831581', 1, ' prabhu  Commented your Profile Image'),
(135, 9, 29, '2023-06-13 05:33:33.874596', 1, ' prabhu  Commented your Profile Image'),
(136, 9, 29, '2023-06-13 05:33:42.439489', 1, ' prabhu  Liked your Profile Image'),
(137, 9, 29, '2023-06-13 05:33:43.945196', 1, ' prabhu  Liked your Profile Image'),
(138, 9, 29, '2023-06-13 05:33:48.531446', 1, ' prabhu  Liked your Profile Image'),
(139, 9, 29, '2023-06-13 05:34:02.552268', 1, ' prabhu  Liked your Profile Image'),
(140, 9, 29, '2023-06-13 05:34:06.933254', 1, ' prabhu  Liked your Profile Image'),
(141, 9, 29, '2023-06-13 05:34:08.112838', 1, ' prabhu  Liked your Profile Image'),
(142, 9, 29, '2023-06-13 05:34:09.176663', 1, ' prabhu  Liked your Profile Image'),
(143, 29, 9, '2023-06-13 05:45:37.882858', 1, ' Sanjay  Viewed your Profile'),
(144, 29, 9, '2023-06-13 05:45:50.256401', 1, ' Sanjay  Liked your Profile'),
(145, 9, 19, '2023-06-18 16:08:09.152621', 0, ' prabhu  Viewed your Profile'),
(146, 9, 1, '2023-06-18 16:08:24.721833', 0, ' prabhu  Viewed your Profile'),
(147, 29, 31, '2023-06-19 09:59:49.393921', 0, ' Sanjay  Viewed your Profile'),
(148, 29, 9, '2023-06-19 10:00:12.618077', 1, ' Sanjay  Viewed your Profile'),
(149, 9, 30, '2023-06-20 09:45:15.903536', 1, ' prabhu  Viewed your Profile'),
(150, 32, 13, '2023-06-20 09:58:59.108446', 1, ' mohamed  Viewed your Profile'),
(151, 32, 13, '2023-06-20 10:00:13.722060', 1, ' mohamed  Viewed your Profile'),
(152, 32, 13, '2023-06-20 10:00:17.467448', 1, ' mohamed  send a Friend Request'),
(153, 9, 32, '2023-06-21 05:30:58.063078', 0, ' prabhu  Viewed your Profile'),
(154, 9, 32, '2023-06-21 05:31:13.299481', 0, ' prabhu  send a Friend Request'),
(155, 9, 32, '2023-06-21 05:31:17.819881', 0, ' prabhu  Liked your Profile'),
(156, 9, 36, '2023-06-21 07:13:14.301152', 0, ' prabhu  Viewed your Profile'),
(157, 9, 36, '2023-06-21 07:13:50.567022', 0, ' prabhu  Viewed your Profile'),
(158, 9, 36, '2023-06-21 07:14:59.620904', 0, ' prabhu  Viewed your Profile'),
(159, 9, 36, '2023-06-21 07:15:26.064842', 0, ' prabhu  Viewed your Profile'),
(160, 9, 34, '2023-06-21 07:19:57.296059', 0, ' prabhu  Viewed your Profile'),
(161, 9, 3, '2023-06-21 07:25:06.908521', 1, ' prabhu  Viewed your Profile'),
(162, 9, 3, '2023-06-21 07:25:19.403165', 1, ' prabhu  Viewed your Profile'),
(163, 9, 3, '2023-06-21 07:25:23.641964', 1, ' prabhu  Viewed your Profile'),
(164, 9, 3, '2023-06-21 07:29:49.756946', 1, ' prabhu  Viewed your Profile'),
(165, 9, 1, '2023-06-21 07:31:00.307056', 0, ' prabhu  Viewed your Profile'),
(166, 9, 36, '2023-06-21 07:31:20.080190', 0, ' prabhu  Viewed your Profile'),
(167, 9, 13, '2023-06-21 07:31:41.274756', 1, ' prabhu  Viewed your Profile'),
(168, 9, 36, '2023-06-21 07:33:30.359447', 0, ' prabhu  Viewed your Profile'),
(169, 9, 29, '2023-06-21 07:35:45.454369', 0, ' prabhu  Viewed your Profile'),
(170, 9, 29, '2023-06-21 07:35:58.209983', 0, ' prabhu  Viewed your Profile'),
(171, 9, 29, '2023-06-21 07:36:37.250988', 0, ' prabhu  Viewed your Profile'),
(172, 9, 30, '2023-06-21 09:08:55.283197', 1, ' prabhu  Viewed your Profile'),
(173, 9, 32, '2023-06-21 09:24:58.564846', 0, ' prabhu  Viewed your Profile'),
(174, 9, 5, '2023-06-21 09:33:55.627651', 0, ' prabhu  Viewed your Profile'),
(175, 9, 3, '2023-06-21 09:34:10.952845', 1, ' prabhu  Viewed your Profile'),
(176, 9, 6, '2023-06-21 09:34:25.102049', 0, ' prabhu  Viewed your Profile'),
(177, 9, 29, '2023-06-21 10:09:29.612136', 0, ' prabhu  Viewed your Profile'),
(178, 9, 34, '2023-06-21 10:18:39.087895', 0, ' prabhu  Viewed your Profile'),
(179, 9, 32, '2023-06-21 10:20:34.097730', 0, ' prabhu  Viewed your Profile'),
(180, 9, 3, '2023-06-21 11:12:33.414822', 1, ' prabhu  Viewed your Profile'),
(181, 9, 3, '2023-06-21 11:12:51.234277', 1, ' prabhu  send a Friend Request'),
(182, 9, 11, '2023-06-21 11:13:13.601177', 0, ' prabhu  Viewed your Profile'),
(183, 9, 11, '2023-06-21 11:13:53.339177', 0, ' prabhu  send a Friend Request'),
(184, 9, 5, '2023-06-21 11:15:53.438667', 0, ' prabhu  Viewed your Profile'),
(185, 9, 32, '2023-06-21 11:16:29.657447', 0, ' prabhu  Viewed your Profile'),
(186, 9, 29, '2023-06-21 11:18:16.332086', 0, ' prabhu  Viewed your Profile'),
(187, 9, 32, '2023-06-21 12:02:51.311391', 0, ' prabhu  Viewed your Profile'),
(188, 9, 32, '2023-06-21 12:03:09.755507', 0, ' prabhu  Viewed your Profile'),
(189, 9, 32, '2023-06-21 12:03:22.782182', 0, ' prabhu  Viewed your Profile'),
(190, 9, 32, '2023-06-21 12:03:31.778256', 0, ' prabhu  Favoured your Profile'),
(191, 9, 32, '2023-06-21 12:10:37.274094', 0, ' prabhu  Viewed your Profile'),
(192, 9, 3, '2023-06-21 12:12:26.527108', 1, ' prabhu  Viewed your Profile'),
(193, 9, 3, '2023-06-21 12:12:45.952931', 1, ' prabhu  Liked your Profile'),
(194, 9, 1, '2023-06-21 12:12:51.821347', 0, ' prabhu  Viewed your Profile'),
(195, 37, 13, '2023-06-21 12:14:03.257682', 1, ' Yusuf  Viewed your Profile'),
(196, 37, 13, '2023-06-21 12:14:05.987340', 1, ' Yusuf  send a Friend Request'),
(197, 37, 13, '2023-06-21 12:14:24.878601', 1, ' Yusuf  Liked your Profile'),
(198, 37, 13, '2023-06-21 12:14:24.879581', 1, ' Yusuf  Favoured your Profile'),
(199, 37, 13, '2023-06-21 12:14:46.573918', 1, ' Yusuf  Viewed your Profile'),
(200, 37, 13, '2023-06-21 12:15:10.052997', 1, ' Yusuf  send a Friend Request'),
(201, 37, 13, '2023-06-21 12:16:34.608888', 1, ' Yusuf  Viewed your Profile'),
(202, 30, 13, '2023-06-21 12:17:01.741509', 1, ' yusuf  Viewed your Profile'),
(203, 30, 13, '2023-06-21 12:17:54.167799', 1, ' yusuf  Viewed your Profile'),
(204, 33, 13, '2023-06-21 12:21:10.856937', 1, ' yusuf  Viewed your Profile'),
(205, 9, 1, '2023-06-21 12:24:51.499438', 0, ' prabhu  Viewed your Profile'),
(206, 9, 33, '2023-06-21 12:41:28.052434', 1, ' prabhu  Viewed your Profile'),
(207, 9, 33, '2023-06-21 12:41:30.731384', 1, ' prabhu  send a Friend Request'),
(208, 33, 9, '2023-06-21 12:55:59.013288', 1, ' yusuf  Viewed your Profile'),
(209, 9, 33, '2023-06-21 12:56:14.089893', 1, ' prabhu  Viewed your Profile'),
(210, 9, 33, '2023-06-21 12:56:17.402103', 1, ' prabhu  send a Friend Request'),
(211, 33, 9, '2023-06-21 12:56:44.305753', 1, ' yusuf  Viewed your Profile'),
(212, 33, 9, '2023-06-21 12:56:52.137130', 1, ' yusuf  Favoured your Profile'),
(213, 33, 9, '2023-06-21 12:57:00.354938', 1, ' yusuf  Viewed your Profile'),
(214, 33, 9, '2023-06-21 12:57:05.706415', 1, ' yusuf  Liked your Profile'),
(215, 38, 13, '2023-06-21 13:05:56.484402', 1, ' Ravanan  Viewed your Profile'),
(216, 38, 13, '2023-06-21 13:06:08.566472', 1, ' Ravanan  send a Friend Request'),
(217, 38, 13, '2023-06-21 13:06:19.340566', 1, ' Ravanan  Flirted your Profile'),
(218, 38, 13, '2023-06-21 13:06:19.348262', 1, ' Ravanan  Liked your Profile'),
(219, 38, 13, '2023-06-21 13:06:19.354635', 1, ' Ravanan  Favoured your Profile'),
(220, 33, 13, '2023-06-21 13:10:24.375154', 1, ' yusuf  Viewed your Profile'),
(221, 33, 13, '2023-06-21 13:10:31.965999', 1, ' yusuf  send a Friend Request'),
(222, 33, 13, '2023-06-21 13:24:19.199760', 1, ' yusuf  Viewed your Profile'),
(223, 9, 33, '2023-06-21 13:26:02.085918', 1, ' prabhu  Viewed your Profile'),
(224, 9, 33, '2023-06-21 13:27:36.288917', 1, ' prabhu  send a Friend Request'),
(225, 33, 9, '2023-06-21 13:49:44.025600', 1, ' yusuf  Viewed your Profile'),
(226, 33, 9, '2023-06-21 13:53:02.069789', 1, ' yusuf  Viewed your Profile'),
(227, 9, 33, '2023-06-21 13:55:37.382419', 1, ' prabhu  Liked your Profile'),
(228, 9, 33, '2023-06-21 13:55:37.580258', 1, ' prabhu  Favoured your Profile'),
(229, 9, 36, '2023-06-21 13:55:49.630580', 0, ' prabhu  Viewed your Profile'),
(230, 33, 13, '2023-06-21 13:59:56.906741', 1, ' yusuf  Viewed your Profile'),
(231, 9, 29, '2023-06-21 14:06:38.289375', 0, ' prabhu  Viewed your Profile'),
(232, 33, 13, '2023-06-22 05:21:33.918102', 1, ' yusuf  Viewed your Profile'),
(233, 33, 13, '2023-06-22 05:21:47.738213', 1, ' yusuf  Flirted your Profile'),
(234, 33, 9, '2023-06-22 05:22:04.376133', 1, ' yusuf  Viewed your Profile'),
(235, 33, 41, '2023-06-22 05:26:59.882312', 0, ' yusuf  Viewed your Profile'),
(236, 33, 41, '2023-06-22 05:27:29.612773', 0, ' yusuf  Viewed your Profile'),
(237, 33, 42, '2023-06-22 05:34:05.539869', 0, ' yusuf  Viewed your Profile'),
(238, 33, 42, '2023-06-22 05:34:29.211218', 0, ' yusuf  send a Friend Request'),
(239, 33, 41, '2023-06-22 05:36:25.730760', 0, ' yusuf  Viewed your Profile'),
(240, 33, 13, '2023-06-22 05:39:34.720569', 1, ' yusuf  Viewed your Profile'),
(241, 33, 41, '2023-06-22 05:43:17.661635', 0, ' yusuf  Viewed your Profile'),
(242, 33, 13, '2023-06-22 05:43:27.535873', 1, ' yusuf  Viewed your Profile'),
(243, 33, 41, '2023-06-22 05:43:31.362263', 0, ' yusuf  Viewed your Profile'),
(244, 9, 32, '2023-06-22 05:44:19.429548', 0, ' prabhu  Viewed your Profile'),
(245, 33, 43, '2023-06-22 06:08:02.399567', 0, ' yusuf  Viewed your Profile'),
(246, 9, 44, '2023-06-22 06:28:40.512310', 0, ' prabhu  Viewed your Profile'),
(247, 9, 38, '2023-06-22 06:28:55.566837', 0, ' prabhu  Viewed your Profile'),
(248, 9, 30, '2023-06-22 06:33:15.568058', 1, ' prabhu  Viewed your Profile'),
(249, 9, 5, '2023-06-22 09:17:02.139555', 0, ' prabhu  Viewed your Profile'),
(250, 33, 43, '2023-06-22 09:17:12.715433', 0, ' yusuf  Viewed your Profile'),
(251, 33, 43, '2023-06-22 09:17:15.510075', 0, ' yusuf  send a Friend Request'),
(252, 33, 43, '2023-06-22 09:17:37.796685', 0, ' yusuf  Favoured your Profile'),
(253, 9, 21, '2023-06-22 10:23:57.213783', 0, ' prabhu  Viewed your Profile'),
(254, 9, 18, '2023-06-22 10:24:05.897699', 0, ' prabhu  Viewed your Profile'),
(255, 9, 33, '2023-06-22 10:43:43.473171', 1, ' prabhu  Viewed your Profile'),
(256, 9, 29, '2023-06-22 10:43:50.290321', 0, ' prabhu  Viewed your Profile'),
(257, 9, 3, '2023-06-22 10:44:14.266655', 1, ' prabhu  Viewed your Profile'),
(258, 9, 33, '2023-06-22 10:44:19.172476', 1, ' prabhu  Viewed your Profile'),
(259, 9, 3, '2023-06-22 10:44:36.238196', 1, ' prabhu  Viewed your Profile'),
(260, 9, 33, '2023-06-22 10:44:41.553960', 1, ' prabhu  Viewed your Profile'),
(261, 9, 33, '2023-06-22 10:44:51.106718', 1, ' prabhu  Viewed your Profile'),
(262, 9, 29, '2023-06-22 10:44:55.022541', 0, ' prabhu  Viewed your Profile'),
(263, 9, 33, '2023-06-22 10:45:41.594288', 1, ' prabhu  Viewed your Profile'),
(264, 9, 33, '2023-06-22 10:46:37.318317', 1, ' prabhu  Viewed your Profile'),
(265, 9, 33, '2023-06-22 10:46:46.727519', 1, ' prabhu  Viewed your Profile'),
(266, 9, 33, '2023-06-22 10:47:43.898625', 1, ' prabhu  Viewed your Profile'),
(267, 33, 13, '2023-06-22 10:50:14.876335', 1, ' yusuf  Viewed your Profile'),
(268, 33, 42, '2023-06-22 10:51:20.259893', 0, ' yusuf  Viewed your Profile'),
(269, 33, 9, '2023-06-22 10:51:49.128677', 1, ' yusuf  Viewed your Profile'),
(270, 33, 9, '2023-06-22 10:52:03.377828', 1, ' yusuf  Viewed your Profile'),
(271, 33, 9, '2023-06-22 10:52:09.430212', 1, ' yusuf  Viewed your Profile'),
(272, 33, 43, '2023-06-22 10:52:25.038073', 0, ' yusuf  Viewed your Profile'),
(273, 33, 43, '2023-06-22 10:52:34.668341', 0, ' yusuf  Viewed your Profile'),
(274, 9, 33, '2023-06-22 10:52:45.143857', 1, ' prabhu  Viewed your Profile'),
(275, 9, 3, '2023-06-22 10:53:17.595603', 1, ' prabhu  Viewed your Profile'),
(276, 9, 33, '2023-06-22 10:53:31.316852', 1, ' prabhu  Viewed your Profile'),
(277, 9, 33, '2023-06-22 10:53:49.004937', 1, ' prabhu  Viewed your Profile'),
(278, 33, 9, '2023-06-22 10:53:58.086051', 1, ' yusuf  Viewed your Profile'),
(279, 9, 33, '2023-06-22 10:54:43.756488', 1, ' prabhu  Viewed your Profile'),
(280, 9, 33, '2023-06-22 10:55:01.173154', 1, ' prabhu  Viewed your Profile'),
(281, 33, 13, '2023-06-22 10:55:17.543176', 1, ' yusuf  Viewed your Profile'),
(282, 33, 9, '2023-06-22 10:55:21.739909', 1, ' yusuf  Viewed your Profile'),
(283, 33, 9, '2023-06-22 10:55:24.954249', 1, ' yusuf  Viewed your Profile'),
(284, 33, 41, '2023-06-22 10:55:36.010551', 0, ' yusuf  Viewed your Profile'),
(285, 33, 41, '2023-06-22 10:56:32.315415', 0, ' yusuf  Favoured your Profile'),
(286, 33, 41, '2023-06-22 10:56:32.315993', 0, ' yusuf  Liked your Profile'),
(287, 33, 9, '2023-06-22 10:56:35.010907', 1, ' yusuf  Viewed your Profile'),
(288, 9, 33, '2023-06-22 11:12:19.524205', 1, ' prabhu  Viewed your Profile'),
(289, 9, 33, '2023-06-22 11:12:30.784041', 1, ' prabhu  Viewed your Profile'),
(290, 9, 33, '2023-06-22 11:12:41.365861', 1, ' prabhu  Viewed your Profile'),
(291, 9, 33, '2023-06-22 11:12:51.671005', 1, ' prabhu  Viewed your Profile'),
(292, 33, 9, '2023-06-22 11:13:03.406082', 1, ' yusuf  Viewed your Profile'),
(293, 33, 9, '2023-06-22 11:21:26.158729', 1, ' yusuf  Viewed your Profile'),
(294, 33, 9, '2023-06-22 11:22:28.575369', 1, ' yusuf  Viewed your Profile'),
(295, 33, 9, '2023-06-22 11:38:37.650217', 1, ' yusuf  Viewed your Profile'),
(296, 33, 9, '2023-06-22 11:38:45.925165', 1, ' yusuf  Viewed your Profile'),
(297, 33, 9, '2023-06-22 11:38:59.059212', 1, ' yusuf  Viewed your Profile'),
(298, 33, 41, '2023-06-22 11:39:07.487818', 0, ' yusuf  Viewed your Profile'),
(299, 33, 9, '2023-06-22 11:39:25.510436', 1, ' yusuf  Viewed your Profile'),
(300, 33, 9, '2023-06-22 11:39:29.572660', 1, ' yusuf  Viewed your Profile'),
(301, 33, 9, '2023-06-22 11:39:29.921088', 1, ' yusuf  Viewed your Profile'),
(302, 33, 9, '2023-06-22 11:39:37.117667', 1, ' yusuf  Viewed your Profile'),
(303, 33, 9, '2023-06-22 11:39:38.663479', 1, ' yusuf  Viewed your Profile'),
(304, 33, 9, '2023-06-22 11:39:40.592761', 1, ' yusuf  Viewed your Profile'),
(305, 33, 13, '2023-06-22 11:39:42.373374', 1, ' yusuf  Viewed your Profile'),
(306, 33, 13, '2023-06-22 11:39:57.453486', 1, ' yusuf  Viewed your Profile'),
(307, 33, 43, '2023-06-22 11:40:13.599523', 0, ' yusuf  Viewed your Profile'),
(308, 33, 9, '2023-06-22 11:40:36.484341', 1, ' yusuf  Viewed your Profile'),
(309, 33, 13, '2023-06-22 11:40:52.792806', 1, ' yusuf  Viewed your Profile'),
(310, 9, 33, '2023-06-22 11:41:14.595195', 1, ' prabhu  Viewed your Profile'),
(311, 33, 9, '2023-06-22 11:41:29.570001', 1, ' yusuf  Viewed your Profile'),
(312, 9, 33, '2023-06-22 11:41:49.400346', 1, ' prabhu  Viewed your Profile'),
(313, 33, 9, '2023-06-22 11:42:01.182025', 1, ' yusuf  Viewed your Profile'),
(314, 33, 9, '2023-06-22 11:42:02.919687', 1, ' yusuf  Viewed your Profile'),
(315, 9, 33, '2023-06-22 11:42:27.181459', 1, ' prabhu  Viewed your Profile'),
(316, 33, 9, '2023-06-22 11:42:42.794200', 1, ' yusuf  Viewed your Profile'),
(317, 9, 33, '2023-06-22 11:43:08.447554', 1, ' prabhu  Viewed your Profile'),
(318, 9, 33, '2023-06-22 11:43:15.843609', 1, ' prabhu  Viewed your Profile'),
(319, 9, 33, '2023-06-22 11:43:29.978504', 1, ' prabhu  Viewed your Profile'),
(320, 9, 33, '2023-06-22 11:43:58.571888', 1, ' prabhu  Viewed your Profile'),
(321, 9, 33, '2023-06-22 11:44:11.610340', 1, ' prabhu  Viewed your Profile'),
(322, 9, 33, '2023-06-22 11:44:24.899596', 1, ' prabhu  Viewed your Profile'),
(323, 33, 9, '2023-06-22 11:44:41.737099', 1, ' yusuf  Viewed your Profile'),
(324, 9, 33, '2023-06-22 11:44:54.949501', 1, ' prabhu  Viewed your Profile'),
(325, 33, 9, '2023-06-22 11:45:07.159677', 1, ' yusuf  Viewed your Profile'),
(326, 33, 9, '2023-06-22 11:45:13.655717', 1, ' yusuf  Viewed your Profile'),
(327, 33, 9, '2023-06-22 11:45:22.876279', 1, ' yusuf  Viewed your Profile'),
(328, 33, 9, '2023-06-22 11:45:38.045686', 1, ' yusuf  Viewed your Profile'),
(329, 33, 9, '2023-06-22 11:45:44.820082', 1, ' yusuf  Viewed your Profile'),
(330, 33, 43, '2023-06-22 11:46:19.105099', 0, ' yusuf  Viewed your Profile'),
(331, 33, 9, '2023-06-22 11:46:23.545601', 1, ' yusuf  Viewed your Profile'),
(332, 33, 9, '2023-06-22 11:46:55.200304', 1, ' yusuf  Viewed your Profile'),
(333, 33, 9, '2023-06-22 11:47:04.281440', 1, ' yusuf  Viewed your Profile'),
(334, 33, 9, '2023-06-22 11:47:36.836846', 1, ' yusuf  Viewed your Profile'),
(335, 33, 13, '2023-06-22 11:47:50.449470', 1, ' yusuf  Viewed your Profile'),
(336, 33, 9, '2023-06-22 11:48:33.929033', 1, ' yusuf  Viewed your Profile'),
(337, 33, 9, '2023-06-22 11:48:59.399506', 1, ' yusuf  Viewed your Profile'),
(338, 33, 9, '2023-06-22 11:50:21.225174', 1, ' yusuf  Viewed your Profile'),
(339, 33, 9, '2023-06-22 11:52:43.023935', 1, ' yusuf  Viewed your Profile'),
(340, 33, 41, '2023-06-22 11:54:47.310970', 0, ' yusuf  Viewed your Profile'),
(341, 33, 13, '2023-06-22 11:56:04.058967', 1, ' yusuf  Viewed your Profile'),
(342, 33, 9, '2023-06-22 12:07:29.344108', 1, ' yusuf  Viewed your Profile'),
(343, 33, 9, '2023-06-22 12:07:34.783121', 1, ' yusuf  Viewed your Profile'),
(344, 33, 13, '2023-06-22 12:07:42.439164', 1, ' yusuf  Viewed your Profile'),
(345, 33, 13, '2023-06-22 12:27:49.652256', 1, ' yusuf  Viewed your Profile'),
(346, 33, 13, '2023-06-22 12:29:12.116156', 1, ' yusuf  Viewed your Profile'),
(347, 33, 41, '2023-06-22 12:32:22.416988', 0, ' yusuf  Viewed your Profile'),
(348, 33, 9, '2023-06-22 12:33:20.731087', 1, ' yusuf  Viewed your Profile'),
(349, 9, 33, '2023-06-22 12:33:26.502927', 1, ' prabhu  Viewed your Profile'),
(350, 33, 9, '2023-06-22 12:33:36.172359', 1, ' yusuf  Viewed your Profile'),
(351, 33, 9, '2023-06-22 12:33:37.771526', 1, ' yusuf  Viewed your Profile'),
(352, 33, 9, '2023-06-22 12:33:47.849251', 1, ' yusuf  Viewed your Profile'),
(353, 33, 9, '2023-06-22 12:33:55.147158', 1, ' yusuf  Viewed your Profile'),
(354, 33, 9, '2023-06-22 12:34:16.170594', 1, ' yusuf  Viewed your Profile'),
(355, 33, 13, '2023-06-22 12:34:32.271061', 1, ' yusuf  Viewed your Profile'),
(356, 33, 41, '2023-06-22 12:34:45.773438', 0, ' yusuf  Viewed your Profile'),
(357, 33, 9, '2023-06-22 12:34:57.004788', 1, ' yusuf  Viewed your Profile'),
(358, 33, 13, '2023-06-22 12:35:33.799028', 1, ' yusuf  Viewed your Profile'),
(359, 33, 9, '2023-06-22 13:12:09.088013', 1, ' yusuf  Viewed your Profile'),
(360, 33, 13, '2023-06-22 13:13:20.229280', 1, ' yusuf  Viewed your Profile'),
(361, 33, 13, '2023-06-22 13:13:45.701361', 1, ' yusuf  Viewed your Profile'),
(362, 33, 13, '2023-06-22 13:27:50.053302', 1, ' yusuf  Viewed your Profile'),
(363, 33, 43, '2023-06-22 13:28:35.093241', 0, ' yusuf  Viewed your Profile'),
(364, 33, 43, '2023-06-22 13:36:06.608906', 0, ' yusuf  Viewed your Profile'),
(365, 9, 32, '2023-06-23 10:45:57.699054', 0, ' prabhu  Viewed your Profile'),
(366, 9, 3, '2023-06-23 11:36:59.964089', 1, ' prabhu  Viewed your Profile'),
(367, 9, 29, '2023-06-23 11:56:43.196227', 0, ' prabhu  Viewed your Profile'),
(368, 9, 33, '2023-06-23 12:01:09.726278', 1, ' prabhu  Viewed your Profile'),
(369, 9, 3, '2023-06-23 12:01:13.820679', 1, ' prabhu  Viewed your Profile'),
(370, 9, 5, '2023-06-23 12:03:32.780674', 0, ' prabhu  Viewed your Profile'),
(371, 9, 1, '2023-06-23 12:03:46.924035', 0, ' prabhu  Viewed your Profile'),
(372, 9, 32, '2023-06-23 12:49:18.321009', 0, ' prabhu  Viewed your Profile'),
(373, 9, 33, '2023-06-23 13:26:15.836713', 1, ' prabhu  Viewed your Profile'),
(374, 9, 5, '2023-06-23 13:37:28.162516', 0, ' prabhu  Viewed your Profile'),
(375, 9, 3, '2023-06-23 13:37:35.835306', 1, ' prabhu  Viewed your Profile'),
(376, 9, 32, '2023-06-23 13:37:41.901772', 0, ' prabhu  Viewed your Profile'),
(377, 9, 33, '2023-06-23 13:37:46.287884', 1, ' prabhu  Viewed your Profile'),
(378, 9, 29, '2023-06-23 13:39:28.216452', 0, ' prabhu  Viewed your Profile'),
(379, 9, 10, '2023-06-24 07:20:26.373799', 0, ' prabhu  Viewed your Profile'),
(380, 9, 32, '2023-06-24 18:43:58.123681', 0, ' prabhu  Viewed your Profile'),
(381, 9, 29, '2023-06-29 06:04:26.588543', 0, ' prabhu  Viewed your Profile'),
(382, 9, 32, '2023-06-29 06:48:27.842112', 0, ' prabhu  Viewed your Profile'),
(383, 9, 32, '2023-06-29 06:50:36.627859', 0, ' prabhu  Flirted your Profile'),
(384, 9, 32, '2023-06-29 06:50:41.729332', 0, ' prabhu  send a Friend Request'),
(385, 9, 32, '2023-06-29 06:50:57.833348', 0, ' prabhu  Favoured your Profile'),
(386, 9, 33, '2023-07-03 06:51:03.217317', 1, ' prabhu  Viewed your Profile'),
(387, 9, 33, '2023-07-03 06:51:06.921954', 1, ' prabhu  Viewed your Profile'),
(388, 9, 32, '2023-07-03 06:51:13.000885', 0, ' prabhu  Viewed your Profile'),
(389, 9, 33, '2023-07-03 07:06:51.518344', 1, ' prabhu  Viewed your Profile'),
(390, 9, 29, '2023-07-03 07:06:56.371714', 0, ' prabhu  Viewed your Profile'),
(391, 9, 29, '2023-07-03 07:08:56.886545', 0, ' prabhu  Flirted your Profile'),
(392, 9, 29, '2023-07-03 07:09:00.782275', 0, ' prabhu  send a Friend Request'),
(393, 9, 22, '2023-07-04 06:09:45.905644', 0, ' prabhu  Viewed your Profile'),
(394, 9, 21, '2023-07-04 06:18:44.561658', 0, ' prabhu  Viewed your Profile'),
(395, 9, 33, '2023-07-06 05:57:13.594757', 1, ' prabhu  Viewed your Profile'),
(396, 9, 32, '2023-07-06 05:57:20.940112', 0, ' prabhu  Viewed your Profile'),
(397, 9, 33, '2023-07-06 09:34:20.248711', 1, ' prabhu  Viewed your Profile'),
(398, 9, 33, '2023-07-06 09:36:21.826938', 1, ' prabhu  Viewed your Profile'),
(399, 9, 33, '2023-07-06 09:36:21.834877', 1, ' prabhu  Viewed your Profile'),
(400, 9, 33, '2023-07-06 09:36:28.335838', 1, ' prabhu  Viewed your Profile'),
(401, 33, 42, '2023-07-06 09:37:20.801965', 0, ' yusuf  Viewed your Profile'),
(402, 33, 43, '2023-07-06 09:38:58.575019', 0, ' yusuf  Viewed your Profile'),
(403, 33, 13, '2023-07-06 09:43:40.589613', 1, ' yusuf  Viewed your Profile'),
(404, 33, 41, '2023-07-06 09:43:53.884770', 0, ' yusuf  Viewed your Profile'),
(405, 33, 9, '2023-07-06 09:44:00.848990', 1, ' yusuf  Viewed your Profile'),
(406, 9, 32, '2023-07-06 09:44:27.789346', 0, ' prabhu  Viewed your Profile'),
(407, 9, 33, '2023-07-06 09:44:37.753497', 1, ' prabhu  Viewed your Profile'),
(408, 9, 33, '2023-07-06 09:44:54.742129', 1, ' prabhu  Viewed your Profile'),
(409, 9, 33, '2023-07-06 09:45:05.990042', 1, ' prabhu  Viewed your Profile'),
(410, 9, 33, '2023-07-06 09:45:15.690480', 1, ' prabhu  Viewed your Profile'),
(411, 9, 33, '2023-07-06 09:45:27.142884', 1, ' prabhu  Viewed your Profile'),
(412, 9, 33, '2023-07-06 09:45:42.184508', 1, ' prabhu  Viewed your Profile'),
(413, 9, 32, '2023-07-06 09:45:50.924100', 0, ' prabhu  Viewed your Profile'),
(414, 9, 33, '2023-07-06 09:46:56.418025', 1, ' prabhu  Viewed your Profile'),
(415, 9, 30, '2023-07-06 09:47:02.400853', 1, ' prabhu  Viewed your Profile'),
(416, 9, 33, '2023-07-06 09:49:26.352168', 1, ' prabhu  Viewed your Profile'),
(417, 9, 29, '2023-07-06 09:49:29.876063', 0, ' prabhu  Viewed your Profile'),
(418, 9, 33, '2023-07-06 09:50:53.786530', 1, ' prabhu  Viewed your Profile'),
(419, 9, 33, '2023-07-06 09:51:00.040686', 1, ' prabhu  Viewed your Profile'),
(420, 9, 29, '2023-07-06 09:51:13.927213', 0, ' prabhu  Viewed your Profile'),
(421, 9, 32, '2023-07-06 09:53:14.858919', 0, ' prabhu  Viewed your Profile'),
(422, 9, 33, '2023-07-06 09:53:33.811308', 1, ' prabhu  Viewed your Profile'),
(423, 9, 29, '2023-07-06 09:53:40.524856', 0, ' prabhu  Viewed your Profile'),
(424, 9, 3, '2023-07-06 09:57:33.052239', 1, ' prabhu  Viewed your Profile'),
(425, 9, 21, '2023-07-06 09:57:56.781247', 0, ' prabhu  Viewed your Profile'),
(426, 9, 32, '2023-07-06 10:28:15.711794', 0, ' prabhu  Viewed your Profile'),
(427, 9, 33, '2023-07-06 10:28:23.047519', 1, ' prabhu  Viewed your Profile'),
(428, 9, 3, '2023-07-06 10:29:43.359675', 1, ' prabhu  Viewed your Profile'),
(429, 9, 33, '2023-07-06 10:30:02.747030', 1, ' prabhu  Viewed your Profile'),
(430, 9, 5, '2023-07-07 06:11:27.843253', 0, ' prabhu  Viewed your Profile'),
(431, 9, 33, '2023-07-07 10:20:56.501269', 1, ' prabhu  Viewed your Profile'),
(432, 9, 33, '2023-07-07 12:10:57.195080', 1, ' prabhu  Viewed your Profile'),
(433, 9, 33, '2023-07-07 12:11:11.953001', 1, ' prabhu  Viewed your Profile'),
(434, 9, 33, '2023-07-07 12:11:13.940838', 1, ' prabhu  Viewed your Profile'),
(435, 33, 41, '2023-07-07 12:12:02.285145', 0, ' yusuf  Viewed your Profile'),
(436, 33, 53, '2023-07-07 13:21:51.027654', 0, ' yusuf  Viewed your Profile'),
(437, 9, 33, '2023-07-07 13:53:03.006464', 1, ' prabhu  Viewed your Profile'),
(438, 9, 33, '2023-07-07 13:53:10.464246', 1, ' prabhu  Viewed your Profile'),
(439, 9, 21, '2023-07-10 11:28:09.079485', 0, ' prabhu  Viewed your Profile'),
(440, 9, 3, '2023-07-10 14:08:52.695367', 0, ' prabhu  Viewed your Profile'),
(441, 3, 5, '2023-07-11 10:52:13.393754', 0, ' P  Viewed your Profile'),
(442, 3, 1, '2023-07-11 10:52:17.286264', 0, ' P  Commented your Profile Image'),
(443, 89, 41, '2023-07-11 11:02:02.706112', 0, ' sharan  Viewed your Profile'),
(444, 89, 41, '2023-07-11 11:06:14.843223', 0, ' sharan  Viewed your Profile'),
(445, 89, 42, '2023-07-11 11:06:18.238331', 0, ' sharan  Viewed your Profile'),
(446, 33, 13, '2023-07-11 12:56:26.062242', 1, ' yusuf  Viewed your Profile'),
(447, 33, 13, '2023-07-11 12:56:42.480229', 1, ' yusuf  Favoured your Profile'),
(448, 33, 13, '2023-07-11 12:56:42.484850', 1, ' yusuf  Liked your Profile'),
(449, 33, 13, '2023-07-11 12:56:42.504660', 1, ' yusuf  Flirted your Profile'),
(450, 33, 13, '2023-07-12 12:20:58.141714', 1, ' yusuf  Viewed your Profile'),
(451, 91, 13, '2023-07-12 13:40:37.385002', 1, ' mohamed  Viewed your Profile'),
(452, 9, 13, '2023-07-13 05:40:36.157819', 1, ' prabhu  Viewed your Profile'),
(453, 9, 13, '2023-07-13 05:40:51.114396', 1, ' prabhu  Liked your Profile Image'),
(454, 9, 13, '2023-07-13 05:40:54.499360', 1, ' prabhu  Commented your Profile Image'),
(455, 13, 9, '2023-07-13 05:41:13.970590', 1, ' Kamali  Viewed your Profile'),
(456, 9, 13, '2023-07-13 05:42:15.661365', 1, ' prabhu  Viewed your Profile'),
(457, 9, 13, '2023-07-13 05:43:10.248921', 1, ' prabhu  Viewed your Profile'),
(458, 9, 13, '2023-07-13 05:43:28.388781', 1, ' prabhu  Commented your Profile Image'),
(459, 9, 21, '2023-07-13 05:45:25.928126', 0, ' prabhu  Viewed your Profile'),
(460, 9, 13, '2023-07-13 05:45:40.357339', 1, ' prabhu  Viewed your Profile'),
(461, 13, 9, '2023-07-13 05:52:40.221131', 1, ' Kamali  Viewed your Profile'),
(462, 13, 41, '2023-07-13 06:04:23.571946', 0, ' Kamali  Viewed your Profile'),
(463, 9, 91, '2023-07-13 06:05:07.306723', 1, ' prabhu  Viewed your Profile'),
(464, 9, 13, '2023-07-13 06:06:02.773457', 1, ' prabhu  Viewed your Profile'),
(465, 9, 13, '2023-07-13 06:08:50.395796', 1, ' prabhu  Viewed your Profile'),
(466, 9, 13, '2023-07-13 06:09:05.208933', 1, ' prabhu  Commented your Profile Image'),
(467, 91, 13, '2023-07-13 13:27:05.200475', 1, ' mohamed  Viewed your Profile'),
(468, 91, 13, '2023-07-13 13:27:24.970473', 1, ' mohamed  Viewed your Profile'),
(469, 91, 13, '2023-07-13 13:27:28.812061', 1, ' mohamed  send a Friend Request'),
(470, 91, 42, '2023-07-13 13:27:39.730177', 0, ' mohamed  Viewed your Profile'),
(471, 91, 13, '2023-07-14 06:03:14.024934', 1, ' mohamed  Viewed your Profile'),
(472, 91, 13, '2023-07-14 06:59:29.637528', 1, ' mohamed  Viewed your Profile'),
(473, 13, 91, '2023-07-14 07:01:29.672490', 1, ' Kamali  Viewed your Profile'),
(474, 91, 42, '2023-07-14 09:42:47.565879', 0, ' mohamed  Viewed your Profile'),
(475, 91, 42, '2023-07-14 09:42:54.612082', 0, ' mohamed  Favoured your Profile'),
(476, 91, 41, '2023-07-14 09:49:36.410221', 0, ' mohamed  Viewed your Profile'),
(477, 91, 13, '2023-07-14 13:09:09.519274', 1, ' mohamed  Viewed your Profile'),
(478, 91, 13, '2023-07-14 13:09:17.767978', 1, ' mohamed  Liked your Profile'),
(479, 91, 13, '2023-07-15 14:06:16.350887', 1, ' mohamed  Viewed your Profile'),
(480, 91, 13, '2023-07-18 05:55:32.813543', 1, ' mohamed  Viewed your Profile'),
(481, 91, 42, '2023-07-18 05:56:11.229744', 0, ' mohamed  Viewed your Profile'),
(482, 91, 13, '2023-07-18 05:59:11.848791', 1, ' mohamed  Viewed your Profile'),
(483, 91, 13, '2023-07-20 06:38:22.338937', 1, ' mohamed  Viewed your Profile'),
(484, 91, 13, '2023-07-20 06:38:31.671215', 1, ' mohamed  Viewed your Profile'),
(485, 91, 13, '2023-07-20 09:08:58.348072', 1, ' mohamed  Viewed your Profile'),
(486, 91, 53, '2023-07-20 09:09:03.045689', 0, ' mohamed  Viewed your Profile'),
(487, 91, 13, '2023-07-20 10:02:13.908258', 1, ' mohamed  Viewed your Profile'),
(488, 91, 13, '2023-07-20 10:02:17.738879', 1, ' mohamed  send a Friend Request'),
(489, 91, 13, '2023-07-20 10:14:18.141314', 1, ' mohamed  Viewed your Profile'),
(490, 91, 13, '2023-07-20 10:15:02.103288', 1, ' mohamed  Viewed your Profile'),
(491, 91, 13, '2023-07-20 10:16:13.162103', 1, ' mohamed  Viewed your Profile'),
(492, 91, 13, '2023-07-20 11:12:22.399477', 1, ' mohamed  Viewed your Profile'),
(493, 91, 13, '2023-07-20 11:14:54.265924', 1, ' mohamed  Viewed your Profile'),
(494, 91, 13, '2023-07-20 11:17:12.195038', 1, ' mohamed  Viewed your Profile'),
(495, 91, 13, '2023-07-20 11:24:49.548904', 1, ' mohamed  Viewed your Profile'),
(496, 91, 13, '2023-07-20 11:24:53.732538', 1, ' mohamed  send a Friend Request'),
(497, 91, 13, '2023-07-20 11:25:58.486386', 1, ' mohamed  Viewed your Profile'),
(498, 91, 13, '2023-07-20 11:26:17.161207', 1, ' mohamed  Viewed your Profile'),
(499, 91, 13, '2023-07-20 11:30:47.374972', 1, ' mohamed  Viewed your Profile'),
(500, 91, 13, '2023-07-20 11:30:55.460410', 1, ' mohamed  Viewed your Profile'),
(501, 91, 13, '2023-07-20 11:31:10.930252', 1, ' mohamed  Viewed your Profile'),
(502, 91, 13, '2023-07-20 11:32:06.388706', 1, ' mohamed  Viewed your Profile'),
(503, 91, 13, '2023-07-20 11:33:48.260506', 1, ' mohamed  Viewed your Profile'),
(504, 91, 13, '2023-07-20 11:36:11.759886', 1, ' mohamed  Viewed your Profile'),
(505, 91, 13, '2023-07-20 11:36:25.952559', 1, ' mohamed  Favoured your Profile'),
(506, 91, 13, '2023-07-20 11:41:10.495297', 1, ' mohamed  Viewed your Profile'),
(507, 91, 13, '2023-07-20 11:41:11.336020', 1, ' mohamed  Viewed your Profile'),
(508, 91, 13, '2023-07-20 12:00:24.449124', 1, ' mohamed  Viewed your Profile'),
(509, 91, 13, '2023-07-20 12:05:43.866838', 1, ' mohamed  Viewed your Profile'),
(510, 91, 13, '2023-07-20 12:08:07.317183', 1, ' mohamed  Viewed your Profile'),
(511, 91, 13, '2023-07-20 12:09:21.087979', 1, ' mohamed  Viewed your Profile'),
(512, 91, 13, '2023-07-20 12:11:51.135459', 1, ' mohamed  Viewed your Profile'),
(513, 91, 13, '2023-07-20 12:12:36.425735', 1, ' mohamed  send a Friend Request'),
(514, 91, 13, '2023-07-20 12:13:28.445365', 1, ' mohamed  Liked your Profile Image'),
(515, 91, 13, '2023-07-20 12:13:48.616628', 1, ' mohamed  Commented your Profile Image'),
(516, 91, 13, '2023-07-20 13:05:13.824547', 1, ' mohamed  Viewed your Profile'),
(517, 91, 13, '2023-07-20 13:05:26.965147', 1, ' mohamed  Viewed your Profile'),
(518, 91, 13, '2023-07-20 13:05:44.590930', 1, ' mohamed  Viewed your Profile'),
(519, 91, 13, '2023-07-20 13:05:55.973885', 1, ' mohamed  Viewed your Profile'),
(520, 91, 13, '2023-07-20 13:06:33.633343', 1, ' mohamed  Viewed your Profile'),
(521, 91, 13, '2023-07-20 13:06:41.914648', 1, ' mohamed  Viewed your Profile'),
(522, 91, 13, '2023-07-20 13:08:32.521575', 1, ' mohamed  Viewed your Profile'),
(523, 91, 13, '2023-07-20 13:10:50.065879', 1, ' mohamed  Viewed your Profile'),
(524, 91, 13, '2023-07-20 13:11:07.275584', 1, ' mohamed  Viewed your Profile'),
(525, 91, 13, '2023-07-20 13:11:15.805944', 1, ' mohamed  Liked your Profile Image'),
(526, 91, 41, '2023-07-20 13:36:08.170917', 0, ' mohamed  Viewed your Profile'),
(527, 91, 41, '2023-07-20 13:36:17.072058', 0, ' mohamed  Viewed your Profile'),
(528, 91, 13, '2023-07-20 13:37:23.432699', 1, ' mohamed  Viewed your Profile'),
(529, 13, 91, '2023-07-20 13:38:07.261546', 1, ' Kamali  Viewed your Profile'),
(530, 13, 91, '2023-07-20 13:38:33.438901', 1, ' Kamali  Liked your Profile'),
(531, 13, 33, '2023-07-20 13:38:36.686302', 1, ' Kamali  Viewed your Profile'),
(532, 13, 37, '2023-07-20 13:38:38.445314', 0, ' Kamali  Viewed your Profile'),
(533, 13, 37, '2023-07-20 13:38:45.375331', 0, ' Kamali  Liked your Profile'),
(534, 13, 37, '2023-07-20 13:38:45.957293', 0, ' Kamali  Favoured your Profile'),
(535, 13, 91, '2023-07-20 13:38:56.141241', 1, ' Kamali  Viewed your Profile'),
(536, 13, 91, '2023-07-20 13:40:25.001106', 1, ' Kamali  Favoured your Profile'),
(537, 13, 91, '2023-07-21 11:24:30.953701', 1, ' Kamali  Viewed your Profile'),
(538, 13, 91, '2023-07-21 11:24:35.125373', 1, ' Kamali  send a Friend Request'),
(539, 13, 91, '2023-07-21 11:24:51.274466', 1, ' Kamali  Viewed your Profile'),
(540, 13, 49, '2023-07-22 12:07:23.761555', 0, ' Kamali  Viewed your Profile'),
(541, 13, 91, '2023-07-22 12:19:52.093727', 1, ' Kamali  Viewed your Profile'),
(542, 91, 13, '2023-07-22 12:44:07.183747', 1, ' mohamedq  Viewed your Profile'),
(543, 91, 13, '2023-07-22 12:44:07.422892', 1, ' mohamedq  Viewed your Profile'),
(544, 91, 13, '2023-07-22 12:44:15.556207', 1, ' mohamedq  Favoured your Profile'),
(545, 91, 42, '2023-07-25 06:50:26.136593', 0, ' mohamed  Viewed your Profile'),
(546, 91, 13, '2023-07-25 06:50:58.849648', 1, ' mohamed  Viewed your Profile'),
(547, 91, 41, '2023-07-25 07:03:44.438656', 0, ' mohamed  Viewed your Profile'),
(548, 91, 42, '2023-07-25 07:03:50.226300', 0, ' mohamed  Viewed your Profile'),
(549, 91, 43, '2023-07-25 07:04:14.601859', 0, ' mohamed  Viewed your Profile'),
(550, 91, 41, '2023-07-25 07:04:34.625174', 0, ' mohamed  Viewed your Profile'),
(551, 91, 55, '2023-07-25 07:07:17.067989', 0, ' mohamed  Viewed your Profile'),
(552, 91, 9, '2023-07-25 13:11:17.134790', 1, ' mohamed  Viewed your Profile'),
(553, 9, 33, '2023-07-25 13:16:14.331167', 1, ' prabhu  Viewed your Profile'),
(554, 33, 9, '2023-07-25 13:16:25.884817', 1, ' yusuf  Viewed your Profile'),
(555, 9, 33, '2023-07-25 13:16:40.969146', 1, ' prabhu  Viewed your Profile'),
(556, 33, 9, '2023-07-25 13:17:06.816853', 1, ' yusuf  Viewed your Profile'),
(557, 9, 33, '2023-07-25 13:17:20.100896', 1, ' prabhu  Viewed your Profile'),
(558, 9, 33, '2023-07-25 13:18:00.751940', 1, ' prabhu  Viewed your Profile'),
(559, 9, 33, '2023-07-25 13:18:20.551684', 1, ' prabhu  Viewed your Profile'),
(560, 9, 33, '2023-07-25 13:18:49.876591', 1, ' prabhu  Viewed your Profile'),
(561, 9, 33, '2023-07-25 13:18:56.005597', 1, ' prabhu  send a Friend Request'),
(562, 9, 33, '2023-07-25 13:19:46.493076', 1, ' prabhu  Viewed your Profile'),
(563, 33, 9, '2023-07-25 13:19:54.475739', 1, ' yusuf  Viewed your Profile'),
(564, 9, 33, '2023-07-25 13:20:09.241814', 1, ' prabhu  Flirted your Profile'),
(565, 9, 33, '2023-07-25 13:20:12.105461', 1, ' prabhu  Viewed your Profile'),
(566, 9, 33, '2023-07-25 13:20:44.877981', 1, ' prabhu  Viewed your Profile'),
(567, 9, 91, '2023-07-25 13:21:04.680078', 1, ' prabhu  Viewed your Profile'),
(568, 9, 33, '2023-07-25 13:21:10.593640', 1, ' prabhu  Viewed your Profile'),
(569, 9, 33, '2023-07-25 13:21:21.133329', 1, ' prabhu  Viewed your Profile'),
(570, 9, 33, '2023-07-25 13:21:24.144133', 1, ' prabhu  send a Friend Request'),
(571, 33, 9, '2023-07-25 13:21:53.913989', 1, ' yusuf  Viewed your Profile'),
(572, 9, 33, '2023-07-25 13:22:41.661767', 1, ' prabhu  Viewed your Profile'),
(573, 9, 33, '2023-07-25 13:24:22.921515', 1, ' prabhu  Viewed your Profile'),
(574, 9, 33, '2023-07-25 13:48:22.966127', 1, ' prabhu  Viewed your Profile'),
(575, 9, 33, '2023-07-25 13:48:45.978714', 1, ' prabhu  Viewed your Profile'),
(576, 9, 33, '2023-07-25 13:49:06.122833', 1, ' prabhu  Viewed your Profile'),
(577, 9, 3, '2023-07-25 13:56:17.218335', 0, ' prabhu  Viewed your Profile'),
(578, 9, 11, '2023-07-25 13:56:42.170286', 0, ' prabhu  Viewed your Profile'),
(579, 9, 33, '2023-07-26 07:21:54.929423', 1, ' prabhu  Viewed your Profile'),
(580, 9, 33, '2023-07-26 07:22:04.702255', 1, ' prabhu  Viewed your Profile'),
(581, 9, 33, '2023-07-26 07:22:46.269543', 1, ' prabhu  Viewed your Profile'),
(582, 9, 33, '2023-07-26 07:22:52.633505', 1, ' prabhu  Viewed your Profile'),
(583, 9, 33, '2023-07-26 07:22:56.177615', 1, ' prabhu  Viewed your Profile'),
(584, 9, 33, '2023-07-26 07:23:05.111555', 1, ' prabhu  Viewed your Profile'),
(585, 9, 33, '2023-07-26 07:23:06.991811', 1, ' prabhu  Viewed your Profile'),
(586, 9, 33, '2023-07-26 07:23:07.538929', 1, ' prabhu  Viewed your Profile'),
(587, 9, 33, '2023-07-26 07:23:22.673206', 1, ' prabhu  Viewed your Profile'),
(588, 9, 13, '2023-07-26 07:23:29.372417', 1, ' prabhu  Viewed your Profile'),
(589, 9, 5, '2023-07-26 07:23:38.654822', 0, ' prabhu  Viewed your Profile'),
(590, 91, 9, '2023-07-26 07:24:03.015496', 1, ' mohamed  Viewed your Profile'),
(591, 9, 91, '2023-07-26 07:25:07.465781', 1, ' prabhu  Viewed your Profile'),
(592, 91, 9, '2023-07-26 09:26:08.569614', 1, ' mohamed  Viewed your Profile'),
(593, 91, 9, '2023-07-26 09:46:10.330787', 1, ' mohamed  Viewed your Profile'),
(594, 91, 9, '2023-07-26 09:46:12.408921', 1, ' mohamed  send a Friend Request'),
(595, 9, 11, '2023-07-26 10:30:52.182816', 0, ' prabhu  Viewed your Profile'),
(596, 91, 9, '2023-07-26 10:37:40.313249', 1, ' mohamed  Viewed your Profile'),
(597, 91, 9, '2023-07-27 13:19:30.692862', 1, ' mohamed  Viewed your Profile'),
(598, 13, 91, '2023-07-28 11:53:42.551598', 1, ' Kamali  Viewed your Profile'),
(599, 13, 91, '2023-07-28 11:53:44.447732', 1, ' Kamali  send a Friend Request'),
(600, 13, 33, '2023-07-28 14:27:45.939444', 1, ' Kamali  Viewed your Profile'),
(601, 13, 30, '2023-07-28 14:27:49.840956', 1, ' Kamali  Viewed your Profile'),
(602, 13, 41, '2023-07-28 14:29:41.367502', 0, ' Kamali  Viewed your Profile'),
(603, 13, 42, '2023-07-28 14:29:46.803172', 0, ' Kamali  Viewed your Profile'),
(604, 13, 43, '2023-07-28 14:29:50.807587', 0, ' Kamali  Viewed your Profile'),
(605, 13, 54, '2023-07-28 14:29:56.087676', 0, ' Kamali  Viewed your Profile'),
(606, 9, 11, '2023-07-28 14:30:48.030246', 0, ' prabhu  Viewed your Profile'),
(607, 91, 84, '2023-07-28 14:33:57.751063', 0, ' mohamed  Viewed your Profile'),
(608, 13, 91, '2023-07-28 14:40:36.604984', 1, ' Kamali  Viewed your Profile'),
(609, 13, 91, '2023-07-28 14:40:40.295251', 1, ' Kamali  send a Friend Request'),
(610, 91, 30, '2023-07-31 07:10:29.388088', 1, ' mohamed  Viewed your Profile'),
(611, 91, 13, '2023-07-31 07:12:34.010325', 1, ' mohamed  Viewed your Profile'),
(612, 91, 41, '2023-07-31 07:12:43.827289', 0, ' mohamed  Viewed your Profile'),
(613, 91, 13, '2023-07-31 09:35:28.836064', 1, ' mohamed  Viewed your Profile'),
(614, 30, 13, '2023-08-02 06:32:30.773915', 1, ' yusuf  Viewed your Profile'),
(615, 30, 91, '2023-08-02 06:37:00.275191', 1, ' yusuf  Viewed your Profile'),
(616, 30, 91, '2023-08-02 06:37:05.547884', 1, ' yusuf  send a Friend Request'),
(617, 30, 13, '2023-08-02 06:40:59.084728', 1, ' yusuf  Viewed your Profile'),
(618, 30, 13, '2023-08-02 06:41:01.046532', 1, ' yusuf  send a Friend Request'),
(619, 30, 91, '2023-08-02 06:53:51.911470', 1, ' yusuf  Viewed your Profile'),
(620, 91, 42, '2023-08-02 06:54:05.968955', 0, ' mohamed  Viewed your Profile'),
(621, 91, 30, '2023-08-02 06:54:14.177609', 1, ' mohamed  Viewed your Profile'),
(622, 91, 30, '2023-08-02 06:54:21.447087', 1, ' mohamed  send a Friend Request'),
(623, 13, 91, '2023-08-02 06:55:28.426888', 1, ' Kamali  Viewed your Profile'),
(624, 13, 91, '2023-08-02 06:55:39.580853', 1, ' Kamali  Liked your Profile'),
(625, 9, 11, '2023-08-02 06:56:05.103000', 0, ' prabhu  Viewed your Profile'),
(626, 9, 13, '2023-08-02 06:56:26.494451', 1, ' prabhu  Viewed your Profile'),
(627, 30, 42, '2023-08-02 07:00:30.609438', 0, ' yusuf  Viewed your Profile'),
(628, 30, 91, '2023-08-02 07:03:04.142194', 1, ' yusuf  Viewed your Profile'),
(629, 30, 91, '2023-08-02 07:03:10.114919', 1, ' yusuf  Favoured your Profile'),
(630, 30, 91, '2023-08-02 07:03:17.911990', 1, ' yusuf  Viewed your Profile'),
(631, 9, 11, '2023-08-02 07:05:12.164705', 0, ' prabhu  Viewed your Profile'),
(632, 13, 42, '2023-08-02 07:15:14.225793', 0, ' Kamali  Viewed your Profile'),
(633, 13, 9, '2023-08-02 10:20:13.403230', 1, ' Kamali  Viewed your Profile'),
(634, 91, 9, '2023-08-02 10:22:59.699859', 1, ' mohamed  Viewed your Profile'),
(635, 91, 9, '2023-08-02 10:24:18.423642', 1, ' mohamed  Liked your Profile'),
(636, 91, 9, '2023-08-02 10:24:18.513448', 1, ' mohamed  Favoured your Profile'),
(637, 96, 13, '2023-08-02 10:53:51.382481', 1, ' Nithish  Viewed your Profile'),
(638, 97, 9, '2023-08-02 12:38:59.674208', 1, ' singlee  Viewed your Profile'),
(639, 96, 1, '2023-08-02 13:05:51.552186', 0, ' Nithish  Viewed your Profile'),
(640, 96, 1, '2023-08-02 13:06:02.910301', 0, ' Nithish  Viewed your Profile'),
(641, 96, 1, '2023-08-02 13:06:12.364564', 0, ' Nithish  Viewed your Profile'),
(642, 96, 1, '2023-08-02 13:06:53.185271', 0, ' Nithish  Viewed your Profile'),
(643, 96, 1, '2023-08-02 13:07:20.316548', 0, ' Nithish  Viewed your Profile');
INSERT INTO `services_notification` (`id`, `user_id`, `other_id`, `date`, `is_read`, `msg`) VALUES
(644, 96, 1, '2023-08-02 13:07:30.488866', 0, ' Nithish  Viewed your Profile'),
(645, 91, 41, '2023-08-02 13:08:23.180516', 0, ' mohamed  Viewed your Profile'),
(646, 91, 41, '2023-08-02 13:08:27.622935', 0, ' mohamed  Viewed your Profile'),
(647, 91, 41, '2023-08-02 13:08:33.598499', 0, ' mohamed  Viewed your Profile'),
(648, 96, 97, '2023-08-02 13:08:38.461273', 1, ' Nithish  Viewed your Profile'),
(649, 91, 41, '2023-08-02 13:08:50.840144', 0, ' mohamed  Viewed your Profile'),
(650, 97, 96, '2023-08-02 13:08:53.050125', 1, ' singlee  Viewed your Profile'),
(651, 91, 41, '2023-08-02 13:09:01.196837', 0, ' mohamed  Viewed your Profile'),
(652, 91, 41, '2023-08-02 13:09:22.961135', 0, ' mohamed  Viewed your Profile'),
(653, 91, 13, '2023-08-02 13:09:35.538369', 1, ' mohamed  Viewed your Profile'),
(654, 9, 33, '2023-08-02 13:09:48.598734', 1, ' prabhu  Viewed your Profile'),
(655, 9, 33, '2023-08-02 13:09:53.410701', 1, ' prabhu  Viewed your Profile'),
(656, 9, 30, '2023-08-02 13:09:56.582074', 1, ' prabhu  Viewed your Profile'),
(657, 9, 30, '2023-08-02 13:10:06.602535', 1, ' prabhu  Viewed your Profile'),
(658, 9, 30, '2023-08-02 13:10:18.492695', 1, ' prabhu  Viewed your Profile'),
(659, 96, 97, '2023-08-02 13:10:39.229618', 1, ' Nithish  Viewed your Profile'),
(660, 13, 91, '2023-08-02 13:10:42.954000', 1, ' Kamali  Viewed your Profile'),
(661, 91, 13, '2023-08-02 13:10:55.327773', 1, ' mohamed  Liked your Profile'),
(662, 91, 13, '2023-08-02 13:10:56.185179', 1, ' mohamed  Viewed your Profile'),
(663, 91, 13, '2023-08-02 13:11:02.163680', 1, ' mohamed  Viewed your Profile'),
(664, 91, 13, '2023-08-02 13:11:11.674431', 1, ' mohamed  Viewed your Profile'),
(665, 91, 13, '2023-08-02 13:11:17.315319', 1, ' mohamed  Viewed your Profile'),
(666, 30, 13, '2023-08-02 13:11:37.053523', 1, ' yusuf  Viewed your Profile'),
(667, 91, 13, '2023-08-02 13:11:43.565501', 1, ' mohamed  Viewed your Profile'),
(668, 13, 91, '2023-08-02 13:11:58.837708', 1, ' Kamali  Viewed your Profile'),
(669, 96, 97, '2023-08-02 13:12:13.923228', 1, ' Nithish  Viewed your Profile'),
(670, 13, 42, '2023-08-02 13:12:17.286780', 0, ' Kamali  Viewed your Profile'),
(671, 96, 97, '2023-08-02 13:12:18.753425', 1, ' Nithish  Viewed your Profile'),
(672, 13, 91, '2023-08-02 13:12:26.067750', 1, ' Kamali  Viewed your Profile'),
(673, 91, 13, '2023-08-02 13:12:55.062428', 1, ' mohamed  Viewed your Profile'),
(674, 13, 91, '2023-08-02 13:13:57.083487', 1, ' Kamali  Viewed your Profile'),
(675, 91, 13, '2023-08-02 13:14:08.440318', 1, ' mohamed  Viewed your Profile'),
(676, 13, 91, '2023-08-02 13:14:43.202922', 1, ' Kamali  Viewed your Profile'),
(677, 97, 96, '2023-08-02 13:15:53.387901', 1, ' singlee  Viewed your Profile'),
(678, 97, 96, '2023-08-02 13:15:54.988844', 1, ' singlee  Viewed your Profile'),
(679, 97, 96, '2023-08-02 13:15:55.169870', 1, ' singlee  Viewed your Profile'),
(680, 97, 96, '2023-08-02 13:15:55.312380', 1, ' singlee  Viewed your Profile'),
(681, 97, 96, '2023-08-02 13:15:55.459289', 1, ' singlee  Viewed your Profile'),
(682, 97, 96, '2023-08-02 13:15:55.583546', 1, ' singlee  Viewed your Profile'),
(683, 97, 96, '2023-08-02 13:15:55.711648', 1, ' singlee  Viewed your Profile'),
(684, 97, 96, '2023-08-02 13:15:55.854387', 1, ' singlee  Viewed your Profile'),
(685, 97, 96, '2023-08-02 13:15:56.011152', 1, ' singlee  Viewed your Profile'),
(686, 91, 55, '2023-08-02 13:26:33.829215', 0, ' mohamed  Viewed your Profile'),
(687, 96, 1, '2023-08-02 13:26:42.030027', 0, ' Nithish  Viewed your Profile'),
(688, 91, 55, '2023-08-02 13:26:59.397957', 0, ' mohamed  Viewed your Profile'),
(689, 91, 55, '2023-08-02 13:27:07.040397', 0, ' mohamed  Viewed your Profile'),
(690, 91, 13, '2023-08-02 13:28:12.843125', 1, ' mohamed  Viewed your Profile'),
(691, 91, 13, '2023-08-02 13:28:29.834426', 1, ' mohamed  Viewed your Profile'),
(692, 33, 41, '2023-08-02 13:45:32.191010', 0, ' yusuf  Viewed your Profile'),
(693, 91, 13, '2023-08-03 05:11:20.547248', 1, ' mohamed  Viewed your Profile'),
(694, 13, 91, '2023-08-03 05:12:10.859940', 1, ' Kamali  Viewed your Profile'),
(695, 91, 13, '2023-08-03 05:12:17.567212', 1, ' mohamed  Viewed your Profile'),
(696, 91, 13, '2023-08-03 05:12:34.745277', 1, ' mohamed  Viewed your Profile'),
(697, 91, 13, '2023-08-03 05:14:53.204438', 1, ' mohamed  Viewed your Profile'),
(698, 91, 30, '2023-08-03 05:15:08.464200', 1, ' mohamed  Viewed your Profile'),
(699, 91, 30, '2023-08-03 05:15:11.951008', 1, ' mohamed  Favoured your Profile'),
(700, 91, 13, '2023-08-03 05:50:38.094774', 1, ' mohamed  Viewed your Profile'),
(701, 9, 91, '2023-08-03 06:37:05.828954', 1, ' prabhu  Viewed your Profile'),
(702, 91, 9, '2023-08-03 06:37:18.740182', 1, ' mohamed  Viewed your Profile'),
(703, 91, 9, '2023-08-03 06:37:20.284521', 1, ' mohamed  Viewed your Profile'),
(704, 91, 9, '2023-08-03 06:37:21.416189', 1, ' mohamed  Viewed your Profile'),
(705, 91, 9, '2023-08-03 06:37:22.345209', 1, ' mohamed  Viewed your Profile'),
(706, 91, 9, '2023-08-03 06:37:23.150623', 1, ' mohamed  Viewed your Profile'),
(707, 91, 9, '2023-08-03 06:37:23.941016', 1, ' mohamed  Viewed your Profile'),
(708, 91, 9, '2023-08-03 06:37:24.922386', 1, ' mohamed  Viewed your Profile'),
(709, 91, 9, '2023-08-03 06:37:25.817737', 1, ' mohamed  Viewed your Profile'),
(710, 91, 13, '2023-08-03 06:37:26.419371', 1, ' mohamed  Viewed your Profile'),
(711, 91, 13, '2023-08-03 06:37:30.011425', 1, ' mohamed  Viewed your Profile'),
(712, 91, 13, '2023-08-03 06:37:33.571507', 1, ' mohamed  Viewed your Profile'),
(713, 91, 30, '2023-08-03 06:37:37.117949', 1, ' mohamed  Viewed your Profile'),
(714, 91, 9, '2023-08-03 06:37:42.435195', 1, ' mohamed  Viewed your Profile'),
(715, 91, 9, '2023-08-03 06:37:58.562299', 1, ' mohamed  Viewed your Profile'),
(716, 91, 13, '2023-08-03 06:58:50.776099', 1, ' mohamed  Viewed your Profile'),
(717, 91, 13, '2023-08-03 07:26:38.542084', 1, ' mohamed  Viewed your Profile'),
(718, 91, 13, '2023-08-03 07:26:44.726676', 1, ' mohamed  Viewed your Profile'),
(719, 91, 9, '2023-08-03 07:26:47.538405', 1, ' mohamed  Viewed your Profile'),
(720, 91, 13, '2023-08-03 10:24:30.135650', 1, ' mohamed  Viewed your Profile'),
(721, 91, 41, '2023-08-03 10:24:32.667625', 0, ' mohamed  Viewed your Profile'),
(722, 91, 13, '2023-08-03 11:33:04.797459', 1, ' mohamed  Viewed your Profile'),
(723, 91, 41, '2023-08-03 11:33:17.906622', 0, ' mohamed  Viewed your Profile'),
(724, 13, 91, '2023-08-03 11:54:59.478397', 1, ' Kamali  Viewed your Profile'),
(725, 91, 13, '2023-08-03 11:55:43.128519', 1, ' mohamed  Viewed your Profile'),
(726, 13, 91, '2023-08-03 11:56:35.750210', 1, ' Kamali  Viewed your Profile'),
(727, 13, 91, '2023-08-03 11:56:38.203576', 1, ' Kamali  send a Friend Request'),
(728, 91, 13, '2023-08-04 05:21:30.734671', 1, ' mohamed  Viewed your Profile'),
(729, 91, 13, '2023-08-14 07:17:34.076223', 1, ' mohamed  Viewed your Profile'),
(730, 91, 13, '2023-08-14 07:19:26.038672', 1, ' mohamed  Viewed your Profile'),
(731, 91, 41, '2023-08-25 09:34:28.907386', 0, ' mohamed  Viewed your Profile'),
(732, 91, 13, '2023-08-25 09:35:04.884568', 1, ' mohamed  Viewed your Profile'),
(733, 13, 91, '2023-08-25 09:36:39.836609', 1, ' Kamali  Viewed your Profile'),
(734, 13, 91, '2023-08-25 09:36:48.847511', 1, ' Kamali  Viewed your Profile'),
(735, 91, 41, '2023-08-31 12:50:41.289456', 0, ' mohamed  Viewed your Profile'),
(736, 91, 13, '2023-09-16 09:58:27.243324', 0, ' mohamed  Viewed your Profile'),
(737, 9, 1, '2023-09-21 06:11:00.065931', 0, ' prabhu  Viewed your Profile'),
(738, 9, 3, '2023-09-21 06:15:01.850646', 0, ' prabhu  Viewed your Profile'),
(739, 9, 33, '2023-09-21 06:19:26.182147', 0, ' prabhu  Viewed your Profile'),
(740, 9, 33, '2023-09-21 06:19:27.532131', 0, ' prabhu  Viewed your Profile'),
(741, 9, 91, '2023-09-21 06:19:28.746098', 1, ' prabhu  Viewed your Profile'),
(742, 9, 91, '2023-09-21 06:24:09.718709', 1, ' prabhu  Liked your Profile'),
(743, 9, 91, '2023-09-21 06:24:10.003899', 1, ' prabhu  Favoured your Profile'),
(744, 9, 3, '2023-09-21 06:31:28.223520', 0, ' prabhu  Viewed your Profile'),
(745, 9, 91, '2023-09-21 06:32:53.955137', 1, ' prabhu  Viewed your Profile'),
(746, 9, 91, '2023-09-21 10:33:36.869639', 1, ' prabhu  Viewed your Profile'),
(747, 9, 30, '2023-09-21 10:33:48.405780', 0, ' prabhu  Viewed your Profile'),
(748, 9, 33, '2023-09-21 10:34:10.996620', 0, ' prabhu  Viewed your Profile'),
(749, 9, 11, '2023-09-21 10:34:14.018655', 0, ' prabhu  Viewed your Profile'),
(750, 9, 91, '2023-09-21 12:06:43.605191', 1, ' prabhu  Viewed your Profile'),
(751, 91, 42, '2023-09-21 12:15:24.665936', 0, ' mohamed  Viewed your Profile'),
(752, 91, 9, '2023-09-21 12:18:24.678582', 1, ' mohamed  Viewed your Profile'),
(753, 91, 9, '2023-09-21 12:18:28.557945', 1, ' mohamed  Viewed your Profile'),
(754, 91, 9, '2023-09-21 12:18:30.895890', 1, ' mohamed  Viewed your Profile'),
(755, 91, 42, '2023-09-21 12:29:25.552978', 0, ' mohamed  Viewed your Profile'),
(756, 9, 91, '2023-09-21 12:53:46.651022', 1, ' prabhu  Viewed your Profile'),
(757, 9, 1, '2023-09-21 12:57:07.198891', 0, ' prabhu  Viewed your Profile'),
(758, 91, 53, '2023-09-21 14:10:38.817921', 0, ' mohamed  Viewed your Profile'),
(759, 9, 33, '2023-09-22 10:19:37.713516', 0, ' prabhu  Viewed your Profile'),
(760, 9, 91, '2023-09-22 10:19:39.982086', 1, ' prabhu  Viewed your Profile'),
(761, 91, 41, '2023-09-22 14:44:12.660456', 0, ' mohamed  Viewed your Profile'),
(762, 91, 9, '2023-09-23 07:21:47.180763', 0, ' mohamed  Viewed your Profile'),
(763, 91, 13, '2023-09-23 07:21:50.450132', 0, ' mohamed  Viewed your Profile'),
(764, 91, 13, '2023-09-23 07:21:56.656015', 0, ' mohamed  send a Friend Request');

-- --------------------------------------------------------

--
-- Table structure for table `services_payment`
--

CREATE TABLE `services_payment` (
  `id` int NOT NULL,
  `user_id_id` int NOT NULL,
  `transaction_id_id` int NOT NULL,
  `date_of_payment` datetime(6) NOT NULL,
  `valid_upto` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `services_payment`
--

INSERT INTO `services_payment` (`id`, `user_id_id`, `transaction_id_id`, `date_of_payment`, `valid_upto`) VALUES
(1, 9, 1, '2023-06-12 06:41:30.628386', '2023-07-12 06:41:30.622616'),
(2, 29, 2, '2023-06-13 05:31:13.658928', '2023-07-13 05:31:13.655581');

-- --------------------------------------------------------

--
-- Table structure for table `services_premium`
--

CREATE TABLE `services_premium` (
  `id` int NOT NULL,
  `month` smallint NOT NULL,
  `year` smallint NOT NULL,
  `no_of_days` smallint NOT NULL,
  `amount` decimal(6,2) NOT NULL,
  `detail` varchar(500) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `services_premium`
--

INSERT INTO `services_premium` (`id`, `month`, `year`, `no_of_days`, `amount`, `detail`, `created_date`) VALUES
(1, 1, 2023, 30, '100.00', 'R01202028100', '2023-03-25'),
(2, 1, 2023, 30, '100.00', 'R01202028101', '2023-03-25'),
(3, 1, 2023, 30, '100.00', 'R01202028101', '2023-03-28'),
(4, 1, 2023, 30, '100.00', 'R01202028101', '2023-07-11');

-- --------------------------------------------------------

--
-- Table structure for table `services_premiumdetail`
--

CREATE TABLE `services_premiumdetail` (
  `id` int NOT NULL,
  `detail` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services_transaction`
--

CREATE TABLE `services_transaction` (
  `id` int NOT NULL,
  `transaction_id` varchar(70) NOT NULL,
  `status` varchar(20) NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `mode_of_payment` varchar(6) NOT NULL,
  `date` datetime(6) NOT NULL,
  `premium_id_id` int NOT NULL,
  `book_id` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `services_transaction`
--

INSERT INTO `services_transaction` (`id`, `transaction_id`, `status`, `amount`, `mode_of_payment`, `date`, `premium_id_id`, `book_id`) VALUES
(1, '1YN10058CC378045V', 'APPROVED', '100.00', 'OTHER', '2023-06-12 06:41:30.622616', 3, '061223121130'),
(2, '9BN58673KY655803P', 'APPROVED', '100.00', 'OTHER', '2023-06-13 05:31:13.655581', 3, '061323110113');

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_association`
--

CREATE TABLE `social_auth_association` (
  `id` int NOT NULL,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int NOT NULL,
  `lifetime` int NOT NULL,
  `assoc_type` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_code`
--

CREATE TABLE `social_auth_code` (
  `id` int NOT NULL,
  `email` varchar(254) NOT NULL,
  `code` varchar(32) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_nonce`
--

CREATE TABLE `social_auth_nonce` (
  `id` int NOT NULL,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int NOT NULL,
  `salt` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_partial`
--

CREATE TABLE `social_auth_partial` (
  `id` int NOT NULL,
  `token` varchar(32) NOT NULL,
  `next_step` smallint UNSIGNED NOT NULL,
  `backend` varchar(32) NOT NULL,
  `data` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_usersocialauth`
--

CREATE TABLE `social_auth_usersocialauth` (
  `id` int NOT NULL,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `social_auth_usersocialauth`
--

INSERT INTO `social_auth_usersocialauth` (`id`, `provider`, `uid`, `extra_data`, `user_id`) VALUES
(1, 'google-oauth2', '1234yusufdeen@gmail.com', '{\"auth_time\": 1692700754, \"expires\": null, \"access_token\": \"ya29.a0AfB_byBVkJPTEr4CjtKMHoCGL_VY4tQWGXJ3B_empoNagNkxKnnZBw5LCw_UIpQU1yhBTeL70xc8cVSD-EMoK9pEQ5bnTZNn8cQcdBar0x2r6Y3Cdb9rXeKSS6HzSBQMUBAY3UiGkcoOMfT9eOJtcH3iHduZ0bYjfQ3R2DDWaCgYKAbUSARISFQHsvYlsd6zc19jcd5yGxgqelusAQQ0175\", \"token_type\": null}', 30),
(2, 'google-oauth2', 'yusufdeenapple21@gmail.com', '{\"auth_time\": 1687258863, \"expires\": null, \"access_token\": \"ya29.a0AWY7CklSDRZAn4XVTGViwjGnZudM8o57SJbinTOM7_hS6JFhoQjrEbhLAcxaj1o_sMQ6CgfOlRmoCg8Ywo6jtpJ0hYKC-MU6h5o7cjxyhA2O_WCKACrK0U25V79U4pP46F4I2cZE12u2N2JIGgN-6j4WMjDdaCgYKAW0SARISFQG1tDrp_-KaPw5FA9egs0dU9NcNqQ0163\", \"token_type\": null}', 31),
(3, 'google-oauth2', '1112yusufdeen@gmail.com', '{\"auth_time\": 1690983650, \"expires\": null, \"access_token\": \"ya29.a0AbVbY6PN0pVugffUtdtd0-ZzsBo9jA-Rx4x0In29OhiMzLSWzoRSH8WuXLi2qAWEeJ0Ar_v7_Hg0M3kwcGepf0_hY9B6693-VqndB0zd5rn45FgUdKOpSSTe8U0CVXbJgweTb3yB0JpTqh5AROjcKycJ6M1exfEaCgYKATESARESFQFWKvPlFKRRxuvDSZ-Sas1jeomRaw0166\", \"token_type\": null}', 32),
(4, 'google-oauth2', 'kisssmee1112@gmail.com', '{\"auth_time\": 1690984088, \"expires\": null, \"access_token\": \"ya29.a0AfB_byAmUV1WHfeyZU9VQvvRRvqyuR4JTuXRNNHyRcGI6YhjmL1Ea17vrJydA8PpF1461QzZLu4xNmn0KabIgaki64FAEt6dlbVvdHNy1Z6S4ag48MmhNet9Ytrq9PEdNtkhx1ISnE4A2mnhvJ2B03jkpkx6T3EaCgYKAW4SARESFQHsvYlsl_PFNjZkLMHyHBWSnPDY4A0166\", \"token_type\": null}', 33),
(5, 'google-oauth2', 'dotamohan@gmail.com', '{\"auth_time\": 1687290792, \"expires\": null, \"access_token\": \"ya29.a0AWY7CkmHH3yCAbWyoD5hf4uowB1z6-K5gP0UiRrQlPENqS5YVHOEcMIKk2ly3crVuWhn4xSnD25gPnFmOS4HeOX_nLwoXgEJz4W05g6dVio35jh7Qi3BngA_7nkNPlCAZ6sg4VKpwtldCuWqDVZlfCKd6erjaCgYKAYsSARISFQG1tDrpdhKpT4eRJdVUx_ctK5PaEA0163\", \"token_type\": null}', 35),
(6, 'google-oauth2', 'yusufdeen4321@gmail.com', '{\"auth_time\": 1687349749, \"expires\": null, \"access_token\": \"ya29.a0AWY7CknU1RFJX1wvnvWZVj6NpGcrBCXo5opYZzpdhcPxU_Pwh-PLU5IkKfp0HYWkgqwKHcuiaz801WJ1pAlGBz6O4F2Mfj-olZpQKDQQvVigMVhfj5t71G1FkC1KIq7CHmGnZGfTyyO3v99IayqLggDZQMrdaCgYKAZQSARISFQG1tDrpia6ko30Q0xREqHooZNWaUA0163\", \"token_type\": null}', 37),
(7, 'google-oauth2', 'ravananpk786@gmail.com', '{\"auth_time\": 1687352644, \"expires\": null, \"access_token\": \"ya29.a0AWY7CkmVn5d4FoPhFMDQN_EVO7UNfmtQKO6FGze6TADX_jQTiiXpWduCHIHMQ5-WfTH8mkTZ68xTRGz6XCxNda_ZgIVSn4qMJfBXy-v6JBc6da7j636vB47EeF7vGDt7bYIdGdMmR5Z3R_uqZA-Yt53kiVblGwaCgYKAVoSARMSFQG1tDrpH34Ygp4Wmk2Y1P_w_iMzLQ0165\", \"token_type\": null}', 38),
(8, 'google-oauth2', 'ganeshklm10@gmail.com', '{\"auth_time\": 1687528646, \"expires\": null, \"access_token\": \"ya29.a0AWY7CkmPvNxo9zuuwvD6m0vFB0ZzDXted4I9u4hB2-Md_qHAQ6DtNdH5G9gQVGhgsGBpvI8SkIeax_MgzsCZ92tbtO3GSI12KTYbxG4vgpBFiuh8byLpuRoFzELEscVperbQbKHCueadiFAHMmnIo1631qcBN00aCgYKAW0SARASFQG1tDrpYPptCwYsV85millOrOpnbg0166\", \"token_type\": null}', 47),
(9, 'google-oauth2', 'desssinfo@gmail.com', '{\"auth_time\": 1690202759, \"expires\": null, \"access_token\": \"ya29.a0AbVbY6P_5yTlm2_LHG8tOjbxOHmjONprxQYI_pLjhmXooJ1oPqV26rGc8hghhMaI7TAYsvE4HuARSnV2vxOhuzHPcqZLxS1jFJD7UtSnvHS3jB5SOLbz_EolziBtYWlXnJVRZzbNz6-b7DOkaZjq4XRBjErs7ggaCgYKATsSARESFQFWKvPlugl1OavqMILKmLApHrn0xA0166\", \"token_type\": null}', 26),
(10, 'google-oauth2', 'dessstesting@gmail.com', '{\"auth_time\": 1690982764, \"expires\": null, \"access_token\": \"ya29.a0AbVbY6NcEpht2YnNdHDhxxS7Sext6mtZAGweRF7mXBxkkZ_UrvExmdjjo_z6wdsU_BB84DOsCUiqysJ9hdEzLIqKKwOS8P5TKG9Y66t5BbuZddpt8tKBgTYkTGgkzuGXo_yCcA9PvNVaIdCCJX2o0FMFSAO3aCgYKAbQSARMSFQFWKvPlu8FKzh-YKUmAFBEGGe1bpw0163\", \"token_type\": null}', 96);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_blocked`
--
ALTER TABLE `accounts_blocked`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_blocked_other_id_ac796d02_fk_accounts_myuser_id` (`other_id`),
  ADD KEY `accounts_blocked_user_id_6ba915c0_fk_accounts_myuser_id` (`user_id`);

--
-- Indexes for table `accounts_comment`
--
ALTER TABLE `accounts_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_comment_image_id_02348f99_fk_accounts_image_id` (`image_id`),
  ADD KEY `accounts_comment_other_id_4b384986_fk_accounts_myuser_id` (`other_id`),
  ADD KEY `accounts_comment_user_id_7847fb99_fk_accounts_myuser_id` (`user_id`);

--
-- Indexes for table `accounts_favourite`
--
ALTER TABLE `accounts_favourite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_favourite_other_id_552dd3c2_fk_accounts_myuser_id` (`other_id`),
  ADD KEY `accounts_favourite_user_id_d5cb29ee_fk_accounts_myuser_id` (`user_id`);

--
-- Indexes for table `accounts_friend`
--
ALTER TABLE `accounts_friend`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_friend_other_id_3dce1a3b_fk_accounts_myuser_id` (`other_id`),
  ADD KEY `accounts_friend_user_id_d922c6b2_fk_accounts_myuser_id` (`user_id`);

--
-- Indexes for table `accounts_image`
--
ALTER TABLE `accounts_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_image_user_id_9ffe36f2_fk_accounts_myuser_id` (`user_id`);

--
-- Indexes for table `accounts_imagelike`
--
ALTER TABLE `accounts_imagelike`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_imagelike_image_id_id_77e07614_fk_accounts_image_id` (`image_id_id`),
  ADD KEY `accounts_imagelike_other_id_1e56d0fc_fk_accounts_myuser_id` (`other_id`),
  ADD KEY `accounts_imagelike_user_id_10b720d4_fk_accounts_myuser_id` (`user_id`);

--
-- Indexes for table `accounts_message`
--
ALTER TABLE `accounts_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_message_other_id_83d7f37c_fk_accounts_myuser_id` (`other_id`),
  ADD KEY `accounts_message_user_id_de4ba43b_fk_accounts_myuser_id` (`user_id`);

--
-- Indexes for table `accounts_myuser`
--
ALTER TABLE `accounts_myuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `accounts_permission`
--
ALTER TABLE `accounts_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `accounts_profile_profile_img_id_2b6b7ae3_fk_accounts_image_id` (`profile_img_id`);

--
-- Indexes for table `accounts_userflirt`
--
ALTER TABLE `accounts_userflirt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_userflirt_other_id_63c46cc6_fk_accounts_myuser_id` (`other_id`),
  ADD KEY `accounts_userflirt_user_id_568dee11_fk_accounts_myuser_id` (`user_id`);

--
-- Indexes for table `accounts_userlike`
--
ALTER TABLE `accounts_userlike`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_userlike_other_id_1a53de6b_fk_accounts_myuser_id` (`other_id`),
  ADD KEY `accounts_userlike_user_id_ffb24631_fk_accounts_myuser_id` (`user_id`);

--
-- Indexes for table `accounts_userviewed`
--
ALTER TABLE `accounts_userviewed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_userviewed_other_id_a186c1a8_fk_accounts_myuser_id` (`other_id`),
  ADD KEY `accounts_userviewed_user_id_30835e05_fk_accounts_myuser_id` (`user_id`);

--
-- Indexes for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `corsheaders_corsmodel`
--
ALTER TABLE `corsheaders_corsmodel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_accounts_myuser_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `extras_about`
--
ALTER TABLE `extras_about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extras_feedback`
--
ALTER TABLE `extras_feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `extras_feedback_user_id_5e91e917_fk_accounts_myuser_id` (`user_id`);

--
-- Indexes for table `extras_help`
--
ALTER TABLE `extras_help`
  ADD PRIMARY KEY (`id`),
  ADD KEY `extras_help_staff_id_dc4e3f67_fk_accounts_myuser_id` (`staff_id`);

--
-- Indexes for table `extras_termsandconditions`
--
ALTER TABLE `extras_termsandconditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fcm_django_fcmdevice`
--
ALTER TABLE `fcm_django_fcmdevice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fcm_django_fcmdevice_device_id_a9406c36` (`device_id`),
  ADD KEY `fcm_django_fcmdevice_user_id_6cdfc0a2_fk_accounts_myuser_id` (`user_id`);

--
-- Indexes for table `oauth2_provider_accesstoken`
--
ALTER TABLE `oauth2_provider_accesstoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `oauth2_provider_accesstoken_token_8af090f8_uniq` (`token`),
  ADD UNIQUE KEY `source_refresh_token_id` (`source_refresh_token_id`),
  ADD KEY `oauth2_provider_acce_user_id_6e4c9a65_fk_accounts_` (`user_id`),
  ADD KEY `oauth2_provider_accesstoken_application_id_b22886e1_fk` (`application_id`);

--
-- Indexes for table `oauth2_provider_application`
--
ALTER TABLE `oauth2_provider_application`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `client_id` (`client_id`),
  ADD KEY `oauth2_provider_application_client_secret_53133678` (`client_secret`),
  ADD KEY `oauth2_provider_appl_user_id_79829054_fk_accounts_` (`user_id`);

--
-- Indexes for table `oauth2_provider_grant`
--
ALTER TABLE `oauth2_provider_grant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `oauth2_provider_grant_code_49ab4ddf_uniq` (`code`),
  ADD KEY `oauth2_provider_grant_application_id_81923564_fk` (`application_id`),
  ADD KEY `oauth2_provider_grant_user_id_e8f62af8_fk_accounts_myuser_id` (`user_id`);

--
-- Indexes for table `oauth2_provider_refreshtoken`
--
ALTER TABLE `oauth2_provider_refreshtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `access_token_id` (`access_token_id`),
  ADD UNIQUE KEY `oauth2_provider_refreshtoken_token_revoked_af8a5134_uniq` (`token`,`revoked`),
  ADD KEY `oauth2_provider_refreshtoken_application_id_2d1c311b_fk` (`application_id`),
  ADD KEY `oauth2_provider_refr_user_id_da837fce_fk_accounts_` (`user_id`);

--
-- Indexes for table `services_addcustomer`
--
ALTER TABLE `services_addcustomer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services_advertisement`
--
ALTER TABLE `services_advertisement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_advertiseme_customer_id_0e3407e2_fk_services_` (`customer_id`),
  ADD KEY `services_advertisement_staff_id_05534701_fk_accounts_myuser_id` (`staff_id`);

--
-- Indexes for table `services_notification`
--
ALTER TABLE `services_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_notification_user_id_02fc477f_fk_accounts_myuser_id` (`user_id`),
  ADD KEY `services_notification_other_id_56f3c4ba_fk_accounts_myuser_id` (`other_id`);

--
-- Indexes for table `services_payment`
--
ALTER TABLE `services_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_payment_user_id_id_1d074f9b_fk_accounts_myuser_id` (`user_id_id`),
  ADD KEY `services_payment_transaction_id_id_bf25c94d_fk_services_` (`transaction_id_id`);

--
-- Indexes for table `services_premium`
--
ALTER TABLE `services_premium`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services_premiumdetail`
--
ALTER TABLE `services_premiumdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services_transaction`
--
ALTER TABLE `services_transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_transaction_premium_id_id_ee7e2140_fk_services_` (`premium_id_id`);

--
-- Indexes for table `social_auth_association`
--
ALTER TABLE `social_auth_association`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`);

--
-- Indexes for table `social_auth_code`
--
ALTER TABLE `social_auth_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  ADD KEY `social_auth_code_code_a2393167` (`code`),
  ADD KEY `social_auth_code_timestamp_176b341f` (`timestamp`);

--
-- Indexes for table `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`);

--
-- Indexes for table `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_auth_partial_token_3017fea3` (`token`),
  ADD KEY `social_auth_partial_timestamp_50f2119f` (`timestamp`);

--
-- Indexes for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  ADD KEY `social_auth_usersoci_user_id_17d28448_fk_accounts_` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_blocked`
--
ALTER TABLE `accounts_blocked`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `accounts_comment`
--
ALTER TABLE `accounts_comment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `accounts_favourite`
--
ALTER TABLE `accounts_favourite`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `accounts_friend`
--
ALTER TABLE `accounts_friend`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `accounts_image`
--
ALTER TABLE `accounts_image`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `accounts_imagelike`
--
ALTER TABLE `accounts_imagelike`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `accounts_message`
--
ALTER TABLE `accounts_message`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `accounts_myuser`
--
ALTER TABLE `accounts_myuser`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `accounts_permission`
--
ALTER TABLE `accounts_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `accounts_userflirt`
--
ALTER TABLE `accounts_userflirt`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `accounts_userlike`
--
ALTER TABLE `accounts_userlike`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `accounts_userviewed`
--
ALTER TABLE `accounts_userviewed`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=635;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `corsheaders_corsmodel`
--
ALTER TABLE `corsheaders_corsmodel`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `extras_about`
--
ALTER TABLE `extras_about`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `extras_feedback`
--
ALTER TABLE `extras_feedback`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `extras_help`
--
ALTER TABLE `extras_help`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `extras_termsandconditions`
--
ALTER TABLE `extras_termsandconditions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fcm_django_fcmdevice`
--
ALTER TABLE `fcm_django_fcmdevice`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `oauth2_provider_accesstoken`
--
ALTER TABLE `oauth2_provider_accesstoken`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth2_provider_application`
--
ALTER TABLE `oauth2_provider_application`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth2_provider_grant`
--
ALTER TABLE `oauth2_provider_grant`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth2_provider_refreshtoken`
--
ALTER TABLE `oauth2_provider_refreshtoken`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services_addcustomer`
--
ALTER TABLE `services_addcustomer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services_advertisement`
--
ALTER TABLE `services_advertisement`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services_notification`
--
ALTER TABLE `services_notification`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=765;

--
-- AUTO_INCREMENT for table `services_payment`
--
ALTER TABLE `services_payment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services_premium`
--
ALTER TABLE `services_premium`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services_premiumdetail`
--
ALTER TABLE `services_premiumdetail`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services_transaction`
--
ALTER TABLE `services_transaction`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `social_auth_association`
--
ALTER TABLE `social_auth_association`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_code`
--
ALTER TABLE `social_auth_code`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_blocked`
--
ALTER TABLE `accounts_blocked`
  ADD CONSTRAINT `accounts_blocked_other_id_ac796d02_fk_accounts_myuser_id` FOREIGN KEY (`other_id`) REFERENCES `accounts_myuser` (`id`),
  ADD CONSTRAINT `accounts_blocked_user_id_6ba915c0_fk_accounts_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_myuser` (`id`);

--
-- Constraints for table `accounts_comment`
--
ALTER TABLE `accounts_comment`
  ADD CONSTRAINT `accounts_comment_image_id_02348f99_fk_accounts_image_id` FOREIGN KEY (`image_id`) REFERENCES `accounts_image` (`id`),
  ADD CONSTRAINT `accounts_comment_other_id_4b384986_fk_accounts_myuser_id` FOREIGN KEY (`other_id`) REFERENCES `accounts_myuser` (`id`),
  ADD CONSTRAINT `accounts_comment_user_id_7847fb99_fk_accounts_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_myuser` (`id`);

--
-- Constraints for table `accounts_favourite`
--
ALTER TABLE `accounts_favourite`
  ADD CONSTRAINT `accounts_favourite_other_id_552dd3c2_fk_accounts_myuser_id` FOREIGN KEY (`other_id`) REFERENCES `accounts_myuser` (`id`),
  ADD CONSTRAINT `accounts_favourite_user_id_d5cb29ee_fk_accounts_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_myuser` (`id`);

--
-- Constraints for table `accounts_friend`
--
ALTER TABLE `accounts_friend`
  ADD CONSTRAINT `accounts_friend_other_id_3dce1a3b_fk_accounts_myuser_id` FOREIGN KEY (`other_id`) REFERENCES `accounts_myuser` (`id`),
  ADD CONSTRAINT `accounts_friend_user_id_d922c6b2_fk_accounts_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_myuser` (`id`);

--
-- Constraints for table `accounts_image`
--
ALTER TABLE `accounts_image`
  ADD CONSTRAINT `accounts_image_user_id_9ffe36f2_fk_accounts_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_myuser` (`id`);

--
-- Constraints for table `accounts_imagelike`
--
ALTER TABLE `accounts_imagelike`
  ADD CONSTRAINT `accounts_imagelike_image_id_id_77e07614_fk_accounts_image_id` FOREIGN KEY (`image_id_id`) REFERENCES `accounts_image` (`id`),
  ADD CONSTRAINT `accounts_imagelike_other_id_1e56d0fc_fk_accounts_myuser_id` FOREIGN KEY (`other_id`) REFERENCES `accounts_myuser` (`id`),
  ADD CONSTRAINT `accounts_imagelike_user_id_10b720d4_fk_accounts_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_myuser` (`id`);

--
-- Constraints for table `accounts_message`
--
ALTER TABLE `accounts_message`
  ADD CONSTRAINT `accounts_message_other_id_83d7f37c_fk_accounts_myuser_id` FOREIGN KEY (`other_id`) REFERENCES `accounts_myuser` (`id`),
  ADD CONSTRAINT `accounts_message_user_id_de4ba43b_fk_accounts_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_myuser` (`id`);

--
-- Constraints for table `accounts_permission`
--
ALTER TABLE `accounts_permission`
  ADD CONSTRAINT `accounts_permission_user_id_252955c2_fk_accounts_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_myuser` (`id`);

--
-- Constraints for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  ADD CONSTRAINT `accounts_profile_profile_img_id_2b6b7ae3_fk_accounts_image_id` FOREIGN KEY (`profile_img_id`) REFERENCES `accounts_image` (`id`),
  ADD CONSTRAINT `accounts_profile_user_id_49a85d32_fk_accounts_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_myuser` (`id`);

--
-- Constraints for table `accounts_userflirt`
--
ALTER TABLE `accounts_userflirt`
  ADD CONSTRAINT `accounts_userflirt_other_id_63c46cc6_fk_accounts_myuser_id` FOREIGN KEY (`other_id`) REFERENCES `accounts_myuser` (`id`),
  ADD CONSTRAINT `accounts_userflirt_user_id_568dee11_fk_accounts_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_myuser` (`id`);

--
-- Constraints for table `accounts_userlike`
--
ALTER TABLE `accounts_userlike`
  ADD CONSTRAINT `accounts_userlike_other_id_1a53de6b_fk_accounts_myuser_id` FOREIGN KEY (`other_id`) REFERENCES `accounts_myuser` (`id`),
  ADD CONSTRAINT `accounts_userlike_user_id_ffb24631_fk_accounts_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_myuser` (`id`);

--
-- Constraints for table `accounts_userviewed`
--
ALTER TABLE `accounts_userviewed`
  ADD CONSTRAINT `accounts_userviewed_other_id_a186c1a8_fk_accounts_myuser_id` FOREIGN KEY (`other_id`) REFERENCES `accounts_myuser` (`id`),
  ADD CONSTRAINT `accounts_userviewed_user_id_30835e05_fk_accounts_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_myuser` (`id`);

--
-- Constraints for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_accounts_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_myuser` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_myuser` (`id`);

--
-- Constraints for table `extras_feedback`
--
ALTER TABLE `extras_feedback`
  ADD CONSTRAINT `extras_feedback_user_id_5e91e917_fk_accounts_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_myuser` (`id`);

--
-- Constraints for table `extras_help`
--
ALTER TABLE `extras_help`
  ADD CONSTRAINT `extras_help_staff_id_dc4e3f67_fk_accounts_myuser_id` FOREIGN KEY (`staff_id`) REFERENCES `accounts_myuser` (`id`);

--
-- Constraints for table `fcm_django_fcmdevice`
--
ALTER TABLE `fcm_django_fcmdevice`
  ADD CONSTRAINT `fcm_django_fcmdevice_user_id_6cdfc0a2_fk_accounts_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_myuser` (`id`);

--
-- Constraints for table `oauth2_provider_accesstoken`
--
ALTER TABLE `oauth2_provider_accesstoken`
  ADD CONSTRAINT `oauth2_provider_acce_source_refresh_token_e66fbc72_fk_oauth2_pr` FOREIGN KEY (`source_refresh_token_id`) REFERENCES `oauth2_provider_refreshtoken` (`id`),
  ADD CONSTRAINT `oauth2_provider_acce_user_id_6e4c9a65_fk_accounts_` FOREIGN KEY (`user_id`) REFERENCES `accounts_myuser` (`id`),
  ADD CONSTRAINT `oauth2_provider_accesstoken_application_id_b22886e1_fk` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`);

--
-- Constraints for table `oauth2_provider_application`
--
ALTER TABLE `oauth2_provider_application`
  ADD CONSTRAINT `oauth2_provider_appl_user_id_79829054_fk_accounts_` FOREIGN KEY (`user_id`) REFERENCES `accounts_myuser` (`id`);

--
-- Constraints for table `oauth2_provider_grant`
--
ALTER TABLE `oauth2_provider_grant`
  ADD CONSTRAINT `oauth2_provider_grant_application_id_81923564_fk` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  ADD CONSTRAINT `oauth2_provider_grant_user_id_e8f62af8_fk_accounts_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_myuser` (`id`);

--
-- Constraints for table `oauth2_provider_refreshtoken`
--
ALTER TABLE `oauth2_provider_refreshtoken`
  ADD CONSTRAINT `oauth2_provider_refr_access_token_id_775e84e8_fk_oauth2_pr` FOREIGN KEY (`access_token_id`) REFERENCES `oauth2_provider_accesstoken` (`id`),
  ADD CONSTRAINT `oauth2_provider_refr_user_id_da837fce_fk_accounts_` FOREIGN KEY (`user_id`) REFERENCES `accounts_myuser` (`id`),
  ADD CONSTRAINT `oauth2_provider_refreshtoken_application_id_2d1c311b_fk` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`);

--
-- Constraints for table `services_advertisement`
--
ALTER TABLE `services_advertisement`
  ADD CONSTRAINT `services_advertiseme_customer_id_0e3407e2_fk_services_` FOREIGN KEY (`customer_id`) REFERENCES `services_addcustomer` (`id`),
  ADD CONSTRAINT `services_advertisement_staff_id_05534701_fk_accounts_myuser_id` FOREIGN KEY (`staff_id`) REFERENCES `accounts_myuser` (`id`);

--
-- Constraints for table `services_notification`
--
ALTER TABLE `services_notification`
  ADD CONSTRAINT `services_notification_other_id_56f3c4ba_fk_accounts_myuser_id` FOREIGN KEY (`other_id`) REFERENCES `accounts_myuser` (`id`),
  ADD CONSTRAINT `services_notification_user_id_02fc477f_fk_accounts_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_myuser` (`id`);

--
-- Constraints for table `services_payment`
--
ALTER TABLE `services_payment`
  ADD CONSTRAINT `services_payment_transaction_id_id_bf25c94d_fk_services_` FOREIGN KEY (`transaction_id_id`) REFERENCES `services_transaction` (`id`),
  ADD CONSTRAINT `services_payment_user_id_id_1d074f9b_fk_accounts_myuser_id` FOREIGN KEY (`user_id_id`) REFERENCES `accounts_myuser` (`id`);

--
-- Constraints for table `services_transaction`
--
ALTER TABLE `services_transaction`
  ADD CONSTRAINT `services_transaction_premium_id_id_ee7e2140_fk_services_` FOREIGN KEY (`premium_id_id`) REFERENCES `services_premium` (`id`);

--
-- Constraints for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD CONSTRAINT `social_auth_usersoci_user_id_17d28448_fk_accounts_` FOREIGN KEY (`user_id`) REFERENCES `accounts_myuser` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
