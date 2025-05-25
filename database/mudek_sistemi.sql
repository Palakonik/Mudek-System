-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 25 May 2025, 19:08:12
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `mudek_sistemi`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_name` varchar(100) DEFAULT NULL,
  `course_code` varchar(20) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `instructor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `course_code`, `credit`, `instructor`) VALUES
(1, 'Türk Dili I', 'TD101', 2, 'Dr. Ayşe Yılmaz'),
(2, 'Atatürk İlkeleri ve İnkılap Tarihi I', 'AIT101', 2, 'Dr. Mehmet Demir'),
(3, 'Yabancı Dil I', 'YD101', 3, 'Dr. Elif Kaya'),
(4, 'Temel Fizik', 'FIZ101', 3, 'Dr. Ahmet Şahin'),
(5, 'Matematik I', 'MAT101', 4, 'Dr. Zeynep Aydın'),
(6, 'Programlamaya Giriş', 'BIL101', 4, 'Dr. Ali Yıldız'),
(7, 'Bilgisayar Bilimlerine Giriş', 'BIL103', 2, 'Dr. Canan Toprak'),
(8, 'İş Sağlığı ve Güvenliği I', 'ISG101', 2, 'Dr. Emre Koç'),
(9, 'Türk Dili II', 'TD102', 2, 'Dr. Ayşe Yılmaz'),
(10, 'Atatürk İlkeleri ve İnkılap Tarihi II', 'AIT102', 2, 'Dr. Mehmet Demir'),
(11, 'Yabancı Dil II', 'YD102', 2, 'Dr. Elif Kaya'),
(12, 'Fizik II', 'FIZ102', 3, 'Dr. Ahmet Şahin'),
(13, 'Matematik II', 'MAT102', 4, 'Dr. Zeynep Aydın'),
(14, 'Yazılım Mühendisliğine Giriş', 'BIL102', 3, 'Dr. Ali Yıldız'),
(15, 'Programlama Dillerinin Temelleri', 'BIL104', 4, 'Dr. Canan Toprak'),
(16, 'İş Sağlığı ve Güvenliği II', 'ISG102', 2, 'Dr. Emre Koç'),
(17, 'Sayısal Tasarım', 'BIL201', 4, 'Dr. Selin Arslan'),
(18, 'Veri Yapıları', 'BIL203', 3, 'Dr. Murat Yılmaz'),
(19, 'Nesneye Yönelik Programlama', 'BIL205', 4, 'Dr. Ayşe Demir'),
(20, 'Yazılım Gereksinimleri ve Analizi', 'BIL207', 4, 'Dr. Mehmet Kaya'),
(21, 'Ayrık Yapılar', 'MAT201', 3, 'Dr. Elif Şahin'),
(22, 'Lineer Cebir', 'MAT203', 3, 'Dr. Ahmet Koç'),
(23, 'Girişimcilik', 'ISL201', 2, 'Dr. Canan Yıldız'),
(24, 'İleri Programlama Dilleri', 'BIL202', 4, 'Dr. Emre Arslan'),
(25, 'Yazılım Tasarım Örüntüleri', 'BIL204', 4, 'Dr. Selin Demir'),
(26, 'Algoritma Analizi ve Tasarımı', 'BIL206', 4, 'Dr. Murat Kaya'),
(27, 'Diferansiyel Denklemler', 'MAT202', 3, 'Dr. Ayşe Koç'),
(28, 'İstatistik ve İhtimaller Teorisi', 'MAT204', 3, 'Dr. Mehmet Şahin'),
(29, 'Veritabanı Sistemleri', 'BIL301', 4, 'Dr. Zeynep Arslan'),
(30, 'Yazılım Doğrulama ve Geçerleme', 'BIL303', 4, 'Dr. Ali Demir'),
(31, 'İnsan Bilgisayar Etkileşimi', 'BIL305', 3, 'Dr. Elif Kaya'),
(32, 'Bilgisayar Ağları', 'BIL307', 4, 'Dr. Ahmet Yıldız'),
(33, 'Yazılım Proje Yönetimi', 'BIL309', 3, 'Dr. Canan Şahin'),
(34, 'Seçmeli I', 'SEC301', 3, 'Dr. Emre Koç'),
(35, 'Web Programlama', 'BIL302', 4, 'Dr. Selin Yılmaz'),
(36, 'Yazılım Mimarisi', 'BIL304', 4, 'Dr. Murat Demir'),
(37, 'Mobil Programlama', 'BIL306', 3, 'Dr. Ayşe Kaya'),
(38, 'Yazılım Testi', 'BIL308', 4, 'Dr. Mehmet Arslan'),
(39, 'Seçmeli II', 'SEC302', 3, 'Dr. Zeynep Koç'),
(40, 'Seçmeli III', 'SEC304', 3, 'Dr. Ali Şahin'),
(41, 'Mesleki Deneyim I', 'BIL401', 3, 'Dr. Elif Demir'),
(42, 'Mesleki Deneyim II', 'BIL403', 3, 'Dr. Ahmet Kaya'),
(43, 'İşyeri Uygulaması', 'BIL405', 20, 'Dr. Canan Yıldız'),
(44, 'Tasarım Projesi', 'BIL407', 4, 'Dr. Emre Şahin'),
(45, 'Bitirme Çalışması', 'BIL402', 6, 'Dr. Selin Koç'),
(46, 'Yazılım Kalite Güvencesi', 'BIL404', 4, 'Dr. Murat Yıldız'),
(47, 'Yazılım Geliştirme Standartları ve Proje Yönetimi', 'BIL406', 4, 'Dr. Ayşe Arslan');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `course_po_relations`
--

