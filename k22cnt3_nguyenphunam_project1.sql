-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 10, 2023 lúc 01:44 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `k22cnt3_nguyenphunam_project1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `MAKH` int(10) NOT NULL,
  `HO_TEN` varchar(100) NOT NULL,
  `TAI_KHOAN` varchar(50) NOT NULL,
  `MAT_KHAU` varchar(50) NOT NULL,
  `DIA_CHI` varchar(150) NOT NULL,
  `DIEN_THOAI` varchar(20) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `NGAY_SINH` date NOT NULL,
  `GIOI_TINH` varchar(20) NOT NULL,
  `TRANG_THAI` tinyint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`MAKH`, `HO_TEN`, `TAI_KHOAN`, `MAT_KHAU`, `DIA_CHI`, `DIEN_THOAI`, `EMAIL`, `NGAY_SINH`, `GIOI_TINH`, `TRANG_THAI`) VALUES
(1, 'Nguyễn Phú Nam', 'nambk', 'nambkvn2004', 'Hà Nội', '0762446125', 'nambkvn2004@gmail.com', '2004-07-26', 'Nam', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quan_tri`
--

CREATE TABLE `quan_tri` (
  `TAI_KHOAN` varchar(50) NOT NULL,
  `MAT_KHAU` varchar(50) NOT NULL,
  `TRANG_THAI` tinyint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `quan_tri`
--

INSERT INTO `quan_tri` (`TAI_KHOAN`, `MAT_KHAU`, `TRANG_THAI`) VALUES
('nam267', 'nam2672004', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`MAKH`);

--
-- Chỉ mục cho bảng `quan_tri`
--
ALTER TABLE `quan_tri`
  ADD PRIMARY KEY (`TAI_KHOAN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
