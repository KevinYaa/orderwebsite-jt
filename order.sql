-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2019 年 04 月 14 日 02:41
-- 伺服器版本: 10.1.32-MariaDB
-- PHP 版本： 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `order`
--

-- --------------------------------------------------------

--
-- 資料表結構 `bill`
--

DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill` (
  `billNo` int(11) NOT NULL,
  `type` varchar(2) COLLATE utf8_unicode_520_ci NOT NULL,
  `productIdList` varchar(50) COLLATE utf8_unicode_520_ci NOT NULL,
  `priceList` varchar(50) COLLATE utf8_unicode_520_ci NOT NULL,
  `quantityList` varchar(50) COLLATE utf8_unicode_520_ci NOT NULL,
  `sweetList` varchar(50) COLLATE utf8_unicode_520_ci NOT NULL,
  `iceList` varchar(50) COLLATE utf8_unicode_520_ci NOT NULL,
  `totalAmount` int(20) NOT NULL,
  `notesList` varchar(100) COLLATE utf8_unicode_520_ci NOT NULL,
  `userName` varchar(20) COLLATE utf8_unicode_520_ci NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `chat`
--

DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
  `userName` varchar(20) COLLATE utf8_unicode_520_ci NOT NULL,
  `adminName` varchar(20) COLLATE utf8_unicode_520_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_520_ci NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `productId` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(20) COLLATE utf8_unicode_520_ci NOT NULL,
  `series` varchar(20) COLLATE utf8_unicode_520_ci NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(20) COLLATE utf8_unicode_520_ci NOT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

INSERT INTO `product` (`productId`, `productName`, `series`, `price`, `category`) VALUES
(1,	'豬肉瑪芬堡',	'瑪芬堡',	55,	'Food'),
(2,	'豬肉瑪芬堡加蛋',	'瑪芬堡',	60,	'Food'),
(3,	'雙層豬肉瑪芬堡',	'瑪芬堡',	70,	'Food'),
(4,	'雙層豬肉瑪芬堡加蛋',	'瑪芬堡',	80,	'Food'),
(5,	'起司蛋堡',	'蛋堡',	40,	'Food'),
(6,	'火腿起士蛋堡',	'蛋堡',	45,	'Food'),
(7,	'培根起士蛋堡',	'蛋堡',	50,	'Food'),
(8,	'起士歐姆蛋',	'口袋歐姆蛋',	50,	'Food'),
(9,	'肉醬歐姆蛋',	'口袋歐姆蛋',	55,	'Food'),
(10,	'培根歐姆蛋',	'口袋歐姆蛋',	60,	'Food'),
(11,	'鮪魚歐姆蛋',	'口袋歐姆蛋',	60,	'Food'),
(12,	'蔬菜歐姆蛋',	'口袋歐姆蛋',	60,	'Food'),
(13,	'墨西哥辣椒豬肉堡',	'漢堡',	65,	'Food'),
(14,	'日式燒肉堡',	'漢堡',	70,	'Food'),
(15,	'墨西哥辣椒牛肉堡',	'漢堡',	75,	'Food'),
(16,	'法式紅酒牛肉堡',	'漢堡',	75,	'Food'),
(17,	'雙層起士雞腿堡',	'漢堡',	75,	'Food'),
(18,	'火腿貝果',	'貝果',	60,	'Food'),
(19,	'蔬菜貝果',	'貝果',	60,	'Food'),
(20,	'鮪魚貝果',	'貝果',	60,	'Food'),
(21,	'牛肉貝果',	'貝果',	70,	'Food'),
(22,	'燻雞貝果',	'貝果',	70,	'Food'),
(23,	'烤腿排貝果',	'貝果',	75,	'Food'),
(24,	'草莓貝果',	'貝果(佐甜醬)',	45,	'Food'),
(25,	'藍莓貝果',	'貝果(佐甜醬)',	45,	'Food'),
(26,	'榛果可可貝果',	'貝果(佐甜醬)',	45,	'Food'),
(27,	'脆粒花生貝果',	'貝果(佐甜醬)',	45,	'Food'),
(28,	'蜂蜜芥末貝果',	'貝果(佐甜醬)',	45,	'Food'),
(29,	'火腿全麥三明治',	'全麥三明治',	45,	'Food'),
(30,	'蔬菜全麥三明治',	'全麥三明治',	45,	'Food'),
(31,	'鮪魚全麥三明治',	'全麥三明治',	45,	'Food'),
(32,	'牛肉全麥三明治',	'全麥三明治',	55,	'Food'),
(33,	'燻雞全麥三明治',	'全麥三明治',	55,	'Food'),
(34,	'烤腿排全麥三明治',	'全麥三明治',	60,	'Food'),
(35,	'火腿風味三明治',	'風味三明治',	50,	'Food'),
(36,	'蔬菜風味三明治',	'風味三明治',	50,	'Food'),
(37,	'鮪魚風味三明治',	'風味三明治',	50,	'Food'),
(38,	'牛肉風味三明治',	'風味三明治',	60,	'Food'),
(39,	'燻雞風味三明治',	'風味三明治',	60,	'Food'),
(40,	'烤腿排風味三明治',	'風味三明治',	65,	'Food'),
(41,	'火腿佛卡夏',	'佛卡夏',	60,	'Food'),
(42,	'蔬菜佛卡夏',	'佛卡夏',	60,	'Food'),
(43,	'鮪魚佛卡夏',	'佛卡夏',	60,	'Food'),
(44,	'牛肉佛卡夏',	'佛卡夏',	70,	'Food'),
(45,	'燻雞佛卡夏',	'佛卡夏',	70,	'Food'),
(46,	'烤腿排佛卡夏',	'佛卡夏',	75,	'Food'),
(47,	'薑汁燒肉',	'義式磚壓三明治',	65,	'Food'),
(48,	'墨西哥辣椒豬肉',	'義式磚壓三明治',	65,	'Food'),
(49,	'墨西哥辣椒牛肉',	'義式磚壓三明治',	75,	'Food'),
(50,	'法式紅酒牛肉',	'義式磚壓三明治',	75,	'Food'),
(51,	'火腿起士',	'義式磚壓三明治',	50,	'Food'),
(52,	'鮪魚玉米',	'義式磚壓三明治',	55,	'Food'),
(53,	'培根起士蛋',	'義式磚壓三明治',	55,	'Food'),
(54,	'德腸起士蛋',	'義式磚壓三明治',	60,	'Food');

-- INSERT INTO `product` (`productId`, `productName`, `series`, `size`, `price`) VALUES
-- (1, '蟬吃烏龍綠', '高山茶', 'L', 30),
-- (2, '台灣明月紅', '高山茶', 'L', 30),
-- (3, '烏龍明月茶', '高山茶', 'L', 30),
-- (4, '高山冷泓青（梨山茶）', '高山茶', 'L', 35),
-- (5, '蟬吃金玉紅', '高山茶', 'L', 35),
-- (6, '紅茶拿鐵', '拿鐵飲', 'M', 55),
-- (7, '紅茶拿鐵', '拿鐵飲', 'L', 60),
-- (8, '烏龍拿鐵', '拿鐵飲', 'M', 55),
-- (9, '烏龍拿鐵', '拿鐵飲', 'L', 60),
-- (10, '蟬吃金玉拿鐵', '拿鐵飲', 'M', 55),
-- (11, '蟬吃金玉拿鐵', '拿鐵飲', 'L', 60),
-- (12, '寶山黑拿鐵', '拿鐵飲', 'M', 55),
-- (13, '寶山黑拿鐵', '拿鐵飲', 'L', 60),
-- (14, '黑糖薑拿鐵', '拿鐵飲', 'M', 65),
-- (15, '黑糖薑拿鐵', '拿鐵飲', 'L', 70),
-- (16, '蟬吃原片鮮翠綠', '蟬吃茶', 'L', 50),
-- (17, '蟬吃原片烏龍茶', '蟬吃茶', 'L', 50),
-- (18, '蟬吃手採蜜香紅', '蟬吃茶', 'L', 60),
-- (21, '蟬吃手採佳業龍', '蟬吃茶', 'L', 60),
-- (22, '蟬吃手採紅玉紅', '蟬吃茶', 'L', 60),
-- (23, '蟬吃玉山烏龍茶', '蟬吃茶', 'L', 80),
-- (24, '養顏蜂蜜水', '蜜茶園', 'M', 50),
-- (25, '養顏蜂蜜水', '蜜茶園', 'L', 60),
-- (26, '蟬吃蜂蜜紅', '蜜茶園', 'M', 55),
-- (27, '蟬吃蜂蜜紅', '蜜茶園', 'L', 65),
-- (28, '蟬吃蜂蜜綠', '蜜茶園', 'M', 55),
-- (29, '蟬吃蜂蜜綠', '蜜茶園', 'L', 65),
-- (30, '蜂蜜檸檬汁', '蜜茶園', 'M', 65),
-- (31, '蜂蜜檸檬汁', '蜜茶園', 'L', 80),
-- (40, '生機檸檬紅', '檸檬飲', 'M', 50),
-- (41, '生機檸檬紅', '檸檬飲', 'L', 60),
-- (42, '生機檸檬綠', '檸檬飲', 'M', 50),
-- (43, '生機檸檬綠', '檸檬飲', 'L', 60),
-- (44, '鮮檸冷泓青', '檸檬飲', 'M', 50),
-- (45, '鮮檸冷泓青', '檸檬飲', 'L', 60),
-- (46, '香檸冷泓青', '檸檬飲', 'M', 50),
-- (47, '香檸冷泓青', '檸檬飲', 'L', 60),
-- (48, '苦檸冷泓青', '檸檬飲', 'M', 50),
-- (49, '苦檸冷泓青', '檸檬飲', 'L', 60),
-- (50, '生機檸檬醋溜', '檸檬飲', 'M', 50),
-- (51, '生機檸檬醋溜', '檸檬飲', 'L', 60),
-- (52, '珍珠奶茶/奶綠', '口感Q', 'M', 45),
-- (53, '珍珠奶茶/奶綠', '口感Q', 'L', 50),
-- (54, '小芋圓珍奶/奶綠', '口感Q', 'M', 45),
-- (55, '小芋圓珍奶/奶綠', '口感Q', 'L', 50),
-- (56, '冷泓綠纖子', '口感Q', 'M', 35),
-- (57, '冷泓綠纖子', '口感Q', 'L', 45),
-- (58, '小毛綠豆冰沙', '口感Q', 'M', 40),
-- (59, '小毛綠豆冰沙', '口感Q', 'L', 50),
-- (60, '牛乳紅茶', '乳特調', 'M', 45),
-- (61, '牛乳紅茶', '乳特調', 'L', 50),
-- (62, '牛乳綠茶', '乳特調', 'M', 45),
-- (63, '牛乳綠茶', '乳特調', 'L', 50),
-- (64, '蟬吃金玉牛乳', '乳特調', 'M', 45),
-- (65, '蟬吃金玉牛乳', '乳特調', 'L', 50),
-- (66, '寶山黑糖牛乳', '乳特調', 'M', 45),
-- (67, '寶山黑糖牛乳', '乳特調', 'L', 50),
-- (68, '黑糖薑牛乳', '乳特調', 'M', 55),
-- (69, '黑糖薑牛乳', '乳特調', 'L', 60),
-- (70, '蟬吃黑糖薑紅', '暖呼呼', 'M', 50),
-- (71, '蟬吃黑糖薑紅', '暖呼呼', 'L', 60),
-- (72, '蟬吃烏龍薑茶', '暖呼呼', 'M', 50),
-- (73, '蟬吃烏龍薑茶', '暖呼呼', 'L', 60),
-- (74, '蟬吃黑龍薑茶', '暖呼呼', 'M', 50),
-- (75, '蟬吃黑龍薑茶', '暖呼呼', 'L', 60),
-- (76, '蟬吃薑薑好', '暖呼呼', 'M', 50),
-- (77, '蟬吃薑薑好', '暖呼呼', 'L', 60),
-- (78, '養生薑黃紅/綠', '養生飲', 'M', 40),
-- (79, '養生薑黃紅/綠', '養生飲', 'L', 50),
-- (80, '寶山黑玉紅茶', '養生飲', 'M', 35),
-- (81, '寶山黑玉紅茶', '養生飲', 'L', 45),
-- (82, '蜜香檸芝紅茶', '養生飲', 'M', 80);

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userName` varchar(20) COLLATE utf8_unicode_520_ci NOT NULL,
  `passWord` varchar(20) COLLATE utf8_unicode_520_ci NOT NULL,
  `phoneNum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- 資料表的匯出資料 `user`
--

INSERT INTO `user` (`userName`, `passWord`, `phoneNum`) VALUES
('kan', '151102', 905620013),
('test1999', '1q2w3e4r', 91234567),
('yankee', 'lovejt', 905620002);

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`billNo`);

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productId`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userName`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `product`
--
ALTER TABLE `product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
