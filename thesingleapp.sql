-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 18, 2023 at 06:01 AM
-- Server version: 8.0.32-0ubuntu0.20.04.2
-- PHP Version: 7.4.3-4ubuntu2.18

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
(4, '2023-04-18 10:55:55.400183', 13, 9);

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
(5, 'Hello', '2023-04-18 10:41:13.719500', 6, 13, 9);

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
(11, '2023-04-18 10:38:03.309660', 9, 13);

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
(2, 0, '2023-03-25 07:07:19.270971', 3, 1);

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
(7, 'accounts/9/1681814345100.jpeg', 0, '2023-04-18', 9);

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
(5, '2023-04-18 10:39:58.294857', 7, 9, 13);

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
(10, 'sshjsjs', 1, '2023-04-18 10:50:17.324646', 13, 9);

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
(3, 'pbkdf2_sha256$150000$yul7E5npIbT4$QAevFx6ASPVDPl+X1jAedxwKYGF4Y1wGz7rwVi7Ry2k=', '2023-04-12 07:00:11.570782', '9222333456', 'gopi@desss.com', 1, 0, 0, '2023-03-24', NULL, NULL, '000000', 'O', 'N'),
(4, 'pbkdf2_sha256$150000$fxNNDmaJ4DaS$SgjB4kjOY1h1GSVUupl+Gydhw0tsMuTNtoEVv6kK3Cc=', NULL, '9751236141', 'arunchandru@desss.com', 1, 0, 0, '2023-03-24', NULL, NULL, '000000', 'O', 'N'),
(5, 'pbkdf2_sha256$150000$fW8kkZgNoOH3$Kfve+9P4Cp2h3JYT2afLtb+Riy2fphcQtYEmvXfnrEI=', '2023-04-17 06:18:24.877786', '9176878709', 'prabhh@desss.com', 1, 0, 0, '2023-03-24', NULL, NULL, '000000', 'O', 'N'),
(6, 'pbkdf2_sha256$150000$OKiTRRntfI8l$MSPSzouHw7OGSFl0kIAc2c6AQra70mTvXJtLUwPpaTk=', '2023-04-12 06:58:36.150387', '7888788764', 'karthickandroid@desss.com', 1, 0, 0, '2023-04-12', NULL, NULL, '000000', 'O', 'N'),
(7, 'pbkdf2_sha256$150000$EhfDk0ULOBM0$eWUKG8RVBuhN2UqQnBnGg7weLaZ2zEPb6UwB6HbMGOI=', '2023-04-12 06:27:56.957225', '7810894925', 'karthick@desss.com', 1, 0, 0, '2023-04-12', NULL, NULL, '000000', 'O', 'N'),
(8, 'pbkdf2_sha256$150000$PwAaJiQ1F3hp$WDi1BMJGIxL+heOCNYKkvqgxnCOZd3foLnaB9GQidZA=', NULL, 'karthickdesss@desss.com', 'karthickdesss@desss.com', 1, 0, 0, '2023-04-12', NULL, NULL, '000000', 'O', 'E'),
(9, 'pbkdf2_sha256$150000$i59YkwDJgL2a$L/SkZ5xHaDnWYhMbpJf4Y20l6HFFAZc4VEKrO6i57kU=', '2023-04-18 10:58:44.817851', '9176879709', 'prabhu@desss.com', 1, 0, 0, '2023-04-12', NULL, NULL, '000000', 'O', 'N'),
(10, 'pbkdf2_sha256$150000$1RxSOwrgXJc6$+YtbqBBT+A9r/AUVuaRtJohiS+sMYUUgWbal67v6bHY=', NULL, 'karthi.rock1997@gmail.com', 'karthi.rock1997@gmail.com', 1, 0, 0, '2023-04-12', NULL, NULL, '000000', 'O', 'E'),
(11, 'pbkdf2_sha256$150000$eLLEvuqkfKgN$UkU91Sk5cctXjF0GKpzHYYEQFopt5hJvjsIYWcRas4c=', '2023-04-18 10:17:49.982812', '8778763114', 'rabiyuldesss@desss.com', 1, 0, 0, '2023-04-17', NULL, NULL, '000000', 'O', 'N'),
(12, 'pbkdf2_sha256$150000$jMzzHJxIF7kC$ZUTUH49CDX5bJ34MTKIYc9cdIizAIXw8f9EdxrlF2j8=', '2023-04-18 10:47:12.596317', NULL, 'python@desss.com', 1, 1, 1, '2023-04-18', NULL, NULL, '000000', 'O', 'N'),
(13, 'pbkdf2_sha256$150000$cA7zNHAgwV2O$WI2ldKWSjQC+V6EK15xUr/0ulW9v+aYDGibcFkwFsAQ=', '2023-04-18 10:55:44.017780', '7339438971', 'kamali@desss.com', 1, 0, 0, '2023-04-18', NULL, NULL, '000000', 'O', 'N');

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
(7, 0, 0, 0, 1, 0, 0, 0, 9),
(8, 0, 0, 0, 0, 0, 0, 0, 10),
(9, 0, 0, 0, 0, 0, 0, 0, 11),
(10, 0, 0, 0, 1, 0, 0, 0, 13);

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
(1, 'Rabiyulfahim', 'Hasim', '1997-05-05', '', 1, 'M', 'B', '10.56229610', '78.77814230', 'hi', 'playing video games', 0, 'female', 'muslim', 'software developer', 'no', 'single', '0', 'yes', 0, 0, 'M', NULL, 1),
(2, 'Gopi', 'Testing', '1986-10-23', 'Chennai', 1, 'M', 'F', '13.08600000', '80.27510000', 'hi', 'driving', 1, 'female', 'hindu', 'senior developer', 'No', 'Single', '0', 'yes', 0, 0, 'M', NULL, 3),
(3, 'P', 'www', '1999-10-02', 'Chennai', 0, 'M', 'F', '13.08600000', '80.27510000', 'hi', 'hi', 1, 'Male', 'Hindu', 'Software Engineering', 'No', 'Single', '0', 'No', 0, 0, 'M', NULL, 5),
(4, 'karthick', 'android', '1998-01-28', 'Pudukkottai', 0, 'M', 'F', '10.56243870', '78.77788050', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'M', NULL, 6),
(5, 'karthicks', 'desss', '1997-08-27', 'Pudukkottai', 0, 'M', 'F', '10.56243870', '78.77788050', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'M', NULL, 7),
(6, 'karthickdess', '', NULL, '', 0, '', 'B', '0.00000000', '0.00000000', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'M', NULL, 8),
(7, 'prabhu', 'devaraj', '1998-03-25', '', 1, 'M', 'F', '10.56244840', '78.77814740', 'hi', 'playing outside games', 1, 'F', 'Hindu', 'senior developer', 'No', 'single', '0', 'yes', 0, 0, 'M', NULL, 9),
(8, 'karthikeyan karthi', '', '1997-08-27', 'Pudukkottai', 0, 'M', 'F', '10.56228670', '78.77783130', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'M', NULL, 10),
(9, 'Rabi', 'Testing', '1986-10-23', 'Pudukkottai', 0, 'M', 'M', '10.56240120', '78.77789630', '', '', 0, '', '', '', '', '', '', '', 0, 0, 'M', 5, 11),
(10, 'Kamali', 'c sharp', '1995-11-23', 'Chennai', 1, 'F', 'F', '13.08600000', '80.27510000', 'Testing', 'Coding', 1, 'both', 'Christian', 'senior developer', 'No', 'Single', '0', 'Yes', 0, 0, 'M', NULL, 13);

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
(4, '2023-04-18 10:37:05.489224', 9, 13);

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
(2, '2023-03-24 10:55:04.042244', 3, 1);

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
(36, '2023-04-18 10:55:55.191412', 13, 9);

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
('111750d94d877e5109c46c2476736fcda4b191ee', '2023-04-12 06:27:33.131788', 7),
('11c78429e6b034096c30ed4330ac560b0ae7eb7e', '2023-03-24 07:37:13.473167', 1),
('1b5b9f01377cb25e5ab4e51e1aa9d700ecec119e', '2023-03-24 11:01:09.474830', 5),
('5b5fe867d8a62eb34f3ae8a683909685dbe24b88', '2023-04-12 06:44:43.570136', 10),
('754c51248755b6f1fe624b7c5151b809be86a061', '2023-04-12 06:42:45.039952', 8),
('7c42634439ca62835f6223ce6bd75eed54d1b9fa', '2023-04-17 13:31:10.587058', 11),
('8c778ae2f3e1a0995268de263a539fd169d679f4', '2023-03-24 10:11:16.788980', 3),
('be87132b1fa00d10924e8320f76b300e986fa94a', '2023-04-18 10:21:55.845245', 13),
('d2b5bcf84fdbd570cfc42f2f7fdc25d20799d7d2', '2023-04-10 07:17:16.760293', 2),
('ec5cf5eaf5fbb1588584e3f419cd8703bdf688f1', '2023-04-12 06:25:18.622167', 6),
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
(4, '2023-04-18 10:48:19.544519', '7', 'prabhu', 2, '[{\"changed\": {\"fields\": [\"city\", \"is_premium\", \"about\", \"hobby\", \"looking_for\", \"religion\", \"occupation\", \"retired\", \"marital_status\", \"number_of_children\", \"living_at_home\"]}}]', 23, 12);

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
('0t3dvcz8e53318twh0uzcgeey7j4p0hu', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:58:44.820521'),
('11hx8dmhn46mvzen3cdmazt9th74oh2s', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:52:58.538040'),
('2kcbche1buz9ro7vl9ya49eouv6eqz7r', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:27:38.644197'),
('2riirsnwbhq4qqhxzn4mn57fnbwugmdb', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:38:40.505358'),
('3wm0ip5splofms91t2oftzhhy5s0pja5', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:43:03.299522'),
('4xo34uj2viayvch9bytwf7cz9b88953q', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:42:01.858943'),
('5zs5n1k3rblpoylil3cnbhxp1ien3g15', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:55:46.491362'),
('6h5rl1jyyactwstebssq2eaz74p2p0et', 'YThjNWUyMjc0MDM1NGY1ZjAxMzkwMzc4MThiNDhmMTlmMGEzNjMyNDp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwM2Y3MTg3MGY3YmZjOTk0ZWI3MTE3NmQ4YTFmZGVjMjlkOWM1YmY1In0=', '2023-05-02 10:17:49.985424'),
('79h0zg8zj8xhwu9cnrqv2llqyla5fcwi', 'YThjNWUyMjc0MDM1NGY1ZjAxMzkwMzc4MThiNDhmMTlmMGEzNjMyNDp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwM2Y3MTg3MGY3YmZjOTk0ZWI3MTE3NmQ4YTFmZGVjMjlkOWM1YmY1In0=', '2023-05-01 13:33:04.548415'),
('7rtksyxrujejq4xxndejwzqt0sxeiphv', 'MTJmYmE4NmM0OWM2MzBiMzk3Yzg4OTRjZTE4ODIwMmQwMDk5NzA0NTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzExMDRiOGQwMTI4ZjhkNjI5OWJhY2IyMzg3MDVhMzlmYTU4NGZjIn0=', '2023-05-02 10:27:50.075170'),
('9r5r55r89elg7weadt2fw6n9e4zzssmn', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:37:03.458205'),
('a0mrm61eqr6mhcjlndy1vd4duolscsid', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:35:19.695866'),
('afordp0hy3zgrkrz2vzvedn7l0vrdfqa', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:36:16.329103'),
('b0qjiuokigr0vu15e62w0r8oaalu91oj', 'YTIzMjEwNDdhNzBkMzRjNjRhOWM3ODFhZTg5YjJlMDRmMjk1MDg3Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5BbGxvd0FsbFVzZXJzTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjQ3ZmQwYjZiZDUyYjg2NDAyNDIwZTU3ZmY5ZGRjNjI3ZGE2MWViMyJ9', '2023-04-26 07:00:11.573618'),
('b27kurmkiiucouzpq8tcla3ywwmwk7q0', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:35:40.775934'),
('bk6p77uppecmqqpybkq9mflwy68fkkk0', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:53:47.585289'),
('c5aar57axp0srej0oqtayh12yl4jy9ud', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:40:58.575686'),
('ct1ztgop364g49pxe50p3wsovl4rbl8t', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:38:17.973456'),
('d6ifsty47uz3oferp6zmf4nyr6vbelxn', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:51:56.871870'),
('e929an9esvajgszv2anx5efn5kbdeudk', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:43:47.546403'),
('ep4qf83bjxk7qncc4y13mf0220x1fq5k', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:53:28.571242'),
('exipgw757fyojunm85ovz9rq8w0hbger', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:38:04.325358'),
('fdplx67o6mrof2a74miky0yzc0qh5lt1', 'NTE4NDUyOTlkZDZiNTdjMDNiMTc5M2NjZWYyZjg5NWFlODc4ZmU4MDp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjkzOTA0NWUxMzA4YmMxYzVkNGM4MjhlNmViNDU3MmM2NjhmNmQzZWEifQ==', '2023-04-26 06:27:56.959748'),
('gdoxdmkbrbxv34ja1x9hs241ds7k1oe0', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:49:29.053891'),
('gh5cvx4ohjm43yvfay32yw1rprmk7p5j', 'YThjNWUyMjc0MDM1NGY1ZjAxMzkwMzc4MThiNDhmMTlmMGEzNjMyNDp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwM2Y3MTg3MGY3YmZjOTk0ZWI3MTE3NmQ4YTFmZGVjMjlkOWM1YmY1In0=', '2023-05-02 10:17:29.198196'),
('gl0s4qbgqn8cw1u6qci31alzcvwus8nx', 'YThjNWUyMjc0MDM1NGY1ZjAxMzkwMzc4MThiNDhmMTlmMGEzNjMyNDp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwM2Y3MTg3MGY3YmZjOTk0ZWI3MTE3NmQ4YTFmZGVjMjlkOWM1YmY1In0=', '2023-05-02 10:17:18.272891'),
('ic0kucrnrjotfw1chukxdhg3us4z9x92', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:43:16.174443'),
('kq1yq7xqglb37dvpbkfqt15dkd2sdpfd', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:57:11.658197'),
('lmmpmd7xqcrjkuzgf997j6co1zuxz4ei', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:40:15.105028'),
('md8ly26z84n5dh495ioy2elvuh9rt2o6', 'MTJmYmE4NmM0OWM2MzBiMzk3Yzg4OTRjZTE4ODIwMmQwMDk5NzA0NTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFjY291bnRzLmFwaS5iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzExMDRiOGQwMTI4ZjhkNjI5OWJhY2IyMzg3MDVhMzlmYTU4NGZjIn0=', '2023-05-02 10:55:44.021506'),
('mqzuyla5pbs9do3dtxky4qkocutj0lg1', 'ZjI3ZWI4MTI5MzEwODY1YzBkNmQ0YzViZDgxZjU5ZDhjYjFiNjAwNDp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjBmZjUwZjA4NzE2MmU0OTk2ZjU5MDcwOGU5Y2I4MDc4MDYxYmQ4MjkifQ==', '2023-04-26 06:26:19.074890'),
('nkvu50t3f63gfll3h76ldodt9u9373e4', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:39:53.390603'),
('npbc4k3pf8rlw5lq2ghcw71muzg2ubmw', 'ZjI3ZWI4MTI5MzEwODY1YzBkNmQ0YzViZDgxZjU5ZDhjYjFiNjAwNDp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjBmZjUwZjA4NzE2MmU0OTk2ZjU5MDcwOGU5Y2I4MDc4MDYxYmQ4MjkifQ==', '2023-04-26 06:58:36.163748'),
('nxvcfdiu4kztb2klq1ydymnx75qtmdez', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:42:30.544956'),
('p48rwfica5pcpi0n5ke6zwo3fldzze1g', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:37:21.014078'),
('pvwmbcibulyyll7jhnaib9x8yg62f6oo', 'N2QyMTI3OGVkYjI0MThhMGI5NjJhYzgwNWE1ODgwNGIzNmI2MjVkYTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5BbGxvd0FsbFVzZXJzTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGI4ZTAyZmZlOTE2MmQ0YzE0ZmJiYThmZWU2ODI0ZGY3M2FkNGI0MCJ9', '2023-05-01 06:18:24.891595'),
('q3tzlb8hbjhekn2dt0843mfaqm3q05fb', 'OTVmZDdmYWY4ZDdkNDMzNmM3NTk0YTBmNDY4OGQ0MDkyMzkxNDQ1NDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjI2NGY1YzdmN2U5ZjliMTQ0NjdlNzY1MTgwYTZjMzAwOGVmNzNjMmEifQ==', '2023-04-26 06:21:47.967551'),
('si0jaktb0wrw4uj8xgqmc9rw7tf71lw0', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:37:47.095000'),
('thwhzpog8q0hrq50ovlsfjjom04xtrwa', 'OTVmZDdmYWY4ZDdkNDMzNmM3NTk0YTBmNDY4OGQ0MDkyMzkxNDQ1NDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjI2NGY1YzdmN2U5ZjliMTQ0NjdlNzY1MTgwYTZjMzAwOGVmNzNjMmEifQ==', '2023-04-24 07:24:19.799823'),
('uljvf2xfy95nnerulxwmj1ltsbsbja4o', 'OTVmZDdmYWY4ZDdkNDMzNmM3NTk0YTBmNDY4OGQ0MDkyMzkxNDQ1NDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjI2NGY1YzdmN2U5ZjliMTQ0NjdlNzY1MTgwYTZjMzAwOGVmNzNjMmEifQ==', '2023-04-24 07:27:04.558188'),
('xj3zzcwijsjp9b0jx502475v21pwbge9', 'ZTdlNTQyZTRkMWJlOGY3YzJkY2Q2NmU0NjFhM2I4YjhkMTY4ZTEyYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMDA3OTIzN2FhY2ZhYTQ4ZDg4NTcwNmU5NzQyZTZlN2IxODA5ZjEifQ==', '2023-05-02 10:47:48.587327'),
('ztevruklymi4a2jb61hz2pvgs1flp74w', 'OTVmZDdmYWY4ZDdkNDMzNmM3NTk0YTBmNDY4OGQ0MDkyMzkxNDQ1NDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMuYXBpLmJhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjI2NGY1YzdmN2U5ZjliMTQ0NjdlNzY1MTgwYTZjMzAwOGVmNzNjMmEifQ==', '2023-04-24 07:20:54.210508');

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
(1, 'The Single App Online dating services aim to help you meet someone. ... More than half of young adults (18-24 years old) see dating sites and apps as platforms for casual hookups. Older adults are more likely to see them as a means to helping them develop short and long-term relationships.', '2023-04-12');

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
(3, 'Thanks for the training', '2023-04-18', 9);

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
(2, '<p class=\"MsoNormal\"><span>Welcome to </span><span>TheSingleApp.com&#10;</span><span>Privacy Policy. Thank&#10;you for taking the time to read it.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>We appreciate that you&#10;trust us with your information and we intend to always keep that trust. This&#10;starts with making sure you understand the information we collect, why we&#10;collect it, how it is used and your choices regarding your information. This&#10;Policy describes our privacy practices in plain language, keeping legal and&#10;technical jargon to a minimum.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>This Privacy Policy&#10;applies beginning May 25, 2018. The previous version of this Privacy Policy,&#10;available&#160;</span><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy/archive/20161116\"><span>here</span></a><span>, will apply until then.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>EFFECTIVE DATE: May&#10;25, 2018</span></p>&#10;&#10;<p class=\"MsoNormal\" align=\"right\"><span>1.</span></p>&#10;&#10;<p class=\"MsoNormal\"><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#WhoWeAre\"><span>WHO WE ARE</span></a><span></span></p>&#10;&#10;<p class=\"MsoNormal\" align=\"right\"><span>2.</span></p>&#10;&#10;<p class=\"MsoNormal\"><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#WhereThisPrivacyPolicyApplies\"><span>WHERE THIS PRIVACY POLICY APPLIES</span></a><span></span></p>&#10;&#10;<p class=\"MsoNormal\" align=\"right\"><span>3.</span></p>&#10;&#10;<p class=\"MsoNormal\"><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#InformationWeCollect\"><span>INFORMATION WE COLLECT</span></a><span></span></p>&#10;&#10;<p class=\"MsoNormal\" align=\"right\"><span>4.</span></p>&#10;&#10;<p class=\"MsoNormal\"><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#CookiesAndOtherSimilarDataCollectionTechnologies\"><span>COOKIES AND OTHER SIMILAR DATA COLLECTION&#10;TECHNOLOGIES</span></a><span></span></p>&#10;&#10;<p class=\"MsoNormal\" align=\"right\"><span>5.</span></p>&#10;&#10;<p class=\"MsoNormal\"><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#HowWeUseInformation\"><span>HOW WE USE INFORMATION</span></a><span></span></p>&#10;&#10;<p class=\"MsoNormal\" align=\"right\"><span>6.</span></p>&#10;&#10;<p class=\"MsoNormal\"><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#HowWeShareInformation\"><span>HOW WE SHARE INFORMATION</span></a><span></span></p>&#10;&#10;<p class=\"MsoNormal\" align=\"right\"><span>7.</span></p>&#10;&#10;<p class=\"MsoNormal\"><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#CrossBorderDataTransfers\"><span>CROSS-BORDER DATA TRANSFERS</span></a><span></span></p>&#10;&#10;<p class=\"MsoNormal\" align=\"right\"><span>8.</span></p>&#10;&#10;<p class=\"MsoNormal\"><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#YourRights\"><span>YOUR RIGHTS</span></a><span></span></p>&#10;&#10;<p class=\"MsoNormal\" align=\"right\"><span>9.</span></p>&#10;&#10;<p class=\"MsoNormal\"><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#ResidentsOfCalifornia\"><span>RESIDENTS OF CALIFORNIA</span></a><span></span></p>&#10;&#10;<p class=\"MsoNormal\" align=\"right\"><span>10.</span></p>&#10;&#10;<p class=\"MsoNormal\"><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#HowWeProtectYourInformation\"><span>HOW WE PROTECT YOUR INFORMATION</span></a><span></span></p>&#10;&#10;<p class=\"MsoNormal\" align=\"right\"><span>11.</span></p>&#10;&#10;<p class=\"MsoNormal\"><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#HowLongWeRetainYourInformation\"><span>HOW LONG WE RETAIN YOUR INFORMATION</span></a><span></span></p>&#10;&#10;<p class=\"MsoNormal\" align=\"right\"><span>12.</span></p>&#10;&#10;<p class=\"MsoNormal\"><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#ChildrensPrivacy\"><span>CHILDREN\'S PRIVACY</span></a><span></span></p>&#10;&#10;<p class=\"MsoNormal\" align=\"right\"><span>13.</span></p>&#10;&#10;<p class=\"MsoNormal\"><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#PrivacyPolicyChanges\"><span>PRIVACY POLICY CHANGES</span></a><span></span></p>&#10;&#10;<p class=\"MsoNormal\" align=\"right\"><span>14.</span></p>&#10;&#10;<p class=\"MsoNormal\"><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#HowToContactUs\"><span>HOW TO CONTACT US</span></a><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>1.WHO WE ARE</span></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>If you live in the&#10;United States or Canada, the company that is responsible for your information&#10;under this Privacy Policy (the &#34;data controller&#34;) is:</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>Media company name and address here.&#160;&#10;</span></b></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>2.WHERE THIS PRIVACY POLICY APPLIES</span></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>This Privacy Policy&#10;applies to websites, apps, events and other services operated by </span><span>TheSingleApp.com&#10;</span><span>For simplicity, we&#10;refer to all of these as our &#34;services&#34; in this Privacy Policy. To&#10;make it extra clear, we\'ve added links to this Privacy Policy on all applicable&#10;services.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>Some services may&#10;require their own unique privacy policy. If a particular service has its own&#10;privacy policy, then that policy -- not this Privacy Policy -- applies.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>3.INFORMATION WE COLLECT</span></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>It goes without&#10;saying, we can\'t help you develop meaningful connections without some&#10;information about you, such as basic profile details and the types of people&#10;you\'d like to meet. We also collect information generated as you use our&#10;services, for example access logs, as well as information from third parties,&#10;like when you access our services through a social media account. If you want&#10;additional info, we go into more detail below.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>Information you give us</span></i></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>You choose to give us&#10;certain information when using our services. This includes:</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><span>When you create an account, you&#10;     provide us with at least your login credentials, as well as some basic&#10;     details necessary for the service to work, such as your gender and date of&#10;     birth.</span></li>&#10; <li class=\"MsoNormal\"><span>When you complete your profile,&#10;     you can share with us additional information, such as details on your&#10;     personality, lifestyle, interests and other details about you, as well as&#10;     content such as photos and videos. To add certain content, like pictures&#10;     or videos, you may allow us to access your camera or photo album. Some of&#10;     the information you choose to provide us may be considered&#10;     &#34;special&#34; or &#34;sensitive&#34; in certain jurisdictions, for&#10;     example your racial or ethnic origins, sexual orientation and religious&#10;     beliefs. By choosing to provide this information, you consent to our&#10;     processing of that information.</span></li>&#10; <li class=\"MsoNormal\"><span>When you subscribe to a paid&#10;     service or make a purchase directly from us (rather than through a&#10;     platform such as iOS or Android), you provide us or our payment service&#10;     provider with information, such as your debit or credit card number or&#10;     other financial information.</span></li>&#10; <li class=\"MsoNormal\"><span>When you participate in surveys&#10;     or focus groups, you give us your insights into our products and services,&#10;     responses to our questions and testimonials.</span></li>&#10; <li class=\"MsoNormal\"><span>When you choose to participate&#10;     in our promotions, events or contests, we collect the information that you&#10;     use to register or enter.</span></li>&#10; <li class=\"MsoNormal\"><span>If you contact our customer&#10;     care team, we collect the information you give us during the interaction.&#10;     Sometimes, we monitor or record these interactions for training purposes&#10;     and to ensure a high quality of service.</span></li>&#10; <li class=\"MsoNormal\"><span>If you ask us to communicate&#10;     with or otherwise process information of other people (for example, if you&#10;     ask us to send an email on your behalf to one of your friends), we collect&#10;     the information about others that you give us in order to complete your&#10;     request.</span></li>&#10; <li class=\"MsoNormal\"><span>Of course, we also process your&#10;     chats with other users as well as the content you publish, as part of the&#10;     operation of the services.</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>Information we receive from others</span></i></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>In addition to the&#10;information you provide us directly, we receive information about you from&#10;others, including:</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><b><span>Other&#10;     Users</span></b></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>Other users may provide information about you as they use our&#10;services. For instance, we may collect information about you from other users&#10;if they contact us about you.</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><b><span>Social&#10;     Media</span></b></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>You may be able to use your social media login (such as Facebook&#10;Login) to create and log into your </span><span>TheSingleApp.com </span><span>account. This saves you from having to&#10;remember yet another user name and password and allows you to share some&#10;information from your social media account with us.</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><b><span>Other&#10;     Partners</span></b></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>We may receive info about you from our partners, for instance&#10;when BlackPeopleMeet.com accounts can be created through a partner\'s websites&#10;(in which case they pass along registration information to us) or where </span><span>TheSingleApp.com&#10;</span><span>ads are published on a&#10;partner\'s websites and platforms (in which case they may pass along details on&#10;a campaign\'s success).</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>Information collected when you use our&#10;services</span></i></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>When you use our&#10;services, we collect information about which features you\'ve used, how you\'ve&#10;used them and the devices you use to access our services. See below for more&#10;details:</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><b><span>Usage&#10;     Information</span></b></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>We collect information about your activity on our services, for&#10;instance how you use them (e.g., date and time you logged in, features you\'ve&#10;been using, searches, clicks and pages which have been shown to you, referring&#10;webpage address, advertising that you click on) and how you interact with other&#10;users (e.g., users you connect and interact with, time and date of your&#10;exchanges, number of messages you send and receive).</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><b><span>Device&#10;     Information</span></b></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>We collect information from and about the device(s) you use to&#10;access our services, including:</span></p>&#10;&#10;<ul type=\"disc\">&#10; <ul type=\"circle\">&#10;  <li class=\"MsoNormal\"><span>hardware and software&#10;      information such as IP address, device ID and type, device-specific and&#10;      apps settings and characteristics, app crashes, advertising IDs (such as&#10;      Google\'s AAID and Apple\'s IDFA, both of which are randomly generated&#10;      numbers that you can reset by going into your device\' settings), browser&#10;      type, version and language, operating system, time zones, identifiers&#10;      associated with cookies or other technologies that may uniquely identify&#10;      your device or browser (e.g., IMEI/UDID and MAC address);</span></li>&#10;  <li class=\"MsoNormal\"><span>information on your wireless&#10;      and mobile network connection, like your service provider and signal&#10;      strength;</span></li>&#10;  <li class=\"MsoNormal\"><span>information on device sensors&#10;      such as accelerometers, gyroscopes and compasses.</span></li>&#10; </ul>&#10; <li class=\"MsoNormal\"><b><span>Other&#10;     information with your consent</span></b></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>If you give us permission, we can collect your precise&#10;geolocation (latitude and longitude) through various means, depending on the&#10;service and device you\'re using, including GPS, Bluetooth or Wi-Fi connections.&#10;The collection of your geolocation may occur in the background even when you&#10;aren\'t using the services if the permission you gave us expressly permits such&#10;collection. If you decline permission for us to collect your geolocation, we&#10;will not collect it.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>Similarly, if you consent, we may collect your photos and videos&#10;(for instance, if you want to publish a photo, video or streaming on the&#10;services).</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>4.COOKIES AND OTHER SIMILAR DATA COLLECTION&#10;TECHNOLOGIES</span></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>We use and may allow&#10;others to use cookies and similar technologies (e.g., web beacons, pixels) to&#10;recognize you and/or your device(s). You may read our&#160;</span><a href=\"https://www.blackpeoplemeet.com/v3/cookiepolicy\"><span>Cookie Policy</span></a><span>&#160;for more information on why we use them (such as&#10;authenticating you, remembering your preferences and settings, analyzing site&#10;traffic and trends, delivering and measuring the effectiveness of advertising&#10;campaigns, allowing you to use social features) and how you can better control&#10;their use, through your browser settings and other tools.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>Some web browsers&#10;(including Safari, Internet Explorer, Firefox and Chrome) have a &#34;Do Not&#10;Track&#34; (&#34;<b>DNT</b>&#34;) feature that tells a website that a user&#10;does not want to have his or her online activity tracked. If a website that&#10;responds to a DNT signal receives a DNT signal, the browser can block that&#10;website from collecting certain information about the browser\'s user. Not all&#10;browsers offer a DNT option and DNT signals are not yet uniform. For this&#10;reason, many businesses, including BlackPeopleMeet.com, do not currently&#10;respond to DNT signals.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>5.HOW WE USE INFORMATION</span></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>The main reason we use&#10;your information is to deliver and improve our services. Additionally, we use&#10;your info to help keep you safe and to provide you with advertising that may be&#10;of interest to you. Read on for a more detailed explanation of the various&#10;reasons we use your information, together with practical examples.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>To administer your account and provide our&#10;services to you</span></i></b></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><span>Create and manage your account</span></li>&#10; <li class=\"MsoNormal\"><span>Provide you with customer&#10;     support and respond to your requests</span></li>&#10; <li class=\"MsoNormal\"><span>Complete your transactions</span></li>&#10; <li class=\"MsoNormal\"><span>Communicate with you about our&#10;     services, including order management and billing</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>To help you connect with other users</span></i></b></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><span>Analyze your profile and that&#10;     of other users to recommend meaningful connections</span></li>&#10; <li class=\"MsoNormal\"><span>Show users\' profiles to one another</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>To ensure a consistent experience across your&#10;devices</span></i></b></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><span>Link the various devices you&#10;     use so that you can enjoy a consistent experience of our services on all&#10;     of them. We do this by linking devices and browser data, such as when you&#10;     log into your account on different devices or by using partial or full IP&#10;     address, browser version and similar data about your devices to help&#10;     identify and link them.</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>To serve you relevant offers and ads</span></i></b></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><span>Administer sweepstakes,&#10;     contests, discounts or other offers</span></li>&#10; <li class=\"MsoNormal\"><span>Develop, display and track&#10;     content and advertising tailored to your interests on our services and&#10;     other sites</span></li>&#10; <li class=\"MsoNormal\"><span>Communicate with you by email,&#10;     phone, social media or mobile device about products or services that we&#10;     think may interest you</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>To improve our services and develop new ones</span></i></b></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><span>Administer focus groups and&#10;     surveys</span></li>&#10; <li class=\"MsoNormal\"><span>Conduct research and analysis&#10;     of users\' behavior to improve our services and content (for instance, we&#10;     may decide to change the look and feel or even substantially modify a&#10;     given feature based on users\' behavior)</span></li>&#10; <li class=\"MsoNormal\"><span>Develop new features and&#10;     services (for example, we may decide to build a new interests-based&#10;     feature further to requests received from users).</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>To prevent, detect and fight fraud or other&#10;illegal or unauthorized activities</span></i></b></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><span>Address ongoing or alleged&#10;     misbehavior on and off-platform</span></li>&#10; <li class=\"MsoNormal\"><span>Perform data analysis to better&#10;     understand and design countermeasures against these activities</span></li>&#10; <li class=\"MsoNormal\"><span>Retain data related to&#10;     fraudulent activities to prevent against recurrences</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><b><i><span>To ensure legal compliance</span></i></b></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><span>Comply with legal requirements</span></li>&#10; <li class=\"MsoNormal\"><span>Assist law enforcement</span></li>&#10; <li class=\"MsoNormal\"><span>Enforce or exercise our rights,&#10;     for example our Terms</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>To process your&#10;information as described above, we rely on the following legal bases:</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><i><span>Provide our service to you:</span></i><span>&#160;Most of the time, the reason we process your&#10;     information is to perform the contract that you have with us. For&#10;     instance, as you go about using our service to build meaningful&#10;     connections, we use your information to maintain your account and your&#10;     profile, to make it viewable to other users and recommend other users to&#10;     you.</span></li>&#10; <li class=\"MsoNormal\"><i><span>Legitimate interests:</span></i><span>&#160;We may use your information where we have&#10;     legitimate interests to do so. For instance, we analyze users\' behavior on&#10;     our services to continuously improve our offerings, we suggest offers we&#10;     think might interest you, and we process information for administrative,&#10;     fraud detection and other legal purposes.</span></li>&#10; <li class=\"MsoNormal\"><i><span>Consent:</span></i><span>&#160;From time to time, we may ask for your consent to&#10;     use your information for certain specific reasons. You may withdraw your&#10;     consent at any time by contacting us at the address provided at the end of&#10;     this Privacy Policy.</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><b><span>6.HOW WE SHARE INFORMATION</span></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>Since our goal is to&#10;help you make meaningful connections, the main sharing of users\' information&#10;is, of course, with other users. We also share some users\' information with service&#10;providers and partners who assist us in operating the services, with other&#10;Match Group companies and, in some cases, legal authorities. Read on for more&#10;details about how your information is shared with others.</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><b><i><span>With&#10;     other users</span></i></b></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>You share information with other users when you voluntarily&#10;disclose information on the service (including your public profile). Please be&#10;careful with your information and make sure that the content you share is stuff&#10;that you\'re comfortable being publically viewable since neither you nor we can&#10;control what others do with your information once you share it.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>If you choose to limit the audience for all or part of your&#10;profile or for certain content or information about you, then it will be&#10;visible according to your settings.</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><b><i><span>With&#10;     our service providers and partners</span></i></b></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>We use third parties to help us operate and improve our&#10;services. These third parties assist us with various tasks, including data&#10;hosting and maintenance, analytics, customer care, marketing, advertising,&#10;payment processing and security operations.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>We may also share information with partners who distribute and&#10;assist us in advertising our services. For instance, we may share limited&#10;information on you in hashed, non-human readable form to advertising partners.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>We follow a strict vetting process prior to engaging any service&#10;provider or working with any partner. All of our service providers and partners&#10;must agree to strict confidentiality obligations.</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><b><i><span>With&#10;     other legal Group businesses</span></i></b></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>TheSingleApp.com </span><span>is part of the Match Group family of&#10;businesses which, as of the date of this Privacy Policy, includes websites and&#10;apps such as Tinder, OkCupid, Plenty of Fish, Match, Meetic, BlackPeopleMeet,&#10;LoveScout24, OurTime, Pairs, ParPerfeito, and Twoo (for more details,&#10;click&#160;</span><a href=\"http://www.mtch.com/\" target=\"_blank\"><span>here</span></a><span>).</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>We share your information with other Match Group companies to&#10;benefit you in two respects:</span></p>&#10;&#10;<ul type=\"disc\">&#10; <ul type=\"circle\">&#10;  <li class=\"MsoNormal\"><span>for other Match Group&#10;      companies to assist us in processing your information, as service&#10;      providers, upon our instructions and on our behalf. Assistance provided&#10;      by other Match Group companies may include technical processing&#10;      operations, such as data hosting and maintenance, customer care,&#10;      marketing and targeted advertising, finance and accounting assistance,&#10;      better understanding how our service is used and users\' behavior to&#10;      improve our service, securing our data and systems and fighting against&#10;      spam, abuse, fraud, infringement and other wrongdoings.</span></li>&#10;  <li class=\"MsoNormal\"><span>In order to improve your&#10;      chances at building significant connections with others, we may make you&#10;      visible on other Match Group services or allow you to benefit from&#10;      cross-platform functionalities. We will of course comply with applicable&#10;      law and, where relevant, notify you of any such opportunity and allow you&#10;      to agree or to refuse. Examples of such opportunities may include the&#10;      creation of a new service within Match Group, addressing a specific&#10;      demographic that we feel would be interesting to you based on your search&#10;      criteria.</span></li>&#10; </ul>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>We may also share information with other Match Group companies&#10;for legitimate business purposes such as corporate audit, analysis and&#10;consolidated reporting as well as compliance with applicable laws. We may also&#10;share user information with other Match Group companies to remove users who&#10;violate our terms of service, or have been reported for criminal activity&#10;and/or bad behavior. In some instances, we may remove that user from all&#10;platforms.</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><b><i><span>For&#10;     corporate transactions</span></i></b></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>We may transfer your information if we are involved, whether in&#10;whole or in part, in a merger, sale, acquisition, divestiture, restructuring,&#10;reorganization, dissolution, bankruptcy or other change of ownership or&#10;control.</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><b><i><span>When&#10;     required by law</span></i></b></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>We may disclose your information if reasonably necessary: (i) to&#10;comply with a legal process, such as a court order, subpoena or search warrant,&#10;government / law enforcement investigation or other legal requirements; (ii) to&#10;assist in the prevention or detection of crime (subject in each case to&#10;applicable law); or (iii) to protect the safety of any person.</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><b><i><span>To&#10;     enforce legal rights</span></i></b></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>We may also share information: (i) if disclosure would mitigate&#10;our liability in an actual or threatened lawsuit; (ii) as necessary to protect&#10;our legal rights and legal rights of our users, business partners or other&#10;interested parties; (iii) to enforce our agreements with you; and (iv) to&#10;investigate, prevent, or take other action regarding illegal activity, suspected&#10;fraud or other wrongdoing.</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><b><i><span>With&#10;     your consent or at your request</span></i></b></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>We may ask for your consent to share your information with third&#10;parties. In any such case, we will make it clear why we want to share the&#10;information.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>We may use and share&#10;non-personal information (meaning information that, by itself, does not&#10;identify who you are such as device information, general demographics, general&#10;behavioral data, geolocation in de-identified form), as well as personal&#10;information in hashed, non-human readable form, under any of the above&#10;circumstances. We may also share this information with other Match Group&#10;companies and third parties (notably advertisers) to develop and deliver&#10;targeted advertising on our services and on websites or applications of third&#10;parties, and to analyze and report on advertising you see. We may combine this&#10;information with additional non-personal information or personal information in&#10;hashed, non-human readable form collected from other sources. More information&#10;on our use of cookies and similar technologies can be found in our&#160;</span><a href=\"https://www.blackpeoplemeet.com/v3/cookiepolicy\"><span>Cookie Policy</span></a><span>.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>7.CROSS-BORDER DATA TRANSFERS</span></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>Sharing of information&#10;laid out in&#160;</span><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#HowWeShareInformation\"><span>Section 6</span></a><span>&#160;sometimes involves cross-border data transfers, for&#10;instance to the United States of America and other jurisdictions. As an&#10;example, where the service allows for users to be located in the European&#10;Economic Area (&#34;EEA&#34;), their personal information is transferred to&#10;countries outside of the EEA. We use standard contract clauses approved by the&#10;European Commission or other suitable safeguard to permit data transfers from&#10;the EEA to other countries. Standard contractual clauses are commitments&#10;between companies transferring personal data, binding them to protect the&#10;privacy and security of your data.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>8.YOUR RIGHTS</span></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>We want you to be in&#10;control of your information, so we have provided you with the following tools:</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><u><span>Access / Update tools in the&#10;     service.</span></u><span>&#160;Tools and account&#10;     settings that help you to access, rectify or delete information that you&#10;     provided to us and that\'s associated with your account directly within the&#10;     service. If you have any question on those tools and settings, please&#10;     contact our customer care team for help&#160;</span><span><a href=\"https://peoplemedia.custhelp.com/ci/pta/login/redirect/ask/theme/blackpeoplemeetv6/src/www.blackpeoplemeet.com_v3_help_iframehelper/pmsite/2/p_li/IL6iNIDCslL2vEaS2TbFtIx1I0TMd7TqpbwjMzdcGsKj3L8YlFwvzo_18Q1YNe5ViCYqjE2KZTanjBqR_HvNMnZbWeIeQUtXaFpL1gX_8dJ15iUDULXTGPON61LXP1_eT4WOcZ1vcNSZfmd8alJ6IPUOgoOs_N7Fj14em9F9Hi0lKqd_j6HGM3aZeJipaHRUzuS82Tuz7mHuyB_cuiycawzN_X6yKfI10Zz~44IjQ8TMqS_QzmeKckY0qIfir54qwMMJdM0hUaUTQP_XG7IC7KStf6EnGJVReMONTHNz3mJDBEzdWW6NZC~HVSwKKUrlr2fp0aV9sdQWNqXkxuO4VqUJFVOPZxtHzpg53VV18oEXrClROBekGhT3ItepJjja7IJKrRcAUUwvcgrnJzQ~A89AF1Kwcc25AFO_6lIPNVPojV4XSHLhhaMRo5ICNhgW\" target=\"_blank\"><span>here</span></a></span><span>.</span></li>&#10; <li class=\"MsoNormal\"><u><span>Device permissions.</span></u><span>&#160;Mobile platforms have permission systems for&#10;     specific types of device data and notifications, such as phone book and&#10;     location services as well as push notifications. You can change your&#10;     settings on your device to either consent or oppose the collection of the&#10;     corresponding information or the display of the corresponding&#10;     notifications. Of course, if you do that, certain services may lose full&#10;     functionality.</span></li>&#10; <li class=\"MsoNormal\"><u><span>Deletion.</span></u><span>&#160;You can delete your account by using the&#10;     corresponding functionality directly on the service.</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>We want you to be&#10;aware of your privacy rights. Here are a few key points to remember:</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><u><span>Reviewing your information.</span></u><span>&#160;Applicable privacy laws may give you the right to&#10;     review the personal information we keep about you (depending on the&#10;     jurisdiction, this may be called right of access, right of portability or&#10;     variations of those terms). You can request a copy of your personal&#10;     information by putting in such a request&#160;</span><span><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#HowToContactUs\"><span>here</span></a></span><span>.</span></li>&#10; <li class=\"MsoNormal\"><u><span>Updating your information.</span></u><span>&#160;If you believe that the information we hold about&#10;     you is inaccurate or that we are no longer entitled to use it and want to&#10;     request its rectification, deletion or object to its processing, please&#10;     contact us&#160;</span><span><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#HowToContactUs\"><span>here</span></a></span><span>.</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><span>For your protection&#10;and the protection of all of our users, we may ask you to provide proof of&#10;identity before we can answer the above requests.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>Keep in mind, we may&#10;reject requests for certain reasons, including if the request is unlawful or if&#10;it may infringe on trade secrets or intellectual property or the privacy of&#10;another user. If you wish to receive information relating to another user, such&#10;as a copy of any messages you received from him or her through our service, the&#10;other user will have to contact our Privacy Officer to provide their written&#10;consent before the information is released.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>Also, we may not be&#10;able to accommodate certain requests to object to the processing of personal&#10;information, notably where such requests would not allow us to provide our&#10;service to you anymore. For instance, we cannot provide our service if we do&#10;not have your date of birth.</span></p>&#10;&#10;<ul type=\"disc\">&#10; <li class=\"MsoNormal\"><u><span>Uninstall.</span></u><span>&#160;You can stop all information collection by an app&#10;     by uninstalling it using the standard uninstall process for your device.&#10;     If you uninstall the app from your mobile device, the unique identifier&#10;     associated with your device will continue to be stored. If you re-install&#10;     the application on the same mobile device, we will be able to re-associate&#10;     this identifier to your previous transactions and activities.</span></li>&#10; <li class=\"MsoNormal\"><u><span>Accountability.</span></u><span>&#160;In certain countries, including in the European&#10;     Union, you have a right to lodge a complaint with the appropriate data&#10;     protection authority if you have concerns about how we process your&#10;     personal information. The data protection authority you can lodge a&#10;     complaint with notably may be that of your habitual residence, where you&#10;     work or where we are established.</span></li>&#10;</ul>&#10;&#10;<p class=\"MsoNormal\"><b><span>9.RESIDENTS OF CALIFORNIA</span></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>If you are a&#10;California resident, you can request a notice disclosing the categories of&#10;personal information about you that we have shared with third parties for their&#10;direct marketing purposes during the preceding calendar year. To request this&#10;notice, please submit your request&#160;</span><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#HowToContactUs\"><span>here</span></a><span>. Please allow 30 days for a response. For your protection and&#10;the protection of all of our users, we may ask you to provide proof of identity&#10;before we can answer such a request.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>10.HOW WE PROTECT YOUR INFORMATION</span></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>We work hard to&#10;protect you from unauthorized access to or alteration, disclosure or&#10;destruction of your personal information. As with all technology companies,&#10;although we take steps to secure your information, we do not promise, and you&#10;should not expect, that your personal information will always remain secure.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>We regularly monitor&#10;our systems for possible vulnerabilities and attacks and regularly review our&#10;information collection, storage and processing practices to update our&#10;physical, technical and organizational security measures.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>We may suspend your&#10;use of all or part of the services without notice if we suspect or detect any&#10;breach of security. If you believe that your account or information is no&#10;longer secure, please notify us immediately&#160;</span><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#HowToContactUs\"><span>here</span></a><span>.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>11.HOW LONG WE RETAIN YOUR INFORMATION</span></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>We keep your personal&#10;information only as long as we need it for legitimate business purposes (as laid&#10;out in&#160;</span><a href=\"https://www.blackpeoplemeet.com/v3/privacypolicy#HowWeUseInformation\"><span>Section 5</span></a><span>) and as permitted by applicable law.</span></p>&#10;&#10;<p class=\"MsoNormal\"><span>In practice, we delete&#10;or anonymize your information upon deletion of your account, unless:</span></p>&#10;&#10;<ol start=\"1\" type=\"1\">&#10; <li class=\"MsoNormal\"><span>we must keep it to comply with&#10;     applicable law;</span></li>&#10; <li class=\"MsoNormal\"><span>we must keep it to evidence our&#10;     compliance with applicable law;</span></li>&#10; <li class=\"MsoNormal\"><span>there is an outstanding issue,&#10;     claim or dispute requiring us to keep the relevant information until it is&#10;     resolved; or</span></li>&#10; <li class=\"MsoNormal\"><span>the information must be kept&#10;     for our legitimate business interests, such as fraud prevention and&#10;     enhancing users\' safety and security. For example, information may need to&#10;     be kept to prevent a user who was banned for unsafe behavior or security&#10;     incidents from opening a new account.</span></li>&#10;</ol>&#10;&#10;<p class=\"MsoNormal\"><span>Keep in mind that even&#10;though our systems are designed to carry out data deletion processes according&#10;to the above guidelines, we cannot promise that all data will be deleted within&#10;a specific timeframe due to technical constraints.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>12.CHILDREN\'S PRIVACY</span></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>Our services are restricted&#10;to users who are 18 years of age or older. We do not permit users under the age&#10;of 18 on our platform and we do not knowingly collect personal information from&#10;anyone under the age of 18. If you suspect that a user is under the age of 18,&#10;please use the reporting mechanism available through the service.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>13.PRIVACY POLICY CHANGES</span></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>Because we\'re always&#10;looking for new and innovative ways to help you build meaningful connections,&#10;this policy may change over time. We will notify you before any material&#10;changes take effect so that you have time to review the changes.</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>14.HOW TO CONTACT US</span></b></p>&#10;&#10;<p class=\"MsoNormal\"><span>If you have questions&#10;about this Privacy Policy, here\'s how you can reach us:</span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>Online:</span></b><span>&#160;</span><a href=\"https://peoplemedia.custhelp.com/ci/pta/login/redirect/ask/theme/blackpeoplemeetv6/src/www.blackpeoplemeet.com_v3_help_iframehelper/pmsite/2/p_li/IL6iNIDCslL2vEaS2TbFtIx1I0TMd7TqpbwjMzdcGsKj3L8YlFwvzo_18Q1YNe5ViCYqjE2KZTanjBqR_HvNMnZbWeIeQUtXaFpL1gX_8dJ15iUDULXTGPON61LXP1_eT4WOcZ1vcNSZfmd8alJ6IPUOgoOs_N7Fj14em9F9Hi0lKqd_j6HGM3aZeJipaHRUzuS82Tuz7mHuyB_cuiycawzN_X6yKfI10Zz~44IjQ8TMqS_QzmeKckY0qIfir54qwMMJdM0hUaUTQP_XG7IC7KStf6EnGJVReMONTHNz3mJDBEzdWW6NZC~HVSwKKUrlr2fp0aV9sdQWNqXkxuO4VqUJFVOPZxtHzpg53VV18oEXrClROBekGhT3ItepJjja7IJKrRcAUUwvcgrnJzQ~A89AF1Kwcc25AFO_6lIPNVPojV4XSHLhhaMRo5ICNhgW\" target=\"_blank\"><span>here</span></a><span></span></p>&#10;&#10;<p class=\"MsoNormal\"><b><span>By Post:</span></b><span><br>&#10;Privacy Officer<br>&#10;meadia group address and name here</span></p>', '2023-04-12');

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
(4, NULL, 1, '2023-04-12 06:44:53.447688', NULL, 'cI_coYiuCtU:APA91bH6cH_qb1awsqR27I7eWBT1LU9zBfWZ336ANALUjOGIco149pusGasoqsVMyos-8TLrQAkOFV7wbiY2KfhVmSMU2X7vZqdOJBjy328AeoX9t70nnKenMZ08rQslX2uH6wWyhZ6t', 'android', 10),
(5, NULL, 0, '2023-04-18 10:17:18.721489', NULL, 'ebkW91p5pVc:APA91bF4BHBhhTIZnQUq0prpTzovvX7iMpw6zg2v8ZzhKcsEi2FJUGoS-6rl2vZgAaeDTGsj3bqdnoF-Axn0_dQsgblTQ7tXvdM9fNR7JxotLAk5_DaU1kzaXPLx7Dva5egxQoezZFQQ', 'android', 11),
(6, NULL, 0, '2023-04-18 10:27:39.188849', NULL, 'ebkW91p5pVc:APA91bF4BHBhhTIZnQUq0prpTzovvX7iMpw6zg2v8ZzhKcsEi2FJUGoS-6rl2vZgAaeDTGsj3bqdnoF-Axn0_dQsgblTQ7tXvdM9fNR7JxotLAk5_DaU1kzaXPLx7Dva5egxQoezZFQQ', 'android', 9),
(7, NULL, 1, '2023-04-18 10:51:57.426703', NULL, 'c2KTPxyo2n8:APA91bFdpDkV9QKbI71uU_smA7OMssZK6hyb9vDp6wT4kcXyw9_r5P7xRwdaw1VTZp7nvzsDZUF_qJcuqNOibz9mIwwIbrLZVzeeXT6LzeIfokY6LM0TMfXr0HG48PYWRB14Uue68pzw', 'android', 9);

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
(2, 1, 3, '2023-03-24 10:55:04.046878', 0, ' Rabiyulfahim  Liked your Profile'),
(3, 1, 4, '2023-03-24 10:57:38.426467', 0, ' Rabiyulfahim  Favoured your Profile'),
(4, 5, 3, '2023-03-24 11:05:08.116492', 0, ' Prabhu  Favoured your Profile'),
(5, 3, 5, '2023-03-24 11:05:56.857819', 0, ' Gopi  Favoured your Profile'),
(6, 5, 3, '2023-03-24 11:26:12.504003', 0, ' Prabhu  Viewed your Profile'),
(7, 3, 5, '2023-03-24 11:26:38.827736', 0, ' Gopi  Viewed your Profile'),
(8, 5, 3, '2023-03-24 11:30:39.918392', 0, ' Prabhu  Flirted your Profile'),
(9, 3, 5, '2023-03-24 11:31:51.149086', 0, ' Gopi  Flirted your Profile'),
(10, 1, 3, '2023-03-24 12:59:29.231614', 0, ' Rabiyulfahim  Liked your Profile Image'),
(11, 3, 1, '2023-03-24 12:59:54.675808', 1, ' Gopi  Liked your Profile Image'),
(12, 3, 1, '2023-03-24 13:01:29.215537', 1, ' Gopi  Commented your Profile Image'),
(13, 1, 3, '2023-03-25 07:04:46.176155', 0, ' Rabiyulfahim  send a Friend Request'),
(14, 1, 3, '2023-03-25 07:07:19.275680', 0, ' Rabiyulfahim  send a Friend Request'),
(15, 3, 5, '2023-03-28 05:43:52.154937', 0, ' Gopi  Viewed your Profile'),
(16, 3, 1, '2023-03-28 05:43:55.557979', 1, ' Gopi  Commented your Profile Image'),
(17, 1, 3, '2023-04-10 07:27:54.218232', 0, ' Rabiyulfahim  Viewed your Profile'),
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
(61, 9, 13, '2023-04-18 10:55:55.193868', 1, ' prabhu  Viewed your Profile');

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
(3, 1, 2023, 30, '100.00', 'R01202028101', '2023-03-28');

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `accounts_comment`
--
ALTER TABLE `accounts_comment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `accounts_favourite`
--
ALTER TABLE `accounts_favourite`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `accounts_friend`
--
ALTER TABLE `accounts_friend`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `accounts_image`
--
ALTER TABLE `accounts_image`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `accounts_imagelike`
--
ALTER TABLE `accounts_imagelike`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `accounts_message`
--
ALTER TABLE `accounts_message`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `accounts_myuser`
--
ALTER TABLE `accounts_myuser`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `accounts_permission`
--
ALTER TABLE `accounts_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `accounts_userflirt`
--
ALTER TABLE `accounts_userflirt`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `accounts_userlike`
--
ALTER TABLE `accounts_userlike`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `accounts_userviewed`
--
ALTER TABLE `accounts_userviewed`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `extras_help`
--
ALTER TABLE `extras_help`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `extras_termsandconditions`
--
ALTER TABLE `extras_termsandconditions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fcm_django_fcmdevice`
--
ALTER TABLE `fcm_django_fcmdevice`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `services_payment`
--
ALTER TABLE `services_payment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services_premium`
--
ALTER TABLE `services_premium`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services_premiumdetail`
--
ALTER TABLE `services_premiumdetail`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services_transaction`
--
ALTER TABLE `services_transaction`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

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
