-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2019 at 03:12 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sephatlhodb`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `fk_email` varchar(100) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `fk_email`, `password`) VALUES
(1, 'thato.mak@yahoo.com', 'thato'),
(2, 'pontsho@gmail.com', 'Customer'),
(3, 'dimpho@gmail.com', 'dimpho'),
(4, 'letsoalogd@gmail.com', 'Customer'),
(5, 'thabang@gmail.com', 'thabang'),
(6, 'thuli.m@gmail.com', 'thuli'),
(7, 'donaldinho@gmail.com', 'donald'),
(8, 'leago@webmail.co.za', 'leago'),
(9, 'lesedi@gmail.com', 'lesedi'),
(10, 'tman.bash@gmail.com', 'Shop Owner'),
(11, 'aaa@sbc.com', 'Shop Owner'),
(12, 'smith8@gmail.com', 'Shop Owner'),
(13, 'asd@asd.com', 'Shop Owner'),
(14, 'spaza@gmail.com', 'Shop Owner'),
(15, 'mahlangutm8@gmail.com', 'Shop Owner'),
(16, 'jerry@vodamail.com', 'Shop Owner'),
(17, 'miranda.x@webmail.co.za', 'Shop Owner'),
(18, 'lira.m@sosha.com', 'Lerato'),
(19, 'timy@gmail.com', 'timothy'),
(20, 'cc@mail.com', 'Shop Owner'),
(21, 'hary@gmail.com', 'Shop Owner'),
(22, 'james.gosling@oracle.com', 'Android'),
(23, 'tips.m@gmail.com', 'Sphatlho'),
(24, 'g.steele@sun.com', 'Guy123'),
(25, 'robinm@yahoo.com', 'Robin123'),
(26, 't.robin@hotmail.com', 'RobinT'),
(27, 'Sheryl@yahoo.com', 'Sheryl123'),
(28, 'honey22@gmail.co.za', '111111'),
(29, 'thato@yahoo.com', 'thato123'),
(30, 'monica@gmail.com', 'monica'),
(31, 'thato@gmail.com', 'thato'),
(32, 'thabiso@yahoo.com', 'thabiso'),
(33, 'jane@yahoo.com', 'Jane12'),
(34, 'jen.su@gmail.com', 'JenSu12'),
(35, 'carol.kerry@web.com', 'carol12'),
(36, 'tom.m@yahoo.com', 'tom123'),
(37, 'Carla@carla.net', 'Carla'),
(38, 'maya@yahoo.com', 'maya#12'),
(39, 'kabelo@gmail.com', 'kabelo'),
(40, 'thato@thato.com', 'Thato123'),
(41, 'nelson@gmail.com', 'Nelson123');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `item_id` int(11) NOT NULL,
  `fk_email_shop` varchar(100) NOT NULL,
  `price` double(9,2) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`item_id`, `fk_email_shop`, `price`, `description`) VALUES
(1, 'spaza@gmail.com', 30.00, 'chips '),
(2, 'leago@webmail.co.za', 9.50, 'Chips & Archaar'),
(3, 'tman.bash@gmail.com', 24.00, 'chicken dust'),
(4, 'lira.m@sosha.com', 10.88, 'Polony,Lettuce & Eggs'),
(5, 'lesedi@gmail.com', 12.60, 'Chips,Archaar'),
(6, 'spaza@gmail.com', 12.00, 'archar,chips'),
(7, 'spaza@gmail.com', 15.00, 'archar,cheese'),
(8, 'leago@webmail.co.za', 9.00, 'Chips'),
(9, 'lesedi@gmail.com', 10.00, 'Chips & Polony'),
(10, 'lesedi@gmail.com', 10.00, 'Eggs & Chips'),
(11, 'lesedi@gmail.com', 13.00, 'Eggs,Russian,chips'),
(12, 'lesedi@gmail.com', 15.00, 'Eggs,Russian,chips,Achaar'),
(13, 'lesedi@gmail.com', 15.99, 'Viana,Archaar,Eggs & Chips'),
(14, 'lira.m@sosha.com', 14.99, 'Chips, Archar, Polony,Lettuce & Eggs'),
(15, 'lesedi@gmail.com', 16.99, 'Viana,Russian,Archaar,Eggs & Chips'),
(16, 'lesedi@gmail.com', 7.00, 'Chips'),
(17, 'lira.m@sosha.com', 8.99, 'Chips, Archaar, Polony Eggs'),
(18, 'miranda.x@webmail.co.za', 8.00, 'Lettuce,eggs'),
(19, 'donaldinho@whatever.com', 12.88, 'Russian,Chips, Archaar'),
(20, 'donaldinho@whatever.com', 13.88, 'Russian,Chips, Archaar,Eggs'),
(21, 'timy@gmail.com', 12.99, 'Fish,Chips, Archaar'),
(22, 'timy@gmail.com', 8.99, 'Chips,Archaar,Cheese'),
(23, 'timy@gmail.com', 12.99, 'Chips,Archaar,Cheese,Russian, Lettuce'),
(24, 'Sheryl@yahoo.com', 9.99, 'Chips,Eggs,Onions,Tomatos'),
(25, 'Sheryl@yahoo.com', 8.99, 'Eggs & Lettuce'),
(26, 'Sheryl@yahoo.com', 6.99, 'Vegiterian Special'),
(27, 'Sheryl@yahoo.com', 14.99, 'Polony,Chips,Russian,Cheese,Archaar,Eggs & Lettuce'),
(28, 'lesedi@gmail.com', 8.00, 'eggs,onions,tomatos'),
(29, 'lesedi@gmail.com', 10.00, 'russian,carrots,lettuce,onions,tomatos'),
(30, 'thabiso@yahoo.com', 5.99, 'Fish,Eggs,Lettuce,chips'),
(31, 'lesedi@gmail.com', 4.99, 'Chips,Archaar'),
(32, 'lesedi@gmail.com', 8.99, 'Russians, Eggs, Tomatoes'),
(33, 'leago@webmail.co.za', 14.00, 'Chips, Eggs, Mustard'),
(34, 'leago@webmail.co.za', 14.00, 'Chips, Eggs, Mustard, Archaar'),
(35, 'leago@webmail.co.za', 15.80, 'Chips, Eggs, Mustard, Archaar, Vinegar'),
(36, 'leago@webmail.co.za', 10.00, 'Chips & Cheese');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_Id` int(11) NOT NULL,
  `fk_email_cust` varchar(100) NOT NULL,
  `date_time` varchar(80) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `cust_id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`cust_id`, `name`, `lastname`, `phone`, `email`) VALUES
(1, 'pontsho', 'leba', '0789584563', 'pontsho@gmail.com'),
(2, 'thapelo', 'lets', '0789998250', 'thabiso.letsoalo@gmail.com'),
(3, 'Thato', 'Makaleng', '0876334435', 'thato.mak@yahoo.com'),
(4, 'Dimpho', 'Makaleng', '0816600000', 'dimpho@gmail.com'),
(5, 'dsds', 'fdfd', '4554', 'xxcxv'),
(6, 'Thabang', 'Goitsimang', '0842423222', 'thabang@gmail.com'),
(7, 'Nokuthula', 'Mkhize', '0748666111', 'thuli.m@gmail.com'),
(8, 'James', 'Gosling', '0826222233', 'james.gosling@oracle.com'),
(9, 'Guy', 'Steele', '0753624535', 'g.steele@sun.com'),
(10, 'Ryan', 'Robin', '0854324222', ''),
(11, 'Gregory', 'Robinson', '0756356324', 't.robin@hotmail.com'),
(12, 'Jenny', 'Thompson', '0877343434', 'honey22@gmail.co.za'),
(13, 'Thato', 'Masemola', '0865646879', 'thato@yahoo.com'),
(14, 'Monica', 'Alexander', '0734488888', 'monica@gmail.com'),
(15, 'Thato', 'Tlale', '0868777777', 'thato@gmail.com'),
(16, 'Jane', 'Naiker', '0876545348', 'jane@yahoo.com'),
(17, 'Jennifer', 'Su', '0121232323', 'jen.su@gmail.com'),
(18, 'Carol', 'Kerry', '0834743674', 'carol.kerry@web.com'),
(19, 'Carla', 'Smith', '0174587438', 'Carla@carla.net'),
(20, 'Maya', 'Andrews', '0899856788', 'maya@yahoo.com'),
(21, 'Kabelo', 'Masilo', '0736666766', 'kabelo@gmail.com'),
(22, 'Thato', 'Makaleng', '0735562371', 'thato@thato.com'),
(23, 'Nelson', 'Peterson', '0866345224', 'nelson@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tblorder`
--

