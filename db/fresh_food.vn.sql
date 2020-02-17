-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 09, 2019 lúc 01:47 PM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `fresh_food.vn`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `list_news`
--

CREATE TABLE `list_news` (
  `pk_list_news_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `list_news`
--

INSERT INTO `list_news` (`pk_list_news_id`, `name`, `parent_id`) VALUES
(1, 'Tuyển dụng', 0),
(2, 'Khuyến mại', 0),
(3, 'Tin Khác', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `list_product`
--

CREATE TABLE `list_product` (
  `parent_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `pk_list_product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `list_product`
--

INSERT INTO `list_product` (`parent_id`, `name`, `pk_list_product_id`) VALUES
(0, 'SẢN PHẨM BUÔN', 1),
(1, 'Thịt cừu Úc', 2),
(1, 'Cá hồi Na Uy', 3),
(1, 'Thịt bò MỸ', 4),
(1, 'Thịt bò Úc', 5),
(1, ' Cá ngừ', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `pk_news_id` int(11) NOT NULL,
  `fk_list_news_id` int(11) NOT NULL,
  `img` varchar(500) NOT NULL,
  `name` varchar(2000) NOT NULL,
  `content` varchar(500) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `hot_news` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`pk_news_id`, `fk_list_news_id`, `img`, `name`, `content`, `description`, `hot_news`) VALUES
(1, 3, '1554558485ca-hi-nauy-nguyen-con.jpg', 'Fillet trực tiếp cá hồi Broodstock tại Fresh Foods Mart Việt Hưng', 'Chào tháng mới may mắn, Fresh Foods Mart Việt Hưng tưng bừng tổ chức chương trình “Fillet trực tiếp cá hồi Broodstock” .', '<p>Ch&agrave;o th&aacute;ng mới may mắn, Fresh Foods Mart Việt Hưng tưng bừng tổ chức chương tr&igrave;nh &ldquo;Fillet trực tiếp c&aacute; hồi Broodstock&rdquo; . Cơ hội hiếm trong năm, duy nhất 1 ch&uacute; c&aacute; hồi giống bố mẹ size 11kg, &ldquo;size khủng&rdquo;, chất lượng tuyệt vời về kho Fresh Foods Mat v&agrave; được fillet trực tiếp để đảm bảo hương vị c&aacute; hồi tươi ngon đ&iacute;ch thực. C&aacute; hồi Broodstock- c&aacute; hồi giống bố mẹ được chăm s&oacute;c đảm bảo với nguồn thức ăn được chọn lọc kỹ lưỡng v&agrave; gi&agrave;u dinh dưỡng từ giai đoạn nu&ocirc;i vỗ tới trưởng th&agrave;nh v&agrave; sinh sản. Đặc biệt c&aacute; được nu&ocirc;i trong m&ocirc;i trường đảm bảo điều kiện như thời gian chiếu s&aacute;ng, nhiệt độ v&agrave; độ PH được kiểm so&aacute;t, ch&iacute;nh những đặc điểm n&agrave;y tạo n&ecirc;n c&acirc;n nặng đạt chuẩn v&agrave; hương vị thịt tuyệt hảo cho c&aacute; hồi Broodstock. So với c&aacute; hồi , thịt c&aacute; hồi Brood stock c&oacute; vị mềm ngậy , đậm đ&agrave; v&agrave; ngọt thịt hơn hẳn, c&oacute; thể chế biến những m&oacute;n sushi, sashimi cao cấp trong những nh&agrave; h&agrave;ng 5 sao sang trọng Chương tr&igrave;nh tổ chức trong tuần tại Fresh Foods Mart Việt Hưng: 106 P6, Nguyễn Cao Luyện, Việt Hưng, Long Bi&ecirc;n, H&agrave; Nội . C&ugrave;ng chờ đ&oacute;n sự kiện v&agrave; xin mời qu&yacute; kh&aacute;ch trực tiếp qua cửa h&agrave;ng để trải nghiệm v&agrave; mua h&agrave;ng!</p>\r\n', 1),
(2, 3, '1554558526ff.jpg', 'TƯNG BỪNG “LỄ HỘI THỊT NHẬP KHẨU” – NẾM THỬ BÒ MỸ NGON CHUẨN VỊ TẠI AEON CÙNG FRESH FOODS.', 'Từ ngày 2/7 – 8/7/2018, Fresh Foods tri ân khách hàng với chương trình “LỄ HỘI THỊT NHẬP KHẨU” tổ chức tại Aeon. Tham gia chương trình, quý khách hàng sẽ được nếm thử thực đơn với những món bò Mỹ nướng theo phong cách Nhật Bản, Hàn Quốc độc đáo và hấp dẫn:', '<p>Từ ng&agrave;y 2/7 &ndash; 8/7/2018, Fresh Foods tri &acirc;n kh&aacute;ch h&agrave;ng với chương tr&igrave;nh &ldquo;LỄ HỘI THỊT NHẬP KHẨU&rdquo; tổ chức tại Aeon. Tham gia chương tr&igrave;nh, qu&yacute; kh&aacute;ch h&agrave;ng sẽ được nếm thử thực đơn với những m&oacute;n b&ograve; Mỹ nướng theo phong c&aacute;ch Nhật Bản, H&agrave;n Quốc độc đ&aacute;o v&agrave; hấp dẫn: B&ograve; Mỹ nướng sốt Yakiniku No Tare Mild: từng miếng ba chỉ b&ograve; Mỹ ngấm đẫm nước sốt Yakiniku đậm đ&agrave; vị nước tương Nhật Bản, vị l&ecirc;, t&aacute;o ngon ngọt đặc trưng rất hấp dẫn. Thịt b&ograve; mỹ giữ được vị ngọt mềm, thơm ngậy đặc trưng chắc chắn sẽ l&agrave;m h&agrave;i l&ograve;ng qu&yacute; kh&aacute;ch, đặc biệt l&agrave; c&aacute;c b&eacute; th&iacute;ch ăn c&aacute;c m&oacute;n nướng c&oacute; hương vị ngọt nhẹ, mềm như bơ. B&ograve; Mỹ cuộn nấm kim ch&acirc;m nướng sốt BiBiGo BBQ truyền thống: những phần thịt b&ograve; mỹ cao cấp như nạc vai, thăn ngoại thơm ngon sẽ được th&aacute;i mỏng cuốn nấm kim ch&acirc;m gi&ograve;n ngọt v&agrave; tươi mới ăn rất ngon miệng. Vị sốt BiBiGo với hương vị nước tương H&agrave;n Quốc, nước bắp c&ocirc; đặc thơm ngon sẽ khiến thịt nướng th&ecirc;m dậy vị tươi ngon, mềm mọng của thịt b&ograve; Mỹ cao cấp. Đến với gian h&agrave;ng của Fresh Foods tại Aeon, qu&yacute; kh&aacute;ch kh&ocirc;ng chỉ được nếm thử thực đơn b&ograve; Mỹ nướng MIỄN PH&Iacute; m&agrave; c&ograve;n được giới thiệu v&agrave; mua trực tiếp những mặt h&agrave;ng thịt b&ograve; Mỹ - &Uacute;c, c&aacute; hồi Nauy b&agrave;y b&aacute;n tại gian h&agrave;ng của Fresh Foods. Fresh Foods tr&acirc;n trọng mời c&aacute;c qu&yacute; kh&aacute;ch h&agrave;ng tới trải nghiệm chương tr&igrave;nh! Địa điểm: Tầng 1 si&ecirc;u thị Aeon Mall Long Bi&ecirc;n, H&agrave; Nội.</p>\r\n', 1),
(3, 3, '1554559155nh-wcup.jpg', 'BÙNG NỔ CHIẾN THẮNG - DỰ ĐOÁN ĐỘI VÔ ĐỊCH WORLD CUP 2018 CÙNG FRESH FOODS MART', 'Giải bóng đá sôi động nhất hành tinh đã có trận đấu khai mạc xuất sắc!!! Ăn bóng đá – ngủ bóng đá – chơi bóng đá, hãy biến dịp cổ vũ trận đấu World Cup thành TIỆC ĂN MỪNG cho cả gia đình với MINI GAME của Fresh Foods Mart !!!', '<p>B&Ugrave;NG NỔ CHIẾN THẮNG - DỰ ĐO&Aacute;N ĐỘI V&Ocirc; ĐỊCH WORLD CUP 2018 C&Ugrave;NG FRESH FOODS MART Giải b&oacute;ng đ&aacute; s&ocirc;i động nhất h&agrave;nh tinh đ&atilde; c&oacute; trận đấu khai mạc xuất sắc!!! Ăn b&oacute;ng đ&aacute; &ndash; ngủ b&oacute;ng đ&aacute; &ndash; chơi b&oacute;ng đ&aacute;, h&atilde;y biến dịp cổ vũ trận đấu World Cup th&agrave;nh TIỆC ĂN MỪNG cho cả gia đ&igrave;nh với MIMI GAME của Fresh Foods Mart !!! Giải thưởng: GIẢI ĐẶC BIỆT TRỊ GI&Aacute;: 2.000.000 VNĐ (BỮA LẨU CHIẾN THẮNG) gồm 03 kg thịt b&ograve; Mỹ nhập khẩu ( ba chỉ, nạc vai, gầu b&ograve;) v&agrave; 01 CHAI RƯỢU VANG ĐỎ CHI L&Ecirc;: rượu vang Escudo Rojo Chile 2016. 02 GIẢI KHUYẾN KH&Iacute;CH: TRỊ GI&Aacute; 200.000 đ (VOUCHER khi mua h&agrave;ng tại Fresh Foods Mart Việt Hưng ) Mỗi voucher được &aacute;p dụng trừ thẳng v&agrave;o ho&aacute; đơn mua h&agrave;ng từ 1 triệu đồng 1 voucher (&Aacute;p dụng 1 voucher &ndash; một h&oacute;a đơn) Lưu &yacute;: kh&ocirc;ng &aacute;p dụng quy ra tiền mặt hay quy đổi ngược ra gi&aacute; trị sản phẩm để mua. Thể lệ cuộc thi: Chiến thắng d&agrave;nh cho người dự đo&aacute;n đ&uacute;ng v&agrave; sớm nhất tỉ số trận đấu chung cuộc. Bước 1: Like + Share post n&agrave;y ở chế độ c&ocirc;ng khai tr&ecirc;n trang c&aacute; nh&acirc;n. Bước 2: Comment theo c&uacute; ph&aacute;p: [Đội v&ocirc; địch] + [tỉ số] + [số người dự đo&aacute;n giống bạn]+ [tag 3 người bạn] V&iacute; dụ : [T&acirc;y BanNha] + [2-1] + [2600]+ [@A, @B, @C] Lưu &yacute;: - Kết quả được ghi nhận khi thực hiện đầy đủ: Like - Share - Tag - v&agrave; dự đo&aacute;n kết quả theo đ&uacute;ng c&uacute; ph&aacute;p y&ecirc;u cầu - Kh&ocirc;ng chấp nhận c&aacute;c comment chỉnh sửa. Thời gian: Từ 15/6 - hết 24h ng&agrave;y 16/7 (1 ng&agrave;y trước khi đ&aacute; chung kết) Tham gia chương tr&igrave;nh tại đ&acirc;y. CH&Uacute;C C&Aacute;C BẠN THAM GIA MINI GAME VUI VẺ V&Agrave; C&Ugrave;NG D&Agrave;NH CHIẾN THẮNG VỚI M&Ugrave;A WORLD CUP 2018 S&Ocirc;I ĐỘNG.</p>\r\n', 1),
(4, 3, '155455870096e5901ac355220b7b44.jpg', 'Đến Tuy Hòa, “tôi mê hương vị từ biển xanh”', 'Bạn đã từng say mê những khung hình tuyệt đẹp về làng quê ven biển xinh đẹp, hoang sơ trong “Tôi thấy hoa vàng trên cỏ xanh”? Nếu có, bạn hãy cùng tìm hiểu thêm những cảnh đẹp và ẩm thực độc đáo của Tuy Hòa – Phú Yên nhé!', '<p>Hai năm về trước khi những thước phim lung linh của &ldquo;T&ocirc;i thấy hoa v&agrave;ng tr&ecirc;n cỏ xanh&rdquo; được tr&igrave;nh chiếu, th&agrave;nh phố biển Tuy H&ograve;a &ndash; Ph&uacute; Y&ecirc;n bỗng nổi tiếng như cồn. Khung cảnh đồng qu&ecirc; thanh b&igrave;nh, biển cả xanh mướt m&agrave;u ngọc lục bảo đẹp m&ecirc; hồn đ&atilde; chinh phục ho&agrave;n to&agrave;n du kh&aacute;ch khi đặt ch&acirc;n tới nơi đ&acirc;y. Đến với Ph&uacute; Y&ecirc;n, bạn h&atilde;y c&ugrave;ng t&igrave;m hiểu những địa điểm du lịch tuyệt đẹp v&agrave; những m&oacute;n ăn ng&acirc;y ngất hương vị biển đậm đ&agrave;, tươi r&oacute;i m&agrave; Fresh Foods Mart giới thiệu ngay sau đ&acirc;y nh&eacute;. Đ&atilde; một lần đến Tuy Ho&agrave;, bạn chắc chắn phải gh&eacute; ngay qua c&aacute;c Gềnh, một trong những thắng cảnh chỉ c&oacute; một ở Việt nam như Gềnh Đ&aacute; Đĩa, Gềnh Đ&egrave;n với những khối đ&aacute; h&igrave;nh lăng trụ xếp liền nhau, ngay ngắn vươn d&agrave;i ra biển rộng. D&acirc;n m&ecirc; nhiếp ảnh thường mong muốn sở hữu một khung h&igrave;nh ho&agrave;ng h&ocirc;n tr&ecirc;n những phiến đ&aacute; &oacute;ng l&ecirc;n m&agrave;u đen huyền b&iacute; v&agrave; nổi bật giữa l&agrave;n s&oacute;ng lụa mềm của biển.</p>\r\n', 1),
(5, 2, '1554558727aweb.jpg', 'Bùng nổ chương trình: Giảm nhiệt chào hè: OFF 10% hoa quả nhập khẩu', 'Tháng 6 – kỳ nghỉ hè tràn nắng, Fresh Foods bùng nổ chương trình: “GIẢM NHIỆT CHÀO HÈ” - OFF 10% HOA QUẢ NHẬP KHẨU chỉ có tại cửa hàng Fresh Foods Mart Việt Hưng.', '<p>Th&aacute;ng 6 &ndash; kỳ nghỉ h&egrave; tr&agrave;n nắng, Fresh Foods b&ugrave;ng nổ chương tr&igrave;nh: &ldquo;GIẢM NHIỆT CH&Agrave;O H&Egrave;&rdquo; - OFF 10% HOA QUẢ NHẬP KHẨU chỉ c&oacute; tại cửa h&agrave;ng Fresh Foods Mart Việt Hưng. Từ ng&agrave;y 1/06 &ndash; 15/06/2018, qu&yacute; kh&aacute;ch sẽ được giảm gi&aacute; ngay 10% với đơn h&agrave;ng mua mặt h&agrave;ng hoa quả tươi nhập khẩu theo đường h&agrave;ng kh&ocirc;ng. Hoa quả tươi tại Fresh Foods Mart như t&aacute;o Envy, KiKu, Kiwi v&agrave;ng New Zealand, L&ecirc; H&agrave;n Quốc&hellip; lu&ocirc;n tươi mới, đạt chất lượng ho&agrave;n hảo khi đến tay người ti&ecirc;u d&ugrave;ng. H&egrave; n&oacute;ng bức sẽ m&aacute;t lạnh sảng kho&aacute;i tức th&igrave; khi c&oacute; ngay m&oacute;n sinh tố hoa quả tươi ngon, Fresh Foods Mart Việt Hưng lu&ocirc;n sẵn s&agrave;ng phục vụ qu&yacute; kh&aacute;ch. Giảm gi&aacute; nhanh tay, mua ngay &ndash; hưởng ưu đ&atilde;i!</p>\r\n', 1),
(6, 3, '1554558796web.jpg', 'Chúc mừng ngày Quốc tế Thiếu nhi 1/6	', 'Quốc tế thiếu nhi', '<p>Nh&acirc;n ng&agrave;y Quốc tế Thiếu nhi 1-6, FRESH FOODS tr&acirc;n trọng gửi đến c&aacute;c em b&eacute; trong đại gia đ&igrave;nh Fresh Foods n&oacute;i ri&ecirc;ng cũng như c&aacute;c &ldquo;kh&aacute;ch h&agrave;ng nh&iacute;&rdquo; n&oacute;i chung lời ch&uacute;c mừng vui tươi nhất, ch&uacute;c c&aacute;c b&eacute; c&oacute; một ng&agrave;y lễ vui vẻ, hạnh ph&uacute;c b&ecirc;n gia đ&igrave;nh v&agrave; nhận được thật nhiều m&oacute;n qu&agrave; độc đ&aacute;o . Ng&agrave;y 1 -6 mở đầu cho một kỳ nghỉ h&egrave; cực chất, c&aacute;c b&eacute; h&atilde;y trải nghiệm những ng&agrave;y h&egrave; s&ocirc;i nổi v&agrave; thật bổ &iacute;ch với những m&oacute;n ăn ngon tuyệt nh&eacute;!</p>\r\n', 1),
(7, 2, '155455891798bb8f8e5914b74aee05.jpg', 'PHÓNG SỰ ẢNH: CÁ HỒI về kho phục vụ chương trình “CÙNG FILLET CÁ- GIẢM GIÁ LIỀN TAY”', 'Tin tức nóng hổi được gửi về từ Phóng viên \"Fresh Foods Mart\" thường trú tại 106, P6, Nguyễn Cao Luyện, KĐT Việt Hưng, mời các độc giả thân yêu cùng đón đọc.', '<p>tức chuyển về kho Fresh Foods Mart Việt Hưng để đảm bảo c&aacute; lu&ocirc;n được l&agrave;m lạnh, giữ được hương vị ho&agrave;n hảo tuyệt đối. C&aacute; hồi Na Uy sống ho&agrave;n to&agrave;n tự nhi&ecirc;n trong m&ocirc;i trường trong sạch v&agrave; được những chuy&ecirc;n gia ẩm thực h&agrave;ng đầu đ&aacute;nh gi&aacute; l&agrave; loại c&aacute; hồi ngon nhất. C&aacute; hồi tươi tại Fresh Foods Mart nhập khẩu từ những nh&agrave; xuất khẩu uy t&iacute;n nhất tại Nauy sẽ cho bạn trải nghiệm hương vị thịt c&aacute; chắc ngọt, tươi ngon, hương vị đẳng cấp.</p>\r\n', 1),
(8, 2, '1554558934anh-km.jpg', 'CÙNG FILLET CÁ - GIẢM GIÁ LIỀN TAY', 'Chào hè cực chất, Fresh Foods tưng bừng tổ chức chương trình “CÙNG FILLET CÁ – GIẢM GIÁ LIỀN TAY” với nhiều ƯU ĐÃI KHỦNG cho khách hàng đến tham gia chương trình tại Fresh Foods Mart Việt Hưng.', '<p>Ch&agrave;o h&egrave; cực chất, Fresh Foods tưng bừng tổ chức chương tr&igrave;nh &ldquo;C&Ugrave;NG FILLET C&Aacute; &ndash; GIẢM GI&Aacute; LIỀN TAY&rdquo; với nhiều ƯU Đ&Atilde;I KHỦNG cho kh&aacute;ch h&agrave;ng đến tham gia chương tr&igrave;nh tại Fresh Foods Mart Việt Hưng. Trong v&ograve;ng 1 tiếng, kh&aacute;ch h&agrave;ng được tận mắt chứng kiến quy tr&igrave;nh FILLET C&Aacute; HỒI SI&Ecirc;U CHUẨN dưới b&agrave;n tay đầu bếp t&agrave;i ba của Fresh Foods đồng thời nhận ngay ưu đ&atilde;i OFF 5% đơn h&agrave;ng mua c&aacute; hồi fillet. Những miếng c&aacute; hồi tươi r&oacute;i c&oacute; thể chế biến ngay m&oacute;n sushi, sashimi hay &aacute;p chảo theo phong c&aacute;ch Ch&acirc;u &Acirc;u tuyệt ngon. Qu&aacute; tr&igrave;nh FILLET C&Aacute; HỒI TƯƠI TRỰC TIẾP sẽ diễn ra tại cửa h&agrave;ng để đảm bảo hương vị tươi ngon nhất cho từng phần c&aacute;. Chương tr&igrave;nh diễn ra v&agrave;o l&uacute;c 18h, li&ecirc;n tục h&agrave;ng ng&agrave;y từ thứ 2 đến thứ 7 (28/05 &ndash; 03/06/2018). Ưu đ&atilde;i giảm gi&aacute; 5% đơn h&agrave;ng chỉ &aacute;p dụng trong v&ograve;ng 1 tiếng fillet c&aacute;, qu&yacute; kh&aacute;ch NHANH TAY KẺO CH&Aacute;Y H&Agrave;NG! Hotline: 1800 68 66 (Free) - 25 Gia Quất, Long Bi&ecirc;n, H&agrave; Nội &ndash; 024.3871.6138 - 46 Trung H&ograve;a, Cầu Giấy, H&agrave; Nội &ndash; 024.3783.6287 - 106 P6, Khu đ&ocirc; thị Việt Hưng, Long Bi&ecirc;n, H&agrave; Nội - 024.3732.6999 Fanpage: https://www.facebook.com/freshfoodsthucphamsachTP/ ĐƯỢC Đ&Oacute;N TIẾP QU&Yacute; KH&Aacute;CH H&Agrave;NG L&Agrave; NIỀM VINH HẠNH CỦA CH&Uacute;NG T&Ocirc;I !!!</p>\r\n', 1),
(9, 2, '1554558974thank-u.jpg', 'THÔNG BÁO KẾT THÚC CHƯƠNG TRÌNH KHUYẾN MẠI THÁNG 5', 'Fresh_Foods xin trân trọng cảm ơn Quý khách hàng đã ủng hộ chương trình khuyến mại “Tháng 5 rực rỡ - Mua ngay kẻo lỡ”.', '<p>CONGRATULATION!!! Fresh Foods xin tr&acirc;n trọng cảm ơn Qu&yacute; kh&aacute;ch h&agrave;ng đ&atilde; ủng hộ chương tr&igrave;nh khuyến mại &ldquo;Th&aacute;ng 5 rực rỡ - Mua ngay kẻo lỡ&rdquo;. Chỉ 10 ng&agrave;y diễn ra ưu đ&atilde;i, số lượng chai sốt ướp thịt nướng Yakiniku No Tare Mild đ&atilde; ti&ecirc;u thụ một c&aacute;ch ch&oacute;ng mặt. Hiện tại chỉ c&ograve;n duy nhất 03 PHẦN QU&Agrave; ƯU Đ&Atilde;I tại Fresh Foods Mart Việt Hưng. C&aacute;c kh&aacute;ch h&agrave;ng chưa kịp nhận ưu đ&atilde;i v&agrave; trải nghiệm vị ngon của chai sốt ướp Nhật Bản h&atilde;y nhanh ch&oacute;ng tới cửa h&agrave;ng hoặc gọi số hotline: 1800 6866 để nhận qu&agrave; tặng ngay th&ocirc;i. Th&aacute;ng 6 tới Fresh Foods ch&agrave;o h&egrave; với rất nhiều chương tr&igrave;nh khuyến m&atilde;i hấp dẫn. C&ugrave;ng hồi hộp chờ đ&oacute;n nh&eacute;!</p>\r\n', 1),
(10, 3, '1554559144ngay-cua-me-2-01.jpg', 'CÙNG FRESH FOODS CHÚC MỪNG NGÀY CỦA MẸ', 'Nhân dịp Ngày Của Mẹ, Công ty TNHH Thực phẩm sạch Thương mại T&P Fresh Foods xin trân trọng gửi tới các bà, các mẹ những lời chúc tốt đẹp và chân thành nhất. Chúc các bà, các mẹ luôn xinh đẹp, trẻ trung, hạnh phúc, may mắn và thành công.', '<p>Nh&acirc;n dịp Ng&agrave;y Của Mẹ, C&ocirc;ng ty TNHH Thực phẩm sạch Thương mại T&amp;P Fresh Foods xin tr&acirc;n trọng gửi tới c&aacute;c b&agrave;, c&aacute;c mẹ những lời ch&uacute;c tốt đẹp v&agrave; ch&acirc;n th&agrave;nh nhất. Ch&uacute;c c&aacute;c b&agrave;, c&aacute;c mẹ lu&ocirc;n xinh đẹp, trẻ trung, hạnh ph&uacute;c, may mắn v&agrave; th&agrave;nh c&ocirc;ng. Fresh Foods rất h&acirc;n hạnh được phục vụ thực phẩm sạch cho bữa ăn ấm c&uacute;ng trong ng&agrave;y đặc biệt n&agrave;y!</p>\r\n', 1),
(11, 1, '15547411081f0b11cdce6a2034797b.jpg', 'HÀ NỘI - LONG BIÊN: NHÂN VIÊN CHĂM SÓC KHÁCH HÀNG', 'Freshfoods tuyển gấp nhân viên tuyển dụng', '<p>M&Ocirc; TẢ C&Ocirc;NG VIỆC * NHIỆM VỤ CH&Iacute;NH - Đầu mối nhận mọi th&ocirc;ng tin về khiếu nại của kh&aacute;ch h&agrave;ng, đưa ra c&aacute;c phương hướng xử l&yacute;, tr&igrave;nh Trưởng ph&ograve;ng xin &yacute; kiến, thảo luận tại cuộc họp giao ban. - Tổ chức thực hiện đo lường mức thỏa m&atilde;n của kh&aacute;ch h&agrave;ng 2 lần/năm, t&igrave;m hiểu nguy&ecirc;n nh&acirc;n g&acirc;y ra c&aacute;c đ&aacute;nh gi&aacute; kh&ocirc;ng tốt, chưa đạt của kh&aacute;ch h&agrave;ng, đề xuất giải ph&aacute;p cải tiến. - L&ecirc;n kế hoạch để thăm hỏi kh&aacute;ch h&agrave;ng VIP, kh&aacute;ch h&agrave;ng mua sỉ, kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của c&ocirc;ng ty. Tổ chức thực hiện, kiểm tra, gi&aacute;m s&aacute;t v&agrave; điều chỉnh kế hoạch. Ghi nhận &yacute; kiến của kh&aacute;ch h&agrave;ng để cải tiến c&ocirc;ng việc. * NHIỆM VỤ KH&Aacute;C - Phối hợp với nh&acirc;n sự trong ph&ograve;ng để thực hiện c&aacute;c chương tr&igrave;nh quảng c&aacute;o khuyến m&atilde;i, ph&acirc;n t&iacute;ch kỹ những những lợi &iacute;ch của kh&aacute;ch h&agrave;ng khi nhận được, quy tr&igrave;nh thủ tục nhằm ph&aacute;t huy cao nhất hiệu quả của kế hoạch Marketing theo mục ti&ecirc;u đề ra. - Chủ động lập kế hoạch tặng qu&agrave; cho kh&aacute;ch h&agrave;ng trong c&aacute;c dịp lễ, tết, ng&agrave;y khai trương, ng&agrave;y th&agrave;nh lập của kh&aacute;ch h&agrave;ng (phối hợp với từng k&ecirc;nh b&aacute;n h&agrave;ng để tổ chức thực hiện). - Chi tiết c&ocirc;ng việc sẽ trao đổi khi phỏng vấn. * QUYỀN LỢI ĐƯỢC HƯỞNG - Lương hấp dẫn, thỏa thuận theo năng lực của ứng vi&ecirc;n. - Được l&agrave;m việc tại c&ocirc;ng ty h&agrave;ng đầu Việt Nam trong lĩnh vực thực phẩm sạch nhập khẩu. M&ocirc;i trường l&agrave;m việc chuy&ecirc;n nghiệp, trẻ trung, năng động, sếp t&acirc;m l&yacute;&hellip; - Đ&oacute;ng đầy đủ BHXH, BHYT, BHTN, thưởng c&aacute;c ng&agrave;y lễ tết, th&aacute;ng lương thứ 13, thưởng hiệu quả c&ocirc;ng việc cuối năm, x&eacute;t n&acirc;ng lương', 0),
(12, 1, '15547411001f0b11cdce6a2034797b.jpg', 'HÀ NỘI - CẦU GIẤY: KẾ TOÁN KHO', 'Freshfoods tuyển gấp nhân viên tuyển dụng', '<p>- T&igrave;m kiếm nh&agrave; cung cấp trong nước v&agrave; nước ngo&agrave;i, lựa chọn NCC uy t&iacute;n v&agrave; ph&ugrave; hợp, thỏa thuận gi&aacute; v&agrave; đ&agrave;m ph&aacute;n c&aacute;c điều kiện giao h&agrave;ng, thanh to&aacute;n, vv&hellip; đảm bảo cung ứng h&agrave;ng h&oacute;a cho c&ocirc;ng ty với chất lượng tốt, gi&aacute; cả cạnh tranh, đưa ra phương &aacute;n mua h&agrave;ng, đề xuất v&agrave; b&aacute;o c&aacute;o cấp tr&ecirc;n. - X&uacute;c tiến hợp đồng mua b&aacute;n, đặt h&agrave;ng NCC khi Ban l&atilde;nh đạo duyệt, theo d&otilde;i qu&aacute; tr&igrave;nh giao h&agrave;ng, l&agrave;m đề nghị thanh to&aacute;n, kiểm tra chứng từ nhập khẩu, đảm bảo h&agrave;ng về theo đ&uacute;ng dự kiến. - T&iacute;nh chi ph&iacute; gi&aacute; vốn h&agrave;ng h&oacute;a. - Gặp gỡ, tiếp c&aacute;c đối t&aacute;c trong nước v&agrave; nước ngo&agrave;i m&igrave;nh phụ tr&aacute;ch khi c&oacute; lịch hẹn, tham gia c&aacute;c hội chợ thương mại trong nước v&agrave; quốc tế. - Thực hiện c&aacute;c c&ocirc;ng việc kh&aacute;c c&oacute; li&ecirc;n quan theo sự ph&acirc;n c&ocirc;ng của Trưởng Bộ Phận. QUYỀN LỢI ĐƯỢC HƯỞNG - Lương từ 8-12 triệu/th&aacute;ng. Thỏa thuận theo năng lực - Phụ cấp ăn trưa: 25.000đ/ng&agrave;y c&ocirc;ng - Được l&agrave;m việc tại c&ocirc;ng ty h&agrave;ng đầu Việt Nam trong lĩnh vực thực phẩm sạch nhập khẩu. M&ocirc;i trường l&agrave;m việc trẻ trung năng động, th&acirc;n thiện. - Được hưởng c&aacute;c chế độ như BHXH, BHYT, BHTN, X&eacute;t n&acirc;ng lương đinh kỳ h&agrave;ng năm, thưởng lương th&aacute;ng thứ 13, thương hiệu quả c&ocirc;ng việc cuối năm, thưởng lễ, tết, sinh nhật, hiếu, hỉ, thăm quan, du lịch h&agrave;ng năm theo ch&iacute;nh s&aacute;ch của c&ocirc;ng ty&hellip;. - Được đ&agrave;o tạo, hướng dẫn để nhanh ch&oacute;ng nắm bắt c&ocirc;ng việc. - Cơ hội thăng tiến c&ocirc;ng bằng. Y&Ecirc;U CẦU C&Ocirc;NG VIỆC - Tốt nghiệp Đại học c&aacute;c chuy&ecirc;n ng&agrave;nh Kinh tế đối ngoại, kinh tế quốc tế, thương mại. Ư', 0),
(13, 1, '15547410931f0b11cdce6a2034797b.jpg', 'HÀ NỘI - LONG BIÊN: NHÂN VIÊN TUYỂN DỤNG', 'Freshfoods tuyển gấp nhân viên tuyển dụng', '<p>- T&igrave;m kiếm nh&agrave; cung cấp trong nước v&agrave; nước ngo&agrave;i, lựa chọn NCC uy t&iacute;n v&agrave; ph&ugrave; hợp, thỏa thuận gi&aacute; v&agrave; đ&agrave;m ph&aacute;n c&aacute;c điều kiện giao h&agrave;ng, thanh to&aacute;n, vv&hellip; đảm bảo cung ứng h&agrave;ng h&oacute;a cho c&ocirc;ng ty với chất lượng tốt, gi&aacute; cả cạnh tranh, đưa ra phương &aacute;n mua h&agrave;ng, đề xuất v&agrave; b&aacute;o c&aacute;o cấp tr&ecirc;n. - X&uacute;c tiến hợp đồng mua b&aacute;n, đặt h&agrave;ng NCC khi Ban l&atilde;nh đạo duyệt, theo d&otilde;i qu&aacute; tr&igrave;nh giao h&agrave;ng, l&agrave;m đề nghị thanh to&aacute;n, kiểm tra chứng từ nhập khẩu, đảm bảo h&agrave;ng về theo đ&uacute;ng dự kiến. - T&iacute;nh chi ph&iacute; gi&aacute; vốn h&agrave;ng h&oacute;a. - Gặp gỡ, tiếp c&aacute;c đối t&aacute;c trong nước v&agrave; nước ngo&agrave;i m&igrave;nh phụ tr&aacute;ch khi c&oacute; lịch hẹn, tham gia c&aacute;c hội chợ thương mại trong nước v&agrave; quốc tế. - Thực hiện c&aacute;c c&ocirc;ng việc kh&aacute;c c&oacute; li&ecirc;n quan theo sự ph&acirc;n c&ocirc;ng của Trưởng Bộ Phận. QUYỀN LỢI ĐƯỢC HƯỞNG - Lương từ 8-12 triệu/th&aacute;ng. Thỏa thuận theo năng lực - Phụ cấp ăn trưa: 25.000đ/ng&agrave;y c&ocirc;ng - Được l&agrave;m việc tại c&ocirc;ng ty h&agrave;ng đầu Việt Nam trong lĩnh vực thực phẩm sạch nhập khẩu. M&ocirc;i trường l&agrave;m việc trẻ trung năng động, th&acirc;n thiện. - Được hưởng c&aacute;c chế độ như BHXH, BHYT, BHTN, X&eacute;t n&acirc;ng lương đinh kỳ h&agrave;ng năm, thưởng lương th&aacute;ng thứ 13, thương hiệu quả c&ocirc;ng việc cuối năm, thưởng lễ, tết, sinh nhật, hiếu, hỉ, thăm quan, du lịch h&agrave;ng năm theo ch&iacute;nh s&aacute;ch của c&ocirc;ng ty&hellip;. - Được đ&agrave;o tạo, hướng dẫn để nhanh ch&oacute;ng nắm bắt c&ocirc;ng việc. - Cơ hội thăng tiến c&ocirc;ng bằng. Y&Ecirc;U CẦU C&Ocirc;NG VIỆC - Tốt nghiệp Đại học c&aacute;c chuy&ecirc;n ng&agrave;nh Kinh tế đối ngoại, kinh tế quốc tế, thương mại. Ư', 0),
(14, 1, '15547410881f0b11cdce6a2034797b.jpg', 'Hà Nội - Long Biên: Nhân viên lễ tân kiêm bán hàng', 'Freshfoods tuyển gấp nhân viên tuyển dụng', '<p>M&Ocirc; TẢ C&Ocirc;NG VIỆC - Lập chứng từ nhập/ xuất h&agrave;ng theo quy định. - Tập hợp Phiếu giao nhận b&agrave;n giao cho Kế to&aacute;n c&ocirc;ng nợ . - Tập hợp chứng từ nhập/ xuất kho b&agrave;n giao cho Kế to&aacute;n tổng hợp kho. - Cập nhật c&aacute;c ph&aacute;t sinh li&ecirc;n quan đến h&agrave;ng tồn kho v&agrave;o phần mềm kế to&aacute;n của kho. B&aacute;o c&aacute;o nhập xuất tồn kho. - Xuất đ&uacute;ng mặt h&agrave;ng v&agrave; đ&uacute;ng gi&aacute;. - C&aacute;c c&ocirc;ng việc ph&aacute;t sinh kh&aacute;c theo sự ph&acirc;n c&ocirc;ng của kế to&aacute;n trưởng. - Chi tiết sẽ trao đổi khi phỏng vấn. Y&Ecirc;U CẦU CHUNG - C&oacute; 01 năm kinh nghiệm tại vị tr&iacute; tương đương - Ưu ti&ecirc;n ứng vi&ecirc;n đ&atilde; c&oacute; kinh nghiệm kế to&aacute;n trong lĩnh vực thực phẩm, ph&acirc;n phối h&agrave;ng ti&ecirc;u d&ugrave;ng, - Độ tuổi từ 22 - 35, ngoại h&igrave;nh ưu nh&igrave;n - Sức khỏe Tốt, nhiệt t&igrave;nh, c&oacute; tr&aacute;ch nhiệm trong c&ocirc;ng việc, giao tiếp tốt - Tin học văn phòng thành thạo QUYỀN LỢI ĐƯỢC HƯỞNG - Thu nhập: 7 - 8 triệu/th&aacute;ng. Thỏa thuận theo năng lực. - L&agrave;m việc trong một m&ocirc;i trường năng động, trẻ trung, vui vẻ. - Được hưởng đầy đủ c&aacute;c chế độ BHXH, BHYT, BHTN, x&eacute;t n&acirc;ng lương định kỳ h&agrave;ng năm, lương th&aacute;ng thứ 13, thưởng lễ, tết, sinh nhật, hiếu, hỉ, du lịch h&agrave;ng năm,..theo quy định nh&agrave; nước v&agrave; nội quy của c&ocirc;ng ty. - Được đ&agrave;o tạo, hướng dẫn dể nhanh bắt nhịp được với c&ocirc;ng việc. C&aacute;c ứng vi&ecirc;n quan t&acirc;m vui l&ograve;ng gửi hồ sơ ứng tuyển qua email hoặc trực tiếp đến tại c&ocirc;ng ty. Li&ecirc;n hệ: 0387373336 (Mr.Ki&ecirc;n) CV xin gửi về: tuyendung@freshfoods.vn Địa chỉ: Số 25, phố Gia Quất, Long Bi&ecirc;n, H&agrave; Nội ** Nhận hồ sơ ứng vi&ecirc;n bằng ng&ocirc;n ngữ: Tiếng Việt Ng&agrave;y hết hạn: 25/03/2018</p>\r\n', 0),
(15, 1, '15547410831f0b11cdce6a2034797b.jpg', 'HÀ NỘI - CẦU GIẤY: NHÂN VIÊN SALE ADMIN', 'HÀ NỘI - CẦU GIẤY: TUYỂN DỤNG KẾ TOÁN KHO', '<p>- Ph&aacute;t triển c&aacute;c hoạt động kinh doanh trong khu vực được giao. - Chăm s&oacute;c hệ thống kh&aacute;ch h&agrave;ng cũ v&agrave; ph&aacute;t triển kh&aacute;ch h&agrave;ng mới. - T&igrave;m kiếm kh&aacute;ch h&agrave;ng, nh&agrave; ph&acirc;n phối ng&agrave;nh h&agrave;ng ti&ecirc;u d&ugrave;ng thực phẩm c&oacute; năng lực ph&acirc;n phối sản phẩm trong khu vực. - Lập kế hoạch b&aacute;n h&agrave;ng tốt. lập danh s&aacute;ch kh&aacute;ch h&agrave;ng tiềm năng, chuẩn bị c&aacute;c kế hoạch/ phương &aacute;n tiếp cận, gặp gỡ, đ&agrave;m ph&aacute;n, thương lượng, k&yacute; kết hợp đồng b&aacute;n h&agrave;ng. Trực tiếp tham gia tiếp kh&aacute;ch v&agrave; giải quyết c&aacute;c khiếu nại, thắc mắc của kh&aacute;ch h&agrave;ng. - Tham gia hướng dẫn đ&agrave;o tạo về kiến thức sản phẩm cho đại diện nh&agrave; ph&acirc;n phối. - Đề xuất, tham mưu cho l&atilde;nh đạo ph&ograve;ng v&agrave; C&ocirc;ng ty về ph&aacute;t triển c&aacute;c phương &aacute;n kinh doanh, ph&aacute;t triển sản phẩm&hellip;. - Chi tiết sẽ trao đổi khi phỏng vấn. QUYỀN LỢI ĐƯỢC HƯỞNG - Được l&agrave;m việc tại c&ocirc;ng ty h&agrave;ng đầu Việt Nam trong lĩnh vực thực phẩm sạch nhập khẩu. M&ocirc;i trường trẻ trung, năng động, cơ hội thăng tiến cao. C&oacute; cơ hội l&ecirc;n c&aacute;c vị tr&iacute; gi&aacute;m s&aacute;t kinh doanh, trưởng ph&ograve;ng kinh doanh, ph&oacute; gi&aacute;m đốc kinh doanh, Gi&aacute;m đốc kinh doanh v&agrave; c&aacute;c vị tr&iacute; cao hơn khi đủ năng lực. - Hưởng lương cơ bản 6 Triệu/th&aacute;ng + Lương kinh doanh: thu nhập thực tế từ 10 &ndash; 20 triệu hoặc hơn, theo năng lực. - Ch&iacute;nh s&aacute;ch lương theo năng lực v&agrave; kh&ocirc;ng giới hạn. - Hưởng đầy đủ c&aacute;c chế độ: BHXH, BHYT, BHTN - Được x&eacute;t n&acirc;ng lương định kỳ h&agrave;ng năm, thưởng lương th&aacute;ng thứ 13, thưởng hiệu quả c&ocirc;ng việc cuối năm, sinh nhật, hiếu, hỉ, ng&agrave;y quốc tế phụ nữ, 30.4, du lịch năm. - Được hưởng ch&iacute;nh s&aacute;ch ưu đ&', 1),
(16, 1, '15547410761f0b11cdce6a2034797b.jpg', 'FRESH FOODS TUYỂN NV KINH DOANH TRÊN TOÀN QUỐC', 'HÀ NỘI - LONG BIÊN: NHÂN VIÊN MUA HÀNG', '<p>- Ph&aacute;t triển c&aacute;c hoạt động kinh doanh trong khu vực được giao. - Chăm s&oacute;c hệ thống kh&aacute;ch h&agrave;ng cũ v&agrave; ph&aacute;t triển kh&aacute;ch h&agrave;ng mới. - T&igrave;m kiếm kh&aacute;ch h&agrave;ng, nh&agrave; ph&acirc;n phối ng&agrave;nh h&agrave;ng ti&ecirc;u d&ugrave;ng thực phẩm c&oacute; năng lực ph&acirc;n phối sản phẩm trong khu vực. - Lập kế hoạch b&aacute;n h&agrave;ng tốt. lập danh s&aacute;ch kh&aacute;ch h&agrave;ng tiềm năng, chuẩn bị c&aacute;c kế hoạch/ phương &aacute;n tiếp cận, gặp gỡ, đ&agrave;m ph&aacute;n, thương lượng, k&yacute; kết hợp đồng b&aacute;n h&agrave;ng. Trực tiếp tham gia tiếp kh&aacute;ch v&agrave; giải quyết c&aacute;c khiếu nại, thắc mắc của kh&aacute;ch h&agrave;ng. - Tham gia hướng dẫn đ&agrave;o tạo về kiến thức sản phẩm cho đại diện nh&agrave; ph&acirc;n phối. - Đề xuất, tham mưu cho l&atilde;nh đạo ph&ograve;ng v&agrave; C&ocirc;ng ty về ph&aacute;t triển c&aacute;c phương &aacute;n kinh doanh, ph&aacute;t triển sản phẩm&hellip;. - Chi tiết sẽ trao đổi khi phỏng vấn. QUYỀN LỢI ĐƯỢC HƯỞNG - Được l&agrave;m việc tại c&ocirc;ng ty h&agrave;ng đầu Việt Nam trong lĩnh vực thực phẩm sạch nhập khẩu. M&ocirc;i trường trẻ trung, năng động, cơ hội thăng tiến cao. C&oacute; cơ hội l&ecirc;n c&aacute;c vị tr&iacute; gi&aacute;m s&aacute;t kinh doanh, trưởng ph&ograve;ng kinh doanh, ph&oacute; gi&aacute;m đốc kinh doanh, Gi&aacute;m đốc kinh doanh v&agrave; c&aacute;c vị tr&iacute; cao hơn khi đủ năng lực. - Hưởng lương cơ bản 6 Triệu/th&aacute;ng + Lương kinh doanh: thu nhập thực tế từ 10 &ndash; 20 triệu hoặc hơn, theo năng lực. - Ch&iacute;nh s&aacute;ch lương theo năng lực v&agrave; kh&ocirc;ng giới hạn. - Hưởng đầy đủ c&aacute;c chế độ: BHXH, BHYT, BHTN - Được x&eacute;t n&acirc;ng lương định kỳ h&agrave;ng năm, thưởng lương th&aacute;ng thứ 13, thưởng hiệu quả c&ocirc;ng việc cuối năm, sinh nhật, hiếu, hỉ, ng&agrave;y quốc tế phụ nữ, 30.4, du lịch năm. - Được hưởng ch&iacute;nh s&aacute;ch ưu đ&', 1),
(17, 1, '15547410701f0b11cdce6a2034797b.jpg', 'HÀ NỘI - LONG BIÊN: LỄ TÂN KIÊM BÁN HÀNG', 'Hà Nội - Long Biên: Nhân viên Hành chính', '<p>- Ph&aacute;t triển c&aacute;c hoạt động kinh doanh trong khu vực được giao. - Chăm s&oacute;c hệ thống kh&aacute;ch h&agrave;ng cũ v&agrave; ph&aacute;t triển kh&aacute;ch h&agrave;ng mới. - T&igrave;m kiếm kh&aacute;ch h&agrave;ng, nh&agrave; ph&acirc;n phối ng&agrave;nh h&agrave;ng ti&ecirc;u d&ugrave;ng thực phẩm c&oacute; năng lực ph&acirc;n phối sản phẩm trong khu vực. - Lập kế hoạch b&aacute;n h&agrave;ng tốt. lập danh s&aacute;ch kh&aacute;ch h&agrave;ng tiềm năng, chuẩn bị c&aacute;c kế hoạch/ phương &aacute;n tiếp cận, gặp gỡ, đ&agrave;m ph&aacute;n, thương lượng, k&yacute; kết hợp đồng b&aacute;n h&agrave;ng. Trực tiếp tham gia tiếp kh&aacute;ch v&agrave; giải quyết c&aacute;c khiếu nại, thắc mắc của kh&aacute;ch h&agrave;ng. - Tham gia hướng dẫn đ&agrave;o tạo về kiến thức sản phẩm cho đại diện nh&agrave; ph&acirc;n phối. - Đề xuất, tham mưu cho l&atilde;nh đạo ph&ograve;ng v&agrave; C&ocirc;ng ty về ph&aacute;t triển c&aacute;c phương &aacute;n kinh doanh, ph&aacute;t triển sản phẩm&hellip;. - Chi tiết sẽ trao đổi khi phỏng vấn. QUYỀN LỢI ĐƯỢC HƯỞNG - Được l&agrave;m việc tại c&ocirc;ng ty h&agrave;ng đầu Việt Nam trong lĩnh vực thực phẩm sạch nhập khẩu. M&ocirc;i trường trẻ trung, năng động, cơ hội thăng tiến cao. C&oacute; cơ hội l&ecirc;n c&aacute;c vị tr&iacute; gi&aacute;m s&aacute;t kinh doanh, trưởng ph&ograve;ng kinh doanh, ph&oacute; gi&aacute;m đốc kinh doanh, Gi&aacute;m đốc kinh doanh v&agrave; c&aacute;c vị tr&iacute; cao hơn khi đủ năng lực. - Hưởng lương cơ bản 6 Triệu/th&aacute;ng + Lương kinh doanh: thu nhập thực tế từ 10 &ndash; 20 triệu hoặc hơn, theo năng lực. - Ch&iacute;nh s&aacute;ch lương theo năng lực v&agrave; kh&ocirc;ng giới hạn. - Hưởng đầy đủ c&aacute;c chế độ: BHXH, BHYT, BHTN - Được x&eacute;t n&acirc;ng lương định kỳ h&agrave;ng năm, thưởng lương th&aacute;ng thứ 13, thưởng hiệu quả c&ocirc;ng việc cuối năm, sinh nhật, hiếu, hỉ, ng&agrave;y quốc tế phụ nữ, 30.4, du lịch năm. - Được hưởng ch&iacute;nh s&aacute;ch ưu đ&', 1),
(18, 1, '15547410601f0b11cdce6a2034797b.jpg', ' 2019 HÀ NỘI - LONG BIÊN: NHÂN VIÊN CHĂM SÓC KHÁCH HÀNG', 'FRESH FOODS TUYỂN NHÂN VIÊN CHĂM SÓC KHÁCH HÀNG', '<p>- Ph&aacute;t triển c&aacute;c hoạt động kinh doanh trong khu vực được giao. - Chăm s&oacute;c hệ thống kh&aacute;ch h&agrave;ng cũ v&agrave; ph&aacute;t triển kh&aacute;ch h&agrave;ng mới. - T&igrave;m kiếm kh&aacute;ch h&agrave;ng, nh&agrave; ph&acirc;n phối ng&agrave;nh h&agrave;ng ti&ecirc;u d&ugrave;ng thực phẩm c&oacute; năng lực ph&acirc;n phối sản phẩm trong khu vực. - Lập kế hoạch b&aacute;n h&agrave;ng tốt. lập danh s&aacute;ch kh&aacute;ch h&agrave;ng tiềm năng, chuẩn bị c&aacute;c kế hoạch/ phương &aacute;n tiếp cận, gặp gỡ, đ&agrave;m ph&aacute;n, thương lượng, k&yacute; kết hợp đồng b&aacute;n h&agrave;ng. Trực tiếp tham gia tiếp kh&aacute;ch v&agrave; giải quyết c&aacute;c khiếu nại, thắc mắc của kh&aacute;ch h&agrave;ng. - Tham gia hướng dẫn đ&agrave;o tạo về kiến thức sản phẩm cho đại diện nh&agrave; ph&acirc;n phối. - Đề xuất, tham mưu cho l&atilde;nh đạo ph&ograve;ng v&agrave; C&ocirc;ng ty về ph&aacute;t triển c&aacute;c phương &aacute;n kinh doanh, ph&aacute;t triển sản phẩm&hellip;. - Chi tiết sẽ trao đổi khi phỏng vấn. QUYỀN LỢI ĐƯỢC HƯỞNG - Được l&agrave;m việc tại c&ocirc;ng ty h&agrave;ng đầu Việt Nam trong lĩnh vực thực phẩm sạch nhập khẩu. M&ocirc;i trường trẻ trung, năng động, cơ hội thăng tiến cao. C&oacute; cơ hội l&ecirc;n c&aacute;c vị tr&iacute; gi&aacute;m s&aacute;t kinh doanh, trưởng ph&ograve;ng kinh doanh, ph&oacute; gi&aacute;m đốc kinh doanh, Gi&aacute;m đốc kinh doanh v&agrave; c&aacute;c vị tr&iacute; cao hơn khi đủ năng lực. - Hưởng lương cơ bản 6 Triệu/th&aacute;ng + Lương kinh doanh: thu nhập thực tế từ 10 &ndash; 20 triệu hoặc hơn, theo năng lực. - Ch&iacute;nh s&aacute;ch lương theo năng lực v&agrave; kh&ocirc;ng giới hạn. - Hưởng đầy đủ c&aacute;c chế độ: BHXH, BHYT, BHTN - Được x&eacute;t n&acirc;ng lương định kỳ h&agrave;ng năm, thưởng lương th&aacute;ng thứ 13, thưởng hiệu quả c&ocirc;ng việc cuối năm, sinh nhật, hiếu, hỉ, ng&agrave;y quốc tế phụ nữ, 30.4, du lịch năm. - Được hưởng ch&iacute;nh s&aacute;ch ưu đ&', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `pk_product_id` int(11) NOT NULL,
  `fk_list_product_id` int(11) NOT NULL,
  `img_product` varchar(500) NOT NULL,
  `title_product` varchar(500) NOT NULL,
  `hot_product` int(11) NOT NULL,
  `price` varchar(500) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `short_description` varchar(2000) NOT NULL,
  `info_detail` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`pk_product_id`, `fk_list_product_id`, `img_product`, `title_product`, `hot_product`, `price`, `parent_id`, `short_description`, `info_detail`) VALUES
(1, 2, '', 'Thịt cừu có xương cắt cộc dông lạnh', 1, 'Giá liên hệ', 0, '\r\n    Frozen Bone In Lamb Leg Chump Off – Đùi cừu có xương cắt cộc đông lạnh &nbsp; &nbsp; &nbsp; &nbsp;\r\nThành phần : Thịt cừu &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\nXuất xứ: Úc&nbsp; &nbsp; &nbsp;&nbsp;\r\nBảo quản: ≤ -18 độ C\r\nSản xuất bởi : Midfield\r\nMô tả: Phần đùi cừu có xương được cắt ngang từ xương cụt và cắt&nbsp;bỏ từ khủyu chân\r\nĐùi cừu có xương thích hợp để làm các món nướng hoặc hầm.\r\n', '<p>Frozen Bone In Lamb Leg Chump Off &ndash; Đ&ugrave;i cừu c&oacute; xương cắt cộc đ&ocirc;ng lạnh &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\nTh&agrave;nh phần : Thịt cừu &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n<p>Xuất xứ: &Uacute;c&nbsp; &nbsp; &nbsp;&nbsp;<br />\r\nBảo quản: &le; -18 độ C<br />\r\nSản xuất bởi : Midfield<br />\r\n<span style=\"color:rgb(20, 24, 35); font-family:helvetica,arial,sans-serif\">M&ocirc; tả: Phần đ&ugrave;i cừu c&oacute; xương được cắt ngang từ xương cụt v&agrave; cắt&nbsp;bỏ từ khủyu ch&acirc;n</span><br />\r\n<span style=\"color:rgb(20, 24, 35); font-family:helvetica,arial,sans-serif\">Đ&ugrave;i cừu c&oacute; xương th&iacute;ch hợp để l&agrave;m c&aacute;c m&oacute;n nướng hoặc hầm.</span></p>'),
(2, 2, '1554311135s1-dui-cuu-khong-xuong-dong-lanh.gif', 'Đùi cừu khồn xương đông lạnh', 1, 'Giá liên hệ', 0, '<p>FROZEN BONELESS LAMB LEG - Đ&Ugrave;I CỪU KH&Ocirc;NG XƯƠNG Đ&Ocirc;NG LẠNH Xuất xứ : &Uacute;c Khối lượng tịnh : 2-4 kg/ miếng Th&agrave;nh phần : Thịt cừu Bảo quản: &le; -18 độ C&nbsp; Sản xuất bởi : Midfield&nbsp; HSD : 24 th&aacute;ng &nbsp;kể từ ng&agrave;y sản xuất M&ocirc; tả: Phần đ&ugrave;i cừu đ&atilde; được r&uacute;t to&agrave;n bộ xương v&agrave; đ&oacute;ng g&oacute;i th&agrave;nh quả tr&ograve;n Đ&ugrave;i cừu kh&ocirc;ng xương ph&ugrave; hợp với c&aacute;c m&oacute;n bỏ l&ograve;, &aacute;p chảo hoặc lẩu&nbsp;</p>\r\n', '<p>FROZEN BONELESS LAMB LEG - ĐÙI CỪU KHÔNG XƯƠNG ĐÔNG LẠNH<br />\r\nXuất xứ : Úc<br />\r\nKhối lượng tịnh : 2-4 kg/ miếng<br />\r\nThành phần : Thịt cừu<br />\r\nBảo quản: ≤ -18 độ C&nbsp;<br />\r\nSản xuất bởi : Midfield&nbsp;<br />\r\nHSD : 24 tháng &nbsp;kể từ ngày sản xuất</p>\r\n\r\n<p><span style=\"color:rgb(20, 24, 35)\">Mô tả: Phần đùi cừu đã được rút toàn bộ xương và đóng gói thành quả tròn<br />\r\nĐùi cừu không xương phù hợp với các món bỏ lò, áp chảo hoặc lẩu</span><span style=\"color:rgb(20, 24, 35)\"><span style=\"color:rgb(145, 151, 163)\">&nbsp;</span></span></p>'),
(3, 2, '1554311165s1-suon-non-co-xuong.gif', 'Sườn Cừu có xương đông lạnh', 1, 'Giá liên hệ', 0, '<p>Frozen Bone in Lamb Rack &ndash; Sườn Cừu c&oacute; xương đ&ocirc;ng lạnh&nbsp; Xuất xứ : &nbsp;&Uacute;c Th&agrave;nh phần : Thịt Cừu Bảo quản: &le; - 18 độ C&nbsp; Sản xuất bởi : Midfield&nbsp; HSD : 24 th&aacute;ng kể từ ng&agrave;y SX M&ocirc; tả: L&agrave; phần xương sườn v&agrave; xương sống đ&atilde; được t&aacute;ch bỏ sườn non v&agrave; ba chỉ. T&ugrave;y thuộc v&agrave; nhu cầu sử dụng m&agrave; nh&agrave; sản xuất c&oacute; thể cắt miếng bao gồm 6 9 rẻ sườn. Sườn cừu c&oacute; xương sống th&iacute;ch hợp với c&aacute;c m&oacute;n nướng, chi&ecirc;n, bỏ l&ograve;, cốt lết hoặc l&agrave;m c&aacute;c m&oacute;n &Acirc;u</p>\r\n', '<p>Frozen Bone in Lamb Rack &ndash; Sườn Cừu c&oacute; xương đ&ocirc;ng lạnh&nbsp;<br />\r\nXuất xứ : &nbsp;&Uacute;c<br />\r\nTh&agrave;nh phần : Thịt Cừu<br />\r\nBảo quản: &le; - 18 độ C&nbsp;<br />\r\nSản xuất bởi : Midfield&nbsp;<br />\r\nHSD : 24 th&aacute;ng kể từ ng&agrave;y SX</p>\r\n<p><span style=\"color:rgb(20, 24, 35); font-family:helvetica,arial,sans-serif\">M&ocirc; tả: L&agrave; phần xương sườn v&agrave; xương sống đ&atilde; được t&aacute;ch bỏ sườn non v&agrave; ba chỉ. T&ugrave;y thuộc v&agrave; nhu cầu sử dụng m&agrave; nh&agrave; sản xuất c&oacute; thể cắt miếng bao gồm 6 9 rẻ sườn.</span><br />\r\n<span style=\"color:rgb(20, 24, 35); font-family:helvetica,arial,sans-serif\">Sườn cừu c&oacute; xương sống th&iacute;ch hợp với c&aacute;c m&oacute;n nướng, chi&ecirc;n, bỏ l&ograve;, cốt lết hoặc l&agrave;m c&aacute;c m&oacute;n &Acirc;u</span></p>\r\n</div>'),
(4, 2, '1554311071s1-suon-cuu-co-xuong-dong-lanh.gif', 'Sườn cừu có xương đông lạnh cắt gọt kiểu Pháp', 1, 'Giá liên hệ', 0, '<p>Frozen Bone In Lamb Rack CFO Cap On Frenched &ndash; Sườn cừu c&oacute; xương đ&ocirc;ng lạnh cắt gọt kiểu Ph&aacute;p&nbsp; Xuất xứ : &nbsp;&Uacute;c Th&agrave;nh phần : Thịt Cừu Bảo quản: &le; - 18 độ C&nbsp; Sản xuất bởi : Midfield&nbsp; HSD: 24 th&aacute;ng kể từ ng&agrave;y SX Chế biến m&oacute;n ăn theo y&ecirc;u cầu. Kh&ocirc;ng sử dụng khi sản phẩm hết HSD&nbsp; M&ocirc; tả: Phần sườn cừu đ&atilde; được loại bỏ xương sống v&agrave; lọc sạh g&acirc;n, mỡ Sườn cừu cắt kiểu ph&aacute;p ph&ugrave; hợp với c&aacute;c m&oacute;n nướng, bỏ l&ograve;, cốt lết, v&agrave; l&agrave;m c&aacute;c m&oacute;n &Acirc;u cao cấp kh&aacute;c</p>\r\n', '<p>Frozen Bone In Lamb Rack CFO Cap On Frenched – Sườn cừu có xương đông lạnh cắt gọt kiểu Pháp&nbsp;<br />\r\nXuất xứ : &nbsp;Úc<br />\r\nThành phần : Thịt Cừu<br />\r\nBảo quản: ≤ - 18 độ C&nbsp;<br />\r\nSản xuất bởi : Midfield&nbsp;<br />\r\nHSD: 24 tháng kể từ ngày SX<br />\r\nChế biến món ăn theo yêu cầu. Không sử dụng khi sản phẩm hết HSD&nbsp;</p>\r\n\r\n<p><span style=\"color:rgb(20, 24, 35)\">Mô tả: Phần sườn cừu đã được loại bỏ xương sống và lọc sạh gân, mỡ</span><br />\r\n<span style=\"color:rgb(20, 24, 35)\">Sườn cừu cắt kiểu pháp phù hợp với các món nướng, bỏ lò, cốt lết, và làm các món Âu cao cấp khác</span></p>'),
(5, 3, '1554311055s1-ca-hoi-tuoi-nguyen-con.gif', 'Cá hồi tươi nguyên con', 1, 'Giá liên hệ', 0, '<p>T&ecirc;n sản phẩm: C&aacute; hồi Nauy nguy&ecirc;n con Xuất xứ : Nauy&nbsp; Th&agrave;nh phần: Thịt c&aacute; hồi Bảo quản: Từ 0 &deg;C - 2 &deg;C M&ocirc; tả: C&aacute; hồi Đại T&acirc;y Dương tươi nguy&ecirc;n con được mổ bỏ nội tạng, c&ograve;n nguy&ecirc;n đầu được ướp đ&aacute; v&agrave; vận chuyển bằng đường h&agrave;ng kh&ocirc;ng từ Na Uy về Việt Nam. Hướng dẫn sử dụng:&nbsp;C&aacute; hồi tươi Nauy th&iacute;ch hợp cho c&aacute;c m&oacute;n ăn gỏi, c&aacute;c m&oacute;n Sushi, nướng, lẩu v&agrave; &aacute;p chảo.&nbsp;</p>\r\n', '<p><span style=\"color:rgb(20, 24, 35)\">Tên sản phẩm: Cá hồi Nauy nguyên con</span></p>\r\n\r\n<p>Xuất xứ : Nauy&nbsp;</p>\r\n\r\n<p>Thành phần: Thịt cá hồi</p>\r\n\r\n<p>Bảo quản: Từ 0<sup>0</sup>C - 2<sup>0</sup>C</p>\r\n\r\n<p><span style=\"color:rgb(20, 24, 35)\">Mô tả: Cá hồi Đại Tây Dương tươi nguyên con được mổ bỏ nội tạng, còn nguyên đầu được ướp đá và vận chuyển bằng đường hàng không từ Na Uy về Việt Nam.</span></p>\r\n\r\n<p><span style=\"color:rgb(20, 24, 35)\">Hướng dẫn sử dụng:&nbsp;Cá hồi tươi Nauy thích hợp cho các món ăn gỏi, các món Sushi, nướng, lẩu và áp chảo.<span style=\"color:rgb(145, 151, 163)\">&nbsp;</span></span></p>'),
(6, 3, '1554311044s1-ca-hoi-tuoi-phi-le.gif', 'Cá hồi tươi phi lê', 1, 'Giá liên hệ', 0, '<p>C&aacute; hồi tươi fillet - Đơn vị: kg - Xuất xứ: Nauy - M&atilde; sản phẩm: - Quy c&aacute;ch đ&oacute;ng g&oacute;i: đ&oacute;ng g&oacute;i v&agrave; h&uacute;t ch&acirc;n kh&ocirc;ng tr&ecirc;n từng khay - Chế biến: ph&ugrave; hợp để chế biến c&aacute;c m&oacute;n sushi, sashimi, gỏi, &aacute;p chảo, nướng, lẩu, nấu canh chua - Bảo quản: 0&deg;C đến -2&deg;C - Hạn sử dụng: 3 - 5 ng&agrave;y kể từ ng&agrave;y đ&oacute;ng g&oacute;i</p>\r\n', '<p><strong>Cá hồi tươi fillet</strong><br />\r\n- Đơn vị: kg<br />\r\n- Xuất xứ: Nauy<br />\r\n- Mã sản phẩm:<br />\r\n- Quy cách đóng gói: đóng gói và hút chân không trên từng khay<br />\r\n- Chế biến: phù hợp để chế biến các món sushi, sashimi, gỏi, áp chảo, nướng, lẩu, nấu canh chua<br />\r\n- Bảo quản: 0 <sup>o</sup>C đến -2 <sup>o</sup>C<br />\r\n- Hạn sử dụng:&nbsp;3&nbsp;- 5 ngày kể từ ngày đóng gói</p>\r\n\r\n<p><strong>Giới thiệu sản phẩm</strong></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; Cá hồi tươi fillet là phần thịt được cắt ra từ thân cá hồi Nauy sau khi đã bỏ đầu, đuôi, xương cá, vây cá, vẩy cá và các phần mỡ thừa. Thịt cá hồi fillet tươi ngon có màu cam tươi đến cam sẫm, vân mỡ xen đều trong thớ thịt có màu trắng mịn đẹp mắt. Chắc chắn hơn bạn có thể ấn nhẹ tay vào mình cá để thử độ đàn hồi của thịt cá, nếu trên thân cá không lưu lại vết lõm của ngón tay chứng tỏ phần phi lê này tươi ngon đạt chuẩn.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; Cá hồi Nauy tại Fresh Foods được nhập khẩu từ những nhà sản xuất uy tín như Seaborn, Nova Sea, Leroy và được vận chuyển qua đường hàng không luôn đảm bảo độ tươi ngon và vượt qua các quy trình an toàn thực phẩm khắt khe. Cá hồi fillet có thể dùng ngay cho các món tươi sống, đậm hương vị biển như gỏi, sushi, sashimi…</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; Theo các nghiên cứu, thịt cá hồi được khẳng định là loại cá chứa hàm lượng axit béo Omega – 3 cao nhất, rất có lợi cho việc giảm thiểu các nguy cơ mắc bệnh tim mạch ở người già. Đối với trẻ nhỏ, Omega - 3 giúp phát triển não bộ, ngay cả với bệnh nhân trầm cảm và mất trí nhớ cũng được cải thiện nhờ hàm lượng dinh dưỡng này có trong cá hồi. Đặc biệt hơn, cá hồi là “thực phẩm vàng” cho chị em phụ nữ khi có tác dụng làm đẹp da và tóc, giúp tóc bóng mượt và làn da mịn màng hơn. Các chất dinh dưỡng có trong cá hồi có tác dụng chống lại hiện tượng da bị cháy nắng hay ung thư da rất tốt</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; Fresh Foods xin giới thiệu tới bạn cách làm món sashimi tươi ngon cho phần thịt cá hồi fillet nhé:</p>\r\n\r\n<p><strong>Sashimi cá hồi:</strong></p>\r\n\r\n<p><em>Nguyên liệu:</em></p>\r\n\r\n<ul>\r\n	<li><a href=\"ca-hoi-phi-le-tuoi.html\">Phi lê cá hồi</a>: 1 kg</li>\r\n	<li><a href=\"gung-hong-nhat-ban.html\">Gừng hồng gari</a>: 50gr</li>\r\n	<li>Củ cải trắng: 100gr</li>\r\n	<li>Lá tía tô: 30 – 40 lá (chọn lá to, dày)</li>\r\n	<li><a href=\"mu-tat-yamachu.html\">Mù tạt Yamachu</a>, <a href=\"sot-kikoman.html\">nước tương đậu nàng Kikkoman </a>Nhật Bản, muối, chanh</li>\r\n</ul>\r\n\r\n<p><em>Chế biến:</em></p>\r\n\r\n<ul>\r\n	<li>Củ cải nạo vỏ, bào sợi nhỏ. Lá tía tô, nhặt rửa sạch, ngâm nước muối, để ráo nước.</li>\r\n	<li>Đặt miếng cá lên mặt phẳng, dùng mũi dao xẻ dọc theo đường sống ở giữa miếng cá, khi chạm vào phần da thì miết nhẹ mũi dao để tách lấy phần phi lê cá hồi.</li>\r\n	<li>Lấy 1 bát to nước đun sôi để nguội, pha cùng ½ thìa muối hạt, nước cốt ½ quả chanh hòa tan rồi cho miếng cá vào ngâm khoảng 3 – 4 phút thì vớt ra sau đó dùng giấy ăn hoặc khăn sạch thấm khô. Đây là cách khử sạch mùi tanh của cá.</li>\r\n	<li>Cắt cá hồi thành từng lát mỏng dày khoảng 0,5cm, dài 3 – 4cm và để vào đĩa, trình bày cùng lá tía tô, củ cải bào mỏng.</li>\r\n	<li>Khi ăn chấm với nước tương mù tạt kèm gừng hồng.</li>\r\n</ul>\r\n\r\n<p>Sashimi cá hồi là món ăn sang trọng được dùng làm món khai vị trong những bữa tiệc của người Nhật. Chúc bạn ngon miệng với món khai vị này!</p>'),
(7, 3, '1554311035s1-da-ca-hoi-tuoi-na-uy.gif', 'Đầu cá hồi tươi NaUy', 1, 'Giá liên hệ', 0, '<p>Đầu c&aacute; hồi - Đơn vị: kg - Xuất xứ: Nauy - Quy c&aacute;ch đ&oacute;ng g&oacute;i: khay xốp bọc m&agrave;ng co thực phẩm - Chế biến: ph&ugrave; hợp để chế biến c&aacute;c m&oacute;n canh chua, lẩu c&aacute; hồi. - Bảo quản: 0&deg;C đến -2&deg;C - Hạn sử dụng: 3 - 5 ng&agrave;y kể từ ng&agrave;y đ&oacute;ng g&oacute;i</p>\r\n', '<p><strong>&nbsp;Đầu cá hồi</strong><br />\r\n- Xuất xứ: Nauy<br />\r\n- Quy cách đóng gói: khay xốp bọc màng co thực phẩm<br />\r\n- Chế biến: phù hợp để chế biến các món canh chua, lẩu cá hồi.<br />\r\n- Bảo quản: 0°C&nbsp;đến -2°C<br />\r\n- Hạn sử dụng: 3 - 5 ngày kể từ ngày đóng gói</p>\r\n\r\n<p><strong>Giới thiệu sản phẩm:</strong></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; Phần đầu cá hồi Nauy sau khi được lọc ra khỏi mình cá đã trở thành món ăn thơm ngon, hấp dẫn lại vừa kinh tế cho bữa ăn hàng ngày của gia đình. Đầu cá hồi cũng mang đầy đủ các chất dinh dưỡng như thịt cá hồi và lại đáp ứng được tiêu chí ngon, bổ, dinh dưỡng nên rất được các bà nội trợ ưa chuộng.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp;Cá hồi Nauy tại Fresh Foods được nhập khẩu từ những nhà sản xuất uy tín như Seaborn, Nova Sea, Leroy và được vận chuyển qua đường hàng không luôn đảm bảo độ tươi ngon và vượt qua các quy trình an toàn thực phẩm khắt khe. Đầu cá hồi&nbsp; nauy&nbsp; có thể dùng ngay cho các món nấu riêu, nấu canh chua, lẩu cá hồi…</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; Đặc biệt phần xương cá hồi có thể nấu canh chua với nhiều loại rau như rau cần, rau cải, dưa chua và măng tươi…</p>'),
(8, 3, '1554311026s1-xuong-ca-hoi-nauy.gif', 'Xương cá hồi NaUy', 1, 'Giá liên hệ', 0, '<p>Xương c&aacute; hồi - Đơn vị:kg - Xuất xứ: Nauy - M&atilde; sản phẩm: - Quy c&aacute;ch đ&oacute;ng g&oacute;i: khay xốp bọc m&agrave;ng co thực phẩm - Chế biến: ph&ugrave; hợp để chế biến c&aacute;c m&oacute;n canh chua, chi&ecirc;n gi&ograve;n, ch&aacute;o c&aacute;&hellip; - Bảo quản: 0&deg;C đến -2&deg;C - Hạn sử dụng: 3 - 5 ng&agrave;y kể từ ng&agrave;y đ&oacute;ng g&oacute;i</p>\r\n', '<p><strong>Xương cá hồi</strong><br />\r\n- Đơn vị:kg<br />\r\n- Xuất xứ: Nauy<br />\r\n- Quy cách đóng gói: khay xốp bọc màng co thực phẩm<br />\r\n- Chế biến: phù hợp để chế biến các món canh chua, chiên giòn, cháo cá…<br />\r\n- Bảo quản: 0&nbsp;°C&nbsp;đến -2&nbsp;°C<br />\r\n- Hạn sử dụng: 3 - 5 ngày kể từ ngày đóng gói</p>\r\n\r\n<p><strong>Giới thiệu sản phẩm:</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Xương cá hồi Nauy là phần xương được lọc ra sau khi fillet cá. Phần xương này với phần thịt cá hồi tươi ngon còn trên xương rất nhiều đã trở thành món ăn dinh dưỡng và tuyệt ngon khi được chế biến đúng cách. Với những phần xương mềm, sau khi chế biến có thể ăn luôn, là nguồn cung cấp canxi rất tốt cho cơ thể.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Cá hồi Nauy tại Fresh Foods được nhập khẩu từ những nhà sản xuất uy tín như Seaborn, Nova Sea, Leroy và được vận chuyển qua đường hàng không luôn đảm bảo độ tươi ngon và vượt qua các quy trình an toàn thực phẩm khắt khe.Xương cá hồi Nauy có thể dùng ngay cho các món nấu riêu, nấu canh chua, chiên giòn…</p>\r\n\r\n<p>&nbsp; &nbsp; Đặc biệt phần xương cá hồi được nhiều bà mẹ mua về ninh cháo cho bé ăn dặm rất ngon</p>'),
(9, 4, '1554311013s1-ba-chi-bo-my-dong-lanh.gif', 'Ba chỉ bò MỸ đông lạnh', 0, 'Giá liên hệ', 0, '<p>Frozen boneless beef Short Plate - Ba chỉ b&ograve; Mỹ đ&ocirc;ng lạnh Th&agrave;nh phần : Thịt b&ograve; Xuất xứ: Mỹ Bảo quản: &le; -18 độ C Sản xuất bởi: Swift HSD: 18 th&aacute;ng kể từ NSX M&ocirc; tả: Phần thịt bụng b&ograve; đ&atilde; được cắt bớt gầu v&agrave; tề gọn bớt mỡ v&agrave; g&acirc;n xơ. Miếng thịt c&oacute; phần chỉ nạc v&agrave; phần chỉ mỡ đan xen mang lại cảm gi&aacute;c ngậy v&agrave; mềm. Hướng dẫn sử dụng: Ph&ugrave; hợp với c&aacute;c m&oacute;n nướng, lẩu. H&agrave;ng trong kho C&oacute;</p>\r\n', '<p>Frozen boneless beef &nbsp;Short Plate - Ba chỉ bò Mỹ đông lạnh<br />\r\nThành phần : Thịt bò<br />\r\nXuất xứ: Mỹ<br />\r\nBảo quản: ≤ -18 độ C<br />\r\nSản xuất bởi: Swift<br />\r\nHSD: 18 tháng kể từ NSX</p>\r\n\r\n<p><span style=\"color:rgb(20, 24, 35)\">Mô tả: Phần thịt bụng bò đã được cắt bớt gầu và tề gọn bớt mỡ và gân xơ. Miếng thịt có phần chỉ nạc và phần chỉ mỡ đan xen mang lại cảm giác ngậy và mềm.</span><br />\r\n<span style=\"color:rgb(20, 24, 35)\">Hướng dẫn sử dụng: Phù hợp với các món nướng, lẩu.</span></p>\r\n\r\n<p>&nbsp;</p>'),
(10, 4, '1554310970s1-thit-nac-vai-da-loc-so.gif', 'Thịt nạc vai đã lọc sợi', 0, 'Giá liên hệ', 0, '<p>FROZEN BONELESS BEEF CHUCK EYE ROLL &ndash; NẠC VAI B&Ograve; MỸ Đ&Atilde; LỌC SƠ Đ&Ocirc;NG LẠNH Xuất xứ : Mỹ Th&agrave;nh phần : Thịt b&ograve; Bảo quản: &le; -18 độ C Xuất khẩu : Swift Hạn sử dụng : 18 th&aacute;ng kể từ ng&agrave;y sản xuất M&ocirc; tả: Phần thịt nạc lọc ra từ thớ vai b&ograve;. Phần thịt kh&aacute; nạc đen xen kẽ bởi c&aacute;c lớp mỡ rắt th&iacute;ch hợp với c&aacute;c m&oacute;n nướng, lẩu, c&agrave; ri v&agrave; sốt vang.</p>\r\n', '<p>FROZEN BONELESS BEEF CHUCK EYE ROLL – NẠC VAI BÒ MỸ ĐÃ LỌC SƠ ĐÔNG LẠNH&nbsp;<br />\r\nXuất xứ : Mỹ<br />\r\nThành phần : Thịt bò &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\nBảo quản: ≤ -18 độ C<br />\r\nXuất khẩu : Swift<br />\r\nHạn sử dụng : 18 tháng kể từ ngày sản xuất</p>\r\n\r\n<p><span style=\"color:rgb(20, 24, 35)\">Mô tả: Phần thịt nạc lọc ra từ thớ vai bò.</span><br />\r\n<span style=\"color:rgb(20, 24, 35)\">Phần thịt khá nạc đen xen kẽ bởi các lớp mỡ rắt thích hợp với các món nướng, lẩu, cà ri và sốt vang.</span></p>'),
(11, 4, '1554310956s1-than-noi-tuoi.gif', 'Bắp lõi rùa Mỹ', 0, 'Giá liên hệ', 0, '<p>Frozen Digital Muscle Boneless &ndash; Bắp B&ograve; Mỹ Kh&ocirc;ng Xương Đ&ocirc;ng Lạnh Xuất xứ: Mỹ Th&agrave;nh phần: Thịt b&ograve; Bảo quản: &le; -18 độ C Sản xuất bởi: Cargill Hạn sử dụng: 18 th&aacute;ng kể từ ng&agrave;y sản xuất Chế biến m&oacute;n ăn theo y&ecirc;u cầu. Kh&ocirc;ng sử dụng khi sản phẩm hết HSD</p>\r\n', '<p>Frozen Digital Muscle Boneless – Bắp Bò Mỹ Không Xương Đông Lạnh<br />\r\nXuất xứ: Mỹ<br />\r\nThành phần: Thịt bò<br />\r\nBảo quản: ≤ -18 độ&nbsp;C<br />\r\nSản xuất bởi: Cargill<br />\r\nHạn sử dụng: 18 tháng kể từ ngày sản xuất<br />\r\nChế biến món ăn theo yêu cầu. Không sử dụng khi sản phẩm hết HSD</p>'),
(12, 4, '1554310915s1-de-suon-bo-my-dong-lanh.gif', 'Dẻ sườn bò MỸ không xương dông lạnh', 0, 'Giá liên hệ', 0, '<p>Frozen Boneless Beef Rib Fingers &ndash; Dẻ sườn b&ograve; Mỹ đ&ocirc;ng lạnh &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; Xuất xứ : Mỹ Th&agrave;nh phần: Thịt b&ograve; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Bảo quản: &le; -18&deg;C HSD: 18 th&aacute;ng kể từ ng&agrave;y sản xuất M&ocirc; tả: Phần thịt nằm giữa hai rảnh sườn được lọc v&agrave; đ&oacute;ng g&oacute;i theo t&uacute;i. Hướng dẫn sử dụng: Ph&ugrave; hợp với c&aacute;c m&oacute;n nướng hoặc sốt vang, hầm c&agrave; ri&nbsp;</p>\r\n', '<p>Frozen Boneless Beef Rib Fingers – Dẻ sườn bò Mỹ đông lạnh &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\nXuất xứ : Mỹ<br />\r\nThành phần: Thịt bò &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\nBảo quản: ≤ -18<sup>0</sup>C<br />\r\nHSD: 18 tháng kể từ ngày sản xuất</p>\r\n\r\n<p><span style=\"color:rgb(20, 24, 35)\">Mô tả: Phần thịt nằm giữa hai rảnh sườn được lọc và đóng gói theo túi.<br />\r\nHướng dẫn sử dụng: Phù hợp với các món nướng hoặc sốt vang, hầm cà ri</span><span style=\"color:rgb(20, 24, 35)\"><span style=\"color:rgb(145, 151, 163)\">&nbsp;</span></span></p>'),
(13, 4, '1554310935s1-gau-bo-my-dong-lanh.gif', 'Gầu bò Mỹ không xương đông lạnh', 0, 'Giá liên hệ', 0, '<p>Frozen boneless beef Brisket - Gầu b&ograve; Mỹ kh&ocirc;ng xương đ&ocirc;ng lạnh Th&agrave;nh phần : Thịt b&ograve; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; Bảo quản: &le; -18 độ C Sản xuất bởi: Swift HSD: 18 th&aacute;ng kể từ NSX M&ocirc; tả: Phần thịt ph&iacute;a ức con b&ograve; tiếp gi&aacute;p với phần thịt bụng b&ograve;. Miếng thịt gi&ograve;n v&agrave; kh&ocirc;ng dai, c&oacute; đan xen phần mỡ rắt tạo độ b&eacute;o cho thịt. Hướng dẫn sử dụng: Ph&ugrave; hợp với c&aacute;c m&oacute;n nướng v&agrave; lẩu.</p>\r\n', '<p>Frozen boneless beef Brisket - Gầu bò Mỹ không xương đông lạnh<br />\r\nThành phần : Thịt bò &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\nBảo quản: ≤ -18 độ C<br />\r\nSản xuất bởi: Swift<br />\r\nHSD: 18 tháng kể từ NSX</p>\r\n\r\n<p><span style=\"color:rgb(20, 24, 35)\">Mô tả: Phần thịt phía ức con bò tiếp giáp với phần thịt bụng bò. Miếng thịt giòn và không dai, có đan xen phần mỡ rắt tạo độ béo cho thịt.</span><br />\r\n<span style=\"color:rgb(20, 24, 35)\">Hướng dẫn sử dụng: Phù hợp với các món nướng và lẩu.</span></p>'),
(14, 5, '1554310895s1-nac-dui-bo-uc-tuoi.gif', 'Nạc đùi bò Úc Không xương đông lạnh', 0, 'Giá liên hệ', 0, '<p>Frozen Boneless Beef&nbsp;Rump &nbsp;&ndash; &nbsp; Nạc đ&ugrave;i b&ograve; &Uacute;c kh&ocirc;ng xương đ&ocirc;ng lạnh&nbsp; Xuất xứ : &Uacute;c &nbsp; &nbsp; &nbsp;&nbsp; Th&agrave;nh phần : Thịt b&ograve; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Bảo quản: &le; - 18&deg;C &nbsp; Xuất khẩu bởi : Midfield&nbsp; HSD: 24 th&aacute;ng kể từ ng&agrave;y sản xuất M&ocirc; tả: Phần thịt nằm ở phần xương cụt của con b&ograve;. Thớ thịt mềm, nạc được bao quanh bởi một lớp mỡ. Hướng dẫn sử dụng: Ph&ugrave; hợp với c&aacute;c m&oacute;n hầm, l&uacute;c lắc, bỏ l&ograve;, hoặc nướng miếng lớn</p>\r\n', '<p>Frozen Boneless Beef&nbsp;Rump &nbsp;– &nbsp; Nạc đùi bò Úc không xương đông lạnh&nbsp;<br />\r\nXuất xứ : Úc &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\nThành phần : Thịt bò &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\nBảo quản: ≤ - 18<sup>0</sup>C&nbsp;<br />\r\nXuất khẩu bởi : Midfield&nbsp;<br />\r\nHSD: 24 tháng kể từ ngày sản xuất</p>\r\n\r\n<p><span style=\"color:rgb(20, 24, 35)\">Mô tả: Phần thịt nằm ở phần xương cụt của con bò. Thớ thịt mềm, nạc được bao quanh bởi một lớp mỡ.</span><br />\r\n<span style=\"color:rgb(20, 24, 35)\">Hướng dẫn sử dụng: Phù hợp với các món hầm, lúc lắc, bỏ lò, hoặc nướng miếng lớn</span></p>'),
(15, 5, '1554310873s1-mong-bo-uc-dong-lanh.gif', 'Thịt mông bò Úc Không xương đông lạnh', 0, 'Giá liên hệ', 0, '<p>Frozen boneless Beef Topside &ndash; Thịt M&ocirc;ng b&ograve; &Uacute;c kh&ocirc;ng xương đ&ocirc;ng lạnh&nbsp; Xuất xứ : &Uacute;c &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Khối lượng tịnh : 6-8kg/ miếng Th&agrave;nh phần : Thịt b&ograve; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; Bảo quản: &le; -18 độ C&nbsp; Sản xuất bởi : Midfield&nbsp; HSD : 24 th&aacute;ng &nbsp;kể từ ng&agrave;y sản xuất M&ocirc; tả: L&agrave; phần thịt nằm &ocirc;m lấy xương ống ch&acirc;n sau của con b&ograve; (ngay phần đu&ocirc;i). Thớ thịt mềm, được bao bởi một lớp mỡ mỏng ph&iacute;a ngo&agrave;i, ngọt v&agrave; kh&ocirc;ng ngấy mỡ. Hướng dẫn sử dụng: Ph&ugrave; hợp cho c&aacute;c m&oacute;n &Acirc;u như: Hầm, bỏ l&ograve;, l&uacute;c lắc&nbsp;</p>\r\n', '<p>Frozen boneless Beef Topside &ndash; Thịt M&ocirc;ng b&ograve; &Uacute;c kh&ocirc;ng xương đ&ocirc;ng lạnh&nbsp;<br />\r\nXuất xứ : &Uacute;c &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\nKhối lượng tịnh : 6-8kg/ miếng<br />\r\nTh&agrave;nh phần : Thịt b&ograve; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\nBảo quản: &le; -18 độ C&nbsp;<br />\r\nSản xuất bởi : Midfield&nbsp;<br />\r\nHSD : 24 th&aacute;ng &nbsp;kể từ ng&agrave;y sản xuất</p>\r\n<p><span style=\"color:rgb(20, 24, 35); font-family:helvetica,arial,sans-serif\">M&ocirc; tả: L&agrave; phần thịt nằm &ocirc;m lấy xương ống ch&acirc;n sau của con b&ograve; (ngay phần đu&ocirc;i). Thớ thịt mềm, được bao bởi một lớp mỡ mỏng ph&iacute;a ngo&agrave;i, ngọt v&agrave; kh&ocirc;ng ngấy mỡ.<br />\r\nHướng dẫn sử dụng: Ph&ugrave; hợp cho c&aacute;c m&oacute;n &Acirc;u như: Hầm, bỏ l&ograve;, l&uacute;c lắc</span><span style=\"color:rgb(20, 24, 35); font-family:helvetica,arial,sans-serif\"><span style=\"color:rgb(145, 151, 163)\">&nbsp;</span></span></p>'),
(16, 5, '1554310857s1-Gau-bo-uc-tuoi.gif', 'Gầu bò Úc không xương ướp lạnh', 0, 'Giá liên hệ', 0, '<p>Chilled Boneless Beef&nbsp;Point End Brisket Deckle Off - Gầu B&ograve; Tươi kh&ocirc;ng xương ướp lạnh &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Xuất xứ : &Uacute;c &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; Th&agrave;nh phần : Thịt b&ograve;&nbsp; Xuất khẩu bởi: Midfield &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; HSD: 90 ng&agrave;y kể từ ng&agrave;y sản xuất &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; M&ocirc; tả: Phần thịt ph&iacute;a ức con b&ograve; tiếp gi&aacute;p với phần thịt bụng b&ograve;. Miếng thịt gi&ograve;n v&agrave; kh&ocirc;ng dai, c&oacute; đan xen phần mỡ rắt tạo độ b&eacute;o cho thịt. Hướng dẫn sử dụng: Ph&ugrave; hợp với c&aacute;c m&oacute;n nướng v&agrave; lẩu</p>\r\n', '<p>Chilled Boneless Beef&nbsp;Point End Brisket Deckle Off - Gầu B&ograve; Tươi kh&ocirc;ng xương ướp lạnh &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\nXuất xứ : &Uacute;c &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\nTh&agrave;nh phần : Thịt b&ograve;&nbsp;<br />\r\nXuất khẩu bởi: Midfield &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\nHSD: 90 ng&agrave;y kể từ ng&agrave;y sản xuất &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n<p><span style=\"color:rgb(20, 24, 35); font-family:helvetica,arial,sans-serif\">M&ocirc; tả: Phần thịt ph&iacute;a ức con b&ograve; tiếp gi&aacute;p với phần thịt bụng b&ograve;. Miếng thịt gi&ograve;n v&agrave; kh&ocirc;ng dai, c&oacute; đan xen phần mỡ rắt tạo độ b&eacute;o cho thịt.</span><br />\r\n<span style=\"color:rgb(20, 24, 35); font-family:helvetica,arial,sans-serif\">Hướng dẫn sử dụng: Ph&ugrave; hợp với c&aacute;c m&oacute;n nướng v&agrave; lẩu</span></p>'),
(17, 5, '1554310479s1-de-suon-bo-uc-dong-lanh.gif', 'Dẻ sườn bò Úc đông lạnh', 0, 'Giá liên hệ', 0, '<p>Frozen boneless Beef Rib&nbsp;Fingers - Dẻ sườn b&ograve; &Uacute;c đ&ocirc;ng lạnh Xuất xứ : &Uacute;c &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Khối lượng tịnh : 1.5 - 2 kg/ miếng Th&agrave;nh phần : Thịt b&ograve; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; Bảo quản: &le; -18 độ C&nbsp; Sản xuất bởi : Midfield HSD : 24 th&aacute;ng &nbsp;kể từ ng&agrave;y sản xuất M&ocirc; tả: Phần thịt nằm giữa hai rảnh sườn được lọc v&agrave; đ&oacute;ng g&oacute;i theo t&uacute;i. Hướng dẫn sử dụng: Ph&ugrave; hợp với c&aacute;c m&oacute;n nướng hoặc sốt vang, hầm c&agrave; ri</p>\r\n', '<p>Frozen boneless Beef Rib&nbsp;Fingers - Dẻ sườn b&ograve; &Uacute;c đ&ocirc;ng lạnh<br />\r\nXuất xứ : &Uacute;c &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\nKhối lượng tịnh : 1.5 - 2 kg/ miếng<br />\r\nTh&agrave;nh phần : Thịt b&ograve; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\nBảo quản: &le; -18 độ C&nbsp;<br />\r\nSản xuất bởi : Midfield<br />\r\nHSD : 24 th&aacute;ng &nbsp;kể từ ng&agrave;y sản xuất</p>\r\n<p><span style=\"color:rgb(20, 24, 35); font-family:helvetica,arial,sans-serif\">M&ocirc; tả: Phần thịt nằm giữa hai rảnh sườn được lọc v&agrave; đ&oacute;ng g&oacute;i theo t&uacute;i.</span><br />\r\n<span style=\"color:rgb(20, 24, 35); font-family:helvetica,arial,sans-serif\">Hướng dẫn sử dụng: Ph&ugrave; hợp với c&aacute;c m&oacute;n nướng hoặc sốt vang, hầm c&agrave; ri</span></p>'),
(18, 6, '1554310456s1-ca-ngu-dong-lanh.gif', 'Cá ngừ đông lạnh', 0, 'Giá liên hệ', 0, '<p>C&aacute; ngừ đại dương được ngư d&acirc;n Quảng Ng&atilde;i đ&aacute;nh bắt xa bờ trong thời gian ngắn. Ch&iacute;nh v&igrave; vậy, chất lượng c&aacute; lu&ocirc;n đảm bảo tươi ngon. Nghi&ecirc;n cứu cho thấy omega-3 acid b&eacute;o, thấy rất nhiều trong c&aacute; nhiều mỡ như c&aacute; ngừ, c&oacute; thể gi&uacute;p giảm nguy cơ bệnh tim cho mọi lứa tuổi, giảm đau của vi&ecirc;m khớp, giảm biến chứng của bệnh hen suyễn, v&agrave; l&agrave; điều cần thiết trong việc tăng trưởng v&agrave; ph&aacute;t triển của trẻ nhỏ. Thịt C&aacute; ngừ đại dương đ&atilde; bỏ da, xương, đ&ocirc;ng lạnh, chất lượng tươi ngon, gi&aacute; trị dinh dưỡng cao, rất tốt cho sức khỏe do c&oacute; chứa h&agrave;m lượng lớn protein, vitamin v&agrave; kho&aacute;ng chất, giảm huyết &aacute;p v&agrave; cholesterol. C&aacute;c c&aacute;ch chế biến c&aacute; ngừ đại dương: &ndash; Sashimi c&aacute; ngừ đại dương. &ndash; C&aacute; ngừ&nbsp;đại dương t&aacute;i chanh. &ndash; C&aacute; ngừ nướng ngũ vị. &ndash; C&aacute; người lăn ti&ecirc;u t&aacute;i. &ndash; Lẩu c&aacute; ngừ đại dương. &ndash; L&uacute;c lắc c&aacute; ngừ đại dương.</p>\r\n', '<p>C&aacute; ngừ đại dương được ngư d&acirc;n Quảng Ng&atilde;i đ&aacute;nh bắt xa bờ trong thời gian ngắn. Ch&iacute;nh v&igrave; vậy, chất lượng c&aacute; lu&ocirc;n đảm bảo tươi ngon.<br />\r\nNghi&ecirc;n cứu cho thấy omega-3 acid b&eacute;o, thấy rất nhiều trong c&aacute; nhiều mỡ như c&aacute; ngừ, c&oacute; thể gi&uacute;p giảm nguy cơ bệnh tim cho mọi lứa tuổi, giảm đau của vi&ecirc;m khớp, giảm biến chứng của bệnh hen suyễn, v&agrave; l&agrave; điều cần thiết trong việc tăng trưởng v&agrave; ph&aacute;t triển của trẻ nhỏ.</p>\r\n<p>Thịt C&aacute; ngừ đại dương đ&atilde; bỏ da, xương, đ&ocirc;ng lạnh, chất lượng tươi ngon, gi&aacute; trị dinh dưỡng cao, rất tốt cho sức khỏe do c&oacute; chứa h&agrave;m lượng lớn protein, vitamin v&agrave; kho&aacute;ng chất, giảm huyết &aacute;p v&agrave; cholesterol.</p>\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:arial\">C&aacute;c c&aacute;ch chế biến c&aacute; ngừ đại dương:</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:arial\">&ndash; Sashimi c&aacute; ngừ đại dương.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:arial\">&ndash; C&aacute; ngừ&nbsp;đại dương t&aacute;i chanh.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:arial\">&ndash; C&aacute; ngừ nướng ngũ vị.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:arial\">&ndash; C&aacute; người lăn ti&ecirc;u t&aacute;i.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:arial\">&ndash; Lẩu c&aacute; ngừ đại dương.</span><br />\r\n<span style=\"color:rgb(0, 0, 0); font-family:arial\">&ndash; L&uacute;c lắc c&aacute; ngừ đại dương.</span></p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shoptop`
--

CREATE TABLE `shoptop` (
  `pk_shoptop_id` int(11) NOT NULL,
  `img` varchar(500) NOT NULL,
  `title_1` varchar(500) NOT NULL,
  `title_2` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `shoptop`
--

INSERT INTO `shoptop` (`pk_shoptop_id`, `img`, `title_1`, `title_2`) VALUES
(1, '1554728648khuyen-mai-freshfoods.jpg', 'Khuyến mại', 'Thông tin khuyến mại'),
(2, '1554728641cam-nang-nau-an-freshfoods.jpg', 'Cẩm nang sử dụng', 'Thực đơn cuối tuần.'),
(3, '1554728633giaohangnhanh-freshfoods.jpg', 'Giao hàng nhanh', 'Với các chi nhánh phủ khắp.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `slide_id` int(11) NOT NULL,
  `img` varchar(500) NOT NULL,
  `title_1` varchar(500) NOT NULL,
  `title_2` varchar(500) NOT NULL,
  `title_3` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`slide_id`, `img`, `title_1`, `title_2`, `title_3`) VALUES
(1, '1554395122cover-salmon-freshfoods.jpg', 'CÁ HỒI TƯƠI', 'NHẬP KHẨU', 'NAUY'),
(2, '1554394913freshfoods-mart-viet-hung.jpg', 'FRESHFOOD MART', 'ĐÃ CÓ MẶT TẠI', '106 P6, Nguyễn Cao Luyện, Việt Hưng, Long Biên, Hà Nội'),
(3, '1554394900cover-beef.jpg', 'THỊT BÒ', 'NHẬP KHẨU', 'MỸ'),
(4, '1554395156cover-freshfoods.png', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide_1`
--

CREATE TABLE `slide_1` (
  `slide_id_1` int(11) NOT NULL,
  `img` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slide_1`
--

INSERT INTO `slide_1` (`slide_id_1`, `img`) VALUES
(1, '1554744534seaborn.png'),
(2, '1554744528puget.png'),
(3, '1554744522novasea.png'),
(4, '1554744513norwell.png'),
(5, '1554744498nordlaks.png'),
(6, '1554744491midf-chun.jpg'),
(7, '1554744483lesieur.png'),
(8, '1554744469leroy.png'),
(9, '1554744463kikkoman.png'),
(10, '1554744458kewbie.png'),
(11, '1554744429hunts.png'),
(12, '1554744423heinz.png'),
(13, '1554744418greenham.png'),
(14, '1554744412cargill.png'),
(15, '1554744404beksul.png'),
(16, '1554744397akuruhi.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `fullname` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `email`, `password`, `fullname`) VALUES
(1, 'lucnb123321@gmail.com', 'fa1b49d92b91a06da6171f52eb3118c5', 'Phạm Viết Lực'),
(2, 'luongnb123321@gmail.com', '3d68855d19850e1b1b702f4dd883f422', 'Phạm Viết Lượng'),
(3, 'linhnb123321@gmail.com', 'fa1b49d92b91a06da6171f52eb3118c5', 'Phạm Viết Linh');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `list_news`
--
ALTER TABLE `list_news`
  ADD PRIMARY KEY (`pk_list_news_id`);

--
-- Chỉ mục cho bảng `list_product`
--
ALTER TABLE `list_product`
  ADD PRIMARY KEY (`pk_list_product_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`pk_news_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pk_product_id`);

--
-- Chỉ mục cho bảng `shoptop`
--
ALTER TABLE `shoptop`
  ADD PRIMARY KEY (`pk_shoptop_id`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`slide_id`);

--
-- Chỉ mục cho bảng `slide_1`
--
ALTER TABLE `slide_1`
  ADD PRIMARY KEY (`slide_id_1`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `list_news`
--
ALTER TABLE `list_news`
  MODIFY `pk_list_news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `list_product`
--
ALTER TABLE `list_product`
  MODIFY `pk_list_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `pk_news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `pk_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `shoptop`
--
ALTER TABLE `shoptop`
  MODIFY `pk_shoptop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `slide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `slide_1`
--
ALTER TABLE `slide_1`
  MODIFY `slide_id_1` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
