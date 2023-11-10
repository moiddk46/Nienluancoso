-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 10, 2023 lúc 09:22 AM
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
-- Cơ sở dữ liệu: `oceanenglishcenter`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bangcap`
--

CREATE TABLE `bangcap` (
  `IDBC` int(11) NOT NULL,
  `TENBC` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bangcap`
--

INSERT INTO `bangcap` (`IDBC`, `TENBC`) VALUES
(1, 'TKT'),
(2, 'TEFL'),
(3, 'CELTA'),
(4, 'DELTA\r\n'),
(5, 'TESL'),
(6, 'TESOL');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietlophoc`
--

CREATE TABLE `chitietlophoc` (
  `IDLOP` int(11) NOT NULL,
  `IDPHONG` int(11) NOT NULL,
  `SISOLOP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietlophoc`
--

INSERT INTO `chitietlophoc` (`IDLOP`, `IDPHONG`, `SISOLOP`) VALUES
(1, 1, 15),
(2, 2, 16),
(3, 5, 15),
(4, 6, 16),
(5, 7, 15),
(6, 8, 16),
(7, 3, 16);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chucvu`
--

CREATE TABLE `chucvu` (
  `IDCV` int(11) NOT NULL,
  `TENCV` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chucvu`
--

INSERT INTO `chucvu` (`IDCV`, `TENCV`) VALUES
(1, 'NHAN VIEN'),
(2, 'GIAO VIEN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chungchi`
--

CREATE TABLE `chungchi` (
  `IDCC` int(11) NOT NULL,
  `TENCC` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chungchi`
--

INSERT INTO `chungchi` (`IDCC`, `TENCC`) VALUES
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
  `IDGV` int(11) NOT NULL,
  `IDCV` int(11) NOT NULL,
  `IDBC` int(11) NOT NULL,
  `TENGV` varchar(100) NOT NULL,
  `NGAYSINH` date NOT NULL,
  `GIOITINH` enum('NAM','NU') NOT NULL,
  `QUEQUAN` varchar(100) NOT NULL,
  `EMAIL` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `giaovien`
--

INSERT INTO `giaovien` (`IDGV`, `IDCV`, `IDBC`, `TENGV`, `NGAYSINH`, `GIOITINH`, `QUEQUAN`, `EMAIL`) VALUES
(1, 1, 2, 'TRAN THANH MOI', '2002-08-10', 'NAM', 'CA MAU', 'MOI@GMAIL.COM'),
(4, 2, 2, 'TRAN THANH MINH', '2002-08-10', 'NAM', 'CA MAU', 'MOI12@GMAIL.COM'),
(8, 1, 1, 'Trần Thanh Mới', '2023-10-18', 'NAM', 'CA MAU', 'thanh123@gmail.com'),
(10, 2, 5, 'Trần Kha', '0000-00-00', 'NAM', 'Hà nội', 'kha@gmail.com'),
(11, 1, 1, 'Trần Văn', '2001-09-22', 'NAM', 'Trà Vinh', 'moi123@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocphi`
--

CREATE TABLE `hocphi` (
  `IDKH` int(11) NOT NULL,
  `HOCPHI` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hocphi`
--

INSERT INTO `hocphi` (`IDKH`, `HOCPHI`) VALUES
(1, 7000000),
(2, 3000000),
(3, 2500000),
(4, 3000000),
(5, 2500000),
(6, 3000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocvien`
--

CREATE TABLE `hocvien` (
  `IDHV` int(11) NOT NULL,
  `TENHV` varchar(100) NOT NULL,
  `NGAYSINH` date NOT NULL,
  `GIOITINH` enum('NAM','NU') NOT NULL,
  `QUEQUAN` varchar(100) NOT NULL,
  `EMAIL` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hocvien`
--

INSERT INTO `hocvien` (`IDHV`, `TENHV`, `NGAYSINH`, `GIOITINH`, `QUEQUAN`, `EMAIL`) VALUES
(1, 'Trần Trung Tính', '2002-08-30', 'NAM', 'CA MAU', 'TINH123@GMAIL.COM'),
(2, 'CAO NGUYỄN MINH QUÂN', '2002-03-22', 'NAM', 'DONG THAP', 'QUAN123@GMAIL.COM'),
(3, 'CAO MINH TRANG', '2002-08-10', 'NU', 'CA MAU', 'TRANG123@GMAIL.COM'),
(4, 'VAN THOAI MY', '2002-03-22', 'NU', 'DONG THAP', 'MY123@GMAIL.COM'),
(8, 'Trần Thanh Mới', '2023-10-18', 'NU', 'CA MAU', 'thanh123@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoahoc`
--

CREATE TABLE `khoahoc` (
  `IDKH` int(11) NOT NULL,
  `IDCC` int(11) NOT NULL,
  `TENKH` varchar(100) NOT NULL,
  `HINHANH` varchar(100) NOT NULL,
  `CHITIET` text NOT NULL,
  `NGAYBD` date NOT NULL,
  `NGAYKT` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khoahoc`
--

INSERT INTO `khoahoc` (`IDKH`, `IDCC`, `TENKH`, `HINHANH`, `CHITIET`, `NGAYBD`, `NGAYKT`) VALUES
(1, 1, 'KHÓA IELTS', 'khoahoc1.jpg', '<h2 style=\"line-height: 1.5; text-align: center;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">LUYỆN THI CHỨNG CHỈ IELTS CẦN THƠ</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">IELTS (Test Of English as a Foreign Language) l&agrave; b&agrave;i kiểm tra năng lực tiếng Anh quốc tế th&ocirc;ng qua 4 kỹ năng: Nghe (listening), n&oacute;i (speaking), đọc (reading), viết (writing) nhằm đ&aacute;nh gi&aacute; mức độ sử dụng th&agrave;nh thạo tiếng Anh của th&iacute; sinh trong m&ocirc;i trường đại học, học thuật, hoặc nhập cư nước ngo&agrave;i. Chứng chỉ IELTS được chấp nhận bởi nhiều tổ chức học thuật, gi&aacute;o dục v&agrave; doanh nghiệp lớn tr&ecirc;n to&agrave;n thế giới, điểm IELTS được coi l&agrave; một trong những y&ecirc;u&nbsp; cầu để x&eacute;t tuyển v&agrave;o hầy hết c&aacute;c trường đại học v&agrave; cao đẳng ở Mỹ.</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">IELTS được nghi&ecirc;n cứu v&agrave; ph&aacute;t triển bởi (Educational Testing Service Viện Khảo Th&iacute; Gi&aacute;o Dục Hoa Kỳ) v&agrave; chứng chỉ n&agrave;y c&oacute; gi&aacute; trị sử dụng trong 2 năm. Hiện nay, c&oacute; hơn 10.000 trường đại học, cao đẳng v&agrave; c&aacute;c học viện tại hơn 130 quốc gia chấp nhận sử dụng điểm IELTS l&agrave;m điều kiện x&eacute;t tuyển học sinh du học. Bởi vậy, nếu bạn đang c&oacute; nhu cầu du học, định cư hoặc l&agrave;m việc ở nước ngo&agrave;i th&igrave; h&atilde;y c&acirc;n nhắc học v&agrave; thi lấy bằng IELTS.</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">C&aacute;c dạng đề v&agrave; h&igrave;nh thức thi IELTS</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">T&ugrave;y v&agrave;i đối tượng tham dự m&agrave; b&agrave;i thi IELTS c&oacute; c&aacute;c dạng đề kh&aacute;c nhau như:</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- IELTS Primary: L&agrave; b&agrave;i thi được thiết kế d&agrave;nh ti&ecirc;ng cho học sinh tiểu học đ&aacute;nh gi&aacute; khả năng sử dụng tiếng Anh n&acirc;ng cao v&agrave; suy luận của trẻ ngay từ l&uacute;c nhỏ.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- IELTS Junior: L&agrave; b&agrave;i thi được thiết kế d&agrave;nh ri&ecirc;ng cho học sinh THCS v&agrave; đầu THPT đ&aacute;nh gi&aacute; khả năng sử dụng tiếng Anh học thuật (academic English) v&agrave; tiếng Anh thường thức (social English).</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">H&igrave;nh thức thi:</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- IELTS iBT: L&agrave; b&agrave;i thi IELTS thế hệ mới sử dụng internet để chuyển đề thi từ ETS đến trung t&acirc;m tổ chức dự thi. Đề thi IELTS iBT ra đời đang dần thay thế ho&agrave;n to&agrave;n dạng thi tr&ecirc;n giấy (IELTS PBT) v&agrave; dạng thi tr&ecirc;n m&aacute;y t&iacute;nh (CBT).</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- IELTS CPT: L&agrave; b&agrave;i thi IELTS tr&ecirc;n m&aacute;y t&iacute;nh, th&iacute; sinh kh&ocirc;ng được ph&eacute;p ghi ch&uacute; khi đang dự thi.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- IELTS PBT: L&agrave; b&agrave;i thi IELTS tr&ecirc;n giấy truyền thống sử dụng b&uacute;t ch&igrave; hầu như kh&ocirc;ng c&ograve;n sử dụng nữa trừ một số khu vực kh&ocirc;ng c&oacute; đủ điều kiện tổ chức thi IELTS iBP v&agrave; IELTS CPT.</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">Chuẩn bị cho kỳ thi IELTS</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Trước một kỳ thi quan trọng để thay đổi m&ocirc;i trường học tập th&igrave; v&ocirc; số c&acirc;u hỏi thắc mắc được đưa ra l&agrave; điều kh&ocirc;ng thể tr&aacute;nh khỏi.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Điểm IELTS sẽ được chấm như thế n&agrave;o ?</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Thang điểm IELTS quy đổi sang IELTS như thế n&agrave;o ?</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- C&aacute;ch l&agrave;m b&agrave;i thi IELTS tr&ecirc;n m&aacute;y t&iacute;nh</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">&hellip; v&agrave; một số c&acirc;u hỏi kh&aacute;c</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Tuy nhi&ecirc;n, để chuẩn bị cho kỳ thi đạt được điểm tối đa th&igrave; việc x&acirc;y dựng mục ti&ecirc;u r&otilde; r&agrave;ng lại l&agrave; điều v&ocirc; c&ugrave;ng cần thiết.</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">B&agrave;i thi IELTS gi&uacute;p bạn chứng minh được năng lực sử dụng tiếng Anh của bạn. Trong b&agrave;i kiểm tra bạn c&oacute; thể đọc một đoạn văn từ s&aacute;ch gi&aacute;o khoa v&agrave; nghe một b&agrave;i giảng, sau đ&oacute; sẽ theo h&igrave;nh thức n&oacute;i hoặc viết để trả lời giống như trong lớp học thực tế. B&agrave;i kiểm tra gồm 100% c&aacute;c c&acirc;u hỏi v&agrave; nhiệm vụ li&ecirc;n quan đến học thuật.&nbsp;</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">V&igrave; sao n&ecirc;n chọn luyện thi IELTS tại OCEAN Cần Thơ</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Với hơn 13 năm kinh nghiệm, OCEAN Cần Thơ đ&atilde; trở th&agrave;nh trung t&acirc;m đ&agrave;o tạo tiếng anh hiện đại, uy t&iacute;n v&agrave; chất lượng cho học vi&ecirc;n Cần Thơ v&agrave; c&aacute;c v&ugrave;ng l&acirc;n cận Đồng bằng s&ocirc;ng Cửu Long. Đội ngũ giảng vi&ecirc;n th&igrave; th&acirc;n thiện, t&acirc;m huyết v&agrave; d&agrave;y dặn kinh nghiệm trong việc giảng dạy c&aacute;c chứng chỉ thi chuẩn Quốc tế. Trung t&acirc;m cam kết chuẩn đầu ra IELTS, học vi&ecirc;n khi ho&agrave;n th&agrave;nh kho&aacute; học chắc chắn sẽ đạt điểm bằng hoặc cao hơn nguyện vọng đặt ra.</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Học vi&ecirc;n ho&agrave;n to&agrave;n c&oacute; thể chủ động kh&ocirc;ng bị g&ograve; b&oacute; về mặt thời gian, lịch học năng động, m&ocirc;i trường học tập hiện đại với c&aacute;c cơ sở vật chất đạt chuẩn quốc tế. C&oacute; kh&ocirc;ng gian ri&ecirc;ng để luyện tập c&aacute;c kỹ năng Nghe &ndash; N&oacute;i &ndash; Đọc &ndash; Viết cho từng học vi&ecirc;n. M&ocirc; h&igrave;nh học tập 1-1 được &aacute;p dụng trong những năm gần đ&acirc;y đ&atilde; thực sự mang đến rất nhiều hữu &iacute;ch cho c&aacute;c bạn học vi&ecirc;n chưa đủ tự tin, một thầy một tr&ograve; học vi&ecirc;n c&oacute; thể hỏi ngay vấn đề thắc mắc v&agrave; giảng vi&ecirc;n sẽ giảng giải một c&aacute;ch chi tiết từ đ&oacute; học vi&ecirc;n nắm bắt được kiến thức vững hơn trong buổi học.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- M&ocirc;i trường học tập năng động</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Giảng vi&ecirc;n gi&agrave;u kinh nghiệm v&agrave; nhiệt huyết, giảng vi&ecirc;n luyện n&oacute;i l&agrave; giảng vi&ecirc;n người bản xứ</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Nhiều bộ đề chuẩn quốc tế sẽ gi&uacute;p học vi&ecirc;n c&oacute; trải nghiệm thực tế trước kỳ thi thật</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">OCEAN Cần Thơ sẽ gi&uacute;p bạn học IELTS tốt hơn mỗi ng&agrave;y</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Ngo&agrave;i m&ocirc;i trường học tập năng động, cơ sở vật chất hiện đại, trẻ trung v&agrave; lu&ocirc;n mang lại kh&ocirc;ng kh&iacute; học tập hứng khởi cho học vi&ecirc;n th&igrave; gi&aacute;o tr&igrave;nh học phong ph&uacute; v&agrave; chất lượng giảng dạy chỉ c&oacute; tại OCEAN Cần Thơ sẽ mang lại trải nghiệm mới mẻ cho học vi&ecirc;n khi đến với trung t&acirc;m.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Đưa ra lộ tr&igrave;nh học tập v&agrave; &ocirc;n luyện theo ti&ecirc;u chuẩn Quốc tế một c&aacute;ch chi tiết v&agrave; r&otilde; r&agrave;ng</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Phương ph&aacute;p học thực tiễn, r&egrave;n luyện tư duy về ng&ocirc;n ngữ cho học vi&ecirc;n</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- T&agrave;i liệu được bi&ecirc;n soạn kỹ c&agrave;ng v&agrave; độc quyền chỉ c&oacute; tại OCEAN Cần Thơ</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Kỹ năng Nghe &ndash; N&oacute;i &ndash; Đọc &ndash; Viết sẽ được ph&aacute;t triển đồng đều bởi c&aacute;c giảng vi&ecirc;n đầy kinh nghiệm từ trong nước đến giảng vi&ecirc;n bản xứ</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Đến với trung t&acirc;m học vi&ecirc;n c&ograve;n c&oacute; th&ecirc;m một đặt quyền đ&oacute; ch&iacute;nh l&agrave; được học lại miễn ph&iacute; nếu kết quả kh&ocirc;ng đạt mục ti&ecirc;u nguyện vọng ban đầu đ&atilde; đề ra.</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">G&oacute;c học tập hiện đại phục vụ cho luyện thi IELTS</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Việc trang bị đầy đủ kiến thức cho c&aacute;c bạn th&ocirc;i l&agrave; chưa đủ, Trung t&acirc;m Anh Ngữ OCEAN Cần Thơ c&ograve;n đầu tư mạnh mẽ v&agrave;o trang thiết bị, cơ sở hạ tầng nhằm phục vụ tốt hơn trong c&ocirc;ng t&aacute;c dạy v&agrave; học. Một kh&ocirc;ng gian tho&aacute;ng, đẹp v&agrave; đầy đủ hơn về c&ocirc;ng cụ học tập, gi&uacute;p bạn học ho&agrave;n th&agrave;nh giấc mơ chinh phục IELTS.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Kh&ocirc;ng gian học đạt chuẩn quốc tế</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- G&oacute;c học tập d&agrave;nh ri&ecirc;ng cho từng bạn</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Dụng cụ học tập trang bị đầy đủ</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Kh&ocirc;ng gian rộng r&atilde;i cho nhiều hoạt động học tập tại chỗ</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Ph&ograve;ng học khử khuẩn, an to&agrave;n tuyệt đối cho học vi&ecirc;n</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Th&acirc;n thiện như đang ở nh&agrave;</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">Luyện thi IELTS chủ động</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">IELTS l&agrave; một kh&oacute;a học thuộc chương tr&igrave;nh ACTIVE LEARNING. Học vi&ecirc;n sẽ ho&agrave;n to&agrave;n được quyết định về mặt thời gian của buổi học do đ&oacute; c&oacute; thể sắp xếp thời gian học sao cho ph&ugrave; hợp với quỹ thời gian của m&igrave;nh. Với m&ocirc; h&igrave;nh dạy v&agrave; học tiếng Anh to&agrave;n diện đầy đủ 4 kỹ năng Nghe &ndash; N&oacute;i &ndash; Đọc &ndash; Viết theo thể thức 1 thầy 1 tr&ograve; (one-on-one) học vi&ecirc;n sẽ được trau dồi đầy đủ kiến thức từ cơ bản đến n&acirc;ng cao theo lộ tr&igrave;nh được thiết kế r&otilde; r&agrave;ng v&agrave; chi tiết m&agrave; Trung t&acirc;m đưa ra.</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Đến với kh&oacute;a học IELTS Cần Thơ từ OCEAN, học vi&ecirc;n sẽ được tiếp x&uacute;c gi&aacute;o tr&igrave;nh cập nhật thường xuy&ecirc;n, b&aacute;m s&aacute;t đề thi Quốc tế. Hơn nữa, học vi&ecirc;n sẽ cần phải ho&agrave;n th&agrave;nh b&agrave;i kiểm tra định kỳ trước khi đến với bước tiếp theo trong lộ tr&igrave;nh học tập c&aacute; nh&acirc;n. Đồng thời, bạn c&ograve;n được thử sức với những kỳ thi thử m&agrave; Active Learning tổ chức để học vi&ecirc;n cọ x&aacute;t trước khi đối mặt với kỳ thi thật.</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Đăng k&yacute; kh&oacute;a học IELTS tại Cần Thơ từ Trung t&acirc;m Anh ngữ OCEAN để ho&agrave;n thiện hơn mỗi ng&agrave;y, tốt hơn mỗi ng&agrave;y v&agrave; giỏi hơn mỗi ng&agrave;y. V&agrave; đ&acirc;y, ch&iacute;nh l&agrave; ch&igrave;a kh&oacute;a mở ra c&aacute;nh cửa th&agrave;nh c&ocirc;ng cho bạn trong h&agrave;nh tr&igrave;nh sắp tới.</span></p>', '2023-08-17', '2023-11-09'),
(2, 2, 'KHÓA TOEIC', 'Khoahoc2.jpeg', '<h2 style=\"line-height: 1.5; text-align: center;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">LUYỆN THI CHỨNG CHỈ TOIEC CẦN THƠ</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">TOIEC (Test Of English as a Foreign Language) l&agrave; b&agrave;i kiểm tra năng lực tiếng Anh quốc tế th&ocirc;ng qua 4 kỹ năng: Nghe (listening), n&oacute;i (speaking), đọc (reading), viết (writing) nhằm đ&aacute;nh gi&aacute; mức độ sử dụng th&agrave;nh thạo tiếng Anh của th&iacute; sinh trong m&ocirc;i trường đại học, học thuật, hoặc nhập cư nước ngo&agrave;i. Chứng chỉ TOIEC được chấp nhận bởi nhiều tổ chức học thuật, gi&aacute;o dục v&agrave; doanh nghiệp lớn tr&ecirc;n to&agrave;n thế giới, điểm TOIEC được coi l&agrave; một trong những y&ecirc;u&nbsp; cầu để x&eacute;t tuyển v&agrave;o hầy hết c&aacute;c trường đại học v&agrave; cao đẳng ở Mỹ.</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">TOIEC được nghi&ecirc;n cứu v&agrave; ph&aacute;t triển bởi (Educational Testing Service Viện Khảo Th&iacute; Gi&aacute;o Dục Hoa Kỳ) v&agrave; chứng chỉ n&agrave;y c&oacute; gi&aacute; trị sử dụng trong 2 năm. Hiện nay, c&oacute; hơn 10.000 trường đại học, cao đẳng v&agrave; c&aacute;c học viện tại hơn 130 quốc gia chấp nhận sử dụng điểm TOIEC l&agrave;m điều kiện x&eacute;t tuyển học sinh du học. Bởi vậy, nếu bạn đang c&oacute; nhu cầu du học, định cư hoặc l&agrave;m việc ở nước ngo&agrave;i th&igrave; h&atilde;y c&acirc;n nhắc học v&agrave; thi lấy bằng TOIEC.</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">C&aacute;c dạng đề v&agrave; h&igrave;nh thức thi TOIEC</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">T&ugrave;y v&agrave;i đối tượng tham dự m&agrave; b&agrave;i thi TOIEC c&oacute; c&aacute;c dạng đề kh&aacute;c nhau như:</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- TOIEC Primary: L&agrave; b&agrave;i thi được thiết kế d&agrave;nh ti&ecirc;ng cho học sinh tiểu học đ&aacute;nh gi&aacute; khả năng sử dụng tiếng Anh n&acirc;ng cao v&agrave; suy luận của trẻ ngay từ l&uacute;c nhỏ.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- TOIEC Junior: L&agrave; b&agrave;i thi được thiết kế d&agrave;nh ri&ecirc;ng cho học sinh THCS v&agrave; đầu THPT đ&aacute;nh gi&aacute; khả năng sử dụng tiếng Anh học thuật (academic English) v&agrave; tiếng Anh thường thức (social English).</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">H&igrave;nh thức thi:</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- TOIEC iBT: L&agrave; b&agrave;i thi TOIEC thế hệ mới sử dụng internet để chuyển đề thi từ ETS đến trung t&acirc;m tổ chức dự thi. Đề thi TOIEC iBT ra đời đang dần thay thế ho&agrave;n to&agrave;n dạng thi tr&ecirc;n giấy (TOIEC PBT) v&agrave; dạng thi tr&ecirc;n m&aacute;y t&iacute;nh (CBT).</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- TOIEC CPT: L&agrave; b&agrave;i thi TOIEC tr&ecirc;n m&aacute;y t&iacute;nh, th&iacute; sinh kh&ocirc;ng được ph&eacute;p ghi ch&uacute; khi đang dự thi.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- TOIEC PBT: L&agrave; b&agrave;i thi TOIEC tr&ecirc;n giấy truyền thống sử dụng b&uacute;t ch&igrave; hầu như kh&ocirc;ng c&ograve;n sử dụng nữa trừ một số khu vực kh&ocirc;ng c&oacute; đủ điều kiện tổ chức thi TOIEC iBP v&agrave; TOIEC CPT.</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">Chuẩn bị cho kỳ thi TOIEC</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Trước một kỳ thi quan trọng để thay đổi m&ocirc;i trường học tập th&igrave; v&ocirc; số c&acirc;u hỏi thắc mắc được đưa ra l&agrave; điều kh&ocirc;ng thể tr&aacute;nh khỏi.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Điểm TOIEC sẽ được chấm như thế n&agrave;o ?</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Thang điểm TOIEC quy đổi sang TOIEC như thế n&agrave;o ?</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- C&aacute;ch l&agrave;m b&agrave;i thi TOIEC tr&ecirc;n m&aacute;y t&iacute;nh</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">&hellip; v&agrave; một số c&acirc;u hỏi kh&aacute;c</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Tuy nhi&ecirc;n, để chuẩn bị cho kỳ thi đạt được điểm tối đa th&igrave; việc x&acirc;y dựng mục ti&ecirc;u r&otilde; r&agrave;ng lại l&agrave; điều v&ocirc; c&ugrave;ng cần thiết.</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">B&agrave;i thi TOIEC gi&uacute;p bạn chứng minh được năng lực sử dụng tiếng Anh của bạn. Trong b&agrave;i kiểm tra bạn c&oacute; thể đọc một đoạn văn từ s&aacute;ch gi&aacute;o khoa v&agrave; nghe một b&agrave;i giảng, sau đ&oacute; sẽ theo h&igrave;nh thức n&oacute;i hoặc viết để trả lời giống như trong lớp học thực tế. B&agrave;i kiểm tra gồm 100% c&aacute;c c&acirc;u hỏi v&agrave; nhiệm vụ li&ecirc;n quan đến học thuật.&nbsp;</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">V&igrave; sao n&ecirc;n chọn luyện thi TOIEC tại OCEAN Cần Thơ</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Với hơn 13 năm kinh nghiệm, OCEAN Cần Thơ đ&atilde; trở th&agrave;nh trung t&acirc;m đ&agrave;o tạo tiếng anh hiện đại, uy t&iacute;n v&agrave; chất lượng cho học vi&ecirc;n Cần Thơ v&agrave; c&aacute;c v&ugrave;ng l&acirc;n cận Đồng bằng s&ocirc;ng Cửu Long. Đội ngũ giảng vi&ecirc;n th&igrave; th&acirc;n thiện, t&acirc;m huyết v&agrave; d&agrave;y dặn kinh nghiệm trong việc giảng dạy c&aacute;c chứng chỉ thi chuẩn Quốc tế. Trung t&acirc;m cam kết chuẩn đầu ra TOIEC, học vi&ecirc;n khi ho&agrave;n th&agrave;nh kho&aacute; học chắc chắn sẽ đạt điểm bằng hoặc cao hơn nguyện vọng đặt ra.</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Học vi&ecirc;n ho&agrave;n to&agrave;n c&oacute; thể chủ động kh&ocirc;ng bị g&ograve; b&oacute; về mặt thời gian, lịch học năng động, m&ocirc;i trường học tập hiện đại với c&aacute;c cơ sở vật chất đạt chuẩn quốc tế. C&oacute; kh&ocirc;ng gian ri&ecirc;ng để luyện tập c&aacute;c kỹ năng Nghe &ndash; N&oacute;i &ndash; Đọc &ndash; Viết cho từng học vi&ecirc;n. M&ocirc; h&igrave;nh học tập 1-1 được &aacute;p dụng trong những năm gần đ&acirc;y đ&atilde; thực sự mang đến rất nhiều hữu &iacute;ch cho c&aacute;c bạn học vi&ecirc;n chưa đủ tự tin, một thầy một tr&ograve; học vi&ecirc;n c&oacute; thể hỏi ngay vấn đề thắc mắc v&agrave; giảng vi&ecirc;n sẽ giảng giải một c&aacute;ch chi tiết từ đ&oacute; học vi&ecirc;n nắm bắt được kiến thức vững hơn trong buổi học.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- M&ocirc;i trường học tập năng động</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Giảng vi&ecirc;n gi&agrave;u kinh nghiệm v&agrave; nhiệt huyết, giảng vi&ecirc;n luyện n&oacute;i l&agrave; giảng vi&ecirc;n người bản xứ</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Nhiều bộ đề chuẩn quốc tế sẽ gi&uacute;p học vi&ecirc;n c&oacute; trải nghiệm thực tế trước kỳ thi thật</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">OCEAN Cần Thơ sẽ gi&uacute;p bạn học TOIEC tốt hơn mỗi ng&agrave;y</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Ngo&agrave;i m&ocirc;i trường học tập năng động, cơ sở vật chất hiện đại, trẻ trung v&agrave; lu&ocirc;n mang lại kh&ocirc;ng kh&iacute; học tập hứng khởi cho học vi&ecirc;n th&igrave; gi&aacute;o tr&igrave;nh học phong ph&uacute; v&agrave; chất lượng giảng dạy chỉ c&oacute; tại OCEAN Cần Thơ sẽ mang lại trải nghiệm mới mẻ cho học vi&ecirc;n khi đến với trung t&acirc;m.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Đưa ra lộ tr&igrave;nh học tập v&agrave; &ocirc;n luyện theo ti&ecirc;u chuẩn Quốc tế một c&aacute;ch chi tiết v&agrave; r&otilde; r&agrave;ng</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Phương ph&aacute;p học thực tiễn, r&egrave;n luyện tư duy về ng&ocirc;n ngữ cho học vi&ecirc;n</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- T&agrave;i liệu được bi&ecirc;n soạn kỹ c&agrave;ng v&agrave; độc quyền chỉ c&oacute; tại OCEAN Cần Thơ</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Kỹ năng Nghe &ndash; N&oacute;i &ndash; Đọc &ndash; Viết sẽ được ph&aacute;t triển đồng đều bởi c&aacute;c giảng vi&ecirc;n đầy kinh nghiệm từ trong nước đến giảng vi&ecirc;n bản xứ</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Đến với trung t&acirc;m học vi&ecirc;n c&ograve;n c&oacute; th&ecirc;m một đặt quyền đ&oacute; ch&iacute;nh l&agrave; được học lại miễn ph&iacute; nếu kết quả kh&ocirc;ng đạt mục ti&ecirc;u nguyện vọng ban đầu đ&atilde; đề ra.</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">G&oacute;c học tập hiện đại phục vụ cho luyện thi TOIEC</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Việc trang bị đầy đủ kiến thức cho c&aacute;c bạn th&ocirc;i l&agrave; chưa đủ, Trung t&acirc;m Anh Ngữ OCEAN Cần Thơ c&ograve;n đầu tư mạnh mẽ v&agrave;o trang thiết bị, cơ sở hạ tầng nhằm phục vụ tốt hơn trong c&ocirc;ng t&aacute;c dạy v&agrave; học. Một kh&ocirc;ng gian tho&aacute;ng, đẹp v&agrave; đầy đủ hơn về c&ocirc;ng cụ học tập, gi&uacute;p bạn học ho&agrave;n th&agrave;nh giấc mơ chinh phục TOIEC.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Kh&ocirc;ng gian học đạt chuẩn quốc tế</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- G&oacute;c học tập d&agrave;nh ri&ecirc;ng cho từng bạn</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Dụng cụ học tập trang bị đầy đủ</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Kh&ocirc;ng gian rộng r&atilde;i cho nhiều hoạt động học tập tại chỗ</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Ph&ograve;ng học khử khuẩn, an to&agrave;n tuyệt đối cho học vi&ecirc;n</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Th&acirc;n thiện như đang ở nh&agrave;</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">Luyện thi TOIEC chủ động</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">TOIEC l&agrave; một kh&oacute;a học thuộc chương tr&igrave;nh ACTIVE LEARNING. Học vi&ecirc;n sẽ ho&agrave;n to&agrave;n được quyết định về mặt thời gian của buổi học do đ&oacute; c&oacute; thể sắp xếp thời gian học sao cho ph&ugrave; hợp với quỹ thời gian của m&igrave;nh. Với m&ocirc; h&igrave;nh dạy v&agrave; học tiếng Anh to&agrave;n diện đầy đủ 4 kỹ năng Nghe &ndash; N&oacute;i &ndash; Đọc &ndash; Viết theo thể thức 1 thầy 1 tr&ograve; (one-on-one) học vi&ecirc;n sẽ được trau dồi đầy đủ kiến thức từ cơ bản đến n&acirc;ng cao theo lộ tr&igrave;nh được thiết kế r&otilde; r&agrave;ng v&agrave; chi tiết m&agrave; Trung t&acirc;m đưa ra.</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Đến với kh&oacute;a học TOIEC Cần Thơ từ OCEAN, học vi&ecirc;n sẽ được tiếp x&uacute;c gi&aacute;o tr&igrave;nh cập nhật thường xuy&ecirc;n, b&aacute;m s&aacute;t đề thi Quốc tế. Hơn nữa, học vi&ecirc;n sẽ cần phải ho&agrave;n th&agrave;nh b&agrave;i kiểm tra định kỳ trước khi đến với bước tiếp theo trong lộ tr&igrave;nh học tập c&aacute; nh&acirc;n. Đồng thời, bạn c&ograve;n được thử sức với những kỳ thi thử m&agrave; Active Learning tổ chức để học vi&ecirc;n cọ x&aacute;t trước khi đối mặt với kỳ thi thật.</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Đăng k&yacute; kh&oacute;a học TOIEC tại Cần Thơ từ Trung t&acirc;m Anh ngữ OCEAN để ho&agrave;n thiện hơn mỗi ng&agrave;y, tốt hơn mỗi ng&agrave;y v&agrave; giỏi hơn mỗi ng&agrave;y. V&agrave; đ&acirc;y, ch&iacute;nh l&agrave; ch&igrave;a kh&oacute;a mở ra c&aacute;nh cửa th&agrave;nh c&ocirc;ng cho bạn trong h&agrave;nh tr&igrave;nh sắp tới.</span></p>', '2023-08-01', '2023-11-11'),
(3, 3, 'KHÓA B1', 'khoahoc3.jpg', '<h2 style=\"line-height: 1.5; text-align: center;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">LUYỆN THI CHỨNG CHỈ B1 CẦN THƠ</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">B1 (Test Of English as a Foreign Language) l&agrave; b&agrave;i kiểm tra năng lực tiếng Anh quốc tế th&ocirc;ng qua 4 kỹ năng: Nghe (listening), n&oacute;i (speaking), đọc (reading), viết (writing) nhằm đ&aacute;nh gi&aacute; mức độ sử dụng th&agrave;nh thạo tiếng Anh của th&iacute; sinh trong m&ocirc;i trường đại học, học thuật, hoặc nhập cư nước ngo&agrave;i. Chứng chỉ B1 được chấp nhận bởi nhiều tổ chức học thuật, gi&aacute;o dục v&agrave; doanh nghiệp lớn tr&ecirc;n to&agrave;n thế giới, điểm B1 được coi l&agrave; một trong những y&ecirc;u&nbsp; cầu để x&eacute;t tuyển v&agrave;o hầy hết c&aacute;c trường đại học v&agrave; cao đẳng ở Mỹ.</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">B1 được nghi&ecirc;n cứu v&agrave; ph&aacute;t triển bởi (Educational Testing Service Viện Khảo Th&iacute; Gi&aacute;o Dục Hoa Kỳ) v&agrave; chứng chỉ n&agrave;y c&oacute; gi&aacute; trị sử dụng trong 2 năm. Hiện nay, c&oacute; hơn 10.000 trường đại học, cao đẳng v&agrave; c&aacute;c học viện tại hơn 130 quốc gia chấp nhận sử dụng điểm B1 l&agrave;m điều kiện x&eacute;t tuyển học sinh du học. Bởi vậy, nếu bạn đang c&oacute; nhu cầu du học, định cư hoặc l&agrave;m việc ở nước ngo&agrave;i th&igrave; h&atilde;y c&acirc;n nhắc học v&agrave; thi lấy bằng B1.</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">C&aacute;c dạng đề v&agrave; h&igrave;nh thức thi B1</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">T&ugrave;y v&agrave;i đối tượng tham dự m&agrave; b&agrave;i thi B1 c&oacute; c&aacute;c dạng đề kh&aacute;c nhau như:</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- B1 Primary: L&agrave; b&agrave;i thi được thiết kế d&agrave;nh ti&ecirc;ng cho học sinh tiểu học đ&aacute;nh gi&aacute; khả năng sử dụng tiếng Anh n&acirc;ng cao v&agrave; suy luận của trẻ ngay từ l&uacute;c nhỏ.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- B1 Junior: L&agrave; b&agrave;i thi được thiết kế d&agrave;nh ri&ecirc;ng cho học sinh THCS v&agrave; đầu THPT đ&aacute;nh gi&aacute; khả năng sử dụng tiếng Anh học thuật (academic English) v&agrave; tiếng Anh thường thức (social English).</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">H&igrave;nh thức thi:</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- B1 iBT: L&agrave; b&agrave;i thi B1 thế hệ mới sử dụng internet để chuyển đề thi từ ETS đến trung t&acirc;m tổ chức dự thi. Đề thi B1 iBT ra đời đang dần thay thế ho&agrave;n to&agrave;n dạng thi tr&ecirc;n giấy (B1 PBT) v&agrave; dạng thi tr&ecirc;n m&aacute;y t&iacute;nh (CBT).</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- B1 CPT: L&agrave; b&agrave;i thi B1 tr&ecirc;n m&aacute;y t&iacute;nh, th&iacute; sinh kh&ocirc;ng được ph&eacute;p ghi ch&uacute; khi đang dự thi.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- B1 PBT: L&agrave; b&agrave;i thi B1 tr&ecirc;n giấy truyền thống sử dụng b&uacute;t ch&igrave; hầu như kh&ocirc;ng c&ograve;n sử dụng nữa trừ một số khu vực kh&ocirc;ng c&oacute; đủ điều kiện tổ chức thi B1 iBP v&agrave; B1 CPT.</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">Chuẩn bị cho kỳ thi B1</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Trước một kỳ thi quan trọng để thay đổi m&ocirc;i trường học tập th&igrave; v&ocirc; số c&acirc;u hỏi thắc mắc được đưa ra l&agrave; điều kh&ocirc;ng thể tr&aacute;nh khỏi.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Điểm B1 sẽ được chấm như thế n&agrave;o ?</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Thang điểm B1 quy đổi sang B1 như thế n&agrave;o ?</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- C&aacute;ch l&agrave;m b&agrave;i thi B1 tr&ecirc;n m&aacute;y t&iacute;nh</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">&hellip; v&agrave; một số c&acirc;u hỏi kh&aacute;c</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Tuy nhi&ecirc;n, để chuẩn bị cho kỳ thi đạt được điểm tối đa th&igrave; việc x&acirc;y dựng mục ti&ecirc;u r&otilde; r&agrave;ng lại l&agrave; điều v&ocirc; c&ugrave;ng cần thiết.</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">B&agrave;i thi B1 gi&uacute;p bạn chứng minh được năng lực sử dụng tiếng Anh của bạn. Trong b&agrave;i kiểm tra bạn c&oacute; thể đọc một đoạn văn từ s&aacute;ch gi&aacute;o khoa v&agrave; nghe một b&agrave;i giảng, sau đ&oacute; sẽ theo h&igrave;nh thức n&oacute;i hoặc viết để trả lời giống như trong lớp học thực tế. B&agrave;i kiểm tra gồm 100% c&aacute;c c&acirc;u hỏi v&agrave; nhiệm vụ li&ecirc;n quan đến học thuật.&nbsp;</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">V&igrave; sao n&ecirc;n chọn luyện thi B1 tại OCEAN Cần Thơ</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Với hơn 13 năm kinh nghiệm, OCEAN Cần Thơ đ&atilde; trở th&agrave;nh trung t&acirc;m đ&agrave;o tạo tiếng anh hiện đại, uy t&iacute;n v&agrave; chất lượng cho học vi&ecirc;n Cần Thơ v&agrave; c&aacute;c v&ugrave;ng l&acirc;n cận Đồng bằng s&ocirc;ng Cửu Long. Đội ngũ giảng vi&ecirc;n th&igrave; th&acirc;n thiện, t&acirc;m huyết v&agrave; d&agrave;y dặn kinh nghiệm trong việc giảng dạy c&aacute;c chứng chỉ thi chuẩn Quốc tế. Trung t&acirc;m cam kết chuẩn đầu ra B1, học vi&ecirc;n khi ho&agrave;n th&agrave;nh kho&aacute; học chắc chắn sẽ đạt điểm bằng hoặc cao hơn nguyện vọng đặt ra.</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Học vi&ecirc;n ho&agrave;n to&agrave;n c&oacute; thể chủ động kh&ocirc;ng bị g&ograve; b&oacute; về mặt thời gian, lịch học năng động, m&ocirc;i trường học tập hiện đại với c&aacute;c cơ sở vật chất đạt chuẩn quốc tế. C&oacute; kh&ocirc;ng gian ri&ecirc;ng để luyện tập c&aacute;c kỹ năng Nghe &ndash; N&oacute;i &ndash; Đọc &ndash; Viết cho từng học vi&ecirc;n. M&ocirc; h&igrave;nh học tập 1-1 được &aacute;p dụng trong những năm gần đ&acirc;y đ&atilde; thực sự mang đến rất nhiều hữu &iacute;ch cho c&aacute;c bạn học vi&ecirc;n chưa đủ tự tin, một thầy một tr&ograve; học vi&ecirc;n c&oacute; thể hỏi ngay vấn đề thắc mắc v&agrave; giảng vi&ecirc;n sẽ giảng giải một c&aacute;ch chi tiết từ đ&oacute; học vi&ecirc;n nắm bắt được kiến thức vững hơn trong buổi học.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- M&ocirc;i trường học tập năng động</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Giảng vi&ecirc;n gi&agrave;u kinh nghiệm v&agrave; nhiệt huyết, giảng vi&ecirc;n luyện n&oacute;i l&agrave; giảng vi&ecirc;n người bản xứ</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Nhiều bộ đề chuẩn quốc tế sẽ gi&uacute;p học vi&ecirc;n c&oacute; trải nghiệm thực tế trước kỳ thi thật</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">OCEAN Cần Thơ sẽ gi&uacute;p bạn học B1 tốt hơn mỗi ng&agrave;y</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Ngo&agrave;i m&ocirc;i trường học tập năng động, cơ sở vật chất hiện đại, trẻ trung v&agrave; lu&ocirc;n mang lại kh&ocirc;ng kh&iacute; học tập hứng khởi cho học vi&ecirc;n th&igrave; gi&aacute;o tr&igrave;nh học phong ph&uacute; v&agrave; chất lượng giảng dạy chỉ c&oacute; tại OCEAN Cần Thơ sẽ mang lại trải nghiệm mới mẻ cho học vi&ecirc;n khi đến với trung t&acirc;m.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Đưa ra lộ tr&igrave;nh học tập v&agrave; &ocirc;n luyện theo ti&ecirc;u chuẩn Quốc tế một c&aacute;ch chi tiết v&agrave; r&otilde; r&agrave;ng</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Phương ph&aacute;p học thực tiễn, r&egrave;n luyện tư duy về ng&ocirc;n ngữ cho học vi&ecirc;n</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- T&agrave;i liệu được bi&ecirc;n soạn kỹ c&agrave;ng v&agrave; độc quyền chỉ c&oacute; tại OCEAN Cần Thơ</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Kỹ năng Nghe &ndash; N&oacute;i &ndash; Đọc &ndash; Viết sẽ được ph&aacute;t triển đồng đều bởi c&aacute;c giảng vi&ecirc;n đầy kinh nghiệm từ trong nước đến giảng vi&ecirc;n bản xứ</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Đến với trung t&acirc;m học vi&ecirc;n c&ograve;n c&oacute; th&ecirc;m một đặt quyền đ&oacute; ch&iacute;nh l&agrave; được học lại miễn ph&iacute; nếu kết quả kh&ocirc;ng đạt mục ti&ecirc;u nguyện vọng ban đầu đ&atilde; đề ra.</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">G&oacute;c học tập hiện đại phục vụ cho luyện thi B1</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Việc trang bị đầy đủ kiến thức cho c&aacute;c bạn th&ocirc;i l&agrave; chưa đủ, Trung t&acirc;m Anh Ngữ OCEAN Cần Thơ c&ograve;n đầu tư mạnh mẽ v&agrave;o trang thiết bị, cơ sở hạ tầng nhằm phục vụ tốt hơn trong c&ocirc;ng t&aacute;c dạy v&agrave; học. Một kh&ocirc;ng gian tho&aacute;ng, đẹp v&agrave; đầy đủ hơn về c&ocirc;ng cụ học tập, gi&uacute;p bạn học ho&agrave;n th&agrave;nh giấc mơ chinh phục B1.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Kh&ocirc;ng gian học đạt chuẩn quốc tế</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- G&oacute;c học tập d&agrave;nh ri&ecirc;ng cho từng bạn</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Dụng cụ học tập trang bị đầy đủ</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Kh&ocirc;ng gian rộng r&atilde;i cho nhiều hoạt động học tập tại chỗ</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Ph&ograve;ng học khử khuẩn, an to&agrave;n tuyệt đối cho học vi&ecirc;n</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Th&acirc;n thiện như đang ở nh&agrave;</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">Luyện thi B1 chủ động</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">B1 l&agrave; một kh&oacute;a học thuộc chương tr&igrave;nh ACTIVE LEARNING. Học vi&ecirc;n sẽ ho&agrave;n to&agrave;n được quyết định về mặt thời gian của buổi học do đ&oacute; c&oacute; thể sắp xếp thời gian học sao cho ph&ugrave; hợp với quỹ thời gian của m&igrave;nh. Với m&ocirc; h&igrave;nh dạy v&agrave; học tiếng Anh to&agrave;n diện đầy đủ 4 kỹ năng Nghe &ndash; N&oacute;i &ndash; Đọc &ndash; Viết theo thể thức 1 thầy 1 tr&ograve; (one-on-one) học vi&ecirc;n sẽ được trau dồi đầy đủ kiến thức từ cơ bản đến n&acirc;ng cao theo lộ tr&igrave;nh được thiết kế r&otilde; r&agrave;ng v&agrave; chi tiết m&agrave; Trung t&acirc;m đưa ra.</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Đến với kh&oacute;a học B1 Cần Thơ từ OCEAN, học vi&ecirc;n sẽ được tiếp x&uacute;c gi&aacute;o tr&igrave;nh cập nhật thường xuy&ecirc;n, b&aacute;m s&aacute;t đề thi Quốc tế. Hơn nữa, học vi&ecirc;n sẽ cần phải ho&agrave;n th&agrave;nh b&agrave;i kiểm tra định kỳ trước khi đến với bước tiếp theo trong lộ tr&igrave;nh học tập c&aacute; nh&acirc;n. Đồng thời, bạn c&ograve;n được thử sức với những kỳ thi thử m&agrave; Active Learning tổ chức để học vi&ecirc;n cọ x&aacute;t trước khi đối mặt với kỳ thi thật.</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Đăng k&yacute; kh&oacute;a học B1 tại Cần Thơ từ Trung t&acirc;m Anh ngữ OCEAN để ho&agrave;n thiện hơn mỗi ng&agrave;y, tốt hơn mỗi ng&agrave;y v&agrave; giỏi hơn mỗi ng&agrave;y. V&agrave; đ&acirc;y, ch&iacute;nh l&agrave; ch&igrave;a kh&oacute;a mở ra c&aacute;nh cửa th&agrave;nh c&ocirc;ng cho bạn trong h&agrave;nh tr&igrave;nh sắp tới.</span></p>', '2023-08-01', '2023-12-03');
INSERT INTO `khoahoc` (`IDKH`, `IDCC`, `TENKH`, `HINHANH`, `CHITIET`, `NGAYBD`, `NGAYKT`) VALUES
(4, 4, 'KHÓA B2', 'khoahoc4.jpg', '<h2 style=\"line-height: 1.5; text-align: center;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">LUYỆN THI CHỨNG CHỈ B2 CẦN THƠ</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">B2 (Test Of English as a Foreign Language) l&agrave; b&agrave;i kiểm tra năng lực tiếng Anh quốc tế th&ocirc;ng qua 4 kỹ năng: Nghe (listening), n&oacute;i (speaking), đọc (reading), viết (writing) nhằm đ&aacute;nh gi&aacute; mức độ sử dụng th&agrave;nh thạo tiếng Anh của th&iacute; sinh trong m&ocirc;i trường đại học, học thuật, hoặc nhập cư nước ngo&agrave;i. Chứng chỉ B2 được chấp nhận bởi nhiều tổ chức học thuật, gi&aacute;o dục v&agrave; doanh nghiệp lớn tr&ecirc;n to&agrave;n thế giới, điểm B2 được coi l&agrave; một trong những y&ecirc;u&nbsp; cầu để x&eacute;t tuyển v&agrave;o hầy hết c&aacute;c trường đại học v&agrave; cao đẳng ở Mỹ.</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">B2 được nghi&ecirc;n cứu v&agrave; ph&aacute;t triển bởi (Educational Testing Service Viện Khảo Th&iacute; Gi&aacute;o Dục Hoa Kỳ) v&agrave; chứng chỉ n&agrave;y c&oacute; gi&aacute; trị sử dụng trong 2 năm. Hiện nay, c&oacute; hơn 10.000 trường đại học, cao đẳng v&agrave; c&aacute;c học viện tại hơn 130 quốc gia chấp nhận sử dụng điểm B2 l&agrave;m điều kiện x&eacute;t tuyển học sinh du học. Bởi vậy, nếu bạn đang c&oacute; nhu cầu du học, định cư hoặc l&agrave;m việc ở nước ngo&agrave;i th&igrave; h&atilde;y c&acirc;n nhắc học v&agrave; thi lấy bằng B2.</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">C&aacute;c dạng đề v&agrave; h&igrave;nh thức thi B2</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">T&ugrave;y v&agrave;i đối tượng tham dự m&agrave; b&agrave;i thi B2 c&oacute; c&aacute;c dạng đề kh&aacute;c nhau như:</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- B2 Primary: L&agrave; b&agrave;i thi được thiết kế d&agrave;nh ti&ecirc;ng cho học sinh tiểu học đ&aacute;nh gi&aacute; khả năng sử dụng tiếng Anh n&acirc;ng cao v&agrave; suy luận của trẻ ngay từ l&uacute;c nhỏ.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- B2 Junior: L&agrave; b&agrave;i thi được thiết kế d&agrave;nh ri&ecirc;ng cho học sinh THCS v&agrave; đầu THPT đ&aacute;nh gi&aacute; khả năng sử dụng tiếng Anh học thuật (academic English) v&agrave; tiếng Anh thường thức (social English).</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">H&igrave;nh thức thi:</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- B2 iBT: L&agrave; b&agrave;i thi B2 thế hệ mới sử dụng internet để chuyển đề thi từ ETS đến trung t&acirc;m tổ chức dự thi. Đề thi B2 iBT ra đời đang dần thay thế ho&agrave;n to&agrave;n dạng thi tr&ecirc;n giấy (B2 PBT) v&agrave; dạng thi tr&ecirc;n m&aacute;y t&iacute;nh (CBT).</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- B2 CPT: L&agrave; b&agrave;i thi B2 tr&ecirc;n m&aacute;y t&iacute;nh, th&iacute; sinh kh&ocirc;ng được ph&eacute;p ghi ch&uacute; khi đang dự thi.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- B2 PBT: L&agrave; b&agrave;i thi B2 tr&ecirc;n giấy truyền thống sử dụng b&uacute;t ch&igrave; hầu như kh&ocirc;ng c&ograve;n sử dụng nữa trừ một số khu vực kh&ocirc;ng c&oacute; đủ điều kiện tổ chức thi B2 iBP v&agrave; B2 CPT.</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">Chuẩn bị cho kỳ thi B2</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Trước một kỳ thi quan trọng để thay đổi m&ocirc;i trường học tập th&igrave; v&ocirc; số c&acirc;u hỏi thắc mắc được đưa ra l&agrave; điều kh&ocirc;ng thể tr&aacute;nh khỏi.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Điểm B2 sẽ được chấm như thế n&agrave;o ?</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Thang điểm B2 quy đổi sang B2 như thế n&agrave;o ?</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- C&aacute;ch l&agrave;m b&agrave;i thi B2 tr&ecirc;n m&aacute;y t&iacute;nh</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">&hellip; v&agrave; một số c&acirc;u hỏi kh&aacute;c</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Tuy nhi&ecirc;n, để chuẩn bị cho kỳ thi đạt được điểm tối đa th&igrave; việc x&acirc;y dựng mục ti&ecirc;u r&otilde; r&agrave;ng lại l&agrave; điều v&ocirc; c&ugrave;ng cần thiết.</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">B&agrave;i thi B2 gi&uacute;p bạn chứng minh được năng lực sử dụng tiếng Anh của bạn. Trong b&agrave;i kiểm tra bạn c&oacute; thể đọc một đoạn văn từ s&aacute;ch gi&aacute;o khoa v&agrave; nghe một b&agrave;i giảng, sau đ&oacute; sẽ theo h&igrave;nh thức n&oacute;i hoặc viết để trả lời giống như trong lớp học thực tế. B&agrave;i kiểm tra gồm 100% c&aacute;c c&acirc;u hỏi v&agrave; nhiệm vụ li&ecirc;n quan đến học thuật.&nbsp;</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">V&igrave; sao n&ecirc;n chọn luyện thi B2 tại OCEAN Cần Thơ</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Với hơn 13 năm kinh nghiệm, OCEAN Cần Thơ đ&atilde; trở th&agrave;nh trung t&acirc;m đ&agrave;o tạo tiếng anh hiện đại, uy t&iacute;n v&agrave; chất lượng cho học vi&ecirc;n Cần Thơ v&agrave; c&aacute;c v&ugrave;ng l&acirc;n cận Đồng bằng s&ocirc;ng Cửu Long. Đội ngũ giảng vi&ecirc;n th&igrave; th&acirc;n thiện, t&acirc;m huyết v&agrave; d&agrave;y dặn kinh nghiệm trong việc giảng dạy c&aacute;c chứng chỉ thi chuẩn Quốc tế. Trung t&acirc;m cam kết chuẩn đầu ra B2, học vi&ecirc;n khi ho&agrave;n th&agrave;nh kho&aacute; học chắc chắn sẽ đạt điểm bằng hoặc cao hơn nguyện vọng đặt ra.</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Học vi&ecirc;n ho&agrave;n to&agrave;n c&oacute; thể chủ động kh&ocirc;ng bị g&ograve; b&oacute; về mặt thời gian, lịch học năng động, m&ocirc;i trường học tập hiện đại với c&aacute;c cơ sở vật chất đạt chuẩn quốc tế. C&oacute; kh&ocirc;ng gian ri&ecirc;ng để luyện tập c&aacute;c kỹ năng Nghe &ndash; N&oacute;i &ndash; Đọc &ndash; Viết cho từng học vi&ecirc;n. M&ocirc; h&igrave;nh học tập 1-1 được &aacute;p dụng trong những năm gần đ&acirc;y đ&atilde; thực sự mang đến rất nhiều hữu &iacute;ch cho c&aacute;c bạn học vi&ecirc;n chưa đủ tự tin, một thầy một tr&ograve; học vi&ecirc;n c&oacute; thể hỏi ngay vấn đề thắc mắc v&agrave; giảng vi&ecirc;n sẽ giảng giải một c&aacute;ch chi tiết từ đ&oacute; học vi&ecirc;n nắm bắt được kiến thức vững hơn trong buổi học.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- M&ocirc;i trường học tập năng động</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Giảng vi&ecirc;n gi&agrave;u kinh nghiệm v&agrave; nhiệt huyết, giảng vi&ecirc;n luyện n&oacute;i l&agrave; giảng vi&ecirc;n người bản xứ</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Nhiều bộ đề chuẩn quốc tế sẽ gi&uacute;p học vi&ecirc;n c&oacute; trải nghiệm thực tế trước kỳ thi thật</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">OCEAN Cần Thơ sẽ gi&uacute;p bạn học B2 tốt hơn mỗi ng&agrave;y</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Ngo&agrave;i m&ocirc;i trường học tập năng động, cơ sở vật chất hiện đại, trẻ trung v&agrave; lu&ocirc;n mang lại kh&ocirc;ng kh&iacute; học tập hứng khởi cho học vi&ecirc;n th&igrave; gi&aacute;o tr&igrave;nh học phong ph&uacute; v&agrave; chất lượng giảng dạy chỉ c&oacute; tại OCEAN Cần Thơ sẽ mang lại trải nghiệm mới mẻ cho học vi&ecirc;n khi đến với trung t&acirc;m.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Đưa ra lộ tr&igrave;nh học tập v&agrave; &ocirc;n luyện theo ti&ecirc;u chuẩn Quốc tế một c&aacute;ch chi tiết v&agrave; r&otilde; r&agrave;ng</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Phương ph&aacute;p học thực tiễn, r&egrave;n luyện tư duy về ng&ocirc;n ngữ cho học vi&ecirc;n</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- T&agrave;i liệu được bi&ecirc;n soạn kỹ c&agrave;ng v&agrave; độc quyền chỉ c&oacute; tại OCEAN Cần Thơ</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Kỹ năng Nghe &ndash; N&oacute;i &ndash; Đọc &ndash; Viết sẽ được ph&aacute;t triển đồng đều bởi c&aacute;c giảng vi&ecirc;n đầy kinh nghiệm từ trong nước đến giảng vi&ecirc;n bản xứ</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Đến với trung t&acirc;m học vi&ecirc;n c&ograve;n c&oacute; th&ecirc;m một đặt quyền đ&oacute; ch&iacute;nh l&agrave; được học lại miễn ph&iacute; nếu kết quả kh&ocirc;ng đạt mục ti&ecirc;u nguyện vọng ban đầu đ&atilde; đề ra.</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">G&oacute;c học tập hiện đại phục vụ cho luyện thi B2</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Việc trang bị đầy đủ kiến thức cho c&aacute;c bạn th&ocirc;i l&agrave; chưa đủ, Trung t&acirc;m Anh Ngữ OCEAN Cần Thơ c&ograve;n đầu tư mạnh mẽ v&agrave;o trang thiết bị, cơ sở hạ tầng nhằm phục vụ tốt hơn trong c&ocirc;ng t&aacute;c dạy v&agrave; học. Một kh&ocirc;ng gian tho&aacute;ng, đẹp v&agrave; đầy đủ hơn về c&ocirc;ng cụ học tập, gi&uacute;p bạn học ho&agrave;n th&agrave;nh giấc mơ chinh phục B2.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Kh&ocirc;ng gian học đạt chuẩn quốc tế</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- G&oacute;c học tập d&agrave;nh ri&ecirc;ng cho từng bạn</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Dụng cụ học tập trang bị đầy đủ</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Kh&ocirc;ng gian rộng r&atilde;i cho nhiều hoạt động học tập tại chỗ</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Ph&ograve;ng học khử khuẩn, an to&agrave;n tuyệt đối cho học vi&ecirc;n</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Th&acirc;n thiện như đang ở nh&agrave;</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">Luyện thi B2 chủ động</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">B2 l&agrave; một kh&oacute;a học thuộc chương tr&igrave;nh ACTIVE LEARNING. Học vi&ecirc;n sẽ ho&agrave;n to&agrave;n được quyết định về mặt thời gian của buổi học do đ&oacute; c&oacute; thể sắp xếp thời gian học sao cho ph&ugrave; hợp với quỹ thời gian của m&igrave;nh. Với m&ocirc; h&igrave;nh dạy v&agrave; học tiếng Anh to&agrave;n diện đầy đủ 4 kỹ năng Nghe &ndash; N&oacute;i &ndash; Đọc &ndash; Viết theo thể thức 1 thầy 1 tr&ograve; (one-on-one) học vi&ecirc;n sẽ được trau dồi đầy đủ kiến thức từ cơ bản đến n&acirc;ng cao theo lộ tr&igrave;nh được thiết kế r&otilde; r&agrave;ng v&agrave; chi tiết m&agrave; Trung t&acirc;m đưa ra.</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Đến với kh&oacute;a học B2 Cần Thơ từ OCEAN, học vi&ecirc;n sẽ được tiếp x&uacute;c gi&aacute;o tr&igrave;nh cập nhật thường xuy&ecirc;n, b&aacute;m s&aacute;t đề thi Quốc tế. Hơn nữa, học vi&ecirc;n sẽ cần phải ho&agrave;n th&agrave;nh b&agrave;i kiểm tra định kỳ trước khi đến với bước tiếp theo trong lộ tr&igrave;nh học tập c&aacute; nh&acirc;n. Đồng thời, bạn c&ograve;n được thử sức với những kỳ thi thử m&agrave; Active Learning tổ chức để học vi&ecirc;n cọ x&aacute;t trước khi đối mặt với kỳ thi thật.</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Đăng k&yacute; kh&oacute;a học B2 tại Cần Thơ từ Trung t&acirc;m Anh ngữ OCEAN để ho&agrave;n thiện hơn mỗi ng&agrave;y, tốt hơn mỗi ng&agrave;y v&agrave; giỏi hơn mỗi ng&agrave;y. V&agrave; đ&acirc;y, ch&iacute;nh l&agrave; ch&igrave;a kh&oacute;a mở ra c&aacute;nh cửa th&agrave;nh c&ocirc;ng cho bạn trong h&agrave;nh tr&igrave;nh sắp tới.</span></p>', '2023-08-07', '2023-10-06'),
(5, 5, 'KHÓA C1', 'khoahoc5.jpg', '<h2 style=\"line-height: 1.5; text-align: center;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">LUYỆN THI CHỨNG CHỈ C1 CẦN THƠ</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">C1 (Test Of English as a Foreign Language) l&agrave; b&agrave;i kiểm tra năng lực tiếng Anh quốc tế th&ocirc;ng qua 4 kỹ năng: Nghe (listening), n&oacute;i (speaking), đọc (reading), viết (writing) nhằm đ&aacute;nh gi&aacute; mức độ sử dụng th&agrave;nh thạo tiếng Anh của th&iacute; sinh trong m&ocirc;i trường đại học, học thuật, hoặc nhập cư nước ngo&agrave;i. Chứng chỉ C1 được chấp nhận bởi nhiều tổ chức học thuật, gi&aacute;o dục v&agrave; doanh nghiệp lớn tr&ecirc;n to&agrave;n thế giới, điểm C1 được coi l&agrave; một trong những y&ecirc;u&nbsp; cầu để x&eacute;t tuyển v&agrave;o hầy hết c&aacute;c trường đại học v&agrave; cao đẳng ở Mỹ.</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">C1 được nghi&ecirc;n cứu v&agrave; ph&aacute;t triển bởi (Educational Testing Service Viện Khảo Th&iacute; Gi&aacute;o Dục Hoa Kỳ) v&agrave; chứng chỉ n&agrave;y c&oacute; gi&aacute; trị sử dụng trong 2 năm. Hiện nay, c&oacute; hơn 10.000 trường đại học, cao đẳng v&agrave; c&aacute;c học viện tại hơn 130 quốc gia chấp nhận sử dụng điểm C1 l&agrave;m điều kiện x&eacute;t tuyển học sinh du học. Bởi vậy, nếu bạn đang c&oacute; nhu cầu du học, định cư hoặc l&agrave;m việc ở nước ngo&agrave;i th&igrave; h&atilde;y c&acirc;n nhắc học v&agrave; thi lấy bằng C1.</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">C&aacute;c dạng đề v&agrave; h&igrave;nh thức thi C1</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">T&ugrave;y v&agrave;i đối tượng tham dự m&agrave; b&agrave;i thi C1 c&oacute; c&aacute;c dạng đề kh&aacute;c nhau như:</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- C1 Primary: L&agrave; b&agrave;i thi được thiết kế d&agrave;nh ti&ecirc;ng cho học sinh tiểu học đ&aacute;nh gi&aacute; khả năng sử dụng tiếng Anh n&acirc;ng cao v&agrave; suy luận của trẻ ngay từ l&uacute;c nhỏ.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- C1 Junior: L&agrave; b&agrave;i thi được thiết kế d&agrave;nh ri&ecirc;ng cho học sinh THCS v&agrave; đầu THPT đ&aacute;nh gi&aacute; khả năng sử dụng tiếng Anh học thuật (academic English) v&agrave; tiếng Anh thường thức (social English).</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">H&igrave;nh thức thi:</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- C1 iBT: L&agrave; b&agrave;i thi C1 thế hệ mới sử dụng internet để chuyển đề thi từ ETS đến trung t&acirc;m tổ chức dự thi. Đề thi C1 iBT ra đời đang dần thay thế ho&agrave;n to&agrave;n dạng thi tr&ecirc;n giấy (C1 PBT) v&agrave; dạng thi tr&ecirc;n m&aacute;y t&iacute;nh (CBT).</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- C1 CPT: L&agrave; b&agrave;i thi C1 tr&ecirc;n m&aacute;y t&iacute;nh, th&iacute; sinh kh&ocirc;ng được ph&eacute;p ghi ch&uacute; khi đang dự thi.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- C1 PBT: L&agrave; b&agrave;i thi C1 tr&ecirc;n giấy truyền thống sử dụng b&uacute;t ch&igrave; hầu như kh&ocirc;ng c&ograve;n sử dụng nữa trừ một số khu vực kh&ocirc;ng c&oacute; đủ điều kiện tổ chức thi C1 iBP v&agrave; C1 CPT.</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">Chuẩn bị cho kỳ thi C1</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Trước một kỳ thi quan trọng để thay đổi m&ocirc;i trường học tập th&igrave; v&ocirc; số c&acirc;u hỏi thắc mắc được đưa ra l&agrave; điều kh&ocirc;ng thể tr&aacute;nh khỏi.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Điểm C1 sẽ được chấm như thế n&agrave;o ?</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Thang điểm C1 quy đổi sang C1 như thế n&agrave;o ?</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- C&aacute;ch l&agrave;m b&agrave;i thi C1 tr&ecirc;n m&aacute;y t&iacute;nh</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">&hellip; v&agrave; một số c&acirc;u hỏi kh&aacute;c</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Tuy nhi&ecirc;n, để chuẩn bị cho kỳ thi đạt được điểm tối đa th&igrave; việc x&acirc;y dựng mục ti&ecirc;u r&otilde; r&agrave;ng lại l&agrave; điều v&ocirc; c&ugrave;ng cần thiết.</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">B&agrave;i thi C1 gi&uacute;p bạn chứng minh được năng lực sử dụng tiếng Anh của bạn. Trong b&agrave;i kiểm tra bạn c&oacute; thể đọc một đoạn văn từ s&aacute;ch gi&aacute;o khoa v&agrave; nghe một b&agrave;i giảng, sau đ&oacute; sẽ theo h&igrave;nh thức n&oacute;i hoặc viết để trả lời giống như trong lớp học thực tế. B&agrave;i kiểm tra gồm 100% c&aacute;c c&acirc;u hỏi v&agrave; nhiệm vụ li&ecirc;n quan đến học thuật.&nbsp;</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">V&igrave; sao n&ecirc;n chọn luyện thi C1 tại OCEAN Cần Thơ</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Với hơn 13 năm kinh nghiệm, OCEAN Cần Thơ đ&atilde; trở th&agrave;nh trung t&acirc;m đ&agrave;o tạo tiếng anh hiện đại, uy t&iacute;n v&agrave; chất lượng cho học vi&ecirc;n Cần Thơ v&agrave; c&aacute;c v&ugrave;ng l&acirc;n cận Đồng bằng s&ocirc;ng Cửu Long. Đội ngũ giảng vi&ecirc;n th&igrave; th&acirc;n thiện, t&acirc;m huyết v&agrave; d&agrave;y dặn kinh nghiệm trong việc giảng dạy c&aacute;c chứng chỉ thi chuẩn Quốc tế. Trung t&acirc;m cam kết chuẩn đầu ra C1, học vi&ecirc;n khi ho&agrave;n th&agrave;nh kho&aacute; học chắc chắn sẽ đạt điểm bằng hoặc cao hơn nguyện vọng đặt ra.</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Học vi&ecirc;n ho&agrave;n to&agrave;n c&oacute; thể chủ động kh&ocirc;ng bị g&ograve; b&oacute; về mặt thời gian, lịch học năng động, m&ocirc;i trường học tập hiện đại với c&aacute;c cơ sở vật chất đạt chuẩn quốc tế. C&oacute; kh&ocirc;ng gian ri&ecirc;ng để luyện tập c&aacute;c kỹ năng Nghe &ndash; N&oacute;i &ndash; Đọc &ndash; Viết cho từng học vi&ecirc;n. M&ocirc; h&igrave;nh học tập 1-1 được &aacute;p dụng trong những năm gần đ&acirc;y đ&atilde; thực sự mang đến rất nhiều hữu &iacute;ch cho c&aacute;c bạn học vi&ecirc;n chưa đủ tự tin, một thầy một tr&ograve; học vi&ecirc;n c&oacute; thể hỏi ngay vấn đề thắc mắc v&agrave; giảng vi&ecirc;n sẽ giảng giải một c&aacute;ch chi tiết từ đ&oacute; học vi&ecirc;n nắm bắt được kiến thức vững hơn trong buổi học.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- M&ocirc;i trường học tập năng động</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Giảng vi&ecirc;n gi&agrave;u kinh nghiệm v&agrave; nhiệt huyết, giảng vi&ecirc;n luyện n&oacute;i l&agrave; giảng vi&ecirc;n người bản xứ</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Nhiều bộ đề chuẩn quốc tế sẽ gi&uacute;p học vi&ecirc;n c&oacute; trải nghiệm thực tế trước kỳ thi thật</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">OCEAN Cần Thơ sẽ gi&uacute;p bạn học C1 tốt hơn mỗi ng&agrave;y</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Ngo&agrave;i m&ocirc;i trường học tập năng động, cơ sở vật chất hiện đại, trẻ trung v&agrave; lu&ocirc;n mang lại kh&ocirc;ng kh&iacute; học tập hứng khởi cho học vi&ecirc;n th&igrave; gi&aacute;o tr&igrave;nh học phong ph&uacute; v&agrave; chất lượng giảng dạy chỉ c&oacute; tại OCEAN Cần Thơ sẽ mang lại trải nghiệm mới mẻ cho học vi&ecirc;n khi đến với trung t&acirc;m.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Đưa ra lộ tr&igrave;nh học tập v&agrave; &ocirc;n luyện theo ti&ecirc;u chuẩn Quốc tế một c&aacute;ch chi tiết v&agrave; r&otilde; r&agrave;ng</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Phương ph&aacute;p học thực tiễn, r&egrave;n luyện tư duy về ng&ocirc;n ngữ cho học vi&ecirc;n</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- T&agrave;i liệu được bi&ecirc;n soạn kỹ c&agrave;ng v&agrave; độc quyền chỉ c&oacute; tại OCEAN Cần Thơ</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Kỹ năng Nghe &ndash; N&oacute;i &ndash; Đọc &ndash; Viết sẽ được ph&aacute;t triển đồng đều bởi c&aacute;c giảng vi&ecirc;n đầy kinh nghiệm từ trong nước đến giảng vi&ecirc;n bản xứ</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Đến với trung t&acirc;m học vi&ecirc;n c&ograve;n c&oacute; th&ecirc;m một đặt quyền đ&oacute; ch&iacute;nh l&agrave; được học lại miễn ph&iacute; nếu kết quả kh&ocirc;ng đạt mục ti&ecirc;u nguyện vọng ban đầu đ&atilde; đề ra.</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">G&oacute;c học tập hiện đại phục vụ cho luyện thi C1</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Việc trang bị đầy đủ kiến thức cho c&aacute;c bạn th&ocirc;i l&agrave; chưa đủ, Trung t&acirc;m Anh Ngữ OCEAN Cần Thơ c&ograve;n đầu tư mạnh mẽ v&agrave;o trang thiết bị, cơ sở hạ tầng nhằm phục vụ tốt hơn trong c&ocirc;ng t&aacute;c dạy v&agrave; học. Một kh&ocirc;ng gian tho&aacute;ng, đẹp v&agrave; đầy đủ hơn về c&ocirc;ng cụ học tập, gi&uacute;p bạn học ho&agrave;n th&agrave;nh giấc mơ chinh phục C1.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Kh&ocirc;ng gian học đạt chuẩn quốc tế</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- G&oacute;c học tập d&agrave;nh ri&ecirc;ng cho từng bạn</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Dụng cụ học tập trang bị đầy đủ</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Kh&ocirc;ng gian rộng r&atilde;i cho nhiều hoạt động học tập tại chỗ</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Ph&ograve;ng học khử khuẩn, an to&agrave;n tuyệt đối cho học vi&ecirc;n</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Th&acirc;n thiện như đang ở nh&agrave;</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">Luyện thi C1 chủ động</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">C1 l&agrave; một kh&oacute;a học thuộc chương tr&igrave;nh ACTIVE LEARNING. Học vi&ecirc;n sẽ ho&agrave;n to&agrave;n được quyết định về mặt thời gian của buổi học do đ&oacute; c&oacute; thể sắp xếp thời gian học sao cho ph&ugrave; hợp với quỹ thời gian của m&igrave;nh. Với m&ocirc; h&igrave;nh dạy v&agrave; học tiếng Anh to&agrave;n diện đầy đủ 4 kỹ năng Nghe &ndash; N&oacute;i &ndash; Đọc &ndash; Viết theo thể thức 1 thầy 1 tr&ograve; (one-on-one) học vi&ecirc;n sẽ được trau dồi đầy đủ kiến thức từ cơ bản đến n&acirc;ng cao theo lộ tr&igrave;nh được thiết kế r&otilde; r&agrave;ng v&agrave; chi tiết m&agrave; Trung t&acirc;m đưa ra.</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Đến với kh&oacute;a học C1 Cần Thơ từ OCEAN, học vi&ecirc;n sẽ được tiếp x&uacute;c gi&aacute;o tr&igrave;nh cập nhật thường xuy&ecirc;n, b&aacute;m s&aacute;t đề thi Quốc tế. Hơn nữa, học vi&ecirc;n sẽ cần phải ho&agrave;n th&agrave;nh b&agrave;i kiểm tra định kỳ trước khi đến với bước tiếp theo trong lộ tr&igrave;nh học tập c&aacute; nh&acirc;n. Đồng thời, bạn c&ograve;n được thử sức với những kỳ thi thử m&agrave; Active Learning tổ chức để học vi&ecirc;n cọ x&aacute;t trước khi đối mặt với kỳ thi thật.</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Đăng k&yacute; kh&oacute;a học C1 tại Cần Thơ từ Trung t&acirc;m Anh ngữ OCEAN để ho&agrave;n thiện hơn mỗi ng&agrave;y, tốt hơn mỗi ng&agrave;y v&agrave; giỏi hơn mỗi ng&agrave;y. V&agrave; đ&acirc;y, ch&iacute;nh l&agrave; ch&igrave;a kh&oacute;a mở ra c&aacute;nh cửa th&agrave;nh c&ocirc;ng cho bạn trong h&agrave;nh tr&igrave;nh sắp tới.</span></p>', '2023-08-02', '2023-12-07'),
(6, 6, 'KHÓA C2', 'khoahoc 6.jpg', '<h2 style=\"line-height: 1.5; text-align: center;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">LUYỆN THI CHỨNG CHỈ C2 CẦN THƠ</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">C2 (Test Of English as a Foreign Language) l&agrave; b&agrave;i kiểm tra năng lực tiếng Anh quốc tế th&ocirc;ng qua 4 kỹ năng: Nghe (listening), n&oacute;i (speaking), đọc (reading), viết (writing) nhằm đ&aacute;nh gi&aacute; mức độ sử dụng th&agrave;nh thạo tiếng Anh của th&iacute; sinh trong m&ocirc;i trường đại học, học thuật, hoặc nhập cư nước ngo&agrave;i. Chứng chỉ C2 được chấp nhận bởi nhiều tổ chức học thuật, gi&aacute;o dục v&agrave; doanh nghiệp lớn tr&ecirc;n to&agrave;n thế giới, điểm C2 được coi l&agrave; một trong những y&ecirc;u&nbsp; cầu để x&eacute;t tuyển v&agrave;o hầy hết c&aacute;c trường đại học v&agrave; cao đẳng ở Mỹ.</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">C2 được nghi&ecirc;n cứu v&agrave; ph&aacute;t triển bởi (Educational Testing Service Viện Khảo Th&iacute; Gi&aacute;o Dục Hoa Kỳ) v&agrave; chứng chỉ n&agrave;y c&oacute; gi&aacute; trị sử dụng trong 2 năm. Hiện nay, c&oacute; hơn 10.000 trường đại học, cao đẳng v&agrave; c&aacute;c học viện tại hơn 130 quốc gia chấp nhận sử dụng điểm C2 l&agrave;m điều kiện x&eacute;t tuyển học sinh du học. Bởi vậy, nếu bạn đang c&oacute; nhu cầu du học, định cư hoặc l&agrave;m việc ở nước ngo&agrave;i th&igrave; h&atilde;y c&acirc;n nhắc học v&agrave; thi lấy bằng C2.</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">C&aacute;c dạng đề v&agrave; h&igrave;nh thức thi C2</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">T&ugrave;y v&agrave;i đối tượng tham dự m&agrave; b&agrave;i thi C2 c&oacute; c&aacute;c dạng đề kh&aacute;c nhau như:</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- C2 Primary: L&agrave; b&agrave;i thi được thiết kế d&agrave;nh ti&ecirc;ng cho học sinh tiểu học đ&aacute;nh gi&aacute; khả năng sử dụng tiếng Anh n&acirc;ng cao v&agrave; suy luận của trẻ ngay từ l&uacute;c nhỏ.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- C2 Junior: L&agrave; b&agrave;i thi được thiết kế d&agrave;nh ri&ecirc;ng cho học sinh THCS v&agrave; đầu THPT đ&aacute;nh gi&aacute; khả năng sử dụng tiếng Anh học thuật (academic English) v&agrave; tiếng Anh thường thức (social English).</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">H&igrave;nh thức thi:</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- C2 iBT: L&agrave; b&agrave;i thi C2 thế hệ mới sử dụng internet để chuyển đề thi từ ETS đến trung t&acirc;m tổ chức dự thi. Đề thi C2 iBT ra đời đang dần thay thế ho&agrave;n to&agrave;n dạng thi tr&ecirc;n giấy (C2 PBT) v&agrave; dạng thi tr&ecirc;n m&aacute;y t&iacute;nh (CBT).</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- C2 CPT: L&agrave; b&agrave;i thi C2 tr&ecirc;n m&aacute;y t&iacute;nh, th&iacute; sinh kh&ocirc;ng được ph&eacute;p ghi ch&uacute; khi đang dự thi.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- C2 PBT: L&agrave; b&agrave;i thi C2 tr&ecirc;n giấy truyền thống sử dụng b&uacute;t ch&igrave; hầu như kh&ocirc;ng c&ograve;n sử dụng nữa trừ một số khu vực kh&ocirc;ng c&oacute; đủ điều kiện tổ chức thi C2 iBP v&agrave; C2 CPT.</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">Chuẩn bị cho kỳ thi C2</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Trước một kỳ thi quan trọng để thay đổi m&ocirc;i trường học tập th&igrave; v&ocirc; số c&acirc;u hỏi thắc mắc được đưa ra l&agrave; điều kh&ocirc;ng thể tr&aacute;nh khỏi.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Điểm C2 sẽ được chấm như thế n&agrave;o ?</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Thang điểm C2 quy đổi sang C2 như thế n&agrave;o ?</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- C&aacute;ch l&agrave;m b&agrave;i thi C2 tr&ecirc;n m&aacute;y t&iacute;nh</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">&hellip; v&agrave; một số c&acirc;u hỏi kh&aacute;c</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Tuy nhi&ecirc;n, để chuẩn bị cho kỳ thi đạt được điểm tối đa th&igrave; việc x&acirc;y dựng mục ti&ecirc;u r&otilde; r&agrave;ng lại l&agrave; điều v&ocirc; c&ugrave;ng cần thiết.</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">B&agrave;i thi C2 gi&uacute;p bạn chứng minh được năng lực sử dụng tiếng Anh của bạn. Trong b&agrave;i kiểm tra bạn c&oacute; thể đọc một đoạn văn từ s&aacute;ch gi&aacute;o khoa v&agrave; nghe một b&agrave;i giảng, sau đ&oacute; sẽ theo h&igrave;nh thức n&oacute;i hoặc viết để trả lời giống như trong lớp học thực tế. B&agrave;i kiểm tra gồm 100% c&aacute;c c&acirc;u hỏi v&agrave; nhiệm vụ li&ecirc;n quan đến học thuật.&nbsp;</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">V&igrave; sao n&ecirc;n chọn luyện thi C2 tại OCEAN Cần Thơ</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Với hơn 13 năm kinh nghiệm, OCEAN Cần Thơ đ&atilde; trở th&agrave;nh trung t&acirc;m đ&agrave;o tạo tiếng anh hiện đại, uy t&iacute;n v&agrave; chất lượng cho học vi&ecirc;n Cần Thơ v&agrave; c&aacute;c v&ugrave;ng l&acirc;n cận Đồng bằng s&ocirc;ng Cửu Long. Đội ngũ giảng vi&ecirc;n th&igrave; th&acirc;n thiện, t&acirc;m huyết v&agrave; d&agrave;y dặn kinh nghiệm trong việc giảng dạy c&aacute;c chứng chỉ thi chuẩn Quốc tế. Trung t&acirc;m cam kết chuẩn đầu ra C2, học vi&ecirc;n khi ho&agrave;n th&agrave;nh kho&aacute; học chắc chắn sẽ đạt điểm bằng hoặc cao hơn nguyện vọng đặt ra.</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Học vi&ecirc;n ho&agrave;n to&agrave;n c&oacute; thể chủ động kh&ocirc;ng bị g&ograve; b&oacute; về mặt thời gian, lịch học năng động, m&ocirc;i trường học tập hiện đại với c&aacute;c cơ sở vật chất đạt chuẩn quốc tế. C&oacute; kh&ocirc;ng gian ri&ecirc;ng để luyện tập c&aacute;c kỹ năng Nghe &ndash; N&oacute;i &ndash; Đọc &ndash; Viết cho từng học vi&ecirc;n. M&ocirc; h&igrave;nh học tập 1-1 được &aacute;p dụng trong những năm gần đ&acirc;y đ&atilde; thực sự mang đến rất nhiều hữu &iacute;ch cho c&aacute;c bạn học vi&ecirc;n chưa đủ tự tin, một thầy một tr&ograve; học vi&ecirc;n c&oacute; thể hỏi ngay vấn đề thắc mắc v&agrave; giảng vi&ecirc;n sẽ giảng giải một c&aacute;ch chi tiết từ đ&oacute; học vi&ecirc;n nắm bắt được kiến thức vững hơn trong buổi học.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- M&ocirc;i trường học tập năng động</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Giảng vi&ecirc;n gi&agrave;u kinh nghiệm v&agrave; nhiệt huyết, giảng vi&ecirc;n luyện n&oacute;i l&agrave; giảng vi&ecirc;n người bản xứ</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Nhiều bộ đề chuẩn quốc tế sẽ gi&uacute;p học vi&ecirc;n c&oacute; trải nghiệm thực tế trước kỳ thi thật</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">OCEAN Cần Thơ sẽ gi&uacute;p bạn học C2 tốt hơn mỗi ng&agrave;y</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Ngo&agrave;i m&ocirc;i trường học tập năng động, cơ sở vật chất hiện đại, trẻ trung v&agrave; lu&ocirc;n mang lại kh&ocirc;ng kh&iacute; học tập hứng khởi cho học vi&ecirc;n th&igrave; gi&aacute;o tr&igrave;nh học phong ph&uacute; v&agrave; chất lượng giảng dạy chỉ c&oacute; tại OCEAN Cần Thơ sẽ mang lại trải nghiệm mới mẻ cho học vi&ecirc;n khi đến với trung t&acirc;m.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Đưa ra lộ tr&igrave;nh học tập v&agrave; &ocirc;n luyện theo ti&ecirc;u chuẩn Quốc tế một c&aacute;ch chi tiết v&agrave; r&otilde; r&agrave;ng</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Phương ph&aacute;p học thực tiễn, r&egrave;n luyện tư duy về ng&ocirc;n ngữ cho học vi&ecirc;n</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- T&agrave;i liệu được bi&ecirc;n soạn kỹ c&agrave;ng v&agrave; độc quyền chỉ c&oacute; tại OCEAN Cần Thơ</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Kỹ năng Nghe &ndash; N&oacute;i &ndash; Đọc &ndash; Viết sẽ được ph&aacute;t triển đồng đều bởi c&aacute;c giảng vi&ecirc;n đầy kinh nghiệm từ trong nước đến giảng vi&ecirc;n bản xứ</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Đến với trung t&acirc;m học vi&ecirc;n c&ograve;n c&oacute; th&ecirc;m một đặt quyền đ&oacute; ch&iacute;nh l&agrave; được học lại miễn ph&iacute; nếu kết quả kh&ocirc;ng đạt mục ti&ecirc;u nguyện vọng ban đầu đ&atilde; đề ra.</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">G&oacute;c học tập hiện đại phục vụ cho luyện thi C2</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Việc trang bị đầy đủ kiến thức cho c&aacute;c bạn th&ocirc;i l&agrave; chưa đủ, Trung t&acirc;m Anh Ngữ OCEAN Cần Thơ c&ograve;n đầu tư mạnh mẽ v&agrave;o trang thiết bị, cơ sở hạ tầng nhằm phục vụ tốt hơn trong c&ocirc;ng t&aacute;c dạy v&agrave; học. Một kh&ocirc;ng gian tho&aacute;ng, đẹp v&agrave; đầy đủ hơn về c&ocirc;ng cụ học tập, gi&uacute;p bạn học ho&agrave;n th&agrave;nh giấc mơ chinh phục C2.</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Kh&ocirc;ng gian học đạt chuẩn quốc tế</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- G&oacute;c học tập d&agrave;nh ri&ecirc;ng cho từng bạn</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Dụng cụ học tập trang bị đầy đủ</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Kh&ocirc;ng gian rộng r&atilde;i cho nhiều hoạt động học tập tại chỗ</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Ph&ograve;ng học khử khuẩn, an to&agrave;n tuyệt đối cho học vi&ecirc;n</span></p>\r\n<p style=\"padding-left: 40px;\"><span style=\"font-size: 14pt;\">- Th&acirc;n thiện như đang ở nh&agrave;</span></p>\r\n<h2 style=\"text-align: justify; line-height: 1.5;\"><span style=\"color: rgb(18, 33, 201);\"><strong><span style=\"font-size: 14pt;\">Luyện thi C2 chủ động</span></strong></span></h2>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">C2 l&agrave; một kh&oacute;a học thuộc chương tr&igrave;nh ACTIVE LEARNING. Học vi&ecirc;n sẽ ho&agrave;n to&agrave;n được quyết định về mặt thời gian của buổi học do đ&oacute; c&oacute; thể sắp xếp thời gian học sao cho ph&ugrave; hợp với quỹ thời gian của m&igrave;nh. Với m&ocirc; h&igrave;nh dạy v&agrave; học tiếng Anh to&agrave;n diện đầy đủ 4 kỹ năng Nghe &ndash; N&oacute;i &ndash; Đọc &ndash; Viết theo thể thức 1 thầy 1 tr&ograve; (one-on-one) học vi&ecirc;n sẽ được trau dồi đầy đủ kiến thức từ cơ bản đến n&acirc;ng cao theo lộ tr&igrave;nh được thiết kế r&otilde; r&agrave;ng v&agrave; chi tiết m&agrave; Trung t&acirc;m đưa ra.</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Đến với kh&oacute;a học C2 Cần Thơ từ OCEAN, học vi&ecirc;n sẽ được tiếp x&uacute;c gi&aacute;o tr&igrave;nh cập nhật thường xuy&ecirc;n, b&aacute;m s&aacute;t đề thi Quốc tế. Hơn nữa, học vi&ecirc;n sẽ cần phải ho&agrave;n th&agrave;nh b&agrave;i kiểm tra định kỳ trước khi đến với bước tiếp theo trong lộ tr&igrave;nh học tập c&aacute; nh&acirc;n. Đồng thời, bạn c&ograve;n được thử sức với những kỳ thi thử m&agrave; Active Learning tổ chức để học vi&ecirc;n cọ x&aacute;t trước khi đối mặt với kỳ thi thật.</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">Đăng k&yacute; kh&oacute;a học C2 tại Cần Thơ từ Trung t&acirc;m Anh ngữ OCEAN để ho&agrave;n thiện hơn mỗi ng&agrave;y, tốt hơn mỗi ng&agrave;y v&agrave; giỏi hơn mỗi ng&agrave;y. V&agrave; đ&acirc;y, ch&iacute;nh l&agrave; ch&igrave;a kh&oacute;a mở ra c&aacute;nh cửa th&agrave;nh c&ocirc;ng cho bạn trong h&agrave;nh tr&igrave;nh sắp tới.</span></p>', '2023-08-07', '2023-12-01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop`
--

CREATE TABLE `lop` (
  `IDLOP` int(11) NOT NULL,
  `IDGV` int(11) DEFAULT NULL,
  `IDKH` int(11) DEFAULT NULL,
  `TENLOP` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lop`
--

INSERT INTO `lop` (`IDLOP`, `IDGV`, `IDKH`, `TENLOP`) VALUES
(1, NULL, 3, 'LỚP 1A'),
(2, 11, 4, 'LỚP 2A'),
(3, 10, 5, 'LỚP 3A'),
(4, 4, 6, 'LỚP 4A'),
(5, NULL, 1, 'LỚP 5A'),
(6, 8, 2, 'LỚP 6A'),
(7, 4, 1, 'LỚP 7A'),
(11, 10, 4, 'LỚP 11A');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuthu`
--

CREATE TABLE `phieuthu` (
  `IDPT` int(11) NOT NULL,
  `IDHV` int(11) NOT NULL,
  `PHAITHU` int(15) NOT NULL,
  `DATHU` int(15) NOT NULL,
  `NGAYTHU` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phieuthu`
--

INSERT INTO `phieuthu` (`IDPT`, `IDHV`, `PHAITHU`, `DATHU`, `NGAYTHU`) VALUES
(1, 1, 5000000, 5000000, '2023-10-04'),
(2, 2, 3000000, 3000000, '2023-10-05'),
(3, 3, 5000000, 5000000, '2023-10-04'),
(4, 4, 3000000, 3000000, '2023-10-05'),
(5, 1, 2500000, 2500000, '2023-10-04'),
(6, 2, 3000000, 3000000, '2023-10-05'),
(7, 8, 3000000, 3000000, '2023-10-30'),
(8, 8, 2500000, 2500000, '2023-11-04'),
(9, 8, 3000000, 3000000, '2023-11-04'),
(10, 1, 5000000, 5000000, '2023-09-04'),
(11, 2, 3000000, 3000000, '2023-08-05'),
(12, 3, 5000000, 5000000, '2023-07-04'),
(13, 4, 3000000, 3000000, '2023-06-05'),
(14, 1, 2500000, 2500000, '2023-05-04'),
(15, 2, 3000000, 3000000, '2023-04-05'),
(16, 8, 3000000, 3000000, '2023-03-30'),
(17, 8, 2500000, 2500000, '2023-02-04'),
(18, 8, 3000000, 3000000, '2023-01-04'),
(19, 8, 3000000, 3000000, '2023-03-20'),
(20, 8, 2500000, 2500000, '2023-02-05'),
(21, 8, 3000000, 3000000, '2023-01-30'),
(22, 8, 3000000, 3000000, '2023-12-20'),
(23, 8, 2500000, 2500000, '2023-12-05'),
(24, 8, 3000000, 3000000, '2023-12-19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong`
--

CREATE TABLE `phong` (
  `IDPHONG` int(11) NOT NULL,
  `TENPHONG` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phong`
--

INSERT INTO `phong` (`IDPHONG`, `TENPHONG`) VALUES
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
  `IDTKGV` int(11) NOT NULL,
  `IDGV` int(11) NOT NULL,
  `USERNAME` varchar(100) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `PHANQUYEN` enum('0','1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tkgiaovien`
--

INSERT INTO `tkgiaovien` (`IDTKGV`, `IDGV`, `USERNAME`, `PASSWORD`, `PHANQUYEN`) VALUES
(1, 1, 'MOI123', 'MOI123', '0'),
(6, 8, 'moi456', 'gut1998', '1'),
(7, 10, 'kha456', 'kha456', '1'),
(8, 11, 'van123', 'van123', '1'),
(9, 4, 'MOI567', 'MOI456', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tkhocvien`
--

CREATE TABLE `tkhocvien` (
  `IDTKHV` int(11) NOT NULL,
  `IDHV` int(11) NOT NULL,
  `USERNAME` varchar(100) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `PHANQUYEN` enum('0','1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tkhocvien`
--

INSERT INTO `tkhocvien` (`IDTKHV`, `IDHV`, `USERNAME`, `PASSWORD`, `PHANQUYEN`) VALUES
(1, 1, 'TINH456', 'TINH45', '2'),
(2, 2, 'QUAN456', 'QUAN456', '2'),
(3, 3, 'TRANG456', 'TRANG456', '2'),
(5, 8, 'moi456', 'moi123', '2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trangthaidk`
--

CREATE TABLE `trangthaidk` (
  `IDTT` int(11) NOT NULL,
  `IDHV` int(11) NOT NULL,
  `IDLOP` int(11) NOT NULL,
  `TRANGTHAI` enum('Hoàn Thành','Chưa hoàn thành') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `trangthaidk`
--

INSERT INTO `trangthaidk` (`IDTT`, `IDHV`, `IDLOP`, `TRANGTHAI`) VALUES
(1, 1, 1, 'Hoàn Thành'),
(2, 3, 2, 'Chưa hoàn thành'),
(3, 2, 5, 'Hoàn Thành'),
(4, 4, 4, 'Chưa hoàn thành'),
(5, 8, 7, 'Hoàn Thành'),
(11, 8, 1, 'Chưa hoàn thành'),
(14, 8, 4, 'Hoàn Thành'),
(15, 3, 4, 'Chưa hoàn thành');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bangcap`
--
ALTER TABLE `bangcap`
  ADD PRIMARY KEY (`IDBC`);

--
-- Chỉ mục cho bảng `chitietlophoc`
--
ALTER TABLE `chitietlophoc`
  ADD PRIMARY KEY (`IDLOP`,`IDPHONG`),
  ADD KEY `IDPHONG` (`IDPHONG`);

--
-- Chỉ mục cho bảng `chucvu`
--
ALTER TABLE `chucvu`
  ADD PRIMARY KEY (`IDCV`);

--
-- Chỉ mục cho bảng `chungchi`
--
ALTER TABLE `chungchi`
  ADD PRIMARY KEY (`IDCC`);

--
-- Chỉ mục cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  ADD PRIMARY KEY (`IDGV`),
  ADD KEY `IDBC` (`IDBC`),
  ADD KEY `IDCV` (`IDCV`);

--
-- Chỉ mục cho bảng `hocphi`
--
ALTER TABLE `hocphi`
  ADD PRIMARY KEY (`IDKH`);

--
-- Chỉ mục cho bảng `hocvien`
--
ALTER TABLE `hocvien`
  ADD PRIMARY KEY (`IDHV`);

--
-- Chỉ mục cho bảng `khoahoc`
--
ALTER TABLE `khoahoc`
  ADD PRIMARY KEY (`IDKH`),
  ADD KEY `IDCC` (`IDCC`);

--
-- Chỉ mục cho bảng `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`IDLOP`),
  ADD KEY `IDGV` (`IDGV`),
  ADD KEY `IDKH` (`IDKH`);

--
-- Chỉ mục cho bảng `phieuthu`
--
ALTER TABLE `phieuthu`
  ADD PRIMARY KEY (`IDPT`),
  ADD KEY `IDHV` (`IDHV`);

--
-- Chỉ mục cho bảng `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`IDPHONG`);

--
-- Chỉ mục cho bảng `tkgiaovien`
--
ALTER TABLE `tkgiaovien`
  ADD PRIMARY KEY (`IDTKGV`),
  ADD KEY `IDGV` (`IDGV`);

--
-- Chỉ mục cho bảng `tkhocvien`
--
ALTER TABLE `tkhocvien`
  ADD PRIMARY KEY (`IDTKHV`),
  ADD KEY `IDHV` (`IDHV`);

--
-- Chỉ mục cho bảng `trangthaidk`
--
ALTER TABLE `trangthaidk`
  ADD PRIMARY KEY (`IDTT`,`IDHV`,`IDLOP`),
  ADD KEY `IDHV` (`IDHV`),
  ADD KEY `IDLOP` (`IDLOP`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bangcap`
--
ALTER TABLE `bangcap`
  MODIFY `IDBC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `chucvu`
--
ALTER TABLE `chucvu`
  MODIFY `IDCV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `chungchi`
--
ALTER TABLE `chungchi`
  MODIFY `IDCC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  MODIFY `IDGV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `hocvien`
--
ALTER TABLE `hocvien`
  MODIFY `IDHV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `khoahoc`
--
ALTER TABLE `khoahoc`
  MODIFY `IDKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `lop`
--
ALTER TABLE `lop`
  MODIFY `IDLOP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `phieuthu`
--
ALTER TABLE `phieuthu`
  MODIFY `IDPT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `phong`
--
ALTER TABLE `phong`
  MODIFY `IDPHONG` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tkgiaovien`
--
ALTER TABLE `tkgiaovien`
  MODIFY `IDTKGV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tkhocvien`
--
ALTER TABLE `tkhocvien`
  MODIFY `IDTKHV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `trangthaidk`
--
ALTER TABLE `trangthaidk`
  MODIFY `IDTT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietlophoc`
--
ALTER TABLE `chitietlophoc`
  ADD CONSTRAINT `chitietlophoc_ibfk_1` FOREIGN KEY (`IDLOP`) REFERENCES `lop` (`IDLOP`),
  ADD CONSTRAINT `chitietlophoc_ibfk_2` FOREIGN KEY (`IDPHONG`) REFERENCES `phong` (`IDPHONG`);

--
-- Các ràng buộc cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  ADD CONSTRAINT `giaovien_ibfk_1` FOREIGN KEY (`IDBC`) REFERENCES `bangcap` (`IDBC`),
  ADD CONSTRAINT `giaovien_ibfk_2` FOREIGN KEY (`IDCV`) REFERENCES `chucvu` (`IDCV`);

--
-- Các ràng buộc cho bảng `hocphi`
--
ALTER TABLE `hocphi`
  ADD CONSTRAINT `hocphi_ibfk_1` FOREIGN KEY (`IDKH`) REFERENCES `khoahoc` (`IDKH`);

--
-- Các ràng buộc cho bảng `khoahoc`
--
ALTER TABLE `khoahoc`
  ADD CONSTRAINT `khoahoc_ibfk_1` FOREIGN KEY (`IDCC`) REFERENCES `chungchi` (`IDCC`);

--
-- Các ràng buộc cho bảng `lop`
--
ALTER TABLE `lop`
  ADD CONSTRAINT `lop_ibfk_1` FOREIGN KEY (`IDGV`) REFERENCES `giaovien` (`IDGV`),
  ADD CONSTRAINT `lop_ibfk_2` FOREIGN KEY (`IDKH`) REFERENCES `khoahoc` (`IDKH`);

--
-- Các ràng buộc cho bảng `phieuthu`
--
ALTER TABLE `phieuthu`
  ADD CONSTRAINT `phieuthu_ibfk_1` FOREIGN KEY (`IDHV`) REFERENCES `hocvien` (`IDHV`);

--
-- Các ràng buộc cho bảng `tkgiaovien`
--
ALTER TABLE `tkgiaovien`
  ADD CONSTRAINT `tkgiaovien_ibfk_1` FOREIGN KEY (`IDGV`) REFERENCES `giaovien` (`IDGV`);

--
-- Các ràng buộc cho bảng `tkhocvien`
--
ALTER TABLE `tkhocvien`
  ADD CONSTRAINT `tkhocvien_ibfk_1` FOREIGN KEY (`IDHV`) REFERENCES `hocvien` (`IDHV`);

--
-- Các ràng buộc cho bảng `trangthaidk`
--
ALTER TABLE `trangthaidk`
  ADD CONSTRAINT `trangthaidk_ibfk_1` FOREIGN KEY (`IDHV`) REFERENCES `hocvien` (`IDHV`),
  ADD CONSTRAINT `trangthaidk_ibfk_2` FOREIGN KEY (`IDLOP`) REFERENCES `lop` (`IDLOP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
