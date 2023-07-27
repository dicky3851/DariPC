-- phpMyAdmin SQL Dump
-- version 2.10.1
-- http://www.phpmyadmin.net
-- 
-- Host: localhost:3306
-- Waktu pembuatan: 09. Mei 2023 jam 17:38
-- Versi Server: 5.0.41
-- Versi PHP: 5.2.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `pm`
-- 

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `asset_log`
-- 

CREATE TABLE `asset_log` (
  `idLog` bigint(200) NOT NULL auto_increment,
  `idMapping` bigint(200) default NULL,
  `idStatus` bigint(200) default NULL,
  `remarks` varchar(1000) default NULL,
  `logDT` date default NULL,
  `logDT2` datetime default NULL,
  `logBy` int(20) default NULL,
  `idRC` bigint(200) default NULL,
  `rc` varchar(200) default NULL,
  `sn_edc` varchar(200) default NULL,
  `sn_sam` varchar(200) default NULL,
  `sn_sim` varchar(200) default NULL,
  `provider_sim` varchar(200) default NULL,
  `produk_sam` varchar(200) default NULL,
  `userMapping` varchar(200) default NULL,
  PRIMARY KEY  (`idLog`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data untuk tabel `asset_log`
-- 


-- --------------------------------------------------------

-- 
-- Struktur dari tabel `asset_login`
-- 

CREATE TABLE `asset_login` (
  `userID` bigint(200) NOT NULL auto_increment,
  `username` varchar(200) default NULL,
  `password` varchar(200) default NULL,
  `usergroup` varchar(200) default NULL,
  `idVendor` bigint(200) default '0',
  `status` varchar(20) default NULL,
  `flagFirst` int(20) default NULL,
  PRIMARY KEY  (`userID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

-- 
-- Dumping data untuk tabel `asset_login`
-- 

INSERT INTO `asset_login` VALUES (1, 'chamber', '6b08695f77df2c6917a165e21aa1a191', 'Administrator', 0, 'Active', 1);
INSERT INTO `asset_login` VALUES (2, 'enda', 'e3211c849b00d9798140246dff0203f6', 'Administrator', 0, 'Active', 1);
INSERT INTO `asset_login` VALUES (3, 'INDOPAY', 'e0f84cb2b234b511d6eb698bd30bbf50', 'Vendor', 1, 'Active', 1);
INSERT INTO `asset_login` VALUES (4, 'VISIONET', 'ff1df363376a7e19d21d6b7f963c0b59', 'Vendor', 6, 'Active', 1);
INSERT INTO `asset_login` VALUES (5, 'INGENICO', '202cb962ac59075b964b07152d234b70', 'Vendor', 2, 'Active', 1);
INSERT INTO `asset_login` VALUES (9, 'BRINGIN', '2cf0ac1516eb32fbe74e7dfef9db3358', 'Vendor', 3, 'Active', 1);
INSERT INTO `asset_login` VALUES (10, 'TELKOM', '01d782c25cd0e1d3e45ba6abbf395024', 'Vendor', 5, 'Active', 1);
INSERT INTO `asset_login` VALUES (11, 'PRIMAVISTA', '202cb962ac59075b964b07152d234b70', 'Vendor', 4, 'Active', 1);
INSERT INTO `asset_login` VALUES (47, 'DICKY', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 0, 'Active', 1);
INSERT INTO `asset_login` VALUES (48, 'GSS KONVEN', '7c3613dba5171cb6027c67835dd3b9d4', 'Vendor', 8, 'Active', 1);
INSERT INTO `asset_login` VALUES (49, 'Giri', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 0, 'Active', 1);

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `asset_note`
-- 

CREATE TABLE `asset_note` (
  `idnote` int(20) NOT NULL auto_increment,
  `note` varchar(200) collate latin1_general_ci default NULL,
  `status` varchar(200) collate latin1_general_ci default '''Active''',
  PRIMARY KEY  (`idnote`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=11 ;

-- 
-- Dumping data untuk tabel `asset_note`
-- 

INSERT INTO `asset_note` VALUES (1, 'REPLACE MANDIRI', 'Active');
INSERT INTO `asset_note` VALUES (2, 'NEW AQUISISI BRI', 'Active');
INSERT INTO `asset_note` VALUES (3, 'NEW AQUISISI BTN', 'Active');
INSERT INTO `asset_note` VALUES (4, 'NEW AQUISISI MANDIRI', 'Active');
INSERT INTO `asset_note` VALUES (5, 'PART BRI', 'Active');
INSERT INTO `asset_note` VALUES (6, 'PART MANDIRI', 'Active');
INSERT INTO `asset_note` VALUES (7, 'REPLACE BRI', 'Active');
INSERT INTO `asset_note` VALUES (8, 'REPLACE BTN', 'Active');
INSERT INTO `asset_note` VALUES (9, 'REPLACE MANDIRI', 'Active');
INSERT INTO `asset_note` VALUES (10, 'PART BTN', 'inActive');

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `asset_rc`
-- 

CREATE TABLE `asset_rc` (
  `idRC` bigint(200) NOT NULL auto_increment,
  `idStatus` bigint(200) default NULL,
  `rc` varchar(200) default NULL,
  `statusRC` varchar(200) default NULL,
  PRIMARY KEY  (`idRC`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

-- 
-- Dumping data untuk tabel `asset_rc`
-- 

INSERT INTO `asset_rc` VALUES (1, 9, 'Merchant - Belum ada konfirmasi Bank/Bisnis MTI', 'Active');
INSERT INTO `asset_rc` VALUES (2, 9, 'Merchant - Belum ada Konfirmasi dari PIC, KP Merchant', 'Active');
INSERT INTO `asset_rc` VALUES (3, 9, 'Merchant - Dalam Perbaikan / Renovasi', 'Active');
INSERT INTO `asset_rc` VALUES (4, 9, 'Merchant - EDC tidak ada di Lokasi', 'Active');
INSERT INTO `asset_rc` VALUES (5, 9, 'Merchant - Line Telepon Bermasalah', 'Active');
INSERT INTO `asset_rc` VALUES (6, 9, 'Merchant - Line Telepon tidak ada', 'Active');
INSERT INTO `asset_rc` VALUES (7, 9, 'Merchant - Lokasi Merchant tidak Ditemukan', 'Active');
INSERT INTO `asset_rc` VALUES (8, 9, 'Merchant - Menolak Pemasangan Baru EDC', 'Active');
INSERT INTO `asset_rc` VALUES (9, 9, 'Merchant - Nama/Alamat/Data Berbeda dengan SPK', 'Active');
INSERT INTO `asset_rc` VALUES (10, 9, 'Merchant - Permintaan Perubahan Fitur', 'Active');
INSERT INTO `asset_rc` VALUES (11, 9, 'Merchant - Permintaan Perubahan Type Komunikasi', 'Active');
INSERT INTO `asset_rc` VALUES (12, 9, 'Merchant - Tidak ada Papan Nama di Merchant', 'Active');
INSERT INTO `asset_rc` VALUES (13, 9, 'Merchant - Tutup Permanen', 'Active');
INSERT INTO `asset_rc` VALUES (14, 9, 'Merchant - Menolak Penarikan EDC', 'Active');
INSERT INTO `asset_rc` VALUES (15, 9, 'Merchant - Menolak Pergantian EDC', 'Active');
INSERT INTO `asset_rc` VALUES (16, 9, 'MTI - Aplikasi EDC Bermasalah', 'Active');
INSERT INTO `asset_rc` VALUES (17, 9, 'MTI - Perangkat EDC Bermasalah', 'Active');
INSERT INTO `asset_rc` VALUES (18, 9, 'MTI - SAM Card Bermasalah', 'Active');
INSERT INTO `asset_rc` VALUES (19, 9, 'MTI - SIM Card Bermasalah', 'Active');
INSERT INTO `asset_rc` VALUES (20, 9, 'MTI - Pending ECR', 'Active');
INSERT INTO `asset_rc` VALUES (21, 9, 'Merchant - Pending Pasang', 'Active');

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `asset_status`
-- 

CREATE TABLE `asset_status` (
  `idStatus` bigint(200) NOT NULL auto_increment,
  `status` varchar(200) default NULL,
  `domain` varchar(200) default NULL,
  `flagEnd` int(20) default NULL,
  `urutanGraf` int(20) default NULL,
  PRIMARY KEY  (`idStatus`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

-- 
-- Dumping data untuk tabel `asset_status`
-- 

INSERT INTO `asset_status` VALUES (3, 'Belum Terkunjungi', 'Vendor', 0, 1);
INSERT INTO `asset_status` VALUES (5, 'Terkunjungi', 'Posko', 1, 10);

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `data_pm`
-- 

CREATE TABLE `data_pm` (
  `idPm` bigint(20) NOT NULL auto_increment,
  `uploadDT` date NOT NULL,
  `uploadBy` varchar(200) collate latin1_general_ci NOT NULL,
  `MID` varchar(200) collate latin1_general_ci default NULL,
  `TID` varchar(200) collate latin1_general_ci default NULL,
  `idStatus` varchar(200) collate latin1_general_ci NOT NULL,
  `feature` varchar(50) collate latin1_general_ci default NULL,
  `mrchnt_name` varchar(200) collate latin1_general_ci default NULL,
  `mrchnt_official` varchar(200) collate latin1_general_ci default NULL,
  `mrchnt_addr` varchar(200) collate latin1_general_ci default NULL,
  `LOB` varchar(200) collate latin1_general_ci default NULL,
  `city` varchar(200) collate latin1_general_ci default NULL,
  `region` varchar(200) collate latin1_general_ci default NULL,
  `vendor` varchar(200) collate latin1_general_ci default NULL,
  `install_date` varchar(200) collate latin1_general_ci default NULL,
  `edc_status` varchar(200) collate latin1_general_ci default NULL,
  `mrchnt_type` varchar(200) collate latin1_general_ci default NULL,
  `mbr_bank` varchar(200) collate latin1_general_ci default NULL,
  `segment` varchar(200) collate latin1_general_ci default NULL,
  `edc_type` varchar(200) collate latin1_general_ci default NULL,
  `sn_edc` varchar(200) collate latin1_general_ci default NULL,
  `provider` varchar(200) collate latin1_general_ci default NULL,
  `sim_sno` varchar(200) collate latin1_general_ci default NULL,
  `conn_type` varchar(200) collate latin1_general_ci default NULL,
  `AOM` varchar(200) collate latin1_general_ci default NULL,
  `sts_kunjungan` varchar(200) collate latin1_general_ci default NULL,
  `tgl_kunjungan` varchar(200) collate latin1_general_ci default NULL,
  `kategori` varchar(200) collate latin1_general_ci default NULL,
  `sub_kategori` varchar(200) collate latin1_general_ci default NULL,
  `remark` varchar(200) collate latin1_general_ci default NULL,
  `pic_nama` varchar(200) collate latin1_general_ci default NULL,
  `pic_tlp` varchar(200) collate latin1_general_ci default NULL,
  `test_trx` varchar(200) collate latin1_general_ci default NULL,
  `tgl_test` varchar(200) collate latin1_general_ci default NULL,
  `paper_roll` varchar(200) collate latin1_general_ci default NULL,
  `edc_banklain` varchar(200) collate latin1_general_ci default NULL,
  `bln_pm` varchar(200) collate latin1_general_ci NOT NULL,
  `updateDT` date NOT NULL,
  `updateBy` varchar(200) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`idPm`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data untuk tabel `data_pm`
-- 


-- --------------------------------------------------------

-- 
-- Struktur dari tabel `monthname`
-- 

CREATE TABLE `monthname` (
  `idMonth` int(20) NOT NULL,
  `monthname` varchar(50) collate latin1_general_ci default NULL,
  `monthname2` varchar(50) collate latin1_general_ci default NULL,
  `monthname3` varchar(50) collate latin1_general_ci default NULL,
  `monthname4` varchar(50) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`idMonth`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data untuk tabel `monthname`
-- 

INSERT INTO `monthname` VALUES (1, 'Januari', 'January', 'Jan', 'Jan');
INSERT INTO `monthname` VALUES (2, 'Febuari', 'February', 'Feb', 'Feb');
INSERT INTO `monthname` VALUES (3, 'Maret', 'March', 'Mar', 'Mar');
INSERT INTO `monthname` VALUES (4, 'April', 'April', 'Apr', 'Apr');
INSERT INTO `monthname` VALUES (5, 'Mei', 'May', 'Mei', 'May');
INSERT INTO `monthname` VALUES (6, 'Juni', 'June', 'Jun', 'Jun');
INSERT INTO `monthname` VALUES (7, 'Juli', 'July', 'Jul', 'Jul');
INSERT INTO `monthname` VALUES (8, 'Agustus', 'August', 'Agt', 'Aug');
INSERT INTO `monthname` VALUES (9, 'September', 'September', 'Sep', 'Sep');
INSERT INTO `monthname` VALUES (10, 'Oktober', 'October', 'Okt', 'Oct');
INSERT INTO `monthname` VALUES (11, 'November', 'November', 'Nov', 'Nov');
INSERT INTO `monthname` VALUES (12, 'Desember', 'December', 'Des', 'Dec');

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `vendor`
-- 

CREATE TABLE `vendor` (
  `idVendor` bigint(200) NOT NULL auto_increment,
  `vendor` varchar(200) default NULL,
  `namedetail` varchar(200) default NULL,
  `urutanGraf` int(20) default NULL,
  PRIMARY KEY  (`idVendor`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- 
-- Dumping data untuk tabel `vendor`
-- 

INSERT INTO `vendor` VALUES (1, 'INDOPAY', 'INDOPAY', 2);
INSERT INTO `vendor` VALUES (2, 'INGENICO', 'INGENICO', 3);
INSERT INTO `vendor` VALUES (3, 'BRINGIN GIGANTARA', 'BRINGIN GIGANTARA', 1);
INSERT INTO `vendor` VALUES (4, 'PRIMAVISTA', 'PRIMAVISTA', 4);
INSERT INTO `vendor` VALUES (5, 'TELKOM', 'TELKOM', 5);
INSERT INTO `vendor` VALUES (6, 'VISIONET', 'VISIONET', 6);
INSERT INTO `vendor` VALUES (7, 'PT INTEGRA PRATAMA', 'PT INTEGRA PRATAMA', NULL);
INSERT INTO `vendor` VALUES (8, 'GSS-KONVEN', 'GSS-KONVEN', NULL);
INSERT INTO `vendor` VALUES (9, 'KONVEN-GSS', 'KONVEN-GSS', NULL);

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `warna`
-- 

CREATE TABLE `warna` (
  `idWarna` int(20) NOT NULL auto_increment,
  `warna` varchar(200) default NULL,
  `jumlah` int(20) default NULL,
  PRIMARY KEY  (`idWarna`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- 
-- Dumping data untuk tabel `warna`
-- 

INSERT INTO `warna` VALUES (1, 'Red', 15);
INSERT INTO `warna` VALUES (2, 'Blue', 19);
INSERT INTO `warna` VALUES (3, 'Yellow', 20);
INSERT INTO `warna` VALUES (4, 'Green', 23);
INSERT INTO `warna` VALUES (5, 'Purple', 17);
INSERT INTO `warna` VALUES (6, 'Orange', 25);
