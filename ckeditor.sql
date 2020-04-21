-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 21 Nis 2020, 19:10:28
-- Sunucu sürümü: 10.4.11-MariaDB
-- PHP Sürümü: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `ckeditor`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `resimklasor`
--

CREATE TABLE `resimklasor` (
  `id` int(11) NOT NULL,
  `klasor` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `resimklasor`
--

INSERT INTO `resimklasor` (`id`, `klasor`) VALUES
(1, 'Resimler'),
(2, 'Resimler -1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `resimlertoplu`
--

CREATE TABLE `resimlertoplu` (
  `ilanid` varchar(100) NOT NULL,
  `resim_adi` varchar(255) NOT NULL,
  `tarih` int(11) NOT NULL,
  `kucuk` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin5;

--
-- Tablo döküm verisi `resimlertoplu`
--

INSERT INTO `resimlertoplu` (`ilanid`, `resim_adi`, `tarih`, `kucuk`, `id`) VALUES
('1', '11005052_1057284090966463_1969197427_n.jpg', 1587488500, '11005052_1057284090966463_1969197427_n_thumbnial.jpg', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yonetici`
--

CREATE TABLE `yonetici` (
  `id` int(11) NOT NULL,
  `isim` text COLLATE utf8_turkish_ci NOT NULL,
  `posta` text COLLATE utf8_turkish_ci NOT NULL,
  `parola` text COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_adi` text COLLATE utf8_turkish_ci NOT NULL,
  `ekleyen` text COLLATE utf8_turkish_ci NOT NULL,
  `zaman` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yonetici`
--

INSERT INTO `yonetici` (`id`, `isim`, `posta`, `parola`, `kullanici_adi`, `ekleyen`, `zaman`) VALUES
(1, 'Zulfu Mehmet', 'info@zulfumehmet.com', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 'admin', 'Zülfü Mehmet', '2020-04-17 18:56:07');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `resimklasor`
--
ALTER TABLE `resimklasor`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `resimlertoplu`
--
ALTER TABLE `resimlertoplu`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yonetici`
--
ALTER TABLE `yonetici`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `resimklasor`
--
ALTER TABLE `resimklasor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `resimlertoplu`
--
ALTER TABLE `resimlertoplu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `yonetici`
--
ALTER TABLE `yonetici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
