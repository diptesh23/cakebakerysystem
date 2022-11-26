-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2022 at 12:58 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cbsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 7020663582, 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-04-05 07:16:39');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(5) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `CreationDate`) VALUES
(3, 'Eggless Cake', '2019-04-05 10:36:01'),
(4, 'Kids Cake', '2019-04-05 10:36:25'),
(5, 'Photo Cake', '2019-04-05 10:36:35'),
(6, 'Premium Cake', '2019-04-05 10:36:47'),
(7, 'Cup Cake', '2019-04-05 10:43:13'),
(8, 'First Birthday Cake', '2019-04-05 10:43:45'),
(10, 'First Anniversary Cake', '2019-05-06 16:36:16');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`ID`, `Name`, `Email`, `Message`, `EnquiryDate`, `IsRead`) VALUES
(1, 'Kiran', 'kran@gmail.com', 'cost of volvo place pritampura to dwarka', '2021-07-05 07:26:24', 1),
(2, 'Sarita Pandey', 'sar@gmail.com', 'huiyuihhjjkhkjvhknv iyi tuyvuoiup', '2021-07-09 12:48:40', 1),
(3, 'Test', 'test@gmail.com', 'Want to know price of forest cake', '2021-07-16 12:51:06', 1),
(4, 'Anuj', 'ak330@gmail.com', 'This is for testing.', '2021-07-18 14:35:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblfood`
--

CREATE TABLE `tblfood` (
  `ID` int(10) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `ItemName` varchar(120) DEFAULT NULL,
  `ItemPrice` varchar(120) DEFAULT NULL,
  `ItemDes` varchar(500) DEFAULT NULL,
  `Image` varchar(120) DEFAULT NULL,
  `ItemQty` varchar(120) DEFAULT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfood`
--

INSERT INTO `tblfood` (`ID`, `CategoryName`, `ItemName`, `ItemPrice`, `ItemDes`, `Image`, `ItemQty`, `Weight`, `CreationDate`) VALUES
(1, 'Eggless Cake', 'Black Forest Cake', '450', 'testing of the cake', '1d60fc8c392da1803c14cfb6727dae14.jpg', '1 pcs', '500 gm', '2021-07-07 11:59:35'),
(2, 'Eggless Cake', 'Tom And Jerry Birthday Cake', '500', 'testing of the cake', '7816ec6d8e570a5511550cce1dc2aaee.jpg', '1', '2 kg', '2021-07-07 13:00:49'),
(3, 'Eggless Cake', 'Irish Coffee Cake', '550', 'testing of the cake', '66a6f0dc19c2a2257b8a9691abd9b015.jpg', '1', '2 kg', '2021-07-07 13:02:46'),
(4, 'Kids Cake', 'Happier Mickey N Minnie Cake', '500', 'testing of the cake', '897e767e9e8d96288b5db4fbb4e30c5a.jpg', '1', '3 kg', '2021-07-09 05:18:29'),
(5, 'Photo Cake', 'Photo Cake For Kid', '530', 'testing of the cake', '6f50cca00399837edf75d3b8d7998932.jpg', '1', '4 kg', '2021-07-09 05:20:05'),
(6, 'Premium Cake', 'Indulging Pineapple Cake', '450', 'testing of the cake', '812dc257444fc21da4c01aabe3dfedc8jpeg', '1', '2 kg', '2021-07-09 05:21:30'),
(7, 'Premium Cake', 'Fantastic Chocolate Cake', '500', 'testing of the cake', 'b9fb9d37bdf15a699bc071ce49baea53.jpg', '1', '1.5 kg', '2021-07-09 05:22:45'),
(8, 'Cup Cake', '4 Chocolate Cupcake', '500', 'testing of the cake', '51f2e276b44316f2202402e5075579a5.jpg', '4 pcs', '500 gm', '2021-07-09 05:24:51'),
(9, 'First Birthday Cake', 'Jungle Theme Cake', '600', 'testing of the cake', 'bb0248cc8639e76969a01523158357f5jpeg', '1', '4 kg', '2021-07-09 05:27:25'),
(10, 'First Birthday Cake', 'Farm Cake', '550', 'testing of the cake', 'e6f0ef529bb9dd0807c98112739b5f36.jpg', '1', '3 kg', '2021-07-09 05:30:05'),
(13, 'First Anniversary Cake', 'Delicious Anniversary Poster Cake', '580', 'testing of the cake', '88374bcd74aa4b4f14257d9ec926965a.jpg', '1', '2 kg', '2021-07-09 05:36:02'),
(14, 'First Anniversary Cake', 'Anniversary Fusion Red Velvet And Chocolate Cake', '700', 'testing of the cake', 'efc1a80c391be252d7d777a437f86870.jpg', '1', '2 kg', '2021-07-09 05:37:26'),
(15, 'Photo Cake', 'Photo Cake Custom', '600', 'testing of the cake                                           This is for testing purposes.  This is for testing purposes.  This is for testing purposes. This is for testing purposes.  This is for testing purposes.  This is for testing purposes.', '00f943a85103630af16dbe2f7aff194bjpeg', '1', '1 kg', '2021-07-16 12:41:11');

-- --------------------------------------------------------

--
-- Table structure for table `tblfoodtracking`
--

CREATE TABLE `tblfoodtracking` (
  `ID` int(10) NOT NULL,
  `OrderId` char(50) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `status` char(50) DEFAULT NULL,
  `StatusDate` timestamp NULL DEFAULT current_timestamp(),
  `OrderCanclledByUser` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfoodtracking`
--

INSERT INTO `tblfoodtracking` (`ID`, `OrderId`, `remark`, `status`, `StatusDate`, `OrderCanclledByUser`) VALUES
(1, '684785077', 'order confirmed', 'Order Confirmed', '2021-07-14 07:18:21', NULL),
(2, '684785077', 'Cake being prepared', 'Cake being Prepared', '2021-07-14 07:18:53', NULL),
(3, '684785077', 'Cake pickup', 'Cake Pickup', '2021-07-14 07:19:19', NULL),
(4, '684785077', 'Cake Delivered', 'Cake Delivered', '2021-07-14 07:21:00', NULL),
(5, '728672835', 'Order is Confirmed', 'Order Confirmed', '2021-07-18 14:33:25', NULL),
(6, '728672835', 'The cake is Picked up.', 'Cake Pickup', '2021-07-18 14:34:03', NULL),
(7, '728672835', 'The Cake is Delivered', 'Cake Delivered', '2021-07-18 14:34:25', NULL),
(8, '361296069', 'happy birthday sid', 'Order Confirmed', '2022-07-19 10:23:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblorderaddresses`
--

CREATE TABLE `tblorderaddresses` (
  `ID` int(11) NOT NULL,
  `UserId` char(100) DEFAULT NULL,
  `Ordernumber` char(100) DEFAULT NULL,
  `Flatnobuldngno` varchar(255) DEFAULT NULL,
  `StreetName` varchar(255) DEFAULT NULL,
  `Area` varchar(255) DEFAULT NULL,
  `Landmark` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `OrderTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `OrderFinalStatus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorderaddresses`
--

INSERT INTO `tblorderaddresses` (`ID`, `UserId`, `Ordernumber`, `Flatnobuldngno`, `StreetName`, `Area`, `Landmark`, `City`, `OrderTime`, `OrderFinalStatus`) VALUES
(1, '1', '684785077', 'dsfde', 'rtert', 'tretret', 'trtert', 'terterte', '2021-07-14 07:16:49', 'Cake Delivered'),
(2, '1', '143132597', 'erte', 'bkkj', 'kjhkj', 'kjhbjkh', 'kjhkjh', '2021-07-14 07:17:16', NULL),
(3, '1', '478333935', 'lkjlk', 'lkjlk', 'lkjlk', 'lkjkl', 'lkjlk', '2021-07-14 07:17:51', NULL),
(4, '6', '890594955', 'tyu', 'uiu', 'yui', 'uiyi', 'iuyui', '2021-07-16 07:07:52', NULL),
(5, '6', '197974391', 'fdads', 'dgfd', 'dfgfdf', 'gfdgf', 'gfdgf', '2021-07-16 12:10:40', NULL),
(6, '8', '728672835', 'Q 42342', 'ABC Street', 'New Delhi', 'Near XYZ', 'New Delhi', '2021-07-18 14:32:50', 'Cake Delivered'),
(7, '9', '361296069', 'qwe', 'sd', 'zxf', 'xcdvf', 'panjim', '2022-07-19 07:33:12', 'Order Confirmed');

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `ID` int(11) NOT NULL,
  `UserId` char(10) DEFAULT NULL,
  `FoodId` char(10) DEFAULT NULL,
  `IsOrderPlaced` int(11) DEFAULT NULL,
  `OrderNumber` char(100) DEFAULT NULL,
  `CashonDelivery` varchar(100) DEFAULT NULL,
  `OrderDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`ID`, `UserId`, `FoodId`, `IsOrderPlaced`, `OrderNumber`, `CashonDelivery`, `OrderDate`) VALUES
(1, '1', '2', 1, '684785077', 'Cash on Delivery', '2021-07-14 07:16:30'),
(2, '1', '7', 1, '143132597', 'Cash on Delivery', '2021-07-14 07:16:57'),
(3, '1', '1', 1, '478333935', 'Cash on Delivery', '2021-07-14 07:17:23'),
(4, '1', '10', 1, '478333935', 'Cash on Delivery', '2021-07-14 07:17:29'),
(5, '1', '3', 1, '478333935', 'Cash on Delivery', '2021-07-14 07:17:32'),
(6, '1', '1', NULL, NULL, NULL, '2021-07-14 12:12:42'),
(7, '1', '1', NULL, NULL, NULL, '2021-07-14 12:22:37'),
(8, '1', '1', NULL, NULL, NULL, '2021-07-14 12:23:42'),
(9, '1', '2', NULL, NULL, NULL, '2021-07-14 12:23:47'),
(10, '1', '2', NULL, NULL, NULL, '2021-07-14 12:42:23'),
(12, '6', '2', 1, '890594955', 'Cash on Delivery', '2021-07-16 07:07:25'),
(13, '6', '5', 1, '197974391', 'Cash on Delivery', '2021-07-16 12:06:45'),
(14, '8', '1', 1, '728672835', 'Cash on Delivery', '2021-07-18 14:32:11'),
(15, '9', '1', 1, '361296069', 'Cash on Delivery', '2022-07-19 07:32:27'),
(16, '11', '2', NULL, NULL, NULL, '2022-07-19 07:44:24'),
(17, '11', '3', NULL, NULL, NULL, '2022-07-19 08:07:00'),
(18, '11', '5', NULL, NULL, NULL, '2022-07-19 08:09:56'),
(19, '11', '5', NULL, NULL, NULL, '2022-07-19 09:26:57'),
(20, '14', '5', NULL, NULL, NULL, '2022-07-19 10:07:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About us', '<p class=\"MsoNormal\"><span style=\"font-size: 11.5pt; line-height: 115%; font-family: Roboto; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">We provide you a trustworthy and convenient platform\r\nto choose best gift for your family, friends etc. for every occasion like\r\nbirthdays, anniversaries, marriage, love, farewell and many more. We offer wide\r\nrange of products in various categories like cakes, egg-less cakes, drawing\r\ncakes, 3D cakes, photo cakes, collectibles, chocolates, bouquet, flowers bunch,\r\nsoft toys, greeting cards, candles, photo frames, handicrafts etc. We also\r\ncustomize gifts according to customer wish.</span></p>', NULL, NULL, '2021-07-16 06:44:44'),
(2, 'contactus', 'Contact Us', 'Shop No: 67, B.B. Borkar Road, Panjim-Goa. ', 'cakebakery@gmail.com', 7020663582, '2022-07-19 07:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(9, 'Saleesha', 'Naik', 'saleesha@gmail.com', 8999487838, 'd16355c82235182d781007fbd410e34d', '2022-07-19 06:32:31'),
(10, 'suraj', 'parab', 'suraj@gmail.com', 9823248926, '021b4961c20e131a92e0ca2042bb5df6', '2022-07-19 06:33:09'),
(11, 'siddhant', 'shankhwalkar', 'siddhant@gmail.com', 7020785937, '0c54549226b9e86483cbf301573f65dc', '2022-07-19 06:34:00'),
(12, 'yash', 'kurdikar', 'yash@gmail.com', 8308001183, '6de3bb80cc76782b7ee4c5bd89aafde2', '2022-07-19 06:35:25'),
(13, 'raj', 'verlekar', 'raj@gmail.com', 8669014308, 'c62ac98937679cd7fa090c411b5bba9c', '2022-07-19 06:36:24'),
(14, 'seema', 'Naik', 'mca.2039@unigoa.ac.in', 7584236854, '81dc9bdb52d04dc20036dbd8313ed055', '2022-07-19 10:05:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CategoryName` (`CategoryName`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfood`
--
ALTER TABLE `tblfood`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfoodtracking`
--
ALTER TABLE `tblfoodtracking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserId` (`UserId`,`Ordernumber`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserId` (`UserId`,`FoodId`,`OrderNumber`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblfood`
--
ALTER TABLE `tblfood`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblfoodtracking`
--
ALTER TABLE `tblfoodtracking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
