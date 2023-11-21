-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3308
-- Generation Time: Nov 08, 2023 at 12:24 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_webshop_a`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `catalog` (
  `catalog_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `sort_order` tinyint(4) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`catalog_id`, `name`, `description`, `parent_id`, `sort_order`, `created`) VALUES
(1, 'Thời trang', '', 0, 1, '2017-04-22 05:35:21'),
(2, 'Bán chạy', '', 0, 2, '2017-04-22 05:35:48'),
(3, 'Khuyến mại', '', 0, 3, '2017-04-22 05:35:59'),
(4, 'Tin tức', '', 0, 4, '2017-04-22 05:36:13'),
(5, 'Giỏ hàng', '', 0, 6, '2017-04-22 05:36:49'),
(6, 'Liên hệ', '', 0, 5, '2017-04-22 05:37:02'),
(7, 'Áo', '', 1, 1, '2017-04-22 05:37:23'),
(8, 'Quần', '', 1, 2, '2017-04-22 05:37:36'),
(9, 'Phụ kiện', '', 1, 3, '2017-04-22 05:37:50'),
(10, 'Áo phông', '', 7, 1, '2017-04-22 09:08:19'),
(11, 'Áo sơ mi', '', 7, 2, '2017-04-22 09:08:36'),
(12, 'Áo khoác', '', 7, 3, '2017-04-22 09:09:01'),
(13, 'Áo Sweater', '', 7, 4, '2017-04-22 09:09:14'),
(14, 'Hoodie', '', 7, 5, '2017-04-22 09:09:31'),
(15, 'Quần dài', '', 8, 1, '2017-04-22 09:09:46'),
(16, 'Quần ngắn', '', 8, 2, '2017-04-22 09:10:10'),
(17, 'Mũ', '', 9, 1, '2017-04-22 09:23:39'),
(18, 'Tất', '', 9, 2, '2017-04-22 09:23:57'),
(19, 'Cặp', '', 9, 3, '2017-04-22 09:25:55'),
(20, 'Dép', '', 9, 4, '2017-04-22 09:26:21');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
`order_id` int(11) NOT NULL,
  `transaction_id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `qty` int(100) NOT NULL DEFAULT '0',
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `transaction_id`, `product_id`, `qty`, `amount`, `status`) VALUES
(1, 3, 12, 1, '360000.00', 0),
(3, 4, 7, 1, '350000.00', 0),
(12, 9, 4, 1, '200000.00', 0),
(13, 10, 17, 1, '450000.00', 0),
(6, 5, 23, 1, '370000.00', 0),
(7, 6, 28, 1, '169000.00', 0),
(8, 6, 25, 1, '300000.00', 0),
(11, 8, 10, 1, '69000.00', 0),
(10, 7, 11, 1, '70000.00', 0),
(14, 11, 25, 1, '300000.00', 0),
(15, 12, 28, 1, '169000.00', 0),
(16, 13, 29, 3, '540000.00', 0),
(17, 13, 13, 1, '200000.00', 0),
(18, 14, 93, 1, '580000.00', 0),
(19, 14, 71, 1, '400000.00', 0),
(20, 14, 104, 1, '480000.00', 0),
(21, 14, 69, 1, '300000.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(255) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `discount` int(11) DEFAULT '0',
  `image_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_list` text COLLATE utf8_unicode_ci NOT NULL,
  `view` int(11) NOT NULL DEFAULT '0',
  `buyed` int(255) NOT NULL,
  `rate_total` int(255) NOT NULL DEFAULT '4',
  `rate_count` int(255) NOT NULL DEFAULT '1',
  `created` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=130 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `catalog_id`, `name`, `content`, `price`, `discount`, `image_link`, `image_list`, `view`, `buyed`, `rate_total`, `rate_count`, `created`) VALUES
(105, 15, 'Quần LEVENTS KHAKI PANTS BEIGE', '<p>+ LEVENTS&reg; KHAKI PANTS<br />\r\nChất liệu: Khaki<br />\r\nK&iacute;ch cỡ: 1/2/3</p>\r\n\r\n<p>Sản phẩm&nbsp;<a href="https://levents.asia/product-category/quan/quan-dai/khaki/">quần Khaki</a>&nbsp;thuộc Bộ sưu tập Thu/ Đ&ocirc;ng 2022 của&nbsp;<a href="https://levents.asia/">Levents</a></p>\r\n', '470000.00', 0, 'a50.jpg', '[]', 0, 0, 4, 1, 1699107740),
(106, 16, 'Quần LEVENTS CLASSIC SHORTPANTS BLACK', '<p>Levents&reg; Classic ShortPants</p>\r\n\r\n<p>Material: Nỉ<br />\r\nSize: 1/2/3/4</p>\r\n\r\n<p>Đ&acirc;y l&agrave; sản phẩm thuộc d&ograve;ng sản phẩm mới chưa từng c&oacute; từ trước đến nay &ndash; LEVENTS&reg; CLASSIC.</p>\r\n\r\n<p>LEVENTS&reg; CLASSIC với mục ti&ecirc;u trở th&agrave;nh d&ograve;ng sản phẩm &ldquo;EVERY WEAR&rdquo; l&agrave; sự kết hợp tinh tế giữa thiết kế đơn giản, hiện đại v&agrave; form d&aacute;ng cổ điển, tập trung về chất liệu v&agrave; m&agrave;u sắc đa dạng.</p>\r\n\r\n<p>Hứa hẹn mang đến những item thoải m&aacute;i để bạn tự tin thể hiện c&aacute; t&iacute;nh, ph&ugrave; hợp với mọi hoạt động dạo phố h&agrave;ng ng&agrave;y.</p>\r\n', '250000.00', 0, 'a51.jpg', '[]', 1, 0, 4, 1, 1699107940),
(107, 16, 'Quần LEVENTS CLASSIC SHORTPANTS  CREAM', '<p>Levents&reg; Classic ShortPants</p>\r\n\r\n<p>Material: Nỉ<br />\r\nSize: 1/2/3/4</p>\r\n\r\n<p>Đ&acirc;y l&agrave; sản phẩm thuộc d&ograve;ng sản phẩm mới chưa từng c&oacute; từ trước đến nay &ndash; LEVENTS&reg; CLASSIC.</p>\r\n\r\n<p>LEVENTS&reg; CLASSIC với mục ti&ecirc;u trở th&agrave;nh d&ograve;ng sản phẩm &ldquo;EVERY WEAR&rdquo; l&agrave; sự kết hợp tinh tế giữa thiết kế đơn giản, hiện đại v&agrave; form d&aacute;ng cổ điển, tập trung về chất liệu v&agrave; m&agrave;u sắc đa dạng.</p>\r\n\r\n<p>Hứa hẹn mang đến những item thoải m&aacute;i để bạn tự tin thể hiện c&aacute; t&iacute;nh, ph&ugrave; hợp với mọi hoạt động dạo phố h&agrave;ng ng&agrave;y</p>\r\n', '250000.00', 0, 'a52.jpg', '[]', 0, 0, 4, 1, 1699108007),
(103, 15, 'Quần LEVENTS CRAYON JEANS BLACK', '<p>+ LEVENTS&reg; CRAYON JEANS</p>\r\n\r\n<p>Chất liệu: Jeans</p>\r\n\r\n<p>K&iacute;ch cỡ: 1/2/3/4</p>\r\n\r\n<p>Sản phẩm&nbsp;<a href="https://levents.asia/product-category/quan/quan-dai/jean/">quần Jeans</a>&nbsp;thuộc Bộ sưu tập Thu/ Đ&ocirc;ng 2022 của&nbsp;<a href="https://levents.asia/">Levents</a></p>\r\n', '420000.00', 0, 'a48.jpg', '[]', 1, 0, 4, 1, 1699107629),
(104, 15, 'Quần LEVENTS CRAYON JEANS BLUE', '<p>+ LEVENTS&reg; CRAYON JEANS</p>\r\n\r\n<p>Chất liệu: Jeans</p>\r\n\r\n<p>K&iacute;ch cỡ: 1/2/3/4</p>\r\n\r\n<p>Sản phẩm&nbsp;<a href="https://levents.asia/product-category/quan/quan-dai/jean/">quần Jeans</a>&nbsp;thuộc Bộ sưu tập Thu/ Đ&ocirc;ng 2022 của&nbsp;<a href="https://levents.asia/">Levents</a></p>\r\n', '480000.00', 0, 'a49.jpg', '[]', 1, 0, 4, 1, 1699107682),
(101, 15, 'Quần Levents Classic Wash Straight Jeans Blue', '<p>Levents&reg; Classic Wash Straight Jeans/ Blue</p>\r\n\r\n<p>Color: Blue</p>\r\n\r\n<p>Material: Denim<br />\r\nSize: 2/3/4</p>\r\n\r\n<p>Đ&acirc;y l&agrave; sản phẩm thuộc d&ograve;ng sản phẩm mới chưa từng c&oacute; từ trước đến nay &ndash; LEVENTS&reg; CLASSIC.</p>\r\n\r\n<p>LEVENTS&reg; CLASSIC với mục ti&ecirc;u trở th&agrave;nh d&ograve;ng sản phẩm &ldquo;EVERY WEAR&rdquo; l&agrave; sự kết hợp tinh tế giữa thiết kế đơn giản, hiện đại v&agrave; form d&aacute;ng cổ điển, tập trung về chất liệu v&agrave; m&agrave;u sắc đa dạng.</p>\r\n\r\n<p>Hứa hẹn mang đến những item thoải m&aacute;i để bạn tự tin thể hiện c&aacute; t&iacute;nh, ph&ugrave; hợp với mọi hoạt động dạo phố h&agrave;ng ng&agrave;y.</p>\r\n', '460000.00', 0, 'a46.jpg', '[]', 0, 0, 4, 1, 1699107500),
(71, 11, 'Áo LEVENTS CINEMA SHIRT Green', '<p>LEVENTS&reg; CINEMA SHIRT<br />\r\nChất liệu: 100% Cotton<br />\r\nK&iacute;ch cỡ: 1/2/3<br />\r\nSản phẩm thuộc Bộ sưu tập Thu/ Đ&ocirc;ng 2022 của Levents</p>\r\n', '450000.00', 50000, 'a18.jpg', '[]', 1, 0, 4, 1, 1699104727),
(72, 11, 'Áo LEVENTS CINEMA SHIRT BLACK', '<p>LEVENTS&reg; CINEMA SHIRT<br />\r\nChất liệu: 100% Cotton<br />\r\nK&iacute;ch cỡ: 1/2/3<br />\r\nSản phẩm thuộc Bộ sưu tập Thu/ Đ&ocirc;ng 2022 của Levents</p>\r\n', '400000.00', 0, 'a19.jpg', '[]', 1, 0, 4, 1, 1699104868),
(73, 11, 'Áo LEVENTS CITIES SHIRT Black ', '<p>+ LEVENTS&reg; CITIES SHIRT<br />\r\nChất liệu: Cotton<br />\r\nK&iacute;ch cỡ: 1/2/3</p>\r\n', '400000.00', 0, 'a20.jpg', '[]', 0, 0, 4, 1, 1699104947),
(74, 11, 'Áo LEVENTS CITIES SHIRT White', '<p>+ LEVENTS&reg; CITIES SHIRT<br />\r\nChất liệu: Cotton<br />\r\nK&iacute;ch cỡ: 1/2/3</p>\r\n', '400000.00', 0, 'a21.jpg', '[]', 0, 0, 4, 1, 1699105032),
(75, 12, 'Áo Levents Classic Block Jacket', '<p>Levents&reg; Classic Block Jacket/ Black</p>\r\n\r\n<p>Color: Black</p>\r\n\r\n<p>Material: Poly<br />\r\nSize: 2/3/4</p>\r\n', '700000.00', 200000, 'a22.jpg', '[]', 0, 0, 4, 1, 1699105289),
(76, 12, 'Áo Levents Line Jacket Black', '<p>Levents&reg; Line Jacket</p>\r\n\r\n<p>Material: D&ugrave;<br />\r\nSize: 2/3/4</p>\r\n', '850000.00', 250000, 'a23.jpg', '[]', 0, 0, 4, 1, 1699105356),
(77, 12, 'Áo Levents Line Jacket White', '<p>Levents&reg; Line Jacket</p>\r\n\r\n<p>Material: D&ugrave;<br />\r\nSize: 2/3/4</p>\r\n', '750000.00', 0, 'a24.jpg', '[]', 0, 0, 4, 1, 1699105449),
(78, 12, 'Áo LEVENTS POPPOP JACKET', '<p>LEVENTS&reg; | POPPOP JACKET</p>\r\n\r\n<p>Chất liệu: Kaki &ndash; Th&ecirc;u x&ugrave;<br />\r\nK&iacute;ch cỡ: 2/3/4</p>\r\n\r\n<p>Sản phẩm thuộc Bộ sưu tập đặc biệt LEVENTS&reg; | POPPOP &ldquo;Make Poppop Famous&rdquo; &ndash; Dự &aacute;n kết hợp 2022</p>\r\n', '750000.00', 0, 'a25.jpg', '[]', 1, 0, 4, 1, 1699105498),
(80, 12, 'Áo LEVENTS PUNCH VARSITY Black', '<p>+ LEVENTS&reg; PUNCH VARSITY</p>\r\n\r\n<p>Chất liệu: Nỉ dạ</p>\r\n\r\n<p>K&iacute;ch cỡ: 2/3/4</p>\r\n\r\n<p>Sản phẩm&nbsp;<strong><a href="https://levents.asia/product-category/outerwear/">Outerwear</a></strong>&nbsp;thuộc Bộ sưu tập Thu/ Đ&ocirc;ng 2022 của&nbsp;<strong><a href="https://levents.asia/">Levents</a></strong></p>\r\n', '800000.00', 200000, 'a26.jpg', '[]', 0, 0, 4, 1, 1699105676),
(81, 12, 'Áo LEVENTS PUNCH VARSITY White', '<p>+ LEVENTS&reg; PUNCH VARSITY</p>\r\n\r\n<p>Chất liệu: Nỉ dạ</p>\r\n\r\n<p>K&iacute;ch cỡ: 2/3/4</p>\r\n\r\n<p>Sản phẩm&nbsp;<strong><a href="https://levents.asia/product-category/outerwear/">Outerwear</a></strong>&nbsp;thuộc Bộ sưu tập Thu/ Đ&ocirc;ng 2022 của&nbsp;<strong><a href="https://levents.asia/">Levents</a></strong></p>\r\n', '750000.00', 0, 'a27.jpg', '[]', 0, 0, 4, 1, 1699105757),
(82, 12, 'Áo LEVENTS SPORTY JACKET Black', '<p>+ LEVENTS&reg; SPORTY JACKET</p>\r\n\r\n<p>Chất liệu: Nylon Taslon</p>\r\n\r\n<p>K&iacute;ch cỡ: 1/2/3</p>\r\n\r\n<p>Sản phẩm thuộc Bộ sưu tập Xu&acirc;n/ H&egrave; 2022</p>\r\n', '750000.00', 0, 'a28.jpg', '[]', 0, 0, 4, 1, 1699105838),
(83, 12, 'Áo LEVENTS SPORTY JACKET Red', '<p>+ LEVENTS&reg; SPORTY JACKET</p>\r\n\r\n<p>Chất liệu: Nylon Taslon</p>\r\n\r\n<p>K&iacute;ch cỡ: 1/2/3</p>\r\n\r\n<p>Sản phẩm thuộc Bộ sưu tập Xu&acirc;n/ H&egrave; 2022</p>\r\n', '700000.00', 150000, 'a29.jpg', '[]', 0, 0, 4, 1, 1699105893),
(84, 13, 'Áo Levents Book Sweater White', '<p>Levents&reg; Book Sweater/ Cream</p>\r\n\r\n<p>Color: Cream</p>\r\n\r\n<p>Material:&nbsp;L&igrave; ven Fabric<br />\r\nSize: 2/3/4</p>\r\n', '500000.00', 0, 'a30.jpg', '[]', 0, 0, 4, 1, 1699106024),
(85, 13, 'Áo Levents Classic Sweater Blue', '<p>Levents&reg; Classic Sweater</p>\r\n\r\n<p>Material: Nỉ<br />\r\nSize: 2/3/4</p>\r\n\r\n<p>Đ&acirc;y l&agrave; sản phẩm thuộc d&ograve;ng sản phẩm mới chưa từng c&oacute; từ trước đến nay &ndash; LEVENTS&reg; CLASSIC.</p>\r\n\r\n<p>LEVENTS&reg; CLASSIC với mục ti&ecirc;u trở th&agrave;nh d&ograve;ng sản phẩm &ldquo;EVERY WEAR&rdquo; l&agrave; sự kết hợp tinh tế giữa thiết kế đơn giản, hiện đại v&agrave; form d&aacute;ng cổ điển, tập trung về chất liệu v&agrave; m&agrave;u sắc đa dạng.</p>\r\n\r\n<p>Hứa hẹn mang đến những item thoải m&aacute;i để bạn tự tin thể hiện c&aacute; t&iacute;nh, ph&ugrave; hợp với mọi hoạt động dạo phố h&agrave;ng ng&agrave;y.</p>\r\n', '500000.00', 50000, 'a31.jpg', '[]', 0, 0, 4, 1, 1699106100),
(86, 13, 'Áo Levents Classic Sweater White', '<p>Levents&reg; Classic Sweater</p>\r\n\r\n<p>Material: Nỉ<br />\r\nSize: 2/3/4</p>\r\n\r\n<p>Đ&acirc;y l&agrave; sản phẩm thuộc d&ograve;ng sản phẩm mới chưa từng c&oacute; từ trước đến nay &ndash; LEVENTS&reg; CLASSIC.</p>\r\n\r\n<p>LEVENTS&reg; CLASSIC với mục ti&ecirc;u trở th&agrave;nh d&ograve;ng sản phẩm &ldquo;EVERY WEAR&rdquo; l&agrave; sự kết hợp tinh tế giữa thiết kế đơn giản, hiện đại v&agrave; form d&aacute;ng cổ điển, tập trung về chất liệu v&agrave; m&agrave;u sắc đa dạng.</p>\r\n\r\n<p>Hứa hẹn mang đến những item thoải m&aacute;i để bạn tự tin thể hiện c&aacute; t&iacute;nh, ph&ugrave; hợp với mọi hoạt động dạo phố h&agrave;ng ng&agrave;y.</p>\r\n', '450000.00', 0, 'a32.jpg', '[]', 0, 0, 4, 1, 1699106165),
(87, 13, 'Áo Levents Classic Sweater Red', '<p>LEVENTS&reg; BASIC SWEATER<br />\r\nChất liệu: Nỉ<br />\r\nK&iacute;ch cỡ: 2/3/4</p>\r\n\r\n<p>Sản phẩm thuộc thuộc Bộ sưu tập Thu/ Đ&ocirc;ng 2022 của Levents</p>\r\n', '450000.00', 0, 'a33.jpg', '[]', 0, 0, 4, 1, 1699106213),
(88, 13, 'Áo LEVENTS DORAEMON KNIT SWEATER Brown', '<p>LEVENTS&reg; | DORAEMON KNIT SWEATER</p>\r\n\r\n<p>Chất liệu: Len<br />\r\nK&iacute;ch cỡ: 1/2/3</p>\r\n\r\n<p>Sản phẩm thuộc Bộ sưu tập đặc biệt &ldquo;Make everything popular&rdquo; DORAEMON | LEVENTS&reg;</p>\r\n', '500000.00', 0, 'a34.jpg', '[]', 0, 0, 4, 1, 1699106281),
(89, 13, 'Áo LEVENTS DORAEMON KNIT SWEATER Pink', '<p>LEVENTS&reg; | DORAEMON KNIT SWEATER</p>\r\n\r\n<p>Chất liệu: Len<br />\r\nK&iacute;ch cỡ: 1/2/3</p>\r\n\r\n<p>Sản phẩm thuộc Bộ sưu tập đặc biệt &ldquo;Make everything popular&rdquo; DORAEMON | LEVENTS&reg;</p>\r\n', '500000.00', 50000, 'a35.jpg', '[]', 0, 0, 4, 1, 1699106424),
(90, 13, 'LEVENTS MY ANIMALS SERIES PANTHER KNIT SWEATER RED', '<p>+ LEVENTS&reg; &ldquo;MY ANIMALS&rdquo; SERIES PANTHER SWEATER</p>\r\n\r\n<p>Chất liệu: Len</p>\r\n\r\n<p>K&iacute;ch cỡ: 1/2/3</p>\r\n\r\n<p>Sản phẩm thuộc Bộ sưu tập đặc biệt &ldquo;MY ANIMALS&rdquo; Series năm 2021</p>\r\n', '700000.00', 0, 'a36.jpg', '[]', 0, 0, 4, 1, 1699106522),
(91, 13, 'LEVENTS MY ANIMALS SERIES PANTHER KNIT SWEATER CREAM', '<p>+ LEVENTS&reg; &ldquo;MY ANIMALS&rdquo; SERIES PANTHER SWEATER</p>\r\n\r\n<p>Chất liệu: Len</p>\r\n\r\n<p>K&iacute;ch cỡ: 1/2/3</p>\r\n\r\n<p>Sản phẩm thuộc Bộ sưu tập đặc biệt &ldquo;MY ANIMALS&rdquo; Series năm 2021</p>\r\n', '700000.00', 0, 'a37.jpg', '[]', 0, 0, 4, 1, 1699106600),
(92, 14, 'Áo LEVENTS LOVE BOXY ZIPPER HOODIE BLACK', '<p>Levents&reg; Love Boxy Zipper Hoodie/ Black</p>\r\n\r\n<p>Color: Black</p>\r\n\r\n<p>Material:&nbsp;Nỉ<br />\r\nSize: 2/3/4</p>\r\n', '620000.00', 0, 'a38.jpg', '[]', 0, 0, 4, 1, 1699106708),
(93, 14, 'Áo LEVENTS CLASSIC ZIPPER HOODIE DARK GREEN', '<p>Levents&reg; Classic Zipper Hoodie</p>\r\n\r\n<p>Material: Nỉ<br />\r\nSize: 2/3/4</p>\r\n\r\n<p>Đ&acirc;y l&agrave; sản phẩm thuộc d&ograve;ng sản phẩm mới chưa từng c&oacute; từ trước đến nay &ndash; LEVENTS&reg; CLASSIC.</p>\r\n\r\n<p>LEVENTS&reg; CLASSIC với mục ti&ecirc;u trở th&agrave;nh d&ograve;ng sản phẩm &ldquo;EVERY WEAR&rdquo; l&agrave; sự kết hợp tinh tế giữa thiết kế đơn giản, hiện đại v&agrave; form d&aacute;ng cổ điển, tập trung về chất liệu v&agrave; m&agrave;u sắc đa dạng.</p>\r\n\r\n<p>Hứa hẹn mang đến những item thoải m&aacute;i để bạn tự tin thể hiện c&aacute; t&iacute;nh, ph&ugrave; hợp với mọi hoạt động dạo phố h&agrave;ng ng&agrave;y.</p>\r\n', '680000.00', 100000, 'a39.jpg', '[]', 0, 0, 4, 1, 1699106784),
(94, 14, 'Áo LEVENTS POPULAR LOGO 2.0 HOODIE CREAM', '<p>Levents&reg; Classic Hoodie</p>\r\n\r\n<p>Material: Nỉ<br />\r\nSize: 2/3/4</p>\r\n\r\n<p>Đ&acirc;y l&agrave; sản phẩm thuộc d&ograve;ng sản phẩm mới chưa từng c&oacute; từ trước đến nay &ndash; LEVENTS&reg; CLASSIC.</p>\r\n\r\n<p>LEVENTS&reg; CLASSIC với mục ti&ecirc;u trở th&agrave;nh d&ograve;ng sản phẩm &ldquo;EVERY WEAR&rdquo; l&agrave; sự kết hợp tinh tế giữa thiết kế đơn giản, hiện đại v&agrave; form d&aacute;ng cổ điển, tập trung về chất liệu v&agrave; m&agrave;u sắc đa dạng.</p>\r\n\r\n<p>Hứa hẹn mang đến những item thoải m&aacute;i để bạn tự tin thể hiện c&aacute; t&iacute;nh, ph&ugrave; hợp với mọi hoạt động dạo phố h&agrave;ng ng&agrave;y.</p>\r\n', '670000.00', 0, 'a40.jpg', '[]', 0, 0, 4, 1, 1699106882),
(95, 14, 'Áo LEVENTS BASIC BOXY HOODIE BROWN', '<p>+ LEVENTS&reg; BASIC BOXY HOODIE</p>\r\n\r\n<p>Chất liệu: L&Igrave; VEN FABRIC &ndash; BOXY</p>\r\n\r\n<p>K&iacute;ch cỡ: 2/3/4</p>\r\n', '620000.00', 100000, 'a41.jpg', '[]', 0, 0, 4, 1, 1699106948),
(96, 14, 'ÁO LEVENTS BASIC BOXY HOODIE WHITE', '<p>+ LEVENTS&reg; BASIC BOXY HOODIE</p>\r\n\r\n<p>Chất liệu: L&Igrave; VEN FABRIC &ndash; BOXY</p>\r\n\r\n<p>K&iacute;ch cỡ: 2/3/4</p>\r\n', '630000.00', 100000, 'a42.jpg', '[]', 0, 0, 4, 1, 1699107024),
(97, 14, 'Áo LEVENTS MY ANIMALS SERIES TIGER HOODIE CREAM', '<p>+ LEVENTS&reg; &ldquo;MY ANIMALS&rdquo; SERIES TIGER HOODIE</p>\r\n\r\n<p>Chất liệu: LÌ VEN FABRIC &ndash; phi&ecirc;n bản chất vải d&agrave;y dặn, mềm mịn, kh&ocirc;ng bị nhăn.</p>\r\n\r\n<p>K&iacute;ch cỡ: 1/2/3</p>\r\n\r\n<p>Sản phẩm thuộc Bộ sưu tập đặc biệt &ldquo;MY ANIMALS&rdquo; Series năm 2021</p>\r\n', '720000.00', 0, 'a43.jpg', '[]', 1, 0, 4, 1, 1699107089),
(98, 15, 'Quần LEVENTS CLASSIC LINE TRACK PANTS BLACK', '<p>Levents&reg; Classic Line Track Pants/ Black</p>\r\n\r\n<p>Color: Black</p>\r\n\r\n<p>Material: Cotton<br />\r\nSize: 2/3/4</p>\r\n\r\n<p>Đ&acirc;y l&agrave; sản phẩm thuộc d&ograve;ng sản phẩm mới chưa từng c&oacute; từ trước đến nay &ndash; LEVENTS&reg; CLASSIC.</p>\r\n\r\n<p>LEVENTS&reg; CLASSIC với mục ti&ecirc;u trở th&agrave;nh d&ograve;ng sản phẩm &ldquo;EVERY WEAR&rdquo; l&agrave; sự kết hợp tinh tế giữa thiết kế đơn giản, hiện đại v&agrave; form d&aacute;ng cổ điển, tập trung về chất liệu v&agrave; m&agrave;u sắc đa dạng.</p>\r\n\r\n<p>Hứa hẹn mang đến những item thoải m&aacute;i để bạn tự tin thể hiện c&aacute; t&iacute;nh, ph&ugrave; hợp với mọi hoạt động dạo phố h&agrave;ng ng&agrave;y.</p>\r\n', '430000.00', 0, 'a44.jpg', '[]', 0, 0, 4, 1, 1699107257),
(99, 15, 'Quần LEVENTS CLASSIC TRACK PANTS BLACK', '<p>Levents&reg; Classic Track Pants/ Black</p>\r\n\r\n<p>Color: Black</p>\r\n\r\n<p>Material: Cotton<br />\r\nSize: 2/3/4</p>\r\n\r\n<p>Đ&acirc;y l&agrave; sản phẩm thuộc d&ograve;ng sản phẩm mới chưa từng c&oacute; từ trước đến nay &ndash; LEVENTS&reg; CLASSIC.</p>\r\n\r\n<p>LEVENTS&reg; CLASSIC với mục ti&ecirc;u trở th&agrave;nh d&ograve;ng sản phẩm &ldquo;EVERY WEAR&rdquo; l&agrave; sự kết hợp tinh tế giữa thiết kế đơn giản, hiện đại v&agrave; form d&aacute;ng cổ điển, tập trung về chất liệu v&agrave; m&agrave;u sắc đa dạng.</p>\r\n\r\n<p>Hứa hẹn mang đến những item thoải m&aacute;i để bạn tự tin thể hiện c&aacute; t&iacute;nh, ph&ugrave; hợp với mọi hoạt động dạo phố h&agrave;ng ng&agrave;y.</p>\r\n', '460000.00', 0, 'a45.jpg', '[]', 0, 0, 4, 1, 1699107352),
(102, 15, 'Quần LEVENTS POPPOP CARGO PANTS BLACK', '<p>LEVENTS&reg; | POPPOP CARGO PANTS</p>\r\n\r\n<p>Chất liệu: Khaki</p>\r\n\r\n<p>K&iacute;ch cỡ: 2/3/4</p>\r\n\r\n<p>Sản phẩm thuộc Bộ sưu tập đặc biệt LEVENTS&reg; | POPPOP &ldquo;Make Poppop Famous&rdquo; &ndash; Dự &aacute;n kết hợp 2022</p>\r\n', '460000.00', 60000, 'a47.jpg', '[]', 0, 0, 4, 1, 1699107561),
(70, 11, 'Áo Levents Classic Striped Long Sleeve Shirt Blue', '<p>Levents&reg; Classic Striped Long Sleeve Shirt/ Blue</p>\r\n\r\n<p>Color: Blue</p>\r\n\r\n<p>Material: Cotton<br />\r\nSize: 2/3/4</p>\r\n\r\n<p>Đ&acirc;y l&agrave; sản phẩm thuộc d&ograve;ng sản phẩm mới chưa từng c&oacute; từ trước đến nay &ndash; LEVENTS&reg; CLASSIC.</p>\r\n\r\n<p>LEVENTS&reg; CLASSIC với mục ti&ecirc;u trở th&agrave;nh d&ograve;ng sản phẩm &ldquo;EVERY WEAR&rdquo; l&agrave; sự kết hợp tinh tế giữa thiết kế đơn giản, hiện đại v&agrave; form d&aacute;ng cổ điển, tập trung về chất liệu v&agrave; m&agrave;u sắc đa dạng.</p>\r\n\r\n<p>Hứa hẹn mang đến những item thoải m&aacute;i để bạn tự tin thể hiện c&aacute; t&iacute;nh, ph&ugrave; hợp với mọi hoạt động dạo phố h&agrave;ng ng&agrave;y.</p>\r\n', '500000.00', 0, 'a17.jpg', '[]', 1, 0, 9, 2, 1699104637),
(69, 10, 'Áo LEVENTS  DORAEMON MINI CAT TEE White', '<p>LEVENTS&reg; | DORAEMON MINI CAT TEE</p>\r\n\r\n<p>Chất liệu: L&Igrave; VEN ORIGINAL &ndash; Phi&ecirc;n bản&nbsp;<a href="https://levents.asia/product-category/ao/ao-thun/">&aacute;o thun</a>&nbsp;c&oacute; bề mặt vải kh&ocirc;ng đổ l&ocirc;ng mang cảm gi&aacute;c tho&aacute;ng m&aacute;t</p>\r\n\r\n<ul>\r\n	<li>L&igrave; ven Original kh&ocirc;ng l&ocirc;ng được &aacute;p dụng cho to&agrave;n bộ sản phẩm &aacute;o thun m&agrave;u đen</li>\r\n	<li>L&igrave; ven Original 2.0 c&oacute; l&ocirc;ng vẫn được &aacute;p dụng cho c&aacute;c &aacute;o thun m&agrave;u kh&aacute;c</li>\r\n</ul>\r\n\r\n<p>K&iacute;ch cỡ: 1/2/3/4</p>\r\n\r\n<p>Sản phẩm thuộc Bộ sưu tập đặc biệt &ldquo;Make everything popular&rdquo; DORAEMON | LEVENTS&reg;</p>\r\n', '350000.00', 50000, 'a16.jpg', '[]', 0, 0, 4, 1, 1699104434),
(67, 10, 'Áo LEVENTS  POPPOP FRIENDS TEE', '<p>LEVENTS&reg; | POPPOP FRIENDS TEE</p>\r\n\r\n<p>Chất liệu: L&Igrave; VEN ORIGINAL 2.0 &ndash; In nổi<br />\r\nK&iacute;ch cỡ: 1/2/3/4</p>\r\n\r\n<p>Sản phẩm thuộc Bộ sưu tập đặc biệt LEVENTS&reg; | POPPOP &ldquo;Make Poppop Famous&rdquo; &ndash; Dự &aacute;n kết hợp 2022</p>\r\n', '350000.00', 0, 'a14.jpg', '[]', 0, 0, 4, 1, 1699104276),
(68, 10, 'Áo LEVENTS DORAEMON FAMOUS CAT TEE GREEN', '<p>LEVENTS&reg; | DORAEMON FAMOUS CAT TEE</p>\r\n\r\n<p>Chất liệu: L&Igrave; VEN ORIGINAL 2.0 &ndash; Phi&ecirc;n bản&nbsp;bề mặt vải đổ l&ocirc;ng mang cảm gi&aacute;c tho&aacute;ng m&aacute;t<br />\r\nK&iacute;ch cỡ: 1/2/3/4</p>\r\n\r\n<p>Sản phẩm thuộc Bộ sưu tập đặc biệt &ldquo;Make everything popular&rdquo; DORAEMON | LEVENTS&reg;</p>\r\n', '350000.00', 50000, 'a15.jpg', '[]', 0, 0, 4, 1, 1699104351),
(64, 10, 'Áo Levents Bichontour Tee', '<p>Levents&reg; Bichontour Tee</p>\r\n\r\n<p>Chất liệu: L&igrave; Ven Compact<br />\r\nK&iacute;ch cỡ: 1/2/3/4</p>\r\n', '350000.00', 0, 'a11.jpg', '[]', 0, 0, 4, 1, 1699104074),
(65, 10, 'Áo LEVENTS 2LIP TEE', '<p>+ LEVENTS&reg; 2LIP TEE</p>\r\n\r\n<p>Chất liệu: L&Igrave; VEN COMPACT &ndash; Phi&ecirc;n bản&nbsp;<a href="https://levents.asia/product-category/ao/">&aacute;o streetwear</a>&nbsp;chất vải tho&aacute;ng m&aacute;t, mềm mịn nhưng kh&ocirc;ng bị nhăn hay x&ugrave;.<br />\r\nK&iacute;ch cỡ: 1/2/3/4</p>\r\n\r\n<p>Sản phẩm&nbsp;<a href="https://levents.asia/product-category/ao/ao-thun/">&aacute;o thun</a>&nbsp;thuộc bộ sưu tập Spring/ Summer 2022 của&nbsp;<a href="https://levents.asia/">Levents</a></p>\r\n', '350000.00', 0, 'a12.jpg', '[]', 0, 0, 4, 1, 1699104136),
(66, 10, 'áo LEVENTS  DORAEMON COLLAB TEE/ BLACK', '<p>LEVENTS&reg; | DORAEMON COLLAB TEE</p>\r\n\r\n<p>Chất liệu: L&Igrave; VEN FABRIC &ndash; Phi&ecirc;n bản chất vải d&agrave;y dặn, mềm mịn, kh&ocirc;ng bị nhăn.<br />\r\nK&iacute;ch cỡ: 1/2/3/4</p>\r\n\r\n<p>Sản phẩm&nbsp;<a href="https://levents.asia/product-category/ao/ao-thun/">&aacute;o thun</a>&nbsp;thuộc Bộ sưu tập đặc biệt &ldquo;Make everything popular&rdquo; DORAEMON | LEVENTS&reg;</p>\r\n', '350000.00', 0, 'a13.jpg', '[]', 0, 0, 4, 1, 1699104209),
(53, 10, 'Áo Levents Airplane Tee White', '<p>Levents&reg; Airplane Tee/ Black</p>\r\n\r\n<p>Material: L&igrave; ven Original<br />\r\nSize: 1/2/3/4</p>\r\n\r\n<ul>\r\n	<li>&Aacute;o oversize c&oacute; độ d&agrave;i phủ qu&aacute; m&ocirc;ng,phần tay &aacute;o rộng r&atilde;i, d&agrave;i tay &aacute;o chạm khuỷu tay người mặc, form d&aacute;ng thoải m&aacute;i, rộng r&atilde;i khi mặc.&nbsp;</li>\r\n	<li>Ph&ugrave; hợp cho những bạn kh&ocirc;ng muốn khoe đường cong cơ thể, v&igrave; sự thoải m&aacute;i cũng như t&iacute;nh năng tiện dụng khi c&oacute; thể kết hợp với nhiều item kh&aacute;c nhau cho mọi hoạt động.</li>\r\n</ul>\r\n', '350000.00', 0, 'a1.jpg', '[]', 1, 0, 9, 2, 1699102744),
(54, 10, 'Áo Levents Airplane Tee Black', '<p>Levents&reg; Airplane Tee/ Black</p>\r\n\r\n<p>Material: L&igrave; ven Original<br />\r\nSize: 1/2/3/4</p>\r\n\r\n<ul>\r\n	<li>&Aacute;o oversize c&oacute; độ d&agrave;i phủ qu&aacute; m&ocirc;ng,phần tay &aacute;o rộng r&atilde;i, d&agrave;i tay &aacute;o chạm khuỷu tay người mặc, form d&aacute;ng thoải m&aacute;i, rộng r&atilde;i khi mặc.&nbsp;</li>\r\n	<li>Ph&ugrave; hợp cho những bạn kh&ocirc;ng muốn khoe đường cong cơ thể, v&igrave; sự thoải m&aacute;i cũng như t&iacute;nh năng tiện dụng khi c&oacute; thể kết hợp với nhiều item kh&aacute;c nhau cho mọi hoạt động.</li>\r\n</ul>\r\n', '350000.00', 0, 'a2.jpg', '[]', 1, 0, 4, 1, 1699102842),
(55, 10, 'Áo Levents Book Boxy Tee Black', '<p>Levents&reg; Book Boxy Tee</p>\r\n\r\n<p>Material:&nbsp;L&igrave; ven Fabric<br />\r\nSize: 1/2/3/4</p>\r\n\r\n<ul>\r\n	<li>Form BOXY kh&aacute;c biệt với form thường l&agrave; &aacute;o được thiết kế chỉ d&agrave;i đến thắt lưng, được tạo th&agrave;nh form cứng c&aacute;p, dạng như chiếc hộp vu&ocirc;ng. Dễ phối đồ, gi&uacute;p t&ocirc;n d&aacute;ng người được thon gọn v&agrave; cao r&aacute;o.</li>\r\n	<li>Ph&acirc;n chia lại tỉ lệ mặc đồ của người d&ugrave;ng &ndash; gọn g&agrave;ng hơn, phần tr&ecirc;n ph&acirc;n biệt phần dưới v&agrave; khoe d&aacute;ng được nhiều hơn</li>\r\n</ul>\r\n', '350000.00', 0, 'a3.jpg', '[]', 1, 0, 4, 1, 1699103085),
(56, 10, 'Áo Levents Book Boxy Tee White', '<p>Levents&reg; Book Boxy Tee</p>\r\n\r\n<p>Material:&nbsp;L&igrave; ven Fabric<br />\r\nSize: 1/2/3/4</p>\r\n\r\n<ul>\r\n	<li>Form BOXY kh&aacute;c biệt với form thường l&agrave; &aacute;o được thiết kế chỉ d&agrave;i đến thắt lưng, được tạo th&agrave;nh form cứng c&aacute;p, dạng như chiếc hộp vu&ocirc;ng. Dễ phối đồ, gi&uacute;p t&ocirc;n d&aacute;ng người được thon gọn v&agrave; cao r&aacute;o.</li>\r\n	<li>Ph&acirc;n chia lại tỉ lệ mặc đồ của người d&ugrave;ng &ndash; gọn g&agrave;ng hơn, phần tr&ecirc;n ph&acirc;n biệt phần dưới v&agrave; khoe d&aacute;ng được nhiều hơn</li>\r\n</ul>\r\n', '350000.00', 0, 'a4.jpg', '[]', 0, 0, 4, 1, 1699103133),
(57, 10, 'Áo Levents Something Boxy Tee Black', '<p>Levents&reg; Something Boxy Tee</p>\r\n\r\n<p>Material:&nbsp;L&igrave; ven Original<br />\r\nSize: 1/2/3/4</p>\r\n\r\n<ul>\r\n	<li>Form BOXY kh&aacute;c biệt với form thường l&agrave; &aacute;o được thiết kế chỉ d&agrave;i đến thắt lưng, được tạo th&agrave;nh form cứng c&aacute;p, dạng như chiếc hộp vu&ocirc;ng. Dễ phối đồ, gi&uacute;p t&ocirc;n d&aacute;ng người được thon gọn v&agrave; cao r&aacute;o.</li>\r\n	<li>Ph&acirc;n chia lại tỉ lệ mặc đồ của người d&ugrave;ng &ndash; gọn g&agrave;ng hơn, phần tr&ecirc;n ph&acirc;n biệt phần dưới v&agrave; khoe d&aacute;ng được nhiều hơn</li>\r\n</ul>\r\n', '350000.00', 100000, 'a5.jpg', '[]', 1, 0, 9, 2, 1699103267),
(58, 10, 'Áo LEVENTS FADED TEE BLACK', '<p>LEVENTS&reg; FADED TEE/ BLACK</p>\r\n\r\n<p>Chất liệu: L&Igrave; VEN WASH &ndash; chất vải mềm mịn, d&agrave;y dặn v&agrave; đặc biệt tạo n&ecirc;n những mảng m&agrave;u loang c&aacute; t&iacute;nh.</p>\r\n\r\n<p>K&iacute;ch cỡ: 1/2/3/4</p>\r\n\r\n<p>Sản phẩm thuộc Bộ sưu tập Thu/ Đ&ocirc;ng 2022 của Levents</p>\r\n', '350000.00', 0, 'a6.jpg', '[]', 1, 0, 4, 1, 1699103409),
(59, 10, 'Áo Levents Spooky Tee Black', '<p>Levents&reg; Spooky Tee</p>\r\n\r\n<p><br />\r\nMaterial: L&igrave; ven Original</p>\r\n\r\n<p>Size: 1/2/3</p>\r\n\r\n<p>New arrival độc quyền d&agrave;nh ri&ecirc;ng cho m&ugrave;a Halloween lần n&agrave;y &ndash; LEVENTS&reg; SPOOKY TEE với 2 tone m&agrave;u ch&iacute;nh BLACK &amp; WHITE t&ocirc;n da, ph&ugrave; hợp với mọi giới t&iacute;nh.&nbsp;Item đặc biệt lần n&agrave;y với form oversize cực thoải m&aacute;i, kết hợp giữa họa tiết con dơi được &eacute;p decal kim tuyến lấp l&aacute;nh v&agrave; d&ograve;ng graphic được in lụa với phối m&agrave;u đỏ tạo hiểu ứng nổi bật. Sử dụng chất vải cao cấp chống nhăn, tạo sự tho&aacute;ng m&aacute;t c&ugrave;ng độ bền cao.&nbsp;Tự tin thể hiện sự c&aacute; t&iacute;nh v&agrave; kh&aacute;c biệt của ch&iacute;nh bạn v&agrave;o m&ugrave;a Halloween c&ugrave;ng LEVENTS&reg; SPOOKY TEE th&ocirc;i n&agrave;ooo!</p>\r\n\r\n<p>&nbsp;</p>\r\n', '350000.00', 50000, 'a7.jpg', '[]', 1, 0, 4, 1, 1699103543),
(61, 10, 'Áo LEVENTS FADED TEE Blue', '<p>LEVENTS&reg; FADED TEE</p>\r\n\r\n<p>Chất liệu: L&Igrave; VEN WASH &ndash; chất vải mềm mịn, d&agrave;y dặn v&agrave; đặc biệt tạo n&ecirc;n những mảng m&agrave;u loang c&aacute; t&iacute;nh.</p>\r\n\r\n<p>K&iacute;ch cỡ: 1/2/3/4</p>\r\n\r\n<p>Sản phẩm thuộc Bộ sưu tập Thu/ Đ&ocirc;ng 2022 của Levents</p>\r\n', '350000.00', 0, 'a8.jpg', '[]', 0, 0, 4, 1, 1699103804),
(62, 10, 'Áo LEVENTS FADED TEE Yellow', '<p>LEVENTS&reg; FADED TEE/ BLACK</p>\r\n\r\n<p>Chất liệu: L&Igrave; VEN WASH &ndash; chất vải mềm mịn, d&agrave;y dặn v&agrave; đặc biệt tạo n&ecirc;n những mảng m&agrave;u loang c&aacute; t&iacute;nh.</p>\r\n\r\n<p>K&iacute;ch cỡ: 1/2/3/4</p>\r\n\r\n<p>Sản phẩm thuộc Bộ sưu tập Thu/ Đ&ocirc;ng 2022 của Levents</p>\r\n', '350000.00', 0, 'a9.jpg', '[]', 0, 0, 4, 1, 1699103877),
(63, 10, 'Áo Levents Pixel Flower Tee Black', '<p>Levents&reg; Pixel Flower Tee</p>\r\n\r\n<p>Chất liệu: L&igrave; ven Original 2.0</p>\r\n\r\n<ul>\r\n	<li>L&igrave; ven Original kh&ocirc;ng l&ocirc;ng được &aacute;p dụng cho to&agrave;n bộ sản phẩm &aacute;o thun m&agrave;u đen</li>\r\n	<li>L&igrave; ven Original 2.0 c&oacute; l&ocirc;ng vẫn được &aacute;p dụng cho c&aacute;c &aacute;o thun m&agrave;u kh&aacute;c</li>\r\n</ul>\r\n\r\n<p>K&iacute;ch cỡ: 1/2/3/4</p>\r\n\r\n<p>&ndash; &Aacute;o oversize c&oacute; độ d&agrave;i phủ qu&aacute; m&ocirc;ng,phần tay &aacute;o rộng r&atilde;i, d&agrave;i tay &aacute;o chạm khuỷu tay người mặc, form d&aacute;ng thoải m&aacute;i, rộng r&atilde;i khi mặc.</p>\r\n\r\n<p>&ndash; Ph&ugrave; hợp cho những bạn kh&ocirc;ng muốn khoe đường cong cơ thể, v&igrave; sự thoải m&aacute;i cũng như t&iacute;nh năng tiện dụng khi c&oacute; thể kết hợp với nhiều item kh&aacute;c nhau cho mọi hoạt động.</p>\r\n', '350000.00', 50000, 'a10.jpg', '[]', 0, 0, 4, 1, 1699103980),
(108, 16, 'Quần LEVENTS PLAY LOGO SHORTPANT BLACK', '<p>+ LEVENTS&reg; PLAY LOGO SHORT</p>\r\n\r\n<p>Chất liệu: L&Igrave; VEN FABRIC &ndash; Phi&ecirc;n bản chất vải d&agrave;y dặn, mềm mịn, kh&ocirc;ng bị nhăn.<br />\r\nK&iacute;ch cỡ: 1/2/3/4<br />\r\nSản phẩm thuộc Bộ sưu tập Xu&acirc;n/ H&egrave; 2022 của Levents</p>\r\n', '250000.00', 0, 'a53.jpg', '[]', 0, 0, 4, 1, 1699108071),
(110, 16, 'Quần LEVENTS PLAY LOGO SHORTPANT GREEN', '<p>+ LEVENTS&reg; PLAY LOGO SHORT</p>\r\n\r\n<p>Chất liệu: L&Igrave; VEN FABRIC &ndash; Phi&ecirc;n bản chất vải d&agrave;y dặn, mềm mịn, kh&ocirc;ng bị nhăn.<br />\r\nK&iacute;ch cỡ: 1/2/3/4<br />\r\nSản phẩm thuộc Bộ sưu tập Xu&acirc;n/ H&egrave; 2022 của Levents</p>\r\n', '250000.00', 0, 'a54.jpg', '[]', 0, 0, 4, 1, 1699108161),
(111, 17, 'Mũ LEVENTS CLASSIC CAP BLUE', '<p>Levents&reg; Classic Cap</p>\r\n\r\n<p>Material:&nbsp;Poly<br />\r\nSize: One Size</p>\r\n\r\n<p>Đ&acirc;y l&agrave; sản phẩm thuộc d&ograve;ng sản phẩm mới chưa từng c&oacute; từ trước đến nay &ndash; LEVENTS&reg; CLASSIC.</p>\r\n\r\n<p>LEVENTS&reg; CLASSIC với mục ti&ecirc;u trở th&agrave;nh d&ograve;ng sản phẩm &ldquo;EVERY WEAR&rdquo; l&agrave; sự kết hợp tinh tế giữa thiết kế đơn giản, hiện đại v&agrave; form d&aacute;ng cổ điển, tập trung về chất liệu v&agrave; m&agrave;u sắc đa dạng.</p>\r\n\r\n<p>Hứa hẹn mang đến những item thoải m&aacute;i để bạn tự tin thể hiện c&aacute; t&iacute;nh, ph&ugrave; hợp với mọi hoạt động dạo phố h&agrave;ng ng&agrave;y.</p>\r\n', '150000.00', 0, 'a55.jpg', '[]', 0, 0, 4, 1, 1699109433),
(112, 17, 'Mũ LEVENTS CLASSIC CAP GREEN', '<p>Levents&reg; Classic Cap</p>\r\n\r\n<p>Material:&nbsp;Poly<br />\r\nSize: One Size</p>\r\n\r\n<p>Đ&acirc;y l&agrave; sản phẩm thuộc d&ograve;ng sản phẩm mới chưa từng c&oacute; từ trước đến nay &ndash; LEVENTS&reg; CLASSIC.</p>\r\n\r\n<p>LEVENTS&reg; CLASSIC với mục ti&ecirc;u trở th&agrave;nh d&ograve;ng sản phẩm &ldquo;EVERY WEAR&rdquo; l&agrave; sự kết hợp tinh tế giữa thiết kế đơn giản, hiện đại v&agrave; form d&aacute;ng cổ điển, tập trung về chất liệu v&agrave; m&agrave;u sắc đa dạng.</p>\r\n\r\n<p>Hứa hẹn mang đến những item thoải m&aacute;i để bạn tự tin thể hiện c&aacute; t&iacute;nh, ph&ugrave; hợp với mọi hoạt động dạo phố h&agrave;ng ng&agrave;y.</p>\r\n', '120000.00', 0, 'a56.jpg', '[]', 0, 0, 4, 1, 1699109499),
(113, 17, 'Mũ LEVENTS CLASSIC 2TONE CAP BLACK', '<p>Levents&reg; Classic 2tone Cap</p>\r\n\r\n<p>Material:&nbsp;Poly<br />\r\nSize: One Size</p>\r\n\r\n<p>Đ&acirc;y l&agrave; sản phẩm thuộc d&ograve;ng sản phẩm mới chưa từng c&oacute; từ trước đến nay &ndash; LEVENTS&reg; CLASSIC.</p>\r\n\r\n<p>LEVENTS&reg; CLASSIC với mục ti&ecirc;u trở th&agrave;nh d&ograve;ng sản phẩm &ldquo;EVERY WEAR&rdquo; l&agrave; sự kết hợp tinh tế giữa thiết kế đơn giản, hiện đại v&agrave; form d&aacute;ng cổ điển, tập trung về chất liệu v&agrave; m&agrave;u sắc đa dạng.</p>\r\n\r\n<p>Hứa hẹn mang đến những item thoải m&aacute;i để bạn tự tin thể hiện c&aacute; t&iacute;nh, ph&ugrave; hợp với mọi hoạt động dạo phố h&agrave;ng ng&agrave;y.</p>\r\n', '120000.00', 20000, 'a57.jpg', '[]', 0, 0, 4, 1, 1699109907),
(114, 17, 'Mũ LEVENTS CLASSIC 2TONE CAP GREEN', '<p>Levents&reg; Classic 2tone Cap</p>\r\n\r\n<p>Material:&nbsp;Poly<br />\r\nSize: One Size</p>\r\n\r\n<p>Đ&acirc;y l&agrave; sản phẩm thuộc d&ograve;ng sản phẩm mới chưa từng c&oacute; từ trước đến nay &ndash; LEVENTS&reg; CLASSIC.</p>\r\n\r\n<p>LEVENTS&reg; CLASSIC với mục ti&ecirc;u trở th&agrave;nh d&ograve;ng sản phẩm &ldquo;EVERY WEAR&rdquo; l&agrave; sự kết hợp tinh tế giữa thiết kế đơn giản, hiện đại v&agrave; form d&aacute;ng cổ điển, tập trung về chất liệu v&agrave; m&agrave;u sắc đa dạng.</p>\r\n\r\n<p>Hứa hẹn mang đến những item thoải m&aacute;i để bạn tự tin thể hiện c&aacute; t&iacute;nh, ph&ugrave; hợp với mọi hoạt động dạo phố h&agrave;ng ng&agrave;y.</p>\r\n', '120000.00', 0, 'a58.jpg', '[]', 0, 0, 4, 1, 1699109977),
(115, 17, 'Mũ LEVENTS COMPANY AND MATES CAP CREAM', '<p>Levents&reg; Company &amp; Mates Cap</p>\r\n\r\n<p>Chất liệu: Khaki</p>\r\n\r\n<p>K&iacute;ch cỡ: Sản phẩm c&oacute; một k&iacute;ch cỡ</p>\r\n', '120000.00', 0, 'a59.jpg', '[]', 0, 0, 4, 1, 1699110049),
(116, 17, 'Mũ LEVENTS COMPANY AND MATES CAP GREEN', '<p>Levents&reg; Company &amp; Mates Cap</p>\r\n\r\n<p>Chất liệu: Khaki</p>\r\n\r\n<p>K&iacute;ch cỡ: Sản phẩm c&oacute; một k&iacute;ch cỡ</p>\r\n', '120000.00', 0, 'a60.jpg', '[]', 0, 0, 4, 1, 1699110109),
(117, 17, 'Mũ LEVENTS® BASIC CAP BLACK', '<p>LEVENTS&reg; BASIC CAP</p>\r\n\r\n<p>Chất liệu: Poly</p>\r\n\r\n<p>K&iacute;ch cỡ: Sản phẩm c&oacute; một k&iacute;ch cỡ</p>\r\n\r\n<p>Sản phẩm thuộc thuộc Bộ sưu tập Xu&acirc;n/ H&egrave; 2022 của&nbsp;<a href="https://levents.asia/">Levents</a></p>\r\n', '120000.00', 0, 'a61.jpg', '[]', 0, 0, 4, 1, 1699110192),
(118, 17, 'Mũ LEVENTS TRUCKER HAT BLACK', '<p>LEVENTS&reg; TRUCKER HAT</p>\r\n\r\n<p>Chất liệu: Poly</p>\r\n\r\n<p>K&iacute;ch cỡ: Sản phẩm c&oacute; một k&iacute;ch cỡ</p>\r\n\r\n<p>Sản phẩm thuộc Bộ sưu tập Xu&acirc;n/ H&egrave; 2022 của Levents</p>\r\n', '120000.00', 0, 'a62.jpg', '[]', 0, 0, 4, 1, 1699110248),
(119, 18, 'Tất LEVENTS CLASSIC BLANK SOCK BLACK', '<p>Levents&reg; Classic Blank Sock</p>\r\n\r\n<p>Color: Green</p>\r\n\r\n<p>Material: Cotton<br />\r\nSize: One Size</p>\r\n\r\n<p>Đ&acirc;y l&agrave; sản phẩm thuộc d&ograve;ng sản phẩm mới chưa từng c&oacute; từ trước đến nay &ndash; LEVENTS&reg; CLASSIC.</p>\r\n\r\n<p>LEVENTS&reg; CLASSIC với mục ti&ecirc;u trở th&agrave;nh d&ograve;ng sản phẩm &ldquo;EVERY WEAR&rdquo; l&agrave; sự kết hợp tinh tế giữa thiết kế đơn giản, hiện đại v&agrave; form d&aacute;ng cổ điển, tập trung về chất liệu v&agrave; m&agrave;u sắc đa dạng.</p>\r\n\r\n<p>Hứa hẹn mang đến những item thoải m&aacute;i để bạn tự tin thể hiện c&aacute; t&iacute;nh, ph&ugrave; hợp với mọi hoạt động dạo phố h&agrave;ng ng&agrave;y.</p>\r\n', '20000.00', 0, 'a63.jpg', '[]', 0, 0, 4, 1, 1699110740),
(120, 18, 'Tất LEVENTS CLASSIC BLANK SOCK WHITE', '<p>Levents&reg; Classic Blank Sock</p>\r\n\r\n<p>Color: Green</p>\r\n\r\n<p>Material: Cotton<br />\r\nSize: One Size</p>\r\n\r\n<p>Đ&acirc;y l&agrave; sản phẩm thuộc d&ograve;ng sản phẩm mới chưa từng c&oacute; từ trước đến nay &ndash; LEVENTS&reg; CLASSIC.</p>\r\n\r\n<p>LEVENTS&reg; CLASSIC với mục ti&ecirc;u trở th&agrave;nh d&ograve;ng sản phẩm &ldquo;EVERY WEAR&rdquo; l&agrave; sự kết hợp tinh tế giữa thiết kế đơn giản, hiện đại v&agrave; form d&aacute;ng cổ điển, tập trung về chất liệu v&agrave; m&agrave;u sắc đa dạng.</p>\r\n\r\n<p>Hứa hẹn mang đến những item thoải m&aacute;i để bạn tự tin thể hiện c&aacute; t&iacute;nh, ph&ugrave; hợp với mọi hoạt động dạo phố h&agrave;ng ng&agrave;y.</p>\r\n', '20000.00', 0, 'a64.jpg', '[]', 0, 0, 4, 1, 1699110807),
(121, 18, 'Tất LEVENTS STRIPES SOCKS BLACK', '<p>+ LEVENTS&reg; STRIPES SOCKS</p>\r\n\r\n<p>Chất liệu: Cotton</p>\r\n\r\n<p>K&iacute;ch cỡ: Sản phẩm c&oacute; một k&iacute;ch cỡ</p>\r\n', '25000.00', 0, 'a65.jpg', '[]', 0, 0, 4, 1, 1699110889),
(122, 18, 'Tất LEVENTS STRIPES SOCKS GREEN', '<p>+ LEVENTS&reg; STRIPES SOCKS</p>\r\n\r\n<p>Chất liệu: Cotton</p>\r\n\r\n<p>K&iacute;ch cỡ: Sản phẩm c&oacute; một k&iacute;ch cỡ</p>\r\n', '25000.00', 0, 'a66.jpg', '[]', 0, 0, 4, 1, 1699110938),
(123, 18, 'Tất LEVENTS® STRIPES SOCKS YELLOW', '<p>+ LEVENTS&reg; STRIPES SOCKS</p>\r\n\r\n<p>Chất liệu: Cotton</p>\r\n\r\n<p>K&iacute;ch cỡ: Sản phẩm c&oacute; một k&iacute;ch cỡ</p>\r\n', '25000.00', 0, 'a67.jpg', '[]', 0, 0, 4, 1, 1699111021),
(124, 18, 'Tất LEVENTS STRIPES SOCKS RED', '<p>+ LEVENTS&reg; STRIPES SOCKS</p>\r\n\r\n<p>Chất liệu: Cotton</p>\r\n\r\n<p>K&iacute;ch cỡ: Sản phẩm c&oacute; một k&iacute;ch cỡ</p>\r\n', '25000.00', 0, 'a68.jpg', '[]', 0, 0, 4, 1, 1699111090),
(125, 19, 'Cặp LEVENTS BASIC BACKPACK BLACK', '<p>LEVENTS&reg; BASIC&nbsp;BACKPACK</p>\r\n\r\n<p>Chất liệu: Poly<br />\r\nK&iacute;ch cỡ: 41 X 25 X 15 cm, ph&ugrave; hợp với laptop dưới 14 inch.</p>\r\n', '300000.00', 0, 'a69.jpg', '[]', 1, 0, 4, 1, 1699111675),
(126, 19, 'Cặp LEVENTS DOUBLE E BACKPACK BLACK', '<p>LEVENTS&reg; DOUBLE &ldquo;E&rdquo; BACKPACK</p>\r\n\r\n<p>Chất liệu: Poly<br />\r\nK&iacute;ch cỡ: 41 X 25 X 15 CM, ph&ugrave; hợp với laptop dưới 14 inch.</p>\r\n', '300000.00', 0, 'a70.jpg', '[]', 0, 0, 4, 1, 1699111730),
(127, 20, 'Dép LEVENTS ESSENTIAL 2.0 SLIPPER YELLOW', '<p>+ LEVENTS&reg; ESSENTIAL 2.0 SLIPPER</p>\r\n\r\n<p>Chất liệu: 100% PVC</p>\r\n\r\n<p>K&iacute;ch cỡ: 6/8/10/12 ( US )</p>\r\n\r\n<p>Độ d&agrave;y đế: 24.5 mm</p>\r\n', '150000.00', 0, 'a71.jpg', '[]', 0, 0, 4, 1, 1699112169),
(128, 20, 'Dép LEVENTS ESSENTIAL 2.0 SLIPPER LIGHT BROWN', '<p>+ LEVENTS&reg; ESSENTIAL 2.0 SLIPPER</p>\r\n\r\n<p>Chất liệu: 100% PVC</p>\r\n\r\n<p>K&iacute;ch cỡ: 6/8/10/12 ( US )</p>\r\n\r\n<p>Độ d&agrave;y đế: 24.5 mm</p>\r\n', '150000.00', 0, 'a72.jpg', '[]', 0, 0, 4, 1, 1699112223),
(129, 20, 'Dép LEVENTS ESSENTIAL 2.0 SLIPPER GREEN', '<p>+ LEVENTS&reg; ESSENTIAL 2.0 SLIPPER</p>\r\n\r\n<p>Chất liệu: 100% PVC</p>\r\n\r\n<p>K&iacute;ch cỡ: 6/8/10/12 ( US )</p>\r\n\r\n<p>Độ d&agrave;y đế: 24.5 mm</p>\r\n', '150.00', 0, 'a73.jpg', '[]', 0, 0, 4, 1, 1699112279);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `slider_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `name`, `image_link`, `link`, `sort_order`, `created`) VALUES
(1, '1', 'a100.jpg', 'http://localhost/webshop/phoi-ren-p4', 1, '2017-04-25 15:24:43'),
(4, '2', 'a103.jpg', 'http://localhost/webshop/ao-gia-dinh-ag0560-p16', 4, '2017-04-25 15:36:41'),
(5, '3', 'a111.jpg', 'http://localhost/webshop/phong-cach-phoi-mau-p24', 3, '2017-04-25 15:37:00');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
  `transaction_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `payment` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `status`, `user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `message`, `amount`, `payment`, `created`) VALUES
