-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 28, 2023 lúc 08:12 AM
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
-- Cơ sở dữ liệu: `trungtamanhngu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bangcap`
--

CREATE TABLE `bangcap` (
  `idbangcap` int(11) NOT NULL,
  `capdo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bangcap`
--

INSERT INTO `bangcap` (`idbangcap`, `capdo`) VALUES
(1, 'TKT'),
(2, 'TEFL'),
(3, 'CELTA'),
(4, 'DELTA'),
(5, 'TESL'),
(6, 'TESOL');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietlophoc`
--

CREATE TABLE `chitietlophoc` (
  `idchitiet` int(11) NOT NULL,
  `idlop` int(11) NOT NULL,
  `idkhoahoc` int(11) NOT NULL,
  `siso` int(11) NOT NULL,
  `conlai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietlophoc`
--

INSERT INTO `chitietlophoc` (`idchitiet`, `idlop`, `idkhoahoc`, `siso`, `conlai`) VALUES
(1, 1, 1, 20, 20),
(2, 2, 2, 20, 20),
(3, 3, 3, 20, 20),
(4, 4, 4, 20, 20),
(5, 5, 5, 20, 20),
(6, 6, 6, 20, 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chungchi`
--

CREATE TABLE `chungchi` (
  `idchungchi` int(11) NOT NULL,
  `chungchi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chungchi`
--

INSERT INTO `chungchi` (`idchungchi`, `chungchi`) VALUES
(1, 'IELTS'),
(2, 'TOEIC'),
(3, 'CEFR-B1'),
(4, 'CEFR-B2'),
(5, 'CEFR-C1'),
(6, 'CEFR-C2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaovien`
--

CREATE TABLE `giaovien` (
  `idgv` int(11) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `ngaysinh` date NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sdt` varchar(10) NOT NULL,
  `bangcap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `giaovien`
--

INSERT INTO `giaovien` (`idgv`, `ten`, `ngaysinh`, `diachi`, `email`, `sdt`, `bangcap`) VALUES
(1, 'Trần Văn Trung', '1975-09-20', 'Cần Thơ', 'trung345@gmail.com', '0235416587', 4),
(2, 'Nguyễn Trọng Tính', '1978-11-02', 'Hậu Giang', 'tinh678@gmail.com', '0546128756', 1),
(3, 'Trần Văn Thanh', '1975-09-20', 'Cần Thơ', 'thanh345@gmail.com', '0235416894', 6),
(4, 'Nguyễn Trọng Quang', '1978-11-02', 'Hậu Giang', 'Quang78@gmail.com', '0546128894', 3),
(5, 'Trần Văn Băng', '1975-09-20', 'Cần Thơ', 'bang345@gmail.com', '0235416895', 2),
(6, 'Nguyễn Trọng Vinh', '1978-11-02', 'Hậu Giang', 'vinh678@gmail.com', '0546128652', 5),
(7, 'Trần Văn Linh', '1975-09-20', 'Cần Thơ', 'linh345@gmail.com', '0235416784', 1),
(8, 'Nguyễn Trọng Quân', '1978-11-02', 'Hậu Giang', 'Quan78@gmail.com', '0546128851', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocvien`
--

CREATE TABLE `hocvien` (
  `idhv` int(11) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `ngaysinh` date NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sdt` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hocvien`
--

INSERT INTO `hocvien` (`idhv`, `ten`, `ngaysinh`, `diachi`, `email`, `sdt`) VALUES
(1, 'Trần Thanh Mới', '2001-09-20', 'Cần Thơ', 'thanhmoivip123456@gmail.com', '0854172887'),
(2, 'Trần Văn Trung', '2001-09-20', 'Cần thơ', 'trungb343565654@gmail.com', '0854172887'),
(3, 'Trần Trung Quang', '2001-09-20', 'Cần Thơ', 'quang123456@gmail.com', '0854172564'),
(4, 'Trần Văn Huyên', '2001-09-20', 'Cần thơ', 'huyenb343565654@gmail.com', '0854894561'),
(5, 'Trần Thanh Tâm', '2001-09-20', 'Cần Thơ', 'tamvip123456@gmail.com', '0854172875'),
(6, 'Trần Văn Tính', '2001-09-20', 'Cần thơ', 'tinhsub343565654@gmail.com', '0854172564'),
(7, 'Trần Trung Quân', '2001-09-20', 'Cần Thơ', 'quan123456@gmail.com', '0854172872'),
(8, 'Trần Văn Nguyên', '2001-09-20', 'Cần thơ', 'nguyenb343565654@gmail.com', '0854894893'),
(9, 'tra thanh moi', '0000-00-00', 'cantho', '123', '123'),
(10, 'tra thanh moi', '2020-08-08', 'cantho', '123', '123'),
(11, 'tran thanh moi', '2023-08-21', 'ca mau', 'thanh@gmail.com', '087451254'),
(12, 'tran thanh moi', '2023-08-21', 'ca mau', 'thanh@gmail.com', '087451254'),
(13, 'tran thanh moi', '2023-08-01', 'ca mau', 'thanh@gmail.com', '0854172887'),
(14, 'Tran hai dang', '2023-08-01', 'ca mau', 'dang@gmail.com', '0984564214'),
(15, 'Trần Văn Lùn', '2013-03-05', 'Cà Mau', 'moi12@gmail.com', '0254123586'),
(16, 'Trần Văn Lùn', '2013-03-05', 'Cà Mau', 'moi12@gmail.com', '0254123586'),
(17, 'Trần văn Bảo', '2002-09-17', 'Cần thơ', 'moiskubidu@gmail.com', '0254789456'),
(18, 'Trần minh nhựt', '2002-03-22', 'ca mau', 'nhut@gmail.com', '0854126879'),
(19, 'Trần Kha', '2023-09-03', 'Cần thơ', 'kha@gmail.com', '0254126789'),
(20, 'Trần ku bo', '2023-09-11', 'Cần thơ', 'kubo@gmail.com', '0254123645'),
(21, 'Trần Kha', '2023-09-03', 'Cần thơ', 'kha@gmail.com', '0254126789'),
(22, 'Trung Quân', '2002-02-03', 'Cần thơ', 'quanbaku@gmail.com', '0254126456'),
(23, 'Trung Quân', '2002-02-03', 'Cần thơ', 'quanbaku@gmail.com', '0254126456'),
(24, 'Trung Quân', '2002-02-03', 'Cần thơ', 'quanbaku@gmail.com', '0254126456'),
(25, 'Trung Quân', '2002-02-03', 'Cần thơ', 'quanbaku@gmail.com', '0254126456'),
(26, 'kabu', '2023-09-18', 'cần thơ', 'kabu@gmail.com', '0214564587'),
(27, 'Trần trung tinh', '2023-09-11', 'Cần thơ', 'tinh@gmail.com', '0245657889'),
(28, 'Trung', '2023-09-05', 'Cần thơ', 'thanh@gmail.com', '0854172887'),
(29, 'Khubu', '2023-09-03', 'cần thơ', 'moib@gmail.com', '0214564587'),
(30, 'Trần Thanh Bảo', '2023-09-01', 'cần thơ', 'bao@gmail.com', '0214526578');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoahoc`
--

CREATE TABLE `khoahoc` (
  `idkhoahoc` int(11) NOT NULL,
  `tenkh` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `chitiet` text NOT NULL,
  `chungchi` int(11) NOT NULL,
  `nhom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khoahoc`
--

INSERT INTO `khoahoc` (`idkhoahoc`, `tenkh`, `image`, `chitiet`, `chungchi`, `nhom`) VALUES
(1, 'Khóa 1', '', '', 1, 1),
(2, 'Khóa 2', '', '', 2, 1),
(3, 'Khóa 3', '', '', 3, 2),
(4, 'Khóa 4', '', '', 4, 2),
(5, 'Khóa 5', '', '', 5, 1),
(6, 'Khóa 6', '', '', 6, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichhoc`
--

CREATE TABLE `lichhoc` (
  `idlop` int(11) NOT NULL,
  `thu` int(11) NOT NULL,
  `giohoc` varchar(50) NOT NULL,
  `idphong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lichhoc`
--

INSERT INTO `lichhoc` (`idlop`, `thu`, `giohoc`, `idphong`) VALUES
(1, 1, '8h30-10h00', 1),
(2, 1, '18h30-20h00', 2),
(3, 2, '8h30-10h00', 3),
(1, 3, '18h00-19h30', 1),
(2, 3, '19h00-20h30', 2),
(4, 3, '18h00-19h30', 4),
(5, 3, '18h00-19h30', 5),
(3, 4, '18h30-20h00', 3),
(4, 5, '19h00-20h30', 4),
(5, 5, '19h00-20h30', 5),
(6, 5, '19h00-20h30', 6),
(6, 6, '18h30-20h00', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop`
--

CREATE TABLE `lop` (
  `idlop` int(11) NOT NULL,
  `tenlop` varchar(50) NOT NULL,
  `batdau` date NOT NULL,
  `ketthuc` date NOT NULL,
  `giaovien` int(11) NOT NULL,
  `khoahoc` int(11) NOT NULL,
  `hocphi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lop`
--

INSERT INTO `lop` (`idlop`, `tenlop`, `batdau`, `ketthuc`, `giaovien`, `khoahoc`, `hocphi`) VALUES
(1, 'Lớp 1', '2023-08-12', '2023-11-20', 6, 1, '5.000.000 VND'),
(2, 'Lớp 2', '2023-08-12', '2023-11-20', 8, 2, '5.000.000 VND'),
(3, 'Lớp 3', '2023-08-12', '2023-11-20', 5, 3, '5.000.000 VND'),
(4, 'Lớp 4', '2023-08-12', '2023-11-20', 7, 4, '5.000.000 VND'),
(5, 'Lớp 5', '2023-08-12', '2023-11-20', 3, 5, '5.000.000 VND'),
(6, 'Lớp 6', '2023-08-12', '2023-11-20', 8, 6, '5.000.000 VND');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhom`
--

CREATE TABLE `nhom` (
  `id` int(11) NOT NULL,
  `nhomtuoi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhom`
--

INSERT INTO `nhom` (`id`, `nhomtuoi`) VALUES
(1, 'Người lớn'),
(2, 'Trẻ em');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong`
--

CREATE TABLE `phong` (
  `id` int(11) NOT NULL,
  `maphong` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phong`
--

INSERT INTO `phong` (`id`, `maphong`) VALUES
(1, 'P101'),
(2, 'P102'),
(3, 'P103'),
(4, 'P104'),
(5, 'P201'),
(6, 'P202'),
(7, 'P203'),
(8, 'P204');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tkgiaovien`
--

CREATE TABLE `tkgiaovien` (
  `id` int(11) NOT NULL,
  `idgv` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `phanquyen` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tkgiaovien`
--

INSERT INTO `tkgiaovien` (`id`, `idgv`, `username`, `pass`, `phanquyen`) VALUES
(1, 1, 'moi456', 'moi456', '0'),
(2, 2, 'tinh456', 'tinh456', '1'),
(3, 3, 'thanh456', 'thanh456', '1'),
(4, 4, 'quang456', 'quang456', '1'),
(5, 5, 'bang456', 'bang456', '1'),
(6, 6, 'vinh456', 'vinh456', '1'),
(7, 7, 'linh456', 'linh456', '1'),
(8, 8, 'quan456', 'quan456', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tkhocvien`
--

CREATE TABLE `tkhocvien` (
  `id` int(11) NOT NULL,
  `idhv` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `phanquyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tkhocvien`
--

INSERT INTO `tkhocvien` (`id`, `idhv`, `username`, `pass`, `phanquyen`) VALUES
(1, 1, 'moi123', 'moi123', 2),
(2, 5, 'tam123', 'tam123', 2),
(3, 3, 'quang123', 'quang123', 2),
(4, 4, 'huyen123', 'huyen123', 2),
(5, 7, 'quan123', 'quan123', 2),
(6, 8, 'nguyen123', 'nguyen123', 2),
(7, 2, 'trung123', 'trung123', 2),
(8, 6, 'tinh123', 'tinh123', 2),
(9, 13, 'moita', 'moi123', 2),
(10, 14, 'moiddk46', 'moi123', 2),
(11, 17, 'moiskubidu', 'moi456', 2),
(12, 18, 'moi12', 'nhut789', 2),
(13, 19, 'khacu', 'kh123', 2),
(14, 22, 'quankutue', 'quan123', 2),
(15, 26, 'kabu', 'kabu123', 2),
(16, 27, 'tinhtrung', 'tinhtrung123', 2),
(17, 29, 'ka', 'ka123', 2),
(18, 30, 'mavasi', 'bao123', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tuan`
--

CREATE TABLE `tuan` (
  `id` int(11) NOT NULL,
  `thu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tuan`
--

INSERT INTO `tuan` (`id`, `thu`) VALUES
(1, 'Thứ 2'),
(2, 'Thứ 3'),
(3, 'Thứ 4'),
(4, 'Thứ 5'),
(5, 'Thứ 6'),
(6, 'Thứ 7');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bangcap`
--
ALTER TABLE `bangcap`
  ADD PRIMARY KEY (`idbangcap`);

--
-- Chỉ mục cho bảng `chitietlophoc`
--
ALTER TABLE `chitietlophoc`
  ADD PRIMARY KEY (`idchitiet`,`idlop`,`idkhoahoc`),
  ADD KEY `idlop` (`idlop`),
  ADD KEY `idkhoahoc` (`idkhoahoc`);

--
-- Chỉ mục cho bảng `chungchi`
--
ALTER TABLE `chungchi`
  ADD PRIMARY KEY (`idchungchi`);

--
-- Chỉ mục cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  ADD PRIMARY KEY (`idgv`),
  ADD KEY `bangcap` (`bangcap`);

--
-- Chỉ mục cho bảng `hocvien`
--
ALTER TABLE `hocvien`
  ADD PRIMARY KEY (`idhv`);

--
-- Chỉ mục cho bảng `khoahoc`
--
ALTER TABLE `khoahoc`
  ADD PRIMARY KEY (`idkhoahoc`),
  ADD KEY `chungchi` (`chungchi`),
  ADD KEY `nhom` (`nhom`);

--
-- Chỉ mục cho bảng `lichhoc`
--
ALTER TABLE `lichhoc`
  ADD PRIMARY KEY (`thu`,`idlop`) USING BTREE,
  ADD KEY `idlop` (`idlop`),
  ADD KEY `idphong` (`idphong`);

--
-- Chỉ mục cho bảng `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`idlop`),
  ADD KEY `khoahoc` (`khoahoc`),
  ADD KEY `giaovien` (`giaovien`);

--
-- Chỉ mục cho bảng `nhom`
--
ALTER TABLE `nhom`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tkgiaovien`
--
ALTER TABLE `tkgiaovien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idgv` (`idgv`);

--
-- Chỉ mục cho bảng `tkhocvien`
--
ALTER TABLE `tkhocvien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idhv` (`idhv`);

--
-- Chỉ mục cho bảng `tuan`
--
ALTER TABLE `tuan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bangcap`
--
ALTER TABLE `bangcap`
  MODIFY `idbangcap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `chitietlophoc`
--
ALTER TABLE `chitietlophoc`
  MODIFY `idchitiet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `chungchi`
--
ALTER TABLE `chungchi`
  MODIFY `idchungchi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  MODIFY `idgv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `hocvien`
--
ALTER TABLE `hocvien`
  MODIFY `idhv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `khoahoc`
--
ALTER TABLE `khoahoc`
  MODIFY `idkhoahoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `lop`
--
ALTER TABLE `lop`
  MODIFY `idlop` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `nhom`
--
ALTER TABLE `nhom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `phong`
--
ALTER TABLE `phong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tkgiaovien`
--
ALTER TABLE `tkgiaovien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tkhocvien`
--
ALTER TABLE `tkhocvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `tuan`
--
ALTER TABLE `tuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietlophoc`
--
ALTER TABLE `chitietlophoc`
  ADD CONSTRAINT `chitietlophoc_ibfk_1` FOREIGN KEY (`idlop`) REFERENCES `lop` (`idlop`),
  ADD CONSTRAINT `chitietlophoc_ibfk_2` FOREIGN KEY (`idkhoahoc`) REFERENCES `khoahoc` (`idkhoahoc`);

--
-- Các ràng buộc cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  ADD CONSTRAINT `giaovien_ibfk_1` FOREIGN KEY (`bangcap`) REFERENCES `bangcap` (`idbangcap`);

--
-- Các ràng buộc cho bảng `khoahoc`
--
ALTER TABLE `khoahoc`
  ADD CONSTRAINT `khoahoc_ibfk_1` FOREIGN KEY (`chungchi`) REFERENCES `chungchi` (`idchungchi`),
  ADD CONSTRAINT `khoahoc_ibfk_2` FOREIGN KEY (`nhom`) REFERENCES `nhom` (`id`);

--
-- Các ràng buộc cho bảng `lichhoc`
--
ALTER TABLE `lichhoc`
  ADD CONSTRAINT `lichhoc_ibfk_1` FOREIGN KEY (`thu`) REFERENCES `tuan` (`id`),
  ADD CONSTRAINT `lichhoc_ibfk_2` FOREIGN KEY (`idlop`) REFERENCES `lop` (`idlop`),
  ADD CONSTRAINT `lichhoc_ibfk_3` FOREIGN KEY (`idphong`) REFERENCES `phong` (`id`);

--
-- Các ràng buộc cho bảng `lop`
--
ALTER TABLE `lop`
  ADD CONSTRAINT `lop_ibfk_1` FOREIGN KEY (`khoahoc`) REFERENCES `khoahoc` (`idkhoahoc`),
  ADD CONSTRAINT `lop_ibfk_2` FOREIGN KEY (`giaovien`) REFERENCES `giaovien` (`idgv`);

--
-- Các ràng buộc cho bảng `tkgiaovien`
--
ALTER TABLE `tkgiaovien`
  ADD CONSTRAINT `tkgiaovien_ibfk_1` FOREIGN KEY (`idgv`) REFERENCES `giaovien` (`idgv`);

--
-- Các ràng buộc cho bảng `tkhocvien`
--
ALTER TABLE `tkhocvien`
  ADD CONSTRAINT `tkhocvien_ibfk_1` FOREIGN KEY (`idhv`) REFERENCES `hocvien` (`idhv`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
