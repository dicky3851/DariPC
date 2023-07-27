-- phpMyAdmin SQL Dump
-- version 2.10.1
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Waktu pembuatan: 03. Mei 2023 jam 15:03
-- Versi Server: 5.0.41
-- Versi PHP: 5.2.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `reliability`
-- 

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `user`
-- 

CREATE TABLE `user` (
  `userID` bigint(11) NOT NULL auto_increment,
  `username` varchar(200) character set latin1 default NULL,
  `password` varchar(200) character set latin1 default NULL,
  `usergroup` varchar(200) character set latin1 default NULL,
  `idBank` bigint(200) default '0',
  `flagFirst` int(20) default NULL,
  `status` varchar(200) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`userID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=6 ;

-- 
-- Dumping data untuk tabel `user`
-- 

INSERT INTO `user` VALUES (2, 'enda', '21232f297a57a5a743894a0e4a801fc3', 'ADMINISTRATOR', 0, 1, 'Active');
INSERT INTO `user` VALUES (3, 'giri', '21232f297a57a5a743894a0e4a801fc3', 'ADMINISTRATOR', 0, 1, 'Active');
INSERT INTO `user` VALUES (4, 'BTN', '6eb02c9ceff401e3c1170df2c4489a22', 'BTN', 0, 1, 'Active');
INSERT INTO `user` VALUES (5, 'BNI', '8a6d1d90419e31703bb411662afb6938', 'BNI', 0, 1, 'Active');
INSERT INTO `user` VALUES (1, 'DICKY', '21232f297a57a5a743894a0e4a801fc3', 'ADMINISTRATOR', 0, 1, 'Active');
