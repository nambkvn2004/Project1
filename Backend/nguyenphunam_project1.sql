-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 16, 2023 lúc 12:08 PM
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
-- Cơ sở dữ liệu: `nguyenphunam_project1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binh_luan`
--

CREATE TABLE `binh_luan` (
  `MaBL` int(11) NOT NULL,
  `MaKH` int(11) DEFAULT NULL,
  `MaSP` int(11) DEFAULT NULL,
  `Tieu_de` varchar(100) DEFAULT NULL,
  `Noi_dung` text DEFAULT NULL,
  `Ngay_BL` datetime NOT NULL DEFAULT current_timestamp(),
  `Trang_thai` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ct_hoa_don`
--

CREATE TABLE `ct_hoa_don` (
  `MaHD` int(11) NOT NULL,
  `MaSPCT` int(11) NOT NULL,
  `So_luong_ban` int(11) NOT NULL,
  `Gia_ban` float NOT NULL,
  `Tra_lai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinh_anh`
--

CREATE TABLE `hinh_anh` (
  `MaHA` int(11) NOT NULL,
  `Ten_file_anh` varchar(50) NOT NULL,
  `Trang_thai` tinyint(4) NOT NULL,
  `MaSP` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don`
--

CREATE TABLE `hoa_don` (
  `MaHD` int(11) NOT NULL,
  `Ngay_HD` datetime NOT NULL DEFAULT current_timestamp(),
  `Hoten_nguoinhan` varchar(100) DEFAULT NULL,
  `Diachi_nguoinhan` varchar(200) DEFAULT NULL,
  `Dienthoai_nguoinhan` varchar(30) DEFAULT NULL,
  `Diachi_email` varchar(50) DEFAULT NULL,
  `Ngay_giao_hang` datetime DEFAULT NULL,
  `Trang_thai` tinyint(4) NOT NULL,
  `MaKH` int(11) DEFAULT NULL,
  `MaPTVC` int(11) DEFAULT NULL,
  `MaPTTT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `MaKH` int(11) NOT NULL,
  `Ho_ten` varchar(100) DEFAULT NULL,
  `Tai_khoan` varchar(50) NOT NULL,
  `Mat_khau` varchar(32) DEFAULT NULL,
  `Dia_chi` varchar(200) DEFAULT NULL,
  `Dien_thoai` varchar(30) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `Ngay_sinh` datetime DEFAULT NULL,
  `Ngay_cap_nhat` datetime DEFAULT current_timestamp(),
  `Gioi_tinh` tinyint(4) DEFAULT NULL,
  `Tich_diem` int(11) NOT NULL,
  `Trang_thai` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kich_co`
--

CREATE TABLE `kich_co` (
  `MaKC` int(11) NOT NULL,
  `Ten_KC` varchar(50) NOT NULL,
  `Trang_thai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_he`
--

CREATE TABLE `lien_he` (
  `MaLH` int(11) NOT NULL,
  `Tieu_de` varchar(200) NOT NULL,
  `Dia_chi` varchar(250) NOT NULL,
  `Dien_thoai` varchar(250) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Facebook` varchar(100) DEFAULT NULL,
  `Sky` varchar(100) DEFAULT NULL,
  `Logo` varchar(50) DEFAULT NULL,
  `Trang_thai` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_san_pham`
--

CREATE TABLE `loai_san_pham` (
  `MaLSP` int(11) NOT NULL,
  `Ten_loai` varchar(50) NOT NULL,
  `Trang_thai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mau_sac`
--

CREATE TABLE `mau_sac` (
  `MaMS` int(11) NOT NULL,
  `Ten_MS` varchar(50) NOT NULL,
  `Trang_thai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phan_hoi`
--

CREATE TABLE `phan_hoi` (
  `MaPH` int(11) NOT NULL,
  `Tieu_de` varchar(200) NOT NULL,
  `Noi_dung` text NOT NULL,
  `Ngay_gui` datetime NOT NULL DEFAULT current_timestamp(),
  `Email` varchar(100) NOT NULL,
  `Facebook` varchar(100) DEFAULT NULL,
  `Sky` varchar(100) DEFAULT NULL,
  `Tra_loi` text DEFAULT NULL,
  `Trang_thai` tinyint(4) DEFAULT NULL,
  `Da_xem` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pt_thanh_toan`
--

CREATE TABLE `pt_thanh_toan` (
  `MaPTTT` int(11) NOT NULL,
  `Ten_PTTT` varchar(50) NOT NULL,
  `Trang_thai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pt_van_chuyen`
--

CREATE TABLE `pt_van_chuyen` (
  `MaPTVC` int(11) NOT NULL,
  `Ten_PTVC` varchar(50) DEFAULT NULL,
  `Do_dai` int(11) DEFAULT NULL,
  `Don_gia` float NOT NULL,
  `Trang_thai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quan_tri`
--

CREATE TABLE `quan_tri` (
  `Tai_khoan` varchar(50) NOT NULL,
  `Mat_khau` varchar(32) NOT NULL,
  `Trang_thai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `MaSP` int(11) NOT NULL,
  `Ten_sp` varchar(200) NOT NULL,
  `Mo_ta` varchar(250) DEFAULT NULL,
  `Thong_tin` text DEFAULT NULL,
  `Gia_nhap` float NOT NULL,
  `Gia_cu` float DEFAULT NULL,
  `Gia_moi` float DEFAULT NULL,
  `Luot_xem` int(11) NOT NULL,
  `Ngay_cap_nhat` datetime DEFAULT current_timestamp(),
  `Trang_thai` tinyint(4) DEFAULT NULL,
  `MaLSP` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham_ct`
--

CREATE TABLE `san_pham_ct` (
  `MaSPCT` int(11) NOT NULL,
  `So_luong` int(11) NOT NULL,
  `MaMS` int(11) DEFAULT NULL,
  `MaKC` int(11) DEFAULT NULL,
  `MaSP` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tin_tuc`
--

CREATE TABLE `tin_tuc` (
  `MaTT` int(11) NOT NULL,
  `Tieu_de` varchar(200) NOT NULL,
  `Mo_ta` varchar(250) DEFAULT NULL,
  `Noi_dung` text DEFAULT NULL,
  `Loai_tin` varchar(100) NOT NULL,
  `Ngay_dang_tin` datetime NOT NULL,
  `Ngay_cap_nhat` datetime NOT NULL DEFAULT current_timestamp(),
  `Hinh_anh` varchar(50) NOT NULL,
  `Trang_thai` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD PRIMARY KEY (`MaBL`);

--
-- Chỉ mục cho bảng `ct_hoa_don`
--
ALTER TABLE `ct_hoa_don`
  ADD PRIMARY KEY (`MaHD`,`MaSPCT`);

--
-- Chỉ mục cho bảng `hinh_anh`
--
ALTER TABLE `hinh_anh`
  ADD PRIMARY KEY (`MaHA`);

--
-- Chỉ mục cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`MaHD`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Chỉ mục cho bảng `kich_co`
--
ALTER TABLE `kich_co`
  ADD PRIMARY KEY (`MaKC`);

--
-- Chỉ mục cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`MaLH`);

--
-- Chỉ mục cho bảng `loai_san_pham`
--
ALTER TABLE `loai_san_pham`
  ADD PRIMARY KEY (`MaLSP`);

--
-- Chỉ mục cho bảng `mau_sac`
--
ALTER TABLE `mau_sac`
  ADD PRIMARY KEY (`MaMS`);

--
-- Chỉ mục cho bảng `phan_hoi`
--
ALTER TABLE `phan_hoi`
  ADD PRIMARY KEY (`MaPH`);

--
-- Chỉ mục cho bảng `pt_thanh_toan`
--
ALTER TABLE `pt_thanh_toan`
  ADD PRIMARY KEY (`MaPTTT`);

--
-- Chỉ mục cho bảng `pt_van_chuyen`
--
ALTER TABLE `pt_van_chuyen`
  ADD PRIMARY KEY (`MaPTVC`);

--
-- Chỉ mục cho bảng `quan_tri`
--
ALTER TABLE `quan_tri`
  ADD PRIMARY KEY (`Tai_khoan`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`MaSP`);

--
-- Chỉ mục cho bảng `san_pham_ct`
--
ALTER TABLE `san_pham_ct`
  ADD PRIMARY KEY (`MaSPCT`),
  ADD UNIQUE KEY `MaMS` (`MaMS`),
  ADD UNIQUE KEY `MaSP` (`MaSP`),
  ADD UNIQUE KEY `MaKC` (`MaKC`);

--
-- Chỉ mục cho bảng `tin_tuc`
--
ALTER TABLE `tin_tuc`
  ADD PRIMARY KEY (`MaTT`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
