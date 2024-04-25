-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2023 at 08:15 PM
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
-- Database: `greyday`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `ItemID` int(11) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `Brand` varchar(64) NOT NULL,
  `Description` varchar(512) NOT NULL,
  `Category` int(11) NOT NULL,
  `SellingPrice` float NOT NULL,
  `QuantityInStock` int(11) NOT NULL,
  `Image` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`ItemID`, `Name`, `Brand`, `Description`, `Category`, `SellingPrice`, `QuantityInStock`, `Image`) VALUES
(3, 'Hanorac Logo GreyDay Negru', 'Greyday', ' ', 0, 259.99, 26, 'hanorac1.png'),
(4, 'Hanorac Logo GreyDay Gri', 'Greyday', ' ', 0, 259.99, 14, 'hanorac2.png'),
(5, 'Pantaloni Scurti GreyDay Negru', 'Greyday', ' ', 0, 149.99, 20, 'scurti1.png'),
(6, 'Pantaloni Scurti GreyDay Gri', 'Greyday', ' ', 0, 149.99, 2, 'scurti2.png'),
(7, 'Tricou Logo GreyDay Negru', 'Greyday', ' ', 0, 69.99, 5, 'tricou1.png'),
(8, 'Tricou Logo GreyDay Gri', 'Greyday', ' ', 0, 69.99, 14, 'tricou2.png'),
(9, 'Tricou Logo GreyDay Alb', 'Greyday', ' ', 0, 69.99, 5, 'tricou3.png'),
(10, 'Pachet 3 Tricouri GreyDay', 'Greyday', ' ', 0, 149.99, 48, 'packtricou.png'),
(11, 'Pachet Boxeri GreyDay', 'Greyday', ' ', 0, 49.99, 10, 'boxeri.png'),
(12, 'Sapca Logo GreyDay Negru', 'Greyday', ' ', 1, 99.99, 2, 'sapca1.png'),
(13, 'Sapca Logo GreyDay Alb', 'Greyday', ' ', 1, 99.99, 3, 'sapca2.png'),
(14, 'Slapi Logo GreyDay Alb', 'Greyday', ' ', 2, 89.99, 1, 'slides.png'),
(15, 'Ciorapi Lungi Logo GreyDay Alb', 'Greyday', ' ', 1, 49.99, 15, 'ciorapi1.png'),
(16, 'Ciorapi Lungi Logo GreyDay Negru', 'Greyday', ' ', 1, 49.99, 15, 'ciorapi2.png'),
(17, 'Ciorapi Daily GreyDay Alb', 'Greyday', ' ', 1, 39.99, 15, 'ciorapi3.png'),
(18, 'Ciorapi Daily GreyDay Gri', 'Greyday', ' ', 1, 39.99, 18, 'ciorapi4.png'),
(19, 'Ciorapi Scurti Logo GreyDay Alb', 'Greyday', ' ', 1, 29.99, 15, 'ciorapi5.png'),
(20, 'Ciorapi Scurti Logo GreyDay Negru', 'Greyday', ' ', 1, 29.99, 15, 'ciorapi6.png'),
(21, 'Nike Dunk Low Lottery', 'Nike', ' ', 2, 899.99, 10, 'pantofinike.png'),
(22, 'Nike Dunk Low Sesame', 'Nike', ' ', 2, 1099.99, 15, 'pantofinike2.png'),
(23, 'Nike Dunk High Summit', 'Nike', ' ', 2, 999.99, 20, 'pantofinike3.png'),
(24, 'Jordan 1 Retro High OG Hyper Royal', 'Jordan', ' ', 2, 1999.99, 15, 'pantofijordan.png'),
(25, 'Air Jordan 1 Travis Scott Cactus Jack', 'Jordan', ' ', 2, 3199.99, 19, 'pantofijordan2.png'),
(26, 'Nike Blazers Mid Sequoia', 'Nike', ' ', 2, 999.99, 15, 'pantofinike4.png');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `MemberID` int(11) NOT NULL,
  `Username` varchar(64) NOT NULL,
  `Password` varchar(512) NOT NULL,
  `Email` varchar(64) NOT NULL,
  `PrivilegeLevel` int(11) NOT NULL DEFAULT 0,
  `Attempt` int(1) DEFAULT NULL,
  `RegisteredDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`MemberID`, `Username`, `Password`, `Email`, `PrivilegeLevel`, `Attempt`, `RegisteredDate`) VALUES
(2, 'admin', '$2y$10$wq746a0dn0wmcPzHXfEMhe80xZQc9/1PBJID9Ri4AHbfmwT9xn9Xi', 'admin@gmail.com', 1, 3, '2023-11-27'),
(5, 'test1', '$2y$10$GlhvBkMPi19b3tGoGUzEzOu3GDazDogOzd.eoAvNc0ID8PB9n7E7K', 'test@gmail.com', 0, 3, '2023-11-27'),
(6, 'test2', '$2y$10$Q.624Ef8zdpsWryToDFJZONz7XopgMQZwQeLXwzFUBa07/DNdFfUO', 'test123@gmail.com', 0, 3, '2023-11-27'),
(7, 'test3', '$2y$10$YZJ3hA4zgVjaKdMJHR5EWuUk8ujPDlqXP7IzEd.kD9.lLcUAbH5Su', 'test3@gmail.com', 0, 3, '2023-11-27'),
(8, 'test4', '$2y$10$07FJA8uhFxA0aAnMBoP59uAs4CNhyQ/yHqIT69UgrH6l2nsZGa5Y.', 'test4@gmail.com', 0, 3, '2023-11-27'),
(9, 'test5', '$2y$10$CYsI.DmaPc5EXpjRRfQTIeYkbC0ngtucxVHRHgV5SJ0z1/2cwB4mu', 'test5@gmail.com', 0, 3, '2023-11-25'),
(10, 'test6', '$2y$10$ieSbXKrOc4tmF.kSUtTCyO69Xp13lNCs.Fl.agTLYm3N0FAKdRWkC', 'test6@gmail.com', 0, 3, '2023-11-24'),
(15, 'test7', '$2y$10$wYZtt0RY/443JBq5UO0iGuDbUia/lIEWI0/iSGrDJ4Yrv3WpD5J1.', 'test7@gmail.com', 0, 3, '2023-11-25'),
(16, 'test8', '$2y$10$qYaWx7z6VHxgBtQxLm7leuo2sKv76Cg28UhmJaKZiF0eHXiMMcKCa', 'test8@gmail.com', 0, 3, '2023-11-27'),
(19, 'test9', '$2y$10$VDEN6GE/49oMJ6GIwCL/2Op6K6iTeuZbbf7QFn8Oj7WTPzTG3E2Nq', 'test9@gmail.com', 0, 3, '2023-11-26'),
(22, 'admin2', '$2y$10$4DtSUM142G/dEiZOfO2xS.1VptEJ0rzRh1AFM6EH/Wf.1MediuCUm', 'admin@mail.com', 1, 3, '2023-11-27'),
(23, 'david', '$2y$10$j4NVCffRhDEG/YK98pE9se1rrWoDBLanameq3FEhF2x5ESBAo.0t2', 'davidm@gmail.com', 0, 3, '2023-12-10'),
(24, 'davidd', '$2y$10$A3Q5N7DrrkOXkUkERZv4muMrHtuWyDYRtV7s4i.ZRqz7RmktL7qDm', 'david123@gmail.com', 0, 3, '2023-12-18'),
(25, 'treistariu', '$2y$10$lieD/dSecX69uCmTlUPzIeLZh6LHo6xjpF0W7AOlic6LJKY0x5oOG', 'mtristariu@yahoo.com', 0, 3, '2023-12-18');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `OrderItemID` int(11) NOT NULL,
  `OrderID` int(11) NOT NULL,
  `ItemID` int(11) NOT NULL,
  `Price` float NOT NULL,
  `Quantity` int(11) NOT NULL,
  `AddedDatetime` datetime NOT NULL,
  `Feedback` varchar(512) DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL,
  `RatingDateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`OrderItemID`, `OrderID`, `ItemID`, `Price`, `Quantity`, `AddedDatetime`, `Feedback`, `Rating`, `RatingDateTime`) VALUES
