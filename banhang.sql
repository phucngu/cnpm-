-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 05, 2021 lúc 04:07 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `banhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `idbinhluan` int(11) NOT NULL,
  `idsach` int(11) NOT NULL,
  `noidung` varchar(2000) NOT NULL,
  `iduser` int(20) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `ngay` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`idbinhluan`, `idsach`, `noidung`, `iduser`, `ten`, `ngay`) VALUES
(85, 53, '', 10, 'admin', '2021-12-04'),
(86, 46, '', 42, 'an1211', '2021-12-04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `idhd` int(11) NOT NULL,
  `idsanpham` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`idhd`, `idsanpham`, `soluong`, `dongia`) VALUES
(19, 11, 1, 87000),
(20, 5, 1, 50000),
(21, 5, 1, 50000),
(21, 13, 1, 20000),
(22, 8, 1, 20000),
(26, 7, 1, 20000),
(26, 11, 1, 87000),
(26, 16, 10, 450000),
(29, 9, 1, 39000),
(29, 11, 10, 870000),
(30, 5, 1, 50000),
(30, 11, 10, 870000),
(31, 5, 1, 50000),
(31, 16, 1, 45000),
(32, 5, 10, 500000),
(33, 10, 1, 30000),
(34, 5, 10, 500000),
(35, 8, 2, 40000),
(36, 12, 1, 20000),
(37, 8, 1, 20000),
(38, 10, 1, 30000),
(39, 18, 3, 102000),
(40, 16, 2, 14000000),
(41, 31, 2, 20000000),
(41, 39, 1, 230000),
(42, 16, 2, 14000000),
(42, 17, 1, 4500000),
(43, 16, 3, 21000000),
(44, 46, 1, 210000),
(45, 49, 1, 170000),
(45, 51, 1, 150000),
(46, 56, 1, 150000),
(47, 53, 2, 420000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `tendanhmuc` varchar(200) NOT NULL,
  `anh` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tendanhmuc`, `anh`) VALUES
