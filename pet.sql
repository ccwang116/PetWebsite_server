-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 04, 2020 at 04:40 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `pet_website_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pwd` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `pwd`, `name`, `created_at`, `updated_at`) VALUES
(1, 'test', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 'test', '2020-04-26 18:46:18', '2020-04-26 18:46:56');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryId` int(7) NOT NULL,
  `categoryName` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryParentId` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkUrl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '種類開關',
  `categoryType` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '種類類別',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryId`, `categoryName`, `categoryParentId`, `linkUrl`, `active`, `categoryType`, `created_at`, `updated_at`) VALUES
(1, '所有商品', '0', '/shop', 'open', '商城', '0000-00-00 00:00:00', '2020-06-10 00:31:49'),
(2, '狗飼料', '1', '/shop/dogfood', 'open', '商城', '0000-00-00 00:00:00', '2020-07-04 23:16:37'),
(3, '狗罐頭', '1', '/shop/dogcan', 'open', '商城', '0000-00-00 00:00:00', '2020-07-04 23:16:45'),
(4, '狗鮮食', '1', '/shop/dogwet', 'open', '商城', '0000-00-00 00:00:00', '2020-07-04 23:16:51'),
(5, '貓飼料', '3', '/shop/catfood', 'open', '商城', '0000-00-00 00:00:00', '2020-07-04 23:16:58'),
(6, '貓罐頭', '3', '/shop/catcan', 'open', '商城', '0000-00-00 00:00:00', '2020-07-04 23:17:03'),
(7, '貓鮮食', '4', '/shop/catwet', 'open', '商城', '0000-00-00 00:00:00', '2020-07-04 23:17:07'),
(8, '狗腎臟', '4', '/shop/dogkidney', 'open', '商城', '0000-00-00 00:00:00', '2020-07-04 23:17:16'),
(9, '狗腸胃', '8', '/shop/dogstomach', 'open', '商城', '0000-00-00 00:00:00', '2020-07-04 23:18:59'),
(10, '貓腎臟', '8', '/shop/catkidney', 'open', '商城', '0000-00-00 00:00:00', '2020-07-04 23:17:39'),
(11, '貓腸胃', '8', '/shop/catstomach', 'open', '商城', '0000-00-00 00:00:00', '2020-07-04 23:19:01');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `cid` int(11) NOT NULL,
  `id` bigint(255) NOT NULL,
  `username` varchar(250) NOT NULL,
  `text` varchar(400) NOT NULL,
  `edited` tinyint(1) NOT NULL DEFAULT '0',
  `completed` tinyint(1) NOT NULL,
  `heart` int(11) NOT NULL,
  `parentReply` int(11) DEFAULT NULL,
  `commentImg` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`cid`, `id`, `username`, `text`, `edited`, `completed`, `heart`, `parentReply`, `commentImg`) VALUES
(75, 1592984667450, 'M009', 'moo0', 0, 0, 0, NULL, 'cake3.jpg'),
(81, 1592989713978, 'M009', 'Moo9', 0, 0, 0, NULL, 'cake4.jpg'),
(88, 1593067671752, 'y', 'y', 0, 0, 0, NULL, '26655302_10215470872233026_1785318643_o.jpg'),
(89, 1593070108793, 'Liz', 'Liz', 0, 0, 0, NULL, '542286_10150850313567971_397710980_n.jpg'),
(90, 1593076006125, 'Liz', '很懷念大學時光呢', 0, 0, 0, NULL, '12933147_10154556563132971_2075652107715123146_n.jpg'),
(94, 1593077436805, 'M009', '來呦～', 0, 0, 0, NULL, '26655500_10215470872353029_100143801_o.jpg'),
(95, 1593084137093, 'Liz', 'jjj', 0, 1, -1, NULL, 'IMG_6905.JPG'),
(96, 1593085098900, 'M009', 'ＨＩ', 0, 0, -2, NULL, 'IMG_6908.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseId` int(10) NOT NULL,
  `courseName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courseDesc` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courseCategoryId` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discountId` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coursePrice` int(100) NOT NULL,
  `courseImg` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courseImg2` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coursePeriod` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courseLocation` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courseTeacherId` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orderId` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userId` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `shipperId` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `courseRoll` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itemId` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `courseQty` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseId`, `courseName`, `courseDesc`, `courseCategoryId`, `discountId`, `coursePrice`, `courseImg`, `courseImg2`, `coursePeriod`, `courseLocation`, `courseTeacherId`, `orderId`, `userId`, `created_at`, `updated_at`, `shipperId`, `courseRoll`, `itemId`, `courseQty`) VALUES
(1, '抹茶茶道課', '茶道的本質，是從平凡生活中去感悟人生的哲理。而禪提倡「平常心是道」，於生活點滴中領悟宇宙規律，正與茶道相呼應。\r\n', '31', '0', 850, 'CS001-1.jpg', 'CS001-2.jpg', '2020-06-03', 'NTP', 'T001', '0', '2020-05-09', '2020-04-23 20:43:02', '2020-06-14 15:05:35', '0', '0', '0', 17),
(2, '抹茶磅蛋糕手作', '日本甜點名廚蒞臨!!一次學會最流行ins風抹茶磅蛋糕?五大經典元素?', '27', '0', 400, 'CS002-1.jpg', 'CS002-2.jpg', '2020-05-11', 'TPE', 'T002', '0', '2020-05-16', '2020-04-23 20:43:02', '2020-06-12 09:23:04', '0', '0', '0', 20),
(3, '抹茶毛巾卷', '療癒系的髒髒毛巾捲，遇上日式抹茶醬，搭配充滿濃濃香氣的千層，口感豐富滑順濃郁可口', '27', '0', 500, 'CS003-1.jpg', 'CS003-2.jpg', '2020-05-03', 'TPE', 'T002', '0', '2020-05-23', '2020-04-23 20:43:02', '2020-06-12 09:22:58', '0', '0', '0', 10),
(4, '情人節限定-抹茶巧克力手作', '巧克力基礎的調溫/免調溫差異介紹與調溫方式,小班制教學，零基礎學習一樣沒問題', '30', '0', 250, 'CS004-1.jpg', 'CS004-2.jpg', '2020-07-01', 'TPE', 'T002', '0', '2020-06-30', '2020-04-23 20:43:02', '2020-06-12 09:22:52', '0', '0', '0', 20),
(5, '端午限定-抹茶冰心粽', '嚴選日本抹茶粉、冰心麻糬皮、無添加低澱粉製作、讓你毫無負擔擁有滿滿的端午節氣氛', '30', '0', 350, 'CS005-1.jpg', 'CS005-2.jpg', '2020-06-10', 'TPE', 'T003', '0', '2020-05-10', '2020-04-23 20:43:02', '2020-06-12 09:22:46', '0', '0', '0', 20),
(6, '中秋限定-抹茶月餅手作', '抹茶控請一定要入座，抹茶最怕烘烤後跑色，只要手法對，顏色依然豔麗！日本抹茶粉帶入抹茶生乳內餡中，', '30', '0', 350, 'CS006-1.jpg', 'CS006-2.jpg', '2020-09-22', 'NTP', 'T003', '0', '2020-08-30', '2020-04-23 20:43:02', '2020-06-12 09:22:40', '0', '0', '0', 25),
(7, '冬至限定-抹茶湯圓親子手作課', '親子周末首推! 歡迎大朋友小朋友一同感受冬至氛圍', '30', '0', 250, 'CS007-1.jpg', 'CS007-2.jpg', '2020-12-06', 'NTP', 'T003', '0', '2020-12-06', '2020-04-23 20:43:02', '2020-06-12 09:22:34', '0', '0', '0', 50),
(8, 'VIP限定！新品體驗課程', '與知名抹茶主廚合作，專屬於手摘會員搶先體驗！', '31', '0', 0, 'CS008-1.jpg', 'CS008-2.jpg', '2020-05-21', 'TPE', 'T002', '0', '2020-11-17', '2020-04-23 20:43:02', '2020-06-12 09:22:28', '0', '0', '0', 10),
(9, '抹茶色穿搭', '學習抹茶色穿搭技巧：挑選適合的衣服，再融入顯瘦穿搭、約會穿搭及韓系穿搭', '28', '0', 500, 'CS009-1.jpg', 'CS009-2.jpg', '2020-08-15', 'TPE', 'T001', '0', '2020-05-03', '2020-04-23 20:43:02', '2020-06-12 09:22:21', '0', '0', '0', 20),
(10, '防疫限定!抹茶口罩套教學', '疫情蔓延醫療口罩成為相當珍貴的物資，可防止個人口沫直接弄髒醫療口罩，可稍加延長珍貴的口罩壽命', '32', '0', 250, 'CS010-1.jpg', 'CS010-2.jpg', '2020-09-25', 'NTP', 'T001', '0', '2020-05-04', '2020-04-23 20:43:02', '2020-06-12 09:22:15', '0', '0', '0', 40),
(11, 'VIP限定！新品體驗課程', '與知名抹茶主廚合作，專屬於手摘會員搶先體驗！', '31', '0', 0, 'CS011-1.jpg', 'CS011-2.jpg', '2020-10-03', 'TPE', 'T001', '0', '2020-10-14', '2020-04-23 20:43:02', '2020-06-12 09:22:09', '0', '0', '0', 10),
(12, '抹茶山登山活動', '在這登山系列課程中，我們大膽嘗試把所有課程安排到戶外教學，讓夥伴們在享受自然環境的同時，又可以學到登山技巧', '29', '0', 300, 'CS012-1.jpg', 'CS012-2.jpg', '2020-09-20', 'ILA', 'T004', '0', '2020-07-10', '2020-04-23 20:43:02', '2020-06-12 09:22:02', '0', '0', '0', 20),
(13, '抹茶主題露營', '想來一場與大自然為伍的旅行嗎？那一起入住大自然，來體驗最純粹的露營體驗之旅，夢幻露營一泊三食搭配職人體驗，感受入住大自然的美好', '29', '0', 900, 'CS013-1.jpg', 'CS013-2.jpg', '2020-08-10', 'ZMI', 'T004', '0', '2020-06-01', '2020-04-23 20:43:02', '2020-06-12 09:21:54', '0', '0', '0', 20),
(14, '防疫限定！抹茶香皂DIY', '防疫限定!!親子手工皂DIY，讓您與孩子一起學習、共同創作美的事物', '32', '0', 500, 'CS014-1.jpg', 'CS014-2.jpg', '2020-06-11', 'NTP', 'T001', '0', '2020-05-11', '2020-04-23 20:43:02', '2020-06-14 19:33:56', '0', '0', '0', 50),
(15, '防疫限定！抹茶營養學', '抹茶營養學課程，教你正確的營養學觀念，兒茶素被認為有抗癌和預防心臟病、糖尿病效果。', '32', '0', 500, 'CS015-1.jpg', 'CS015-2.jpg', '2020-07-07', 'TPE', 'T005', '0', '2020-04-22', '2020-04-23 20:43:02', '2020-06-12 09:21:35', '0', '0', '0', 50),
(16, '抹茶居家佈置', '打造清爽空間讓居家布置，透過對家飾家俱認識與各式軟材搭配，呈現居家空間氛圍。', '29', '0', 5000, 'CS016-1.jpg', 'CS016-2.jpg', '2020-07-20', 'TPE', 'T006', '0', '2020-07-01', '2020-04-23 20:43:02', '2020-06-12 09:20:48', '0', '0', '0', 50);

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
(1, 'Nutram紐頓 - T22無穀挑嘴全齡貓(火雞+雞肉)', 'Nutram紐頓 - T22無穀挑嘴全齡', '5', 100, 1080, 880, '#90B44B', 'item[1]400x.jpeg', 'F', 'S002', 0, 0, 0, 0, '2020-06-12 23:22:20', '2020-07-05 00:37:54'),
(2, '猋PURE30 挑嘴成貓(防結石化毛配方)', '猋PURE30 挑嘴成貓(防結石化毛配方', '5', 100, 1080, 880, '#90B44B', 'item[2]400x.jpeg', 'F', 'S002', 0, 0, 0, 0, '2020-06-11 23:22:20', '2020-07-05 00:37:58'),
(3, 'Gemon啟蒙-幼母貓(雞肉', 'Gemon啟蒙-幼母貓(雞肉', '5', 100, 650, 450, '#90B44B', 'item[3]400x.webp', 'F', 'S002', 0, 0, 0, 0, '2020-06-12 23:22:20', '2020-07-01 23:22:20'),
(4, 'Vitakraft 珀斯女王 德國之心 主食罐(火雞+胡蘿蔔+菠菜)85g', 'Vitakraft 珀斯女王 德國之心 ', '6', 100, 950, 750, '#90B44B', 'item[4]400x.webp', 'F', 'S002', 0, 0, 0, 0, '2020-06-13 23:22:20', '2020-07-01 23:22:20'),
(5, '萌好肝腎肝保健-冬蟲夏草複方膠囊30粒', '萌好肝腎肝保健-冬蟲夏草複方膠囊30粒', '10', 100, 850, 650, '#90B45B', 'item[5]400x.webp', 'F', 'S002', 0, 0, 0, 0, '2020-06-14 23:22:20', '2020-07-01 23:22:20'),
(11, '潔牙一番', '潔牙一番', '2', 100, 850, 650, '#90B44B', 'item[11]400x.webp', 'F', 'S002', 0, 0, 0, 0, '2020-07-02 23:22:20', '2020-07-01 23:22:20'),
(16, '潔牙一番-草本', '潔牙一番-草本', '2', 100, 1050, 850, '#42602D', 'item[16]400x.webp', 'F', 'S002', 0, 0, 0, 0, '2020-06-01 23:22:20', '2020-07-01 23:22:20'),
(57, 'Joesie火雞罐頭', 'Joesie火雞罐頭', '3', 100, 650, 450, '#42602D', 'item[57]400x.webp', 'F', 'S002', 0, 0, 0, 0, '2020-05-01 23:22:20', '2020-07-01 23:22:20'),
(78, 'IVORY COAT 羊肉狗狗飼料', 'IVORY COAT 羊肉狗狗飼料', '2', 100, 650, 450, '#42603D', 'item[78]400x.webp', 'F', 'S002', 0, 0, 0, 0, '2020-01-01 23:22:20', '2020-07-01 23:22:20'),
(79, 'Zenith無穀羊肉糙米狗狗飼料', 'Zenith無穀羊肉糙米狗狗飼料', '2', 100, 990, 790, '#42604D', 'item[79]400x.webp', 'F', 'S002', 0, 0, 0, 0, '2020-04-01 23:22:20', '2020-07-01 23:22:20'),
(98, 'Gemon輕食狗罐頭', 'Gemon輕食狗罐頭', '3', 100, 730, 530, '#42605D', 'item[98]400x.webp', 'F', 'S002', 0, 0, 0, 0, '2020-04-04 23:22:20', '2020-07-01 23:22:20'),
(120, '澳洲BIG DOG生食肉餅｜一口咬-袋鼠肉 1300g (犬貓可食)', '澳洲BIG DOG生食肉餅｜一口咬-袋鼠', '4', 100, 850, 695, '#1B813E', 'item[120]400x.webp', 'F', 'S002', 0, 0, 0, 0, '2020-06-15 23:22:20', '2020-07-01 23:22:20'),
(121, 'T.N.A 悠遊-豚肉極鮮包-每日好活力210g', 'T.N.A 悠遊-豚肉極鮮包-每日好活力', '4', 100, 135, 135, '#1B813E', 'item[121]400x.webp', 'F', 'S002', 0, 0, 0, 0, '2020-07-01 23:22:20', '2020-07-01 23:22:20'),
(248, 'Gemon成狗專用牛肉罐頭', 'Gemon成狗專用牛肉罐頭', '3', 100, 650, 450, '#42606D', 'item[248]400x.webp', 'F', 'S002', 0, 0, 0, 0, '2020-06-06 23:22:20', '2020-07-01 23:22:20'),
(298, 'Joesie鴨肉梨子罐頭', 'Joesie鴨肉梨子罐頭', '3', 100, 400, 200, '#42602D', 'item[298]400x.webp', 'F', 'S002', 0, 0, 0, 0, '2020-07-02 23:22:20', '2020-07-01 23:22:20'),
(299, 'Nutram紐頓 - T22無穀挑嘴全齡貓(火雞+雞肉)', 'Nutram紐頓 - T22無穀挑嘴全齡', '1', 100, 1080, 880, '#90B44B', 'item[1]400x.jpeg', 'F', 'S002', 0, 0, 0, 0, '2020-06-12 23:22:20', '2020-07-05 00:38:09'),
(300, '猋PURE30 挑嘴成貓(防結石化毛配方)', '猋PURE30 挑嘴成貓(防結石化毛配方', '1', 100, 1080, 880, '#90B44B', 'item[2]400x.jpeg', 'F', 'S002', 0, 0, 0, 0, '2020-06-11 23:22:20', '2020-07-05 00:38:15'),
(301, 'Gemon啟蒙-幼母貓(雞肉', 'Gemon啟蒙-幼母貓(雞肉', '1', 100, 650, 450, '#90B44B', 'item[3]400x.webp', 'F', 'S002', 0, 0, 0, 0, '2020-06-12 23:22:20', '2020-07-01 23:22:20'),
(302, 'Vitakraft 珀斯女王 德國之心 主食罐(火雞+胡蘿蔔+菠菜)85g', 'Vitakraft 珀斯女王 德國之心 ', '1', 100, 950, 750, '#90B44B', 'item[4]400x.webp', 'F', 'S002', 0, 0, 0, 0, '2020-06-13 23:22:20', '2020-07-01 23:22:20');

-- --------------------------------------------------------

--
-- Table structure for table `item_tracking`
--

CREATE TABLE `item_tracking` (
  `id` int(11) NOT NULL COMMENT '流水號',
  `username` varchar(50) NOT NULL COMMENT '使用者帳號',
  `itemId` int(11) NOT NULL COMMENT '商品編號',
  `itemPrice` int(5) NOT NULL COMMENT '商品價錢',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增時間',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_tracking`