CREATE TABLE `tblorder` (
  `order_Id` int(4) NOT NULL,
  `fk_cust_Id` int(4) NOT NULL,
  `fk_item_id` int(4) NOT NULL,
  `fk_owner_id` int(11) NOT NULL,
  `date_time` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `qty` int(4) NOT NULL,
  `status` varchar(15) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tblorder`
--

INSERT INTO `tblorder` (`order_Id`, `fk_cust_Id`, `fk_item_id`, `fk_owner_id`, `date_time`, `qty`, `status`) VALUES
(1, 13, 5, 2, '2018-01-11 13:44:28', 1, 'Cancelled'),
(2, 13, 2, 1, '2018-01-11 13:54:55', 1, 'Cancelled'),
(3, 13, 2, 1, '2018-01-11 14:04:39', 1, 'Collected'),
(4, 13, 8, 1, '2018-01-11 14:05:52', 1, 'Busy'),
(5, 4, 24, 17, '2018-01-11 14:30:01', 1, 'Not Ready'),
(6, 3, 10, 2, '2018-01-11 14:41:15', 1, 'Ready'),
(7, 3, 10, 2, '2018-01-11 14:44:38', 1, 'Collected'),
(8, 3, 22, 12, '2018-01-11 14:45:45', 1, 'Collected'),
(9, 13, 22, 12, '2018-01-12 02:50:55', 1, 'Ready'),
(10, 12, 19, 15, '2018-01-12 03:31:45', 1, 'Not Ready'),
(11, 12, 10, 2, '2018-01-12 03:34:00', 1, 'Cancelled'),
(12, 12, 22, 12, '2018-01-12 03:37:31', 1, 'Busy'),
(13, 12, 26, 17, '2018-01-12 03:43:04', 1, 'Not Ready'),
(14, 4, 14, 11, '2018-01-12 03:48:41', 1, 'Ready'),
(15, 4, 4, 11, '2018-01-12 03:49:47', 1, 'Ready'),
(16, 4, 25, 17, '2018-01-12 03:58:09', 1, 'Ready'),
(17, 3, 21, 12, '2018-01-12 04:04:27', 1, 'Ready'),
(18, 4, 9, 2, '2018-01-12 04:18:24', 1, 'Collected'),
(19, 15, 30, 18, '2018-01-12 14:56:04', 1, 'Cancelled'),
(20, 13, 25, 17, '2018-01-13 01:50:44', 1, 'Collected'),
(21, 13, 27, 17, '2018-01-13 01:50:44', 1, 'Collected'),
(22, 13, 19, 15, '2018-01-13 01:52:56', 1, 'Cancelled'),
(23, 13, 4, 11, '2018-01-13 01:54:35', 1, 'Ready'),
(24, 13, 26, 17, '2018-01-13 01:57:49', 1, 'Not Ready'),
(25, 13, 5, 2, '2018-01-14 13:22:44', 1, 'Collected'),
(26, 13, 12, 2, '2018-01-14 13:22:44', 1, 'Collected'),
(27, 6, 5, 2, '2018-01-14 15:13:52', 1, 'Busy'),
(28, 17, 19, 15, '2018-01-14 15:23:10', 1, 'Busy'),
(29, 13, 9, 2, '2018-01-14 15:28:14', 1, 'Cancelled'),
(30, 13, 23, 12, '2018-01-14 15:31:07', 1, 'Busy'),
(31, 3, 28, 2, '2018-01-15 01:04:28', 1, 'Collected'),
(32, 13, 27, 17, '2018-01-16 00:58:53', 1, 'Collected'),
(33, 13, 24, 17, '2018-01-16 00:58:53', 1, 'Collected'),
(34, 13, 27, 17, '2018-01-16 00:58:53', 1, 'Collected'),
(35, 13, 24, 17, '2018-01-16 00:58:53', 1, 'Collected'),
(36, 13, 24, 17, '2018-01-16 00:58:53', 1, 'Collected'),
(37, 13, 24, 17, '2018-01-16 00:58:53', 1, 'Collected'),
(38, 15, 4, 11, '2018-01-16 06:31:02', 1, 'Collected'),
(39, 18, 10, 2, '2018-01-16 06:56:04', 1, 'Ready'),
(40, 19, 5, 2, '2018-01-16 10:52:48', 1, 'Collected'),
(41, 3, 2, 1, '2018-01-18 09:02:18', 1, 'Ready'),
(42, 4, 30, 18, '2018-01-18 17:54:49', 1, 'Busy'),
(43, 3, 15, 2, '2018-01-19 11:36:09', 1, 'Collected'),
(44, 13, 2, 1, '2018-01-20 09:25:02', 1, 'Not Ready'),
(45, 4, 29, 2, '2018-01-21 01:52:09', 1, 'Ready'),
(46, 13, 9, 2, '2018-01-22 00:24:27', 1, 'Not Ready'),
(47, 13, 10, 2, '2018-01-22 12:28:33', 1, 'Busy'),
(48, 13, 3, 3, '2018-01-22 12:30:06', 1, 'Not Ready'),
(49, 3, 2, 1, '2018-01-28 01:37:50', 1, 'Not Ready'),
(50, 13, 9, 2, '2018-01-28 02:19:30', 1, 'Not Ready'),
(51, 13, 10, 2, '2018-01-28 02:36:49', 1, 'Not Ready'),
(52, 13, 26, 17, '2018-01-28 02:38:29', 1, 'Not Ready'),
(53, 13, 26, 17, '2018-01-28 02:38:29', 1, 'Not Ready'),
(54, 3, 21, 12, '2018-01-28 03:03:48', 1, 'Not Ready'),
(55, 3, 27, 17, '2018-01-28 03:05:56', 1, 'Not Ready'),
(56, 13, 9, 2, '2018-01-31 23:32:00', 1, 'Ready'),
(57, 13, 12, 2, '2018-01-31 23:32:00', 1, 'Ready'),
(58, 13, 2, 1, '2018-01-31 23:33:55', 1, 'Not Ready'),
(59, 13, 8, 1, '2018-01-31 23:33:55', 1, 'Not Ready'),
(60, 14, 24, 17, '2018-01-31 23:44:01', 1, 'Not Ready'),
(61, 14, 25, 17, '2018-01-31 23:44:01', 1, 'Not Ready'),
(62, 14, 27, 17, '2018-01-31 23:44:01', 1, 'Not Ready'),
(63, 14, 26, 17, '2018-01-31 23:44:01', 1, 'Not Ready'),
(64, 14, 20, 15, '2018-01-31 23:53:11', 1, 'Not Ready'),
(65, 14, 19, 15, '2018-01-31 23:53:11', 1, 'Not Ready'),
(66, 14, 15, 2, '2018-01-31 23:54:26', 1, 'Cancelled'),
(67, 14, 10, 2, '2018-01-31 23:54:26', 1, 'Cancelled'),
(68, 14, 13, 2, '2018-01-31 23:54:26', 1, 'Cancelled'),
(69, 14, 9, 2, '2018-01-31 23:54:26', 1, 'Cancelled'),
(70, 14, 8, 1, '2018-02-01 00:00:12', 1, 'Not Ready'),
(71, 14, 2, 1, '2018-02-01 00:00:12', 1, 'Not Ready'),
(72, 14, 22, 12, '2018-02-01 00:01:42', 1, 'Not Ready'),
(73, 14, 23, 12, '2018-02-01 00:01:42', 1, 'Not Ready'),
(74, 14, 21, 12, '2018-02-01 00:01:42', 1, 'Not Ready'),
(75, 16, 11, 2, '2018-02-01 00:05:50', 1, 'Busy'),
(76, 16, 5, 2, '2018-02-01 00:05:50', 1, 'Busy'),
(77, 16, 10, 2, '2018-02-01 00:05:50', 1, 'Busy'),
(78, 16, 9, 2, '2018-02-01 00:05:50', 1, 'Busy'),
(79, 16, 28, 2, '2018-02-01 00:05:50', 1, 'Busy'),
(80, 16, 12, 2, '2018-02-01 00:05:50', 1, 'Busy'),
(81, 16, 16, 2, '2018-02-01 00:05:50', 1, 'Busy'),
(82, 16, 13, 2, '2018-02-01 00:05:50', 1, 'Busy'),
(83, 16, 29, 2, '2018-02-01 00:05:50', 1, 'Busy'),
(84, 16, 15, 2, '2018-02-01 00:05:50', 1, 'Busy'),
(85, 16, 31, 2, '2018-02-01 00:05:50', 1, 'Busy'),
(86, 16, 1, 7, '2018-02-01 00:09:38', 1, 'Not Ready'),
(87, 16, 7, 7, '2018-02-01 00:09:38', 1, 'Not Ready'),
(88, 16, 6, 7, '2018-02-01 00:09:38', 1, 'Not Ready'),
(89, 15, 30, 18, '2018-02-01 00:56:45', 1, 'Not Ready'),
(90, 15, 27, 17, '2018-02-01 00:58:43', 1, 'Not Ready'),
(91, 15, 25, 17, '2018-02-01 00:58:43', 1, 'Not Ready'),
(92, 18, 2, 1, '2018-02-01 01:10:38', 1, 'Not Ready'),
(93, 18, 8, 1, '2018-02-01 01:10:38', 1, 'Not Ready'),
(94, 3, 23, 12, '2018-02-01 01:19:36', 1, 'Not Ready'),
(95, 3, 22, 12, '2018-02-01 01:19:36', 1, 'Not Ready'),
(96, 3, 21, 12, '2018-02-01 01:19:36', 1, 'Not Ready'),
(97, 8, 11, 2, '2018-02-01 03:24:11', 1, 'Busy'),
(98, 8, 15, 2, '2018-02-01 03:24:11', 1, 'Busy'),
(99, 8, 10, 2, '2018-02-01 03:24:11', 1, 'Busy'),
(100, 8, 29, 2, '2018-02-01 03:24:11', 1, 'Busy'),
(101, 8, 9, 2, '2018-02-01 03:24:11', 1, 'Busy'),
(102, 8, 31, 2, '2018-02-01 03:24:11', 1, 'Busy'),
(103, 8, 16, 2, '2018-02-01 03:24:11', 1, 'Busy'),
(104, 8, 13, 2, '2018-02-01 03:24:11', 1, 'Busy'),
(105, 8, 12, 2, '2018-02-01 03:24:11', 1, 'Busy'),
(106, 8, 5, 2, '2018-02-01 03:24:11', 1, 'Busy'),
(107, 8, 28, 2, '2018-02-01 03:24:11', 1, 'Busy'),
(108, 13, 14, 11, '2018-02-01 12:24:02', 1, 'Not Ready'),
(109, 13, 17, 11, '2018-02-01 12:24:02', 1, 'Not Ready'),
(110, 13, 10, 2, '2018-02-01 12:24:39', 1, 'Not Ready'),
(111, 13, 11, 2, '2018-02-01 12:24:39', 1, 'Not Ready'),
(112, 13, 8, 1, '2018-02-01 12:38:47', 1, 'Not Ready'),
(113, 13, 2, 1, '2018-02-01 12:38:47', 1, 'Not Ready'),
(114, 13, 10, 2, '2018-02-01 12:47:55', 1, 'Not Ready'),
(115, 13, 9, 2, '2018-02-01 12:47:55', 1, 'Not Ready'),
(116, 13, 26, 17, '2018-02-01 14:30:55', 1, 'Not Ready'),
(117, 13, 25, 17, '2018-02-01 14:30:55', 1, 'Not Ready'),
(118, 13, 27, 17, '2018-02-01 14:30:55', 1, 'Not Ready'),
(119, 13, 24, 17, '2018-02-01 14:30:55', 1, 'Not Ready'),
(120, 13, 10, 2, '2018-02-06 08:35:31', 1, 'Ready'),
(121, 13, 9, 2, '2018-02-06 08:35:31', 1, 'Ready'),
(122, 13, 3, 3, '2018-02-06 08:38:32', 1, 'Not Ready'),
(123, 20, 10, 2, '2018-02-14 11:13:23', 1, 'Not Ready'),
(124, 20, 9, 2, '2018-02-14 11:13:23', 1, 'Not Ready'),
(125, 13, 3, 3, '2018-02-15 01:54:22', 1, 'Not Ready'),
(126, 4, 9, 2, '2018-02-15 01:57:53', 1, 'Not Ready'),
(127, 4, 10, 2, '2018-02-15 01:57:53', 1, 'Not Ready'),
(128, 4, 11, 2, '2018-02-15 01:57:53', 1, 'Not Ready'),
(129, 13, 21, 12, '2018-02-15 02:02:06', 1, 'Not Ready'),
(130, 13, 23, 12, '2018-02-15 02:02:06', 1, 'Not Ready'),
(131, 15, 2, 1, '2018-02-15 02:11:49', 1, 'Not Ready'),
(132, 15, 8, 1, '2018-02-15 02:11:49', 1, 'Not Ready'),
(133, 15, 3, 3, '2018-02-15 02:27:05', 1, 'Not Ready'),
(134, 15, 26, 17, '2018-02-15 02:34:39', 1, 'Not Ready'),
(135, 15, 27, 17, '2018-02-15 02:34:39', 1, 'Not Ready'),
(136, 13, 10, 2, '2018-02-15 03:06:26', 1, 'Not Ready'),
(137, 13, 11, 2, '2018-02-15 03:06:26', 1, 'Not Ready'),
(138, 13, 9, 2, '2018-02-15 03:06:26', 1, 'Not Ready'),
(139, 13, 12, 2, '2018-02-15 03:06:26', 1, 'Not Ready'),
(140, 13, 11, 2, '2018-02-15 03:34:32', 1, 'Not Ready'),
(141, 13, 28, 2, '2018-04-03 13:10:52', 1, 'Not Ready'),
(142, 13, 16, 2, '2018-04-03 13:10:52', 1, 'Not Ready'),
(143, 13, 13, 2, '2018-05-04 05:38:31', 1, 'Not Ready'),
(144, 13, 13, 2, '2018-05-07 09:56:18', 1, 'Not Ready'),
(145, 13, 15, 2, '2018-05-07 09:56:18', 1, 'Not Ready'),
(146, 13, 1, 7, '2018-05-10 12:12:53', 1, 'Not Ready'),
(147, 13, 7, 7, '2018-05-10 12:12:53', 1, 'Not Ready'),
(148, 13, 6, 7, '2018-05-10 12:12:53', 1, 'Not Ready'),
(149, 13, 21, 12, '2018-05-12 12:01:22', 1, 'Not Ready'),
(150, 13, 22, 12, '2018-05-12 12:01:22', 1, 'Not Ready'),
(151, 13, 23, 12, '2018-05-12 12:01:22', 1, 'Not Ready'),
(152, 13, 25, 17, '2018-05-12 16:14:15', 1, 'Not Ready'),
(153, 13, 24, 17, '2018-05-12 16:14:15', 1, 'Not Ready'),
(154, 13, 26, 17, '2018-05-12 16:14:15', 1, 'Not Ready'),
(155, 13, 27, 17, '2018-05-12 16:14:15', 1, 'Not Ready'),
(156, 13, 3, 3, '2018-05-13 05:40:34', 1, 'Not Ready'),
(157, 13, 9, 2, '2018-05-30 10:03:27', 1, 'Not Ready'),
(158, 13, 5, 2, '2018-05-30 10:03:27', 1, 'Not Ready'),
(159, 13, 24, 17, '2018-06-09 22:06:46', 1, 'Not Ready'),
(160, 13, 27, 17, '2018-06-09 22:06:46', 1, 'Not Ready'),
(161, 13, 25, 17, '2018-06-09 22:06:46', 1, 'Not Ready'),
(162, 13, 7, 7, '2018-06-09 22:35:54', 1, 'Not Ready'),
(163, 13, 1, 7, '2018-06-09 22:35:54', 1, 'Not Ready'),
(164, 13, 6, 7, '2018-06-09 22:35:54', 1, 'Not Ready'),
(165, 13, 3, 3, '2018-06-09 19:46:54', 1, 'Not Ready'),
(166, 13, 36, 1, '2018-06-10 17:08:32', 1, 'Not Ready'),
(167, 13, 33, 1, '2018-06-10 17:08:32', 1, 'Not Ready'),
(168, 13, 8, 1, '2018-06-11 07:11:19', 1, 'Not Ready'),
(169, 13, 33, 1, '2018-06-11 07:11:19', 1, 'Not Ready'),
(170, 13, 10, 2, '2018-06-11 10:03:45', 1, 'Not Ready'),
(171, 13, 9, 2, '2018-06-11 10:03:45', 1, 'Not Ready'),
(172, 13, 18, 10, '2018-06-11 19:24:52', 1, 'Not Ready'),
(173, 7, 1, 7, '2018-06-12 06:44:17', 1, 'Not Ready'),
(174, 7, 7, 7, '2018-06-12 06:44:17', 1, 'Not Ready'),
(175, 7, 9, 2, '2018-06-12 07:58:28', 1, 'Not Ready'),
(176, 7, 15, 2, '2018-06-12 07:58:28', 1, 'Not Ready'),
(177, 7, 28, 2, '2018-06-12 07:58:28', 1, 'Not Ready'),
(178, 7, 9, 2, '2018-06-12 07:58:28', 1, 'Not Ready'),
(179, 7, 20, 15, '2018-06-14 15:52:18', 1, 'Not Ready'),
(180, 7, 19, 15, '2018-06-14 15:52:18', 1, 'Not Ready'),
(181, 21, 14, 11, '2018-06-14 15:58:24', 1, 'Not Ready'),
(182, 21, 17, 11, '2018-06-14 15:58:24', 1, 'Not Ready'),
(183, 21, 27, 17, '2018-06-14 16:01:09', 1, 'Not Ready'),
(184, 13, 9, 2, '2019-03-13 09:20:05', 1, 'Not Ready'),
(185, 13, 5, 2, '2019-03-13 09:20:05', 1, 'Not Ready'),
(186, 3, 36, 1, '2019-04-02 05:37:32', 1, 'Not Ready'),
(187, 3, 34, 1, '2019-04-02 05:37:32', 1, 'Not Ready'),
(188, 3, 35, 1, '2019-04-02 05:37:32', 1, 'Not Ready'),
(189, 3, 33, 1, '2019-04-02 05:37:32', 1, 'Not Ready');

-- --------------------------------------------------------

--
-- Table structure for table `tblorderdetails`
--

CREATE TABLE `tblorderdetails` (
  `id` int(10) NOT NULL,
  `fk_order_Id` int(10) NOT NULL,
  `fk_email_shop` varchar(100) NOT NULL,
  `item_id` int(10) NOT NULL,
  `description` varchar(50) NOT NULL,
  `price` double(10,2) NOT NULL,
  `Qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblrole`
--

CREATE TABLE `tblrole` (
  `id` int(11) NOT NULL,
  `fk_email` varchar(100) NOT NULL,
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblrole`
--

INSERT INTO `tblrole` (`id`, `fk_email`, `role`) VALUES
(1, 'thato.mak@yahoo.com', 'Customer'),
(2, 'pontsho@gmail.com', 'Customer'),
(3, 'dimpho@gmail.com', 'Customer'),
(4, 'letsoalogd@gmail.com', 'Customer'),
(5, 'thabang@gmail.com', 'Customer'),
(6, 'thuli.m@gmail.com', 'Customer'),
(7, 'donaldinho@gmail.com', 'Shop Owner'),
(8, 'leago@webmail.co.za', 'Shop Owner'),
(9, 'lesedi@gmail.com', 'Shop Owner'),
(10, 'tman.bash@gmail.com\r\n', 'Shop Owner'),
(11, 'aaa@sbc.com', 'Shop Owner'),
(12, 'mahlangusarah8@gmail.com', 'Shop Owner'),
(13, 'asd@asd.com', 'Shop Owner'),
(14, 'spaza@gmail.com', 'Shop Owner'),
(15, 'mahlangusa8@gmail.com', 'Shop Owner'),
(16, 'jerry@vodamail.com', 'Shop Owner'),
(17, 'miranda.x@webmail.co.za', 'Shop Owner'),
(18, 'lira.m@sosha.com', 'Shop Owner'),
(19, 'timy@gmail.com', 'Shop Owner'),
(20, 'cc@mail.com', 'Shop Owner'),
(21, 'hary@gmail.com', 'Shop Owner'),
(22, 'james.gosling@oracle.com', 'Customer'),
(23, 'tips.m@gmail.com', 'Shop Owner'),
(24, 'g.steele@sun.com', 'Customer'),
(25, '', 'Customer'),
(26, 't.robin@hotmail.com', 'Customer'),
(27, 'Sheryl@yahoo.com', 'Shop Owner'),
(28, 'honey22@gmail.co.za', 'Customer'),
(29, 'thato@yahoo.com', 'Customer'),
(30, 'monica@gmail.com', 'Customer'),
(31, 'thato@gmail.com', 'Customer'),
(32, 'thabiso@yahoo.com', 'Shop Owner'),
(33, 'jane@yahoo.com', 'Customer'),
(34, 'jen.su@gmail.com', 'Customer'),
(35, 'carol.kerry@web.com', 'Customer'),
(36, 'tom.m@yahoo.com', 'Shop Owner'),
(37, 'Carla@carla.net', 'Customer'),
(38, 'maya@yahoo.com', 'Customer'),
(39, 'kabelo@gmail.com', 'Customer'),
(40, 'thato@thato.com', 'Customer'),
(41, 'nelson@gmail.com', 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `tblshop`
--

CREATE TABLE `tblshop` (
  `id` int(11) NOT NULL,
  `fk_email` varchar(100) NOT NULL,
  `shop_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `url_image` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblshop`
--

INSERT INTO `tblshop` (`id`, `fk_email`, `shop_name`, `address`, `url_image`) VALUES
(1, 'leago@webmail.co.za', 'Leagos', '398 Soshanguve Block XX 0152', 'my.jpg'),
(2, 'lesedi@gmail.com', 'Lesedi Sphaza', '398 Soshanguve Block XX 0152', 'my.jpg'),
(3, 'tman.bash@gmail.com', 'Big Nuz', '28 witch street The ', 'my.jpg'),
(4, 'aaa@sbc.com', 'Sphatlho Corner', '213 Soshanguve Block UU 0152', 'my.jpg'),
(5, 'mahlangusarah8@gmail', 'mendies Shop', '876 Kwagga', 'my.jpg'),
(6, 'asd@asd.com', 'Sphatlhong', '0001 Tsakane, Soweto', 'my.jpg'),
(7, 'spaza@gmail.com', 'Sphaza', '133 Sandton', 'my.jpg'),
(8, 'mahlangusa8@gmail.com', 'men shop', '1654 sosha ', 'my.jpg'),
(9, 'jerry@vodamail.com', 'Jerrys', '1223 East Rand', 'my.jpg'),
(10, 'miranda.x@webmail.co.za', 'Miranda X Place', '1234 Newcastle', 'my.jpg'),
(11, 'lira.m@sosha.com', 'Liras', '0873 Soshanguve Bloc', 'my.jpg'),
(12, 'timy@gmail.com', 'Timmy Corner', 'New York 124', 'my.jpg'),
(13, 'cc@mail.com', 'Cheryl Shop', '562 Paris Str.', 'my.jpg'),
(14, 'hary@gmail.com', 'Hary Shop', '616 Port Johnson Str', 'my.jpg'),
(15, 'donaldinho@whatever.com', 'Donny Spatlho', '1114 Ko Sosha 0152', 'my.jpg'),
(16, 'tips.m@gmail.com', 'Thapelo Spatlho Shop', '1123 Polokwane 0150', 'my.jpg'),
(17, 'Sheryl@yahoo.com', 'Sheryl Corner', '1234 Pretoria West', 'my.jpg'),
(18, 'thabiso@yahoo.com', 'Thabiso Spaza', '6376 Thokoza, East Rand', 'my.jpg'),
(19, 'tom.m@yahoo.com', 'Tomy Spatlho', '111 Bushbuckridge 1101', 'my.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblshopowner`
--

CREATE TABLE `tblshopowner` (
  `owner_id` int(4) NOT NULL,
  `name` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblshopowner`
--

INSERT INTO `tblshopowner` (`owner_id`, `name`, `lastname`, `phone`, `email`) VALUES
(1, 'Leago', 'Makaleng', '0607889023', 'leago@webmail.co.za'),
(2, 'Lesedi', 'Makaleng', '0719700000', 'lesedi@gmail.com'),
(3, 'thabiso', 'lets', '0001456321', 'tman.bash@gmail.com'),
(4, 'abc', 'qbc', '0794561236', 'aaa@sbc.com'),
(5, 'sarakie', 'mahlangu', '0712027858', 'mahlangusarah8@gmail'),
(6, 'asd', 'asd', '0794567890', 'asd@asd.com'),
(7, 'Kaybee', 'Masemola', '0791141235', 'spaza@gmail.com'),
(8, 'white', 'mahlangu', '0768765432', 'mahlangusa8@gmail.com'),
(9, 'Jerry', 'Mahlangu', '0783546737', 'jerry@vodamail.com'),
(10, 'Miranda', 'Xulu', '0853334567', 'miranda.x@webmail.co.za'),
(11, 'Lira', 'Mofokeng', '0830642562', 'lira.m@sosha.com'),
(12, 'Timmy', 'Tim', '0865526211', 'timy@gmail.com'),
(13, 'Cheryl', 'Champagne', '0876232121', 'cc@mail.com'),
(14, 'Hary', 'Sternberg', '0823223222', 'hary@gmail.com'),
(15, 'Donald', 'Robinson', '0866636364', 'donaldinho@whatever.com'),
(16, 'Thapelo', 'Malepe', '0783574633', 'tips.m@gmail.com'),
(17, 'Sheryl', 'OReilley', '0619776733', 'Sheryl@yahoo.com'),
(18, 'thabiso', 'Maake', '0746666662', 'thabiso@yahoo.com'),
(19, 'Tom', 'Michaels', '0412426622', 'tom.m@yahoo.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fk_email` (`fk_email`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `tblorder`
--
ALTER TABLE `tblorder`
  ADD PRIMARY KEY (`order_Id`);

--
-- Indexes for table `tblrole`
--
ALTER TABLE `tblrole`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fk_email` (`fk_email`);

--
-- Indexes for table `tblshop`
--
ALTER TABLE `tblshop`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fk_email` (`fk_email`);

--
-- Indexes for table `tblshopowner`
--
ALTER TABLE `tblshopowner`
  ADD PRIMARY KEY (`owner_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `cust_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `order_Id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `tblrole`
--
ALTER TABLE `tblrole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tblshop`
--
ALTER TABLE `tblshop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblshopowner`
--
ALTER TABLE `tblshopowner`
  MODIFY `owner_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
