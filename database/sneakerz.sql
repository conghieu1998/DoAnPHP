-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 03, 2020 lúc 05:02 AM
-- Phiên bản máy phục vụ: 10.1.39-MariaDB
-- Phiên bản PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doanphp`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `level`, `created`) VALUES
(1, 'khoa', 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 0, 2147483647),
(2, 'Mod đz', 'mod@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1, 2147483647),
(3, 'khoacoii', 'shynkid98@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 0, 1591094278);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `sort_order` tinyint(4) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `description`, `parent_id`, `sort_order`, `created`) VALUES
(1, 'Thời trang', '', 0, 1, '2017-04-22 05:35:21'),
(2, 'Bán chạy', '', 0, 2, '2017-04-22 05:35:48'),
(3, 'Khuyến mại', '', 0, 3, '2017-04-22 05:35:59'),
(4, 'Tin tức', '', 0, 4, '2017-04-22 05:36:13'),
(5, 'Giỏ hàng', '', 0, 6, '2017-04-22 05:36:49'),
(6, 'Liên hệ', '', 0, 5, '2017-04-22 05:37:02'),
(7, 'Sneaker', '', 1, 1, '2017-04-22 05:37:23'),
(8, 'Clothes', '', 1, 2, '2017-04-22 05:37:36'),
(9, 'Phụ Kiện', '', 1, 3, '2017-04-22 05:37:50'),
(10, 'Adidas', '', 7, 1, '2017-04-22 09:08:19'),
(11, 'Nike', '', 7, 2, '2017-04-22 09:08:36'),
(12, 'New Balance', '', 7, 3, '2017-04-22 09:09:01'),
(13, 'Vans', '', 7, 4, '2017-04-22 09:09:14'),
(14, 'Puma', '', 7, 5, '2017-04-22 09:09:31'),
(15, 'Brand 1', '', 8, 1, '2017-04-22 09:09:46'),
(16, 'Brand 2', '', 8, 2, '2017-04-22 09:10:10'),
(17, 'Brand 3', '', 8, 3, '2017-04-22 09:23:39'),
(18, 'Brand 4', '', 8, 4, '2017-04-22 09:23:57'),
(19, 'Balo', '', 9, 1, '2017-04-22 09:25:55'),
(20, 'Nón', '', 9, 2, '2017-04-22 09:26:21'),
(21, 'Vớ', '', 9, 4, '2017-04-22 09:26:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `transaction_id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `qty` int(100) NOT NULL DEFAULT '0',
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id`, `transaction_id`, `product_id`, `qty`, `amount`, `status`) VALUES
(21, 17, 57, 1, '722500.00', 0),
(20, 16, 50, 1, '637500.00', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `catalog_id`, `name`, `content`, `price`, `discount`, `image_link`, `image_list`, `view`, `buyed`, `rate_total`, `rate_count`, `created`) VALUES
(49, 10, 'NMD R1 Triple White', '<p>Fullbox N.M.D R1 Triple White. Đế boost đ&agrave;n hồi &ecirc;m ch&acirc;n. Ph&ugrave; hợp: nam nữ, đi học, đi l&agrave;m, tập gym. Size: 36-44. Chất liệu: Vải dệt Primeknit. Giao h&agrave;ng to&agrave;n quốc. Bảo h&agrave;nh 3 th&aacute;ng. Đổi trả dễ d&agrave;ng.</p>\r\n', '1190000.00', 297500, 'adidas-nmd3.jpg', '[\"adidas-nmd11.jpg\"]', 3, 0, 4, 1, 1591095436),
(50, 10, 'Superstar Running White', '<p>Fullbox Superstar Trắng. Điểm nhấn: mũi gi&agrave;y, tem v&agrave;ng. Ph&ugrave; hợp: nam nữ, đi học, đi l&agrave;m, hoạt động thể thao. Size: 36-44. Chất liệu: Da Trơn. Giao h&agrave;ng to&agrave;n quốc. Bảo h&agrave;nh 3 th&aacute;ng. Đổi trả dễ d&agrave;ng.</p>\r\n', '750000.00', 112500, 'adidas-super-star2.jpg', '[\"adidas-super-star11.jpg\"]', 4, 2, 4, 1, 1591095586),
(51, 10, 'Stan Smith Fairway', '<p>Fullbox Stan Smith Trắng G&oacute;t Xanh. Ph&ugrave; hợp: nam nữ, đi học, đi l&agrave;m, hoạt động thể thao. Size: 36-44. Chất liệu: Da. Giao h&agrave;ng to&agrave;n quốc. Bảo h&agrave;nh 3 th&aacute;ng. Đổi trả dễ d&agrave;ng. Streetwear, trẻ trung năng động.</p>\r\n', '790000.00', 118500, 'adidas-stan-smith2.jpg', '[\"adidas-stan-smith11.jpg\"]', 1, 0, 4, 1, 1591095649),
(52, 11, 'Air Force 1 Low GS Triple White', '<p>Fullbox Air Force 1 (AF1) Trắng. Đ&ocirc;i gi&agrave;y phải c&oacute;. Ph&ugrave; hợp: nam nữ, đi học, đi l&agrave;m, hoạt động thể thao. Size: 36-44. Chất liệu: Da. Giao h&agrave;ng to&agrave;n quốc. Bảo h&agrave;nh 3 th&aacute;ng. Đổi trả dễ d&agrave;ng. Streetwear, trẻ trung năng động.</p>\r\n', '790000.00', 118500, 'nike-air-force2.jpg', '[\"nike-air-force11.jpg\"]', 2, 1, 4, 1, 1591095714),
(53, 11, 'Air Jordan 1 x Off-White x Retro High OG White', '<p>Gi&agrave;y thể thao Nam Nữ m&agrave;u Trắng. Phong c&aacute;ch streetwear trẻ trung năng động gắn liền với d&ograve;ng gi&agrave;y iconic n&agrave;y. H&agrave;ng mới về Full box. Giao h&agrave;ng to&agrave;n quốc. Bảo h&agrave;nh 3 th&aacute;ng. Đổi trả dễ d&agrave;ng khi mua Gi&agrave;y Sneakers Air Jordan 1 x O.F.F-W.H.I.T.E x Retro High OG White 2018 Nam Nữ Trắng Trainers Unisex in White.</p>\r\n', '1590000.00', 397500, 'nike-jordan2.jpg', '[\"nike-jordan11.jpg\"]', 1, 0, 4, 1, 1591096026),
(54, 11, 'Air Jordan 1 x Off-White x Retro High OG Chicago', '<p>Gi&agrave;y thể thao Nam Nữ m&agrave;u Đỏ. Phong c&aacute;ch streetwear trẻ trung năng động gắn liền với d&ograve;ng gi&agrave;y iconic n&agrave;y. H&agrave;ng mới về Full box. Giao h&agrave;ng to&agrave;n quốc. Bảo h&agrave;nh 3 th&aacute;ng. Đổi trả dễ d&agrave;ng khi mua Gi&agrave;y Sneakers Air Jordan 1 x O.F.F-W.H.I.T.E x Retro High OG Chicago Sample Trainers Unisex in Red.</p>\r\n', '1590000.00', 397500, 'nike-jordan-red2.jpg', '[\"nike-jordan-red11.jpg\"]', 2, 0, 4, 1, 1591096088),
(55, 12, 'New Balance 996 Grey', '<p>Fullbox New Balance 996 X&aacute;m. Gi&agrave;y phản quang. Ph&ugrave; hợp: nam nữ, đi học, đi l&agrave;m, hoạt động thể thao. Size: 36-44. Chất liệu: Da lộn. Giao h&agrave;ng to&agrave;n quốc. Bảo h&agrave;nh 3 th&aacute;ng. Đổi trả dễ d&agrave;ng. Streetwear, trẻ trung năng động.</p>\r\n', '1190000.00', 297500, 'nb-996-grey3.jpg', '[\"nb-996-grey11.jpg\"]', 0, 0, 4, 1, 1591096182),
(56, 12, 'New Balance 996 Navy', '<p>Fullbox New Balance 996 Xanh Navy. Gi&agrave;y phản quang. Ph&ugrave; hợp: nam nữ, đi học, đi l&agrave;m, hoạt động thể thao. Size: 36-44. Chất liệu: Da lộn. Giao h&agrave;ng to&agrave;n quốc. Bảo h&agrave;nh 3 th&aacute;ng. Đổi trả dễ d&agrave;ng. Streetwear, trẻ trung năng động.</p>\r\n', '1190000.00', 297500, 'nb-996-navy2.jpg', '[\"nb-996-navy11.jpg\"]', 2, 0, 4, 1, 1591096246),
(57, 13, 'Old Skool Classic Black', '<p>Fullbox Old Skool Black / Đen. Ph&ugrave; hợp: nam nữ, đi học, đi l&agrave;m, hoạt động thể thao. Size: 36-44. Chất liệu: Canvas. Giao h&agrave;ng to&agrave;n quốc. Bảo h&agrave;nh 3 th&aacute;ng. Đổi trả dễ d&agrave;ng. Streetwear, trẻ trung năng động.</p>\r\n', '850000.00', 127500, 'vans-classic11.jpg', '[\"vans-classic21.jpg\"]', 1, 0, 6, 2, 1591096341),
(58, 13, 'Classic Slip-On ‘Black White’', '<p>Fullbox Classic Slip-On &lsquo;Black White&rsquo; Gi&agrave;y Lười. Ph&ugrave; hợp: nam nữ, đi học, đi l&agrave;m, hoạt động thể thao. Size: 36-44. Chất liệu: Canvas. Giao h&agrave;ng to&agrave;n quốc. Bảo h&agrave;nh 3 th&aacute;ng. Đổi trả dễ d&agrave;ng. Streetwear, trẻ trung năng động.</p>\r\n', '790000.00', 118500, 'vans-slip-on11.jpg', '[\"vans-slip-on21.jpg\"]', 0, 0, 4, 1, 1591096412),
(59, 13, 'Slip-On Checkerboard', '<p>Fullbox Slip On Checkerboard Gi&agrave;y Lười. Ph&ugrave; hợp: nam nữ, đi học, đi l&agrave;m, hoạt động thể thao. Size: 36-44. Chất liệu: Canvas. Giao h&agrave;ng to&agrave;n quốc. Bảo h&agrave;nh 3 th&aacute;ng. Đổi trả dễ d&agrave;ng. Streetwear, trẻ trung năng động.</p>\r\n', '790000.00', 118500, 'vans-old-school2.jpg', '[\"vans-old-school11.jpg\"]', 1, 0, 4, 1, 1591096453),
(60, 14, 'Puma x BTS Court Star White Green', '<p>Gi&agrave;y thể thao Nam Nữ m&agrave;u Trắng Xanh. Đại diện nổi bậc cho phong c&aacute;ch trẻ trung hiện đại từ c&aacute;c nh&oacute;m &ldquo;K-Pop&rdquo;. H&agrave;ng mới về Full box. Giao h&agrave;ng to&agrave;n quốc. Bảo h&agrave;nh 3 th&aacute;ng. Đổi trả dễ d&agrave;ng khi mua Gi&agrave;y Sneakers Puma x BTS Court Star Nam Nữ Trắng Xanh Da Trơn Trainers Unisex in White/Black.</p>\r\n', '1190000.00', 297500, 'puma-_classic-green2.jpg', '[\"puma-_classic-green1.jpg\"]', 2, 0, 4, 1, 1591096568),
(61, 14, 'BTS Court Star White Black', '<p>Gi&agrave;y thể thao Nam Nữ m&agrave;u Trắng, Đen. Đại diện nổi bậc cho phong c&aacute;ch trẻ trung hiện đại từ c&aacute;c nh&oacute;m &ldquo;K-Pop&rdquo;. H&agrave;ng mới về Full box. Giao h&agrave;ng to&agrave;n quốc. Bảo h&agrave;nh 3 th&aacute;ng. Đổi trả dễ d&agrave;ng khi mua Gi&agrave;y Sneakers Puma x BTS Court Star Nam Nữ Trắng/Đen Da Trơn Trainers Unisex in White/Black.</p>\r\n', '1190000.00', 297500, 'puma-_classic-black.jpg', '[\"puma-_classic-black1.jpg\"]', 3, 0, 4, 1, 1591096684),
(62, 21, 'Pack 3 Vớ Cotton Cổ Ngắn Free Size', '<ul>\r\n	<li>Thiết kế tỉ mỉ &ocirc;m s&aacute;t ch&acirc;n bảo đảm độ co gi&atilde;n tốt.</li>\r\n	<li>Chất mỏng, tho&aacute;ng m&aacute;t v&agrave; thấm h&uacute;t mồ h&ocirc;i.</li>\r\n	<li>Phối m&agrave;u khỏe khoắn, trung t&iacute;nh, th&iacute;ch hợp với nhiều loại gi&agrave;y.</li>\r\n	<li>Chất liệu: 95% Cotton mềm mịn, tho&aacute;ng m&aacute;t, thấm mồ h&ocirc;i kết hợp 5% Spandex gi&uacute;p ch&acirc;n thoải m&aacute;i dễ chịu.</li>\r\n	<li>K&iacute;ch cỡ: Free size ph&ugrave; hợp với size gi&agrave;y từ 36 &ndash; 43</li>\r\n	<li>Xuất xứ: Việt Nam.</li>\r\n</ul>\r\n', '129000.00', 0, 'vo11.jpg', '[]', 0, 0, 4, 1, 1591147831),
(63, 21, 'Vớ Họa Tiết Cổ Cao Cotton nhiều màu', '<ul>\r\n	<li>M&agrave;u sắc phổ biến: X&aacute;m, Trắng</li>\r\n	<li>Thiết kế tỉ mỉ &ocirc;m s&aacute;t ch&acirc;n bảo đảm độ&nbsp;<strong>co gi&atilde;n tốt</strong>.</li>\r\n	<li>Chất mỏng, tho&aacute;ng m&aacute;t v&agrave;&nbsp;<strong>thấm h&uacute;t mồ h&ocirc;i</strong>.</li>\r\n	<li><strong>Phối m&agrave;u khỏe khoắn</strong>, trung t&iacute;nh, th&iacute;ch hợp với nhiều loại gi&agrave;y.</li>\r\n	<li>Chất liệu:&nbsp;<strong>95% Cotton mềm mịn</strong>, tho&aacute;ng m&aacute;t, thấm mồ h&ocirc;i kết hợp 5% Spandex gi&uacute;p ch&acirc;n thoải m&aacute;i dễ chịu</li>\r\n	<li>K&iacute;ch cỡ: Free size ph&ugrave; hợp với size gi&agrave;y từ 36 &ndash; 43</li>\r\n	<li>Xuất xứ:&nbsp;<strong>Việt Nam</strong>.</li>\r\n</ul>\r\n', '129000.00', 0, 'vo1.png', '[]', 1, 0, 4, 1, 1591147907),
(64, 20, 'Casual Bucket Hat White', '<p><strong>N&oacute;n bucket Adidas m&agrave;u Trắng, kiểu d&aacute;ng thể thao</strong>. Ph&ugrave; hợp:&nbsp; Nam Nữ, đi du lịch, đi chơi, hoạt động thể thao. Chất liệu: Vải. Giao h&agrave;ng to&agrave;n quốc. Bảo h&agrave;nh 3 th&aacute;ng. Đổi trả dễ d&agrave;ng. Streetwear, trẻ trung năng động.</p>\r\n', '290000.00', 0, 'non1.png', '[]', 1, 0, 4, 1, 1591148085),
(65, 20, 'Sport Snapback White', '<p><strong>N&oacute;n thể thao Nike m&agrave;u Trắng. Kiểu d&aacute;ng thể thao</strong>. Ph&ugrave; hợp:&nbsp; Nam Nữ, đi du lịch, đi chơi, hoạt động thể thao. Chất liệu: Vải. Giao h&agrave;ng to&agrave;n quốc. Bảo h&agrave;nh 3 th&aacute;ng. Đổi trả dễ d&agrave;ng. Streetwear, trẻ trung năng động.</p>\r\n', '290000.00', 0, 'non21.png', '[]', 1, 0, 4, 1, 1591148195),
(66, 19, 'Waist Bag Multicolors Union Jack', '<p><strong>T&uacute;i bao tử Supreme nhiều m&agrave;u, kiểu d&aacute;ng thể thao</strong>. Ph&ugrave; hợp: Nam Nữ, đi du lịch, đi chơi, hoạt động thể thao. Chất liệu: Vải. Giao h&agrave;ng to&agrave;n quốc. Bảo h&agrave;nh 3 th&aacute;ng. Đổi trả dễ d&agrave;ng. Streetwear, trẻ trung năng động.</p>\r\n', '390000.00', 0, 'tui1.jpg', '[]', 2, 0, 4, 1, 1591148604),
(67, 19, 'Waist Bag Multicolors', '<p><strong>T&uacute;i bao tử Supreme nhiều m&agrave;u kiểu d&aacute;ng thể thao</strong>. Ph&ugrave; hợp: Nam Nữ, đi du lịch, đi chơi, hoạt động thể thao. Chất liệu: Vải. Giao h&agrave;ng to&agrave;n quốc. Bảo h&agrave;nh 3 th&aacute;ng. Đổi trả dễ d&agrave;ng. Streetwear, trẻ trung năng động.</p>\r\n\r\n<p>Kh&ocirc;ng&nbsp;</p>\r\n', '390000.00', 0, 'tui21.jpg', '[]', 1, 1, 4, 1, 1591148708);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `name`, `image_link`, `link`, `sort_order`, `created`) VALUES
(1, '1', 'banner1.jpg', 'http://localhost/doanphp/superstar-running-white-p50', 1, '2017-04-25 15:24:43'),
(4, '2', 'banner2.jpg', 'http://localhost/doanphp/air-jordan-1-x-off-white-x-retro-high-og-chicago-p54', 2, '2017-04-25 15:36:41'),
(5, '3', 'banner3.jpg', 'http://localhost/doanphp/air-force-1-low-gs-triple-white-p52', 3, '2017-04-25 15:37:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transaction`
--

INSERT INTO `transaction` (`id`, `status`, `user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `message`, `amount`, `payment`, `created`) VALUES
(16, 1, 8, 'Trần Đỗ Anh Khoa', 'shynkid2k15@gmail.com', '0931449695', 'Tân Bình', '1', '637500.00', '', 1591152971),
(17, 0, 8, 'Trần Đỗ Anh Khoa', 'shynkid2k15@gmail.com', '0931449695', 'Tân Bình', '23', '722500.00', '', 1591153003);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `phone`, `address`, `created`) VALUES
(8, 'Trần Đỗ Anh Khoa', 'shynkid2k15@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '0931449695', 'Tân Bình', 2020);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