--

INSERT INTO `item_tracking` (`id`, `username`, `itemId`, `itemPrice`, `created_at`, `updated_at`) VALUES
(80, '施Alice', 88, 650, '2020-06-19 20:07:23', '2020-06-19 20:07:23'),
(81, '施Alice', 3, 650, '2020-06-19 20:11:31', '2020-06-19 20:11:31'),
(82, '施Alice', 4, 850, '2020-06-19 20:11:33', '2020-06-19 20:11:33'),
(93, '施Alice', 3, 650, '2020-06-22 00:08:20', '2020-06-22 00:08:20'),
(94, '施Alice', 3, 650, '2020-06-22 00:11:29', '2020-06-22 00:11:29');

-- --------------------------------------------------------

--
-- Table structure for table `marketing`
--

CREATE TABLE `marketing` (
  `id` int(7) NOT NULL,
  `discountID` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discountName` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discountPeriod` varchar(22) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discountAllowed` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discountMethod` decimal(65,2) DEFAULT NULL,
  `courseID` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categoryType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marketing`
--

INSERT INTO `marketing` (`id`, `discountID`, `discountName`, `discountPeriod`, `discountAllowed`, `discountMethod`, `courseID`, `categoryType`, `created_at`, `updated_at`) VALUES
(1, 'D001', '手摘(等級提升)', '永久', 'open', '0.60', '', '通用', '2020-04-25 20:49:23', '2020-06-19 03:53:49'),
(3, 'D003', '手摘random', 'null', 'open', '0.90', '', '通用', '2020-04-25 20:49:23', '2020-06-18 23:40:20'),
(4, 'D004', '一番茶', '永久', 'open', '0.95', '', '通用', '2020-04-25 20:49:23', '2020-06-18 23:40:24'),
(5, 'D005', '一番茶生日禮', '30days', 'open', '0.75', '', '通用', '2020-04-25 20:49:23', '2020-06-19 03:53:56'),
(6, 'D006', '二番茶新手禮', '永久', 'open', '0.75', '', '通用', '2020-04-25 20:49:23', '2020-06-19 03:53:43'),
(7, 'D307', '課程滿十送一(限同課程）', '永久', 'open', '0.90', '', '課程', '2020-04-25 20:49:23', '2020-06-18 23:40:39'),
(8, 'D308', '課程體驗卷', '永久', 'open', '0.00', '', '課程', '2020-04-25 20:49:23', '2020-06-18 23:40:45'),
(10, 'D310', '即期品', '10days', 'open', '0.50', '', '商城', '2020-04-25 20:49:23', '2020-06-18 23:40:52'),
(11, 'D311', '早鳥', '60days ago & in 10days', 'open', '0.60', '', '通用', '2020-04-25 20:49:23', '2020-06-19 03:54:07');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL COMMENT '流水號',
  `memberId` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `memberName` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentAddress` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentCity` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentDistrict` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentZip` int(3) DEFAULT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pwd` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentChoice` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipAddress` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rollDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `memberImg` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增時間',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='學生資料表';

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `memberId`, `memberName`, `class`, `paymentAddress`, `paymentCity`, `paymentDistrict`, `paymentZip`, `phone`, `email`, `pwd`, `paymentChoice`, `shipAddress`, `rollDate`, `memberImg`, `created_at`, `updated_at`) VALUES
(2, 'M001', '陳希', '手摘', '信義路', '南投縣', '埔里鎮', 106, '0912345677', 'jerrychenci26@gmail.com', '84a516841ba77a5b4648de2cd0dfcb30ea46dbb4', 'visa', '博愛路7號', '2019-12-06 00:37:09', '20200503093847.jpg', '2019-12-06 00:37:09', '2020-06-25 02:50:59'),
(3, 'M002', '王cat', '二番茶', '仁愛路', '基隆市', '中正區', 300, '0988777007', 'cat@gmail.com', 'ba941af50771089cc1e79d548d56653b70a90d5e', 'master', '仁愛路3段20巷4號2F', '2019-12-06 00:37:09', '1592233666144.png', '2019-12-08 21:33:36', '2020-06-20 15:35:22'),
(7, 'M003', '施Alice', '手摘', '保安路', '新北市', '永和區', 234, '0955444666', '000@gmail.com', '8aefb06c426e07a0a671a1e2488b4858d694a730', 'visa', '保安路8段34號', '2019-12-06 00:37:09', '20200503094045.jpg', '2019-12-08 22:02:24', '2020-06-20 09:47:30'),
(8, 'M004', '陳愛', '一番茶', '秀朗路', '新北市', '永和區', 234, '0933555555', '0000@gmail.com', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'jbc', '秀朗路227巷59號', '2019-12-06 00:37:09', '20200503094058.jpg', '2019-12-08 22:02:57', '2020-06-20 09:48:01'),
(9, 'M005', '吳Dan', '二番茶', '成功路', '新北市', '三峽區', 235, '0987878787', '00000@gmail.com', '6934105ad50010b814c933314b1da6841431bc8b', 'visa', '成功路89巷4-2號', '2019-12-06 00:37:09', '20200503094143.jpg', '2019-12-08 22:03:48', '2020-06-20 09:48:31'),
(18, 'M006', '白琳達', '一番茶', '基隆路', '基隆市', '信義區', 444, '0944666777', 'jouyingpai@hotmail.com', '32b3491336522e073489725b5daf298cd749007a', 'jbc', '德明路德芳街36號', '2019-12-06 00:37:09', '20200503093909.jpg', '2019-12-10 18:41:50', '2020-06-25 02:59:37'),
(19, 'M007', '沈湯瑪', '手摘', '中正路', '屏東市', '潮州鎮', 548, '0957575757', 'baccano1622@gmail.com', '5f50a84c1fa3bcff146405017f36aec1a10a9e38', 'master', '南港路大尾巷99段1號', '2019-12-06 00:37:09', '20200503093920.jpg', '2020-04-22 14:00:56', '2020-06-25 03:08:45'),
(20, 'M008', '賈荔枝', '二番茶', '興南路', '南投縣', '埔里鎮', 148, '0966666666', 'midory0cc@gmail.com', 'acbe9eefed1b5c30f6a12777bf7fe46911b40d2c', '第三方支付', '中正路三段77巷2號', '2019-12-06 00:37:09', '20200503093932.jpg', '2020-04-22 14:06:05', '2020-06-25 03:08:02'),
(21, 'M009', '蔡肯尼', '二番茶', '北新路', '高雄市', '鳳山區', 0, '0977777777', 'kennyk3721@gmail.com', '1bb8649a5ca2388333c2c19ae84b380b9c8efe0a', '貨到付款', '大安路57號', '2019-12-06 00:37:09', '20200503093952.jpg', '2020-04-27 14:02:47', '2020-06-25 02:54:20'),
(23, 'M010', '陳辛蒂', '手摘', '和平東路', '南投縣', '埔里鎮', 878, '0987778788', '0126cloud@gmail.com', '08419f95f54ba7772a69a52ce1114111bf996b10', '貨到付款', '大有路一段93號', '2020-04-29 00:00:00', '1593015497494.jpg', '2020-04-29 12:11:57', '2020-06-25 00:18:20'),
(30, 'M011', '王咪子', '手摘', '仁愛路', '台北市', '大安區', 106, '0988555666', 'i22062@hotmail.com', 'cd3844fd77c2354d6700e309ce29b25ab102b0e4', '', '大安路57號', '2020-05-01 12:07:10', '20200503094015.jpg', '2020-05-01 12:07:10', '2020-06-25 03:09:01'),
(31, 'M012', 'tom', '', '', '', NULL, 0, '', '000@gmail.com', 'f6bb3d35d4da6ba775c281fcb602de5bc431451a', '', '', '2020-05-03 19:35:34', '20200506105341.jpg', '2020-05-03 19:35:34', '2020-06-17 04:57:52');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderId` int(5) NOT NULL COMMENT '訂單編號',
  `orderNumber` bigint(255) NOT NULL,
  `memberId` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '收件人名稱',
  `orderPhone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipCity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipDistrict` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipAddress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '訂購日期',
  `shipStatus` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '物流狀態',
  `paymentMethod` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentStatus` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '付款狀態',
  `paymentDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '付款日期',
  `shiptotalMoney` int(255) DEFAULT NULL COMMENT '運費',
  `shopDiscount` int(255) DEFAULT NULL COMMENT '折扣金額',
  `totalPrice` int(10) NOT NULL COMMENT '總價',
  `note` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderId`, `orderNumber`, `memberId`, `ship_name`, `orderPhone`, `shipCity`, `shipDistrict`, `shipAddress`, `created_at`, `shipStatus`, `paymentMethod`, `paymentStatus`, `paymentDate`, `shiptotalMoney`, `shopDiscount`, `totalPrice`, `note`, `updated_at`) VALUES
