-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 04 Oca 2023, 11:55:26
-- Sunucu sürümü: 8.0.27
-- PHP Sürümü: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `db_temizlik`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_hizmetlerimiz`
--

DROP TABLE IF EXISTS `tbl_hizmetlerimiz`;
CREATE TABLE IF NOT EXISTS `tbl_hizmetlerimiz` (
  `ID` int NOT NULL,
  `isim` varchar(250) NOT NULL,
  `açıklama` varchar(250) NOT NULL,
  `alan_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `tbl_hizmetlerimiz`
--

INSERT INTO `tbl_hizmetlerimiz` (`ID`, `isim`, `açıklama`, `alan_id`) VALUES
(1, 'Tuğçe Ergen', 'Ofis Temizliği ', 1021),
(2, 'Ertan Felek', 'Dış cephe cam temizliği', 1046),
(3, 'Asim Beyaztaş', 'Mermer cilalama', 1052),
(4, 'Alperen Ergen', 'İnşaat sonrası temizlik', 1056),
(5, 'Bekir Aygün', 'Fabrika temizliği', 1072);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
