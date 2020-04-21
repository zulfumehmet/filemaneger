-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 27 Eki 2018, 12:21:17
-- Sunucu sürümü: 5.5.61-cll-lve
-- PHP Sürümü: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `zulfumeh_mobilya`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `resimler`
--

CREATE TABLE `resimlertoplu` (
  `id` int(30) NOT NULL,
  `ilanId` varchar(100) NOT NULL,
  `resim_adi` varchar(255) NOT NULL,
  `tarih` int(11) NOT NULL,
  `kucuk` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin5;

--
-- Tablo döküm verisi `resimler`
--

INSERT INTO `resimler` (`id`, `ilanId`, `resim_adi`, `tarih`, `kucuk`) VALUES
(1223, '166', 'w_799bad5a3b514f096e69bbc4a7896cd9.jpg', 1540629605, 'w_799bad5a3b514f096e69bbc4a7896cd9_thumbnial.jpg'),
(1222, '166', 'f3ccdd27d2000e3f9255a7e3e2c48800.jpg', 1540629605, 'f3ccdd27d2000e3f9255a7e3e2c48800_thumbnial.jpg'),
(1221, '166', 'd0096ec6c83575373e3a21d129ff8fef.jpg', 1540629605, 'd0096ec6c83575373e3a21d129ff8fef_thumbnial.jpg'),
(1220, '166', '156005c5baf40ff51a327f1c34f2975b.jpg', 1540629605, '156005c5baf40ff51a327f1c34f2975b_thumbnial.jpg'),
(1219, '166', '799bad5a3b514f096e69bbc4a7896cd9.jpg', 1540629605, '799bad5a3b514f096e69bbc4a7896cd9_thumbnial.jpg'),
(1218, '166', 'IMG_7507.jpg', 1540629462, 'IMG_7507_thumbnial.jpg'),
(1224, '166', 'w_156005c5baf40ff51a327f1c34f2975b.jpg', 1540629605, 'w_156005c5baf40ff51a327f1c34f2975b_thumbnial.jpg'),
(1225, '166', 'w_d0096ec6c83575373e3a21d129ff8fef.jpg', 1540629605, 'w_d0096ec6c83575373e3a21d129ff8fef_thumbnial.jpg'),
(1226, '166', 'w_f3ccdd27d2000e3f9255a7e3e2c48800.jpg', 1540629605, 'w_f3ccdd27d2000e3f9255a7e3e2c48800_thumbnial.jpg');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `resimler`
--
ALTER TABLE `resimlertoplu`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `resimler`
--
ALTER TABLE `resimlertoplu`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1227;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
