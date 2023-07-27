-- phpMyAdmin SQL Dump
-- version 2.10.1
-- http://www.phpmyadmin.net
-- 
-- Host: localhost:3306
-- Waktu pembuatan: 10. Maret 2023 jam 10:49
-- Versi Server: 5.0.41
-- Versi PHP: 5.2.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `reliability`
-- 

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `data_reliability`
-- 

CREATE TABLE `data_reliability` (
  `idtracking` bigint(200) NOT NULL auto_increment,
  `APLC_SEQ_NO` varchar(200) collate latin1_general_ci default NULL,
  `MID` varchar(200) collate latin1_general_ci default NULL,
  `TID` varchar(200) collate latin1_general_ci default NULL,
  `MERCHANT_NAME` varchar(200) collate latin1_general_ci default NULL,
  `CITY` varchar(200) collate latin1_general_ci default NULL,
  `PROSESPENGAJUAN_APLIKASI` varchar(200) collate latin1_general_ci default NULL,
  `TGL_APLIKASI_MASUK` date default NULL,
  `STATUS_APLIKASI` varchar(200) collate latin1_general_ci default NULL,
  `STATUS_WR` varchar(200) collate latin1_general_ci default NULL,
  `STATUS_WO` varchar(200) collate latin1_general_ci default NULL,
  `PROVIDER_TYP` varchar(200) collate latin1_general_ci default NULL,
  `TMNL_STATUS` varchar(200) collate latin1_general_ci default NULL,
  `TMNL_MODEL` varchar(200) collate latin1_general_ci default NULL,
  `SNO` varchar(200) collate latin1_general_ci default NULL,
  `MER_DTL_ADDR1` varchar(200) collate latin1_general_ci default NULL,
  `MER_DTL_ADDR2` varchar(200) collate latin1_general_ci default NULL,
  `MER_DTL_ADDR3` varchar(200) collate latin1_general_ci default NULL,
  `MID_BRI` varchar(200) collate latin1_general_ci default NULL,
  `MID_BNI` varchar(200) collate latin1_general_ci default NULL,
  `MID_BTN` varchar(200) collate latin1_general_ci default NULL,
  `MID_ASTRAPAY` varchar(200) collate latin1_general_ci default NULL,
  `MID_DANAMON` varchar(200) collate latin1_general_ci default NULL,
  `MID_BSI` varchar(200) collate latin1_general_ci default NULL,
  `MID_OCBC` varchar(200) collate latin1_general_ci default NULL,
  `TID_BRI` varchar(200) collate latin1_general_ci default NULL,
  `TID_BNI` varchar(200) collate latin1_general_ci default NULL,
  `TID_BTN` varchar(200) collate latin1_general_ci default NULL,
  `TID_ASTRAPAY` varchar(200) collate latin1_general_ci default NULL,
  `TID_DANAMON` varchar(200) collate latin1_general_ci default NULL,
  `TID_BSI` varchar(200) collate latin1_general_ci default NULL,
  `TID_OCBC` varchar(200) collate latin1_general_ci default NULL,
  `MEMBER_BANK` varchar(200) collate latin1_general_ci default NULL,
  `updateDT` datetime default NULL,
  PRIMARY KEY  (`idtracking`),
  UNIQUE KEY `index_aplc_tid` (`APLC_SEQ_NO`,`TID`,`MID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=6 ;

-- 
-- Dumping data untuk tabel `data_reliability`
-- 

INSERT INTO `data_reliability` VALUES (1, '12002513700', '772626700', '577000', 'MERCHANT ENDA TES', 'JAKARTA UTARA', '', '2023-03-09', 'DONE PASANG', 'CLOSED COMPLETED', 'CLOSED WO', 'TELKOMSEL', 'NEW REQUEST', '', '', 'JL.HANG JEBAT BARAT XIIINO.70 RT. 008/014', 'KEL KEBON BAWANG KEC BARU JAKARTA', 'JAKARTA SELATAN', '1999228763', '100212900877', '200711299655939', '', '', '', '', '10400946', '12087702', '20031429', '', '', '', '', 'SHARING BMRI-BRI-BNI-BTN', '2023-03-09 16:59:18');
INSERT INTO `data_reliability` VALUES (2, '12002513701', '772626701', '577000', 'MERCHANT ENDA TES 2', 'JAKARTA UTARA', '', '2023-03-09', 'QUALITY ASSURANCE (QAM)', 'PROSES MTI', '', 'TELKOMSEL', 'NEW REQUEST', '', '', 'JL.HANG JEBAT BARAT XIIINO.70 RT. 008/014', 'KEL KEBON BAWANG KEC BARU JAKARTA', 'JAKARTA SELATAN', '1999228763', '100212900877', '200711299655939', '', '', '', '', '10400946', '12087702', '20031429', '', '', '', '', 'SHARING BMRI-BRI-BNI-BTN', '2023-03-09 16:59:18');
INSERT INTO `data_reliability` VALUES (3, '12002513702', '772626701', '577000', 'MERCHANT ENDA TES', 'JAKARTA UTARA', '', '2023-03-09', 'DOC REGISTRATION', 'PROSES MTI', '', 'TELKOMSEL', 'NEW REQUEST', '', '', 'JL.HANG JEBAT BARAT XIIINO.70 RT. 008/014', 'KEL KEBON BAWANG KEC BARU JAKARTA', 'JAKARTA SELATAN', '1999228763', '100212900877', '200711299655939', '', '', '', '', '10400946', '12087702', '20031429', '', '', '', '', 'SHARING BMRI-BRI-BNI-BTN', NULL);
INSERT INTO `data_reliability` VALUES (4, '12002513700', '88888889', '577000', 'MERCHANT YASSIN TES', 'JAKARTA UTARA', '', '2023-03-09', 'DRAFT', 'PROSES MTI', '', 'TELKOMSEL', 'NEW REQUEST', '', '', 'JL.HANG JEBAT BARAT XIIINO.70 RT. 008/014', 'KEL KEBON BAWANG KEC BARU JAKARTA', 'JAKARTA SELATAN', '1999228763', '100212900877', '200711299655939', '', '', '', '', '10400946', '12087702', '20031429', '', '', '', '', 'SHARING BMRI-BRI-BNI-BTN', '2023-03-09 17:35:55');
INSERT INTO `data_reliability` VALUES (5, '12002513701', '99999999', '577000', 'MERCHANT YASSIN TES 2', 'JAKARTA UTARA', '', '2023-03-09', 'DRAFT', 'PROSES MTI', '', 'TELKOMSEL', 'NEW REQUEST', '', '', 'JL.HANG JEBAT BARAT XIIINO.70 RT. 008/014', 'KEL KEBON BAWANG KEC BARU JAKARTA', 'JAKARTA SELATAN', '1999228763', '100212900877', '200711299655939', '', '', '', '', '10400946', '12087702', '20031429', '', '', '', '', 'SHARING BMRI-BRI-BNI-BTN', '2023-03-09 17:35:55');

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `mon_mid`
-- 

CREATE TABLE `mon_mid` (
  `idMerchant` bigint(200) NOT NULL auto_increment,
  `mid` varchar(200) default NULL,
  `merchant` varchar(200) default NULL,
  `merchantAddr` text,
  `merchantCity` varchar(200) default NULL,
  `kodepos` varchar(200) default NULL,
  `segment` varchar(200) default NULL,
  `cp` varchar(200) default NULL,
  `mobilePhone` varchar(200) default NULL,
  `phone` varchar(200) default NULL,
  `merchantDesc` varchar(500) default NULL,
  `regionMTI` varchar(200) default NULL,
  PRIMARY KEY  (`idMerchant`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- 
-- Dumping data untuk tabel `mon_mid`
-- 

INSERT INTO `mon_mid` VALUES (1, '71001740909', 'STUJA COFFEE', 'JL. MERTA AGUNG 56 KEL.BANJAR PENGUBENGAN KAUH KEC.BADUNG BADUNG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `mon_mid` VALUES (2, '70403815515', 'SUPER INDO KALIMALANG', 'JL INSPEKSI KALIMALANG KOMP JAKA PERMAI JAKARTA TIMUR 17000 ', 'JAKARTA TIMUR (KOTA ADMINISTRASI)', NULL, 'ANCHOR', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `mon_mid` VALUES (3, '70405257969', 'SETIA KAWAN ELEKTRONIK', 'JL ISKANDAR MUDA NO 57-F  ', NULL, '20000', 'Retail', 'TRESSEA TANJAYA', '085760505300', '0614556825', 'ELECTRONIC SALES', NULL);

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `mon_result`
-- 

CREATE TABLE `mon_result` (
  `idResult` bigint(200) NOT NULL auto_increment,
  `caseDT` date default NULL,
  `caseStatus` varchar(200) default NULL,
  `idMerchant` bigint(200) default NULL,
  `mid` varchar(200) default NULL,
  `idTID` bigint(200) default NULL,
  `tid` varchar(200) default NULL,
  PRIMARY KEY  (`idResult`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- 
-- Dumping data untuk tabel `mon_result`
-- 

INSERT INTO `mon_result` VALUES (1, '2020-07-01', 'Open', 1, '71001740909', 1, '73047357');
INSERT INTO `mon_result` VALUES (2, '2020-07-02', 'Open', 2, '70403815515', 2, '73047369');
INSERT INTO `mon_result` VALUES (3, '2020-07-02', 'Open', 2, '70403815515', 3, '73047370');
INSERT INTO `mon_result` VALUES (4, '2020-07-04', 'Open', 3, '70405257969', 4, '73047401');

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `mon_result_detail`
-- 

CREATE TABLE `mon_result_detail` (
  `idDetail` bigint(200) NOT NULL auto_increment,
  `idResult` bigint(200) default NULL,
  `actionDT` date default NULL,
  `detail` varchar(1000) default NULL,
  `remarks` text,
  `detailStatus` varchar(200) default '1',
  PRIMARY KEY  (`idDetail`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

-- 
-- Dumping data untuk tabel `mon_result_detail`
-- 

INSERT INTO `mon_result_detail` VALUES (1, 1, '2020-07-01', 'EDC is monitored no transaction', NULL, '1');
INSERT INTO `mon_result_detail` VALUES (2, 1, '2020-07-02', 'Outbound WA to PIC Merchant', NULL, '1');
INSERT INTO `mon_result_detail` VALUES (3, 1, '2020-07-03', 'Outbound WA not responded by PIC Merchant', NULL, '1');
INSERT INTO `mon_result_detail` VALUES (4, 1, '2020-07-03', 'Outbound Call by Agent Heksa to PIC Merchant', NULL, '1');
INSERT INTO `mon_result_detail` VALUES (5, 1, '2020-07-03', 'Outbound Call to PIC Merchant not answered', 'Tidak diangkat', '0');
INSERT INTO `mon_result_detail` VALUES (6, 1, '2020-07-04', 'Outbound Call to PIC Merchant not succeeded', 'Reject Call', '1');
INSERT INTO `mon_result_detail` VALUES (7, 1, '2020-07-04', 'CaseID 00000246126 - Request Visit by Vendor Telkom', NULL, '1');
INSERT INTO `mon_result_detail` VALUES (8, 1, '2020-07-05', 'CaseID 00000246126 - Vendor Telkom visited', 'EDC Normal. Issue on MDR - merchant request reduction', '1');
INSERT INTO `mon_result_detail` VALUES (9, 1, '2020-07-05', 'CaseID 00000246145 - Request MDR Reduction Approval to Region V - Jakarta III', NULL, '1');
INSERT INTO `mon_result_detail` VALUES (10, 2, '2023-01-07', 'Draft', NULL, '1');
INSERT INTO `mon_result_detail` VALUES (11, 2, '2023-01-07', 'Doc Registration', NULL, '1');
INSERT INTO `mon_result_detail` VALUES (12, 2, '2023-01-07', 'Quality Assurance (QAM)', 'Sedang dalam proses pengecekan dokumen', '1');
INSERT INTO `mon_result_detail` VALUES (13, 3, '2020-06-29', 'EDC is monitored no transaction', NULL, '1');
INSERT INTO `mon_result_detail` VALUES (14, 3, '2020-06-30', 'Outbound WA to PIC Merchant', NULL, '1');
INSERT INTO `mon_result_detail` VALUES (15, 3, '2020-07-01', 'Outbound WA not responded by PIC Merchant', NULL, '1');
INSERT INTO `mon_result_detail` VALUES (16, 3, '2020-07-01', 'Outbound Call by Agent Heksa to PIC Merchant', NULL, '1');
INSERT INTO `mon_result_detail` VALUES (17, 3, '2020-07-02', 'Transaction Occurs', 'EDC has been used for transaction', '1');
INSERT INTO `mon_result_detail` VALUES (18, 4, '2020-07-10', 'EDC is monitored no transaction', NULL, '1');
INSERT INTO `mon_result_detail` VALUES (19, 4, '2020-07-11', 'Outbound WA to PIC Merchant', NULL, '1');
INSERT INTO `mon_result_detail` VALUES (20, 4, '2020-07-12', 'Outbound WA not responded by PIC Merchant', NULL, '1');
INSERT INTO `mon_result_detail` VALUES (21, 4, '2020-07-13', 'Outbound Call by Agent Heksa to PIC Merchant', NULL, '1');
INSERT INTO `mon_result_detail` VALUES (22, 2, '2023-01-08', 'Data Entry ', 'sedang dalam proses penginputan data ', '1');
INSERT INTO `mon_result_detail` VALUES (23, 2, '2023-01-08', 'Application Check', NULL, '1');
INSERT INTO `mon_result_detail` VALUES (24, 2, '2023-01-08', 'Merchant Analyst', 'phone Verifikasi', '1');
INSERT INTO `mon_result_detail` VALUES (25, 2, '2023-01-08', 'Approval Completed', 'aplikasi approved', '1');
INSERT INTO `mon_result_detail` VALUES (26, 2, '2023-01-09', 'Preparasi', 'Sent to Merchant', '1');
INSERT INTO `mon_result_detail` VALUES (27, 2, '2023-01-10', 'Done Pasang', 'ÿØÿí', '1');

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `mon_tid`
-- 

CREATE TABLE `mon_tid` (
  `idTID` bigint(200) NOT NULL auto_increment,
  `idMerchant` bigint(200) default NULL,
  `mid` varchar(200) default NULL,
  `tid` varchar(200) default NULL,
  `edctype` varchar(200) default NULL,
  `serial` varchar(200) default NULL,
  `acquirer` varchar(200) default NULL,
  `sla` decimal(10,2) default NULL,
  `vendor` varchar(200) default NULL,
  `connection` varchar(200) default NULL,
  PRIMARY KEY  (`idTID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- 
-- Dumping data untuk tabel `mon_tid`
-- 

INSERT INTO `mon_tid` VALUES (1, 1, '71001740909', '73047357', 'Veri C680', '15340CT24711523', 'Bank Mandiri', 95.50, 'Telkom', 'GPRS ISAT');
INSERT INTO `mon_tid` VALUES (2, 2, '70403815515', '73047369', 'Veri C680', '15340CT24711918', 'Bank Mandiri', 96.00, 'JO BNI PROJECT PART 4 18012023 - BATCH 05', 'GPRS ISAT');
INSERT INTO `mon_tid` VALUES (3, 2, '70403815515', '73047370', 'Veri C680', '15340CT24711919', 'Bank Mandiri', 95.50, 'Telkom', 'GPRS ISAT');
INSERT INTO `mon_tid` VALUES (4, 3, '70403815515', '73047401', 'Veri C680', '15340CT24711789', 'Bank Mandiri', 95.80, 'Telkom', 'GPRS ISAT');

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `reliability_log`
-- 

CREATE TABLE `reliability_log` (
  `idLog` int(200) NOT NULL auto_increment,
  `idtracking` int(200) default NULL,
  `idStatus` int(200) default NULL,
  `STATUS_APLIKASI` varchar(200) collate latin1_general_ci default NULL,
  `STATUS_WR` varchar(200) collate latin1_general_ci default NULL,
  `STATUS_WO` varchar(200) collate latin1_general_ci default NULL,
  `uploadBy` varchar(200) collate latin1_general_ci default NULL,
  `actionDT` datetime default NULL,
  PRIMARY KEY  (`idLog`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=25 ;

-- 
-- Dumping data untuk tabel `reliability_log`
-- 

INSERT INTO `reliability_log` VALUES (1, 1, 1, 'DRAFT', 'PROSES MTI', '', NULL, '2023-03-09 16:59:18');
INSERT INTO `reliability_log` VALUES (2, 2, 1, 'DRAFT', 'PROSES MTI', '', NULL, '2023-03-09 16:59:18');
INSERT INTO `reliability_log` VALUES (3, 3, 0, 'DOC REGISTRATION', 'PROSES MTI', '', NULL, '2023-03-09 17:05:25');
INSERT INTO `reliability_log` VALUES (4, 3, 0, 'DOC REGISTRATION', 'PROSES MTI', '', NULL, '2023-03-09 17:05:25');
INSERT INTO `reliability_log` VALUES (5, 3, 2, 'DOC REGISTRATION', 'PROSES MTI', '', NULL, '2023-03-09 17:09:33');
INSERT INTO `reliability_log` VALUES (6, 3, 2, 'DOC REGISTRATION', 'PROSES MTI', '', NULL, '2023-03-09 17:09:33');
INSERT INTO `reliability_log` VALUES (7, 3, 2, 'DOC REGISTRATION', 'PROSES MTI', '', NULL, '2023-03-09 17:09:39');
INSERT INTO `reliability_log` VALUES (8, 3, 2, 'DOC REGISTRATION', 'PROSES MTI', '', NULL, '2023-03-09 17:09:39');
INSERT INTO `reliability_log` VALUES (9, 0, 2, 'DOC REGISTRATION', 'PROSES MTI', '', NULL, '2023-03-09 17:17:32');
INSERT INTO `reliability_log` VALUES (10, 0, 2, 'DOC REGISTRATION', 'PROSES MTI', '', NULL, '2023-03-09 17:17:32');
INSERT INTO `reliability_log` VALUES (11, 1, 2, 'DOC REGISTRATION', 'PROSES MTI', '', NULL, '2023-03-09 17:21:07');
INSERT INTO `reliability_log` VALUES (12, 2, 2, 'DOC REGISTRATION', 'PROSES MTI', '', NULL, '2023-03-09 17:21:07');
INSERT INTO `reliability_log` VALUES (18, 5, 1, 'DRAFT', 'PROSES MTI', '', NULL, '2023-03-09 17:35:55');
INSERT INTO `reliability_log` VALUES (17, 4, 1, 'DRAFT', 'PROSES MTI', '', NULL, '2023-03-09 17:35:55');
INSERT INTO `reliability_log` VALUES (15, 1, 3, 'QUALITY ASSURANCE (QAM)', 'PROSES MTI', '', NULL, '2023-03-09 17:32:12');
INSERT INTO `reliability_log` VALUES (16, 2, 3, 'QUALITY ASSURANCE (QAM)', 'PROSES MTI', '', NULL, '2023-03-09 17:32:12');
INSERT INTO `reliability_log` VALUES (19, 1, 4, 'DATA ENTRY', 'PROSES MTI', '', NULL, '2023-03-09 17:37:55');
INSERT INTO `reliability_log` VALUES (20, 1, 5, 'APPLICATION CHECK', 'PROSES MTI', '', NULL, '2023-03-09 17:39:27');
INSERT INTO `reliability_log` VALUES (21, 1, 6, 'MERCHANT ANALYST', 'PROSES MTI', '', NULL, '2023-03-09 17:39:59');
INSERT INTO `reliability_log` VALUES (22, 1, 7, 'APPROVAL COMPLETED', 'OPEN WAREHOUSE', '', NULL, '2023-03-09 17:40:47');
INSERT INTO `reliability_log` VALUES (23, 1, 8, 'PREPARASI', 'OPEN WAREHOUSE', '', NULL, '2023-03-09 17:41:30');
INSERT INTO `reliability_log` VALUES (24, 1, 9, 'DONE PASANG', 'CLOSED COMPLETED', 'CLOSED WO', NULL, '2023-03-09 17:42:21');

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `status_reliability`
-- 

CREATE TABLE `status_reliability` (
  `idStatus` bigint(200) NOT NULL auto_increment,
  `Status` varchar(200) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`idStatus`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=10 ;

-- 
-- Dumping data untuk tabel `status_reliability`
-- 

INSERT INTO `status_reliability` VALUES (1, 'DRAFT');
INSERT INTO `status_reliability` VALUES (2, 'DOC REGISTRATION');
INSERT INTO `status_reliability` VALUES (3, 'QUALITY ASSURANCE (QAM)');
INSERT INTO `status_reliability` VALUES (4, 'DATA ENTRY');
INSERT INTO `status_reliability` VALUES (5, 'APPLICATION CHECK');
INSERT INTO `status_reliability` VALUES (6, 'MERCHANT ANALYST');
INSERT INTO `status_reliability` VALUES (7, 'APPROVAL COMPLETED');
INSERT INTO `status_reliability` VALUES (8, 'PREPARASI');
INSERT INTO `status_reliability` VALUES (9, 'DONE PASANG');

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `user`
-- 

CREATE TABLE `user` (
  `userID` int(11) NOT NULL auto_increment,
  `username` varchar(200) collate latin1_general_ci NOT NULL,
  `password` varchar(200) collate latin1_general_ci NOT NULL,
  `flagFirst` int(20) NOT NULL,
  `status` varchar(200) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`userID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

-- 
-- Dumping data untuk tabel `user`
-- 

INSERT INTO `user` VALUES (1, 'giri', 'admin123', 1, 'Active');
INSERT INTO `user` VALUES (2, 'enda', '21232f297a57a5a743894a0e4a801fc3', 1, 'Active');
