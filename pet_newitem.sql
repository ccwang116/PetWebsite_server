-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 04, 2020 at 03:04 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+08:00";

--
-- Database: `pet_website_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `itemId` int(5) NOT NULL,
  `itemName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `itemDescription` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `itemCategoryId` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `itemQty` tinyint(3) NOT NULL,
  `MSRP` int(5) NOT NULL,
  `itemPrice` int(5) NOT NULL,
  `itemColor` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `itemImg` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Size` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shippingId` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int(20) NOT NULL,
  `currentOrder` int(100) NOT NULL,
  `ranking` int(10) NOT NULL,
  `comment` int(200) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`itemId`, `itemName`, `itemDescription`, `itemCategoryId`, `itemQty`, `MSRP`, `itemPrice`, `itemColor`, `itemImg`, `Size`, `shippingId`, `discount`, `currentOrder`, `ranking`, `comment`, `created_at`, `updated_at`) VALUES
(11, '潔牙一番', '潔牙一番', '2', 100, 850, 650, '#90B44B', 'item[11]400x.webp', 'F', 'S002', 0, 0, 0, 0, '2020-07-02 23:22:20', '2020-07-01 23:22:20'),
(16, '潔牙一番-草本', '潔牙一番-草本', '2', 100, 1050, 850, '#42602D', 'item[16]400x.webp', 'F', 'S002', 0, 0, 0, 0, '2020-06-01 23:22:20', '2020-07-01 23:22:20'),
(57, 'Joesie火雞罐頭', 'Joesie火雞罐頭', '3', 100, 650, 450, '#42602D', 'item[57]400x.webp', 'F', 'S002', 0, 0, 0, 0, '2020-05-01 23:22:20', '2020-07-01 23:22:20'),
(78, 'IVORY COAT 羊肉狗狗飼料', 'IVORY COAT 羊肉狗狗飼料', '2', 100, 650, 450, '#42603D', 'item[78]400x.webp', 'F', 'S002', 0, 0, 0, 0, '2020-01-01 23:22:20', '2020-07-01 23:22:20'),
(79, 'Zenith無穀羊肉糙米狗狗飼料', 'Zenith無穀羊肉糙米狗狗飼料', '2', 100, 990, 790, '#42604D', 'item[79]400x.webp', 'F', 'S002', 0, 0, 0, 0, '2020-04-01 23:22:20', '2020-07-01 23:22:20'),
(98, 'Gemon輕食狗罐頭', 'Gemon輕食狗罐頭', '3', 100, 730, 530, '#42605D', 'item[98]400x.webp', 'F', 'S002', 0, 0, 0, 0, '2020-04-04 23:22:20', '2020-07-01 23:22:20'),
(248, 'Gemon成狗專用牛肉罐頭', 'Gemon成狗專用牛肉罐頭', '3', 100, 650, 450, '#42606D', 'item[248]400x.webp', 'F', 'S002', 0, 0, 0, 0, '2020-06-06 23:22:20', '2020-07-01 23:22:20'),
(298, 'Joesie鴨肉梨子罐頭', 'Joesie鴨肉梨子罐頭', '3', 100, 400, 200, '#42602D', 'item[298]400x.webp', 'F', 'S002', 0, 0, 0, 0, '2020-07-02 23:22:20', '2020-07-01 23:22:20'),
(120, '澳洲BIG DOG生食肉餅｜一口咬-袋鼠肉 1300g (犬貓可食)', '澳洲BIG DOG生食肉餅｜一口咬-袋鼠肉 1300g (犬貓可食)', '4', 100, 850, 695, '#1B813E', 'item[120]400x.webp', 'F', 'S002', 0, 0, 0, 0, '2020-06-15 23:22:20', '2020-07-01 23:22:20'),
(121, 'T.N.A 悠遊-豚肉極鮮包-每日好活力210g', 'T.N.A 悠遊-豚肉極鮮包-每日好活力210g', '4', 100, 135, 135, '#1B813E', 'item[121]400x.webp', 'F', 'S002', 0, 0, 0, 0, '2020-07-01 23:22:20', '2020-07-01 23:22:20'),
(1, 'Nutram紐頓 - T22無穀挑嘴全齡貓(火雞+雞肉)', 'Nutram紐頓 - T22無穀挑嘴全齡貓(火雞+雞肉)', '5', 100, 1080, 880, '#90B44B', 'item[1]400x.jpg', 'F', 'S002', 0, 0, 0, 0, '2020-06-12 23:22:20', '2020-07-01 23:22:20'),
(2, '猋PURE30 挑嘴成貓(防結石化毛配方)', '猋PURE30 挑嘴成貓(防結石化毛配方)', '5', 100, 1080, 880, '#90B44B', 'item[2]400x.jpg', 'F', 'S002', 0, 0, 0, 0, '2020-06-11 23:22:20', '2020-07-01 23:22:20'),
(3, 'Gemon啟蒙-幼母貓(雞肉', 'Gemon啟蒙-幼母貓(雞肉', '5', 100, 650, 450, '#90B44B', 'item[3]400x.webp', 'F', 'S002', 0, 0, 0, 0, '2020-06-12 23:22:20', '2020-07-01 23:22:20'),
(4, 'Vitakraft 珀斯女王 德國之心 主食罐(火雞+胡蘿蔔+菠菜)85g', 'Vitakraft 珀斯女王 德國之心 主食罐(火雞+胡蘿蔔+菠菜)85g', '6', 100, 950, 750, '#90B44B', 'item[4]400x.webp', 'F', 'S002', 0, 0, 0, 0, '2020-06-13 23:22:20', '2020-07-01 23:22:20'),
(5, '萌好肝腎肝保健-冬蟲夏草複方膠囊30粒', '萌好肝腎肝保健-冬蟲夏草複方膠囊30粒', '10', 100, 850, 650, '#90B45B', 'item[5]400x.webp', 'F', 'S002', 0, 0, 0, 0, '2020-06-14 23:22:20', '2020-07-01 23:22:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`itemId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `itemId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;