CREATE TABLE `course_po_relations` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `po_id` int(11) DEFAULT NULL,
  `contributes` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `course_po_relations`
--

INSERT INTO `course_po_relations` (`id`, `course_id`, `po_id`, `contributes`) VALUES
(1, 1, 1, 1),
(2, 1, 3, 1),
(3, 1, 5, 1),
(4, 2, 2, 1),
(5, 2, 4, 1),
(6, 2, 6, 1),
(7, 2, 8, 1),
(8, 3, 3, 1),
(9, 3, 7, 1),
(10, 3, 12, 1),
(11, 4, 5, 1),
(12, 4, 9, 1),
(13, 4, 11, 1),
(14, 5, 1, 1),
(15, 5, 6, 1),
(16, 5, 8, 1),
(17, 6, 2, 1),
(18, 6, 4, 1),
(19, 6, 5, 1),
(20, 6, 9, 1),
(21, 7, 1, 1),
(22, 7, 7, 1),
(23, 7, 10, 1),
(24, 8, 6, 1),
(25, 8, 12, 1),
(26, 8, 17, 1),
(27, 9, 5, 1),
(28, 9, 9, 1),
(29, 9, 14, 1),
(30, 10, 2, 1),
(31, 10, 6, 1),
(32, 10, 13, 1),
(33, 10, 15, 1),
(34, 11, 4, 1),
(35, 11, 7, 1),
(36, 11, 18, 1),
(37, 12, 1, 1),
(38, 12, 3, 1),
(39, 12, 9, 1),
(40, 12, 21, 1),
(41, 13, 6, 1),
(42, 13, 10, 1),
(43, 13, 13, 1),
(44, 14, 2, 1),
(45, 14, 5, 1),
(46, 14, 7, 1),
(47, 15, 3, 1),
(48, 15, 4, 1),
(49, 15, 6, 1),
(50, 15, 8, 1),
(51, 16, 1, 1),
(52, 16, 9, 1),
(53, 16, 11, 1),
(54, 17, 2, 1),
(55, 17, 6, 1),
(56, 17, 14, 1),
(57, 18, 1, 1),
(58, 18, 4, 1),
(59, 18, 13, 1),
(60, 18, 20, 1),
(61, 19, 3, 1),
(62, 19, 7, 1),
(63, 19, 10, 1),
(64, 20, 5, 1),
(65, 20, 8, 1),
(66, 20, 11, 1),
(67, 20, 23, 1),
(68, 21, 6, 1),
(69, 21, 14, 1),
(70, 21, 24, 1),
(71, 22, 2, 1),
(72, 22, 7, 1),
(73, 22, 13, 1),
(74, 22, 26, 1),
(75, 23, 1, 1),
(76, 23, 3, 1),
(77, 23, 5, 1),
(78, 24, 6, 1),
(79, 24, 10, 1),
(80, 24, 16, 1),
(81, 25, 2, 1),
(82, 25, 7, 1),
(83, 25, 9, 1),
(84, 25, 12, 1),
(85, 26, 1, 1),
(86, 26, 3, 1),
(87, 26, 5, 1),
(88, 27, 4, 1),
(89, 27, 6, 1),
(90, 27, 8, 1),
(91, 28, 9, 1),
(92, 28, 11, 1),
(93, 28, 14, 1),
(94, 29, 3, 1),
(95, 29, 7, 1),
(96, 29, 10, 1),
(97, 29, 13, 1),
(98, 30, 1, 1),
(99, 30, 4, 1),
(100, 30, 8, 1),
(101, 31, 2, 1),
(102, 31, 5, 1),
(103, 31, 9, 1),
(104, 32, 6, 1),
(105, 32, 12, 1),
(106, 32, 17, 1),
(107, 33, 3, 1),
(108, 33, 10, 1),
(109, 33, 14, 1),
(110, 34, 1, 1),
(111, 34, 6, 1),
(112, 34, 8, 1),
(113, 34, 15, 1),
(114, 35, 2, 1),
(115, 35, 9, 1),
(116, 35, 13, 1),
(117, 36, 5, 1),
(118, 36, 11, 1),
(119, 36, 16, 1),
(120, 37, 4, 1),
(121, 37, 7, 1),
(122, 37, 14, 1),
(123, 38, 6, 1),
(124, 38, 8, 1),
(125, 38, 17, 1),
(126, 39, 1, 1),
(127, 39, 9, 1),
(128, 39, 13, 1),
(129, 39, 18, 1),
(130, 40, 3, 1),
(131, 40, 6, 1),
(132, 40, 10, 1),
(133, 41, 7, 1),
(134, 41, 14, 1),
(135, 41, 20, 1),
(136, 42, 2, 1),
(137, 42, 4, 1),
(138, 42, 11, 1),
(139, 43, 5, 1),
(140, 43, 9, 1),
(141, 43, 21, 1),
(142, 44, 1, 1),
(143, 44, 6, 1),
(144, 44, 10, 1),
(145, 45, 3, 1),
(146, 45, 8, 1),
(147, 45, 14, 1),
(148, 45, 22, 1),
(149, 46, 7, 1),
(150, 46, 15, 1),
(151, 46, 23, 1),
(152, 47, 4, 1),
(153, 47, 11, 1),
(154, 47, 17, 1),
(155, 47, 27, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `exams`
--

CREATE TABLE `exams` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `exam_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `exams`
--

INSERT INTO `exams` (`id`, `course_id`, `exam_name`) VALUES
(1, 1, 'Vize'),
(2, 1, 'Final'),
(3, 2, 'Vize'),
(4, 2, 'Final'),
(5, 3, 'Vize'),
(6, 3, 'Final'),
(7, 4, 'Vize'),
(8, 4, 'Final'),
(9, 5, 'Vize'),
(10, 5, 'Final'),
(11, 6, 'Vize'),
(12, 6, 'Final'),
(13, 7, 'Vize'),
(14, 7, 'Final'),
(15, 8, 'Vize'),
(16, 8, 'Final'),
(17, 9, 'Vize'),
(18, 9, 'Final'),
(19, 10, 'Vize'),
(20, 10, 'Final'),
(21, 11, 'Vize'),
(22, 11, 'Final'),
(23, 12, 'Vize'),
(24, 12, 'Final'),
(25, 13, 'Vize'),
(26, 13, 'Final'),
(27, 14, 'Vize'),
(28, 14, 'Final'),
(29, 15, 'Vize'),
(30, 15, 'Final'),
(31, 16, 'Vize'),
(32, 16, 'Final'),
(33, 17, 'Vize'),
(34, 17, 'Final'),
(35, 18, 'Vize'),
(36, 18, 'Final'),
(37, 19, 'Vize'),
(38, 19, 'Final'),
(39, 20, 'Vize'),
(40, 20, 'Final'),
(41, 21, 'Vize'),
(42, 21, 'Final'),
(43, 22, 'Vize'),
(44, 22, 'Final'),
(45, 23, 'Vize'),
(46, 23, 'Final'),
(47, 24, 'Vize'),
(48, 24, 'Final'),
(49, 25, 'Vize'),
(50, 25, 'Final'),
(51, 26, 'Vize'),
(52, 26, 'Final'),
(53, 27, 'Vize'),
(54, 27, 'Final'),
(55, 28, 'Vize'),
(56, 28, 'Final'),
(57, 29, 'Vize'),
(58, 29, 'Final'),
(59, 30, 'Vize'),
(60, 30, 'Final'),
(61, 31, 'Vize'),
(62, 31, 'Final'),
(63, 32, 'Vize'),
(64, 32, 'Final'),
(65, 33, 'Vize'),
(66, 33, 'Final'),
(67, 34, 'Vize'),
(68, 34, 'Final'),
(69, 35, 'Vize'),
(70, 35, 'Final'),
(71, 36, 'Vize'),
(72, 36, 'Final'),
(73, 37, 'Vize'),
(74, 37, 'Final'),
(75, 38, 'Vize'),
(76, 38, 'Final'),
(77, 39, 'Vize'),
(78, 39, 'Final'),
(79, 40, 'Vize'),
(80, 40, 'Final'),
(81, 41, 'Vize'),
(82, 41, 'Final'),
(83, 42, 'Vize'),
(84, 42, 'Final'),
(85, 43, 'Vize'),
(86, 43, 'Final'),
(87, 44, 'Vize'),
(88, 44, 'Final'),
(89, 45, 'Vize'),
(90, 45, 'Final'),
(91, 46, 'Vize'),
(92, 46, 'Final'),
(93, 47, 'Vize'),
(94, 47, 'Final');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `exam_po_relations`
--

CREATE TABLE `exam_po_relations` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `po_id` int(11) DEFAULT NULL,
  `contributes` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `exam_po_relations`
--

INSERT INTO `exam_po_relations` (`id`, `exam_id`, `po_id`, `contributes`) VALUES
(1, 1, 3, 1),
(2, 2, 5, 1),
(3, 2, 1, 1),
(4, 3, 8, 1),
(5, 3, 6, 1),
(6, 4, 2, 1),
(7, 4, 4, 1),
(8, 5, 7, 1),
(9, 6, 3, 1),
(10, 6, 12, 1),
(11, 7, 9, 1),
(12, 8, 5, 1),
(13, 8, 11, 1),
(14, 9, 8, 1),
(15, 10, 1, 1),
(16, 10, 6, 1),
(17, 11, 9, 1),
(18, 11, 5, 1),
(19, 12, 2, 1),
(20, 12, 4, 1),
(21, 13, 7, 1),
(22, 14, 1, 1),
(23, 14, 10, 1),
(24, 15, 17, 1),
(25, 16, 6, 1),
(26, 16, 12, 1),
(27, 17, 5, 1),
(28, 18, 14, 1),
(29, 18, 9, 1),
(30, 19, 6, 1),
(31, 19, 2, 1),
(32, 20, 13, 1),
(33, 21, 4, 1),
(34, 22, 7, 1),
(35, 22, 18, 1),
(36, 23, 9, 1),
(37, 23, 3, 1),
(38, 24, 1, 1),
(39, 24, 21, 1),
(40, 25, 10, 1),
(41, 26, 6, 1),
(42, 26, 13, 1),
(43, 27, 7, 1),
(44, 28, 2, 1),
(45, 28, 5, 1),
(46, 29, 6, 1),
(47, 29, 4, 1),
(48, 30, 8, 1),
(49, 30, 3, 1),
(50, 31, 9, 1),
(51, 32, 11, 1),
(52, 32, 1, 1),
(53, 33, 14, 1),
(54, 34, 6, 1),
(55, 34, 2, 1),
(56, 35, 4, 1),
(57, 35, 13, 1),
(58, 36, 1, 1),
(59, 36, 20, 1),
(60, 37, 3, 1),
(61, 38, 10, 1),
(62, 38, 7, 1),
(63, 39, 5, 1),
(64, 39, 23, 1),
(65, 40, 8, 1),
(66, 40, 11, 1),
(67, 41, 14, 1),
(68, 42, 6, 1),
(69, 42, 24, 1),
(70, 43, 7, 1),
(71, 43, 26, 1),
(72, 44, 2, 1),
(73, 44, 13, 1),
(74, 45, 5, 1),
(75, 46, 3, 1),
(76, 46, 1, 1),
(77, 47, 6, 1),
(78, 48, 16, 1),
(79, 48, 10, 1),
(80, 49, 7, 1),
(81, 49, 9, 1),
(82, 50, 2, 1),
(83, 50, 12, 1),
(84, 51, 3, 1),
(85, 52, 5, 1),
(86, 52, 1, 1),
(87, 53, 4, 1),
(88, 54, 6, 1),
(89, 54, 8, 1),
(90, 55, 9, 1),
(91, 56, 11, 1),
(92, 56, 14, 1),
(93, 57, 7, 1),
(94, 57, 13, 1),
(95, 58, 10, 1),
(96, 58, 3, 1),
(97, 59, 8, 1),
(98, 60, 1, 1),
(99, 60, 4, 1),
(100, 61, 9, 1),
(101, 62, 5, 1),
(102, 62, 2, 1),
(103, 63, 6, 1),
(104, 64, 17, 1),
(105, 64, 12, 1),
(106, 65, 3, 1),
(107, 66, 10, 1),
(108, 66, 14, 1),
(109, 67, 8, 1),
(110, 67, 6, 1),
(111, 68, 15, 1),
(112, 68, 1, 1),
(113, 69, 2, 1),
(114, 70, 9, 1),
(115, 70, 13, 1),
(116, 71, 5, 1),
(117, 72, 11, 1),
(118, 72, 16, 1),
(119, 73, 7, 1),
(120, 74, 4, 1),
(121, 74, 14, 1),
(122, 75, 8, 1),
(123, 76, 6, 1),
(124, 76, 17, 1),
(125, 77, 13, 1),
(126, 77, 9, 1),
(127, 78, 18, 1),
(128, 78, 1, 1),
(129, 79, 6, 1),
(130, 80, 3, 1),
(131, 80, 10, 1),
(132, 81, 20, 1),
(133, 82, 7, 1),
(134, 82, 14, 1),
(135, 83, 4, 1),
(136, 84, 11, 1),
(137, 84, 2, 1),
(138, 85, 5, 1),
(139, 86, 21, 1),
(140, 86, 9, 1),
(141, 87, 1, 1),
(142, 88, 6, 1),
(143, 88, 10, 1),
(144, 89, 8, 1),
(145, 89, 3, 1),
(146, 90, 22, 1),
(147, 90, 14, 1),
(148, 91, 7, 1),
(149, 92, 15, 1),
(150, 92, 23, 1),
(151, 93, 17, 1),
(152, 93, 27, 1),
(153, 94, 11, 1),
(154, 94, 4, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `grades`
--

CREATE TABLE `grades` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `grade` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `grades`
--

INSERT INTO `grades` (`id`, `student_id`, `exam_id`, `grade`) VALUES
(7, 1, 1, 78.5),
(8, 2, 1, 91),
(9, 3, 1, 65),
(10, 1, 2, 82),
(11, 2, 2, 88),
(12, 3, 2, 59),
(13, 1, 5, 99);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `program_outcomes`
--

CREATE TABLE `program_outcomes` (
  `id` int(11) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `program_outcomes`
--

INSERT INTO `program_outcomes` (`id`, `code`, `description`) VALUES
(1, 'PÇ-1', 'Matematik ve fen bilimlerine özgü konularda yeterli bilgi birikimi'),
(2, 'PÇ-2', 'İlgili disiplinine özgü konularda yeterli bilgi birikimi'),
(3, 'PÇ-3', 'Bu alanlardaki kuramsal ve uygulamalı bilgileri, karmaşık mühendislik problemlerinin çözümünde kullanabilme becerisi'),
(4, 'PÇ-4', 'Bu amaçla uygun analiz ve modelleme yöntemlerini seçme ve uygulama becerisi'),
(5, 'PÇ-5', 'Karmaşık mühendislik problemlerini tanımlama, formüle etme ve çözme becerisi'),
(6, 'PÇ-6', 'Karmaşık bir sistemi, süreci, cihazı veya ürünü gerçekçi kısıtlar ve koşullar altında, belirli gereksinimleri karşılayacak şekilde tasarlama becerisi'),
(7, 'PÇ-7', 'Bu amaçla modern tasarım yöntemlerini uygulama becerisi'),
(8, 'PÇ-8', 'Mühendislik uygulamalarında karşılaşılan karmaşık problemlerin analizi ve çözümü için gerekli olan modern teknik ve araçları seçme ve kullanma becerisi'),
(9, 'PÇ-9', 'Bilişim teknolojilerini etkin bir şekilde kullanma becerisi'),
(10, 'PÇ-10', 'Karmaşık mühendislik problemlerinin veya disipline özgü araştırma konularının incelenmesi için deney tasarlama becerisi.'),
(11, 'PÇ-11', 'Karmaşık mühendislik problemlerinin veya disipline özgü araştırma konularının incelenmesi için deney yapma becerisi.'),
(12, 'PÇ-12', 'Karmaşık mühendislik problemlerinin veya disipline özgü araştırma konularının incelenmesi için veri toplama, sonuçları analiz etme ve yorumlama becerisi'),
(13, 'PÇ-13', 'Disiplin içi takımlarda etkin biçimde çalışabilme becerisi'),
(14, 'PÇ-14', 'Çok disiplinli takımlarda etkin biçimde çalışabilme becerisi'),
(15, 'PÇ-15', 'Bireysel çalışma becerisi'),
(16, 'PÇ-16', 'Sözlü ve yazılı etkin iletişim kurma ve sunum yapabilme becerisi'),
(17, 'PÇ-17', 'En az bir yabancı dil bilgisi'),
(18, 'PÇ-18', 'Etkin rapor yazma ve yazılı raporları anlama becerisi'),
(19, 'PÇ-19', 'Tasarım ve üretim raporları hazırlayabilme becerisi'),
(20, 'PÇ-20', 'Açık ve anlaşılır talimat verme ve alma becerisi'),
(21, 'PÇ-21', 'Yaşam boyu öğrenmenin gerekliliği konusunda farkındalık'),
(22, 'PÇ-22', 'Bilgiye erişebilme, bilim ve teknolojideki gelişmeleri izleme ve kendini sürekli yenileme becerisi'),
(23, 'PÇ-23', 'Etik ilkelerine uygun davranma, mesleki ve etik sorumluluk hakkında bilgi'),
(24, 'PÇ-24', 'Mühendislik uygulamalarında kullanılan standartlar hakkında bilgi'),
(25, 'PÇ-25', 'Proje yönetimi, risk yönetimi ve değişiklik yönetimi gibi, iş hayatındaki uygulamalar hakkında bilgi'),
(26, 'PÇ-26', 'Girişimcilik, yenilikçilik hakkında farkındalık'),
(27, 'PÇ-27', 'Sürdürülebilir kalkınma hakkında bilgi'),
(28, 'PÇ-28', 'Mühendislik uygulamalarının evrensel ve toplumsal boyutlarda sağlık, çevre ve güvenlik üzerindeki etkileri ve çağın mühendislik alanına yansıyan sorunları hakkında bilgi'),
(29, 'PÇ-29', 'Mühendislik çözümlerinin hukuksal sonuçları konusunda farkındalık');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `student_number` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `students`
--

INSERT INTO `students` (`id`, `name`, `surname`, `student_number`, `email`) VALUES
(1, 'Ahmet', 'Yılmaz', '20210001', 'ahmet.yilmaz@example.com'),
(2, 'Ayşe', 'Demir', '20210002', 'ayse.demir@example.com'),
(3, 'Mehmet', 'Kaya', '20210003', 'mehmet.kaya@example.com'),
(4, 'Zeynep', 'Koç', '20210004', 'zeynep.koc@example.com'),
(5, 'Ali', 'Şahin', '20210005', 'ali.sahin@example.com'),
(6, 'Fatma', 'Aydın', '20210006', 'fatma.aydin@example.com'),
(7, 'Emre', 'Çelik', '20210007', 'emre.celik@example.com'),
(8, 'Elif', 'Öztürk', '20210008', 'elif.ozturk@example.com'),
(9, 'Mert', 'Arslan', '20210009', 'mert.arslan@example.com'),
(10, 'Hatice', 'Doğan', '20210010', 'hatice.dogan@example.com'),
(11, 'Burak', 'Polat', '20210011', 'burak.polat@example.com'),
(12, 'Derya', 'Ergin', '20210012', 'derya.ergin@example.com'),
(13, 'Can', 'Yıldız', '20210013', 'can.yildiz@example.com'),
(14, 'Melisa', 'Kurt', '20210014', 'melisa.kurt@example.com'),
(15, 'Okan', 'Çetin', '20210015', 'okan.cetin@example.com'),
(16, 'Seda', 'Aksoy', '20210016', 'seda.aksoy@example.com'),
(17, 'Tolga', 'Güneş', '20210017', 'tolga.gunes@example.com'),
(18, 'Buse', 'Bozkurt', '20210018', 'buse.bozkurt@example.com'),
(19, 'Kerem', 'Özkan', '20210019', 'kerem.ozkan@example.com'),
(20, 'Nazlı', 'Şen', '20210020', 'nazli.sen@example.com'),
(22, 'mete', 'kayaç', '12312345', 'metehankral@gmail.com'),
(25, 'mete', 'kayaç', '12412625', 'sjdhkabgjwskdbjaqk@gmail.com'),
(26, 'berkay', 'alkiz', '12312348', 'sbjdahskad@gmail.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `student_course`
--

CREATE TABLE `student_course` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `student_courses`
--

CREATE TABLE `student_courses` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `student_courses`
--

INSERT INTO `student_courses` (`id`, `student_id`, `course_id`) VALUES
(1, 1, 20),
(2, 1, 40),
(3, 1, 16),
(4, 1, 24),
(5, 1, 27),
(6, 1, 39),
(7, 1, 34),
(8, 1, 23),
(9, 2, 34),
(10, 2, 11),
(11, 2, 7),
(12, 2, 27),
(13, 2, 3),
(14, 2, 26),
(15, 2, 36),
(16, 3, 8),
(17, 3, 15),
(18, 3, 10),
(19, 3, 39),
(20, 3, 9),
(21, 3, 31),
(22, 3, 5),
(23, 3, 22),
(24, 3, 46),
(25, 4, 7),
(26, 4, 20),
(27, 4, 10),
(28, 4, 26),
(29, 4, 19),
(30, 4, 35),
(31, 4, 27),
(32, 4, 4),
(33, 5, 46),
(34, 5, 17),
(35, 5, 40),
(36, 5, 26),
(37, 5, 11),
(38, 5, 25),
(39, 5, 32),
(40, 5, 15),
(41, 5, 4),
(42, 6, 46),
(43, 6, 4),
(44, 6, 13),
(45, 6, 14),
(46, 6, 7),
(47, 6, 39),
(48, 6, 12),
(49, 7, 45),
(50, 7, 20),
(51, 7, 44),
(52, 7, 26),
(53, 7, 14),
(54, 7, 4),
(55, 7, 39),
(56, 7, 37),
(57, 7, 38),
(58, 8, 14),
(59, 8, 28),
(60, 8, 8),
(61, 8, 13),
(62, 8, 31),
(63, 8, 47),
(64, 9, 20),
(65, 9, 25),
(66, 9, 28),
(67, 9, 24),
(68, 9, 36),
(69, 9, 6),
(70, 9, 29),
(71, 9, 37),
(72, 9, 22),
(73, 9, 31),
(74, 10, 43),
(75, 10, 13),
(76, 10, 15),
(77, 10, 27),
(78, 10, 33),
(79, 10, 11),
(80, 10, 47),
(81, 10, 14),
(82, 10, 2),
(83, 10, 25),
(84, 11, 46),
(85, 11, 29),
(86, 11, 31),
(87, 11, 11),
(88, 11, 33),
(89, 11, 1),
(90, 12, 27),
(91, 12, 38),
(92, 12, 24),
(93, 12, 8),
(94, 12, 46),
(95, 12, 15),
(96, 12, 37),
(97, 12, 3),
(98, 13, 29),
(99, 13, 13),
(100, 13, 18),
(101, 13, 15),
(102, 13, 24),
(103, 13, 34),
(104, 13, 6),
(105, 13, 16),
(106, 13, 20),
(107, 13, 21),
(108, 14, 11),
(109, 14, 30),
(110, 14, 41),
(111, 14, 13),
(112, 14, 26),
(113, 14, 1),
(114, 14, 35),
(115, 14, 24),
(116, 15, 5),
(117, 15, 12),
(118, 15, 18),
(119, 15, 29),
(120, 15, 11),
(121, 15, 1),
(122, 16, 41),
(123, 16, 31),
(124, 16, 19),
(125, 16, 3),
(126, 16, 7),
(127, 16, 24),
(128, 16, 20),
(129, 17, 28),
(130, 17, 17),
(131, 17, 47),
(132, 17, 31),
(133, 17, 45),
(134, 17, 35),
(135, 17, 34),
(136, 17, 19),
(137, 17, 26),
(138, 17, 24),
(139, 18, 12),
(140, 18, 26),
(141, 18, 36),
(142, 18, 11),
(143, 18, 23),
(144, 18, 35),
(145, 18, 27),
(146, 18, 6),
(147, 19, 6),
(148, 19, 24),
(149, 19, 2),
(150, 19, 37),
(151, 19, 38),
(152, 19, 10),
(153, 19, 32),
(154, 20, 31),
(155, 20, 32),
(156, 20, 4),
(157, 20, 37),
(158, 20, 26),
(159, 20, 24),
(160, 20, 12),
(161, 20, 33);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `username`, `password_hash`) VALUES
(1, 'admin', 'admin');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_code` (`course_code`);

--
-- Tablo için indeksler `course_po_relations`
--
ALTER TABLE `course_po_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `po_id` (`po_id`);

--
-- Tablo için indeksler `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`);

--
-- Tablo için indeksler `exam_po_relations`
--
ALTER TABLE `exam_po_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_id` (`exam_id`),
  ADD KEY `po_id` (`po_id`);

--
-- Tablo için indeksler `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`,`exam_id`),
  ADD KEY `exam_id` (`exam_id`);

--
-- Tablo için indeksler `program_outcomes`
--
ALTER TABLE `program_outcomes`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_number` (`student_number`);

--
-- Tablo için indeksler `student_course`
--
ALTER TABLE `student_course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Tablo için indeksler `student_courses`
--
ALTER TABLE `student_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Tablo için AUTO_INCREMENT değeri `course_po_relations`
--
ALTER TABLE `course_po_relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- Tablo için AUTO_INCREMENT değeri `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- Tablo için AUTO_INCREMENT değeri `exam_po_relations`
--
ALTER TABLE `exam_po_relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- Tablo için AUTO_INCREMENT değeri `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tablo için AUTO_INCREMENT değeri `program_outcomes`
--
ALTER TABLE `program_outcomes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Tablo için AUTO_INCREMENT değeri `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Tablo için AUTO_INCREMENT değeri `student_course`
--
ALTER TABLE `student_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `student_courses`
--
ALTER TABLE `student_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `course_po_relations`
--
ALTER TABLE `course_po_relations`
  ADD CONSTRAINT `course_po_relations_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `course_po_relations_ibfk_2` FOREIGN KEY (`po_id`) REFERENCES `program_outcomes` (`id`);

--
-- Tablo kısıtlamaları `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Tablo kısıtlamaları `exam_po_relations`
--
ALTER TABLE `exam_po_relations`
  ADD CONSTRAINT `exam_po_relations_ibfk_1` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`),
  ADD CONSTRAINT `exam_po_relations_ibfk_2` FOREIGN KEY (`po_id`) REFERENCES `program_outcomes` (`id`);

--
-- Tablo kısıtlamaları `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `grades_ibfk_2` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`);

--
-- Tablo kısıtlamaları `student_course`
--
ALTER TABLE `student_course`
  ADD CONSTRAINT `student_course_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `student_course_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Tablo kısıtlamaları `student_courses`
--
ALTER TABLE `student_courses`
  ADD CONSTRAINT `student_courses_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `student_courses_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