(17, 'Áo Nam', 'image/bg-images/8d9382e6e721554721ef5693f3996a31.jpg'),
(18, 'Phụ Kiện', 'image/bg-images/TBD0100212201A.jpg'),
(19, 'Áo Nữ', 'image/bg-images/Ao.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `idhoadon` int(20) NOT NULL,
  `idkhachhang` int(50) NOT NULL,
  `ngay` date NOT NULL,
  `ten` varchar(50) NOT NULL,
  `sdt` int(50) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `ghichu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`idhoadon`, `idkhachhang`, `ngay`, `ten`, `sdt`, `diachi`, `ghichu`) VALUES
(45, 42, '2021-12-04', 'an', 2147483647, '124123', '123'),
(46, 10, '2021-12-04', ':v', 13, '2', ''),
(47, 42, '2021-12-04', '123', 123, '1233123', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `idkhachhang` int(20) NOT NULL,
  `idhanghoa` int(11) NOT NULL,
  `anh` mediumtext NOT NULL,
  `tenhang` varchar(50) NOT NULL,
  `dongia` int(50) NOT NULL,
  `soluong` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`idkhachhang`, `idhanghoa`, `anh`, `tenhang`, `dongia`, `soluong`) VALUES
(1, 2, '3', '4', 5, 6),
(1, 2, '3', '4', 5, 6),
(1, 2, '3', '4', 5, 6),
(1, 2, '3', '4', 5, 6),
(1, 2, '3', '4', 5, 6),
(1, 2, '3', '4', 5, 6),
(10, 3, '3', '3', 3, 10),
(10, 5, 'image/bg-images/klee6.png', 'Klee  Chap 1', 40000, 0),
(10, 5, 'image/bg-images/klee6.png', 'Klee  Chap 1', 40000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hanghoa`
--

CREATE TABLE `hanghoa` (
  `id` int(11) NOT NULL,
  `tenhang` varchar(200) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` int(11) NOT NULL,
  `iddanhmuc` int(11) NOT NULL,
  `anh` mediumtext NOT NULL,
  `mota` varchar(2000) NOT NULL,
  `giamgia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hanghoa`
--

INSERT INTO `hanghoa` (`id`, `tenhang`, `soluong`, `dongia`, `iddanhmuc`, `anh`, `mota`, `giamgia`) VALUES
(42, 'Áo nỉ nam', 1, 100000, 17, 'image/bg-images/8d9382e6e721554721ef5693f3996a31.jpg', '<p>&aacute;o</p>\r\n', 0.01),
(44, 'Áo phông nữ', 2, 100000, 19, 'image/bg-images/Ao.jpg', '<p>&aacute;o</p>\r\n', 0.3),
(45, 'Áo', 1, 140000, 19, 'image/bg-images/3b1a98c9e6d8c8c1edd92a682696f9d4.jpg_600x600q80.jpg', '<p>&aacute;o đẹp vler</p>\r\n', 0.02),
(46, 'Áo thun nam', 9, 210000, 17, 'image/bg-images/8d9382e6e721554721ef5693f3996a31.jpg', '<p>+&Aacute;o thun nam đẹp</p>\r\n\r\n<p>+Chất liệu tốt<br />\r\n+Cam kết sản phẩm giống h&igrave;nh<br />\r\n+Ho&agrave;n tiền nếu kh&ocirc;ng giống h&igrave;nh</p>\r\n', 0),
(47, 'dây chuyền trái tim', 8, 170000, 18, 'image/bg-images/5f59efe6b63173e1e2767bd1a50ee994.jpg', '<p>+D&acirc;y chuyền phụ kiện đẹp<br />\r\n+Chất lượng oke<br />\r\n+Ph&ugrave; hợp để phối đồ</p>\r\n', 0),
(48, 'Áo phông nữ mới', 5, 240000, 19, 'image/bg-images/91feb65162df766213b07c98811fed48.jpg', '<p>+&Aacute;o ph&ocirc;ng nữ đẹp<br />\r\n+Chất lượng tốt</p>\r\n\r\n<p>+Cam kết giống h&igrave;nh</p>\r\n', 0.1),
(49, 'Áo phông', 19, 170000, 17, 'image/bg-images/aoquan.jpg', '<p>+&Aacute;o đẹp</p>\r\n\r\n<p>+Chất lượng ok</p>\r\n', 0.3),
(50, 'Dây chuyền xịn', 5, 430000, 18, 'image/bg-images/D6_3_Mobile.jpg', '<p>D&acirc;y chuyền đẹp&nbsp;</p>\r\n', 0),
(51, 'Áo adidas', 2, 150000, 17, 'image/bg-images/nham-biet-quan-ao-adidas-nam-nu-chinh-hang-1-jpg-1581585886-13022020162446.jpg', '<p>&aacute;o</p>\r\n', 0),
(53, 'Áo khoác ngoài ', 2, 210000, 17, 'image/bg-images/shopđànẵng16_optimized.jpg', '<p>&aacute;o</p>\r\n', 0),
(54, 'phụ kiện quần', 5, 70000, 18, 'image/bg-images/quan-jean-nam-ong-rong-9.jpg', '<p>đồ trang tr&iacute; quần đẹp</p>\r\n', 0),
(56, 'Dây chuyền cỏ 4 lá', 98, 150000, 18, 'image/bg-images/day-chuyen-bac-nu-mat-co-4-la-may-man-DCN0284-10.jpg', '<p>+d&acirc;y chuyển đẹp</p>\r\n\r\n<p>+chất lượng tốt</p>\r\n\r\n<p>+đảm bảo như ảnh</p>\r\n', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oder`
--

CREATE TABLE `oder` (
  `iduser` int(11) NOT NULL,
  `ngay` date NOT NULL,
  `stt` int(11) NOT NULL,
  `totalprice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetail`
--

CREATE TABLE `orderdetail` (
  `idoder` int(11) NOT NULL,
  `idproduct` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `tendn` varchar(50) NOT NULL,
  `matkhau` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `vaitro` varchar(20) NOT NULL COMMENT '1: admin, 0: member'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `tendn`, `matkhau`, `email`, `vaitro`) VALUES
(10, 'admin', '202cb962ac59075b964b07152d234b70', 'An', 'admin'),
(38, 'ok3', '202cb962ac59075b964b07152d234b70', '1234@gmail.com', 'khach'),
(39, 'anga', '202cb962ac59075b964b07152d234b70', 'ok@gmail.com', 'khach'),
(41, 'ok123', '202cb962ac59075b964b07152d234b70', '123@gmail.com', 'khach'),
(42, 'an1211', '202cb962ac59075b964b07152d234b70', 'an@gmail.com', 'khach');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` int(15) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`idbinhluan`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`idhoadon`);

--
-- Chỉ mục cho bảng `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `idbinhluan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `idhoadon` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `hanghoa`
--
ALTER TABLE `hanghoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
