-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 03 Eki 2022, 13:29:11
-- Sunucu sürümü: 5.7.34
-- PHP Sürümü: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `admin_jedacad_db`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Proqramlaşdırma kursları', '2022-06-13 07:35:00', '2022-06-13 08:18:26'),
(2, 'IT kursları', '2022-06-13 07:35:07', '2022-06-13 07:35:07');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` longtext COLLATE utf8mb4_unicode_ci,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `online_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offline_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_attribute` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail_attribute` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `endirim` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `courses`
--

INSERT INTO `courses` (`id`, `parent_id`, `name`, `short_description`, `month`, `online_price`, `offline_price`, `discount`, `image`, `meta_title`, `meta_description`, `meta_keyword`, `created_at`, `updated_at`, `seo_description`, `thumbnail`, `image_attribute`, `thumbnail_attribute`, `slug`, `endirim`, `show_page`) VALUES
(3, '1', 'Frontend proqramlaşdırma kursu', 'Front end developer kursu ərzində siz vebsaytların və proqramların yaradılmasını, interfeyslərin dizaynını və Front end kursu proqramına daxil olan proqramlaşdırma dillərində işləməyi öyrənəcəksiniz.', '5', '150', '190', '1', 'courses/June2022/H20WJz0PJnr4GXM0IKAr.png', 'Front end developer kursu. Front end developer Baku.', 'Front end developer olmaq istəyənlər üçün front end kurslari təklif edirik. Dərs zamanı sizinlə peşəkar front end developer öz təcrübəsi ilə bölüşəcək.', 'front end developer, front end developer baku, front end kurslari, front end kursu, front end developer kursu, frontend kurslari, proqramlaşdırma kursu', '2022-06-07 02:51:00', '2022-09-09 02:57:02', '<p>Əgər sizdə Front end developer olmaq istəyirsinizsə qeydiyyatdan ke&ccedil;in və JedAcademy-də Front end kursu &ouml;yrənməyə başlayın.</p>\n<p>&nbsp;</p>\n<p>Front end proqramlaşdırma kursu ərzində siz bu proqramlaşdirma dilləri ilə tanış olacaqsınız: HTML, CSS, SASS, Bootstrap, Javascript, React.js, Ajax, Axios, Git, Typescript</p>\n<p>&nbsp;</p>\n<p>Front end kurslari bitirən tələbələrimizə \"JedAcademy\" sertifikatı veririk.</p>', 'courses/June2022/sBzmjmfMdI22AlQbN6mq.jpg', 'frontend proqramlaşdırma kursu', 'frontend programlasdirma kursu', 'frontend-proqramlasdirma-kursu', '5', '1'),
(4, '1', 'Backend proqramlaşdırma kursu (Node.js)', 'IT sahəsinin proqramlaşdırma istiqaməti üzrə mütəxəssisi olmaq istəyirsiniz? Doğru ünvana gəlmisiniz, JED Academy sizi cəmi 6 ay ərzində yüksək səviyyəli Backend proqramçı kimi yetişdirəcək və siz işə başlamaq üçün tam hazır olacaqsınız. Backend proqramlaşdırma kursumuza yazılın, xəyal etdiyiniz peşəyə qısa zaman ərzində sahib olun!', '6', '150', '190', '1', 'courses/June2022/21CkSoN9ydoI6adShtVa.png', 'Backend proqramlaşdırma kursu', 'Backend developer kursları. Backend programlasdirma kurslari üçün qeydiyyatdan keçin. Bu kurs həmçinin Node.js kurs adlanır. Sizdə backend developer olun.', 'backend developer, backend, proqramlaşdırma kursları, programlasdirma kurslari, node js kurs, backend kurslari, backend kursu, proqramlasdirma kursu', '2022-06-07 02:53:00', '2022-09-09 02:56:52', '<p>Backend proqram&ccedil;ı - saytların və proqramların daxili proseslərini, məlumat m&uuml;badiləsini, idarəetmə sistemlərini qurur və onların maksimal performansını təmin edir.&nbsp;</p>\n<p>&nbsp;</p>\n<p>Təklif etdiyimiz backend proqramlaşdırma kursu Node.js istiqaməti &uuml;zrədir.</p>\n<p>&nbsp;</p>\n<p>Backend Node.js proqramlaşdırma kursu ərzində biz sizi JavaScript, Typescript, Ajax, Axios, Node.js, MongoDB, Rest API, Express.js, JWT authentication, GraphQL, AWS, Docker proqramlaşdırma dilləri, kitabxanaları, servisləri və proqram təminatı ilə &ccedil;alışmağa &ouml;yrədəcəyik.&nbsp;</p>\n<p>&nbsp;</p>\n<p>Kursu bitirdikdə siz backend developer olaraq &ccedil;alışmaq &uuml;&ccedil;&uuml;n tam hazır olacaqsınız və tərəfimizdən sertifikatla təmin ediləcəksiniz.</p>', 'courses/June2022/hBcjdpI7aIV8qStN36YG.jpg', 'backend node js proqramlaşdırma kursu', 'Backend nodejs programlasdirma kursu', 'backend-proqramlasdirma-kursu', '5', '1'),
(8, '2', 'Network Adminstration (Cisco CCNA)', 'İt kursları (Cisco kursları) ərzində siz fiziki avadanlığın quraşdırılması, Packet tracer, Wireshark packet analizi, Cisco Firepower avadanlığı (virtual), ACL, NAT, Routing ve digər qaydaların tətbiqi üzrə tədris alasınız.', '4', NULL, '200', '1', 'courses/June2022/vHqxPqLfwKAQhZD62qTJ.png', 'İt kursları. Bakıda it kursları. Cisco kurslari Bakida.', 'İt kursları. Cisco kurslari. Şəbəkə kursları. Cisco CCNA sertifikatı imtahanına hazırlaşmaq istəyirsinizsə onda it kursları JED Academy-də sizin üçündür.', 'it kursları, bakıda it kursları, cisco kurslari, cisco kursları, cisco kurslari azerbaycanda, cisco kurslari bakida, cisco kurslari azerbaycan, cisco kurslari baki, cisco kurslari it kurslari, şəbəkə kursları', '2022-06-07 03:36:00', '2022-09-05 03:29:21', '<p>Network Administrator olmaq istəyirsinizsə it kursları &uuml;&ccedil;&uuml;n qeydiyyatdan ke&ccedil;in və JedAcademy-də Cisco kursları dərslərinə başlayın .&nbsp;</p>\n<p>&nbsp;</p>\n<p>Bakida it kursları ərzində siz fiziki avadanlığın quraşdırılması (Switch, Router, Modem və s.), Packet tracer, GNS3, Eve-NG lab m&uuml;hitinde praktiki testler, Wireshark ile dərin packet analizi. Həm&ccedil;inin Cisco Firepower avadanlığı (virtual) ilə tanış olacaqsınız: ilkin sazlanma, ACL, NAT, Routing ve digər qaydaların tətbiqi.&nbsp;</p>\n<p>&nbsp;</p>\n<p>Cisco kursları ərzində siz Beynəlxalq səviyyədə tanınan Cisco sertifikasiya imtahanına hazırlaşacaqsınız: CCNA. Bundan əlavə cisco kurslari it kurslari bitirdikdən sonra siz &ouml;lkədaxilində tanınan JED Academy sərtifikatı alacaqsınız.</p>', 'courses/June2022/y9RyX1R60caVWtqpfpkv.jpg', 'Network Adminstration (CCNA) kursu', 'Network Adminstration (CCNA) kursu', 'it-kursu-network-adminstration', '5', '1'),
(20, '1', 'Game Development kursu', 'Oyun oynamağı sevirsən? Özün oyun yaratmaq istəyirsən? O zaman sən doğru ünvana gəlmisən :) Game Developer (oyun proqramçısı) sənətinə sahib ol, sevdiyin işlə məşğul ol və bu iş sənə bol qazanc gətirəcək. Arzularına çatmaq üçün \"Game Developer\" kursuna yazıl və cəmi 6 ay ərzində oyunların hazırlanması üzrə mütəxəssis ol!', '6', NULL, '230', '1', 'courses/August2022/jEFVff4TVyziQpq47P5H.png', 'Game developer. Unity C sharp. Oyun programlama kursu.', 'Game Developer kursu. Əgər game development ilə maraqlanırsınızsa, oyun kursu dərlərinə yazılın və kursu bitirdikdə peşəkar unity c sharp developer olun.', 'game app developer, game developer, unity c sharp, unity developer, unity game development, oyun kursu, oyun programlama kursu', '2022-08-25 04:01:00', '2022-09-07 04:07:27', '<p>Oyunların hazırlanması - IT sahəsində yeni bir sahədir və oyun sevənlər &uuml;&ccedil;&uuml;n sevdiyi işi qazanca &ccedil;evirmək &uuml;&ccedil;&uuml;n əla bir f&uuml;rsətdir.&nbsp;</p>\n<p>&nbsp;</p>\n<p>Bu kurs ərzində siz m&uuml;xtəlif janrlarda oyunlar hazırlamağı &ouml;yrənəcəksiniz: Action, Shooter, Quest, Adventure, RPG, Running, Sulumator və s. Sizə Unity platformasında oyunların hazırlanmasını &ouml;yrədəcəyik. Proqramlaşdırma dili olaraq C# (C-Sharp), dizayn &uuml;&ccedil;&uuml;n isə Blender 3D proqramı ilə &ccedil;alışmağı &ouml;yrənəcəksiniz.</p>\n<p>&nbsp;</p>\n<p>Kursu bitirdikdə siz artıq b&uuml;t&uuml;n populyar cihazlar və platformlar &uuml;&ccedil;&uuml;n oyunlar hazırlaya biləcəksiniz: PC, Playstation, Xbox, Mac, Linux, Android, IOS.&nbsp;</p>\n<p>&nbsp;</p>\n<p>İlk oyununu hazırlamaq istəyirsən? O zaman vaxty itirmə, bizə zəng et, kursa yazıl və sonsusca maraqlı və dərin Oyun Proqramlaşdırması d&uuml;nyasına ilk addımlarını bizimlə birlikdə atmağa başla!</p>', 'courses/August2022/IDTAxeg7OF5ApLm2fLR5.jpg', 'game development', 'game development', 'game-development-kursu', '8', '1'),
(21, '1', 'Fullstack proqramlaşdırma kursu MERN', '', '9', '150', '190', '1', 'courses/September2022/dO4TBbfpHy5LSGpECVl7.png', NULL, NULL, NULL, '2022-09-15 07:01:19', '2022-09-15 07:01:19', '', 'courses/September2022/y8Wnfkqr65RjpwtV9q8I.jpg', 'Fullstack proqramlaşdırma kursu MERN', 'Fullstack proqramlaşdırma kursu MERN', 'fullstack-proqramlasdirma-kursu-mern', '5', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '{}', 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'parent_id', 'text', 'Aid Olduğu Kurs', 0, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'name', 'text', 'Kursun Adı', 0, 1, 1, 1, 1, 1, '{}', 3),
(26, 4, 'short_description', 'text', 'Qısa Təsvir', 0, 0, 1, 1, 1, 1, '{}', 4),
(27, 4, 'month', 'number', 'Aylar', 0, 0, 1, 1, 1, 1, '{}', 5),
(28, 4, 'online_price', 'number', 'Online Qiymət', 0, 0, 1, 1, 1, 1, '{}', 6),
(29, 4, 'offline_price', 'number', 'Əyani Qiymət', 0, 0, 1, 1, 1, 1, '{}', 7),
(30, 4, 'discount', 'checkbox', 'Endirim', 0, 0, 1, 1, 1, 1, '{}', 9),
(31, 4, 'image', 'image', 'Şəkil', 0, 0, 1, 1, 1, 1, '{\"max\":40,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allowed\":[],\"quality\":100,\"hide_thumbnails\":false}', 10),
(32, 4, 'meta_title', 'text', 'Meta Title', 0, 0, 1, 1, 1, 1, '{}', 14),
(33, 4, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 15),
(34, 4, 'meta_keyword', 'text', 'Meta Keyword', 0, 0, 1, 1, 1, 1, '{}', 16),
(35, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 18),
(36, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 21),
(37, 4, 'course_belongsto_course_relationship', 'relationship', 'courses', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"courses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 22),
(38, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(39, 6, 'courses_id', 'text', 'Courses Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(40, 6, 'months', 'text', 'Ay', 1, 1, 1, 1, 1, 1, '{}', 3),
(41, 6, 'program', 'rich_text_box', 'Dərs Proqramı', 1, 0, 1, 1, 1, 1, '{}', 4),
(42, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(43, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(44, 6, 'program_belongsto_course_relationship', 'relationship', 'courses', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Courses\",\"table\":\"courses\",\"type\":\"belongsTo\",\"column\":\"courses_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"courses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(46, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(47, 7, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 2),
(48, 7, 'attribute', 'text', 'Attribute', 1, 1, 1, 1, 1, 1, '{}', 3),
(49, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(50, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(51, 4, 'seo_description', 'rich_text_box', 'Seo Description', 1, 0, 1, 1, 1, 1, '{}', 17),
(52, 4, 'thumbnail', 'image', 'Thumbnail', 1, 1, 1, 1, 1, 1, '{}', 12),
(53, 4, 'image_attribute', 'text', 'Image Attribute', 1, 0, 1, 1, 1, 1, '{}', 11),
(54, 4, 'thumbnail_attribute', 'text', 'Thumbnail Attribute', 1, 0, 1, 1, 1, 1, '{}', 13),
(55, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(56, 9, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(57, 9, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(58, 9, 'phone', 'text', 'Phone', 1, 1, 1, 1, 1, 1, '{}', 4),
(60, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(61, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(63, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(64, 11, 'seo_description', 'rich_text_box', 'Seo Description', 1, 1, 1, 1, 1, 1, '{}', 2),
(65, 11, 'page', 'text', 'Page', 1, 1, 1, 1, 1, 1, '{}', 3),
(66, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(67, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(69, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(70, 12, 'dersler', 'text', 'Dərslər', 0, 1, 1, 1, 1, 1, '{}', 2),
(71, 12, 'courses_id', 'text', 'Kurs id', 0, 1, 1, 1, 1, 1, '{}', 3),
(72, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(73, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(74, 12, 'dersler_belongsto_course_relationship', 'relationship', 'courses', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Courses\",\"table\":\"courses\",\"type\":\"belongsTo\",\"column\":\"courses_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"courses\",\"pivot\":\"0\",\"taggable\":null}', 6),
(75, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(76, 13, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(77, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(78, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(79, 9, 'courses_id2', 'text', 'Courses Id2', 0, 1, 1, 1, 1, 1, '{}', 6),
(80, 9, 'courses_id3', 'text', 'Courses Id3', 0, 1, 1, 1, 1, 1, '{}', 8),
(81, 4, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 19),
(82, 4, 'endirim', 'text', 'Endirim', 0, 1, 1, 1, 1, 1, '{}', 8),
(83, 4, 'show_page', 'checkbox', 'Show Page', 0, 1, 1, 1, 1, 1, '{}', 20);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2022-06-07 01:44:27', '2022-06-07 01:44:27'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-06-07 01:44:27', '2022-06-07 01:44:27'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerBaseController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-06-07 01:44:27', '2022-07-06 04:26:04'),
(4, 'courses', 'courses', 'Course', 'Courses', NULL, 'App\\Models\\Courses', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-06-07 02:40:53', '2022-09-05 03:30:15'),
(6, 'programs', 'programs', 'Program', 'Programs', NULL, 'App\\Models\\Programs', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-06-08 07:26:43', '2022-06-08 07:29:54'),
(7, 'galleries', 'galleries', 'Gallery', 'Galleries', NULL, 'App\\Models\\Gallery', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-06-09 01:16:02', '2022-06-09 01:16:02'),
(9, 'sending_mails', 'sending-mails', 'Sending Mail', 'Sending Mails', NULL, 'App\\Models\\SendingMail', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-06-09 02:38:41', '2022-06-16 04:19:43'),
(11, 'seos', 'seos', 'Seo', 'Seos', NULL, 'App\\Models\\Seo', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-06-09 03:27:10', '2022-06-16 04:20:57'),
(12, 'derslers', 'derslers', 'Dersler', 'Derslers', NULL, 'App\\Dersler', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-06-13 01:53:12', '2022-06-13 01:53:12'),
(13, 'categories', 'categories', 'Category', 'Categories', NULL, 'App\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-06-13 07:33:49', '2022-06-13 07:33:49');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `derslers`
--

CREATE TABLE `derslers` (
  `id` int(10) UNSIGNED NOT NULL,
  `dersler` mediumtext COLLATE utf8mb4_unicode_ci,
  `courses_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `derslers`
--

INSERT INTO `derslers` (`id`, `dersler`, `courses_id`, `created_at`, `updated_at`) VALUES
(23, '\"HTML\"', '3', '2022-06-14 02:25:44', '2022-06-14 02:25:44'),
(24, '\"CSS\"', '3', '2022-06-14 02:25:57', '2022-06-14 02:25:57'),
(25, '\"SASS\"', '3', '2022-06-14 02:26:12', '2022-06-14 02:26:12'),
(26, '\"Bootstrap\"', '3', '2022-06-14 02:26:33', '2022-06-14 02:26:33'),
(27, '\"Javascript\"', '3', '2022-06-14 02:27:02', '2022-06-14 02:27:02'),
(29, '\"TypeScript\"', '3', '2022-06-14 02:27:23', '2022-06-14 02:27:23'),
(30, '\"React.JS\"', '3', '2022-06-14 02:27:32', '2022-06-14 02:27:32'),
(51, '\"Internetworking\"', '8', '2022-06-14 02:40:55', '2022-06-14 02:40:55'),
(52, '\"OSI & TCP & IP\"', '8', '2022-06-14 02:41:14', '2022-06-14 02:41:14'),
(53, '\"Ethernet\"', '8', '2022-06-14 02:41:24', '2022-06-14 02:41:24'),
(54, '\"Cisco IOS\"', '8', '2022-06-14 02:41:36', '2022-06-14 02:41:36'),
(55, '\"IP\"', '8', '2022-06-14 02:41:00', '2022-08-16 10:18:13'),
(56, '\"Static Routing & Switch Interfaces\"', '8', '2022-06-14 02:42:00', '2022-06-14 02:42:00'),
(57, '\"Subnnetting\"', '8', '2022-06-14 02:42:00', '2022-08-16 10:18:20'),
(58, '\"Vlan\"', '8', '2022-06-14 02:42:42', '2022-06-14 02:42:42'),
(59, '\"Dynamic Routing\"', '8', '2022-06-14 02:46:37', '2022-06-14 02:46:37'),
(60, '\"RIP & EIGRP\"', '8', '2022-06-14 02:46:49', '2022-06-14 02:46:49'),
(61, '\"OSPF\"', '8', '2022-06-14 02:47:06', '2022-06-14 02:47:06'),
(62, '\"IPv6\"', '8', '2022-06-14 02:47:18', '2022-06-14 02:47:18'),
(63, '\"TCP & UDP\"', '8', '2022-06-14 02:47:30', '2022-06-14 02:47:30'),
(64, '\"FHRP\"', '8', '2022-06-14 02:48:25', '2022-06-14 02:48:25'),
(65, '\"ACL\"', '8', '2022-06-14 02:48:35', '2022-06-14 02:48:35'),
(66, '\"CDP & LLDP\"', '8', '2022-06-14 02:50:27', '2022-06-14 02:50:27'),
(67, '\"NTP & SNMP\"', '8', '2022-06-14 02:50:42', '2022-06-14 02:50:42'),
(68, '\"DNS & DHCP\"', '8', '2022-06-14 02:50:53', '2022-06-14 02:50:53'),
(69, '\"SSH & TELNET\"', '8', '2022-06-14 02:51:04', '2022-06-14 02:51:04'),
(70, '\"FTP & TFTP\"', '8', '2022-06-14 02:51:14', '2022-06-14 02:51:14'),
(71, '\"NAT\"', '8', '2022-06-14 02:51:25', '2022-06-14 02:51:25'),
(72, '\"QOS\"', '8', '2022-06-14 02:51:36', '2022-06-14 02:51:36'),
(73, '\"Security\"', '8', '2022-06-14 02:51:50', '2022-06-14 02:51:50'),
(74, '\"LAN & WAN Virtualization\"', '8', '2022-06-14 02:52:01', '2022-06-14 02:52:01'),
(75, '\"Wireless Networks\"', '8', '2022-06-14 02:52:13', '2022-06-14 02:52:13'),
(76, '\"Network Automation\"', '8', '2022-06-14 02:52:24', '2022-06-14 02:52:24'),
(97, '\"Ajax\"', '3', '2022-07-07 05:14:11', '2022-07-07 05:14:11'),
(98, '\"Axios\"', '3', '2022-07-07 05:14:22', '2022-07-07 05:14:22'),
(99, '\"Git\"', '3', '2022-07-07 05:14:30', '2022-07-07 05:14:30'),
(103, '\"JavaScript\"', '4', '2022-08-16 10:13:25', '2022-08-16 10:13:25'),
(104, '\"Typescript\"', '4', '2022-08-16 10:13:34', '2022-08-16 10:13:34'),
(105, '\"Ajax\"', '4', '2022-08-16 10:13:46', '2022-08-16 10:13:46'),
(106, '\"Axios\"', '4', '2022-08-16 10:13:52', '2022-08-16 10:13:52'),
(107, '\"Node.js\"', '4', '2022-08-16 10:13:59', '2022-08-16 10:13:59'),
(108, '\"MongoDB\"', '4', '2022-08-16 10:14:07', '2022-08-16 10:14:07'),
(109, '\"Rest API\"', '4', '2022-08-16 10:14:13', '2022-08-16 10:14:13'),
(110, '\"Express.js\"', '4', '2022-08-16 10:14:20', '2022-08-16 10:14:20'),
(111, '\"JWT authentication\"', '4', '2022-08-16 10:14:28', '2022-08-16 10:14:28'),
(112, '\"GraphQL\"', '4', '2022-08-16 10:14:35', '2022-08-16 10:14:35'),
(113, '\"AWS\"', '4', '2022-08-16 10:14:41', '2022-08-16 10:14:41'),
(114, '\"Docker\"', '4', '2022-08-16 10:14:48', '2022-08-16 10:14:48'),
(116, '\"Unity\"', '20', '2022-08-25 04:13:46', '2022-08-25 04:13:46'),
(117, '\"C# (C-Sharp)\"', '20', '2022-09-01 07:07:09', '2022-09-01 07:07:09'),
(118, '\"Blender 3D\"', '20', '2022-09-01 07:07:28', '2022-09-01 07:07:28'),
(119, '\"Html\"', '21', '2022-09-15 07:07:12', '2022-09-15 07:07:12'),
(120, '\"Css\"', '21', '2022-09-15 07:07:22', '2022-09-15 07:07:22'),
(121, '\"Bootstrap 5\"', '21', '2022-09-15 07:07:31', '2022-09-15 07:07:31'),
(122, '\"Git\"', '21', '2022-09-15 07:07:42', '2022-09-15 07:07:42'),
(123, '\"JavaScript \"', '21', '2022-09-15 07:07:54', '2022-09-15 07:07:54'),
(124, '\"React.JS\"', '21', '2022-09-15 07:08:04', '2022-09-15 07:08:04'),
(125, '\"Mongo DB\"', '21', '2022-09-15 07:08:13', '2022-09-15 07:08:13'),
(126, '\"Node.js \"', '21', '2022-09-15 07:08:24', '2022-09-15 07:08:24'),
(127, '\"Express.JS\"', '21', '2022-09-15 07:08:33', '2022-09-15 07:08:33');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `galleries`
--

INSERT INTO `galleries` (`id`, `image`, `attribute`, `created_at`, `updated_at`) VALUES
(3, 'galleries/September2022/LaYKG5GHVlOZryX7x2kD.webp', 'bakida proqramlasdirma kurslari', '2022-06-14 02:49:00', '2022-09-15 06:52:09'),
(4, 'galleries/September2022/2D6XZLfOiVV2cQDRCKeY.webp', 'programlasdirma kurslari', '2022-06-14 02:49:00', '2022-09-15 06:52:57'),
(5, 'galleries/September2022/gqHRf5hdrE4wuMezTD32.webp', 'proqramlaşdırma kursları ', '2022-06-14 02:49:00', '2022-09-15 06:52:43'),
(7, 'galleries/July2022/MFJ6WJzYcCVJHpaPy7wi.jpg', 'proqramlaşdırma kursları ', '2022-06-14 06:56:00', '2022-07-20 10:41:51'),
(9, 'galleries/July2022/eNM71FUyJYwZEfI7xeFt.jpg', 'proqramlaşdırma', '2022-06-14 06:56:00', '2022-07-20 10:42:56'),
(10, 'galleries/September2022/mjDXz6hdEuwrKR3ogZuX.webp', 'bakida proqramlasdirma kurslari', '2022-06-14 06:57:00', '2022-09-15 06:51:33'),
(11, 'galleries/September2022/Zbjo6W70rTtRhTycbDgD.webp', 'proqramlaşdırma', '2022-06-14 06:57:00', '2022-09-15 06:53:23'),
(12, 'galleries/July2022/dS97IpddI1mk6GbNkA8v.jpg', 'proqramlaşdırma kursları ', '2022-06-14 06:57:00', '2022-07-20 10:42:39'),
(13, 'galleries/September2022/W6xnhZ9OYodZ1lwEwBrm.webp', 'proqramlaşdırma kursları', '2022-07-06 03:13:00', '2022-09-15 06:50:53'),
(14, 'galleries/September2022/ItGB2PODaFlY5LG8uh6N.webp', 'it kursları', '2022-07-14 09:55:00', '2022-09-15 06:53:44');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-06-07 01:44:27', '2022-06-07 01:44:27');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2022-06-07 01:44:27', '2022-06-07 01:44:27', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2022-06-07 01:44:27', '2022-06-07 01:44:27', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2022-06-07 01:44:27', '2022-06-07 01:44:27', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2022-06-07 01:44:27', '2022-06-07 01:44:27', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2022-06-07 01:44:27', '2022-06-07 01:44:27', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2022-06-07 01:44:27', '2022-06-07 01:44:27', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2022-06-07 01:44:27', '2022-06-07 01:44:27', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2022-06-07 01:44:27', '2022-06-07 01:44:27', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2022-06-07 01:44:27', '2022-06-07 01:44:27', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2022-06-07 01:44:27', '2022-06-07 01:44:27', 'voyager.settings.index', NULL),
(11, 1, 'Courses', '', '_self', NULL, NULL, NULL, 15, '2022-06-07 02:40:53', '2022-06-07 02:40:53', 'voyager.courses.index', NULL),
(12, 1, 'Programs', '', '_self', NULL, NULL, NULL, 16, '2022-06-08 07:26:43', '2022-06-08 07:26:43', 'voyager.programs.index', NULL),
(13, 1, 'Galleries', '', '_self', NULL, NULL, NULL, 17, '2022-06-09 01:16:02', '2022-06-09 01:16:02', 'voyager.galleries.index', NULL),
(14, 1, 'Sending Mails', '', '_self', NULL, NULL, NULL, 18, '2022-06-09 02:38:41', '2022-06-09 02:38:41', 'voyager.sending-mails.index', NULL),
(15, 1, 'Seos', '', '_self', NULL, NULL, NULL, 19, '2022-06-09 03:27:10', '2022-06-09 03:27:10', 'voyager.seos.index', NULL),
(16, 1, 'Derslers', '', '_self', NULL, NULL, NULL, 20, '2022-06-13 01:53:12', '2022-06-13 01:53:12', 'voyager.derslers.index', NULL),
(17, 1, 'Categories', '', '_self', NULL, NULL, NULL, 21, '2022-06-13 07:33:49', '2022-06-13 07:33:49', 'voyager.categories.index', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2016_01_01_000000_add_voyager_user_fields', 2),
(11, '2016_01_01_000000_create_data_types_table', 2),
(12, '2016_05_19_173453_create_menu_table', 2),
(13, '2016_10_21_190000_create_roles_table', 2),
(14, '2016_10_21_190000_create_settings_table', 2),
(15, '2016_11_30_135954_create_permission_table', 2),
(16, '2016_11_30_141208_create_permission_role_table', 2),
(17, '2016_12_26_201236_data_types__add__server_side', 2),
(18, '2017_01_13_000000_add_route_to_menu_items_table', 2),
(19, '2017_01_14_005015_create_translations_table', 2),
(20, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 2),
(21, '2017_03_06_000000_add_controller_to_data_types_table', 2),
(22, '2017_04_21_000000_add_order_to_data_rows_table', 2),
(23, '2017_07_05_210000_add_policyname_to_data_types_table', 2),
(24, '2017_08_05_000000_add_group_to_settings_table', 2),
(25, '2017_11_26_013050_add_user_role_relationship', 2),
(26, '2017_11_26_015000_create_user_roles_table', 2),
(27, '2018_03_11_000000_add_user_settings', 2),
(28, '2018_03_14_000000_add_details_to_data_types_table', 2),
(29, '2018_03_16_000000_make_settings_value_nullable', 2),
(30, '2022_06_07_063416_create_courses_table', 3),
(31, '2022_06_08_112403_create_programs_table', 4),
(32, '2022_06_09_045138_add_column_to_courses_table', 5),
(33, '2022_06_09_051026_create_galleries_table', 6),
(34, '2022_06_09_062753_add_column_to_courses_table', 7),
(35, '2022_06_09_063524_create_sending_mails_table', 8),
(36, '2022_06_09_072122_create_seos_table', 9),
(37, '2022_06_09_073105_add_column_tesvir_to_courses_table', 10);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('e37b7aa8bef2c8fbf2fd2e1e71585c302a98f719f0c585e824a1949330d1f0e227b6f6e8d940d618', 1, 1, 'personal_access_token', '[]', 0, '2022-06-06 06:37:56', '2022-06-06 06:37:56', '2022-06-06 20:37:56');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'yZK6wN8Nntoe6GIin3bUeNYaZN4PXa8uPZLyeDfF', NULL, 'http://localhost', 1, 0, 0, '2022-06-06 06:10:33', '2022-06-06 06:10:33'),
(2, NULL, 'Laravel Password Grant Client', 'CIvB1Owxv3LtF8XuhD7aXuHKk9EIpKdSW5vvjTyX', 'users', 'http://localhost', 0, 1, 0, '2022-06-06 06:10:33', '2022-06-06 06:10:33');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-06-06 06:10:33', '2022-06-06 06:10:33');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-06-07 01:44:27', '2022-06-07 01:44:27'),
(2, 'browse_bread', NULL, '2022-06-07 01:44:27', '2022-06-07 01:44:27'),
(3, 'browse_database', NULL, '2022-06-07 01:44:27', '2022-06-07 01:44:27'),
(4, 'browse_media', NULL, '2022-06-07 01:44:27', '2022-06-07 01:44:27'),
(5, 'browse_compass', NULL, '2022-06-07 01:44:27', '2022-06-07 01:44:27'),
(6, 'browse_menus', 'menus', '2022-06-07 01:44:27', '2022-06-07 01:44:27'),
(7, 'read_menus', 'menus', '2022-06-07 01:44:27', '2022-06-07 01:44:27'),
(8, 'edit_menus', 'menus', '2022-06-07 01:44:27', '2022-06-07 01:44:27'),
(9, 'add_menus', 'menus', '2022-06-07 01:44:27', '2022-06-07 01:44:27'),
(10, 'delete_menus', 'menus', '2022-06-07 01:44:27', '2022-06-07 01:44:27'),
(11, 'browse_roles', 'roles', '2022-06-07 01:44:27', '2022-06-07 01:44:27'),
(12, 'read_roles', 'roles', '2022-06-07 01:44:27', '2022-06-07 01:44:27'),
(13, 'edit_roles', 'roles', '2022-06-07 01:44:27', '2022-06-07 01:44:27'),
(14, 'add_roles', 'roles', '2022-06-07 01:44:27', '2022-06-07 01:44:27'),
(15, 'delete_roles', 'roles', '2022-06-07 01:44:27', '2022-06-07 01:44:27'),
(16, 'browse_users', 'users', '2022-06-07 01:44:27', '2022-06-07 01:44:27'),
(17, 'read_users', 'users', '2022-06-07 01:44:27', '2022-06-07 01:44:27'),
(18, 'edit_users', 'users', '2022-06-07 01:44:27', '2022-06-07 01:44:27'),
(19, 'add_users', 'users', '2022-06-07 01:44:27', '2022-06-07 01:44:27'),
(20, 'delete_users', 'users', '2022-06-07 01:44:27', '2022-06-07 01:44:27'),
(21, 'browse_settings', 'settings', '2022-06-07 01:44:27', '2022-06-07 01:44:27'),
(22, 'read_settings', 'settings', '2022-06-07 01:44:27', '2022-06-07 01:44:27'),
(23, 'edit_settings', 'settings', '2022-06-07 01:44:27', '2022-06-07 01:44:27'),
(24, 'add_settings', 'settings', '2022-06-07 01:44:27', '2022-06-07 01:44:27'),
(25, 'delete_settings', 'settings', '2022-06-07 01:44:27', '2022-06-07 01:44:27'),
(26, 'browse_courses', 'courses', '2022-06-07 02:40:53', '2022-06-07 02:40:53'),
(27, 'read_courses', 'courses', '2022-06-07 02:40:53', '2022-06-07 02:40:53'),
(28, 'edit_courses', 'courses', '2022-06-07 02:40:53', '2022-06-07 02:40:53'),
(29, 'add_courses', 'courses', '2022-06-07 02:40:53', '2022-06-07 02:40:53'),
(30, 'delete_courses', 'courses', '2022-06-07 02:40:53', '2022-06-07 02:40:53'),
(31, 'browse_programs', 'programs', '2022-06-08 07:26:43', '2022-06-08 07:26:43'),
(32, 'read_programs', 'programs', '2022-06-08 07:26:43', '2022-06-08 07:26:43'),
(33, 'edit_programs', 'programs', '2022-06-08 07:26:43', '2022-06-08 07:26:43'),
(34, 'add_programs', 'programs', '2022-06-08 07:26:43', '2022-06-08 07:26:43'),
(35, 'delete_programs', 'programs', '2022-06-08 07:26:43', '2022-06-08 07:26:43'),
(36, 'browse_galleries', 'galleries', '2022-06-09 01:16:02', '2022-06-09 01:16:02'),
(37, 'read_galleries', 'galleries', '2022-06-09 01:16:02', '2022-06-09 01:16:02'),
(38, 'edit_galleries', 'galleries', '2022-06-09 01:16:02', '2022-06-09 01:16:02'),
(39, 'add_galleries', 'galleries', '2022-06-09 01:16:02', '2022-06-09 01:16:02'),
(40, 'delete_galleries', 'galleries', '2022-06-09 01:16:02', '2022-06-09 01:16:02'),
(41, 'browse_sending_mails', 'sending_mails', '2022-06-09 02:38:41', '2022-06-09 02:38:41'),
(42, 'read_sending_mails', 'sending_mails', '2022-06-09 02:38:41', '2022-06-09 02:38:41'),
(43, 'edit_sending_mails', 'sending_mails', '2022-06-09 02:38:41', '2022-06-09 02:38:41'),
(44, 'add_sending_mails', 'sending_mails', '2022-06-09 02:38:41', '2022-06-09 02:38:41'),
(45, 'delete_sending_mails', 'sending_mails', '2022-06-09 02:38:41', '2022-06-09 02:38:41'),
(46, 'browse_seos', 'seos', '2022-06-09 03:27:10', '2022-06-09 03:27:10'),
(47, 'read_seos', 'seos', '2022-06-09 03:27:10', '2022-06-09 03:27:10'),
(48, 'edit_seos', 'seos', '2022-06-09 03:27:10', '2022-06-09 03:27:10'),
(49, 'add_seos', 'seos', '2022-06-09 03:27:10', '2022-06-09 03:27:10'),
(50, 'delete_seos', 'seos', '2022-06-09 03:27:10', '2022-06-09 03:27:10'),
(51, 'browse_derslers', 'derslers', '2022-06-13 01:53:12', '2022-06-13 01:53:12'),
(52, 'read_derslers', 'derslers', '2022-06-13 01:53:12', '2022-06-13 01:53:12'),
(53, 'edit_derslers', 'derslers', '2022-06-13 01:53:12', '2022-06-13 01:53:12'),
(54, 'add_derslers', 'derslers', '2022-06-13 01:53:12', '2022-06-13 01:53:12'),
(55, 'delete_derslers', 'derslers', '2022-06-13 01:53:12', '2022-06-13 01:53:12'),
(56, 'browse_categories', 'categories', '2022-06-13 07:33:49', '2022-06-13 07:33:49'),
(57, 'read_categories', 'categories', '2022-06-13 07:33:49', '2022-06-13 07:33:49'),
(58, 'edit_categories', 'categories', '2022-06-13 07:33:49', '2022-06-13 07:33:49'),
(59, 'add_categories', 'categories', '2022-06-13 07:33:49', '2022-06-13 07:33:49'),
(60, 'delete_categories', 'categories', '2022-06-13 07:33:49', '2022-06-13 07:33:49');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'personal_access_token', '1274c2b5289ece7d677b7ecead83dc16b1a9d9a3a953b32a3bf0e5b2c9ea24f8', '[\"*\"]', NULL, '2022-06-06 06:26:24', '2022-06-06 06:26:24'),
(2, 'App\\Models\\User', 1, 'personal_access_token', 'c4a0ef0f13b17aa72e324aaa3d517e002c51130f83ca488b201181ef8a535490', '[\"*\"]', NULL, '2022-06-06 06:26:33', '2022-06-06 06:26:33'),
(3, 'App\\Models\\User', 1, 'personal_access_token', '492791829d87b903aa933f32231b3c0351869ff14e5a29bed346b5b9c96e346e', '[\"*\"]', NULL, '2022-06-06 06:27:45', '2022-06-06 06:27:45'),
(4, 'App\\Models\\User', 1, 'personal_access_token', '896b3028f7405aab4a61ed3bd6928aad360e9461858041ab72fefc0a20d9cc9c', '[\"*\"]', NULL, '2022-06-06 06:29:33', '2022-06-06 06:29:33'),
(5, 'App\\Models\\User', 1, 'personal_access_token', '2f7f58db5980df99fe20a809bcdcf16dd1aed06b52f883297a54ee669d933bc2', '[\"*\"]', NULL, '2022-06-06 06:31:47', '2022-06-06 06:31:47'),
(6, 'App\\Models\\User', 1, 'personal_access_token', 'be415b04d1400a83c031eb274eca40d43f6318eec6e2a38b8815d402591dea78', '[\"*\"]', NULL, '2022-06-06 06:34:29', '2022-06-06 06:34:29');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `programs`
--

CREATE TABLE `programs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `courses_id` int(11) DEFAULT NULL,
  `months` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `program` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `programs`
--

INSERT INTO `programs` (`id`, `courses_id`, `months`, `program`, `created_at`, `updated_at`) VALUES
(1, NULL, '1-ci Ay', '\"<ul>\\n<li>\\n<p>Front-end basics. IDE. Emmet, Html5-CSS3 basics<\\/p>\\n<\\/li>\\n<li>\\n<p>HTML forms<\\/p>\\n<\\/li>\\n<li>\\n<p>Flexbox<\\/p>\\n<\\/li>\\n<li>\\n<p>Grid Layout<\\/p>\\n<\\/li>\\n<li>\\n<p>GIT<\\/p>\\n<\\/li>\\n<li>\\n<p>CSS preprocessors. SASS<\\/p>\\n<\\/li>\\n<li>\\n<p>Adaptive and responsive, cross-browser<\\/p>\\n<\\/li>\\n<li>\\n<p>Bootstrap 5<\\/p>\\n<\\/li>\\n<\\/ul>\"', '2022-06-08 07:28:00', '2022-08-17 02:02:41'),
(2, NULL, '2-ci Ay', '\"<ul>\\n<li>\\n<p>Introduction to programming. JavaScript basics. ES6 features<\\/p>\\n<\\/li>\\n<li>\\n<p>Data types, primitives, type casting<\\/p>\\n<\\/li>\\n<li>\\n<p>Operators, logical operators, switch<\\/p>\\n<\\/li>\\n<li>\\n<p>Loops<\\/p>\\n<\\/li>\\n<li>\\n<p>Functions, scope, debug<\\/p>\\n<\\/li>\\n<li>\\n<p>Objects. Arrays, Set, Map<\\/p>\\n<\\/li>\\n<li>\\n<p>Working with DOM<\\/p>\\n<\\/li>\\n<\\/ul>\"', '2022-06-08 07:40:00', '2022-08-17 02:02:26'),
(3, 5, '3-cü ay', '\"<ul>\\n<li>\\n<p>Garbage collection, Exception handling<\\/p>\\n<\\/li>\\n<li>\\n<p>OOP in JS. Propotypes. Inheritance. Native prototypes. Classes<\\/p>\\n<\\/li>\\n<li>\\n<p>JSON format. AJAX. XHR<\\/p>\\n<\\/li>\\n<li>\\n<p>Cookies, fetch, axios, Promises, async-await<\\/p>\\n<\\/li>\\n<li>\\n<p>JOverview of Js frameworks. React.JS. JSX. Virtual DOM<\\/p>\\n<\\/li>\\n<li>\\n<p>React Component. Functional and Class components<\\/p>\\n<\\/li>\\n<li>\\n<p>React hooks. React Forms<\\/p>\\n<\\/li>\\n<\\/ul>\"', '2022-06-13 06:08:00', '2022-06-13 06:12:28'),
(4, 5, '4-cü ay', '\"<ul>\\n<li>\\n<p>State management. Context-Api<\\/p>\\n<\\/li>\\n<li>\\n<p>Flux architecture<\\/p>\\n<\\/li>\\n<li>\\n<p>Redux<\\/p>\\n<\\/li>\\n<li>\\n<p>Middlewares, fetching data from server, async actions with redux-thunk<\\/p>\\n<\\/li>\\n<li>\\n<p>Using api call in react. Fetch. Axios<\\/p>\\n<\\/li>\\n<li>\\n<p>Unit tests<\\/p>\\n<\\/li>\\n<\\/ul>\"', '2022-06-13 06:10:00', '2022-06-13 06:12:34'),
(5, 5, '5-ci ay', '\"<ul>\\n<li>\\n<p>Introduction to .Net languages. CLR. Intermediate language. Compiling process<\\/p>\\n<\\/li>\\n<li>\\n<p>Overview of C#, Literals, Variables. Data Types<\\/p>\\n<\\/li>\\n<li>\\n<p>Operators, checked and unchecked operators, Expressions, Functions<\\/p>\\n<\\/li>\\n<li>\\n<p>Class, Objects, Constructors, Inheritance, Properties<\\/p>\\n<\\/li>\\n<li>\\n<p>Encapsulation, Polymorphism, Interface, abstract class<\\/p>\\n<\\/li>\\n<li>\\n<p>Arrays, Array Class, Array List, Structure, Enumerations<\\/p>\\n<\\/li>\\n<\\/ul>\"', '2022-06-13 06:10:00', '2022-06-13 06:12:42'),
(6, 5, '6-cı ay', '\"<ul>\\n<li>\\n<p>Delegates, events, errors and Exception class<\\/p>\\n<\\/li>\\n<li>\\n<p>Introducing Collections. Benefits of Collection Classes<\\/p>\\n<\\/li>\\n<li>\\n<p>Understanding and using commonly used collections<\\/p>\\n<\\/li>\\n<li>\\n<p>What is a streams? Types of Stream<\\/p>\\n<\\/li>\\n<li>\\n<p>Generics. Advantages of Generics<\\/p>\\n<\\/li>\\n<\\/ul>\"', '2022-06-13 06:12:11', '2022-06-13 06:12:11'),
(7, 5, '7-ci ay', '\"<ul>\\n<li>\\n<p>Intro to Databases &amp; SQL<\\/p>\\n<\\/li>\\n<li>\\n<p>Basics of SQL Types of SQL Statements. DDL, DML, DQL, DCL and TCL<\\/p>\\n<\\/li>\\n<li>\\n<p>Create\\/Alter\\/Delete DB. Constraints<\\/p>\\n<\\/li>\\n<li>\\n<p>Data Query Language (DQL). Select. Where clause<\\/p>\\n<\\/li>\\n<li>\\n<p>Introduction To TSQL. Transaction Management<\\/p>\\n<\\/li>\\n<\\/ul>\"', '2022-06-13 06:13:26', '2022-06-13 06:13:26'),
(8, 5, '8-ci ay', '\"<ul>\\n<li>\\n<p>Introduction to ASP.NET \\/ ASP.NET Core Application<\\/p>\\n<\\/li>\\n<li>\\n<p>Introduction to Web APIs<\\/p>\\n<\\/li>\\n<li>\\n<p>Project Configuration. ASP.NET Core Middleware<\\/p>\\n<\\/li>\\n<li>\\n<p>Onion Architecture. Models. Context Class.<\\/p>\\n<\\/li>\\n<li>\\n<p>Handling \\/post requests. Creating resources. Model binding<\\/p>\\n<\\/li>\\n<\\/ul>\"', '2022-06-13 06:14:00', '2022-06-13 06:14:00'),
(9, 5, '9-cu ay', '\"<ul>\\n<li>Paging. Filtering. Searching. Differences between filtering and searching. Sorting<\\/li>\\n<li>Hypermedia as the Engine of Application State<\\/li>\\n<li>Working with options and head requests. Caching<\\/li>\\n<li>Implementing authentication. Role-based authorization<\\/li>\\n<li>Documenting Api with Swagger<\\/li>\\n<\\/ul>\"', '2022-06-13 06:14:27', '2022-06-13 06:14:27'),
(10, 3, '1-ci ay', '\"<ul>\\n<li>\\n<p>Web Proqramla\\u015fd\\u0131rman\\u0131n \\u018fsaslar\\u0131<\\/p>\\n<\\/li>\\n<li>\\n<p>HTML il\\u0259 tan\\u0131\\u015fl\\u0131q<\\/p>\\n<\\/li>\\n<li>\\n<p>HTML Bestpraktisl\\u0259ri<\\/p>\\n<\\/li>\\n<li>\\n<p>HTML Form<\\/p>\\n<\\/li>\\n<li>\\n<p>HTML Table<\\/p>\\n<\\/li>\\n<li>\\n<p>CSS il\\u0259 tan\\u0131\\u015fl\\u0131q<\\/p>\\n<\\/li>\\n<li>\\n<p>CSS Flexbox<\\/p>\\n<\\/li>\\n<li>\\n<p>CSS Grid<\\/p>\\n<\\/li>\\n<\\/ul>\"', '2022-06-13 06:16:12', '2022-06-13 06:16:12'),
(11, 3, '2-ci ay', '\"<ul>\\n<li>\\n<p>Animasiyalar v\\u0259 ke&ccedil;idl\\u0259r<\\/p>\\n<\\/li>\\n<li>\\n<p>Responsiv Dizayn<\\/p>\\n<\\/li>\\n<li>\\n<p>SASS<\\/p>\\n<\\/li>\\n<li>\\n<p>Bootstrap, Materialize<\\/p>\\n<\\/li>\\n<li>\\n<p>Github il\\u0259 git in \\u0259saslar\\u0131<\\/p>\\n<\\/li>\\n<li>\\n<p>Vebsayt template-i y\\u0131\\u011fmaq (Flexbox v\\u0259 Animation)<\\/p>\\n<\\/li>\\n<li>\\n<p>Javascript-\\u0259 giri\\u015f<\\/p>\\n<\\/li>\\n<\\/ul>\"', '2022-06-13 06:16:46', '2022-06-13 06:16:46'),
(12, 3, '3-cü ay', '\"<ul>\\n<li>\\n<p>Alqoritmik d&uuml;\\u015f&uuml;nm\\u0259<\\/p>\\n<\\/li>\\n<li>\\n<p>\\u015e\\u0259rtl\\u0259r\\u0259 ba\\u011fl\\u0131 proqramla\\u015fd\\u0131rma<\\/p>\\n<\\/li>\\n<li>\\n<p>Funksiyalar<\\/p>\\n<\\/li>\\n<li>\\n<p>Massivl\\u0259r<\\/p>\\n<\\/li>\\n<li>\\n<p>Obyekt anlay\\u0131\\u015f\\u0131<\\/p>\\n<\\/li>\\n<li>\\n<p>JS funksiyalar\\u0131 v\\u0259 Callback funksiyalar<\\/p>\\n<\\/li>\\n<li>\\n<p>Date and time<\\/p>\\n<\\/li>\\n<li>\\n<p>DOM elementl\\u0259ri v\\u0259 DOM-da i\\u015fl\\u0259m\\u0259k<\\/p>\\n<\\/li>\\n<\\/ul>\"', '2022-06-13 06:17:25', '2022-06-13 06:17:25'),
(13, 3, '4-cü ay', '\"<ul>\\n<li>JSON, AJAX<\\/li>\\n<li>\\n<p>REST AP\\u0130 v\\u0259 Postman<\\/p>\\n<\\/li>\\n<li>\\n<p>JavaScript-il\\u0259 funksional proqramla\\u015fd\\u0131rma<\\/p>\\n<\\/li>\\n<li>\\n<p>React JS, JSX<\\/p>\\n<\\/li>\\n<li>React Router, propTypes<\\/li>\\n<li>\\n<p>Handling events<\\/p>\\n<\\/li>\\n<\\/ul>\"', '2022-06-13 06:18:00', '2022-06-21 08:08:37'),
(14, 3, '5-ci ay', '\"<ul>\\n<li>\\n<p>Lifecycle methods<\\/p>\\n<\\/li>\\n<li>\\n<p>Router, React Hooks<\\/p>\\n<\\/li>\\n<li>\\n<p>Context API<\\/p>\\n<\\/li>\\n<li>\\n<p>Introduction to Redux<\\/p>\\n<\\/li>\\n<li>\\n<p>Reducer Logic<\\/p>\\n<\\/li>\\n<li>\\n<p>Redux basics<\\/p>\\n<\\/li>\\n<li>\\n<p>Introduction to static typed languages. Typescript.&nbsp;<\\/p>\\n<\\/li>\\n<li>React with TS<\\/li>\\n<\\/ul>\"', '2022-06-13 06:18:00', '2022-06-21 08:10:34'),
(15, 4, '1-ci ay', '\"<ul>\\n<li class=\\\"MsoNormal\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Introduction to programming. JavaScript basics.<\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Operators, logical operators, switch. Short circuit. <\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Loops. Nested loops. While. For. <\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Objects. Clone. Deep clone. <\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Working with DOM. Understanding of BOM, DOM. <\\/span><\\/li>\\n<\\/ul>\"', '2022-06-13 06:25:00', '2022-08-16 10:25:17'),
(16, 4, '2-ci ay', '\"<ul>\\n<li class=\\\"MsoNormal\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Working with events. Attaching events to DOM nodes<\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Working with timers, setTimeout and setInterval, localStorage<\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Garbage collection, Exception handling<\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">JSON format. AJAX. XHR.<\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\">\\n<p class=\\\"MsoNormal\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Cookies, fetch, axios, Promises, async-await<\\/span><\\/p>\\n<\\/li>\\n<\\/ul>\"', '2022-06-13 06:25:00', '2022-08-16 10:24:05'),
(17, 4, '3-cü ay', '\"<ul>\\n<li class=\\\"MsoNormal\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Node.js console. REPL. <\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Package managers. <span style=\\\"mso-spacerun: yes;\\\">&nbsp;<\\/span>npm, yarn.<\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Installing Packages Locally and globally. <\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Adding dependency in package.json<\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Updating packages<\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Introduction to static typed languages. Typescript.<\\/span><\\/li>\\n<\\/ul>\"', '2022-06-13 06:26:00', '2022-08-16 10:22:17'),
(18, 4, '4-cü ay', '\"<ul>\\n<li><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Built-in node.js modules.&nbsp;<\\/span><\\/li>\\n<li><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Streams. Pipes.&nbsp;<\\/span><\\/li>\\n<li><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">url module. Working with urls. URL parts.&nbsp;<\\/span><\\/li>\\n<li><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Upload files using node.js. Formidable.&nbsp;&nbsp;<\\/span><\\/li>\\n<li><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Basic routing in node.js.&nbsp;<\\/span><\\/li>\\n<li><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Unit testing using Jest. Integration testing. API testing. <\\/span><\\/li>\\n<\\/ul>\"', '2022-06-13 06:27:00', '2022-08-16 10:19:57'),
(19, 4, '5-ci ay', '\"<ul>\\n<li>\\n<p class=\\\"MsoNormal\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Introduction to DB concepts. SQL. NoSQL. RDBMS.&nbsp;<\\/span><\\/p>\\n<\\/li>\\n<li>\\n<p class=\\\"MsoNormal\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Database. Collection. Table in RDBMS.&nbsp;<\\/span><\\/p>\\n<\\/li>\\n<li>\\n<p><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Calibri\',sans-serif; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Mangal; mso-bidi-theme-font: minor-bidi; color: black; mso-themecolor: text1; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\\\">MongoDB user authentication and role based commands and methods<\\/span><\\/p>\\n<\\/li>\\n<li><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; font-family: \'Calibri\',sans-serif; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Mangal; mso-bidi-theme-font: minor-bidi; color: black; mso-themecolor: text1; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\\\">Aggregation in MongoDB<\\/span><\\/li>\\n<li>\\n<p class=\\\"MsoNormal\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">MongoDB query selectors.&nbsp;<\\/span><\\/p>\\n<\\/li>\\n<li>\\n<p class=\\\"MsoNormal\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Transactions.&nbsp;<\\/span><\\/p>\\n<\\/li>\\n<\\/ul>\"', '2022-06-13 06:28:00', '2022-08-16 10:17:32'),
(20, 4, '6-cı ay', '\"<ul>\\n<li><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Introduction to node.js frameworks. Express.js<\\/span><\\/li>\\n<li><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Handling requests. Creating routes.<\\/span><\\/li>\\n<li><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Writing router-level middleware functions&nbsp;<\\/span><\\/li>\\n<li><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">CRUD operations with Mongoose<\\/span><\\/li>\\n<li><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">GraphQL.&nbsp;<\\/span><span style=\\\"color: #000000; font-size: 16px;\\\">GraphQL in ExpressJS.&nbsp;<\\/span><span style=\\\"color: #000000; font-size: 16px;\\\">GraphQL server<\\/span><\\/li>\\n<li>\\n<p class=\\\"MsoNormal\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Introduction to Containers. Docker. Dockerize express app. <\\/span><\\/p>\\n<\\/li>\\n<\\/ul>\"', '2022-06-13 06:29:00', '2022-08-16 10:15:28'),
(22, 21, '1-ci ay', '\"<ul>\\n<li>\\n<p>Front-end basics<\\/p>\\n<\\/li>\\n<li>\\n<p>Emmet, Html5-CSS3 basics<\\/p>\\n<\\/li>\\n<li>\\n<p>GIT,&nbsp;HTML forms<\\/p>\\n<\\/li>\\n<li>\\n<p>Flexbox, Grid Layout<\\/p>\\n<\\/li>\\n<li>\\n<p>CSS animation, parallax<\\/p>\\n<\\/li>\\n<li>\\n<p>CSS preprocessors. SASS. CSS methodologies. BEM<\\/p>\\n<\\/li>\\n<li>\\n<p>Pixel perfect, Adaptive and responsive, cross-browser<\\/p>\\n<\\/li>\\n<li>\\n<p>Bootstrap 5<\\/p>\\n<\\/li>\\n<\\/ul>\"', '2022-06-13 06:41:00', '2022-09-15 07:05:59'),
(23, 21, '2-ci ay', '\"<ul>\\n<li>\\n<p>Introduction to programming. JavaScript basics<\\/p>\\n<\\/li>\\n<li>\\n<p>Data types, primitives, type casting.&nbsp;<\\/p>\\n<\\/li>\\n<li>\\n<p>Operators, logical operators, switch<\\/p>\\n<\\/li>\\n<li>\\n<p>Loops<\\/p>\\n<\\/li>\\n<li>\\n<p>Functions, scope, debug<\\/p>\\n<\\/li>\\n<li>\\n<p>Objects<\\/p>\\n<\\/li>\\n<li>\\n<p>Arrays, Set, Map<\\/p>\\n<\\/li>\\n<li>\\n<p>Working with DOM.&nbsp;<\\/p>\\n<\\/li>\\n<\\/ul>\"', '2022-06-13 06:42:00', '2022-09-15 07:05:51'),
(24, 21, '3-cü ay', '\"<ul>\\n<li>\\n<p>Working with events. Attaching events to DOM nodes<\\/p>\\n<\\/li>\\n<li>\\n<p>Working with timers, setTimeout and setInterval, localStorage<\\/p>\\n<\\/li>\\n<li>\\n<p>Destructuring, Closures, Garbage collection<\\/p>\\n<\\/li>\\n<li>\\n<p>OOP in JS. Propotypes. Inheritance. Classes.<\\/p>\\n<\\/li>\\n<li>\\n<p>JSON format. AJAX. XHR.&nbsp;<\\/p>\\n<\\/li>\\n<li>\\n<p>Cookies, fetch, axios, Promises, async-await<\\/p>\\n<\\/li>\\n<\\/ul>\"', '2022-06-13 06:43:00', '2022-09-15 07:05:44'),
(25, 21, '4-cü ay', '\"<ul>\\n<li>\\n<p>Introduction to Node.js. V8 engine. window object.<\\/p>\\n<\\/li>\\n<li>\\n<p>Node.js console. REPL.&nbsp;<\\/p>\\n<\\/li>\\n<li>\\n<p>Package managers.&nbsp; npm, yarn.&nbsp;&nbsp;<\\/p>\\n<\\/li>\\n<li>\\n<p>Dependencies.&nbsp; package.json<\\/p>\\n<\\/li>\\n<li>\\n<p>Installing Packages Locally and globally.&nbsp;<\\/p>\\n<\\/li>\\n<li>\\n<p>Adding dependency in package.json<\\/p>\\n<\\/li>\\n<li>\\n<p>Updating packages<\\/p>\\n<\\/li>\\n<\\/ul>\"', '2022-06-13 06:44:00', '2022-09-15 07:05:26'),
(26, 21, '5-ci ay', '\"<ul>\\n<li>Overview of Js frameworks. Angular. Angular.js. Vue js. Differences between them. React.JS&nbsp;<\\/li>\\n<li>Creating nested components, DOM references<\\/li>\\n<li>React Router, propTypes, defaultProps<\\/li>\\n<li>State management. Context-Api<\\/li>\\n<li>Redux basics<\\/li>\\n<li>Firebase<\\/li>\\n<\\/ul>\"', '2022-06-13 06:45:00', '2022-09-15 07:05:09'),
(27, 21, '6-cı ay', '\"<ul>\\n<li>\\n<p>Middlewares, fetching data from server, async actions with redux-saga<\\/p>\\n<\\/li>\\n<li>\\n<p>Working with forms. Redux forms<\\/p>\\n<\\/li>\\n<li>\\n<p>Testing React components<\\/p>\\n<\\/li>\\n<li>\\n<p>React hooks. React architecture example project. EsLint, prettier and such technologies<\\/p>\\n<\\/li>\\n<li>\\n<p>Introduction to static typed languages. Typescript. React with TS.<\\/p>\\n<\\/li>\\n<\\/ul>\"', '2022-06-13 06:45:00', '2022-09-15 07:05:18'),
(28, 21, '7-ci ay', '\"<ul>\\n<li>Using node.js at back-side. Nodemon.&nbsp;<\\/li>\\n<li>Buffer, Module.&nbsp; Core modules.<\\/li>\\n<li>File System. fs module. I\\/O operations on files.<\\/li>\\n<li>Working with urls.<\\/li>\\n<li>Creating Web Server. Handling HTTP requests. Events in node.js.<\\/li>\\n<li>EventEmitter object. Upload files using node.js.&nbsp;<\\/li>\\n<li>Unit testing using Jest.&nbsp;<\\/li>\\n<\\/ul>\"', '2022-06-13 06:46:00', '2022-09-15 07:05:01'),
(29, 21, '8-ci ay', '\"<ul>\\n<li>Installation of MongoDB. Database. Collection.&nbsp;<\\/li>\\n<li>Introduction to MongoDB Shell. MongoDB clients.<\\/li>\\n<li>Managing and administering MongoDB.<\\/li>\\n<li>MongoDB user authentication and role based commands<\\/li>\\n<li>MongoDB shell methods. connection, database<\\/li>\\n<li>Introduction to MongoDB CRUD Operations.<\\/li>\\n<\\/ul>\"', '2022-06-13 06:48:00', '2022-09-15 07:04:53'),
(30, 21, '9-cu ay', '\"<ul>\\n<li>Introduction to node.js frameworks. Express.js.<\\/li>\\n<li>Express route params. Middleware static files.&nbsp;<\\/li>\\n<li>CRUD operations using ExpressJS route methods.<\\/li>\\n<li>Building a RESTful API to manage users with ExpressJS.<\\/li>\\n<li>GraphQL in ExpressJS.<\\/li>\\n<li>Introduction to Containers. Docker.<\\/li>\\n<\\/ul>\"', '2022-06-13 07:05:00', '2022-09-15 07:04:43'),
(31, 8, '1-ci ay', '\"<ul>\\n<li>Internetworking<\\/li>\\n<li>OSI &amp; TCP&amp;IP<\\/li>\\n<li>Ethernet<\\/li>\\n<li>Cisco IOS<\\/li>\\n<li>IP<\\/li>\\n<li>Static Routing &amp; Switch Interfaces<\\/li>\\n<li>Subnnetting<\\/li>\\n<li>Vlan<\\/li>\\n<\\/ul>\"', '2022-06-13 07:07:23', '2022-06-13 07:07:23'),
(32, 8, '2-ci ay', '\"<ul>\\n<li>STP<\\/li>\\n<li>RSTP &amp; Labs<\\/li>\\n<li>DTP &amp; VTP &amp; EtherChannel<\\/li>\\n<li>Dynamic Routing<\\/li>\\n<li>RIP &amp; EIGRP<\\/li>\\n<li>OSPF<\\/li>\\n<li>OSPF (cont.) &amp; Lab<\\/li>\\n<li>IPv6<\\/li>\\n<\\/ul>\"', '2022-06-13 07:07:45', '2022-06-13 07:07:45'),
(33, 8, '3-cü ay', '\"<ul>\\n<li>TCP &amp; UDP&nbsp;<\\/li>\\n<li>FHRP<\\/li>\\n<li>ACL<\\/li>\\n<li>CDP &amp; LLDP<\\/li>\\n<li>NTP &amp; SNMP &amp; Syslog<\\/li>\\n<li>DNS &amp; DHCP<\\/li>\\n<li>SSH &amp; TELNET&nbsp;<\\/li>\\n<li>FTP &amp; TFTP<\\/li>\\n<\\/ul>\"', '2022-06-13 07:12:48', '2022-06-13 07:12:48'),
(34, 8, '4-cü ay', '\"<ul>\\n<li>NAT<\\/li>\\n<li>QOS<\\/li>\\n<li>Security<\\/li>\\n<li>LAN &amp; WAN &amp; Virtualization<\\/li>\\n<li>Wireless<\\/li>\\n<li>Network Automation<\\/li>\\n<li>MPLS &amp; BGP &amp; IS-IS<\\/li>\\n<li>Best Practice<\\/li>\\n<\\/ul>\"', '2022-06-13 07:13:00', '2022-06-13 07:13:00'),
(35, 19, '1-ci ay', '\"<ul>\\n<li>\\n<p class=\\\"MsoNormal\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Front-end basics<\\/span><\\/p>\\n<\\/li>\\n<li>\\n<p class=\\\"MsoNormal\\\" style=\\\"color: #444444; font-size: 14px;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\">Emmet, Html5-CSS3 basics<\\/span><\\/p>\\n<\\/li>\\n<li>\\n<p class=\\\"MsoNormal\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\">GIT<\\/span><\\/p>\\n<\\/li>\\n<li>\\n<p class=\\\"MsoNormal\\\" style=\\\"color: #444444; font-size: 14px;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\">HTML forms<\\/span><\\/p>\\n<\\/li>\\n<li>\\n<p class=\\\"MsoNormal\\\" style=\\\"color: #444444; font-size: 14px;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\">Flexbox<\\/span><\\/p>\\n<\\/li>\\n<li>\\n<p class=\\\"MsoNormal\\\" style=\\\"color: #444444; font-size: 14px;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\">Grid Layout<\\/span><\\/p>\\n<\\/li>\\n<li>\\n<p class=\\\"MsoNormal\\\" style=\\\"color: #444444; font-size: 14px;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\">CSS animation, parallax<\\/span><\\/p>\\n<\\/li>\\n<li>\\n<p class=\\\"MsoNormal\\\" style=\\\"color: #444444; font-size: 14px;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\">CSS preprocessors. SASS. CSS methodologies. BEM<\\/span><\\/p>\\n<\\/li>\\n<li>\\n<p class=\\\"MsoNormal\\\" style=\\\"color: #444444; font-size: 14px;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\">Adaptive and responsive<\\/span><\\/p>\\n<\\/li>\\n<li><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\">Bootstrap 5<\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/li>\\n<\\/ul>\"', '2022-06-27 09:04:00', '2022-06-27 09:06:02'),
(36, 19, '2-ci ay', '\"<ul>\\n<li>\\n<p class=\\\"MsoNormal\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">JavaScript basics<\\/span><\\/p>\\n<\\/li>\\n<li>\\n<p class=\\\"MsoNormal\\\" style=\\\"color: #444444; font-size: 14px;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\">Data types, primitives, type casting.<\\/span><\\/p>\\n<\\/li>\\n<li>\\n<p class=\\\"MsoNormal\\\" style=\\\"color: #444444; font-size: 14px;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\">Operators, logical operators, switch<\\/span><\\/p>\\n<\\/li>\\n<li>\\n<p class=\\\"MsoNormal\\\" style=\\\"color: #444444; font-size: 14px;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\">Operators, logical operators, switch<\\/span><\\/p>\\n<\\/li>\\n<li>\\n<p class=\\\"MsoNormal\\\" style=\\\"color: #444444; font-size: 14px;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\">Loops<\\/span><\\/p>\\n<\\/li>\\n<li>\\n<p class=\\\"MsoNormal\\\" style=\\\"color: #444444; font-size: 14px;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\">Functions, scope, debug<\\/span><\\/p>\\n<\\/li>\\n<li>\\n<p class=\\\"MsoNormal\\\" style=\\\"color: #444444; font-size: 14px;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\">Objects<\\/span><\\/p>\\n<\\/li>\\n<li>\\n<p class=\\\"MsoNormal\\\" style=\\\"color: #444444; font-size: 14px;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\">Arrays, Set, Map<\\/span><\\/p>\\n<\\/li>\\n<li><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\">Working with DOM<\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/span><\\/li>\\n<\\/ul>\"', '2022-06-27 09:07:00', '2022-08-17 02:22:16'),
(37, 19, '3-cü ay', '\"<ul>\\n<li class=\\\"MsoNormal\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Working with events. Attaching events to DOM nodes<\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">SetTimeout and SetInterval, localStorage<\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\">\\n<p style=\\\"color: #444444; font-size: 14px;\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Destructuring, Closures<\\/span><\\/p>\\n<\\/li>\\n<li class=\\\"MsoNormal\\\">\\n<p style=\\\"color: #444444; font-size: 14px;\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Garbage collection, Exception handling<\\/span><\\/p>\\n<\\/li>\\n<li class=\\\"MsoNormal\\\">\\n<p style=\\\"color: #444444; font-size: 14px;\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">OOP in JS. Propotypes. Inheritance. Native prototypes. Classes.<\\/span><\\/p>\\n<\\/li>\\n<li class=\\\"MsoNormal\\\">\\n<p class=\\\"MsoNormal\\\" style=\\\"color: #444444; font-size: 14px;\\\"><span style=\\\"font-size: 12pt; line-height: 107%;\\\">JSON format. AJAX. XHR.<\\/span><\\/p>\\n<\\/li>\\n<li class=\\\"MsoNormal\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\"><span style=\\\"font-size: 12pt; line-height: 107%;\\\">Cookies, fetch, axios, Promises, async-await<\\/span><\\/span><\\/span><\\/span><\\/span><\\/li>\\n<\\/ul>\"', '2022-06-27 09:11:00', '2022-06-27 09:12:46'),
(38, 19, '4-cü ay', '\"<ul>\\n<li>\\n<p class=\\\"MsoNormal\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Overview of Js frameworks. Angular. Angular.js . Vue js. Differences between them. React.JS <\\/span><\\/p>\\n<\\/li>\\n<li>\\n<p class=\\\"MsoNormal\\\" style=\\\"color: #444444; font-size: 14px;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\">npm node.js<\\/span><\\/p>\\n<\\/li>\\n<li>\\n<p class=\\\"MsoNormal\\\" style=\\\"color: #444444; font-size: 14px;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\">Creating nested components, DOM references<\\/span><\\/p>\\n<\\/li>\\n<li>\\n<p class=\\\"MsoNormal\\\" style=\\\"color: #444444; font-size: 14px;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\">React Router, propTypes<\\/span><span style=\\\"color: black;\\\">, defaultProps, component lifecycle<\\/span><\\/p>\\n<\\/li>\\n<li><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\"><span style=\\\"color: black;\\\">State management. Context-Api<\\/span><\\/span><\\/span><\\/span><\\/li>\\n<\\/ul>\"', '2022-06-27 09:13:00', '2022-06-27 09:13:59'),
(39, 19, '5-ci ay', '\"<ul>\\n<li>\\n<p class=\\\"MsoNormal\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Redux basics<\\/span><\\/p>\\n<\\/li>\\n<li>\\n<p class=\\\"MsoNormal\\\" style=\\\"color: #444444; font-size: 14px;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\">Middlewares, fetching data from server, async actions with redux-saga, redux-thunk<\\/span><\\/p>\\n<\\/li>\\n<li>\\n<p class=\\\"MsoNormal\\\" style=\\\"color: #444444; font-size: 14px;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\">Working with forms. Redux forms<\\/span><\\/p>\\n<\\/li>\\n<li>\\n<p class=\\\"MsoNormal\\\" style=\\\"color: #444444; font-size: 14px;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\">Testing React components<\\/span><\\/p>\\n<\\/li>\\n<li>\\n<p class=\\\"MsoNormal\\\" style=\\\"color: #444444; font-size: 14px;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\">React hooks. React architecture example project<\\/span><\\/p>\\n<\\/li>\\n<li><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\">Introduction to static typed languages. Typescript. React with TS<\\/span><\\/span><\\/span><\\/span><\\/span><\\/li>\\n<\\/ul>\"', '2022-06-27 09:14:00', '2022-08-17 02:22:55'),
(40, 19, '6-cı ay', '\"<ul>\\n<li>\\n<p class=\\\"MsoNormal\\\"><span style=\\\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\\\">Environment setup. Expo. Basic React Native app structure<\\/span><\\/p>\\n<\\/li>\\n<li>\\n<p class=\\\"MsoNormal\\\" style=\\\"color: #444444; font-size: 14px;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\">Overview of React Native components.<\\/span><\\/p>\\n<\\/li>\\n<li>\\n<p class=\\\"MsoNormal\\\" style=\\\"color: #444444; font-size: 14px;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\">Working with Images in RN.<\\/span><\\/p>\\n<\\/li>\\n<li>\\n<p class=\\\"MsoNormal\\\" style=\\\"color: #444444; font-size: 14px;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\">Styling in RN.<\\/span><\\/p>\\n<\\/li>\\n<li>\\n<p class=\\\"MsoNormal\\\" style=\\\"color: #444444; font-size: 14px;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\">Router. Navigation.<\\/span><\\/p>\\n<\\/li>\\n<li>\\n<p class=\\\"MsoNormal\\\" style=\\\"color: #444444; font-size: 14px;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\">View, Modal, Picker, Switch, Text.<\\/span><\\/p>\\n<\\/li>\\n<li>\\n<p class=\\\"MsoNormal\\\" style=\\\"color: #444444; font-size: 14px;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\">Working with Geolocation.<\\/span><\\/p>\\n<\\/li>\\n<li>\\n<p class=\\\"MsoNormal\\\" style=\\\"color: #444444; font-size: 14px;\\\"><span style=\\\"font-size: 12pt; line-height: 17.12px; color: black;\\\">Generate .apk for android.<\\/span><\\/p>\\n<\\/li>\\n<\\/ul>\"', '2022-06-27 09:16:00', '2022-08-17 02:23:24'),
(41, 20, '1-ci ay', '\"<ul>\\n<li><span style=\\\"font-size: 14.0pt; line-height: 115%; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\\\"><span style=\\\"mso-list: Ignore;\\\"><span style=\\\"font: 7.0pt \'Times New Roman\';\\\">&nbsp;<\\/span><\\/span><\\/span><!--[endif]--><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\">Unity <\\/span><span lang=\\\"AZ-LATIN\\\" style=\\\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\\\">v\\u0259 Visual Studio qura\\u015fd\\u0131r\\u0131lmas\\u0131<\\/span><\\/li>\\n<li><!-- [if !supportLists]--><span lang=\\\"AZ-LATIN\\\" style=\\\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\\\">Unity ara-&uuml;z<\\/span><\\/li>\\n<li><!-- [if !supportLists]--><span lang=\\\"AZ-LATIN\\\" style=\\\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\\\">Unity s\\u0259hn\\u0259l\\u0259r v\\u0259 cisiml\\u0259r<\\/span><\\/li>\\n<li><!-- [if !supportLists]--><span lang=\\\"AZ-LATIN\\\" style=\\\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\\\">C# d\\u0259yi\\u015f\\u0259nl\\u0259rin tipl\\u0259ri<\\/span><\\/li>\\n<li><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\">Unity C<\\/span><span lang=\\\"AZ-LATIN\\\" style=\\\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\\\"># \\u0259sas funksiyalar<\\/span><\\/li>\\n<li><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\">C<\\/span><span lang=\\\"AZ-LATIN\\\" style=\\\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\\\"># operatorlar<\\/span><\\/li>\\n<li><span lang=\\\"AZ-LATIN\\\" style=\\\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\\\">C# d&ouml;vrl\\u0259r v\\u0259 metodlar<\\/span><\\/li>\\n<li><span lang=\\\"AZ-LATIN\\\" style=\\\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\\\">C# list v\\u0259 arrayl\\u0259r<\\/span><\\/li>\\n<li><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\">Unity AssetStore v\\u0259 haz\\u0131r Assetl\\u0259rl\\u0259 i\\u015fl\\u0259m\\u0259k<\\/span><\\/li>\\n<\\/ul>\"', '2022-08-25 04:07:00', '2022-08-25 04:16:51'),
(42, 20, '2-ci ay', '\"<ul>\\n<li><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\">Blender ara-&uuml;z<\\/span><\\/li>\\n<li><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\">Blender 3D model m\\u0259ntiqi, \\u0259saslar\\u0131<\\/span><\\/li>\\n<li><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\">Blender 3D modelin qurulmas\\u0131 yollar\\u0131<\\/span><\\/li>\\n<li><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\">Blender UV mappin<\\/span><\\/li>\\n<li><!--[endif]--><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\">Substance painter ara-&uuml;z<\\/span><\\/li>\\n<li><!-- [if !supportLists]--><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\">Substance painter&rsquo;d\\u0259 Texture-l\\u0259ri yaratma<\\/span><\\/li>\\n<li><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\">Substance painter&rsquo;d\\u0259 Export etm\\u0259k<\\/span><\\/li>\\n<\\/ul>\\n<p>&nbsp;<\\/p>\"', '2022-08-25 04:19:00', '2022-08-25 04:23:13'),
(43, 20, '3-cü ay', '\"<ul>\\n<li><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\">Blender 3D modelin LOD komponentl\\u0259ri<\\/span><\\/li>\\n<li><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\">Blender Materiallarla i\\u015fl\\u0259m\\u0259k<\\/span><\\/li>\\n<li><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\">Blender Modell\\u0259ri rigl\\u0259m\\u0259k<\\/span><\\/li>\\n<li><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\">Blender Animasiyalarla i\\u015fl\\u0259m\\u0259k<\\/span><\\/li>\\n<li><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\">Blender &Ouml;l&ccedil;&uuml; vahidl\\u0259ri, pivot n&ouml;qt\\u0259si<\\/span><\\/li>\\n<li><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\">Blenderin konstruksiyalar\\u0131<\\/span><\\/li>\\n<li><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\">Blender 3D modelin Unity- y\\u0259 export edilm\\u0259si<\\/span><\\/li>\\n<\\/ul>\\n<p>&nbsp;<\\/p>\"', '2022-08-25 04:20:00', '2022-08-25 04:23:37'),
(44, 20, '4-cü ay', '\"<ul>\\n<li class=\\\"MsoNormal\\\"><span lang=\\\"AZ-LATIN\\\" style=\\\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\\\">Unity C<\\/span><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\"># komponentl\\u0259r<\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\">Unity <\\/span><span lang=\\\"AZ-LATIN\\\" style=\\\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\\\">C<\\/span><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\"># idar\\u0259etm\\u0259 sisteml\\u0259ri<\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span lang=\\\"AZ-LATIN\\\" style=\\\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\\\">Unity C<\\/span><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\"># cismin lokasiya<\\/span><span lang=\\\"AZ-LATIN\\\" style=\\\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\\\">s\\u0131, rotasiyas\\u0131 v\\u0259 onlar &uuml;z\\u0259rind\\u0259 \\u0259m\\u0259liyyatlar<\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span lang=\\\"AZ-LATIN\\\" style=\\\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\\\">Unity C<\\/span><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\"># a&ccedil;ar s&ouml;zl\\u0259r<\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span lang=\\\"AZ-LATIN\\\" style=\\\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\\\">Unity C<\\/span><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\"># collider<\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span lang=\\\"AZ-LATIN\\\" style=\\\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\\\">Unity C<\\/span><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\"># rigidBody<\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span lang=\\\"AZ-LATIN\\\" style=\\\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\\\">Unity C<\\/span><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\"># zamanla i\\u015fl\\u0259m\\u0259k<\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span lang=\\\"AZ-LATIN\\\" style=\\\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\\\">Unity <\\/span><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\">effektl\\u0259ri(ParticleEffect)<\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span lang=\\\"AZ-LATIN\\\" style=\\\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\\\">Unity<\\/span><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\"> s\\u0259sl\\u0259r<\\/span><\\/li>\\n<\\/ul>\"', '2022-08-25 04:20:49', '2022-08-25 04:20:49'),
(45, 20, '5-ci ay', '\"<ul>\\n<li class=\\\"MsoNormal\\\"><span lang=\\\"AZ-LATIN\\\" style=\\\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\\\">Unity<\\/span><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\"> animasiyalar<\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\">Unity animation controller<\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\">Unity Navigation v\\u0259 AI sistemi<\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\">Unity physics(Ray, Cloth, Line, RayCast ves) <\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\">Unity C# cisiml<\\/span><span lang=\\\"AZ-LATIN\\\" style=\\\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\\\">\\u0259r aras\\u0131nda \\u0259laq\\u0259<\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span lang=\\\"AZ-LATIN\\\" style=\\\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\\\">Unity World design<\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span lang=\\\"AZ-LATIN\\\" style=\\\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\\\">Unity PostProcessing<\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span lang=\\\"AZ-LATIN\\\" style=\\\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\\\">Unity kamera v\\u0259 i\\u015f\\u0131qlar<\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span lang=\\\"AZ-LATIN\\\" style=\\\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\\\">Unity Load-Save sistemi(PlayerPrefs)<\\/span><\\/li>\\n<\\/ul>\"', '2022-08-25 04:21:23', '2022-08-25 04:21:23'),
(46, 20, '6-cı ay', '\"<ul>\\n<li class=\\\"MsoNormal\\\"><span lang=\\\"AZ-LATIN\\\" style=\\\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\\\">Unity s\\u0259hn\\u0259l\\u0259r aras\\u0131 ke&ccedil;id v\\u0259 data transferi<\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\">Unity UI Canvas v\\u0259 panell\\u0259r<\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\">Unity UI button<\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\">Unity UI Toggle, Slider<\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\">Unity UI Text TextMeshPro, Image<\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\">Unity Optimizasiya<\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\">Unity SDK, JDK, NDK, gradle uy\\u011funlu\\u011fu<\\/span><\\/li>\\n<li class=\\\"MsoNormal\\\"><span style=\\\"font-size: 14.0pt; line-height: 115%;\\\">Unity layih\\u0259ni uy\\u011funla\\u015fd\\u0131rma<\\/span><\\/li>\\n<\\/ul>\"', '2022-08-25 04:22:18', '2022-08-25 04:22:18');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-06-07 01:44:27', '2022-06-07 01:44:27'),
(2, 'user', 'Normal User', '2022-06-07 01:44:27', '2022-06-07 01:44:27');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sending_mails`
--

CREATE TABLE `sending_mails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courses_id2` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `courses_id3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `sending_mails`
--

INSERT INTO `sending_mails` (`id`, `name`, `email`, `phone`, `courses_id2`, `created_at`, `updated_at`, `courses_id3`) VALUES
(1, 'Kondisioner', 'dev@gmail.com', '0504686868', NULL, '2022-06-09 03:14:49', '2022-06-09 03:14:49', NULL),
(2, 'turkay alizade', 'dev@gmail.com', '+994504859494', NULL, '2022-06-15 08:19:20', '2022-06-15 08:19:20', NULL),
(3, 'Turkay Alizade', 'turkay6006@gmail.com', '+994504859494', NULL, '2022-06-15 14:20:05', '2022-06-15 14:20:05', NULL),
(4, 'Turkay Alizade', 'turkay6006@gmail.com', '+994504859494', NULL, '2022-06-15 14:20:27', '2022-06-15 14:20:27', NULL),
(5, 'Turkay Alizade', 'turkay6006@gmail.com', '+994504859494', NULL, '2022-06-15 14:22:38', '2022-06-15 14:22:38', NULL),
(6, 'Turkay Alizade', 'turkay6006@gmail.com', '+994504859494', NULL, '2022-06-15 14:29:10', '2022-06-15 14:29:10', NULL),
(7, 'Turkay Alizade', 'turkay6006@gmail.com', '+994504859494', NULL, '2022-06-15 14:30:21', '2022-06-15 14:30:21', NULL),
(8, 'Turkay Alizade', 'turkay6006@gmail.com', '+994504859494', NULL, '2022-06-15 14:31:50', '2022-06-15 14:31:50', NULL),
(9, 'Turkay Alizade', 'turkay6006@gmail.com', '+994703496060', NULL, '2022-06-15 14:35:10', '2022-06-15 14:35:10', NULL),
(10, 'Turkay', 'test@gmail.com', '+994546475767', NULL, '2022-06-15 14:36:24', '2022-06-15 14:36:24', NULL),
(11, 'Turkay Alizade', 'turkay6006@gmail.com', '+994703496060', NULL, '2022-06-15 14:37:18', '2022-06-15 14:37:18', NULL),
(12, 'Turkay Alizade', 'turkay6006@gmail.com', '+994502112323', NULL, '2022-06-15 14:55:24', '2022-06-15 14:55:24', NULL),
(13, 'Turkay Alizade', 'turkay6006@gmail.com', '+994502112323', NULL, '2022-06-15 16:12:58', '2022-06-15 16:12:58', NULL),
(14, 'Turkay Alizade', 'turkay6006@gmail.com', '+994502112323', NULL, '2022-06-15 16:17:57', '2022-06-15 16:17:57', NULL),
(15, 'Kondisioner', 'dev@gmail.com', '0504686868', NULL, '2022-06-16 02:51:12', '2022-06-16 02:51:12', NULL),
(16, 'Full Stack Developer', 'firengizsariyeva77@gmail.com', '2323', NULL, '2022-06-16 03:02:00', '2022-06-16 03:02:00', NULL),
(17, 'Kondisioner', 'dev@gmail.com', '0504686868', NULL, '2022-06-16 03:02:53', '2022-06-16 03:02:53', NULL),
(18, 'Kondisioner', 'dev@gmail.com', '0504686868', NULL, '2022-06-16 03:03:20', '2022-06-16 03:03:20', NULL),
(19, 'Full Stack Developer', 'firengizsariyeva77@gmail.com', '88r49r', NULL, '2022-06-16 03:36:24', '2022-06-16 03:36:24', NULL),
(20, 'Full Stack Developer', 'firengizsariyeva77@gmail.com', '3434', NULL, '2022-06-16 03:36:59', '2022-06-16 03:36:59', NULL),
(21, 'Full Stack Developer', 'firengizsariyeva77@gmail.com', 'firengizsar343yeva77@gmail.com', NULL, '2022-06-16 03:37:32', '2022-06-16 03:37:32', NULL),
(22, 'Kondisioner', 'dev@gmail.com', '0504686868', NULL, '2022-06-16 03:38:27', '2022-06-16 03:38:27', NULL),
(23, 'tel', 'dev@gmail.com', 'dev@gmail.com', NULL, '2022-06-16 03:41:09', '2022-06-16 03:41:09', NULL),
(24, 'Full Stack Developer', 'firengizsariyeva77@gmail.com', 'firengizsariyeva77@gmail.com', NULL, '2022-06-16 03:41:51', '2022-06-16 03:41:51', NULL),
(25, 'Full Stack Developer', 'firengizsariyeva77@gmail.com', 'firengizsariyeva77@gmail.com', NULL, '2022-06-16 03:42:34', '2022-06-16 03:42:34', NULL),
(26, 'Full Stack Developer', 'firengizsariyeva77@gmail.com', 'firengizsariyeva77@gmail.com', NULL, '2022-06-16 03:43:01', '2022-06-16 03:43:01', NULL),
(27, 'Full Stack Developer', 'firengizsariyeva77@gmail.com', 'firengizsariyeva77@gmail.com', NULL, '2022-06-16 03:43:13', '2022-06-16 03:43:13', NULL),
(28, 'Full Stack Developer', 'firengizsariyeva77@gmail.com', 'firengizsariyeva77@gmail.com', NULL, '2022-06-16 03:43:32', '2022-06-16 03:43:32', NULL),
(29, 'Full Stack Developer', 'firengizsariyeva77@gmail.com', 'firengizsariyeva77@gmail.com', NULL, '2022-06-16 03:43:53', '2022-06-16 03:43:53', NULL),
(30, 'test1', 'firengizsariyeva77@gmail.com', '0504686868', NULL, '2022-06-16 03:44:56', '2022-06-16 03:44:56', NULL),
(31, 'Kondisioner', 'firengizsariyeva77@gmail.com', '0504686868', NULL, '2022-06-16 03:45:37', '2022-06-16 03:45:37', NULL),
(32, 'Kondisioner', 'dev@gmail.com', '0504686868', NULL, '2022-06-16 03:46:49', '2022-06-16 03:46:49', NULL),
(33, 'Kondisioner', 'firengizsariyeva77@gmail.com', '0504686868', NULL, '2022-06-16 03:47:56', '2022-06-16 03:47:56', NULL),
(34, 'test1', 'dev@gmail.com', '0504686868', NULL, '2022-06-16 03:48:18', '2022-06-16 03:48:18', NULL),
(35, 'Kondisioner', 'dev@gmail.com', '0504686868', NULL, '2022-06-16 03:52:24', '2022-06-16 03:52:24', NULL),
(36, 'turkay alizade', 'dev@gmail.com', '+994517336033', NULL, '2022-06-16 03:53:30', '2022-06-16 03:53:30', NULL),
(37, 'Kondisioner', 'dev@gmail.com', '0504686868', NULL, '2022-06-16 03:57:00', '2022-06-16 03:57:00', NULL),
(38, 'test1', 'dev@gmail.com', '0504686868', NULL, '2022-06-16 03:58:18', '2022-06-16 03:58:18', NULL),
(39, 'Kondisioner', 'dev@gmail.com', '0504686868', NULL, '2022-06-16 03:58:45', '2022-06-16 03:58:45', NULL),
(40, 'Kondisioner', 'dev@gmail.com', '0504686868', NULL, '2022-06-16 03:59:56', '2022-06-16 03:59:56', NULL),
(41, 'Kondisioner', 'dev@gmail.com', '+994 050 468 68 68,', NULL, '2022-06-16 04:02:09', '2022-06-16 04:02:09', NULL),
(42, 'Kondisioner', 'dev@gmail.com', '0504686868', NULL, '2022-06-16 04:03:24', '2022-06-16 04:03:24', NULL),
(43, 'Kondisioner', 'dev@gmail.com', '0504686868', NULL, '2022-06-16 04:04:01', '2022-06-16 04:04:01', NULL),
(44, 'Kondisioner', 'dev@gmail.com', '+994 050 468 68 68,', NULL, '2022-06-16 04:04:14', '2022-06-16 04:04:14', NULL),
(45, 'Kondisioner', 'dev@gmail.com', '0504686868', NULL, '2022-06-16 04:04:48', '2022-06-16 04:04:48', NULL),
(46, 'Kondisioner', 'dev@gmail.com', '0504686868', NULL, '2022-06-16 04:06:53', '2022-06-16 04:06:53', NULL),
(47, 'Kondisioner', 'dev@gmail.com', '0504686868', NULL, '2022-06-16 04:07:27', '2022-06-16 04:07:27', NULL),
(48, 'Kondisioner', 'dev@gmail.com', '0504686868', NULL, '2022-06-16 04:10:13', '2022-06-16 04:10:13', NULL),
(49, 'turkay alizade', 'dev@gmail.com', '+994504859494', NULL, '2022-06-16 04:11:26', '2022-06-16 04:11:26', NULL),
(50, 'turkay alizade', 'dev@gmail.com', '+994504859494', NULL, '2022-06-16 04:11:40', '2022-06-16 04:11:40', NULL),
(51, 'Kondisioner', 'dev@gmail.com', '0504686868', NULL, '2022-06-16 04:12:01', '2022-06-16 04:12:01', NULL),
(52, 'turkay alizade', 'dev@gmail.com', '+994504859494', NULL, '2022-06-16 04:12:29', '2022-06-16 04:12:29', NULL),
(53, 'Kondisioner', 'dev@gmail.com', '0504686868', NULL, '2022-06-16 04:13:03', '2022-06-16 04:13:03', NULL),
(54, 'Kondisioner', 'dev@gmail.com', '0504686868', NULL, '2022-06-16 04:14:07', '2022-06-16 04:14:07', NULL),
(55, 'Kondisioner21', 'Dev@gmail.com', '0504686868,', NULL, '2022-06-16 04:14:16', '2022-06-16 04:14:16', NULL),
(56, 'testson', 'dev@gmail.com', '0504686868', NULL, '2022-06-16 04:18:49', '2022-06-16 04:18:49', NULL),
(57, 'Kondisioner', 'dev@gmail.com', '0504686868', NULL, '2022-06-16 04:19:08', '2022-06-16 04:19:08', NULL),
(58, 'Kondisioner', 'dev@gmail.com', '0504686868', NULL, '2022-06-16 04:20:18', '2022-06-16 04:20:18', NULL),
(59, 'Kondisioner', 'dev@gmail.com', '0504686868', NULL, '2022-06-16 04:21:11', '2022-06-16 04:21:11', NULL),
(60, 'Kondisioner', 'dev@gmail.com', '0504686868', NULL, '2022-06-16 04:23:40', '2022-06-16 04:23:40', NULL),
(61, 'Kondisioner', 'dev@gmail.com', '+994 050 468 68 68,', NULL, '2022-06-16 04:24:19', '2022-06-16 04:24:19', NULL),
(62, 'Kondisioner', 'dev@gmail.com', '0504686868', NULL, '2022-06-16 04:25:34', '2022-06-16 04:25:34', NULL),
(63, 'turkay alizade', 'dev@gmail.com', '+994504859494', NULL, '2022-06-16 04:32:56', '2022-06-16 04:32:56', NULL),
(64, 'Kondisioner', 'dev@gmail.com', '0504686868', NULL, '2022-06-16 04:40:05', '2022-06-16 04:40:05', NULL),
(65, 'Kondisioner', 'dev@gmail.com', '0504686868', NULL, '2022-06-16 04:42:20', '2022-06-16 04:42:20', 'Backend proqramlaşdırma kursu'),
(66, 'Kondisioner', 'firengizsariyeva77@gmail.com', '0504686868', NULL, '2022-06-16 04:43:28', '2022-06-16 04:43:28', NULL),
(67, 'test son', 'dev@gmail.com', '0504686868', NULL, '2022-06-16 04:49:14', '2022-06-16 04:49:14', 'Network Adminstration'),
(68, 'turkay alizade', 'dev@gmail.com', '+994504859494', NULL, '2022-06-16 07:09:41', '2022-06-16 07:09:41', 'Frontend proqramlaşdırma kursu'),
(69, 'turkay alizade', 'dev@gmail.com', '+994504859494', NULL, '2022-06-16 07:18:41', '2022-06-16 07:18:41', 'Backend proqramlaşdırma kursu'),
(70, 'turkay alizade', 'turkay606@gmail.com', '+994504859494', NULL, '2022-06-16 07:19:43', '2022-06-16 07:19:43', 'Frontend proqramlaşdırma kursu'),
(71, 'turkay alizade', 'dev@gmail.com', '+994504859494', NULL, '2022-06-16 07:20:00', '2022-06-16 07:20:00', 'Frontend proqramlaşdırma kursu'),
(72, 'turkay alizade', 'dev@gmail.com', '+994504859494', NULL, '2022-06-16 07:20:33', '2022-06-16 07:20:33', 'Frontend proqramlaşdırma kursu'),
(73, 'turkay alizade', 'dev@gmail.com', '+994504859494', NULL, '2022-06-16 07:22:47', '2022-06-16 07:22:47', 'Frontend proqramlaşdırma kursu'),
(74, 'turkay alizade', 'dev@gmail.com', '+994504859494', NULL, '2022-06-16 07:25:15', '2022-06-16 07:25:15', 'Fullstack C# proqramlaşdırma kursu'),
(75, 'turkay alizade', 'dev@gmail.com', '+994504859494', NULL, '2022-06-16 07:31:47', '2022-06-16 07:31:47', 'Frontend proqramlaşdırma kursu'),
(76, 'Turkay Alizade', 'turkay6006@gmail.com', '+994504859494', NULL, '2022-06-18 12:33:19', '2022-06-18 12:33:19', 'Backend proqramlaşdırma kursu'),
(77, 'Turkay Alizade', 'turkay6006@gmail.com', '+994504859494', NULL, '2022-06-18 13:04:06', '2022-06-18 13:04:06', 'Backend proqramlaşdırma kursu'),
(78, 'turkay alizade', 'dev@gmail.com', '+994504859494', NULL, '2022-06-20 03:59:16', '2022-06-20 03:59:16', 'Fullstack JavaScript (MERN) kursu'),
(79, 'Kondisioner', 'dev@gmail.com', '+994504686868', NULL, '2022-06-20 04:18:50', '2022-06-20 04:18:50', 'Backend proqramlaşdırma kursu'),
(80, 'Kondisioner', 'dev@gmail.com', '+994708888888', NULL, '2022-06-22 04:40:46', '2022-06-22 04:40:46', 'Backend proqramlaşdırma kursu'),
(81, 'turkay alizade', 'dev@gmail.com', '+994504859494', NULL, '2022-06-22 07:30:23', '2022-06-22 07:30:23', 'Backend proqramlaşdırma kursu'),
(82, 'test', 'test@gmail.com', '+994708888888', NULL, '2022-06-22 07:31:24', '2022-06-22 07:31:24', 'Fullstack C# proqramlaşdırma kursu'),
(83, 'turkay alizade', 'dev@gmail.com', '+994504859494', NULL, '2022-06-22 07:37:18', '2022-06-22 07:37:18', 'Fullstack C# proqramlaşdırma kursu'),
(84, 'Kondisioner', 'dev@gmail.com', '+994343453434', NULL, '2022-06-22 07:45:20', '2022-06-22 07:45:20', 'Backend proqramlaşdırma kursu'),
(85, 'Kondisioner', 'dev@gmail.com', '+994708888888', NULL, '2022-06-22 07:45:37', '2022-06-22 07:45:37', 'Network Adminstration'),
(86, 'test1', 'dev@gmail.com', '+994708888888', NULL, '2022-06-22 09:23:25', '2022-06-22 09:23:25', 'Backend proqramlaşdırma kursu'),
(87, 'sdsd', 'sdsd@gmail.com', '+994709999999', NULL, '2022-06-22 14:31:15', '2022-06-22 14:31:15', 'Fullstack JavaScript (MERN) kursu'),
(88, 'Firengiz test', 'test@gmail.com', '+994708884581', NULL, '2022-06-22 14:36:43', '2022-06-22 14:36:43', 'Fullstack C# proqramlaşdırma kursu'),
(89, 'Firengiz21', 'test@gmail.com', '+994808888888', NULL, '2022-06-22 14:38:04', '2022-06-22 14:38:04', 'Fullstack JavaScript (MERN) kursu'),
(90, 'sdsd', 'sdsd@gmail.com', '+994708884581', NULL, '2022-06-23 01:45:36', '2022-06-23 01:45:36', 'Backend proqramlaşdırma kursu'),
(91, 'turkay alizade', 'dev@gmail.com', '+994504859494', NULL, '2022-06-23 07:15:22', '2022-06-23 07:15:22', 'Backend proqramlaşdırma kursu'),
(92, 'wewe', 'we@gmail.com', '+994708888888', NULL, '2022-06-23 07:25:44', '2022-06-23 07:25:44', 'Backend proqramlaşdırma kursu'),
(93, 'Kondisioner', 'dev@gmail.com', '+994708888888', NULL, '2022-06-23 07:29:26', '2022-06-23 07:29:26', 'Backend proqramlaşdırma kursu'),
(94, 'Kondisioner', 'dev@gmail.com', '+994708888888', NULL, '2022-06-23 07:37:17', '2022-06-23 07:37:17', 'Backend proqramlaşdırma kursu'),
(95, 'turkay alizade', 'dev@gmail.com', '+994504859494', NULL, '2022-06-23 07:37:33', '2022-06-23 07:37:33', 'Fullstack C# proqramlaşdırma kursu'),
(96, 'turkay alizade', 'dev@gmail.com', '+994504859494', NULL, '2022-06-24 02:58:38', '2022-06-24 02:58:38', 'Backend C# proqramlaşdırma kursu'),
(97, 'test1', 'firengizsariyeva77@gmail.com', '+994708888888', NULL, '2022-06-24 05:45:41', '2022-06-24 05:45:41', 'Backend C# proqramlaşdırma kursu'),
(98, 'sas', 'asasa@gm.com', '+994505555555', NULL, '2022-06-24 06:56:39', '2022-06-24 06:56:39', 'Frontend proqramlaşdırma kursu'),
(99, 'Kondisioner', 'dev@gmail.com', '+994708888888', NULL, '2022-06-24 07:08:38', '2022-06-24 07:08:38', 'Backend C# proqramlaşdırma kursu'),
(100, 'Kondisioner', 'dev@gmail.com', '+994708888888', NULL, '2022-06-24 07:11:41', '2022-06-24 07:11:41', 'Backend C# proqramlaşdırma kursu'),
(101, 'Kondisioner', 'dev@gmail.com', '+994708888888', NULL, '2022-06-24 08:14:57', '2022-06-24 08:14:57', 'Backend C# proqramlaşdırma kursu'),
(102, 'test1', 'dev@gmail.com', '+994708888888', NULL, '2022-06-24 08:30:27', '2022-06-24 08:30:27', 'Backend C# proqramlaşdırma kursu'),
(103, 'Kondisioner', 'admin@a.a', '+994708888888', NULL, '2022-06-24 08:32:06', '2022-06-24 08:32:06', 'Fullstack C# proqramlaşdırma kursu'),
(104, 'Kondisioner', 'admin@a.a', '+994708888888', NULL, '2022-06-24 08:32:40', '2022-06-24 08:32:40', 'Fullstack C# proqramlaşdırma kursu'),
(105, 'Kondisioner', 'admin@a.a', '+994708888888', NULL, '2022-06-24 08:33:11', '2022-06-24 08:33:11', 'Fullstack C# proqramlaşdırma kursu'),
(106, 'Kondisioner', 'admin@a.a', '+994708888888', NULL, '2022-06-24 08:33:53', '2022-06-24 08:33:53', 'Backend C# proqramlaşdırma kursu'),
(107, 'Kondisioner', 'admin@a.a', '+994708888888', NULL, '2022-06-24 08:35:49', '2022-06-24 08:35:49', 'Backend C# proqramlaşdırma kursu'),
(108, 'test1', 'admin@a.a', '+994708888888', NULL, '2022-06-24 08:36:09', '2022-06-24 08:36:09', 'Fullstack C# proqramlaşdırma kursu'),
(109, 'Kondisioner', 'admin@a.a', '+994708888888', NULL, '2022-06-24 08:41:08', '2022-06-24 08:41:08', 'Backend C# proqramlaşdırma kursu'),
(110, 'Кондиционеры', 'test@gmail.com', '+994708888888', NULL, '2022-06-24 08:50:45', '2022-06-24 08:50:45', 'Fullstack C# proqramlaşdırma kursu'),
(111, 'Kondisioner', 'dev@gmail.com', '+994708888888', NULL, '2022-06-24 08:51:35', '2022-06-24 08:51:35', 'Fullstack C# proqramlaşdırma kursu'),
(112, 'Kondisioner', 'dev@gmail.com', '+994708888888', NULL, '2022-06-24 08:52:19', '2022-06-24 08:52:19', 'Backend C# proqramlaşdırma kursu'),
(113, 'Kondisioner', 'dev@gmail.com', '+994708888888', NULL, '2022-06-24 08:53:01', '2022-06-24 08:53:01', 'Backend C# proqramlaşdırma kursu'),
(114, 'Kondisioner', 'dev@gmail.com', '+994708888888', NULL, '2022-06-24 08:55:39', '2022-06-24 08:55:39', 'Backend C# proqramlaşdırma kursu'),
(115, 'Kondisioner', 'dev@gmail.com', '+994708888888', NULL, '2022-06-24 09:09:31', '2022-06-24 09:09:31', 'Fullstack C# proqramlaşdırma kursu'),
(116, 'Kondisioner', 'dev@gmail.com', '+994708888888', NULL, '2022-06-24 09:11:02', '2022-06-24 09:11:02', 'Backend C# proqramlaşdırma kursu'),
(117, 'Kondisioner', 'firengizsariyeva77@gmail.com', '+994708888888', NULL, '2022-06-24 09:12:23', '2022-06-24 09:12:23', 'Fullstack C# proqramlaşdırma kursu'),
(118, 'Kondisioner', 'dev@gmail.com', '+994708888888', NULL, '2022-06-24 09:13:18', '2022-06-24 09:13:18', 'Backend C# proqramlaşdırma kursu'),
(119, 'Kondisioner', 'dev@gmail.com', '+994708888888', NULL, '2022-06-24 09:14:19', '2022-06-24 09:14:19', 'Backend C# proqramlaşdırma kursu'),
(120, 'Kondisioner', 'dev@gmail.com', '+994708888888', NULL, '2022-06-24 09:16:06', '2022-06-24 09:16:06', 'Backend C# proqramlaşdırma kursu'),
(121, 'Kondisioner', 'dev@gmail.com', '+994708888888', NULL, '2022-06-24 09:17:36', '2022-06-24 09:17:36', 'Backend C# proqramlaşdırma kursu'),
(122, 'Kondisioner', 'dev@gmail.com', '+994708888888', NULL, '2022-06-24 09:23:00', '2022-06-24 09:23:00', 'Backend C# proqramlaşdırma kursu'),
(123, 'turkay alizade', 'dev@gmail.com', '+994504859494', NULL, '2022-06-28 02:37:56', '2022-06-28 02:37:56', 'Backend C# proqramlaşdırma kursu'),
(124, 'Royal Nasirov', 'royalnasirov@yandex.com', '+994555564423', NULL, '2022-07-31 08:14:32', '2022-07-31 08:14:32', 'Frontend proqramlaşdırma kursu'),
(125, 'Royal Nasirov', 'royalnasirov@yandex.com', '+994555564423', NULL, '2022-07-31 08:14:43', '2022-07-31 08:14:43', 'Frontend proqramlaşdırma kursu'),
(126, 'Afər Məhərrəmova', 'meherremova.afer2003@gmail.com', '+994702820065', NULL, '2022-08-08 11:51:40', '2022-08-08 11:51:40', 'Backend C# proqramlaşdırma kursu'),
(127, 'Ceyran Ağayeva', 'agayevaceyran10@gmail.com', '+994504166332', NULL, '2022-08-17 21:00:31', '2022-08-17 21:00:31', 'Network Adminstration (Cisco CCNA)'),
(128, 'Səid Əsədov', 'asadovsaid2323@gmail.com', '+994513615040', NULL, '2022-08-23 04:47:53', '2022-08-23 04:47:53', 'Frontend proqramlaşdırma kursu'),
(129, 'Namiq Quliyev', 'quliyevnamiq8@gmail.com', '+994773337479', NULL, '2022-08-26 09:51:41', '2022-08-26 09:51:41', 'Fullstack proqramlaşdırma kursu (MERN)'),
(130, 'Seferov Emil', 'mr.jobmail@mail.ru', '+994556812335', NULL, '2022-08-26 20:43:50', '2022-08-26 20:43:50', 'Frontend proqramlaşdırma kursu'),
(131, 'Məhəmməd Sadıqlı', 'sadiqlimehemmed@gmail.com', '+994552902552', NULL, '2022-08-27 19:39:06', '2022-08-27 19:39:06', 'Mobil proqramlaşdırma kursu. React Native'),
(132, 'Məhəmməd Sadıqlı', 'sadiqlimehemmed@gmail.com', '+994552902552', NULL, '2022-08-27 19:39:18', '2022-08-27 19:39:18', 'Mobil proqramlaşdırma kursu. React Native'),
(133, 'Orkhan Atakishiyev', 'orkhan1133@gmail.com', '+994555051123', NULL, '2022-08-29 11:50:02', '2022-08-29 11:50:02', 'Fullstack proqramlaşdırma kursu (MERN)'),
(134, 'Sultan Tagiyev', 'sultantagiyev98@gmail.com', '+994556077500', NULL, '2022-09-01 06:13:31', '2022-09-01 06:13:31', 'Fullstack proqramlaşdırma kursu (MERN)'),
(135, 'İbrahimova Ruqiyyə', 'rugiyya.ibrahimova.95@gmail.com', '+994508450165', NULL, '2022-09-02 04:59:42', '2022-09-02 04:59:42', 'Frontend proqramlaşdırma kursu'),
(136, 'Vüqar Aliyev', '0556201288v@gmail.com', '+994556201288', NULL, '2022-09-02 13:11:32', '2022-09-02 13:11:32', 'Frontend proqramlaşdırma kursu'),
(137, 'Sona Ahmadkhanova', 'sona131112@gmail.com', '+994506885988', NULL, '2022-09-04 12:42:03', '2022-09-04 12:42:03', 'Frontend proqramlaşdırma kursu'),
(138, 'Sona Ahmadkhanova', 'sona131112@gmail.com', '+994506885988', NULL, '2022-09-04 12:43:08', '2022-09-04 12:43:08', 'Backend proqramlaşdırma kursu (Node.js)'),
(139, 'Sona Ahmadkhanova', 'sona131112@gmail.com', '+994506885988', NULL, '2022-09-04 12:43:42', '2022-09-04 12:43:42', 'Backend proqramlaşdırma kursu (Node.js)'),
(140, 'Sona Ahmadkhanova', 'sona131112@gmail.com', '+994557267610', NULL, '2022-09-04 13:03:25', '2022-09-04 13:03:25', 'Backend proqramlaşdırma kursu (Node.js)'),
(141, 'Fatime Haciyeva', 'qabil56@gmail.com', '+994552408201', NULL, '2022-09-13 23:59:51', '2022-09-13 23:59:51', 'Frontend proqramlaşdırma kursu'),
(142, 'Əsədova Rəna', 'renasahbazova27@gmail.com', '+994503465919', NULL, '2022-09-15 03:35:58', '2022-09-15 03:35:58', 'Frontend proqramlaşdırma kursu'),
(143, 'Aytən Məmmədova', 'hanalola57@gmail.com', '±994517483508', NULL, '2022-09-22 02:46:08', '2022-09-22 02:46:08', 'Network Adminstration (Cisco CCNA)'),
(144, 'Xumar Babazadə', 'khumar.babazade@gmail.com', '+994504718419', NULL, '2022-09-22 16:12:42', '2022-09-22 16:12:42', 'Game Development kursu'),
(145, 'Casim Babazadə', 'casimbabazade@gmail.com', '+994514096676', NULL, '2022-09-27 13:24:34', '2022-09-27 13:24:34', 'Frontend proqramlaşdırma kursu'),
(146, 'M\'mm\'dov Amin Az\'r o]lu', 'azer_stat@rambler.ru', '+994503114854', NULL, '2022-09-28 08:26:28', '2022-09-28 08:26:28', 'Frontend proqramlaşdırma kursu'),
(147, 'Məmmədov Amin Azər oğlu', 'azer_stat@rambler.ru', '+994503114854', NULL, '2022-09-28 08:28:02', '2022-09-28 08:28:02', 'Frontend proqramlaşdırma kursu'),
(148, 'Alim Calladov', 'alimlizeyd@gmail.com', '+994505364606', NULL, '2022-10-01 03:40:03', '2022-10-01 03:40:03', 'Frontend proqramlaşdırma kursu'),
(149, 'Elşən Sultəliyev', 'sxgame39@gmail.com', '+994508019250', NULL, '2022-10-03 04:57:00', '2022-10-03 04:57:00', 'Frontend proqramlaşdırma kursu');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seo_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `page` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `seos`
--

INSERT INTO `seos` (`id`, `seo_description`, `page`, `created_at`, `updated_at`) VALUES
(1, '<p>JED Academy - \"JedAi\" veb studiyasının təhsil mərkəzidir. Burada siz it kurslari, proqramlaşdırma kursları və digər kurslar &uuml;zrə təhsil ala bilərsiniz. Tələbələrəmizin rahat olması &uuml;&ccedil;&uuml;n biz dərs zamanı hər bir tələbə &uuml;&ccedil;&uuml;n s&uuml;rətli,rahat komp&uuml;terlə və ayrıca iş yeri ilə təmin edirik. Web development əyani dərsləri balaca qruplarda ke&ccedil;irilir və hər tələbəyə diqqət yetirilir. Hər kursun m&uuml;əllimi &ouml;z sahəsi &uuml;zrə peşakar, b&ouml;y&uuml;k təcr&uuml;bəyə malik olan developer və ya digər n&ouml;v m&uuml;təxəssis kimi fəaliyyat g&ouml;stərir.</p>\n<p>Front end developer olmaq istəsəniz siz həm Front end, həm Fullstack web development kurslarına qoşula bilərsiniz.&nbsp;JED Academy-də əsas dərslər web development (proqramlaşdırma kursları) &uuml;zrə ke&ccedil;irilir. Həm&ccedil;inin IT kurslari &uuml;zrədə dərslər ke&ccedil;irilir. M&uuml;əllimlərdən əlavə proqramlaşdırma dərslərində mentorda iştirak edir və tələbələrin hər hansı bir sualınız olduqda k&ouml;mək edir.</p>\n<p>Dərslərdə biz təcr&uuml;bəyə daha &ccedil;ox diqqət yetiririk və real layihələrlə işləməyi &ouml;yrədirik. Hər bir tələbəmiz it kurslari və ya proqramlaşdırma kursları bitirdikdən sonra b&uuml;t&uuml;n &ouml;lkə ərazisində etibarlı olan və bir &ccedil;ox yerli şirkətlərdə tanınan sertifikat alır.&nbsp;Proqramlaşdırma kursları və it kurslari qiymeti ilə maraqlanırsınızsa o zaman bizə yazın və ya zəng edin. It kurslari, it kurslari qiymeti, front end developer, web development, developer, proqramlaşdırma kursları</p>', 'Kurslar', '2022-06-09 03:27:00', '2022-07-08 08:25:08'),
(2, '<p>Bakida proqramlasdirma kurslari axtarırsız?</p>\n<p>JedAi veb studiyası sizə JED Academy təhsil mərkəzində proqramlaşdırma kursları təklif edir. Proqramlaşdırma kursları &uuml;zrə siz n&ouml;vbəti istiqamətlər &uuml;zrə təhsil ala bilərsiniz: Frontend proqramlaşdırma, Backend proqramlaşdırma və Fullstack proqramlaşdırma kursları. Programlasdirma kurslari təşkil etməyimiz məqsədi, gələn hər kəsə bizim proqramlaşdırma sahəsində bilik və təcr&uuml;bəmizi &ouml;t&uuml;rməkdi.</p>\n<p>Biz hər bir tələbəyə diqqət yetirmək istəyirik, ona g&ouml;rə də ki&ccedil;ik qruplarda dərslər ke&ccedil;iririk. \"JED Academy\"-nin digər kurslardan fərqi budur ki, biz illərdir veb studiyamızda (JedAi veb studiyasında) veb proqramlaşdırma sahəsində topladığımız real praktik təcr&uuml;bəni tələbələrimizə &ouml;t&uuml;r&uuml;r&uuml;k.</p>\n<p>\"JED Academy\"-də proqramlaşdırma kurslarını bitirən mənzunlar, \"JedAi\" veb studiyasında 2 aylıq təcr&uuml;bə proqramına qatılma imkanını əldə edilər. Tələbələrimiz &ouml;zləri ilə noutbuk gətirmir, \"JED Academy\" &ouml;z tələbələrini dərs zamanı s&uuml;rətli və m&uuml;asir kompyuterlərlə təmin edir. \"JED Academy\" - ən yaxşı proqramlaşdırma kursları Bakida!</p>\n<p>proqramlaşdırma kursları, proqramlaşdırma, programlasdirma kurslari, bakida proqramlasdirma kurslari, proqramlasdirma dilleri kurslari, it kursları, it kurslari</p>', 'Homepage', '2022-06-13 08:24:00', '2022-07-14 09:58:40');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_rows', 'display_name', 22, 'en', 'Id', '2022-06-07 02:48:54', '2022-06-07 02:48:54'),
(2, 'data_rows', 'display_name', 23, 'en', 'Aid Olduğu Kurs', '2022-06-07 02:48:54', '2022-06-07 02:48:54'),
(3, 'data_rows', 'display_name', 24, 'en', 'Kursun Adı', '2022-06-07 02:48:54', '2022-06-07 02:48:54'),
(4, 'data_rows', 'display_name', 25, 'en', 'Təsvir', '2022-06-07 02:48:54', '2022-06-07 02:48:54'),
(5, 'data_rows', 'display_name', 26, 'en', 'Qısa Təsvir', '2022-06-07 02:48:54', '2022-06-07 02:48:54'),
(6, 'data_rows', 'display_name', 27, 'en', 'Aylar', '2022-06-07 02:48:54', '2022-06-07 02:48:54'),
(7, 'data_rows', 'display_name', 28, 'en', 'Online Qiymət', '2022-06-07 02:48:54', '2022-06-07 02:48:54'),
(8, 'data_rows', 'display_name', 29, 'en', 'Əyani Qiymət', '2022-06-07 02:48:54', '2022-06-07 02:48:54'),
(9, 'data_rows', 'display_name', 30, 'en', 'Endirim', '2022-06-07 02:48:54', '2022-06-07 02:48:54'),
(10, 'data_rows', 'display_name', 31, 'en', 'Şəkil', '2022-06-07 02:48:54', '2022-06-07 02:48:54'),
(11, 'data_rows', 'display_name', 32, 'en', 'Meta Title', '2022-06-07 02:48:54', '2022-06-07 02:48:54'),
(12, 'data_rows', 'display_name', 33, 'en', 'Meta Description', '2022-06-07 02:48:54', '2022-06-07 02:48:54'),
(13, 'data_rows', 'display_name', 34, 'en', 'Meta Keyword', '2022-06-07 02:48:54', '2022-06-07 02:48:54'),
(14, 'data_rows', 'display_name', 35, 'en', 'Created At', '2022-06-07 02:48:54', '2022-06-07 02:48:54'),
(15, 'data_rows', 'display_name', 36, 'en', 'Updated At', '2022-06-07 02:48:54', '2022-06-07 02:48:54'),
(16, 'data_rows', 'display_name', 37, 'en', 'courses', '2022-06-07 02:48:54', '2022-06-07 02:48:54'),
(17, 'data_types', 'display_name_singular', 4, 'en', 'Course', '2022-06-07 02:48:54', '2022-06-07 02:48:54'),
(18, 'data_types', 'display_name_plural', 4, 'en', 'Courses', '2022-06-07 02:48:54', '2022-06-07 02:48:54'),
(19, 'data_rows', 'display_name', 22, 'ru', 'Id', '2022-06-07 02:49:59', '2022-06-07 02:49:59'),
(20, 'data_rows', 'display_name', 23, 'ru', 'Aid Olduğu Kurs', '2022-06-07 02:49:59', '2022-06-07 02:49:59'),
(21, 'data_rows', 'display_name', 24, 'ru', 'Kursun Adı', '2022-06-07 02:49:59', '2022-06-07 02:49:59'),
(22, 'data_rows', 'display_name', 25, 'ru', 'Təsvir', '2022-06-07 02:49:59', '2022-06-07 02:49:59'),
(23, 'data_rows', 'display_name', 26, 'ru', 'Qısa Təsvir', '2022-06-07 02:49:59', '2022-06-07 02:49:59'),
(24, 'data_rows', 'display_name', 27, 'ru', 'Aylar', '2022-06-07 02:49:59', '2022-06-07 02:49:59'),
(25, 'data_rows', 'display_name', 28, 'ru', 'Online Qiymət', '2022-06-07 02:49:59', '2022-06-07 02:49:59'),
(26, 'data_rows', 'display_name', 29, 'ru', 'Əyani Qiymət', '2022-06-07 02:49:59', '2022-06-07 02:49:59'),
(27, 'data_rows', 'display_name', 30, 'ru', 'Endirim', '2022-06-07 02:49:59', '2022-06-07 02:49:59'),
(28, 'data_rows', 'display_name', 31, 'ru', 'Şəkil', '2022-06-07 02:49:59', '2022-06-07 02:49:59'),
(29, 'data_rows', 'display_name', 32, 'ru', 'Meta Title', '2022-06-07 02:49:59', '2022-06-07 02:49:59'),
(30, 'data_rows', 'display_name', 33, 'ru', 'Meta Description', '2022-06-07 02:49:59', '2022-06-07 02:49:59'),
(31, 'data_rows', 'display_name', 34, 'ru', 'Meta Keyword', '2022-06-07 02:49:59', '2022-06-07 02:49:59'),
(32, 'data_rows', 'display_name', 35, 'ru', 'Created At', '2022-06-07 02:49:59', '2022-06-07 02:49:59'),
(33, 'data_rows', 'display_name', 36, 'ru', 'Updated At', '2022-06-07 02:49:59', '2022-06-07 02:49:59'),
(34, 'data_rows', 'display_name', 37, 'ru', 'courses', '2022-06-07 02:49:59', '2022-06-07 02:49:59'),
(35, 'data_types', 'display_name_singular', 4, 'ru', 'Course', '2022-06-07 02:49:59', '2022-06-07 02:49:59'),
(36, 'data_types', 'display_name_plural', 4, 'ru', 'Courses', '2022-06-07 02:49:59', '2022-06-07 02:49:59'),
(41, 'courses', 'name', 3, 'en', 'Frontend proqramlaşdırma kursu', '2022-06-07 02:54:03', '2022-06-07 02:54:03'),
(42, 'courses', 'name', 3, 'ru', 'Frontend proqramlaşdırma kursu', '2022-06-07 02:54:03', '2022-06-07 02:54:03'),
(43, 'courses', 'description', 3, 'en', 'HTML, CSS, SASS, Bootstrap, Javascript, JQuery, TypeScript, React.JS', '2022-06-07 02:54:03', '2022-06-07 02:54:03'),
(44, 'courses', 'description', 3, 'ru', 'HTML, CSS, SASS, Bootstrap, Javascript, JQuery, TypeScript, React.JS', '2022-06-07 02:54:03', '2022-06-07 02:54:03'),
(45, 'courses', 'short_description', 3, 'en', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been', '2022-06-07 02:54:03', '2022-06-07 02:54:03'),
(46, 'courses', 'short_description', 3, 'ru', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been', '2022-06-07 02:54:03', '2022-06-07 02:54:03'),
(47, 'courses', 'name', 4, 'en', 'Backend proqramlaşdırma kursu', '2022-06-07 02:54:34', '2022-06-07 02:54:34'),
(48, 'courses', 'name', 4, 'ru', 'Backend proqramlaşdırma kursu', '2022-06-07 02:54:34', '2022-06-07 02:54:34'),
(49, 'courses', 'description', 4, 'en', 'C#, NetFramework, SQL, MSSQL, ORM, ASP.NET, WebAPI', '2022-06-07 02:54:34', '2022-06-07 02:54:34'),
(50, 'courses', 'description', 4, 'ru', 'C#, NetFramework, SQL, MSSQL, ORM, ASP.NET, WebAPI', '2022-06-07 02:54:34', '2022-06-07 02:54:34'),
(51, 'courses', 'short_description', 4, 'en', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been', '2022-06-07 02:54:34', '2022-06-07 02:54:34'),
(52, 'courses', 'short_description', 4, 'ru', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been', '2022-06-07 02:54:34', '2022-06-07 02:54:34'),
(65, 'courses', 'name', 7, 'en', 'Network Administration kursu', '2022-06-07 02:59:48', '2022-06-07 02:59:48'),
(66, 'courses', 'name', 7, 'ru', 'Network Administration kursu', '2022-06-07 02:59:48', '2022-06-07 02:59:48'),
(67, 'courses', 'description', 7, 'en', 'HTML, CSS, SASS, Bootstrap, Javascript, JQuery, TypeScript, React.JS', '2022-06-07 02:59:48', '2022-06-07 02:59:48'),
(68, 'courses', 'description', 7, 'ru', 'HTML, CSS, SASS, Bootstrap, Javascript, JQuery, TypeScript, React.JS', '2022-06-07 02:59:48', '2022-06-07 02:59:48'),
(69, 'courses', 'short_description', 7, 'en', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been', '2022-06-07 02:59:48', '2022-06-07 02:59:48'),
(70, 'courses', 'short_description', 7, 'ru', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been', '2022-06-07 02:59:48', '2022-06-07 02:59:48'),
(71, 'courses', 'name', 8, 'en', 'Network Adminstrator', '2022-06-07 03:36:40', '2022-06-07 03:36:40'),
(72, 'courses', 'name', 8, 'ru', 'Network Adminstrator ru', '2022-06-07 03:36:40', '2022-06-14 02:30:32'),
(73, 'courses', 'description', 8, 'en', 'lorem ipsum', '2022-06-07 03:36:40', '2022-06-07 03:36:40'),
(74, 'courses', 'description', 8, 'ru', 'lorem ipsum', '2022-06-07 03:36:40', '2022-06-07 03:36:40'),
(75, 'courses', 'short_description', 8, 'en', 'lorem upsum', '2022-06-07 03:36:40', '2022-06-07 03:36:40'),
(76, 'courses', 'short_description', 8, 'ru', 'lorem ipsum', '2022-06-07 03:36:40', '2022-06-07 03:36:40'),
(77, 'programs', 'months', 1, 'en', '1-ci Ay', '2022-06-08 07:29:37', '2022-06-08 07:29:37'),
(78, 'programs', 'months', 1, 'ru', '1-ci Ay ru', '2022-06-08 07:29:37', '2022-06-08 07:29:37'),
(79, 'programs', 'program', 1, 'en', '<ul>\n<li>Php oyrenmek imkani</li>\n<li>Laravel 8.1</li>\n<li>Mysql</li>\n</ul>', '2022-06-08 07:29:37', '2022-06-08 07:29:37'),
(80, 'programs', 'program', 1, 'ru', '<ul>\n<li>Php oyrenmek imkani</li>\n<li>Laravel 8.1</li>\n<li>Mysql</li>\n</ul>\n<p>&nbsp;</p>', '2022-06-08 07:29:37', '2022-06-08 07:29:37'),
(81, 'data_rows', 'display_name', 38, 'en', 'Id', '2022-06-08 07:29:54', '2022-06-08 07:29:54'),
(82, 'data_rows', 'display_name', 39, 'en', 'Courses Id', '2022-06-08 07:29:54', '2022-06-08 07:29:54'),
(83, 'data_rows', 'display_name', 40, 'en', 'Ay', '2022-06-08 07:29:54', '2022-06-08 07:29:54'),
(84, 'data_rows', 'display_name', 41, 'en', 'Dərs Proqramı', '2022-06-08 07:29:54', '2022-06-08 07:29:54'),
(85, 'data_rows', 'display_name', 42, 'en', 'Created At', '2022-06-08 07:29:54', '2022-06-08 07:29:54'),
(86, 'data_rows', 'display_name', 43, 'en', 'Updated At', '2022-06-08 07:29:54', '2022-06-08 07:29:54'),
(87, 'data_rows', 'display_name', 44, 'en', 'courses', '2022-06-08 07:29:54', '2022-06-08 07:29:54'),
(88, 'data_types', 'display_name_singular', 6, 'en', 'Program', '2022-06-08 07:29:54', '2022-06-08 07:29:54'),
(89, 'data_types', 'display_name_plural', 6, 'en', 'Programs', '2022-06-08 07:29:54', '2022-06-08 07:29:54'),
(90, 'programs', 'months', 2, 'en', '2-ci Ay', '2022-06-09 01:42:41', '2022-06-09 01:42:41'),
(91, 'seos', 'seo_description', 1, 'en', 'sdsd', '2022-06-09 03:27:25', '2022-06-09 03:27:25'),
(92, 'seos', 'seo_description', 1, 'ru', 'sdsd', '2022-06-09 03:27:25', '2022-06-09 03:27:25'),
(93, 'data_rows', 'display_name', 51, 'en', 'Seo Description', '2022-06-09 03:32:16', '2022-06-09 03:32:16'),
(94, 'data_rows', 'display_name', 52, 'en', 'Thumbnail', '2022-06-09 03:32:16', '2022-06-09 03:32:16'),
(95, 'data_rows', 'display_name', 53, 'en', 'Image Attribute', '2022-06-09 03:32:16', '2022-06-09 03:32:16'),
(96, 'data_rows', 'display_name', 54, 'en', 'Thumbnail Attribute', '2022-06-09 03:32:16', '2022-06-09 03:32:16'),
(100, 'data_rows', 'display_name', 51, 'ru', 'Seo Description', '2022-06-13 02:02:42', '2022-06-13 02:02:42'),
(101, 'data_rows', 'display_name', 52, 'ru', 'Thumbnail', '2022-06-13 02:02:42', '2022-06-13 02:02:42'),
(102, 'data_rows', 'display_name', 53, 'ru', 'Image Attribute', '2022-06-13 02:02:42', '2022-06-13 02:02:42'),
(103, 'data_rows', 'display_name', 54, 'ru', 'Thumbnail Attribute', '2022-06-13 02:02:42', '2022-06-13 02:02:42'),
(104, 'data_rows', 'display_name', 68, 'en', 'Programlar', '2022-06-13 02:02:42', '2022-06-13 02:02:42'),
(114, 'courses', 'seo_description', 8, 'en', 'netvork-en', '2022-06-13 04:36:12', '2022-06-14 02:25:06'),
(115, 'programs', 'months', 2, 'ru', '2-ci Ay', '2022-06-13 06:07:43', '2022-06-13 06:07:43'),
(116, 'programs', 'program', 2, 'en', '<ul>\n<li>mysql</li>\n<li>php</li>\n<li>laravel</li>\n</ul>', '2022-06-13 06:07:43', '2022-06-13 06:07:43'),
(117, 'programs', 'program', 2, 'ru', '<ul>\n<li>mysql</li>\n<li>php</li>\n<li>laravel</li>\n</ul>', '2022-06-13 06:12:22', '2022-06-13 06:12:22'),
(118, 'programs', 'months', 3, 'en', '3-cü ay', '2022-06-13 06:12:28', '2022-06-13 06:12:28'),
(119, 'programs', 'program', 3, 'en', '<ul>\n<li>\n<p>Garbage collection, Exception handling</p>\n</li>\n<li>\n<p>OOP in JS. Propotypes. Inheritance. Native prototypes. Classes</p>\n</li>\n<li>\n<p>JSON format. AJAX. XHR</p>\n</li>\n<li>\n<p>Cookies, fetch, axios, Promises, async-await</p>\n</li>\n<li>\n<p>JOverview of Js frameworks. React.JS. JSX. Virtual DOM</p>\n</li>\n<li>\n<p>React Component. Functional and Class components</p>\n</li>\n<li>\n<p>React hooks. React Forms</p>\n</li>\n</ul>', '2022-06-13 06:12:28', '2022-06-13 06:12:28'),
(120, 'programs', 'months', 4, 'en', '4-cü ay', '2022-06-13 06:12:34', '2022-06-13 06:12:34'),
(121, 'programs', 'program', 4, 'en', '<ul>\n<li>\n<p>State management. Context-Api</p>\n</li>\n<li>\n<p>Flux architecture</p>\n</li>\n<li>\n<p>Redux</p>\n</li>\n<li>\n<p>Middlewares, fetching data from server, async actions with redux-thunk</p>\n</li>\n<li>\n<p>Using api call in react. Fetch. Axios</p>\n</li>\n<li>\n<p>Unit tests</p>\n</li>\n</ul>', '2022-06-13 06:12:34', '2022-06-13 06:12:34'),
(122, 'programs', 'months', 5, 'en', '5-ci ay', '2022-06-13 06:12:42', '2022-06-13 06:12:42'),
(123, 'programs', 'program', 5, 'en', '<ul>\n<li>\n<p>Introduction to .Net languages. CLR. Intermediate language. Compiling process</p>\n</li>\n<li>\n<p>Overview of C#, Literals, Variables. Data Types</p>\n</li>\n<li>\n<p>Operators, checked and unchecked operators, Expressions, Functions</p>\n</li>\n<li>\n<p>Class, Objects, Constructors, Inheritance, Properties</p>\n</li>\n<li>\n<p>Encapsulation, Polymorphism, Interface, abstract class</p>\n</li>\n<li>\n<p>Arrays, Array Class, Array List, Structure, Enumerations</p>\n</li>\n</ul>', '2022-06-13 06:12:42', '2022-06-13 06:12:42'),
(124, 'programs', 'months', 24, 'en', '3-cü ay', '2022-06-13 06:44:19', '2022-06-13 06:44:19'),
(125, 'programs', 'program', 24, 'en', '<ul>\n<li>Working with events. Attaching events to DOM nodes</li>\n<li>Working with timers, setTimeout and setInterval, localStorage</li>\n<li>Destructuring, Closures,&nbsp;Garbage collection, Exception handling</li>\n<li>OOP in JS. Propotypes. Inheritance. Native prototypes. Classes.</li>\n<li>JSON format. AJAX. XHR.&nbsp;</li>\n<li>Cookies, fetch, axios, Promises, async-await</li>\n<li>Step Project (using HTML5, CSS3, JS basics)</li>\n<li>Step Project (using advanced HTML5, CSS3 and Js)</li>\n</ul>', '2022-06-13 06:44:19', '2022-06-13 06:44:19'),
(126, 'programs', 'months', 23, 'en', '2-ci ay', '2022-06-13 06:44:25', '2022-06-13 06:44:25'),
(127, 'programs', 'program', 23, 'en', '<ul>\n<li>Introduction to programming. JavaScript basics</li>\n<li>Data types, primitives, type casting.&nbsp;</li>\n<li>Operators, logical operators, switch</li>\n<li>Loops</li>\n<li>Functions, scope, debug</li>\n<li>Objects</li>\n<li>Arrays, Set, Map</li>\n<li>Working with DOM.&nbsp;</li>\n</ul>', '2022-06-13 06:44:25', '2022-06-13 06:44:25'),
(128, 'programs', 'months', 22, 'en', '1-ci ay', '2022-06-13 06:44:33', '2022-06-13 06:44:33'),
(129, 'programs', 'program', 22, 'en', '<ul>\n<li>Front-end basics</li>\n<li>Emmet, Html5-CSS3 basics</li>\n<li>GIT,&nbsp;HTML forms</li>\n<li>Flexbox, Grid Layout</li>\n<li>CSS animation, parallax</li>\n<li>CSS preprocessors. SASS. CSS methodologies. BEM</li>\n<li>Pixel perfect, Adaptive and responsive, cross-browser</li>\n<li>Bootstrap 5</li>\n</ul>', '2022-06-13 06:44:33', '2022-06-13 06:44:33'),
(130, 'courses', 'seo_description', 4, 'en', '<p>Backend proqramlaşdırma kursu</p>', '2022-06-13 07:11:19', '2022-08-16 09:27:36'),
(133, 'courses', 'seo_description', 8, 'ru', 'netvork-ru', '2022-06-13 07:12:23', '2022-06-14 02:25:31'),
(135, 'courses', 'seo_description', 3, 'en', 'frontend', '2022-06-13 08:12:51', '2022-06-13 08:12:51'),
(137, 'courses', 'seo_description', 4, 'ru', '<p>Backend proqramlaşdırma kursu</p>', '2022-06-13 08:13:13', '2022-08-16 09:27:36'),
(138, 'categories', 'name', 1, 'en', 'Proqramlaşdırma kursu', '2022-06-13 08:18:26', '2022-06-13 08:18:26'),
(183, 'derslers', 'dersler', 23, 'en', 'HTML', '2022-06-14 02:25:44', '2022-06-14 02:25:44'),
(184, 'derslers', 'dersler', 23, 'ru', 'HTML', '2022-06-14 02:25:44', '2022-06-14 02:25:44'),
(185, 'derslers', 'dersler', 24, 'en', 'CSS', '2022-06-14 02:25:57', '2022-06-14 02:25:57'),
(186, 'derslers', 'dersler', 24, 'ru', 'CSS', '2022-06-14 02:25:57', '2022-06-14 02:25:57'),
(187, 'derslers', 'dersler', 25, 'en', 'SASS', '2022-06-14 02:26:12', '2022-06-14 02:26:12'),
(188, 'derslers', 'dersler', 25, 'ru', 'SASS', '2022-06-14 02:26:12', '2022-06-14 02:26:12'),
(189, 'derslers', 'dersler', 26, 'en', 'Bootstrap', '2022-06-14 02:26:33', '2022-06-14 02:26:33'),
(190, 'derslers', 'dersler', 26, 'ru', 'Bootstrap', '2022-06-14 02:26:33', '2022-06-14 02:26:33'),
(191, 'derslers', 'dersler', 27, 'en', 'Javascript', '2022-06-14 02:27:02', '2022-06-14 02:27:02'),
(192, 'derslers', 'dersler', 27, 'ru', 'Javascript', '2022-06-14 02:27:02', '2022-06-14 02:27:02'),
(195, 'derslers', 'dersler', 29, 'en', 'TypeScript', '2022-06-14 02:27:23', '2022-06-14 02:27:23'),
(196, 'derslers', 'dersler', 29, 'ru', 'TypeScript', '2022-06-14 02:27:23', '2022-06-14 02:27:23'),
(197, 'derslers', 'dersler', 30, 'en', 'React.JS', '2022-06-14 02:27:32', '2022-06-14 02:27:32'),
(198, 'derslers', 'dersler', 30, 'ru', 'React.JS', '2022-06-14 02:27:32', '2022-06-14 02:27:32'),
(239, 'derslers', 'dersler', 51, 'en', 'Internetworking', '2022-06-14 02:40:55', '2022-06-14 02:40:55'),
(240, 'derslers', 'dersler', 51, 'ru', 'Internetworking', '2022-06-14 02:40:55', '2022-06-14 02:40:55'),
(241, 'derslers', 'dersler', 52, 'en', 'OSI & TCP & IP', '2022-06-14 02:41:14', '2022-06-14 02:41:14'),
(242, 'derslers', 'dersler', 52, 'ru', 'OSI & TCP & IP', '2022-06-14 02:41:14', '2022-06-14 02:41:14'),
(243, 'derslers', 'dersler', 53, 'en', 'Ethernet', '2022-06-14 02:41:24', '2022-06-14 02:41:24'),
(244, 'derslers', 'dersler', 53, 'ru', 'Ethernet', '2022-06-14 02:41:24', '2022-06-14 02:41:24'),
(245, 'derslers', 'dersler', 54, 'en', 'Cisco IOS', '2022-06-14 02:41:36', '2022-06-14 02:41:36'),
(246, 'derslers', 'dersler', 54, 'ru', 'Cisco IOS', '2022-06-14 02:41:36', '2022-06-14 02:41:36'),
(247, 'derslers', 'dersler', 55, 'en', 'IP', '2022-06-14 02:41:46', '2022-06-14 02:41:46'),
(248, 'derslers', 'dersler', 55, 'ru', 'IP', '2022-06-14 02:41:46', '2022-06-14 02:41:46'),
(249, 'derslers', 'dersler', 56, 'en', 'Static Routing & Switch Interfaces', '2022-06-14 02:42:00', '2022-06-14 02:42:00'),
(250, 'derslers', 'dersler', 56, 'ru', 'Static Routing & Switch Interfaces', '2022-06-14 02:42:00', '2022-06-14 02:42:00'),
(251, 'derslers', 'dersler', 57, 'en', 'Subnnetting', '2022-06-14 02:42:26', '2022-06-14 02:42:26'),
(252, 'derslers', 'dersler', 57, 'ru', 'Subnnetting', '2022-06-14 02:42:26', '2022-06-14 02:42:26'),
(253, 'derslers', 'dersler', 58, 'en', 'Vlan', '2022-06-14 02:42:42', '2022-06-14 02:42:42'),
(254, 'derslers', 'dersler', 58, 'ru', 'Vlan', '2022-06-14 02:42:42', '2022-06-14 02:42:42'),
(255, 'derslers', 'dersler', 59, 'en', 'Dynamic Routing', '2022-06-14 02:46:37', '2022-06-14 02:46:37'),
(256, 'derslers', 'dersler', 59, 'ru', 'Dynamic Routing', '2022-06-14 02:46:37', '2022-06-14 02:46:37'),
(257, 'derslers', 'dersler', 60, 'en', 'RIP & EIGRP', '2022-06-14 02:46:49', '2022-06-14 02:46:49'),
(258, 'derslers', 'dersler', 60, 'ru', 'RIP & EIGRP', '2022-06-14 02:46:49', '2022-06-14 02:46:49'),
(259, 'derslers', 'dersler', 61, 'en', 'OSPF', '2022-06-14 02:47:06', '2022-06-14 02:47:06'),
(260, 'derslers', 'dersler', 61, 'ru', 'OSPF', '2022-06-14 02:47:06', '2022-06-14 02:47:06'),
(261, 'derslers', 'dersler', 62, 'en', 'IPv6', '2022-06-14 02:47:18', '2022-06-14 02:47:18'),
(262, 'derslers', 'dersler', 62, 'ru', 'IPv6', '2022-06-14 02:47:18', '2022-06-14 02:47:18'),
(263, 'derslers', 'dersler', 63, 'en', 'TCP & UDP', '2022-06-14 02:47:30', '2022-06-14 02:47:30'),
(264, 'derslers', 'dersler', 63, 'ru', 'TCP & UDP', '2022-06-14 02:47:30', '2022-06-14 02:47:30'),
(265, 'derslers', 'dersler', 64, 'en', 'FHRP', '2022-06-14 02:48:25', '2022-06-14 02:48:25'),
(266, 'derslers', 'dersler', 64, 'ru', 'FHRP', '2022-06-14 02:48:25', '2022-06-14 02:48:25'),
(267, 'derslers', 'dersler', 65, 'en', 'ACL', '2022-06-14 02:48:35', '2022-06-14 02:48:35'),
(268, 'derslers', 'dersler', 65, 'ru', 'ACL', '2022-06-14 02:48:35', '2022-06-14 02:48:35'),
(269, 'derslers', 'dersler', 66, 'en', 'CDP & LLDP', '2022-06-14 02:50:27', '2022-06-14 02:50:27'),
(270, 'derslers', 'dersler', 66, 'ru', 'CDP & LLDP', '2022-06-14 02:50:27', '2022-06-14 02:50:27'),
(271, 'derslers', 'dersler', 67, 'en', 'NTP & SNMP', '2022-06-14 02:50:42', '2022-06-14 02:50:42'),
(272, 'derslers', 'dersler', 67, 'ru', 'NTP & SNMP', '2022-06-14 02:50:42', '2022-06-14 02:50:42'),
(273, 'derslers', 'dersler', 68, 'en', 'DNS & DHCP', '2022-06-14 02:50:53', '2022-06-14 02:50:53'),
(274, 'derslers', 'dersler', 68, 'ru', 'DNS & DHCP', '2022-06-14 02:50:53', '2022-06-14 02:50:53'),
(275, 'derslers', 'dersler', 69, 'en', 'SSH & TELNET', '2022-06-14 02:51:04', '2022-06-14 02:51:04'),
(276, 'derslers', 'dersler', 69, 'ru', 'SSH & TELNET', '2022-06-14 02:51:04', '2022-06-14 02:51:04'),
(277, 'derslers', 'dersler', 70, 'en', 'FTP & TFTP', '2022-06-14 02:51:14', '2022-06-14 02:51:14'),
(278, 'derslers', 'dersler', 70, 'ru', 'FTP & TFTP', '2022-06-14 02:51:14', '2022-06-14 02:51:14'),
(279, 'derslers', 'dersler', 71, 'en', 'NAT', '2022-06-14 02:51:25', '2022-06-14 02:51:25'),
(280, 'derslers', 'dersler', 71, 'ru', 'NAT', '2022-06-14 02:51:25', '2022-06-14 02:51:25'),
(281, 'derslers', 'dersler', 72, 'en', 'QOS', '2022-06-14 02:51:36', '2022-06-14 02:51:36'),
(282, 'derslers', 'dersler', 72, 'ru', 'QOS', '2022-06-14 02:51:36', '2022-06-14 02:51:36'),
(283, 'derslers', 'dersler', 73, 'en', 'Security', '2022-06-14 02:51:50', '2022-06-14 02:51:50'),
(284, 'derslers', 'dersler', 73, 'ru', 'Security', '2022-06-14 02:51:50', '2022-06-14 02:51:50'),
(285, 'derslers', 'dersler', 74, 'en', 'LAN & WAN Virtualization', '2022-06-14 02:52:01', '2022-06-14 02:52:01'),
(286, 'derslers', 'dersler', 74, 'ru', 'LAN & WAN Virtualization', '2022-06-14 02:52:01', '2022-06-14 02:52:01'),
(287, 'derslers', 'dersler', 75, 'en', 'Wireless Networks', '2022-06-14 02:52:13', '2022-06-14 02:52:13'),
(288, 'derslers', 'dersler', 75, 'ru', 'Wireless Networks', '2022-06-14 02:52:13', '2022-06-14 02:52:13'),
(289, 'derslers', 'dersler', 76, 'en', 'Network Automation', '2022-06-14 02:52:24', '2022-06-14 02:52:24'),
(290, 'derslers', 'dersler', 76, 'ru', 'Network Automation', '2022-06-14 02:52:24', '2022-06-14 02:52:24'),
(291, 'courses', 'seo_description', 3, 'ru', 'frontend', '2022-06-14 03:01:39', '2022-06-14 03:01:39'),
(292, 'seos', 'seo_description', 2, 'en', 'dfdfg', '2022-06-14 07:36:51', '2022-06-14 07:36:51'),
(293, 'data_rows', 'display_name', 63, 'en', 'Id', '2022-06-15 02:26:53', '2022-06-15 02:26:53'),
(294, 'data_rows', 'display_name', 64, 'en', 'Seo Description', '2022-06-15 02:26:53', '2022-06-15 02:26:53'),
(295, 'data_rows', 'display_name', 65, 'en', 'Page', '2022-06-15 02:26:53', '2022-06-15 02:26:53'),
(296, 'data_rows', 'display_name', 66, 'en', 'Created At', '2022-06-15 02:26:53', '2022-06-15 02:26:53'),
(297, 'data_rows', 'display_name', 67, 'en', 'Updated At', '2022-06-15 02:26:53', '2022-06-15 02:26:53'),
(298, 'data_types', 'display_name_singular', 11, 'en', 'Seo', '2022-06-15 02:26:53', '2022-06-15 02:26:53'),
(299, 'data_types', 'display_name_plural', 11, 'en', 'Seos', '2022-06-15 02:26:53', '2022-06-15 02:26:53'),
(300, 'data_rows', 'display_name', 55, 'en', 'Id', '2022-06-16 01:43:19', '2022-06-16 01:43:19'),
(301, 'data_rows', 'display_name', 56, 'en', 'Name', '2022-06-16 01:43:19', '2022-06-16 01:43:19'),
(302, 'data_rows', 'display_name', 57, 'en', 'Email', '2022-06-16 01:43:19', '2022-06-16 01:43:19'),
(303, 'data_rows', 'display_name', 58, 'en', 'Phone', '2022-06-16 01:43:19', '2022-06-16 01:43:19'),
(304, 'data_rows', 'display_name', 59, 'en', 'Courses Id', '2022-06-16 01:43:19', '2022-06-16 01:43:19'),
(305, 'data_rows', 'display_name', 60, 'en', 'Created At', '2022-06-16 01:43:19', '2022-06-16 01:43:19'),
(306, 'data_rows', 'display_name', 61, 'en', 'Updated At', '2022-06-16 01:43:19', '2022-06-16 01:43:19'),
(307, 'data_types', 'display_name_singular', 9, 'en', 'Sending Mail', '2022-06-16 01:43:19', '2022-06-16 01:43:19'),
(308, 'data_types', 'display_name_plural', 9, 'en', 'Sending Mails', '2022-06-16 01:43:19', '2022-06-16 01:43:19'),
(309, 'data_rows', 'display_name', 55, 'ru', 'Id', '2022-06-16 02:38:29', '2022-06-16 02:38:29'),
(310, 'data_rows', 'display_name', 56, 'ru', 'Name', '2022-06-16 02:38:29', '2022-06-16 02:38:29'),
(311, 'data_rows', 'display_name', 57, 'ru', 'Email', '2022-06-16 02:38:29', '2022-06-16 02:38:29'),
(312, 'data_rows', 'display_name', 58, 'ru', 'Phone', '2022-06-16 02:38:29', '2022-06-16 02:38:29'),
(313, 'data_rows', 'display_name', 59, 'ru', 'Courses Id', '2022-06-16 02:38:29', '2022-06-16 02:38:29'),
(314, 'data_rows', 'display_name', 60, 'ru', 'Created At', '2022-06-16 02:38:29', '2022-06-16 02:38:29'),
(315, 'data_rows', 'display_name', 61, 'ru', 'Updated At', '2022-06-16 02:38:29', '2022-06-16 02:38:29'),
(316, 'data_types', 'display_name_singular', 9, 'ru', 'Sending Mail', '2022-06-16 02:38:29', '2022-06-16 02:38:29'),
(317, 'data_types', 'display_name_plural', 9, 'ru', 'Sending Mails', '2022-06-16 02:38:29', '2022-06-16 02:38:29'),
(318, 'data_rows', 'display_name', 79, 'en', 'Courses Id2', '2022-06-16 02:48:30', '2022-06-16 02:48:30'),
(319, 'data_rows', 'display_name', 79, 'ru', 'Courses Id2', '2022-06-16 02:51:48', '2022-06-16 02:51:48'),
(320, 'seos', 'seo_description', 2, 'ru', 'dfdfg', '2022-06-16 02:52:54', '2022-06-16 02:52:54'),
(321, 'data_rows', 'display_name', 63, 'ru', 'Id', '2022-06-16 04:20:57', '2022-06-16 04:20:57'),
(322, 'data_rows', 'display_name', 64, 'ru', 'Seo Description', '2022-06-16 04:20:57', '2022-06-16 04:20:57'),
(323, 'data_rows', 'display_name', 65, 'ru', 'Page', '2022-06-16 04:20:57', '2022-06-16 04:20:57'),
(324, 'data_rows', 'display_name', 66, 'ru', 'Created At', '2022-06-16 04:20:57', '2022-06-16 04:20:57'),
(325, 'data_rows', 'display_name', 67, 'ru', 'Updated At', '2022-06-16 04:20:57', '2022-06-16 04:20:57'),
(326, 'data_types', 'display_name_singular', 11, 'ru', 'Seo', '2022-06-16 04:20:57', '2022-06-16 04:20:57'),
(327, 'data_types', 'display_name_plural', 11, 'ru', 'Seos', '2022-06-16 04:20:57', '2022-06-16 04:20:57'),
(328, 'data_rows', 'display_name', 81, 'en', 'Slug', '2022-06-16 08:30:34', '2022-06-16 08:30:34'),
(329, 'data_rows', 'display_name', 81, 'ru', 'Slug', '2022-06-16 08:38:16', '2022-06-16 08:38:16'),
(330, 'programs', 'months', 30, 'en', '9-cu ay', '2022-06-21 07:42:33', '2022-06-21 07:42:33'),
(331, 'programs', 'program', 30, 'en', '<ul>\n<li>Introduction to node.js frameworks. Express.js.&nbsp;Creating express app.&nbsp;Handling requests. Creating routes.&nbsp;</li>\n<li>Express route params.&nbsp;Template engines. Middleware static files.&nbsp;</li>\n<li>Writing router-level and error-handler&nbsp;middleware functions.</li>\n<li>Parsing the HTTP request body.&nbsp;Securing an ExpressJS web application with Helmet</li>\n<li>Debugging your ExpressJS web application.&nbsp;CRUD operations using ExpressJS route methods</li>\n<li>CRUD operations with Mongoose.&nbsp;Building a RESTful API to manage users with ExpressJS and Mongoose</li>\n<li>Real-Time Communication with Socket.IO and ExpressJS.&nbsp;GraphQL. GraphQL in ExpressJS. GraphQL server.&nbsp;</li>\n<li>Introduction to Containers. Docker. Dockerize express app.&nbsp;</li>\n</ul>', '2022-06-21 07:42:33', '2022-06-21 07:42:33'),
(332, 'programs', 'months', 30, 'ru', '9-cu ay', '2022-06-21 07:43:42', '2022-06-21 07:43:42'),
(333, 'programs', 'program', 30, 'ru', '<ul>\n<li>Introduction to node.js frameworks. Express.js.&nbsp;Creating express app.&nbsp;Handling requests. Creating routes.&nbsp;</li>\n<li>Express route params.&nbsp;Template engines. Middleware static files.&nbsp;</li>\n<li>Writing router-level and error-handler&nbsp;middleware functions.</li>\n<li>Parsing the HTTP request body.&nbsp;Securing an ExpressJS web application with Helmet</li>\n<li>Debugging your ExpressJS web application.&nbsp;CRUD operations using ExpressJS route methods</li>\n<li>CRUD operations with Mongoose.&nbsp;Building a RESTful API to manage users with ExpressJS and Mongoose</li>\n<li>Real-Time Communication with Socket.IO and ExpressJS.&nbsp;GraphQL. GraphQL in ExpressJS. GraphQL server.&nbsp;</li>\n<li>Introduction to Containers. Docker. Dockerize express app.&nbsp;</li>\n</ul>', '2022-06-21 07:43:42', '2022-06-21 07:43:42'),
(334, 'programs', 'months', 29, 'en', '8-ci ay', '2022-06-21 07:45:18', '2022-06-21 07:45:18'),
(335, 'programs', 'program', 29, 'en', '<ul>\n<li>Introduction to DB concepts. SQL. NoSQL. RDBMS.&nbsp;Installation of MongoDB.&nbsp;Database. Collection. Table in RDBMS.&nbsp;MongoDb documents.&nbsp;</li>\n<li>Introduction to MongoDB Shell. MongoDB clients.&nbsp;Storage engines. MongoDb locks.&nbsp;</li>\n<li>Managing and administering MongoDB.&nbsp;Creating, dropping db. query, write operations.&nbsp;</li>\n<li>MongoDB user authentication and role based commands and methods</li>\n<li>MongoDB shell methods. connection, database, collection, cursor methods.&nbsp;</li>\n<li>Data types in mongoDB. Binary JSON (BSON) data types.&nbsp;</li>\n<li>Introduction to MongoDB CRUD Operations.&nbsp;MongoDB Intermediate Concepts. Atomicity. Consistency. Replication.&nbsp;</li>\n<li>Sharded clusters. Distributed operations and queries. Introduction to MongoDB Indexes. Index types. MongoDB query selectors.&nbsp;Projection in MongoDB and Projection Operators</li>\n<li>Aggregation in MongoDB. MongoDB Data Manipulations Using MongoDB Compass.&nbsp;Transactions</li>\n</ul>', '2022-06-21 07:45:18', '2022-06-21 07:45:18'),
(336, 'programs', 'months', 29, 'ru', '8-ci ay', '2022-06-21 07:46:10', '2022-06-21 07:46:10'),
(337, 'programs', 'program', 29, 'ru', '<ul>\n<li>Introduction to DB concepts. SQL. NoSQL. RDBMS.&nbsp;Installation of MongoDB.&nbsp;Database. Collection. Table in RDBMS.&nbsp;MongoDb documents.&nbsp;</li>\n<li>Introduction to MongoDB Shell. MongoDB clients.&nbsp;Storage engines. MongoDb locks.&nbsp;</li>\n<li>Managing and administering MongoDB.&nbsp;Creating, dropping db. query, write operations.&nbsp;</li>\n<li>MongoDB user authentication and role based commands and methods</li>\n<li>MongoDB shell methods. connection, database, collection, cursor methods.&nbsp;</li>\n<li>Data types in mongoDB. Binary JSON (BSON) data types.&nbsp;</li>\n<li>Introduction to MongoDB CRUD Operations.&nbsp;MongoDB Intermediate Concepts. Atomicity. Consistency. Replication.&nbsp;</li>\n<li>Sharded clusters. Distributed operations and queries. Introduction to MongoDB Indexes. Index types. MongoDB query selectors.&nbsp;Projection in MongoDB and Projection Operators</li>\n<li>Aggregation in MongoDB. MongoDB Data Manipulations Using MongoDB Compass.&nbsp;Transactions</li>\n</ul>', '2022-06-21 07:46:10', '2022-06-21 07:46:10'),
(338, 'programs', 'months', 28, 'en', '7-ci ay', '2022-06-21 07:55:38', '2022-06-21 07:55:38'),
(339, 'programs', 'program', 28, 'en', '<ul>\n<li>Using node.js at back-side. Nodemon.&nbsp;</li>\n<li>Buffer, Module.&nbsp; Core modules. Local modules. Module export, import.&nbsp;</li>\n<li>Built-in node.js modules.&nbsp;File System. fs module. I/O operations on files. Writing a file asynchronously.</li>\n<li>Streams. Pipes.&nbsp;Serving files and data. HTML. JSON.&nbsp;url module. Working with urls. URL parts.&nbsp;</li>\n<li>Creating Web Server. http module. Sending Requests. Handling HTTP requests. Events in node.js. events module.</li>\n<li>EventEmitter object.&nbsp;Upload files using node.js. Formidable. Email sending via node.js. nodemailer.&nbsp;</li>\n<li>Basic routing in node.js.&nbsp;Basic authentication. JWT authentication.&nbsp;</li>\n<li>Unit testing using Jest. Integration testing. API testing.&nbsp;Packaging and deployment. Introduction to AWS. CI/CD.&nbsp;</li>\n</ul>', '2022-06-21 07:55:38', '2022-06-21 07:55:38'),
(340, 'programs', 'months', 28, 'ru', '7-ci ay', '2022-06-21 07:56:01', '2022-06-21 07:56:01'),
(341, 'programs', 'program', 28, 'ru', '<ul>\n<li>Using node.js at back-side. Nodemon.&nbsp;</li>\n<li>Buffer, Module.&nbsp; Core modules. Local modules. Module export, import.&nbsp;</li>\n<li>Built-in node.js modules.&nbsp;File System. fs module. I/O operations on files. Writing a file asynchronously.</li>\n<li>Streams. Pipes.&nbsp;Serving files and data. HTML. JSON.&nbsp;url module. Working with urls. URL parts.&nbsp;</li>\n<li>Creating Web Server. http module. Sending Requests. Handling HTTP requests. Events in node.js. events module.</li>\n<li>EventEmitter object.&nbsp;Upload files using node.js. Formidable. Email sending via node.js. nodemailer.&nbsp;</li>\n<li>Basic routing in node.js.&nbsp;Basic authentication. JWT authentication.&nbsp;</li>\n<li>Unit testing using Jest. Integration testing. API testing.&nbsp;Packaging and deployment. Introduction to AWS. CI/CD.&nbsp;</li>\n</ul>', '2022-06-21 07:56:01', '2022-06-21 07:56:01'),
(342, 'programs', 'months', 24, 'ru', '3-cü ay', '2022-06-21 07:57:23', '2022-06-21 07:57:23'),
(343, 'programs', 'program', 24, 'ru', '<ul>\n<li>Working with events. Attaching events to DOM nodes</li>\n<li>Working with timers, setTimeout and setInterval, localStorage</li>\n<li>Destructuring, Closures,&nbsp;Garbage collection, Exception handling</li>\n<li>OOP in JS. Propotypes. Inheritance. Native prototypes. Classes.</li>\n<li>JSON format. AJAX. XHR.&nbsp;</li>\n<li>Cookies, fetch, axios, Promises, async-await</li>\n<li>Step Project (using HTML5, CSS3, JS basics)</li>\n<li>Step Project (using advanced HTML5, CSS3 and Js)</li>\n</ul>', '2022-06-21 07:57:23', '2022-06-21 07:57:23'),
(344, 'programs', 'months', 13, 'en', '4-cü ay', '2022-06-21 08:05:56', '2022-06-21 08:05:56'),
(345, 'programs', 'program', 13, 'en', '<ul>\n<li>\n<p>Jquey Kitabxanasına giriş</p>\n</li>\n<li>\n<p>Jquery ilə hadisə triggerlərini yaratmaq</p>\n</li>\n<li>\n<p>JSON, AJAX</p>\n</li>\n<li>\n<p>REST APİ və Postman</p>\n</li>\n<li>\n<p>JavaScript-ilə funksional proqramlaşdırma</p>\n</li>\n<li>\n<p>React JS, JSX</p>\n</li>\n<li>\n<p>Handling events</p>\n</li>\n</ul>', '2022-06-21 08:05:56', '2022-06-21 08:05:56'),
(346, 'programs', 'months', 13, 'ru', '4-cü ay', '2022-06-21 08:06:57', '2022-06-21 08:06:57'),
(347, 'programs', 'program', 13, 'ru', '<ul>\n<li>\n<p>Jquey Kitabxanasına giriş</p>\n</li>\n<li>\n<p>Jquery ilə hadisə triggerlərini yaratmaq</p>\n</li>\n<li>\n<p>JSON, AJAX</p>\n</li>\n<li>\n<p>REST APİ və Postman</p>\n</li>\n<li>\n<p>JavaScript-ilə funksional proqramlaşdırma</p>\n</li>\n<li>\n<p>React JS, JSX</p>\n</li>\n<li>\n<p>Handling events</p>\n</li>\n</ul>', '2022-06-21 08:06:57', '2022-06-21 08:06:57'),
(348, 'programs', 'months', 14, 'en', '5-ci ay', '2022-06-21 08:10:08', '2022-06-21 08:10:08'),
(349, 'programs', 'program', 14, 'en', '<ul>\n<li>\n<p>Lifecycle methods</p>\n</li>\n<li>\n<p>Router, React Hooks</p>\n</li>\n<li>\n<p>Context API</p>\n</li>\n<li>\n<p>Introduction to Redux</p>\n</li>\n<li>\n<p>Reducer Logic</p>\n</li>\n<li>\n<p>Redux-Thunk</p>\n</li>\n<li>\n<p>Proyekt: Simple Ecommerce site</p>\n</li>\n</ul>', '2022-06-21 08:10:08', '2022-06-21 08:10:08'),
(350, 'programs', 'months', 14, 'ru', '5-ci ay', '2022-06-21 08:10:34', '2022-06-21 08:10:34'),
(351, 'programs', 'program', 14, 'ru', '<ul>\n<li>\n<p>Lifecycle methods</p>\n</li>\n<li>\n<p>Router, React Hooks</p>\n</li>\n<li>\n<p>Context API</p>\n</li>\n<li>\n<p>Introduction to Redux</p>\n</li>\n<li>\n<p>Reducer Logic</p>\n</li>\n<li>\n<p>Redux-Thunk</p>\n</li>\n<li>\n<p>Proyekt: Simple Ecommerce site</p>\n</li>\n</ul>', '2022-06-21 08:10:34', '2022-06-21 08:10:34'),
(352, 'galleries', 'attribute', 5, 'en', '3', '2022-06-24 03:02:20', '2022-06-24 03:02:20'),
(353, 'galleries', 'attribute', 5, 'ru', '3', '2022-06-24 03:02:40', '2022-06-24 03:02:40'),
(355, 'galleries', 'attribute', 10, 'en', '8', '2022-06-24 03:30:42', '2022-06-24 03:30:42'),
(357, 'galleries', 'attribute', 9, 'en', '7', '2022-06-24 03:36:04', '2022-06-24 03:36:04'),
(358, 'galleries', 'attribute', 12, 'en', '10', '2022-06-24 07:48:53', '2022-06-24 07:48:53'),
(359, 'galleries', 'attribute', 11, 'en', '9', '2022-06-24 07:49:00', '2022-06-24 07:49:00'),
(360, 'galleries', 'attribute', 10, 'ru', '8', '2022-06-24 07:49:06', '2022-06-24 07:49:06'),
(362, 'galleries', 'attribute', 7, 'en', '5', '2022-06-24 07:49:18', '2022-06-24 07:49:18'),
(363, 'galleries', 'attribute', 9, 'ru', '7', '2022-06-24 07:49:27', '2022-06-24 07:49:27'),
(364, 'galleries', 'attribute', 4, 'en', '2', '2022-06-24 07:49:33', '2022-06-24 07:49:33'),
(365, 'galleries', 'attribute', 3, 'en', '1', '2022-06-24 07:49:38', '2022-06-24 07:49:38'),
(366, 'programs', 'months', 35, 'en', '1', '2022-06-27 09:06:02', '2022-06-27 09:06:02'),
(367, 'programs', 'program', 35, 'en', '<ul>\n<li>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\">Front-end basics</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Emmet, Html5-CSS3 basics</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">GIT</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">HTML forms</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Flexbox</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Grid Layout</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">CSS animation, parallax</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">CSS preprocessors. SASS. CSS methodologies. BEM</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Pixel perfect, Adaptive and responsive, cross-browser</span></p>\n<p style=\"color: #444444; font-size: 14px;\">&nbsp;</p>\n</li>\n<li><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Bootstrap 5</span></span></span></span></span></span></span></li>\n</ul>', '2022-06-27 09:06:02', '2022-06-27 09:06:02'),
(368, 'programs', 'months', 37, 'en', '3-cü ay', '2022-06-27 09:12:46', '2022-06-27 09:12:46'),
(369, 'programs', 'program', 37, 'en', '<ul>\n<li class=\"MsoNormal\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\">Working with events. Attaching events to DOM nodes</span></li>\n</ul>\n<ul>\n<li class=\"MsoNormal\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\">SetTimeout and SetInterval, localStorage</span></li>\n</ul>\n<ul>\n<li class=\"MsoNormal\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\">Destructuring, Closures</span></li>\n</ul>\n<ul>\n<li class=\"MsoNormal\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\">Garbage collection, Exception handling</span></li>\n</ul>\n<ul>\n<li class=\"MsoNormal\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\">OOP in JS. Propotypes. Inheritance. Native prototypes. Classes.</span></li>\n<li class=\"MsoNormal\">\n<p class=\"MsoNormal\"><span style=\"font-size: 12pt; line-height: 107%;\">JSON format. AJAX. XHR.</span></p>\n</li>\n<li class=\"MsoNormal\">\n<p class=\"MsoNormal\"><span style=\"font-size: 12pt;\">Cookies, fetch, axios, Promises, async-await</span></p>\n</li>\n</ul>\n<p>&nbsp;</p>', '2022-06-27 09:12:46', '2022-06-27 09:12:46'),
(370, 'programs', 'months', 38, 'en', '4-cü ay', '2022-06-27 09:13:59', '2022-06-27 09:13:59'),
(371, 'programs', 'program', 38, 'en', '<ul>\n<li>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\">Overview of Js frameworks. Angular. Angular.js . Vue js. Differences between them. React.JS </span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">npm node.js</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Creating nested components, DOM references</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">React Router, propTypes</span><span style=\"color: black;\">, defaultProps, component lifecycle</span></p>\n</li>\n<li><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"color: black;\">State management. Context-Api</span></span></span></span></li>\n</ul>', '2022-06-27 09:13:59', '2022-06-27 09:13:59'),
(372, 'programs', 'months', 40, 'en', '6-cı ay', '2022-06-27 09:16:57', '2022-06-27 09:16:57'),
(373, 'programs', 'program', 40, 'en', '<ul>\n<li>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\">Environment setup. Expo. Basic React Native app structure</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Overview of React Native components.</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Working with Images in RN.</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Styling in RN.</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">AJAX. HTTP calls using fetch/axios</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Touchables and Buttons.</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">List components</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Animations</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Router. Navigation.</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">View, Modal, Picker, Switch, Text.</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Working with Geolocation.</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">AsyncStorage. PushNotifications.</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Generate .apk for android.</span></p>\n</li>\n<li><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Firebase BaaS</span></span></span></span></span></span></span></span></span></span></span></span></span></li>\n</ul>', '2022-06-27 09:16:57', '2022-06-27 09:16:57'),
(374, 'programs', 'months', 40, 'ru', '6-cı ay', '2022-06-27 09:17:14', '2022-06-27 09:17:14'),
(375, 'programs', 'program', 40, 'ru', '<ul>\n<li>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\">Environment setup. Expo. Basic React Native app structure</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Overview of React Native components.</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Working with Images in RN.</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Styling in RN.</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">AJAX. HTTP calls using fetch/axios</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Touchables and Buttons.</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">List components</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Animations</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Router. Navigation.</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">View, Modal, Picker, Switch, Text.</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Working with Geolocation.</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">AsyncStorage. PushNotifications.</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Generate .apk for android.</span></p>\n</li>\n<li><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Firebase BaaS</span></span></span></span></span></span></span></span></span></span></span></span></span></li>\n</ul>', '2022-06-27 09:17:14', '2022-06-27 09:17:14'),
(383, 'galleries', 'attribute', 12, 'ru', '10', '2022-07-06 03:14:24', '2022-07-06 03:14:24'),
(384, 'data_rows', 'display_name', 16, 'en', 'ID', '2022-07-06 04:26:04', '2022-07-06 04:26:04'),
(385, 'data_rows', 'display_name', 17, 'en', 'Name', '2022-07-06 04:26:04', '2022-07-06 04:26:04'),
(386, 'data_rows', 'display_name', 20, 'en', 'Display Name', '2022-07-06 04:26:04', '2022-07-06 04:26:04'),
(387, 'data_rows', 'display_name', 18, 'en', 'Created At', '2022-07-06 04:26:04', '2022-07-06 04:26:04'),
(388, 'data_rows', 'display_name', 19, 'en', 'Updated At', '2022-07-06 04:26:04', '2022-07-06 04:26:04'),
(389, 'data_types', 'display_name_singular', 3, 'en', 'Role', '2022-07-06 04:26:04', '2022-07-06 04:26:04'),
(390, 'data_types', 'display_name_plural', 3, 'en', 'Roles', '2022-07-06 04:26:04', '2022-07-06 04:26:04'),
(391, 'galleries', 'attribute', 7, 'ru', '5', '2022-07-06 04:29:24', '2022-07-06 04:29:24'),
(392, 'galleries', 'attribute', 3, 'ru', '1', '2022-07-13 06:50:35', '2022-07-13 06:50:35'),
(393, 'galleries', 'attribute', 11, 'ru', '9', '2022-07-13 06:51:19', '2022-07-13 06:51:19'),
(394, 'galleries', 'attribute', 14, 'en', 'it kursları', '2022-07-20 10:34:02', '2022-07-20 10:34:02'),
(395, 'galleries', 'attribute', 14, 'ru', 'it kursları', '2022-07-20 10:36:01', '2022-07-20 10:36:01'),
(396, 'programs', 'months', 20, 'en', '6-cı ay', '2022-08-16 10:08:42', '2022-08-16 10:08:42');
INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(397, 'programs', 'program', 20, 'en', '<ul>\n<li>\n<p>JSON web token (JWT), Identity and refresh tokens and their configuration</p>\n</li>\n<li>\n<p>Documenting Api with Swagger</p>\n</li>\n<li>\n<p>Deployment projects to IIS. Testing</p>\n</li>\n<li>\n<p>Rate limiting and throttling</p>\n</li>\n<li>\n<p>Versioning. Versioning Examples</p>\n</li>\n<li>\n<p>CQRS and Mediator (MediatR) pattern with ASP.NET Core Web API. Pros and Cons of these patterns</p>\n</li>\n</ul>', '2022-08-16 10:08:42', '2022-08-16 10:08:42'),
(398, 'programs', 'months', 20, 'ru', '6-cı ay', '2022-08-16 10:10:13', '2022-08-16 10:10:13'),
(399, 'programs', 'program', 20, 'ru', '<ul>\n<li>\n<p>JSON web token (JWT), Identity and refresh tokens and their configuration</p>\n</li>\n<li>\n<p>Documenting Api with Swagger</p>\n</li>\n<li>\n<p>Deployment projects to IIS. Testing</p>\n</li>\n<li>\n<p>Rate limiting and throttling</p>\n</li>\n<li>\n<p>Versioning. Versioning Examples</p>\n</li>\n<li>\n<p>CQRS and Mediator (MediatR) pattern with ASP.NET Core Web API. Pros and Cons of these patterns</p>\n</li>\n</ul>', '2022-08-16 10:10:13', '2022-08-16 10:10:13'),
(400, 'programs', 'months', 19, 'en', '5-ci ay', '2022-08-16 10:17:32', '2022-08-16 10:17:32'),
(401, 'programs', 'program', 19, 'en', '<ul>\n<li>\n<p>.NET and .NET Core. Differences</p>\n</li>\n<li>\n<p>Introduction to ASP.NET / ASP.NET Core Application</p>\n</li>\n<li>\n<p>Introduction to Web APIs</p>\n</li>\n<li>\n<p>Simple ASP.NET Core Web API and Serialization</p>\n</li>\n<li>\n<p>Onion Architecture. Models. Context Class. Db Connection. Migration. Repository pattern. Service layer</p>\n</li>\n<li>\n<p>RelationShips in WepApi. Content negotiation</p>\n</li>\n</ul>', '2022-08-16 10:17:32', '2022-08-16 10:17:32'),
(402, 'programs', 'months', 18, 'en', '4-cü ay', '2022-08-16 10:19:00', '2022-08-16 10:19:00'),
(403, 'programs', 'program', 18, 'en', '<ul>\n<li>\n<p>Git version control system</p>\n</li>\n<li>\n<p>Data Structures. Queue. LinkedList</p>\n</li>\n<li>\n<p>Sorting Algorithms. Searching Algorithms</p>\n</li>\n<li>\n<p>Design Patterns. MVC. MVVM</p>\n</li>\n<li>\n<p>SOLID principles</p>\n</li>\n<li>\n<p>Unit Testing</p>\n</li>\n<li>\n<p>Introduction to Web development. Real project workflow</p>\n</li>\n</ul>', '2022-08-16 10:19:00', '2022-08-16 10:19:00'),
(404, 'programs', 'months', 18, 'ru', '4-cü ay', '2022-08-16 10:19:57', '2022-08-16 10:19:57'),
(405, 'programs', 'program', 18, 'ru', '<ul>\n<li>\n<p>Git version control system</p>\n</li>\n<li>\n<p>Data Structures. Queue. LinkedList</p>\n</li>\n<li>\n<p>Sorting Algorithms. Searching Algorithms</p>\n</li>\n<li>\n<p>Design Patterns. MVC. MVVM</p>\n</li>\n<li>\n<p>SOLID principles</p>\n</li>\n<li>\n<p>Unit Testing</p>\n</li>\n<li>\n<p>Introduction to Web development. Real project workflow</p>\n</li>\n</ul>', '2022-08-16 10:19:57', '2022-08-16 10:19:57'),
(406, 'programs', 'months', 17, 'en', '3-cü ay', '2022-08-16 10:21:11', '2022-08-16 10:21:11'),
(407, 'programs', 'program', 17, 'en', '<ul>\n<li>Intro to Databases &amp; SQL</li>\n<li>Basics of SQL Types of SQL Statements. DDL, DML, DQL, DCL and TCL</li>\n<li>Create/Alter/Delete DB. Constraints</li>\n<li>Introduction To TSQL. Transaction Management.</li>\n<li>Introduction ADO.NET SqlConnection. SqlCommand. SqlDataReader. SqlDataAdapter</li>\n</ul>', '2022-08-16 10:21:11', '2022-08-16 10:21:11'),
(408, 'programs', 'months', 17, 'ru', '3-cü ay', '2022-08-16 10:21:37', '2022-08-16 10:21:37'),
(409, 'programs', 'program', 17, 'ru', '<ul>\n<li>Intro to Databases &amp; SQL</li>\n<li>Basics of SQL Types of SQL Statements. DDL, DML, DQL, DCL and TCL</li>\n<li>Create/Alter/Delete DB. Constraints</li>\n<li>Introduction To TSQL. Transaction Management.</li>\n<li>Introduction ADO.NET SqlConnection. SqlCommand. SqlDataReader. SqlDataAdapter</li>\n</ul>', '2022-08-16 10:21:37', '2022-08-16 10:21:37'),
(410, 'programs', 'months', 16, 'en', '2-ci ay', '2022-08-16 10:23:26', '2022-08-16 10:23:26'),
(411, 'programs', 'program', 16, 'en', '<ul>\n<li>\n<p>Delegates, events, errors and Exception class</p>\n</li>\n<li>\n<p>Introducing Collections. Benefits of Collection Classes</p>\n</li>\n<li>\n<p>Understanding and using commonly used collections</p>\n</li>\n<li>\n<p>Generics. Advantages of Generics</p>\n</li>\n<li>\n<p>Processes &amp; Threads. Asynchronous programming</p>\n</li>\n</ul>', '2022-08-16 10:23:26', '2022-08-16 10:23:26'),
(412, 'programs', 'months', 16, 'ru', '2-ci ay', '2022-08-16 10:24:05', '2022-08-16 10:24:05'),
(413, 'programs', 'program', 16, 'ru', '<ul>\n<li>\n<p>Delegates, events, errors and Exception class</p>\n</li>\n<li>\n<p>Introducing Collections. Benefits of Collection Classes</p>\n</li>\n<li>\n<p>Understanding and using commonly used collections</p>\n</li>\n<li>\n<p>Generics. Advantages of Generics</p>\n</li>\n<li>\n<p>Processes &amp; Threads. Asynchronous programming</p>\n</li>\n</ul>', '2022-08-16 10:24:05', '2022-08-16 10:24:05'),
(414, 'programs', 'months', 15, 'en', '1-ci ay', '2022-08-16 10:25:17', '2022-08-16 10:25:17'),
(415, 'programs', 'program', 15, 'en', '<ul>\n<li>\n<p>Introduction to Programming</p>\n</li>\n<li>\n<p>Overview of C#, Literals, Variables. Data Types</p>\n</li>\n<li>\n<p>Operators, Expressions, Functions</p>\n</li>\n<li>\n<p>Conditional statements, Loops</p>\n</li>\n<li>\n<p>Class, Objects, Constructors, Inheritance, Properties</p>\n</li>\n<li>\n<p>Encapsulation, Polymorphism, Interface</p>\n</li>\n<li>\n<p>Arrays, Array Class, Array List, Structure, Enumerations</p>\n</li>\n</ul>', '2022-08-16 10:25:17', '2022-08-16 10:25:17'),
(416, 'programs', 'months', 25, 'en', '4-cü ay', '2022-08-17 02:06:18', '2022-08-17 02:06:18'),
(417, 'programs', 'program', 25, 'en', '<ul>\n<li>\n<p>Introduction to Node.js. V8 engine. window object.</p>\n</li>\n<li>\n<p>Node.js console. REPL.&nbsp;</p>\n</li>\n<li>\n<p>Package managers.&nbsp; npm, yarn.&nbsp;&nbsp;</p>\n</li>\n<li>\n<p>Dependencies.&nbsp; package.json</p>\n</li>\n<li>\n<p>Installing Packages Locally and globally.&nbsp;</p>\n</li>\n<li>\n<p>Adding dependency in package.json</p>\n</li>\n<li>\n<p>Updating packages</p>\n</li>\n<li>\n<p>Webpacks. Bundles.&nbsp;</p>\n</li>\n</ul>', '2022-08-17 02:06:18', '2022-08-17 02:06:18'),
(418, 'programs', 'months', 26, 'en', '5-ci ay', '2022-08-17 02:06:54', '2022-08-17 02:06:54'),
(419, 'programs', 'program', 26, 'en', '<ul>\n<li>Overview of Js frameworks. Angular. Angular.js. Vue js. Differences between them. React.JS&nbsp;</li>\n<li>Creating nested components, DOM references</li>\n<li>React Router, propTypes, defaultProps, component lifecycle</li>\n<li>State management. Context-Api</li>\n<li>Redux basics</li>\n<li>Firebase</li>\n</ul>', '2022-08-17 02:06:54', '2022-08-17 02:06:54'),
(420, 'programs', 'months', 27, 'en', '6-cı ay', '2022-08-17 02:08:49', '2022-08-17 02:08:49'),
(421, 'programs', 'program', 27, 'en', '<ul>\n<li>\n<p>Middlewares, fetching data from server, async actions with redux-saga, redux-thunk</p>\n</li>\n<li>\n<p>Working with forms. Redux forms</p>\n</li>\n<li>\n<p>Testing React components</p>\n</li>\n<li>\n<p>React hooks. Other libraries from React infrastructure. React architecture example project. EsLint, prettier and such technologies</p>\n</li>\n<li>\n<p>Introduction to static typed languages. Typescript. React with TS.</p>\n</li>\n</ul>', '2022-08-17 02:08:49', '2022-08-17 02:08:49'),
(422, 'programs', 'months', 27, 'ru', '6-cı ay', '2022-08-17 02:17:49', '2022-08-17 02:17:49'),
(423, 'programs', 'program', 27, 'ru', '<ul>\n<li>\n<p>Middlewares, fetching data from server, async actions with redux-saga, redux-thunk</p>\n</li>\n<li>\n<p>Working with forms. Redux forms</p>\n</li>\n<li>\n<p>Testing React components</p>\n</li>\n<li>\n<p>React hooks. Other libraries from React infrastructure. React architecture example project. EsLint, prettier and such technologies</p>\n</li>\n<li>\n<p>Introduction to static typed languages. Typescript. React with TS.</p>\n</li>\n</ul>', '2022-08-17 02:17:49', '2022-08-17 02:17:49'),
(424, 'programs', 'months', 36, 'en', '2-ci ay', '2022-08-17 02:22:16', '2022-08-17 02:22:16'),
(425, 'programs', 'program', 36, 'en', '<ul>\n<li>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\">Introduction to programming. JavaScript basics</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Data types, primitives, type casting.</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Operators, logical operators, switch</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Operators, logical operators, switch</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Loops</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Functions, scope, debug</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Objects</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Arrays, Set, Map</span></p>\n</li>\n<li><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Working with DOM</span></span></span></span></span></span></span></span></li>\n</ul>', '2022-08-17 02:22:16', '2022-08-17 02:22:16'),
(426, 'programs', 'months', 39, 'en', '5-ci ay', '2022-08-17 02:22:55', '2022-08-17 02:22:55'),
(427, 'programs', 'program', 39, 'en', '<ul>\n<li>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\">Redux basics</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Middlewares, fetching data from server, async actions with redux-saga, redux-thunk</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Working with forms. Redux forms</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Testing React components</span></p>\n</li>\n<li>\n<p class=\"MsoNormal\" style=\"color: #444444; font-size: 14px;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">React hooks. Other libraries from React infrastructure. React architecture example project</span></p>\n</li>\n<li><span style=\"font-size: 12.0pt; mso-bidi-font-size: 11.0pt; line-height: 107%; color: black; mso-themecolor: text1; mso-bidi-language: AR-SA;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\"><span style=\"font-size: 12pt; line-height: 17.12px; color: black;\">Introduction to static typed languages. Typescript. React with TS</span></span></span></span></span></li>\n</ul>', '2022-08-17 02:22:55', '2022-08-17 02:22:55'),
(428, 'courses', 'name', 20, 'en', 'Game Development kursu', '2022-08-25 04:15:57', '2022-08-25 04:15:57'),
(429, 'programs', 'months', 41, 'en', '1-ci ay', '2022-08-25 04:16:28', '2022-08-25 04:16:28'),
(430, 'programs', 'program', 41, 'en', '<ul>\n<li><span style=\"font-size: 14.0pt; line-height: 115%; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\"><span style=\"mso-list: Ignore;\"><span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;</span></span></span><!--[endif]--><span style=\"font-size: 14.0pt; line-height: 115%;\">Unity </span><span lang=\"AZ-LATIN\" style=\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\">və Visual Studio quraşdırılması</span></li>\n<li><!-- [if !supportLists]--><span lang=\"AZ-LATIN\" style=\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\">Unity ara-&uuml;z</span></li>\n<li><!-- [if !supportLists]--><span lang=\"AZ-LATIN\" style=\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\">Unity səhnələr və cisimlər</span></li>\n<li><!-- [if !supportLists]--><span lang=\"AZ-LATIN\" style=\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\">C# dəyişənlərin tipləri</span></li>\n<li><span style=\"font-size: 14.0pt; line-height: 115%;\">Unity C</span><span lang=\"AZ-LATIN\" style=\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\"># əsas funksiyalar (Awake, Start, Update, FixedUptade, LateUpdate)</span></li>\n<li><span style=\"font-size: 14.0pt; line-height: 115%;\">C</span><span lang=\"AZ-LATIN\" style=\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\"># operatorlar</span></li>\n<li><span lang=\"AZ-LATIN\" style=\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\">C# d&ouml;vrlər və metodlar</span></li>\n<li><span lang=\"AZ-LATIN\" style=\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\">C# list və arraylər</span></li>\n<li><span style=\"font-size: 14.0pt; line-height: 115%;\">Unity AssetStore və hazır Assetlərlə işləmək</span></li>\n</ul>', '2022-08-25 04:16:28', '2022-08-25 04:16:28'),
(431, 'programs', 'months', 41, 'ru', '1-ci ay', '2022-08-25 04:16:51', '2022-08-25 04:16:51'),
(432, 'programs', 'program', 41, 'ru', '<ul>\n<li><span style=\"font-size: 14.0pt; line-height: 115%; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\"><span style=\"mso-list: Ignore;\"><span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;</span></span></span><!--[endif]--><span style=\"font-size: 14.0pt; line-height: 115%;\">Unity </span><span lang=\"AZ-LATIN\" style=\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\">və Visual Studio quraşdırılması</span></li>\n<li><!-- [if !supportLists]--><span lang=\"AZ-LATIN\" style=\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\">Unity ara-&uuml;z</span></li>\n<li><!-- [if !supportLists]--><span lang=\"AZ-LATIN\" style=\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\">Unity səhnələr və cisimlər</span></li>\n<li><!-- [if !supportLists]--><span lang=\"AZ-LATIN\" style=\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\">C# dəyişənlərin tipləri</span></li>\n<li><span style=\"font-size: 14.0pt; line-height: 115%;\">Unity C</span><span lang=\"AZ-LATIN\" style=\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\"># əsas funksiyalar (Awake, Start, Update, FixedUptade, LateUpdate)</span></li>\n<li><span style=\"font-size: 14.0pt; line-height: 115%;\">C</span><span lang=\"AZ-LATIN\" style=\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\"># operatorlar</span></li>\n<li><span lang=\"AZ-LATIN\" style=\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\">C# d&ouml;vrlər və metodlar</span></li>\n<li><span lang=\"AZ-LATIN\" style=\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\">C# list və arraylər</span></li>\n<li><span style=\"font-size: 14.0pt; line-height: 115%;\">Unity AssetStore və hazır Assetlərlə işləmək</span></li>\n</ul>', '2022-08-25 04:16:51', '2022-08-25 04:16:51'),
(433, 'programs', 'months', 42, 'en', '2-ci ay', '2022-08-25 04:22:50', '2022-08-25 04:22:50'),
(434, 'programs', 'program', 42, 'en', '<ul>\n<li><span style=\"font-size: 14.0pt; line-height: 115%;\">Blender ara-&uuml;z</span></li>\n<li><span style=\"font-size: 14.0pt; line-height: 115%;\">Blender 3D model məntiqi, əsasları</span></li>\n<li><span style=\"font-size: 14.0pt; line-height: 115%;\">Blender 3D modelin qurulması yolları</span></li>\n<li><span style=\"font-size: 14.0pt; line-height: 115%;\">Blender UV mappin</span></li>\n<li><!--[endif]--><span style=\"font-size: 14.0pt; line-height: 115%;\">Substance painter ara-&uuml;z</span></li>\n<li><!-- [if !supportLists]--><span style=\"font-size: 14.0pt; line-height: 115%;\">Substance painter&rsquo;də Texture-ləri yaratma</span></li>\n<li><em><span style=\"font-size: 14.0pt; line-height: 115%;\">[Qurulmuş 3D modelin Texture-lərinin hazırlanması]</span></em></li>\n<li><!-- [if !supportLists]--><span style=\"font-size: 14.0pt; line-height: 115%;\">Substance painter&rsquo;də Texture-ləri optimizasiya etmək</span></li>\n<li><span style=\"font-size: 14.0pt; line-height: 115%;\">Substance painter&rsquo;də Export etmək</span></li>\n</ul>\n<p>&nbsp;</p>', '2022-08-25 04:22:50', '2022-08-25 04:22:50'),
(435, 'programs', 'months', 42, 'ru', '2-ci ay', '2022-08-25 04:23:13', '2022-08-25 04:23:13'),
(436, 'programs', 'program', 42, 'ru', '<ul>\n<li><span style=\"font-size: 14.0pt; line-height: 115%;\">Blender ara-&uuml;z</span></li>\n<li><span style=\"font-size: 14.0pt; line-height: 115%;\">Blender 3D model məntiqi, əsasları</span></li>\n<li><span style=\"font-size: 14.0pt; line-height: 115%;\">Blender 3D modelin qurulması yolları</span></li>\n<li><span style=\"font-size: 14.0pt; line-height: 115%;\">Blender UV mappin</span></li>\n<li><!--[endif]--><span style=\"font-size: 14.0pt; line-height: 115%;\">Substance painter ara-&uuml;z</span></li>\n<li><!-- [if !supportLists]--><span style=\"font-size: 14.0pt; line-height: 115%;\">Substance painter&rsquo;də Texture-ləri yaratma</span></li>\n<li><em><span style=\"font-size: 14.0pt; line-height: 115%;\">[Qurulmuş 3D modelin Texture-lərinin hazırlanması]</span></em></li>\n<li><!-- [if !supportLists]--><span style=\"font-size: 14.0pt; line-height: 115%;\">Substance painter&rsquo;də Texture-ləri optimizasiya etmək</span></li>\n<li><span style=\"font-size: 14.0pt; line-height: 115%;\">Substance painter&rsquo;də Export etmək</span></li>\n</ul>\n<p>&nbsp;</p>', '2022-08-25 04:23:13', '2022-08-25 04:23:13'),
(437, 'programs', 'months', 43, 'en', '3-cü ay', '2022-08-25 04:23:37', '2022-08-25 04:23:37'),
(438, 'programs', 'program', 43, 'en', '<ul>\n<li><span style=\"font-size: 14.0pt; line-height: 115%;\">Blender 3D modelin LOD komponentləri</span></li>\n<li><span style=\"font-size: 14.0pt; line-height: 115%;\">Blender Materiallarla işləmək</span></li>\n<li><span style=\"font-size: 14.0pt; line-height: 115%;\">Blender Modelləri rigləmək</span></li>\n<li><span style=\"font-size: 14.0pt; line-height: 115%;\">Blender Animasiyalarla işləmək</span></li>\n<li><span style=\"font-size: 14.0pt; line-height: 115%;\">Blender &Ouml;l&ccedil;&uuml; vahidləri, pivot n&ouml;qtəsi</span></li>\n<li><span style=\"font-size: 14.0pt; line-height: 115%;\">Blenderin konstruksiyaları</span></li>\n<li><span style=\"font-size: 14.0pt; line-height: 115%;\">Blender 3D modelin Unity- yə export edilməsi</span></li>\n<li><span lang=\"AZ-LATIN\" style=\"font-size: 14.0pt; line-height: 115%; mso-ansi-language: AZ-LATIN;\">Unity&rsquo;yə 3D-2D elementi import etmək</span></li>\n</ul>\n<p>&nbsp;</p>', '2022-08-25 04:23:37', '2022-08-25 04:23:37'),
(439, 'courses', 'name', 20, 'ru', 'Game Development kursu', '2022-08-31 08:31:26', '2022-08-31 08:31:26'),
(440, 'courses', 'short_description', 20, 'en', 'Oyun oynamağı sevirsən? Özün oyun yaratmaq istəyirsən? O zaman sən doğru ünvana gəlmisən :) Game Developer (oyun proqramçısı) sənətinə sahib ol, sevdiyin işlə məşğul ol və bu iş sənə bol qazanc gətirəcək. Arzularına çatmq üçün \"Game Developer\" kursuna yazıl və cəmi 6 ay ərzində oyunların hazırlanması üzrə mütəxəssis ol!', '2022-08-31 08:32:05', '2022-08-31 08:32:05'),
(441, 'courses', 'seo_description', 20, 'en', '<p>Oyunların hazırlanması - IT sahəsində yeni bir sahədir və oyun sevənlər &uuml;&ccedil;&uuml;n sevdiyi işi qazanca &ccedil;evirmək &uuml;&ccedil;&uuml;n əla bir f&uuml;rsətdir.&nbsp;</p>\n<p>&nbsp;</p>\n<p>Bu kurs ərzində siz m&uuml;xtəlif janrlarda oyunlar hazırlamağı &ouml;yrənəcəksiniz: Action, Shooter, Quest, Adventure, RPG, Running, Sulumator və s. Sizə Unity platformasında oyunların hazırlanmasını &ouml;yrədəcəyik. Proqramlaşdırma dili olaraq C# (C-Sharp), dizayn &uuml;&ccedil;&uuml;n isə Blender 3D proqramı ilə &ccedil;alışmağı &ouml;yrənəcəksiniz.</p>\n<p>&nbsp;</p>\n<p>Kursu bitirdikdə siz artıq b&uuml;t&uuml;n populyar cihazlar və platformlar &uuml;&ccedil;&uuml;n oyunlar hazırlaya biləcəksiniz: PC, Playstation, Xbox, Mac, Linux, Android, IOS.&nbsp;</p>\n<p>&nbsp;</p>\n<p>İlk oyununu hazırlamaq istəyirsən? O zaman vaxty itirmə, bizə zəng et, kursa yazıl və sonsusca maraqlı və dərin Oyun Proqramlaşdırması d&uuml;nyasına ilk addımlarını bizimlə birlikdə atmağa başla!</p>', '2022-08-31 08:32:05', '2022-08-31 08:32:05'),
(442, 'courses', 'short_description', 20, 'ru', 'Oyun oynamağı sevirsən? Özün oyun yaratmaq istəyirsən? O zaman sən doğru ünvana gəlmisən :) Game Developer (oyun proqramçısı) sənətinə sahib ol, sevdiyin işlə məşğul ol və bu iş sənə bol qazanc gətirəcək. Arzularına çatmq üçün \"Game Developer\" kursuna yazıl və cəmi 6 ay ərzində oyunların hazırlanması üzrə mütəxəssis ol!', '2022-08-31 09:12:45', '2022-08-31 09:12:45'),
(443, 'courses', 'seo_description', 20, 'ru', '<p>Oyunların hazırlanması - IT sahəsində yeni bir sahədir və oyun sevənlər &uuml;&ccedil;&uuml;n sevdiyi işi qazanca &ccedil;evirmək &uuml;&ccedil;&uuml;n əla bir f&uuml;rsətdir.&nbsp;</p>\n<p>&nbsp;</p>\n<p>Bu kurs ərzində siz m&uuml;xtəlif janrlarda oyunlar hazırlamağı &ouml;yrənəcəksiniz: Action, Shooter, Quest, Adventure, RPG, Running, Sulumator və s. Sizə Unity platformasında oyunların hazırlanmasını &ouml;yrədəcəyik. Proqramlaşdırma dili olaraq C# (C-Sharp), dizayn &uuml;&ccedil;&uuml;n isə Blender 3D proqramı ilə &ccedil;alışmağı &ouml;yrənəcəksiniz.</p>\n<p>&nbsp;</p>\n<p>Kursu bitirdikdə siz artıq b&uuml;t&uuml;n populyar cihazlar və platformlar &uuml;&ccedil;&uuml;n oyunlar hazırlaya biləcəksiniz: PC, Playstation, Xbox, Mac, Linux, Android, IOS.&nbsp;</p>\n<p>&nbsp;</p>\n<p>İlk oyununu hazırlamaq istəyirsən? O zaman vaxty itirmə, bizə zəng et, kursa yazıl və sonsusca maraqlı və dərin Oyun Proqramlaşdırması d&uuml;nyasına ilk addımlarını bizimlə birlikdə atmağa başla!</p>', '2022-08-31 09:12:45', '2022-08-31 09:12:45'),
(444, 'data_rows', 'display_name', 82, 'en', 'Endirim', '2022-09-05 03:30:15', '2022-09-05 03:30:15'),
(445, 'data_rows', 'display_name', 83, 'en', 'Show Page', '2022-09-05 03:30:15', '2022-09-05 03:30:15'),
(446, 'galleries', 'attribute', 13, 'en', 'proqramlaşdırma kursları', '2022-09-15 06:50:53', '2022-09-15 06:50:53'),
(447, 'galleries', 'attribute', 4, 'ru', '2', '2022-09-15 06:52:57', '2022-09-15 06:52:57'),
(448, 'programs', 'months', 26, 'ru', '5-ci ay', '2022-09-15 07:05:09', '2022-09-15 07:05:09'),
(449, 'programs', 'program', 26, 'ru', '<ul>\n<li>Overview of Js frameworks. Angular. Angular.js. Vue js. Differences between them. React.JS&nbsp;</li>\n<li>Creating nested components, DOM references</li>\n<li>React Router, propTypes, defaultProps, component lifecycle</li>\n<li>State management. Context-Api</li>\n<li>Redux basics</li>\n<li>Firebase</li>\n</ul>', '2022-09-15 07:05:09', '2022-09-15 07:05:09'),
(450, 'programs', 'months', 25, 'ru', '4-cü ay', '2022-09-15 07:05:26', '2022-09-15 07:05:26'),
(451, 'programs', 'program', 25, 'ru', '<ul>\n<li>\n<p>Introduction to Node.js. V8 engine. window object.</p>\n</li>\n<li>\n<p>Node.js console. REPL.&nbsp;</p>\n</li>\n<li>\n<p>Package managers.&nbsp; npm, yarn.&nbsp;&nbsp;</p>\n</li>\n<li>\n<p>Dependencies.&nbsp; package.json</p>\n</li>\n<li>\n<p>Installing Packages Locally and globally.&nbsp;</p>\n</li>\n<li>\n<p>Adding dependency in package.json</p>\n</li>\n<li>\n<p>Updating packages</p>\n</li>\n<li>\n<p>Webpacks. Bundles.&nbsp;</p>\n</li>\n</ul>', '2022-09-15 07:05:26', '2022-09-15 07:05:26'),
(452, 'programs', 'months', 23, 'ru', '2-ci ay', '2022-09-15 07:05:51', '2022-09-15 07:05:51'),
(453, 'programs', 'program', 23, 'ru', '<ul>\n<li>Introduction to programming. JavaScript basics</li>\n<li>Data types, primitives, type casting.&nbsp;</li>\n<li>Operators, logical operators, switch</li>\n<li>Loops</li>\n<li>Functions, scope, debug</li>\n<li>Objects</li>\n<li>Arrays, Set, Map</li>\n<li>Working with DOM.&nbsp;</li>\n</ul>', '2022-09-15 07:05:51', '2022-09-15 07:05:51'),
(454, 'programs', 'months', 22, 'ru', '1-ci ay', '2022-09-15 07:05:59', '2022-09-15 07:05:59'),
(455, 'programs', 'program', 22, 'ru', '<ul>\n<li>Front-end basics</li>\n<li>Emmet, Html5-CSS3 basics</li>\n<li>GIT,&nbsp;HTML forms</li>\n<li>Flexbox, Grid Layout</li>\n<li>CSS animation, parallax</li>\n<li>CSS preprocessors. SASS. CSS methodologies. BEM</li>\n<li>Pixel perfect, Adaptive and responsive, cross-browser</li>\n<li>Bootstrap 5</li>\n</ul>', '2022-09-15 07:05:59', '2022-09-15 07:05:59');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Fira', 'firengiz@gmail.com', 'users/default.png', NULL, '$2y$10$ra.z.PL0bBKp59vK9ilH1.4/0l13Px3feIXbiE5yZsCHcQqHhKn.2', NULL, NULL, '2022-06-06 06:26:19', '2022-06-06 06:26:19'),
(2, 1, 'Jedai Dev', 'jedaidev@gmail.com', 'users/default.png', NULL, '$2y$10$rY48gk2wWSy8n5HgVhCTmObst0nnnfsWwmu7wTonDpyz1n346FmUO', 'toZDsD5omeaSJxVbX7H2G6qet9l9Ib3I2qFFvt91TNPIlDrlWh5AeA8cIJP9', NULL, '2022-06-07 01:45:47', '2022-06-07 01:45:47');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Tablo için indeksler `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Tablo için indeksler `derslers`
--
ALTER TABLE `derslers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Tablo için indeksler `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Tablo için indeksler `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Tablo için indeksler `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Tablo için indeksler `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Tablo için indeksler `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Tablo için indeksler `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Tablo için indeksler `sending_mails`
--
ALTER TABLE `sending_mails`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Tablo için indeksler `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Tablo için indeksler `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Tablo için AUTO_INCREMENT değeri `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- Tablo için AUTO_INCREMENT değeri `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `derslers`
--
ALTER TABLE `derslers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Tablo için AUTO_INCREMENT değeri `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `programs`
--
ALTER TABLE `programs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Tablo için AUTO_INCREMENT değeri `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `sending_mails`
--
ALTER TABLE `sending_mails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- Tablo için AUTO_INCREMENT değeri `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=456;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Tablo kısıtlamaları `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
