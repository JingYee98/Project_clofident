-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost:3306
-- 生成日期： 2020-07-23 19:57:34
-- 服务器版本： 10.3.23-MariaDB
-- PHP 版本： 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `albeenek_clofident`
--

-- --------------------------------------------------------

--
-- 表的结构 `CART`
--

CREATE TABLE `CART` (
  `EMAIL` varchar(50) NOT NULL,
  `PRODID` varchar(20) NOT NULL,
  `CQUANTITY` varchar(10) NOT NULL,
  `DATE` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `CARTHISTORY`
--

CREATE TABLE `CARTHISTORY` (
  `EMAIL` varchar(100) NOT NULL,
  `ORDERID` varchar(100) NOT NULL,
  `BILLID` varchar(20) NOT NULL,
  `PRODID` varchar(30) NOT NULL,
  `CQUANTITY` varchar(10) NOT NULL,
  `DATE` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `PAYMENT`
--

CREATE TABLE `PAYMENT` (
  `ORDERID` varchar(100) NOT NULL,
  `BILLID` varchar(10) NOT NULL,
  `TOTAL` varchar(10) NOT NULL,
  `USERID` varchar(100) NOT NULL,
  `DATE` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `PRODUCT`
--

CREATE TABLE `PRODUCT` (
  `ID` varchar(30) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `PRICE` varchar(10) NOT NULL,
  `QUANTITY` varchar(10) NOT NULL,
  `SOLD` varchar(10) NOT NULL,
  `SIZE` varchar(3) NOT NULL,
  `TYPE` varchar(20) NOT NULL,
  `DATE` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `PRODUCT`
--

INSERT INTO `PRODUCT` (`ID`, `NAME`, `PRICE`, `QUANTITY`, `SOLD`, `SIZE`, `TYPE`, `DATE`) VALUES
('1001', 'Fendi Bag Bugs Eyes T-shirt', '35.00', '100', '0', 'S', 'T-shirt', '2020-06-20 15:36:48'),
('1002', 'Polo T-shirt', '50.00', '100', '0', 'L', 'T-shirt', '2020-06-20 15:57:27'),
('1003', 'Rainbow T-shirt', '25.00', '100', '0', 'L', 'T-shirt', '2020-06-20 15:57:27'),
('1004', 'Marvel T-shirt', '45.00', '100', '0', 'M', 'T-shirt', '2020-06-20 15:57:27'),
('1005', 'Not Today Cat T-shirt', '50.00', '100', '0', 'XL', 'T-shirt', '2020-06-20 15:57:27'),
('1006', 'High Rise Super Wide Jeans', '59.90', '100', '0', 'XL', 'Jeans', '2020-06-20 15:57:27'),
('1007', 'Straight Away High-Waisted Jeans', '79.90', '100', '0', 'L', 'Jeans', '2020-06-20 15:57:27'),
('1008', 'Sculpting Skinny Jeans', '89.90', '100', '0', 'M', 'Jeans', '2020-06-20 15:57:27'),
('1009', 'Jeans New Style', '69.90', '100', '0', 'XL', 'Jeans', '2020-06-20 15:57:27'),
('1010', 'Straight Salt Blue Denim Jeans', '99.90', '100', '0', 'L', 'Jeans', '2020-06-20 15:57:27'),
('1011', 'Red Dress', '69.90', '100', '0', 'L', 'Dress', '2020-06-20 16:34:38'),
('1012', 'Dark Blue Dress', '129.90', '100', '0', 'M', 'Dress', '2020-06-20 16:34:38'),
('1013', 'Sunflower Dress', '79.90', '100', '0', 'M', 'Dress', '2020-06-20 16:34:38'),
('1014', 'Yellow Dress', '59.90', '94', '6', 'L', 'Dress', '2020-06-20 16:34:38'),
('1015', 'Light Blue Dress', '69.90', '99', '1', 'S', 'Dress', '2020-06-20 16:34:38'),
('1016', 'Cheongsam Style 1', '79.90', '100', '0', 'S', 'Cheongsam', '2020-06-20 16:34:38'),
('1017', 'Cheongsam Style 2', '89.90', '100', '0', 'L', 'Cheongsam', '2020-06-20 16:34:38'),
('1018', 'Cheongsam Style 3', '99.90', '100', '0', 'M', 'Cheongsam', '2020-06-20 16:34:38'),
('1019', 'Cheongsam Style 4', '79.90', '100', '0', 'S', 'Cheongsam', '2020-06-20 16:34:38'),
('1020', 'Cheongsam Style 5', '79.90', '100', '0', 'M', 'Cheongsam', '2020-06-20 16:34:38'),
('1021', 'Windbreaker Jacket', '79.90', '100', '0', 'XL', 'Windbreaker', '2020-06-20 16:34:38'),
('1022', 'Blue and White Windbreaker Jacket', '139.90', '99', '1', 'L', 'Windbreaker', '2020-06-20 16:34:38'),
('1023', 'Windbreaker Sun Protect Jacket', '99.90', '100', '6', 'L', 'Windbreaker', '2020-07-14 10:59:26');

-- --------------------------------------------------------

--
-- 表的结构 `USER`
--

CREATE TABLE `USER` (
  `NAME` varchar(50) NOT NULL,
  `PHONE` varchar(12) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PASSWORD` varchar(60) NOT NULL,
  `CREDIT` varchar(5) NOT NULL,
  `VERIFY` varchar(1) NOT NULL,
  `DATEREG` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `USER`
--

INSERT INTO `USER` (`NAME`, `PHONE`, `EMAIL`, `PASSWORD`, `CREDIT`, `VERIFY`, `DATEREG`) VALUES
('unregistered', '0123456789', 'unregistered@clofident.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '0', '1', '2020-06-20 16:42:11'),
('admin', '0123987456', 'admin@clofident.com', 'bfe54caa6d483cc3887dce9d1b8eb91408f1ea7a', '0', '1', '2020-06-21 20:07:58'),
('Yee', '0148859115', 'albeeneko2324@gmail.com', '563f9fd3b5a9d490efe194f5d0c6e98c45aaa938', '900', '1', '2020-06-22 09:29:16'),
('Jing Yee', '0123456789', 'albeeyee981123@gmail.com', '6b63bd170795f803da3ba35dcd9374a455b4a110', '300', '0', '2020-07-16 12:13:29');

--
-- 转储表的索引
--

--
-- 表的索引 `PRODUCT`
--
ALTER TABLE `PRODUCT`
  ADD PRIMARY KEY (`ID`);

--
-- 表的索引 `USER`
--
ALTER TABLE `USER`
  ADD PRIMARY KEY (`EMAIL`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
