-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 18, 2017 at 06:40 PM
-- Server version: 5.1.33
-- PHP Version: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `db_obat`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(30) NOT NULL,
  `pass` varchar(70) NOT NULL,
  `foto` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uname`, `pass`, `foto`) VALUES
(8, 'Administrator', '069c546d1d97fd9648d8142b3e0fd3a3', 'logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE IF NOT EXISTS `obat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` text NOT NULL,
  `kelas` text NOT NULL,
  `satuan` text NOT NULL,
  `penyedia` text NOT NULL,
  `stok_awal` int(11) NOT NULL,
  `penerimaan` int(11) NOT NULL,
  `persediaan` int(11) NOT NULL,
  `pemakaian` int(11) NOT NULL,
  `sisa` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=107 ;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id`, `nama`, `kelas`, `satuan`, `penyedia`, `stok_awal`, `penerimaan`, `persediaan`, `pemakaian`, `sisa`) VALUES
(1, 'Air untuk injeksi 20 ml', 'Analgesik', 'Vial', ' PT. Bufa Aneka', 11, 0, 10, 2, 9),
(2, 'Alopurinol tablet 100 mg', 'Analgesik', 'Tablet', ' PT. Bufa Aneka', 130, 300, 430, 180, 250),
(3, 'Alprazolam tablet 0.25 mg', 'Analgesik', 'Tablet', ' PT. Bufa Aneka', 300, 0, 300, 0, 300),
(4, 'Amitriptiline tablet 25 mg', 'Analgesik', 'Tablet', ' PT. Bufa Aneka', 300, 0, 300, 0, 300),
(5, 'Amlodipin tablet 5 mg', 'Analgesik', 'Tablet', ' PT. Bufa Aneka', 445, 200, 645, 180, 465),
(6, 'Amoksisilin kapsul 250 mg', 'Antipiretik', 'Kapsul', ' PT. Bufa Aneka', 565, 0, 565, 230, 335),
(7, 'Amoksisilin kapsul 500 mg', 'Antipiretik', 'Tablet', ' PT. Indofarma (Persero) Tbk', 155, 500, 655, 225, 430),
(8, 'Amoksisilin sirup kering 125 mg/ 5 ml', 'Antipiretik', 'Botol', ' PT. Indofarma (Persero) Tbk', 8, 30, 38, 13, 25),
(9, 'Antasida DOEN I tablet kunyah', 'Antipiretik', 'Tablet', ' PT. Indofarma (Persero) Tbk', 571, 300, 871, 651, 220),
(10, 'Antasida DOEN II Suspensi', 'Antipiretik', 'Botol', ' PT. Indofarma (Persero) Tbk', 8, 30, 38, 10, 28),
(11, 'Asam askorbat (Vitamin C) tablet 50 mg', ' Antiinflamasi', 'Tablet', ' PT. Indofarma (Persero) Tbk', 165, 500, 665, 205, 460),
(12, 'Asam Folat tablet 1 mg (Anemolat)', ' Antiinflamasi', 'Tablet', ' PT. Indofarma (Persero) Tbk', 230, 0, 230, 140, 90),
(13, 'Asam Mefenamat 500 mg', ' Antiinflamasi', 'Kapsul', ' PT. Indofarma (Persero) Tbk', 215, 100, 315, 280, 35),
(14, 'Asiklovir krim 5 %', ' Antiinflamasi', 'Tube', ' PT. Indofarma (Persero) Tbk', 2, 20, 22, 3, 19),
(15, 'Asiklovir tablet 200 mg', ' Antiinflamasi', 'Tablet', ' PT. Indofarma (Persero) Tbk', 670, 0, 670, 139, 531),
(16, 'Attapulgite tablet 600 mg (New Antides)', ' Antipirai', 'Tablet', ' PT. Indofarma (Persero) Tbk', 370, 0, 370, 10, 360),
(17, 'Bedak salisil serbuk 2%', ' Antipirai', 'Kotak', ' PT. Indofarma (Persero) Tbk', 3, 10, 13, 5, 8),
(18, '"Betametason krim 0', '1%"', ' Antipirai', 'Tube', 0, 14, 10, 24, 3),
(19, '"Deksametason tablet 0', '5 mg"', ' Antipirai', 'Tablet', 0, 413, 100, 513, 213),
(20, 'Difenhidramin injeksi 10 mg/ml', ' Antipirai', 'Ampul', ' PT. Indofarma (Persero) Tbk', 10, 0, 10, 4, 6),
(21, 'Domperidon suspensi 5 mg/5 ml', ' Antipirai', 'Botol', ' PT. Indofarma (Persero) Tbk', 18, 0, 18, 3, 15),
(22, 'Domperidon tablet 10 mg', 'Antialergi', 'Tablet', ' PT. Indofarma (Persero) Tbk', 300, 0, 300, 130, 170),
(23, 'Eritromisin kaplet 500 mg', 'Antialergi', 'Tablet', ' PT. Indofarma (Persero) Tbk', 215, 0, 215, 70, 145),
(24, 'Eritromisin sirup kering 200 mg/ 5 ml', 'Antialergi', 'Botol', ' PT. Indofarma (Persero) Tbk', 23, 0, 23, 4, 19),
(25, 'Fitomenadion tablet salut gula 10 mg', 'Antialergi', 'Tablet', ' PT. Indofarma (Persero) Tbk', 346, 0, 346, 0, 346),
(26, 'Furosemid tablet 40 mg', 'Antialergi', 'Tablet', ' PT. Imfarmind Farmasi Industri', 200, 0, 200, 40, 160),
(27, 'Garam oralit', 'Antidot', 'Sachet', ' PT. Imfarmind Farmasi Industri', 85, 0, 85, 10, 75),
(28, 'Glimepiride tablet 4 mg', 'Antidot', 'Tablet', ' PT. Imfarmind Farmasi Industri', 230, 0, 230, 0, 230),
(29, 'Glukosa larutan infus steril 5% steril', 'Antidot', 'Botol', ' PT. Imfarmind Farmasi Industri', 0, 20, 20, 0, 20),
(30, '"Hidrokortison krim 2', '5%"', 'Antidot', 'Tube', 0, 20, 0, 20, 1),
(31, 'Ibuprofen suspensi 100 mg/5 ml', 'Antidot', 'Botol', ' PT. Imfarmind Farmasi Industri', 19, 0, 19, 3, 16),
(32, 'Ibuprofen tablet 400 mg', 'Antidot', 'Tablet', ' PT. Imfarmind Farmasi Industri', 270, 100, 370, 310, 60),
(33, 'Isosorbid dinitrat 5 mg', 'Antiepilepsi', 'Tablet', ' PT. Imfarmind Farmasi Industri', 300, 0, 300, 0, 300),
(34, 'Kalsium Laktat tablet 500 mg', 'Antiepilepsi', 'Tablet', ' PT. Imfarmind Farmasi Industri', 200, 200, 400, 200, 200),
(35, 'Ketokonazol krim 2%', 'Antiepilepsi', 'Tube', ' PT. Imfarmind Farmasi Industri', 2, 10, 12, 1, 11),
(36, 'Ketokonazol tablet 200 mg', 'Antiepilepsi', 'Tablet', ' PT. Imfarmind Farmasi Industri', 220, 0, 220, 10, 210),
(37, 'Kloramfenikol salep mata 1%', 'Antiepilepsi', 'Tube', ' PT. Imfarmind Farmasi Industri', 17, 0, 17, 2, 15),
(38, 'Klorfeniramina Maleat tablet 4 mg', 'Antiepilepsi', 'Tablet', ' PT. Imfarmind Farmasi Industri', 1276, 500, 1776, 441, 1335),
(39, 'Klorpromazin tablet salut 25 mg', 'Antiepilepsi', 'Tablet', ' PT. Bufa Aneka', 510, 0, 510, 0, 510),
(40, 'Kotrimoksazol Dewasa Suspensi', 'Antiepilepsi', 'Botol', ' PT. Bufa Aneka', 18, 10, 28, 4, 24),
(41, 'Kotrimoksazol Dewasa Tablet', 'Anti Infeksi', 'Tablet', ' PT. Bufa Aneka', 495, 100, 595, 110, 485),
(42, 'Lanzoprazol kapsul 30 mg', 'Anti Infeksi', 'Kapsul', ' PT. Bufa Aneka', 810, 0, 810, 300, 510),
(43, 'Lidokain injeksi 2%', 'Anti Infeksi', 'Ampul', ' PT. Bufa Aneka', 20, 0, 20, 2, 18),
(44, 'Loperamid tablet 2 mg', 'Anti Infeksi', 'Tablet', ' PT. Bufa Aneka', 327, 0, 327, 95, 232),
(45, 'Metilprednisolon tablet 4 mg', 'Anti Infeksi', 'Tablet', ' PT. Bufa Aneka', 216, 100, 316, 236, 80),
(46, 'Metronidazol sirup 125 mg/ 5 ml', 'Anti Infeksi', 'Botol', ' PT. Bufa Aneka', 20, 0, 20, 13, 7),
(47, 'Metronidazol tab 500 mg', 'Anti Infeksi', 'Tablet', ' PT. Bufa Aneka', 530, 0, 530, 290, 240),
(48, 'N- asetil sistein kapsul 200 mg', 'Analgesik', 'Kapsul', ' PT. Bufa Aneka', 600, 0, 600, 0, 600),
(49, 'Natrium diklofenak tablet 50 mg', 'Analgesik', 'Tablet', ' PT. Bufa Aneka', 285, 0, 285, 100, 185),
(50, '"Natrium klorida 0', '9%"', 'Analgesik', 'Botol', 0, 16, 20, 36, 2),
(51, 'Omeprazol kapsul 20 mg', 'Analgesik', 'Kapsul', ' PT. Bufa Aneka', 280, 0, 280, 280, 0),
(52, 'Parasetamol drop 100 mg/ml', 'Analgesik', 'Botol', ' PT. ETERCON PHARMA', 9, 0, 9, 4, 5),
(53, 'Parasetamol sirup 120 mg/ 5 ml', 'Antipiretik', 'Botol', ' PT. ETERCON PHARMA', 25, 0, 25, 8, 17),
(54, 'Parasetamol tablet 500 mg', 'Antipiretik', 'Kaplet', ' PT. ETERCON PHARMA', 0, 800, 800, 725, 75),
(55, 'Phytomenadion (Vit K) inj i.m 2 mg/ml', 'Antipiretik', 'Ampul', ' PT. ETERCON PHARMA', 20, 0, 20, 2, 18),
(56, 'Pirantel tablet Score (base) 125 mg', 'Antipiretik', 'Tablet', ' PT. ETERCON PHARMA', 490, 600, 1090, 490, 600),
(57, 'Piridoksin (Vitamin B6) tablet 10 mg', 'Antipiretik', 'Tablet', ' PT. ETERCON PHARMA', 2087, 0, 2087, 1418, 669),
(58, 'Prokain benzilpenisilin serbuk injeksi', ' Antiinflamasi', 'Vial', ' PT. ETERCON PHARMA', 28, 0, 28, 0, 28),
(59, 'Ranitidin tablet 150 mg', ' Antiinflamasi', 'Tablet', ' PT. ETERCON PHARMA', 320, 300, 620, 10, 610),
(60, 'Retinol (Vitamin A) 100.000 IU', ' Antiinflamasi', 'Kapsul', ' PT. ETERCON PHARMA', 5, 0, 5, 0, 5),
(61, 'Retinol (Vitamin A) 200.000 IU', ' Antiinflamasi', 'Kapsul', ' PT. ETERCON PHARMA', 0, 0, 0, 0, 0),
(62, 'Ringer laktat larutan infus', ' Antiinflamasi', 'Botol', ' PT. ETERCON PHARMA', 17, 10, 27, 3, 24),
(63, 'Risperidon 2 mg', ' Antipirai', 'Tablet', ' PT. ETERCON PHARMA', 800, 0, 800, 0, 800),
(64, 'Salbutamol cairan ih 0.1% (Ventolin)', ' Antipirai', 'Nebule', ' PT. ETERCON PHARMA', 20, 0, 20, 0, 20),
(65, 'Salbutamol tablet 4 mg (sebagai Sulfat)', ' Antipirai', 'Tablet', ' PT. ETERCON PHARMA', 640, 0, 640, 10, 630),
(66, 'Sefadroksil kapsul 500 mg', ' Antipirai', 'Kapsul', ' PT. ETERCON PHARMA', 530, 0, 530, 30, 500),
(67, 'Sefadroksil sirup kering 125 mg/ 5 ml', ' Antipirai', 'Botol', ' PT. ETERCON PHARMA', 24, 0, 24, 3, 21),
(68, 'Sefiksim kapsul 100 mg', ' Antipirai', 'Kapsul', ' PT. ETERCON PHARMA', 400, 0, 400, 40, 360),
(69, 'Sefiksim sirup 100 mg / 5 ml', 'Antialergi', 'Botol', ' PT. ETERCON PHARMA', 20, 5, 25, 1, 24),
(70, 'Setirizin sirup 5 mg/5 ml', 'Antialergi', 'Botol', ' PT. ETERCON PHARMA', 27, 0, 27, 2, 25),
(71, 'Setirizin tablet 10 mg', 'Antialergi', 'Tablet', ' PT. ETERCON PHARMA', 358, 100, 458, 0, 458),
(72, 'Sianokobalamin injeksi 500 mcg', 'Antialergi', 'Ampul', ' PT. ETERCON PHARMA', 18, 10, 28, 6, 22),
(73, 'Siprofloksasin tab scored 500 mg', 'Antialergi', 'Tablet', ' PT. Bufa Aneka', 240, 0, 240, 0, 240),
(74, 'Spironolakton tablet 25 mg', 'Antidot', 'Tablet', ' PT. Bufa Aneka', 290, 0, 290, 0, 290),
(75, 'Tetrasiklin tablet 500 mg', 'Antidot', 'Tablet', ' PT. Bufa Aneka', 240, 100, 340, 20, 320),
(76, 'Vitamin B Komplek Tablet', 'Antidot', 'Tablet', ' PT. Bufa Aneka', 1120, 0, 1120, 90, 1030),
(77, 'Anti Tetanus Serum 1.500 IU', 'Antidot', 'Ampul', ' PT. Bufa Aneka', 0, 0, 0, 0, 0),
(78, 'Povidon Iodida larutan 10% 60 ml', 'Antidot', 'Botol', ' PT. Bufa Aneka', 20, 0, 20, 0, 20),
(79, 'Amalgam Silver', 'Antidot', 'Kotak', ' PT. ERELA', 1, 0, 1, 0, 1),
(80, 'Devitalisasi pasta (Non Arsen)', 'Antiepilepsi', 'Kotak', ' PT. ERELA', 1, 0, 1, 0, 1),
(81, 'Etil klorida semprot', 'Antiepilepsi', 'Botol', ' PT. ERELA', 10, 0, 10, 0, 10),
(82, 'Eugenol cairan', 'Antiepilepsi', 'Botol', ' PT. ERELA', 5, 0, 5, 0, 5),
(83, 'Glass Ionomer Cement ART', 'Antiepilepsi', 'Kotak', ' PT. ERELA', 1, 0, 1, 0, 1),
(84, 'Kalsium hidroksida pasta', 'Antiepilepsi', 'Kotak', ' PT. ERELA', 1, 0, 1, 0, 1),
(85, 'Klorfenol Kamfer Menthol (CHKM)', 'Antiepilepsi', 'Botol', ' PT. ERELA', 1, 0, 1, 0, 1),
(86, 'Mummifying pasta', 'Antiepilepsi', 'Kotak', ' PT. ERELA', 1, 0, 1, 0, 1),
(87, 'Temporary Stopping Fletcher', 'Antiepilepsi', 'Set', ' PT. ERELA', 1, 0, 1, 0, 1),
(88, 'AC Swab 2%', 'Anti Infeksi', 'Pcs', ' PT. ERELA', 0, 100, 100, 0, 100),
(89, 'Alat Suntik sekali pakai 0.05 cc', 'Anti Infeksi', 'Pcs', ' PT. ERELA', 10, 20, 30, 0, 30),
(90, 'Alat Suntik sekali pakai 0.5 cc', 'Anti Infeksi', 'Pcs', ' PT. ERELA', 10, 20, 30, 2, 28),
(91, 'Alat Suntik sekali pakai 3 cc', 'Anti Infeksi', 'Pcs', ' PT. ERELA', 788, 200, 988, 0, 988),
(92, 'Alkohol 70% 1 Liter', 'Anti Infeksi', 'Botol', ' PT. ERELA', 3, 7, 10, 1, 9),
(93, 'Catgut Plain 2/0 + jarum 1/2 GT 35 mm', 'Anti Infeksi', 'Pcs', ' PT. ERELA', 1, 9, 10, 0, 10),
(94, 'Catgut Plain 3/0 + jarum 1/2 GT 35 mm', 'Anti Infeksi', 'Pcs', ' PT. ERELA', 1, 9, 10, 0, 10),
(95, '"I.V Catheter No. 22 G x 1"""', 'Antineoplastik', 'Pcs', ' PT. ERELA', 17, 0, 17, 0, 17),
(96, '"I.V Catheter No. 24 G x 3/4"""', 'Antineoplastik', 'Pcs', ' PT. ERELA', 10, 0, 10, 0, 10),
(97, 'Infusion Set Anak (60 drops/ml)', 'Antineoplastik', 'Set', ' PT. ERELA', 0, 0, 0, 0, 0),
(98, 'Infusion Set Dewasa (20 drops/ml)', 'Antineoplastik', 'Set', ' PT. ERELA', 0, 0, 0, 0, 0),
(99, 'Kapas Pembalut / Absorben 250 g', 'Antineoplastik', 'Roll', ' PT. ERELA', 0, 0, 0, 0, 0),
(100, 'Kasa Hydrofil Steril 16 x 16 cm', 'Antineoplastik', 'Kotak @ 16 pcs', ' PT. ERELA', 5, 5, 10, 2, 8),
(101, 'Kasa Hydrofil Steril 4 x 5 cm', 'Antineoplastik', 'Pcs', ' PT. ERELA', 12, 10, 22, 2, 20),
(102, 'Lysol 1 Liter', 'Antineoplastik', 'Botol', ' PT. ERELA', 0, 0, 0, 0, 0),
(103, 'Rivanol 300 cc', 'Antineoplastik', 'Botol', ' PT. ERELA', 7, 0, 7, 1, 6),
(104, 'Saveglove PP', 'Antineoplastik', 'Pasang', ' PT. ERELA', 0, 10, 10, 10, 0),
(105, 'Silk 3/0 + jarum 1/2 GT 35 mm', 'Antineoplastik', 'Pcs', ' PT. ERELA', 0, 10, 10, 0, 10),
(106, 'Surgical Mask 3 ply Earloop', 'Antineoplastik', 'Pcs', ' PT. ERELA', 0, 20, 20, 6, 14);

-- --------------------------------------------------------

--
-- Table structure for table `obat_keluar`
--

CREATE TABLE IF NOT EXISTS `obat_keluar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `nama` text NOT NULL,
  `persediaan` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `sisa` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=92 ;

--
-- Dumping data for table `obat_keluar`
--

INSERT INTO `obat_keluar` (`id`, `tanggal`, `nama`, `persediaan`, `jumlah`, `sisa`) VALUES
(79, '2017-05-23', 'Air untuk injeksi 20 ml', 0, 10, 1),
(81, '2017-05-19', 'Amoksisilin kapsul 250 mg', 0, 4, 561),
(82, '2017-05-15', 'Asiklovir tablet 200 mg', 0, 2, 668),
(83, '2017-05-15', 'Amoksisilin kapsul 500 mg', 0, 10, 645),
(85, '2017-05-16', 'Lidokain injeksi 2%', 0, 10, 10),
(89, '2017-05-16', 'Antasida DOEN II Suspensi', 0, 31, 7),
(91, '2017-05-24', 'Attapulgite tablet 600 mg (New Antides)', 0, 20, 350);
