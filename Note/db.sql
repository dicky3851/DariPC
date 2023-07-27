-- phpMyAdmin SQL Dump
-- version 2.10.1
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Jul 12, 2023 at 06:22 PM
-- Server version: 5.0.41
-- PHP Version: 5.2.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `cashback`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `asset_login`
-- 

CREATE TABLE `asset_login` (
  `userID` int(11) NOT NULL auto_increment,
  `username` varchar(200) collate latin1_general_ci NOT NULL,
  `password` varchar(200) collate latin1_general_ci NOT NULL,
  `usergroup` varchar(200) collate latin1_general_ci NOT NULL,
  `status` varchar(200) collate latin1_general_ci NOT NULL,
  `flagFirst` int(11) NOT NULL,
  `region` varchar(200) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`userID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `asset_login`
-- 

INSERT INTO `asset_login` VALUES (1, 'DHEO', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'Active', 1, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `data_chargeback`
-- 

CREATE TABLE `data_chargeback` (
  `tiket` varchar(200) collate latin1_general_ci NOT NULL,
  `nama_merchant` varchar(200) collate latin1_general_ci NOT NULL,
  `mid` varchar(200) collate latin1_general_ci NOT NULL,
  `alamat` varchar(200) collate latin1_general_ci NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `nomor_kartu` varchar(200) collate latin1_general_ci NOT NULL,
  `tanggal_pembayaran` date NOT NULL,
  `kode_approval` varchar(200) collate latin1_general_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `status` varchar(200) collate latin1_general_ci default NULL,
  `uploadDT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `updateDT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`tiket`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `data_chargeback`
-- 

INSERT INTO `data_chargeback` VALUES ('1', 'test', '121212', 'test', '2023-07-12', '1234343', '2023-07-12', 'wq', 2, NULL, '2023-07-12 15:38:29', '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- Table structure for table `data_file`
-- 

CREATE TABLE `data_file` (
  `id` int(11) NOT NULL auto_increment,
  `nama_dokumen` varchar(200) collate latin1_general_ci NOT NULL,
  `updatedAt` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `data_file`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `user_token`
-- 

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(250) collate latin1_general_ci NOT NULL,
  `token` varchar(250) collate latin1_general_ci NOT NULL,
  `updatedAt` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `user_token`
-- 

INSERT INTO `user_token` VALUES (1, 'DHEO', '2eT4AvoRpB', '2023-07-12 14:26:05');
