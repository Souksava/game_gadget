-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 09, 2020 at 11:58 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `game_gadget`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bimg_path` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`, `bimg_path`) VALUES
(8, 'JBL', 'img_5e75f7dc927c4.png'),
(9, 'Sony', 'img_5e75f7e6e0c1b.png'),
(10, 'BOSE', 'img_5e75f7ef56948.png'),
(11, 'GARMIN', 'img_5e75f7fc2f69f.jpeg'),
(13, 'Jabra', 'img_5e75f80805044.jpg'),
(14, 'Huawei', 'img_5e75f814c6986.png'),
(15, 'Marshall', 'img_5e75f820d8c91.png'),
(16, 'Logitech', 'img_5e75f8abe026b.png'),
(17, 'B&O', 'img_5e75f8b44f1ad.png'),
(19, 'SUUNTO', 'img_5e75f8c5ec0d7.png'),
(20, 'harman', 'img_5e75f8d001edf.jpg'),
(22, 'CORSAIR', 'img_5e75f8da6cc2e.png'),
(23, 'beyerdynamic', 'img_5e75f8e652922.jpg'),
(24, 'SteelSeries', 'img_5e75f8f33a69a.png'),
(25, 'plantronics', 'img_5e75f91cb1ea0.png'),
(26, 'GoPro', 'img_5e75f927380a9.jpg'),
(27, 'fitbit', 'img_5e75f93973e31.png'),
(28, 'SoundPEATS', 'img_5e75f94528e28.webp'),
(29, 'Fobase', 'img_5e75f95267c55.jpeg'),
(30, 'Bowers & Wikins', 'img_5e75f95ba501f.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cate_id` int(11) NOT NULL,
  `cate_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_path` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cate_id`, `cate_name`, `img_path`) VALUES
(3, 'ຫູຟັງ', 'img_5e6e56606e6e2.ico'),
(4, 'ລຳໂພງ', 'img_5e6e567381f38.ico'),
(5, 'ເກມມິ່ງເກຍ', 'img_5e6e568674753.ico'),
(6, 'Wearable', 'img_5e6e56e9960eb.ico'),
(7, 'ອຸປະກອນເສີມມືຖື', 'img_5e6e570dc60c8.ico'),
(8, 'Drone & Camera', 'img_5e6e5719cffc9.ico'),
(9, 'Professional Audio', 'img_5e6e572aee3b4.ico'),
(10, 'DAC/AMP', 'img_5e6e577823dcc.ico'),
(11, 'ເຄື່ອງຫຼິ້ນເພງ', 'img_5e6e5784b8189.ico'),
(12, 'ອຸປະກອນເສີມເຄື່ອງສຽງ', 'img_5e6e5798800d8.ico');

-- --------------------------------------------------------

--
-- Table structure for table `categorydetail`
--

CREATE TABLE `categorydetail` (
  `cated_id` int(11) NOT NULL,
  `cated_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categorydetail`
--

INSERT INTO `categorydetail` (`cated_id`, `cated_name`, `cate_id`) VALUES
(2, 'ຫູຟັງ True Wireless', 3),
(3, 'ຫູຟັງ Headphone', 3),
(4, 'ຫູຟັງອອກກຳລັງກາຍ', 3),
(5, 'ຫູຟັງໄຮ້ສາຍ', 3),
(6, 'ຫູຟັງ In-ear', 3),
(7, 'ຫູຟັງ Earbud', 3),
(8, 'ຫູຟັງບູທູດ', 3),
(9, 'ຫູຟັງ Call Center', 3),
(10, 'ລຳໂພງໄຮ້ສາຍ (Wireless)', 4),
(11, 'ລຳໂພງບ້ານ', 4),
(12, 'ລຳໂພງພົກພາ', 4),
(13, 'ລຳໂພງຄອມພິວເຕີ', 4),
(14, 'ລຳໂພງອະເນກປະສົງ', 4),
(15, 'ລຳໂພງອັດສະລິຍະ', 4),
(16, 'Finess Tracker', 6),
(17, 'Sport Watch', 6),
(18, 'ສາຍສາກ ແລະ ອຸປະກອນສາກໄຟ', 7),
(19, 'ແບັດເຕີລີສຳຮອງ', 7);

-- --------------------------------------------------------

--
-- Table structure for table `credit_card`
--

CREATE TABLE `credit_card` (
  `card_id` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ac_no` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ac_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_path` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `credit_card`
--

INSERT INTO `credit_card` (`card_id`, `ac_no`, `ac_name`, `img_path`) VALUES
('BCEL ONE', '0000 12312 3242 35232', 'Souksavath PHONGPHAYOSITH', 'img_5e6fa3d845178.png'),
('Master Card', '0000 12312 32423523', 'Souksavath PHONGPHAYOSITH', 'img_5e54f8627724b.png'),
('VISA', '0000 12312 3242 3523', 'Souksavath PHONGPHAYOSITH', 'img_5e54fc0055878.png');

-- --------------------------------------------------------

--
-- Table structure for table `cupon`
--

CREATE TABLE `cupon` (
  `cupon_key` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(11,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cupon`
--

INSERT INTO `cupon` (`cupon_key`, `qty`, `price`) VALUES
('1', 0, '50000.00'),
('sdfsdfsdf', 5, '13000.00');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cus_id` int(11) NOT NULL,
  `cus_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cus_surname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel_app` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pass` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cus_id`, `cus_name`, `cus_surname`, `gender`, `address`, `tel`, `email`, `tel_app`, `pass`, `fb_id`) VALUES
(1, 'ບຸນນະກອນ', 'ໄຊທິລາດ', 'ຊາຍ', 'ບ້ານ ພະຂາວ ເມືອງໄຊເສດຖາ ນະຄອນຫຼວງວຽງຈັນ', '020-5555-6666', 'bon@hotmail.com', '020-2222-33333', '123', NULL),
(2, 'ບຸນພິທັກ', 'ໄຊປັນຍາ', 'ຍິງ', 'ບ້ານ ດົງໂດກ ເມືອງໄຊທານີ ນະຄອນຫຼວງວຽງຈັນ', '020-2333-1111', 'boun@hotmail.com', '020-3333-1111', '123', NULL),
(3, 'ເພັດສະພົນ', 'ແກ້ວປະເສີດ', 'ຊາຍ', 'ບ້ານ ສີໄຄທົ່ງ ເມືອງ ສີໂຄດຕະຄອງ ນະຄອນຫຼວງວຽງຈັນ', '020-1123-2323', 'phet@hotmail.com', '020-444123-12313', '123', NULL),
(7, 'souksavath', 'phongphayosith', 'ຊາຍ', 'M & N Building, Ground floor, Room No.70/101-103, Souphanouvong Avenue, Khounta Thong,Sikhotabong District, Vientiane, Laos', '+856 20 5232 9555', 'souksavath@hotmail.com', '', '123', NULL),
(13, '学生苏克', NULL, NULL, NULL, NULL, 'souksavath.52221881@gmail.com', NULL, NULL, '528564037803218'),
(14, 'ລູກຄ້າທົ່ວໄປ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `deli_id` int(11) NOT NULL,
  `deli_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_path` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`deli_id`, `deli_name`, `img_path`) VALUES
(2, 'ຮູ້ງອາລຸນ', 'img_5e54feea87210.png'),
(3, 'NTC', 'img_5e5510a0a6179.png');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `emp_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_surname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pass` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `work_start` date DEFAULT NULL,
  `end_work` date DEFAULT NULL,
  `img_path` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_name`, `emp_surname`, `gender`, `dob`, `address`, `tel`, `email`, `pass`, `status`, `work_start`, `end_work`, `img_path`) VALUES
