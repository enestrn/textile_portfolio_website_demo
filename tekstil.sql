-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 28 Ara 2023, 23:58:58
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
-- Veritabanı: `tekstil`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `form_verileri`
--

CREATE TABLE `form_verileri` (
  `id` int(11) NOT NULL,
  `sirket_adi` varchar(255) NOT NULL,
  `ulke` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mesaj` text DEFAULT NULL,
  `tarih` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `form_verileri`
--

INSERT INTO `form_verileri` (`id`, `sirket_adi`, `ulke`, `email`, `mesaj`, `tarih`) VALUES
(4, 'LCW', 'Türkiye', 'demo@demo.com', 'Deneme mail.', '2023-12-28 22:54:28'),
(5, 'Hallinger', 'Germany', 'demo@demo', 'Demo mail 123456789.', '2023-12-28 22:56:35');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `form_verileri`
--
ALTER TABLE `form_verileri`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `form_verileri`
--
ALTER TABLE `form_verileri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