(141, 1593023214892, 'M010', '陳辛蒂', '0987778788', '南投縣', '埔里鎮', '大有路一段93號', '2020-06-25 10:26:54', '未出貨', 'ATM轉帳', '未付款', '2020-06-25 02:26:54', 0, 1700, 2550, '', '2020-06-25 02:26:54'),
(142, 1593023478763, 'M010', '陳辛蒂', '0987778788', '南投縣', '埔里鎮', '大有路一段93號', '2020-06-25 10:31:18', '未出貨', '貨到付款', '未付款', '2020-06-25 02:31:18', 0, 680, 2720, '', '2020-06-25 02:31:18'),
(143, 1593023619814, 'M010', '陳辛蒂', '0987778788', '南投縣', '埔里鎮', '大有路一段93號', '2020-06-25 10:33:39', '未出貨', 'ATM轉帳', '未付款', '2020-06-25 02:33:39', 0, 0, 3400, '', '2020-06-25 02:33:39'),
(144, 1593024203014, 'M010', '陳辛蒂', '0987778788', '南投縣', '埔里鎮', '大有路一段93號', '2020-06-25 10:43:23', '未出貨', '信用卡', '已付款', '2020-06-25 02:43:23', 0, 1020, 3230, '', '2020-06-25 02:43:23'),
(145, 1593024746742, 'M001', '陳希', '0912345677', '南投縣', '埔里鎮', '博愛路7號', '2020-06-25 10:52:26', '未出貨', 'ATM轉帳', '未付款', '2020-06-25 02:52:26', 0, 255, 3995, '', '2020-06-25 02:52:26'),
(146, 1593024982738, 'M009', '蔡肯尼', '0977777777', '高雄市', '鳳山區', '大安路57號', '2020-06-25 10:56:22', '未出貨', '貨到付款', '未付款', '2020-06-25 02:56:22', 0, 0, 1700, '', '2020-06-25 02:56:22'),
(147, 1593025242697, 'M006', '白琳達', '0944666777', '基隆市', '信義區', '德明路德芳街36號', '2020-06-25 11:00:42', '未出貨', 'ATM轉帳', '未付款', '2020-06-25 03:00:42', 0, 0, 2550, '', '2020-06-25 03:00:42'),
(148, 1593025828837, 'M007', '沈湯瑪', '0957575757', '屏東市', '潮州鎮', '南港路大尾巷99段1號', '2020-06-25 11:10:28', '未出貨', '貨到付款', '未付款', '2020-06-25 03:10:28', 0, 0, 2550, '', '2020-06-25 03:10:28'),
(149, 1593025935330, 'M008', '賈荔枝', '0966666666', '南投縣', '埔里鎮', '中正路三段77巷2號', '2020-06-25 11:12:15', '未出貨', 'LinePay', '未付款', '2020-06-25 03:12:15', 0, 0, 2550, '', '2020-06-25 03:12:15'),
(150, 1593026037475, 'M011', '王咪子', '0988555666', '台北市', '大安區', '大安路57號', '2020-06-25 11:13:57', '未出貨', '貨到付款', '未付款', '2020-06-25 03:13:57', 0, 0, 2550, '', '2020-06-25 03:13:57'),
(151, 1593030815717, 'M010', '陳辛蒂', '0987778788', '南投縣', '埔里鎮', '大有路一段93號', '2020-06-25 12:33:35', '未出貨', 'LinePay', '未付款', '2020-06-25 04:33:35', 0, 0, 2550, '', '2020-06-25 04:33:35'),
(152, 1593086617086, 'M010', '陳辛蒂', '0987778788', '南投縣', '埔里鎮', '大有路一段93號', '2020-06-26 04:03:37', '未出貨', '信用卡', '未付款', '2020-06-25 20:03:37', 250, 1004, 1506, '', '2020-06-25 20:03:37'),
(153, 1593086980913, 'M010', '陳辛蒂', '0987778788', '南投縣', '埔里鎮', '大有路一段93號', '2020-06-26 04:09:40', '未出貨', '信用卡', '已付款', '2020-06-25 20:09:40', 100, 0, 1600, '', '2020-06-25 20:09:40'),
(154, 1593087744506, 'M010', '陳辛蒂', '0987778788', '南投縣', '埔里鎮', '大有路一段93號', '2020-06-26 04:22:24', '未出貨', 'ATM轉帳', '未付款', '2020-06-25 20:22:24', 100, 0, 750, '', '2020-06-25 20:22:24'),
(155, 1593344442047, 'M010', '陳辛蒂', '0987778788', '南投縣', '埔里鎮', '大有路一段93號', '2020-06-29 03:40:42', '未出貨', 'ATM轉帳', '未付款', '2020-06-28 19:40:42', 0, 0, 2150, '', '2020-06-28 19:40:42');