(37, 24, 3, 289.99, 1, '2023-11-30 00:43:58', 'Bomba hanorac va stiti sefilor!!', 5, '2023-11-13 19:36:36'),
(56, 28, 3, 289.99, 1, '2023-12-02 23:49:08', 'Arata glorios cand il pun pe mine', 5, '2023-11-14 00:35:25'),
(57, 28, 5, 149.99, 1, '2023-12-02 23:49:39', 'Nu i-am mai dat jos de cand i-am cumparat', 5, '2023-11-14 00:35:51'),
(58, 28, 6, 149.99, 1, '2023-12-03 23:49:45', 'Is asa faini ca ma visez cu ei si in somn', 5, '2023-11-14 00:36:24'),
(59, 28, 10, 149.99, 1, '2023-12-09 23:52:19', 'le-am luat la pachet ca e pretu demential', 5, '2023-11-14 00:37:06'),
(61, 29, 3, 289.99, 1, '2023-12-09 11:07:27', 'chiar imi place, da nu dau 5 stele', 4, '2023-11-14 11:08:40'),
(68, 27, 4, 289.99, 1, '2023-12-10 01:47:53', 'Atrage toate femeile, dar eu tot doar pe una o vreau', 4, '2023-12-10 01:49:18'),
(80, 33, 3, 259.99, 2, '2023-12-18 06:04:43', NULL, NULL, '0000-00-00 00:00:00'),
(82, 34, 25, 3199.99, 1, '2023-12-18 06:07:14', 'bomb', 4, '2023-12-18 06:08:23'),
(84, 35, 6, 149.99, 1, '2023-12-18 21:08:06', 'eh', 2, '2023-12-18 21:08:39'),
(85, 35, 10, 149.99, 1, '2023-12-18 21:08:20', 'is ok', 3, '2023-12-18 21:08:56'),
(86, 32, 3, 259.99, 1, '2023-12-18 21:09:40', 'fainut', 3, '2023-12-18 21:10:44'),
(87, 32, 6, 149.99, 1, '2023-12-18 21:09:45', 'nu-mi sta bn gri', 3, '2023-12-18 21:11:40'),
(88, 32, 10, 149.99, 1, '2023-12-18 21:09:49', 'ma sparg rau', 5, '2023-12-18 21:11:05'),
(89, 38, 14, 89.99, 1, '2023-12-18 21:14:28', 'ce fain mi se vad degetele in ei', 4, '2023-12-18 21:14:51');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `MemberID` int(11) NOT NULL,
  `CartFlag` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `MemberID`, `CartFlag`) VALUES
