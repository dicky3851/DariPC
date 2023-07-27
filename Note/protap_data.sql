-- phpMyAdmin SQL Dump
-- version 2.10.1
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Mar 28, 2023 at 09:57 AM
-- Server version: 5.0.41
-- PHP Version: 5.2.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `protaps`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `protap_data`
-- 

CREATE TABLE `protap_data` (
  `idProtap` bigint(11) NOT NULL auto_increment,
  `merchant` varchar(200) collate latin1_general_ci default NULL,
  `alamat` varchar(200) collate latin1_general_ci default NULL,
  `mid_mti` varchar(200) collate latin1_general_ci default NULL,
  `tid_mti` text collate latin1_general_ci,
  `provider` varchar(200) collate latin1_general_ci default NULL,
  `vendor` varchar(200) collate latin1_general_ci default NULL,
  `type_edc` varchar(200) collate latin1_general_ci default NULL,
  `aom` varchar(200) collate latin1_general_ci default NULL,
  `last_trx` text collate latin1_general_ci,
  `history_case` varchar(200) collate latin1_general_ci default NULL,
  `hasil_pm` varchar(200) collate latin1_general_ci default NULL,
  `sv_settle` text collate latin1_general_ci,
  PRIMARY KEY  (`idProtap`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=13 ;

-- 
-- Dumping data for table `protap_data`
-- 

INSERT INTO `protap_data` VALUES (1, 'THE BOTANICA SANCTUARY', 'JL TAMAN SAFARI NO 101 KEL CIBEUREUM KEC CISARUA BOGOR', '71015313902', '73855139\r\n73855140\r\n73855141\r\n73855142\r\n73855143\r\n73855144\r\n73855145\r\n73855146\r\n73855147\r\n73855148\r\n73855149\r\n73855150\r\n', 'TELKOMSEL', 'VISIONET', 'MOVE 2500 WIFI 4G', '3', '73855139 tgl 12-09-2022 Rp. 15,-\r\n73855140 tgl 10-03-2023 Rp. 412,500,- status gagal\r\n73855141 tgl 12-03-2023 Rp. 3,296,000,-\r\n73855142 tgl 11-01-2023 Rp. 137,500,-\r\n73855143 Tgl 12-01-2023 Rp. 13,-\r\n73855144 Tgl 12-09-2022 Rp. 15,-\r\n73855145 Tgl 11-03-2023 Rp. 2,261,500,-\r\n73855146 Tgl 13-03-2023 Rp. 6,592,000,-\r\n73855147 Tgl 10-03-2023 Rp. 1,000,000,-\r\n73855148 Tgl 13-03-2023 Rp. 5,006,000,-\r\n73855149 Tgl 12-03-2023 Rp. 137,500,-\r\n73855150 Tgl 12-09-2022 Rp. 15,- \r\n', 'Case Id 00001010539 tgl 07-03-2023 terkait permintaan Release preauth status done 08-03-2023', 'Terkunjungi - 1/12/2023 - Problem Non Teknis -EDC Disimpan', 'Jan 2023 : Rp. 2.520.594.863,- / 727 Trx\r\nFeb 2023 : Rp. 1.545.109.928,- / 659 Trx\r\nMar 2023 : Rp. 691.113.749,- / 293 Trx\r\n');