('002', 'admin', 'GAME GADGET', 'ຍິງ', '2020-02-07', '', '020-5555-6633', 'admin@hotmail.com', '123', 1, '2020-02-07', '2020-02-07', 'img_5e6e14cc17c7a.ico'),
('124', 'USER', 'GAME GADGET', 'ຍິງ', '2020-02-05', 'Lao Airlines Building 7th Floor, Manthatourath Road, Xiengyeun Village, Chantabouly District, Vientiane Capital, Lao P.D.R (Headquarter)', '+856 20 5232 9555', 'user@hotmail.com', '123', 2, '2020-02-19', '2020-02-25', 'img_5e6e14da16665.ico');

-- --------------------------------------------------------

--
-- Table structure for table `function_product`
--

CREATE TABLE `function_product` (
  `function_id` int(11) NOT NULL,
  `func_id` int(11) DEFAULT NULL,
  `pro_id` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `function_product`
--

INSERT INTO `function_product` (`function_id`, `func_id`, `pro_id`, `content`) VALUES
(1, 1, '1093016000002', 'Bluetooth 5.0'),
(2, 1, '1093016000002', 'AUX/3.5 mm'),
(3, 3, '1093016000002', '1 x Marshall Kilburn II Portable Bluetooth'),
(4, 3, '1093016000002', '1 x ສາຍໄຟສຳຫຼັບສາກ'),
(5, 3, '1093016000002', '1 x ຄູ່ມືການໃຊ້ງານ'),
(6, 2, '1093016000002', 'ລຳໂພງໄຮ້ສາຍສຸດ Classic'),
(7, 2, '1093016000002', 'ເຊື່ອມຕໍ່ໄຮ້ສາຍ Bluetooth ໃໝ່ລ່າສຸດ'),
(8, 2, '1093016000002', 'ພົກພາສະດວກດ້ວຍນ້ຳໜັກ 2,5 ກິໂລ'),
(9, 2, '1093016000002', 'ຄວມຄຸມງ່າຍດ້ວຍ Control Knob'),
(10, 2, '1093016000002', 'ຂັບສຽງດ້ວຍ Multi-Direction'),
(11, 2, '1093016000002', 'ກັນລະອອງນ້ຳມາດຕະຖານ IPX2'),
(12, 2, '1093016000002', 'ແບັດເຕີລີໃຊ້ງານຕໍ່ເນື່ອງຍາວນານ 20+ ຊົ່ວໂມງ'),
(13, 2, '1093016000002', 'ສາກໄວ 20 ນາທີໃຊ້ງານໄດ້ເຖິງ 2-3 ຊົ່ວໂມງ');

-- --------------------------------------------------------

--
-- Table structure for table `func_pro`
--

CREATE TABLE `func_pro` (
  `func_id` int(11) NOT NULL,
  `func_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `func_pro`
--

INSERT INTO `func_pro` (`func_id`, `func_name`) VALUES
(1, 'ການເຊື່ອມຕໍ່'),
(2, 'Key-Highlight'),
(3, 'ອຸປະກອນພາຍໃນກ່ອງ');

-- --------------------------------------------------------

--
-- Table structure for table `imports`
--

CREATE TABLE `imports` (
  `imp_id` int(11) NOT NULL,
  `imp_bill` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `sup_id` int(11) DEFAULT NULL,
  `emp_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pro_id` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `imp_date` date DEFAULT NULL,
  `imp_time` time DEFAULT NULL,
  `note` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `imports`
--

INSERT INTO `imports` (`imp_id`, `imp_bill`, `order_id`, `sup_id`, `emp_id`, `pro_id`, `qty`, `price`, `imp_date`, `imp_time`, `note`) VALUES
(1, '1', 2, 1, '124', '1093025000002', 1, '90000.00', '2020-04-02', '18:42:31', ''),
(2, '1001', 2, 1, '124', '1093025000002', 6, '90000.00', '2020-03-08', '17:54:02', ''),
(3, '1', 2, 1, '124', '1145018000002', 10, '90000.00', '2020-05-08', '17:54:28', ''),
(4, '1', 2, 1, '124', '1093025000002', 1, '90000.00', '2020-06-09', '16:25:37', ''),
(5, '1', 2, 1, '124', '1679005000003', 4, '10000.00', '2020-07-09', '16:26:09', '');

-- --------------------------------------------------------

--
-- Table structure for table `listimports`
--

CREATE TABLE `listimports` (
  `imp_id` int(11) NOT NULL,
  `imp_bill` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `sup_id` int(11) DEFAULT NULL,
  `emp_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pro_id` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `imp_date` date DEFAULT NULL,
  `imp_time` time DEFAULT NULL,
  `note` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listorderdetail`
--

CREATE TABLE `listorderdetail` (
  `detail_id` int(11) NOT NULL,
  `pro_id` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `emp_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listselldetail`
--

CREATE TABLE `listselldetail` (
  `detail_id` int(11) NOT NULL,
  `pro_id` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `cus_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `listselldetail`
--

INSERT INTO `listselldetail` (`detail_id`, `pro_id`, `qty`, `color_id`, `cus_id`) VALUES
(65, '1093025000002', 1, 0, 13);

-- --------------------------------------------------------

--
-- Table structure for table `listselldetail2`
--

CREATE TABLE `listselldetail2` (
  `detail_id` int(11) NOT NULL,
  `pro_id` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `emp_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE `model` (
  `model` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`model`, `name`) VALUES
(1, 'ດ້ານໜ້າ'),
(2, 'ດ້ານຂ້າງຊາຍ'),
(3, 'ດ້ານຂາງຂວາ'),
(4, 'ດ້ານຫຼັງ'),
(5, 'ດ້ານເທິງ'),
(6, 'ດ້ານກ້ອງ');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `detail_id` int(11) NOT NULL,
  `pro_id` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`detail_id`, `pro_id`, `qty`, `price`, `order_id`) VALUES
(1, '1093025000002', 1, '90000.00', 2),
(2, '1093025000002', 2, '30000.00', 3),
(3, '1145018000002', 3, '700000.00', 3),
(4, '1816002000001', 8, '90000.00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `emp_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sup_id` int(11) DEFAULT NULL,
  `amount` decimal(11,2) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `order_time` time DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_path` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seen1` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seen2` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_accept` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `emp_id`, `sup_id`, `amount`, `order_date`, `order_time`, `status`, `img_path`, `seen1`, `seen2`, `user_accept`) VALUES
(1, '124', 2, '1030000.00', '2020-03-01', '13:15:44', 'ອະນຸມັດ', NULL, 'SEEN', 'SEEN', NULL),
(2, '124', 1, '90000.00', '2020-04-02', '18:29:29', 'ອະນຸມັດ', NULL, 'SEEN', 'SEEN', NULL),
(3, '124', 2, '2880000.00', '2020-04-08', '18:30:45', 'ອະນຸມັດ', NULL, 'SEEN', 'SEEN', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pro_id` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `pro_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `cated_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `guarantee` int(11) DEFAULT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `promotion` decimal(11,2) DEFAULT NULL,
  `qtyalert` int(11) DEFAULT NULL,
  `img_path` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pro_id`, `pro_name`, `qty`, `price`, `cated_id`, `unit_id`, `brand_id`, `guarantee`, `type`, `promotion`, `qtyalert`, `img_path`, `status`) VALUES
('1093016000002', 'Kilburn II Portable', 5, '3000000.00', 10, 1, 15, 1, 'ເດືອນ', '200000.00', 10, 'img_5e6e300ed7b5d.jpg', 'Top View'),
('1093025000002', 'Stockwell II', 2, '2400000.00', 10, 1, 15, 1, 'ເດືອນ', '150000.00', 10, 'img_5e6e4e5177042.jpg', 'Top View'),
('1095126000011', 'Flip 5 Portable', 10, '1200000.00', 10, 1, 8, 1, 'ເດືອນ', '100000.00', 10, 'img_5e6e4ec2dd941.jpg', 'Hot'),
('1145018000002', 'B&W PX7 Noise', 6, '5100000.00', 3, 13, 30, 3, 'ເດືອນ', '30000.00', 0, 'img_5e6e51db3f72a.jpg', 'Normal'),
('1298052000002', 'Plantronics BackBeat Fit 3200 ', 9, '1500000.00', 2, 13, 8, 1, 'ເດືອນ', '0.00', 10, 'img_5e6e52b26db6d.jpg', 'Hot'),
('1679005000003', '7', 12, '5100000.00', 17, 1, 19, 1, 'ເດືອນ', '0.00', 10, 'img_5e6f567a67869.jpg', 'Hot'),
('1740002000002', 'SoundPeats TrueCapsule', 9, '300000.00', 2, 13, 28, 7, 'ວັນ', '0.00', 10, 'img_5e6e4f8227fdd.jpg', 'Best Seller'),
('1740005000002', 'SoundPeats TrueAir', 19, '420000.00', 2, 10, 28, 1, 'ເດືອນ', '0.00', 10, 'img_5e6e52598fd7d.jpg', 'Best Seller'),
('1816002000001', 'GTO', 9, '420000.00', 17, 1, 29, 15, 'ວັນ', '0.00', 10, 'img_5e6e508657c29.jpg', 'Best Seller'),
('1889002000005', 'Watch GT2', 10, '1900000.00', 17, 1, 14, 1, 'ເດືອນ', '0.00', 10, 'img_5e6e50ce2bf37.jpg', 'Hot');

-- --------------------------------------------------------

--
-- Table structure for table `productdetail`
--

CREATE TABLE `productdetail` (
  `id` int(11) NOT NULL,
  `pro_id` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_path` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `review_youtube` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(10000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `productdetail`
--

INSERT INTO `productdetail` (`id`, `pro_id`, `img_path`, `review_youtube`, `content`, `topic_id`) VALUES
(2, '1093016000002', 'img_5e6e3d4d916ff.', 'https://www.youtube.com/embed/wynolNtQzmQ', '', 1),
(3, '1093016000002', 'img_5e6e4189d454d.jpeg', '', 'ລຳໂພງ Marshall Kilburn II Portable Bluetooth Speaker ລາຄາໜ້າຊື້ໜ້າຈັບຈອງເປັນເຈົ້າຂອງກັບຄວາມສາມາດຂອງລຳໂພງເຄື່ອງນີ້ໃຫ້ມາແບບຄົບເຄື່ອງບໍ່ວ່າຈະເປັນການເຊື່ອມຕໍ່ໄຮ້ສາຍ ພົກພາໄດ້ສະດວກດ້ວຍນ້ຳໜັກທີ່ບໍ່ຫຼາຍ ເໝາະສຳຫຼັບຜູ້ມອງຫາລຳໂພງແບບຄາສສິກແບບເທ້ໆ ພຽງແຕ່ຈັບຈອງເປັນເຈົ້າາຂອງກໍຄຸ້ມຄ່າເງິນທຸກກີບທຸກອັດດ້ວຍຄວາມຄຸ້ມຄ່າທັງການເຊື່ອມຕໍ່ລຸ້ນໃໝ່ ແບັດເຕີລີຍາວນານ ແຖມຍັງສາກໄວ ແຖມຍັງກັນລະອອງນ້ຳໄດ້ມາດຕະຖານ IPX2 ອີກດ້ວຍຕ່າງຫາກ ຄຸ້ມສຸດຄຸ້ມຈົນບໍ່ຮູ້ຈະບັນຍາຍແນວໃດແລ້ວ ຈະພົກພາໄປນອກບ້ານກໍໃຫ້ສຽງແບບສະໃຈ ຈະຕັ້ງໄວ້ໃນບ້ານກໍທັງງາມ ແລະ ຍັງໃຫ້ສຽງໄດ້ທຸກມຸມ ມາຄັ້ງນີ້ຈັດເຕັມແທ້ໆ', 2),
(4, '1093016000002', 'img_5e6e4907e98d8.', '', 'Marshall Kilburn II ເປັນລຳໂພງໄຮ້ສາຍ Portable Bluetooth Speaker\r\nຊຶ່ງຖືວ່າເປັນລຸ້ນທີ່ 2 ແລ້ວກັບຊີລີ້ນີ້ ກັບການອັບເກດໃຫ້ທັນສະໄໝຂຶ້ນກວ່າລຸ້ນເກົ່າ ລວມໄປເຖິງການປັບປຸງໃນສ່ວນຂອງໜ້າຕາ ໃຫ້ມີຄວາມເທ້ ແລະ ຫຼູຫຼາຍິ່ງຂຶ້ນ ໂດຍຍັງຄົງຄອນເຊັບຂອງແບບນັ້ນໄວ້ກໍຄືຄົງຄວາມຄາສສິກເອົາໄວ້ຢ່າງຄົບຖ້ວນນັ້ນເອງ ໂດຍລຸ້ນນີ້ມາພ້ອມກັບການປັບປ່ຽນຫຼາຍຈຸດໃຫ່ຍໆ ໂດຍສ່ວນແລກກໍຄືເລື່ອງຂອງແບັດເຕີລີອັບເກດໃຫ້ຕອບໂຈດລຳໂພງໃຫ້ພົກພາໄປໃຫ້ໄດ້ທຸກໆທີຫຼາຍກວ່າເກົ່າກັບການໃຊ້ງານຕໍ່ເນື່ອງຢ່າງຍາວນານ 20+ ຊົ່ວໂມງກັນເລີຍ ໝົດກັງວົນໄປເລີຍວ່າສາກໄດ້ເຕັມທີ່ແລ້ວຈະຢູ່ໄດ້ບໍ່ດົນເພາະຮອບນີ້ຈັດໃຫ້ເຕັມໆ ຕໍ່ໄປຄືການເຊື່ອມຕໍ່ທີ່ໃນຄັ້ງນີ້ກໍອັບເກຣດເປັນການເຊື່ອມຕໍ່ແບບໄຮ້ສາຍລຸ້ນໃໝ່ລ່າສຸດແບບ Bluetooth 5.0 ກັນແລ້ວ ຂໍ້ດີຄືສັນຍານມີຄວາມສະຖຽນຫຼາຍຂຶ້ນ ບໍ່ຕິດຂັດງ່າຍແມ້ວ່າຈະເຊື່ອມຕໍ່ໃນທີ່ແອອັດ ສົ່ງສັນຍານໄດ້ໄກ ແລະ ທີ່ສຳຄັນແມ່ນປະຫຍັດພະລັງງານອີກດ້ວຍ ຕໍ່ມາຄືການຂັບສຽງໃນທີ່ຄັ້ງນີ້ກໍໄດ້ຮັບການອັບເກຣດຕັ້ງວາງໄດ້ທຸກທີ່ ທຸກມຸມຂອງຫ້ອງດ້ວຍຄວາມສາມາດໃນການຂັບສຽງ Muti-Direction ຂັບສຽງອອກມາທັງດ້ານໜ້າ ແລະ ດ້ານຫຼັງ ຂໍ້ດີຄືເຮັດໃຫ້ໄດ້ຍິນສຽງຈາກທຸກມຸມຂອງຫ້ອງ ແລະ ອີກຂໍ້ຄືໃຫ້ສຽງດັງຫຼາຍກວ່າທີ່ເຄຍບໍ່ວ່າຈະນຳໄປເປີດຢູ່ນອກ Outdoor ກໍຕາມ ແລະ ສ່ວນທີ່ເປັນເອກະລັກຂອງແບຣນກໍຄືໃນເລື່ອງຂອງການອອກແບບດີຊາຍ ບອກເລີຍວ່າຄັ້ງນີ້ມາແບບຈັດເຕັມ ບໍ່ວ່າຈະເປັນພື້ນຜິວພາຍນອກທີ່ຫຸ້ມດ້ວຍໜັງທັງໜ່ວຍເຮັດໃຫ້ຫຼູຫຼາ ແຕ່ໃນເວລາດຽວກັນກໍເບິ່ງທົນທານ ງານຊັ້ນດີເຊັ່ນດຽວກັນ ຂຶ້ນຊື່ວ່າເປັນລຳໂພງພົກພານ້ຳໜັກກໍເປັນສິ່ງທີ່ສຳຄັນກັບນ້ຳໜັກ 2,5 ກິໂລ ກໍຊ່ວຍໃຫ້ຫຍິບຖື ພົກພາໄປທີ່ຕ່າງໆໄດ້ຢ່າງງ່າຍດາຍ ນອກຈາກນັ້ນຍັງມີຟັງຊັນກັນນ້ຳແບບບໍ່ໃຊ້ນ້ຳສາດໃສ່ ແຕ່ເປັນລະອອງນ້ຳ ພົມນ້ຳ ມາດຕະຖານ IPX2 ການເຊື່ອມຕໍ່ເຂົ້າກັບ Smart Phone ໄດ້ເຖິງ 2 ເຄື່ອງໃນເວລາດຽວກັນ ຊ່ວຍໃຫ້ສະລັບໄດ້ຫຼິ້ນແອບ ຫຼື ເພງທີ່ຢູ່ຄົນລະເຄື່ອງໄດ້ຢ່າງງ່າຍດາຍ ຟັງຊັນສາກໄວ້ພຽງແຕ່ສາກ 20 ນາທີກໍໃຫ້ງານໄດ້ເຖິງ 2-3 ຊົ່ວໂມງລວມໄປເຖິງສາກເຕັມກໍໃຊ້ເວລາພຽງ 2,5 ຊົ່ວໂມງເທົ່ານັ້ນ ປັບແນວສຽງໄປຕາມທີ່ຕ້ອງການດ້ວຍ Control Knob ປັບສຽງແບບໝຸນເພີ່ມລົດສຽງ ເພີ່ມລົດສຽງເບສ ແລະ ເພີ່ມລົດສຽງແຫຼມຄົບເຄື່ອງທຸກການໃຊ້ງານ ແລະ ຄຸ້ມຄ່າແບບສຸດໆ', 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_color`
--

CREATE TABLE `product_color` (
  `color_id` int(11) NOT NULL,
  `color_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pro_id` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_path` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_color`
--

INSERT INTO `product_color` (`color_id`, `color_name`, `pro_id`, `img_path`) VALUES
(1, 'ຂາວ', '1093016000002', 'img_5e759669bb13b.png'),
(2, 'ດຳ', '1093016000002', 'img_5e75967d62e69.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_model`
--

CREATE TABLE `product_model` (
  `model_id` int(11) NOT NULL,
  `pro_id` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_path` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_model`
--

INSERT INTO `product_model` (`model_id`, `pro_id`, `img_path`, `model`) VALUES
(4, '1093016000002', 'img_5e7596026fa2c.jpg', NULL),
(5, '1093016000002', 'img_5e75961863d67.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_property`
--

CREATE TABLE `product_property` (
  `ppy_id` int(11) NOT NULL,
  `pro_id` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ppy_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_property`
--

INSERT INTO `product_property` (`ppy_id`, `pro_id`, `ppy_name`, `content`) VALUES
(1, '1093016000002', 'ມີສາຍ/ໄຮ້ສາຍ', 'ໄຮ້ສາຍ'),
(2, '1093016000002', 'Bluetooth', '5.0'),
(3, '1093016000002', 'ລະດັບກັນນ້ຳ', 'IPX2'),
(4, '1093016000002', 'ການເຊື່ອມຕໍ່ລຳໂພງ (Input)', 'Bluetooth, AUX (3,5mm)'),
(5, '1093016000002', 'Channel', '2.0'),
(6, '1093016000002', 'ປະເພດລຳໂພງ', 'Active'),
(7, '1093016000002', 'ຄວາມຈຸແບັດເຕີລີ', '20 ຊົ່ວໂມງ'),
(8, '1093016000002', 'ການຕອບສະໜອງຄວາມຖີ່', '52 - 20,000 Hz');

-- --------------------------------------------------------

--
-- Table structure for table `product_special`
--

CREATE TABLE `product_special` (
  `spec_id` int(11) NOT NULL,
  `pro_id` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_special`
--

INSERT INTO `product_special` (`spec_id`, `pro_id`, `content`) VALUES
(1, '1093016000002', 'ລຳໂພງໄຮ້ສາຍສຸດ Classic'),
(2, '1093016000002', 'ເຊື່ອມຕໍ່ໄຮ້ສາຍ Bluetooth ແບບລ່າສຸດ'),
(3, '1093016000002', 'ກັນລະອອງນ້ຳມາດຕະຖານ IPX2'),
(4, '1093016000002', 'ແບັດເຕີລີໃຊ້ງານຍາວນານ 20+ ຊົ່ວໂມວ');

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `rate_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rate_buy` decimal(11,2) DEFAULT NULL,
  `rate_sell` decimal(11,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`rate_id`, `rate_buy`, `rate_sell`) VALUES
('LAK', '1.00', '1.00'),
('USD', '9000.00', '9000.00'),
('THB', '300.00', '300.00');

-- --------------------------------------------------------

--
-- Table structure for table `sell`
--

CREATE TABLE `sell` (
  `sell_id` int(11) NOT NULL,
  `emp_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cus_id` int(11) DEFAULT NULL,
  `sell_date` date DEFAULT NULL,
  `sell_time` time DEFAULT NULL,
  `amount` decimal(11,2) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_cash` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_path` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sell_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seen1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seen2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cupon_key` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cupon_price` decimal(11,2) DEFAULT NULL,
  `delivery` decimal(11,2) DEFAULT NULL,
  `place_deli` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sell`
--

INSERT INTO `sell` (`sell_id`, `emp_id`, `cus_id`, `sell_date`, `sell_time`, `amount`, `status`, `status_cash`, `img_path`, `sell_type`, `seen1`, `seen2`, `cupon_key`, `cupon_price`, `delivery`, `place_deli`, `note`) VALUES
(1, '124', 14, '2020-03-03', '17:00:03', '5910000.00', 'ສັ່ງຊື້ສຳເລັດ', 'ເງິນສົດ', '0', 'ໜ້າຮ້ານ', 'SEEN', 'SEEN', '0', '0.00', '0.00', 'ໜ໊າຮ້ານ', '-'),
(2, '124', 14, '2020-04-03', '17:06:19', '2607000.00', 'ສັ່ງຊື້ສຳເລັດ', 'ເງິນສົດ', '0', 'ໜ້າຮ້ານ', 'SEEN', 'SEEN', 'sdfsdfsdf', '13000.00', '0.00', 'ໜ໊າຮ້ານ', '-'),
(3, '124', 14, '2020-06-05', '17:16:46', '1520000.00', 'ສັ່ງຊື້ສຳເລັດ', 'ເງິນໂອນ', 'img_5e870d0e7da96.png', 'ໜ້າຮ້ານ', 'SEEN', 'SEEN', '0', '0.00', '0.00', 'ໜ໊າຮ້ານ', '-'),
(4, '124', 2, '2020-02-07', '13:18:17', '15150000.00', 'ສັ່ງຊື້ສຳເລັດ', 'ເງິນສົດ', '0', 'online', 'SEEN', 'SEEN', '0', '0.00', '0.00', 'ເບີໂທ: | what\'s app: | ຊ່ອງທາງອື່ນໃນການຕິດຕໍ່: | ສະຖານທີ່ໃນການຈັດສົ່ງ: ', 'Thank you'),
(5, '124', 2, '2020-07-07', '13:28:50', '5050000.00', 'ສັ່ງຊື້ສຳເລັດ', 'ເງິນສົດ', '0', 'online', 'SEEN', 'NOTSEEN', '0', '0.00', '0.00', 'ເບີໂທ: | what\'s app: | ຊ່ອງທາງອື່ນໃນການຕິດຕໍ່: | ສະຖານທີ່ໃນການຈັດສົ່ງ: ', 'Thank You ..!'),
(6, '124', 2, '2020-08-07', '13:49:17', '10100000.00', 'ສັ່ງຊື້ສຳເລັດ', 'ເງິນສົດ', '0', 'online', 'SEEN', 'NOTSEEN', '0', '0.00', '0.00', 'ເບີໂທ: | what\'s app: | ຊ່ອງທາງອື່ນໃນການຕິດຕໍ່: | ສະຖານທີ່ໃນການຈັດສົ່ງ: ', 'Thank You ..!'),
(7, '124', 7, '2020-09-08', '12:06:50', '7320000.00', 'ສັ່ງຊື້ສຳເລັດ', 'ເງິນສົດ', '0', 'online', 'SEEN', 'NOTSEEN', '0', '0.00', '30000.00', 'ເບີໂທ: | what\'s app: | ຊ່ອງທາງອື່ນໃນການຕິດຕໍ່: | ສະຖານທີ່ໃນການຈັດສົ່ງ: ', 'ຂອບໃຈທີ່ໃຊ້ບໍລິການ'),
(8, '124', 7, '2020-10-08', '13:51:05', '2200000.00', 'ສັ່ງຊື້ສຳເລັດ', 'ເງິນສົດ', '0', 'online', 'SEEN', 'NOTSEEN', '1', '50000.00', '0.00', 'ເບີໂທ: | what\'s app: | ຊ່ອງທາງອື່ນໃນການຕິດຕໍ່: | ສະຖານທີ່ໃນການຈັດສົ່ງ: ', 'thank you'),
(9, '124', 7, '2020-05-08', '21:44:04', '12390000.00', 'ສັ່ງຊື້ສຳເລັດ', 'ເງິນສົດ', '0', 'online', 'SEEN', 'NOTSEEN', '0', '0.00', '0.00', 'ເບີໂທ: | what\'s app: | ຊ່ອງທາງອື່ນໃນການຕິດຕໍ່: | ສະຖານທີ່ໃນການຈັດສົ່ງ: ', 'thank you'),
(10, '124', 7, '2020-01-08', '22:12:07', '2250000.00', 'ສັ່ງຊື້ສຳເລັດ', 'ເງິນສົດ', '0', 'online', 'SEEN', 'NOTSEEN', '0', '0.00', '0.00', 'ເບີໂທ: | what\'s app: | ຊ່ອງທາງອື່ນໃນການຕິດຕໍ່: | ສະຖານທີ່ໃນການຈັດສົ່ງ: ', 'thank you'),
(11, '124', 14, '2020-12-08', '22:41:52', '6990000.00', 'ສັ່ງຊື້ສຳເລັດ', 'ເງິນສົດ', '0', 'ໜ້າຮ້ານ', 'SEEN', 'SEEN', '0', '0.00', '0.00', 'ໜ໊າຮ້ານ', '-'),
(12, '124', 14, '2020-11-08', '22:44:35', '1500000.00', 'ສັ່ງຊື້ສຳເລັດ', 'ເງິນໂອນ', 'img_5e8df163e92ae.jpg', 'ໜ້າຮ້ານ', 'SEEN', 'SEEN', '0', '0.00', '0.00', 'ໜ໊າຮ້ານ', '-'),
(13, '124', 14, '2020-04-09', '14:57:09', '5070000.00', 'ສັ່ງຊື້ສຳເລັດ', 'ເງິນສົດ', '0', 'ໜ້າຮ້ານ', 'SEEN', 'SEEN', '0', '0.00', '0.00', 'ໜ໊າຮ້ານ', '-'),
(14, '124', 14, '2020-04-09', '15:54:34', '5100000.00', 'ສັ່ງຊື້ສຳເລັດ', 'ເງິນສົດ', '0', 'ໜ້າຮ້ານ', 'SEEN', 'SEEN', '0', '0.00', '0.00', 'ໜ໊າຮ້ານ', '-');

-- --------------------------------------------------------

--
-- Table structure for table `selldetail`
--

CREATE TABLE `selldetail` (
  `detail_id` int(11) NOT NULL,
  `pro_id` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `promotion` decimal(11,2) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `sell_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `selldetail`
--

INSERT INTO `selldetail` (`detail_id`, `pro_id`, `qty`, `price`, `promotion`, `color_id`, `sell_id`) VALUES
(28, '1145018000002', 1, '5070000.00', '30000.00', 0, 1),
(29, '1816002000001', 2, '420000.00', '0.00', 0, 1),
(31, '1816002000001', 1, '420000.00', '0.00', 0, 2),
(32, '1095126000011', 2, '1100000.00', '100000.00', 0, 2),
(34, '1095126000011', 1, '1100000.00', '100000.00', 0, 3),
(35, '1816002000001', 1, '420000.00', '0.00', 0, 3),
(36, '1093016000002', 3, '2800000.00', '200000.00', 1, 4),
(37, '1093025000002', 3, '2250000.00', '150000.00', 0, 4),
(39, '1093025000002', 1, '2250000.00', '150000.00', 0, 5),
(40, '1093016000002', 1, '2800000.00', '200000.00', 0, 5),
(42, '1093025000002', 2, '2250000.00', '150000.00', 0, 6),
(43, '1093016000002', 2, '2800000.00', '200000.00', 0, 6),
(45, '1145018000002', 1, '5070000.00', '30000.00', 0, 7),
(46, '1093025000002', 1, '2250000.00', '150000.00', 0, 7),
(48, '1093025000002', 1, '2250000.00', '150000.00', 0, 8),
(49, '1145018000002', 1, '5070000.00', '30000.00', 0, 9),
(50, '1740005000002', 1, '420000.00', '0.00', 0, 9),
(51, '1298052000002', 1, '1500000.00', '0.00', 0, 9),
(52, '1740002000002', 1, '300000.00', '0.00', 0, 9),
(53, '1679005000003', 1, '5100000.00', '0.00', 0, 9),
(56, '1093025000002', 1, '2250000.00', '150000.00', 0, 10),
(57, '1145018000002', 1, '5070000.00', '30000.00', 0, 11),
(58, '1816002000001', 1, '420000.00', '0.00', 0, 11),
(59, '1298052000002', 1, '1500000.00', '0.00', 0, 11),
(60, '1298052000002', 1, '1500000.00', '0.00', 0, 12),
(61, '1145018000002', 1, '5070000.00', '30000.00', 0, 13),
(62, '1679005000003', 1, '5100000.00', '0.00', 0, 14);

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_path` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_title` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_shop` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `name`, `address`, `tel`, `email`, `img_path`, `img_title`, `date_shop`) VALUES
(1, 'GAME GADGET', 'ບ້ານ ໂສກປ່າຫຼວງ ເມືອງຫາດຊາຍຟອງ ນະຄອນຫຼວງວຽງຈັນ', '+856 20 5232 9555', 'GAME_GADGET@hotmail.com', 'img_5e8dcc1dcd274.jpeg', 'img_5e8dcc1dce344.ico', '2002-02-01');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(1, 'ເຈົ້າຂອງຮ້ານ'),
(2, 'ພະນັກງານຂາຍ'),
(3, 'ປິດການໃຊ້ງານ');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `sup_id` int(11) NOT NULL,
  `company` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`sup_id`, `company`, `tel`, `fax`, `address`, `email`) VALUES
(1, 'ສັນຕິພາບ ຄອມພິວເຕີ2', '2020-5555-6633', '2+856 20 5464 9656', '2Lao Airlines Building 7th Floor, Manthatourath Road, Xiengyeun Village, Chantabouly District, Vientiane Capital, Lao P.D.R (Headquarter)', '2bie_domonclup@hotmail.com'),
(2, 'Jiro Computer', '+856 20 5232 9555', '+856 20 5464 9656', 'Lao Airlines Building 7th Floor, Manthatourath Road, Xiengyeun Village, Chantabouly District, Vientiane Capital, Lao P.D.R (Headquarter)', 'Robert@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `topic_id` int(11) NOT NULL,
  `topic_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`topic_id`, `topic_name`) VALUES
(1, 'ລິວິວ'),
(2, 'ສະຫຼຸບສິນຄ້າ'),
(3, 'ລາຍລະອຽດທົ່ວໄປ');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `unit_id` int(11) NOT NULL,
  `unit_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`unit_id`, `unit_name`) VALUES
(1, 'ໜ່ວຍ'),
(7, 'ເສັ້ນ'),
(8, 'ກ້ອນ'),
(9, 'ກັບ'),
(10, 'ກ່ອງ'),
(11, 'ຖົງ'),
(12, 'ຊອງ'),
(13, 'ອັນ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `categorydetail`
--
ALTER TABLE `categorydetail`
  ADD PRIMARY KEY (`cated_id`),
  ADD KEY `cate_id` (`cate_id`);

--
-- Indexes for table `credit_card`
--
ALTER TABLE `credit_card`
  ADD PRIMARY KEY (`card_id`);

--
-- Indexes for table `cupon`
--
ALTER TABLE `cupon`
  ADD PRIMARY KEY (`cupon_key`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`deli_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `function_product`
--
ALTER TABLE `function_product`
  ADD PRIMARY KEY (`function_id`),
  ADD KEY `func_id` (`func_id`),
  ADD KEY `pro_id` (`pro_id`);

--
-- Indexes for table `func_pro`
--
ALTER TABLE `func_pro`
  ADD PRIMARY KEY (`func_id`);

--
-- Indexes for table `imports`
--
ALTER TABLE `imports`
  ADD PRIMARY KEY (`imp_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `sup_id` (`sup_id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `pro_id` (`pro_id`);

--
-- Indexes for table `listimports`
--
ALTER TABLE `listimports`
  ADD PRIMARY KEY (`imp_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `sup_id` (`sup_id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `pro_id` (`pro_id`);

--
-- Indexes for table `listorderdetail`
--
ALTER TABLE `listorderdetail`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `pro_id` (`pro_id`),
  ADD KEY `emp_id` (`emp_id`);

--
-- Indexes for table `listselldetail`
--
ALTER TABLE `listselldetail`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `pro_id` (`pro_id`),
  ADD KEY `cus_id` (`cus_id`);

--
-- Indexes for table `listselldetail2`
--
ALTER TABLE `listselldetail2`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `pro_id` (`pro_id`),
  ADD KEY `emp_id` (`emp_id`);

--
-- Indexes for table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`model`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `pro_id` (`pro_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `sup_id` (`sup_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pro_id`),
  ADD KEY `cated_id` (`cated_id`),
  ADD KEY `unit_id` (`unit_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Indexes for table `productdetail`
--
ALTER TABLE `productdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pro_id` (`pro_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`color_id`),
  ADD KEY `pro_id` (`pro_id`);

--
-- Indexes for table `product_model`
--
ALTER TABLE `product_model`
  ADD PRIMARY KEY (`model_id`),
  ADD KEY `pro_id` (`pro_id`),
  ADD KEY `model` (`model`);

--
-- Indexes for table `product_property`
--
ALTER TABLE `product_property`
  ADD PRIMARY KEY (`ppy_id`),
  ADD KEY `pro_id` (`pro_id`);

--
-- Indexes for table `product_special`
--
ALTER TABLE `product_special`
  ADD PRIMARY KEY (`spec_id`),
  ADD KEY `pro_id` (`pro_id`);

--
-- Indexes for table `sell`
--
ALTER TABLE `sell`
  ADD PRIMARY KEY (`sell_id`),
  ADD KEY `cus_id` (`cus_id`);

--
-- Indexes for table `selldetail`
--
ALTER TABLE `selldetail`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `pro_id` (`pro_id`),
  ADD KEY `sell_id` (`sell_id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`sup_id`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`topic_id`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`unit_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `categorydetail`
--
ALTER TABLE `categorydetail`
  MODIFY `cated_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `cus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `deli_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `function_product`
--
ALTER TABLE `function_product`
  MODIFY `function_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `func_pro`
--
ALTER TABLE `func_pro`
  MODIFY `func_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `imports`
--
ALTER TABLE `imports`
  MODIFY `imp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `listimports`
--
ALTER TABLE `listimports`
  MODIFY `imp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `listorderdetail`
--
ALTER TABLE `listorderdetail`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `listselldetail`
--
ALTER TABLE `listselldetail`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `listselldetail2`
--
ALTER TABLE `listselldetail2`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `productdetail`
--
ALTER TABLE `productdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_color`
--
ALTER TABLE `product_color`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_model`
--
ALTER TABLE `product_model`
  MODIFY `model_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_property`
--
ALTER TABLE `product_property`
  MODIFY `ppy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_special`
--
ALTER TABLE `product_special`
  MODIFY `spec_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `selldetail`
--
ALTER TABLE `selldetail`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `sup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categorydetail`
--
ALTER TABLE `categorydetail`
  ADD CONSTRAINT `categorydetail_ibfk_1` FOREIGN KEY (`cate_id`) REFERENCES `category` (`cate_id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`status`) REFERENCES `status` (`id`);

--
-- Constraints for table `function_product`
--
ALTER TABLE `function_product`
  ADD CONSTRAINT `function_product_ibfk_1` FOREIGN KEY (`func_id`) REFERENCES `func_pro` (`func_id`),
  ADD CONSTRAINT `function_product_ibfk_2` FOREIGN KEY (`pro_id`) REFERENCES `product` (`pro_id`);

--
-- Constraints for table `imports`
--
ALTER TABLE `imports`
  ADD CONSTRAINT `imports_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `imports_ibfk_2` FOREIGN KEY (`sup_id`) REFERENCES `suppliers` (`sup_id`),
  ADD CONSTRAINT `imports_ibfk_3` FOREIGN KEY (`emp_id`) REFERENCES `employees` (`emp_id`),
  ADD CONSTRAINT `imports_ibfk_4` FOREIGN KEY (`pro_id`) REFERENCES `product` (`pro_id`);

--
-- Constraints for table `listimports`
--
ALTER TABLE `listimports`
  ADD CONSTRAINT `listimports_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `listimports_ibfk_2` FOREIGN KEY (`sup_id`) REFERENCES `suppliers` (`sup_id`),
  ADD CONSTRAINT `listimports_ibfk_3` FOREIGN KEY (`emp_id`) REFERENCES `employees` (`emp_id`),
  ADD CONSTRAINT `listimports_ibfk_4` FOREIGN KEY (`pro_id`) REFERENCES `product` (`pro_id`);

--
-- Constraints for table `listorderdetail`
--
ALTER TABLE `listorderdetail`
  ADD CONSTRAINT `listorderdetail_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `product` (`pro_id`),
  ADD CONSTRAINT `listorderdetail_ibfk_2` FOREIGN KEY (`emp_id`) REFERENCES `employees` (`emp_id`);

--
-- Constraints for table `listselldetail`
--
ALTER TABLE `listselldetail`
  ADD CONSTRAINT `listselldetail_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `product` (`pro_id`),
  ADD CONSTRAINT `listselldetail_ibfk_2` FOREIGN KEY (`cus_id`) REFERENCES `customers` (`cus_id`);

--
-- Constraints for table `listselldetail2`
--
ALTER TABLE `listselldetail2`
  ADD CONSTRAINT `listselldetail2_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `product` (`pro_id`),
  ADD CONSTRAINT `listselldetail2_ibfk_2` FOREIGN KEY (`emp_id`) REFERENCES `employees` (`emp_id`);

--
-- Constraints for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `product` (`pro_id`),
  ADD CONSTRAINT `orderdetail_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employees` (`emp_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`sup_id`) REFERENCES `suppliers` (`sup_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`cated_id`) REFERENCES `categorydetail` (`cated_id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`unit_id`),
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`);

--
-- Constraints for table `productdetail`
--
ALTER TABLE `productdetail`
  ADD CONSTRAINT `productdetail_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `product` (`pro_id`),
  ADD CONSTRAINT `productdetail_ibfk_2` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`topic_id`);

--
-- Constraints for table `product_color`
--
ALTER TABLE `product_color`
  ADD CONSTRAINT `product_color_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `product` (`pro_id`);

--
-- Constraints for table `product_model`
--
ALTER TABLE `product_model`
  ADD CONSTRAINT `product_model_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `product` (`pro_id`),
  ADD CONSTRAINT `product_model_ibfk_2` FOREIGN KEY (`model`) REFERENCES `model` (`model`);

--
-- Constraints for table `product_property`
--
ALTER TABLE `product_property`
  ADD CONSTRAINT `product_property_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `product` (`pro_id`);

--
-- Constraints for table `product_special`
--
ALTER TABLE `product_special`
  ADD CONSTRAINT `product_special_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `product` (`pro_id`);

--
-- Constraints for table `sell`
--
ALTER TABLE `sell`
  ADD CONSTRAINT `sell_ibfk_1` FOREIGN KEY (`cus_id`) REFERENCES `customers` (`cus_id`);

--
-- Constraints for table `selldetail`
--
ALTER TABLE `selldetail`
  ADD CONSTRAINT `selldetail_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `product` (`pro_id`),
  ADD CONSTRAINT `selldetail_ibfk_2` FOREIGN KEY (`sell_id`) REFERENCES `sell` (`sell_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