(6, 6, b'1'),
(7, 7, b'1'),
(8, 8, b'1'),
(9, 9, b'1'),
(10, 10, b'1'),
(15, 15, b'1'),
(16, 16, b'1'),
(20, 19, b'1'),
(24, 5, b'0'),
(27, 2, b'0'),
(28, 5, b'0'),
(29, 5, b'0'),
(30, 5, b'1'),
(31, 22, b'1'),
(32, 2, b'0'),
(33, 24, b'0'),
(34, 24, b'0'),
(35, 24, b'0'),
(36, 24, b'1'),
(37, 2, b'1'),
(38, 25, b'0'),
(39, 25, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PaymentID` int(11) NOT NULL,
  `OrderID` int(11) NOT NULL,
  `PaymentDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`PaymentID`, `OrderID`, `PaymentDate`) VALUES
(6, 24, '2023-11-30'),
(7, 28, '2023-12-02'),
(8, 29, '2023-12-09'),
(9, 27, '2023-12-10'),
(10, 33, '2023-12-18'),
(11, 34, '2023-12-18'),
(12, 35, '2023-12-18'),
(13, 32, '2023-12-18'),
(14, 38, '2023-12-18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`ItemID`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`MemberID`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`OrderItemID`),
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `ItemID` (`ItemID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PaymentID`),
  ADD KEY `OrderID` (`OrderID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `ItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `MemberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `OrderItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `PaymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`MemberID`) REFERENCES `members` (`MemberID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