(4, 1, 0, 'An Nhiên', 'annhien@gmail.com', '0166666666', 'Hoàng Mai - Hà Nội', 'Vui lòng trao hàng đến địa chỉ trên...', '350000.00', '', 1493983674),
(3, 1, 5, 'GoO', 'GoO@gmail.com', '01215345336', 'Hải Phòng', 'GUi hang den dia chi tren', '360000.00', '', 1493983674),
(5, 1, 0, 'Bình Nguyễn', 'binh@gmail.com', '0987654321', 'Hà Nội ', 'Gửi đến địa chỉ trên', '370000.00', '', 1494083674),
(6, 0, 0, 'Tô Nam', 'tonam@yahoo.com.vn', '098989876', 'Thủy Nguyên - Hải Phòng', 'Ship đến địa chỉ vào sáng ngày 23/5', '469000.00', '', 1494283674),
(7, 1, 5, 'GoO', 'GoO@gmail.com', '01215345336', 'Hải Phòng', 'Ship vào sáng mai.', '70000.00', '', 1494183674),
(8, 0, 0, 'Linh', 'ling@yahoo.com', '098798787', 'hai Phong', 'ship', '69000.00', '', 1494342674),
(9, 1, 0, 'Nhi', 'nhi@test.com', '0987654321', 'Long Biên - Hà Nội', 'Gửi hàng đến địa chỉ trên vào ngày mai', '200000.00', '', 1493983674),
(10, 0, 0, 'VIP User', 'test@gmail.com', '1234567890', 'Hải Phòng', 'Ship free', '450000.00', '', 1493983674),
(11, 0, 0, 'test', 'test@gmail.com', '1234567890', 'Hải Phòng', 'TESE', '300000.00', '', 1494383674),
(12, 0, 6, 'Nguyen An', 'khachhang1@gmail.com', '01201212222', 'Thủy Nguyên - Hải Phòng', 'SHIP TO', '169000.00', '', 1494407353),
(13, 1, 8, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '0928817228', 'Hà Nội', 'giao hàng thì gọi cho tôi', '740000.00', '', 1697462226),
(14, 0, 0, 'Nguyen Văn D', '2202@gmail.com', '0986127896', 'Thái Bình', 'ko có', '1760000.00', '', 1699175643);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `email`, `password`, `phone`, `address`, `created`) VALUES
(6, 'Nguyen An', 'khachhang1@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '01201212222', 'Thủy Nguyên - Hải Phòng', 2147483647),
(5, 'User', 'user@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '01215345336', 'Hải Phòng', 2147483647),
(7, 'TEST@gmail.com', 'TEST@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '01215345336', 'Hải Phòng', 2017),
(8, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '25d55ad283aa400af464c76d713c07ad', '0928817228', 'Hà Nội', 2023);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
 ADD PRIMARY KEY (`catalog_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
 ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
 ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
 ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catalog`
--
ALTER TABLE `catalog`
MODIFY `catalog_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=130;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