-- --------------------------------------------------------

--
-- Table structure for table `order_lists`
--

CREATE TABLE `order_lists` (
  `orderListId` int(10) NOT NULL COMMENT '明細編碼',
  `orderId` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '訂單編碼',
  `itemId` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品編碼',
  `itemName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courseId` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '課程編碼',
  `courseName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkPrice` int(10) NOT NULL COMMENT '單品價格',
  `checkQuantity` int(3) NOT NULL COMMENT '單品數量',
  `checkSubtotal` int(10) NOT NULL COMMENT '單品總價',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '新增時間',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_lists`
--

INSERT INTO `order_lists` (`orderListId`, `orderId`, `itemId`, `itemName`, `courseId`, `courseName`, `checkPrice`, `checkQuantity`, `checkSubtotal`, `created_at`, `updated_at`) VALUES
(243, '141', '4', '補丁感羔羊毛外套', '', '', 850, 3, 2550, '2020-06-25 02:26:54', '2020-06-25 02:26:54'),
(244, '141', '', '', '1', '抹茶茶道課', 850, 2, 1700, '2020-06-25 02:26:54', '2020-06-25 02:26:54'),
(245, '142', '4', '補丁感羔羊毛外套', '', '', 850, 2, 1700, '2020-06-25 02:31:18', '2020-06-25 02:31:18'),
(246, '142', '', '', '1', '抹茶茶道課', 850, 2, 1700, '2020-06-25 02:31:18', '2020-06-25 02:31:18'),
(247, '143', '4', '補丁感羔羊毛外套', '', '', 850, 2, 1700, '2020-06-25 02:33:39', '2020-06-25 02:33:39'),
(248, '143', '', '', '1', '抹茶茶道課', 850, 2, 1700, '2020-06-25 02:33:39', '2020-06-25 02:33:39'),
(249, '144', '4', '補丁感羔羊毛外套', '', '', 850, 2, 1700, '2020-06-25 02:43:23', '2020-06-25 02:43:23'),
(250, '144', '', '', '1', '抹茶茶道課', 850, 3, 2550, '2020-06-25 02:43:23', '2020-06-25 02:43:23'),
(251, '145', '4', '補丁感羔羊毛外套', '', '', 850, 2, 1700, '2020-06-25 02:52:26', '2020-06-25 02:52:26'),
(252, '145', '', '', '1', '抹茶茶道課', 850, 3, 2550, '2020-06-25 02:52:26', '2020-06-25 02:52:26'),
(253, '146', '4', '補丁感羔羊毛外套', '', '', 850, 1, 850, '2020-06-25 02:56:22', '2020-06-25 02:56:22'),
(254, '146', '', '', '1', '抹茶茶道課', 850, 1, 850, '2020-06-25 02:56:22', '2020-06-25 02:56:22'),
(255, '147', '4', '補丁感羔羊毛外套', '', '', 850, 1, 850, '2020-06-25 03:00:42', '2020-06-25 03:00:42'),
(256, '147', '', '', '1', '抹茶茶道課', 850, 2, 1700, '2020-06-25 03:00:42', '2020-06-25 03:00:42'),
(257, '148', '4', '補丁感羔羊毛外套', '', '', 850, 1, 850, '2020-06-25 03:10:28', '2020-06-25 03:10:28'),
(258, '148', '', '', '1', '抹茶茶道課', 850, 2, 1700, '2020-06-25 03:10:28', '2020-06-25 03:10:28'),
(259, '149', '4', '補丁感羔羊毛外套', '', '', 850, 1, 850, '2020-06-25 03:12:15', '2020-06-25 03:12:15'),
(260, '149', '', '', '1', '抹茶茶道課', 850, 2, 1700, '2020-06-25 03:12:15', '2020-06-25 03:12:15'),
(261, '150', '4', '補丁感羔羊毛外套', '', '', 850, 1, 850, '2020-06-25 03:13:57', '2020-06-25 03:13:57'),
(262, '150', '', '', '1', '抹茶茶道課', 850, 2, 1700, '2020-06-25 03:13:57', '2020-06-25 03:13:57'),
(263, '151', '4', '補丁感羔羊毛外套', '', '', 850, 1, 850, '2020-06-25 04:33:35', '2020-06-25 04:33:35'),
(264, '151', '', '', '1', '抹茶茶道課', 850, 2, 1700, '2020-06-25 04:33:35', '2020-06-25 04:33:35'),
(265, '152', '3', '立領排釦外套', '', '', 650, 1, 650, '2020-06-25 20:03:37', '2020-06-25 20:03:37'),
(266, '152', '101', '冰抹茶', '', '', 130, 2, 260, '2020-06-25 20:03:37', '2020-06-25 20:03:37'),
(267, '152', '', '', '1', '抹茶茶道課', 850, 1, 850, '2020-06-25 20:03:37', '2020-06-25 20:03:37'),
(268, '152', '', '', '3', '抹茶毛巾卷', 500, 1, 500, '2020-06-25 20:03:37', '2020-06-25 20:03:37'),
(269, '153', '3', '立領排釦外套', '', '', 650, 1, 650, '2020-06-25 20:09:40', '2020-06-25 20:09:40'),
(270, '153', '', '', '1', '抹茶茶道課', 850, 1, 850, '2020-06-25 20:09:40', '2020-06-25 20:09:40'),
(271, '154', '3', '立領排釦外套', '', '', 650, 1, 650, '2020-06-25 20:22:24', '2020-06-25 20:22:24'),
(272, '155', '3', '立領排釦外套', '', '', 650, 2, 1300, '2020-06-28 19:40:42', '2020-06-28 19:40:42'),
(273, '155', '', '', '1', '抹茶茶道課', 850, 1, 850, '2020-06-28 19:40:42', '2020-06-28 19:40:42');

-- --------------------------------------------------------

--
-- Table structure for table `order_payment`
--

CREATE TABLE `order_payment` (
  `orderPaymentId` int(7) NOT NULL,
  `orderId` int(7) NOT NULL,
  `orderPaymentName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orderPaymentCard` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `closingDate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cvv` int(3) NOT NULL,
  `checkAddress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_payment`
--

INSERT INTO `order_payment` (`orderPaymentId`, `orderId`, `orderPaymentName`, `orderPaymentCard`, `closingDate`, `cvv`, `checkAddress`, `created_at`, `updated_at`) VALUES
(92, 144, '陳辛蒂', '0000-0000-0000-0000', '00/00', 888, '新竹市仁愛路四段', '2020-06-25 02:43:23', '2020-06-25 02:43:23'),
(93, 152, '陳欣誼', '0000-0000-0000-0000', '00/00', 0, '777777777777777777', '2020-06-25 20:03:37', '2020-06-25 20:03:37'),
(94, 153, '陳欣誼', '0000-0000-0000-0000', '99/99', 888, '777777777777777777', '2020-06-25 20:09:40', '2020-06-25 20:09:40');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentId` int(11) NOT NULL COMMENT '流水號',
  `paymentMethod` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '付款方式',
  `paymentAllowed` enum('開','關') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '開' COMMENT '允許狀態',
  `paymentTypeImg` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '付款類型圖',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentId`, `paymentMethod`, `paymentAllowed`, `paymentTypeImg`, `created_at`, `updated_at`) VALUES
(1, 'LINE PAY', '開', 'payment_type_20200413102736.png', '2020-04-23 21:55:41', '2020-05-01 12:32:30'),
(2, 'ATM轉帳', '開', 'payment_202004232153.jpg', '2020-04-23 21:55:41', '2020-04-28 23:09:39'),
(3, 'GOOGLE PAY', '開', 'payment_type_20191214200017.png', '2020-04-23 21:55:41', '2020-04-28 23:09:39'),
(4, 'SAMSUNG PAY', '開', 'payment_type_20191214195955.png', '2020-04-23 21:55:41', '2020-04-29 14:07:49'),
(5, '貨到付款', '開', 'payment_202004232147.png', '2020-04-23 21:55:41', '2020-05-06 12:14:01');

-- --------------------------------------------------------

--
-- Table structure for table `rel_coupon_member`
--

CREATE TABLE `rel_coupon_member` (
  `rel_coupon_member_id` int(100) NOT NULL COMMENT '流水號',
  `memberId` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `discountID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `use_times` int(20) NOT NULL DEFAULT '0',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rel_coupon_member`
--

INSERT INTO `rel_coupon_member` (`rel_coupon_member_id`, `memberId`, `discountID`, `use_times`, `updated_at`, `created_at`) VALUES
(1, 'M002', 'D307', 11, '2020-06-21 01:08:58', '2020-06-15 23:20:44'),
(2, 'M003', 'D307', 0, '2020-06-15 23:20:44', '2020-06-15 23:20:44'),
(3, 'M005', 'D311', 0, '2020-06-15 23:23:56', '2020-06-15 23:20:44'),
(4, 'M007', 'D100', 0, '2020-06-15 23:20:44', '2020-06-15 23:20:44'),
(5, 'M021', 'D311', 0, '2020-06-15 23:23:59', '2020-06-15 23:20:44'),
(6, 'M001', 'D003', 25, '2020-06-25 04:33:35', '2020-06-15 23:20:44'),
(7, 'M002', 'D004', 9, '2020-06-21 01:08:58', '2020-06-15 23:20:44'),
(8, 'M003', 'D006', 0, '2020-06-15 23:24:16', '2020-06-15 23:20:44'),
(9, 'M001', 'D311', 19, '2020-06-25 02:10:19', '2020-06-15 23:20:44'),
(10, 'M002', 'D100', 0, '2020-06-15 23:20:44', '2020-06-15 23:20:44'),
(11, 'M003', 'D311', 0, '2020-06-15 23:24:06', '2020-06-15 23:20:44'),
(12, 'M033', 'D003', 0, '2020-06-15 23:20:44', '2020-06-15 23:20:44'),
(13, 'M010', 'D311', 22, '2020-06-25 20:03:37', '2020-06-25 00:14:30'),
(14, 'M010', 'D004', 0, '2020-06-27 22:37:03', '2020-06-25 00:14:37'),
(15, 'M006', 'D004', 0, '2020-06-27 22:37:06', '2020-06-25 00:14:37'),
(16, 'M007', 'D004', 0, '2020-06-27 22:37:09', '2020-06-25 00:14:37'),
(17, 'M008', 'D004', 0, '2020-06-27 22:37:12', '2020-06-25 00:14:37'),
(18, 'M009', 'D004', 0, '2020-06-27 22:37:14', '2020-06-25 00:14:37'),
(19, 'M010', 'D004', 0, '2020-06-27 22:37:17', '2020-06-25 00:14:37'),
(20, 'M011', 'D004', 0, '2020-06-27 22:37:19', '2020-06-25 00:14:37'),
(21, 'M001', 'D004', 0, '2020-06-27 22:37:22', '2020-06-25 00:14:37'),
(22, 'M006', 'D307', 0, '2020-06-27 22:39:23', '2020-06-25 00:14:37'),
(23, 'M007', 'D307', 0, '2020-06-27 22:39:23', '2020-06-25 00:14:37'),
(24, 'M008', 'D307', 0, '2020-06-27 22:39:23', '2020-06-25 00:14:37'),
(25, 'M009', 'D307', 0, '2020-06-27 22:39:23', '2020-06-25 00:14:37'),
(26, 'M010', 'D307', 0, '2020-06-27 22:39:23', '2020-06-25 00:14:37'),
(27, 'M011', 'D307', 0, '2020-06-27 22:39:23', '2020-06-25 00:14:37'),
(28, 'M001', 'D307', 0, '2020-06-27 22:39:23', '2020-06-25 00:14:37'),
(29, 'M006', 'D311', 0, '2020-06-27 22:39:23', '2020-06-25 00:14:37'),
(30, 'M007', 'D311', 0, '2020-06-27 22:39:23', '2020-06-25 00:14:37'),
(31, 'M008', 'D311', 0, '2020-06-27 22:39:23', '2020-06-25 00:14:37'),
(32, 'M009', 'D311', 0, '2020-06-27 22:39:23', '2020-06-25 00:14:37'),
(33, 'M010', 'D311', 0, '2020-06-27 22:39:23', '2020-06-25 00:14:37'),
(34, 'M011', 'D311', 0, '2020-06-27 22:39:23', '2020-06-25 00:14:37'),
(35, 'M001', 'D311', 0, '2020-06-27 22:39:23', '2020-06-25 00:14:37');

-- --------------------------------------------------------

--
-- Table structure for table `rel_course_cat`
--

CREATE TABLE `rel_course_cat` (
  `relCourseId` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryId` int(7) NOT NULL,
  `courseId` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courseName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rel_course_cat`
--

INSERT INTO `rel_course_cat` (`relCourseId`, `categoryId`, `courseId`, `courseName`, `created_at`, `updated_at`) VALUES
('RC001', 27, '1', '抹茶茶道課', '0000-00-00 00:00:00', '2020-06-18 10:01:35'),
('RC002', 27, '2', '抹茶磅蛋糕手作', '0000-00-00 00:00:00', '2020-06-18 10:01:41'),
('RC003', 27, '3', '抹茶毛巾卷', '0000-00-00 00:00:00', '2020-06-18 10:02:09'),
('RC004', 27, '4', '情人節限定-抹茶巧克力手作', '0000-00-00 00:00:00', '2020-06-18 10:02:11'),
('RC005', 30, '4', '情人節限定-抹茶巧克力手作', '0000-00-00 00:00:00', '2020-06-18 10:02:16'),
('RC006', 27, '5', '端午限定-抹茶冰心粽', '0000-00-00 00:00:00', '2020-06-18 10:02:20'),
('RC007', 30, '5', '端午限定-抹茶冰心粽', '0000-00-00 00:00:00', '2020-06-18 10:02:24'),
('RC008', 27, '6', '中秋限定-抹茶月餅手作', '0000-00-00 00:00:00', '2020-06-18 10:02:27'),
('RC009', 30, '6', '中秋限定-抹茶月餅手作', '0000-00-00 00:00:00', '2020-06-18 10:02:30'),
('RC010', 27, '7', '冬至限定-抹茶湯圓親子手作課', '0000-00-00 00:00:00', '2020-06-18 10:02:36'),
('RC011', 30, '7', '冬至限定-抹茶湯圓親子手作課', '0000-00-00 00:00:00', '2020-06-18 10:02:39'),
('RC012', 27, '8', '抹茶新品體驗課程', '0000-00-00 00:00:00', '2020-06-18 10:02:42'),
('RC013', 31, '8', '抹茶新品體驗課程', '0000-00-00 00:00:00', '2020-06-18 10:02:46'),
('RC014', 28, '9', '抹茶色穿搭', '0000-00-00 00:00:00', '2020-06-18 10:02:49'),
('RC015', 28, '10', '防疫限定抹茶口罩套教學', '0000-00-00 00:00:00', '2020-06-18 10:02:52'),
('RC016', 32, '10', '防疫限定抹茶口罩套教學', '0000-00-00 00:00:00', '2020-06-22 12:08:48'),
('RC017', 28, '11', '抹茶新品體驗課程', '0000-00-00 00:00:00', '2020-06-22 12:09:04'),
('RC018', 31, '11', '抹茶新品體驗課程', '0000-00-00 00:00:00', '2020-06-22 12:09:07'),
('RC019', 29, '12', '抹茶山登山活動', '0000-00-00 00:00:00', '2020-06-22 12:09:10'),
('RC020', 29, '13', '抹茶主題露營', '0000-00-00 00:00:00', '2020-06-22 12:09:17'),
('RC021', 29, '14', '抹茶香皂\\洗手液DIY', '0000-00-00 00:00:00', '2020-06-22 12:09:20'),
('RC022', 32, '14', '抹茶香皂\\洗手液DIY', '0000-00-00 00:00:00', '2020-06-22 12:09:32'),
('RC023', 29, '15', '抹茶營養學', '0000-00-00 00:00:00', '2020-06-22 12:10:13'),
('RC024', 29, '16', '抹茶居家佈置', '0000-00-00 00:00:00', '2020-06-22 12:10:20'),
('RC025', 32, '15', '抹茶營養學', '2020-06-22 12:20:08', '2020-06-22 12:23:00');

-- --------------------------------------------------------

--
-- Table structure for table `rel_item_cat`
--

CREATE TABLE `rel_item_cat` (
  `relItemId` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryId` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `itemId` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `itemName` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rel_item_cat`
--

INSERT INTO `rel_item_cat` (`relItemId`, `categoryId`, `itemId`, `itemName`, `created_at`, `updated_at`) VALUES
('20200428162407', '24', '136', '茶色相機', '0000-00-00 00:00:00', '2020-05-01 15:18:10'),
('20200428162412', '19', '137', '抹茶護唇膏', '0000-00-00 00:00:00', '2020-05-01 15:18:22'),
('20200428162426', '19', '138', '抹茶口紅', '0000-00-00 00:00:00', '2020-05-01 15:18:30'),
('20200428162626', '19', '139', '薄荷抹茶唇膏', '0000-00-00 00:00:00', '2020-05-01 15:18:48'),
('20200428162640', '24', '140', '森林香皂', '0000-00-00 00:00:00', '2020-05-01 15:18:56'),
('20200428162648', '24', '141', '抹茶洗手乳', '0000-00-00 00:00:00', '2020-05-01 15:19:03'),
('20200428162702', '23', '142', '抹茶床包', '0000-00-00 00:00:00', '2020-05-01 15:19:22'),
('20200428162709', '23', '143', '深抹茶床包', '0000-00-00 00:00:00', '2020-05-01 15:19:31'),
('20200428162806', '23', '145', '深抹茶床包2', '0000-00-00 00:00:00', '2020-05-01 15:19:48'),
('20200428162812', '21', '146', '抹茶指甲油', '0000-00-00 00:00:00', '2020-05-01 15:19:57'),
('20200428162813', '23', '144', '抹茶床包2', '0000-00-00 00:00:00', '2020-05-01 15:19:40'),
('20200428162820', '24', '147', '綠筆', '0000-00-00 00:00:00', '2020-05-01 15:20:01'),
('20200428162828', '23', '148', '茶色沙發', '0000-00-00 00:00:00', '2020-05-01 15:20:08'),
('20200428162836', '23', '149', '茶色沙發2', '0000-00-00 00:00:00', '2020-05-01 15:20:15'),
('20200428163042', '19', '153', '抹茶面膜', '0000-00-00 00:00:00', '2020-05-01 15:20:54'),
('20200428163105', '22', '150', '綠的護髮', '0000-00-00 00:00:00', '2020-05-01 15:20:29'),
('20200428163112', '24', '151', '抹茶養身蛋白', '0000-00-00 00:00:00', '2020-05-01 15:20:35'),
('20200428163118', '19', '152', '抹茶眼霜', '0000-00-00 00:00:00', '2020-05-01 15:20:42'),
('20200428163138', '19', '154', '京都護唇膏', '0000-00-00 00:00:00', '2020-05-01 15:21:01'),
('20200428163158', '20', '155', '凱蒂貓洗面乳', '0000-00-00 00:00:00', '2020-05-01 15:21:06'),
('20200428163159', '20', '156', '抹茶化妝水', '0000-00-00 00:00:00', '2020-05-01 15:21:15'),
('20200428163206', '23', '157', '深抹茶沙發', '0000-00-00 00:00:00', '2020-05-01 15:21:22'),
('20200428163213', '24', '158', '抹茶蜂膠', '0000-00-00 00:00:00', '2020-05-01 15:21:30'),
('20200430151045', '17', '59', '', '2020-04-30 23:10:50', '2020-04-30 23:10:50'),
('20200501030054', '25', '3', '<br />\r\n<b>Notice</b>:  Undefined index:', '2020-05-01 09:00:55', '2020-05-01 09:00:55'),
('RI024', '17', '159', '深抹茶露營水桶', '0000-00-00 00:00:00', '2020-04-28 16:32:27'),
('RI025', '17', '160', '綠露營椅', '0000-00-00 00:00:00', '2020-04-28 16:32:42'),
('RI026', '17', '161', '茶色孩童帳篷', '0000-00-00 00:00:00', '2020-04-28 16:32:49'),
('RI027', '6', '66', '抹茶圈圈', '0000-00-00 00:00:00', '2020-04-28 16:32:56'),
('RI028', '6', '67', '抹茶西米露', '0000-00-00 00:00:00', '2020-04-28 16:33:02'),
('RI029', '6', '68', '抹茶冰淇淋', '0000-00-00 00:00:00', '2020-04-28 16:33:09'),
('RI030', '6', '69', 'QQ抹在心', '0000-00-00 00:00:00', '2020-04-28 16:33:15'),
('RI031', '6', '70', '抹茶奇緣', '0000-00-00 00:00:00', '2020-04-28 16:33:22'),
('RI032', '6', '71', '綠的派派', '0000-00-00 00:00:00', '2020-04-28 16:33:28'),
('RI033', '6', '72', '抹茶聖代義大利麵', '0000-00-00 00:00:00', '2020-04-28 16:33:35'),
('RI034', '6', '73', '抹茶馬卡龍', '0000-00-00 00:00:00', '2020-04-28 16:33:42'),
('RI035', '6', '74', '抹香魚燒', '0000-00-00 00:00:00', '2020-04-28 16:33:51'),
('RI036', '6', '75', '抹茶迷宮', '0000-00-00 00:00:00', '2020-04-28 16:33:57'),
('RI037', '6', '76', '綠之瑪德蓮', '0000-00-00 00:00:00', '2020-04-28 16:34:03'),
('RI038', '6', '77', '抹茶的異想世界', '0000-00-00 00:00:00', '2020-04-28 16:34:09'),
('RI039', '6', '78', '抹在心裡', '0000-00-00 00:00:00', '2020-04-28 16:34:14'),
('RI040', '6', '79', '抹茶厚舒芙雷', '0000-00-00 00:00:00', '2020-04-28 16:34:21'),
('RI041', '6', '80', '茶香磅蛋糕', '0000-00-00 00:00:00', '2020-04-28 16:34:26'),
('RI042', '6', '81', '重抹茶杯子', '0000-00-00 00:00:00', '2020-04-28 16:34:45'),
('RI043', '6', '82', '抹茶之邱', '0000-00-00 00:00:00', '2020-04-28 16:34:51'),
('RI044', '6', '83', '抹茶QQ糕', '0000-00-00 00:00:00', '2020-04-28 16:34:56'),
('RI045', '6', '84', '抹茶糬糬', '0000-00-00 00:00:00', '2020-04-28 16:35:01'),
('RI046', '6', '85', '抹茶白玉甜筒', '0000-00-00 00:00:00', '2020-04-28 16:35:05'),
('RI047', '6', '86', '抹茶富士山', '0000-00-00 00:00:00', '2020-04-28 16:35:09'),
('RI048', '6', '87', '抹茶森林', '0000-00-00 00:00:00', '2020-04-28 16:35:16'),
('RI049', '6', '88', '茶香磅蛋糕', '0000-00-00 00:00:00', '2020-04-28 16:35:21'),
('RI050', '6', '89', '抹茶杯杯', '0000-00-00 00:00:00', '2020-04-28 16:35:25'),
('RI051', '6', '90', '抹茶千層', '0000-00-00 00:00:00', '2020-04-28 16:35:32'),
('RI052', '6', '91', '抹的起司', '0000-00-00 00:00:00', '2020-04-28 16:35:37'),
('RI053', '6', '92', '抹茶默思', '0000-00-00 00:00:00', '2020-04-28 16:35:41'),
('RI054', '6', '93', '抹香捲心蛋糕', '0000-00-00 00:00:00', '2020-04-28 16:35:46'),
('RI055', '6', '94', '抹茶盆地', '0000-00-00 00:00:00', '2020-04-28 16:35:53'),
('RI056', '6', '95', '抹茶髒髒捲', '0000-00-00 00:00:00', '2020-04-28 16:35:57'),
('RI057', '6', '96', '抹茶奶油千層', '0000-00-00 00:00:00', '2020-04-28 16:36:04'),
('RI058', '6', '97', '抹茶白巧克力', '0000-00-00 00:00:00', '2020-04-28 16:36:25'),
('RI059', '6', '98', '抹茶芝麻蛋糕', '0000-00-00 00:00:00', '2020-04-28 16:36:30'),
('RI060', '6', '99', '抹茶牛角', '0000-00-00 00:00:00', '2020-04-28 16:36:36'),
('RI061', '7', '100', '冰抹茶拿鐵', '0000-00-00 00:00:00', '2020-04-28 16:36:41'),
('RI062', '7', '101', '冰抹茶', '0000-00-00 00:00:00', '2020-04-28 16:36:46'),
('RI063', '7', '102', '焙茶拿鐵', '0000-00-00 00:00:00', '2020-04-28 16:36:50'),
('RI064', '7', '103', '冰重抹茶', '0000-00-00 00:00:00', '2020-04-28 16:36:55'),
('RI065', '7', '104', '雙茶拿鐵', '0000-00-00 00:00:00', '2020-04-28 16:36:59'),
('RI066', '7', '105', '珍珠抹茶拿鐵', '0000-00-00 00:00:00', '2020-04-28 16:37:05'),
('RI067', '7', '106', '抹茶咖啡', '0000-00-00 00:00:00', '2020-04-28 16:37:09'),
('RI068', '7', '107', '抹茶堅果拿鐵', '0000-00-00 00:00:00', '2020-04-28 16:37:14'),
('RI069', '7', '108', '熱抹茶拿鐵', '0000-00-00 00:00:00', '2020-04-28 16:37:19'),
('RI070', '7', '109', '罐裝冰抹茶拿鐵', '0000-00-00 00:00:00', '2020-04-28 16:37:23'),
('RI071', '7', '110', '清檸冰抹茶', '0000-00-00 00:00:00', '2020-04-28 16:37:29'),
('RI072', '7', '111', '夏季抹茶派對', '0000-00-00 00:00:00', '2020-04-28 16:37:33'),
('RI073', '7', '112', '抹茶粉1', '0000-00-00 00:00:00', '2020-04-28 16:37:37'),
('RI074', '7', '113', '抹茶粉2', '0000-00-00 00:00:00', '2020-04-28 16:37:42'),
('RI075', '7', '114', '抹茶粉3', '0000-00-00 00:00:00', '2020-04-28 16:37:46'),
('RI076', '7', '115', '抹茶粉4', '0000-00-00 00:00:00', '2020-04-28 16:37:50'),
('RI077', '7', '116', '抹茶粉5', '0000-00-00 00:00:00', '2020-04-28 16:38:08'),
('RI078', '7', '117', '抹茶粉6', '0000-00-00 00:00:00', '2020-04-28 16:38:14'),
('RI079', '7', '118', '抹茶粉7', '0000-00-00 00:00:00', '2020-04-28 16:38:19'),
('RI080', '6', '119', '抹茶爆米花', '0000-00-00 00:00:00', '2020-04-28 16:38:53'),
('RI081', '6', '120', '茶香米果', '0000-00-00 00:00:00', '2020-04-28 16:38:58'),
('RI082', '6', '121', '抹茶小圓餅', '0000-00-00 00:00:00', '2020-04-28 16:39:07'),
('RI083', '6', '122', '綠葉餅乾', '0000-00-00 00:00:00', '2020-04-28 16:39:11'),
('RI084', '6', '123', '抹茶紅豆餅', '0000-00-00 00:00:00', '2020-04-28 16:39:18'),
('RI085', '6', '124', '抹茶巧克力', '0000-00-00 00:00:00', '2020-04-28 16:39:24'),
('RI086', '6', '125', '帆船餅乾', '0000-00-00 00:00:00', '2020-04-28 16:39:29'),
('RI087', '6', '126', 'OREO抹茶夾心', '0000-00-00 00:00:00', '2020-04-28 16:39:34'),
('RI088', '6', '127', '茶香銅鑼燒', '0000-00-00 00:00:00', '2020-04-28 16:39:40'),
('RI089', '6', '128', '茶香乖乖', '0000-00-00 00:00:00', '2020-04-28 16:39:47'),
('RI090', '6', '129', '抹茶小磚', '0000-00-00 00:00:00', '2020-04-28 16:39:51'),
('RI091', '6', '130', '抹茶捲心棒', '0000-00-00 00:00:00', '2020-04-28 16:39:58'),
('RI092', '6', '131', '抹茶棒', '0000-00-00 00:00:00', '2020-04-28 16:40:02'),
('RI093', '6', '132', '夏威夷抹豆', '0000-00-00 00:00:00', '2020-04-28 16:40:07'),
('RI094', '6', '133', '抹茶捲心酥', '0000-00-00 00:00:00', '2020-04-28 16:40:17'),
('RI095', '6', '134', 'KK抹茶巧克力', '0000-00-00 00:00:00', '2020-04-28 16:40:23'),
('RI096', '13', '1', '抹茶針織外套', '0000-00-00 00:00:00', '2020-04-28 16:43:29'),
('RI098', '13', '3', '立領排釦外套', '0000-00-00 00:00:00', '2020-04-28 16:43:33'),
('RI099', '10', '4', '補丁感羔羊毛外套', '0000-00-00 00:00:00', '2020-04-28 16:43:37'),
('RI100', '10', '5', '立領貼身長袖毛衣', '0000-00-00 00:00:00', '2020-04-28 16:43:41'),
('RI101', '10', '6', '小立領長袖襯衫', '0000-00-00 00:00:00', '2020-04-28 16:43:45'),
('RI102', '10', '7', '皮革棒球外套', '0000-00-00 00:00:00', '2020-04-28 16:43:52'),
('RI103', '11', '8', '顯瘦緊身長褲', '0000-00-00 00:00:00', '2020-04-28 16:43:57'),
('RI104', '14', '9', '寬鬆休閒長褲', '0000-00-00 00:00:00', '2020-04-28 16:44:00'),
('RI105', '15', '10', '抹茶高筒帆布鞋', '0000-00-00 00:00:00', '2020-04-28 16:44:05'),
('RI106', '12', '11', '限定抹茶立體超塑口罩', '0000-00-00 00:00:00', '2020-04-28 16:44:08'),
('RI107', '15', '12', '夏日編織半圓手拿包', '0000-00-00 00:00:00', '2020-04-28 16:44:11'),
('RI108', '15', '13', '可愛水桶包', '0000-00-00 00:00:00', '2020-04-28 16:44:14'),
('RI109', '15', '14', '質感皮革A字手提包', '0000-00-00 00:00:00', '2020-04-28 16:44:20'),
('RI110', '15', '15', '小眾皮革手提包', '0000-00-00 00:00:00', '2020-04-28 16:44:23'),
('RI111', '13', '16', '超百搭短袖棉T', '0000-00-00 00:00:00', '2020-04-28 16:44:26'),
('RI112', '13', '17', '質感V領長袖襯衫', '0000-00-00 00:00:00', '2020-04-28 16:44:30'),
('RI113', '14', '18', '休閒百搭寬褲', '0000-00-00 00:00:00', '2020-04-28 16:44:38'),
('RI114', '15', '19', '抹茶限量版鞋', '0000-00-00 00:00:00', '2020-04-28 16:44:45'),
('RI115', '13', '20', '花瓣短袖洋裝', '0000-00-00 00:00:00', '2020-04-28 16:44:49'),
('RI116', '15', '21', '秋冬小眾磨毛肩背包', '0000-00-00 00:00:00', '2020-04-28 16:44:57'),
('RI117', '15', '22', '大容量通勤肩背包', '0000-00-00 00:00:00', '2020-04-28 16:45:01'),
('RI118', '15', '23', '百搭舒適版鞋', '0000-00-00 00:00:00', '2020-04-28 16:45:05'),
('RI119', '13', '24', '不怕寒流長袖厚毛衣', '0000-00-00 00:00:00', '2020-04-28 16:45:09'),
('RI120', '13', '25', '氣質短袖襯衫', '0000-00-00 00:00:00', '2020-04-28 16:45:13'),
('RI121', '13', '26', '無袖排釦棉麻上衣', '0000-00-00 00:00:00', '2020-04-28 16:45:37'),
('RI122', '13', '27', '短袖知性棉麻衫', '0000-00-00 00:00:00', '2020-04-28 16:45:41'),
('RI123', '14', '28', '質感淺抹茶皮裙', '0000-00-00 00:00:00', '2020-04-28 16:45:44'),
('RI124', '13', '29', '中長版直筒大衣', '0000-00-00 00:00:00', '2020-04-28 16:45:47'),
('RI125', '13', '30', '小仙女澎澎裙', '0000-00-00 00:00:00', '2020-04-28 16:45:51'),
('RI126', '13', '31', '燈芯絨長袖外套', '0000-00-00 00:00:00', '2020-04-28 16:45:55'),
('RI127', '10', '32', '燈芯絨長袖襯衫', '0000-00-00 00:00:00', '2020-04-28 16:46:13'),
('RI128', '15', '33', '限量幸運結繩', '0000-00-00 00:00:00', '2020-04-28 16:46:18'),
('RI129', '13', '34', '夏日修長套裝', '0000-00-00 00:00:00', '2020-04-28 16:46:21'),
('RI130', '13', '35', '超特別版型襯衫', '0000-00-00 00:00:00', '2020-04-28 16:46:26'),
('RI131', '10', '36', '貼身短袖棉T', '0000-00-00 00:00:00', '2020-04-28 16:46:30'),
('RI132', '10', '37', '長袖內刷毛棉T', '0000-00-00 00:00:00', '2020-04-28 16:46:34'),
('RI133', '10', '38', '型男長袖襯衫', '0000-00-00 00:00:00', '2020-04-28 16:46:38'),
('RI134', '11', '39', '休閒棉麻寬褲', '0000-00-00 00:00:00', '2020-04-28 16:46:42'),
('RI135', '10', '40', '休閒型男夾克', '0000-00-00 00:00:00', '2020-04-28 16:47:01'),
('RI136', '13', '41', '側開岔長袖襯衫', '0000-00-00 00:00:00', '2020-04-28 16:47:05'),
('RI137', '14', '42', '氣質A字長裙', '0000-00-00 00:00:00', '2020-04-28 16:47:08'),
('RI138', '14', '43', '修身A字長裙', '0000-00-00 00:00:00', '2020-04-28 16:47:11'),
('RI139', '14', '44', '超可愛花瓣短裙', '0000-00-00 00:00:00', '2020-04-28 16:47:16'),
('RI140', '13', '45', '無袖綁帶點點上衣', '0000-00-00 00:00:00', '2020-04-28 16:47:20'),
('RI141', '13', '46', '排扣V領針織衫', '0000-00-00 00:00:00', '2020-04-28 16:47:23'),
('RI142', '14', '47', '顯瘦綁帶包臀短裙', '0000-00-00 00:00:00', '2020-04-28 16:47:28'),
('RI143', '14', '48', '燈芯絨修身長褲', '0000-00-00 00:00:00', '2020-04-28 16:47:31'),
('RI144', '15', '49', '大容量印字帆布袋', '0000-00-00 00:00:00', '2020-04-28 16:47:35'),
('RI145', '15', '50', '氣質短夾', '0000-00-00 00:00:00', '2020-04-28 16:47:38'),
('RI146', '15', '51', '休閒運動小背包', '0000-00-00 00:00:00', '2020-04-28 16:47:41'),
('RI147', '13', '52', '抹茶風可愛釣魚背芯', '0000-00-00 00:00:00', '2020-04-28 16:47:44'),
('RI148', '13', '53', '民族風棉麻長裙', '0000-00-00 00:00:00', '2020-04-28 16:47:48'),
('RI149', '10', '54', '率性防風長袖上衣', '0000-00-00 00:00:00', '2020-04-28 16:47:54'),
('RI150', '13', '55', '秋冬內刷毛保暖外套', '0000-00-00 00:00:00', '2020-04-28 16:47:58'),
('RI151', '13', '56', '燈芯絨可愛寬鬆襯衫', '0000-00-00 00:00:00', '2020-04-28 16:48:01'),
('RI152', '13', '57', '休閒長袖棉T', '0000-00-00 00:00:00', '2020-04-28 16:48:04'),
('RI153', '12', '58', '磨毛釣魚帽', '0000-00-00 00:00:00', '2020-04-28 16:48:07'),
('RI154', '12', '59', '帥氣軍雨靴', '0000-00-00 00:00:00', '2020-04-28 16:48:11'),
('RI155', '13', '60', '帥氣軍雨衣', '0000-00-00 00:00:00', '2020-04-28 16:48:15'),
('RI156', '12', '61', '超特別編織涼鞋', '0000-00-00 00:00:00', '2020-04-28 16:48:18'),
('RI157', '12', '62', '超大容量防水後背包', '0000-00-00 00:00:00', '2020-04-28 16:48:21'),
('RI158', '12', '63', '超大容量旅行後背包', '0000-00-00 00:00:00', '2020-04-28 16:48:36'),
('RI159', '13', '64', '修身格紋無袖長裙', '0000-00-00 00:00:00', '2020-04-28 16:48:40'),
('RI160', '13', '65', '超顯瘦格紋短袖長裙', '0000-00-00 00:00:00', '2020-04-28 16:48:44'),
('RI161', '25', '148', '茶色沙發', '0000-00-00 00:00:00', '2020-04-28 16:28:28'),
('RI162', '25', '149', '茶色沙發2', '0000-00-00 00:00:00', '2020-04-28 16:28:36'),
('RI163', '25', '157', '深抹茶沙發', '0000-00-00 00:00:00', '2020-04-28 16:50:27'),
('RI164', '25', '161', '茶色孩童帳篷', '0000-00-00 00:00:00', '2020-04-28 16:50:40'),
('RI165', '25', '4', '補丁感羔羊毛外套', '0000-00-00 00:00:00', '2020-04-28 16:50:47'),
('RI166', '25', '14', '質感皮革A字手提包', '0000-00-00 00:00:00', '2020-04-28 16:50:51'),
('RI167', '25', '15', '小眾皮革手提包', '0000-00-00 00:00:00', '2020-04-28 16:50:56'),
('RI168', '25', '23', '百搭舒適版鞋', '0000-00-00 00:00:00', '2020-04-28 16:50:59'),
('RI169', '25', '33', '限量幸運結繩', '0000-00-00 00:00:00', '2020-04-28 16:51:02'),
('RI170', '25', '34', '夏日修長套裝', '0000-00-00 00:00:00', '2020-04-28 16:51:06'),
('RI171', '25', '62', '超大容量防水後背包', '0000-00-00 00:00:00', '2020-04-28 16:51:09'),
('RI172', '25', '63', '超大容量旅行後背包', '0000-00-00 00:00:00', '2020-04-28 16:51:13');

-- --------------------------------------------------------

--
-- Table structure for table `shippers`
--

CREATE TABLE `shippers` (
  `shipperId` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companyName` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '公司名稱',
  `nickName` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '訂單顯示名稱',
  `companyPhone` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipperType` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '運送類別',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippers`
--

INSERT INTO `shippers` (`shipperId`, `companyName`, `nickName`, `companyPhone`, `shipperType`, `created_at`, `updated_at`) VALUES
('S001', '統一速達股份有限公司', '黑貓配送', '02-4128888', 'coldStor', '2020-04-23 20:42:43', '2020-04-23 21:05:50'),
('S002', '台灣宅配通', '宅配通配送', '0277415666', 'roomTemp', '2020-04-23 20:49:11', '2020-04-23 21:06:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryId`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseId`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`itemId`);

--
-- Indexes for table `item_tracking`
--
ALTER TABLE `item_tracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketing`
--
ALTER TABLE `marketing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `order_lists`
--
ALTER TABLE `order_lists`
  ADD PRIMARY KEY (`orderListId`);

--
-- Indexes for table `order_payment`
--
ALTER TABLE `order_payment`
  ADD PRIMARY KEY (`orderPaymentId`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentId`);

--
-- Indexes for table `rel_coupon_member`
--
ALTER TABLE `rel_coupon_member`
  ADD PRIMARY KEY (`rel_coupon_member_id`);

--
-- Indexes for table `rel_course_cat`
--
ALTER TABLE `rel_course_cat`
  ADD PRIMARY KEY (`relCourseId`);

--
-- Indexes for table `rel_item_cat`
--
ALTER TABLE `rel_item_cat`
  ADD PRIMARY KEY (`relItemId`);

--
-- Indexes for table `shippers`
--
ALTER TABLE `shippers`
  ADD PRIMARY KEY (`shipperId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryId` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `courseId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `itemId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT for table `item_tracking`
--
ALTER TABLE `item_tracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水號', AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `marketing`
--
ALTER TABLE `marketing`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水號', AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(5) NOT NULL AUTO_INCREMENT COMMENT '訂單編號', AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `order_lists`
--
ALTER TABLE `order_lists`
  MODIFY `orderListId` int(10) NOT NULL AUTO_INCREMENT COMMENT '明細編碼', AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT for table `order_payment`
--
ALTER TABLE `order_payment`
  MODIFY `orderPaymentId` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `rel_coupon_member`
--
ALTER TABLE `rel_coupon_member`
  MODIFY `rel_coupon_member_id` int(100) NOT NULL AUTO_INCREMENT COMMENT '流水號', AUTO_INCREMENT=36;
