-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 02 Feb 2023 pada 15.57
-- Versi server: 10.2.44-MariaDB-cll-lve
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `opef1643_reliability`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mon_mid`
--

CREATE TABLE `mon_mid` (
  `idMerchant` bigint(200) NOT NULL,
  `mid` varchar(200) DEFAULT NULL,
  `merchant` varchar(200) DEFAULT NULL,
  `merchantAddr` text DEFAULT NULL,
  `merchantCity` varchar(200) DEFAULT NULL,
  `kodepos` varchar(200) DEFAULT NULL,
  `segment` varchar(200) DEFAULT NULL,
  `cp` varchar(200) DEFAULT NULL,
  `mobilePhone` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `merchantDesc` varchar(500) DEFAULT NULL,
  `regionMTI` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mon_mid`
--

INSERT INTO `mon_mid` (`idMerchant`, `mid`, `merchant`, `merchantAddr`, `merchantCity`, `kodepos`, `segment`, `cp`, `mobilePhone`, `phone`, `merchantDesc`, `regionMTI`) VALUES
(1, '71001740909', 'STUJA COFFEE', 'JL. MERTA AGUNG 56 KEL.BANJAR PENGUBENGAN KAUH KEC.BADUNG BADUNG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '70403815515', 'SUPER INDO KALIMALANG', 'JL INSPEKSI KALIMALANG KOMP JAKA PERMAI JAKARTA TIMUR 17000 ', 'JAKARTA TIMUR (KOTA ADMINISTRASI)', NULL, 'ANCHOR', NULL, NULL, NULL, NULL, NULL),
(3, '70405257969', 'SETIA KAWAN ELEKTRONIK', 'JL ISKANDAR MUDA NO 57-F  ', NULL, '20000', 'Retail', 'TRESSEA TANJAYA', '085760505300', '0614556825', 'ELECTRONIC SALES', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mon_result`
--

CREATE TABLE `mon_result` (
  `idResult` bigint(200) NOT NULL,
  `caseDT` date DEFAULT NULL,
  `caseStatus` varchar(200) DEFAULT NULL,
  `idMerchant` bigint(200) DEFAULT NULL,
  `mid` varchar(200) DEFAULT NULL,
  `idTID` bigint(200) DEFAULT NULL,
  `tid` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mon_result`
--

INSERT INTO `mon_result` (`idResult`, `caseDT`, `caseStatus`, `idMerchant`, `mid`, `idTID`, `tid`) VALUES
(1, '2020-07-01', 'Open', 1, '71001740909', 1, '73047357'),
(2, '2020-07-02', 'Open', 2, '70403815515', 2, '73047369'),
(3, '2020-07-02', 'Open', 2, '70403815515', 3, '73047370'),
(4, '2020-07-04', 'Open', 3, '70405257969', 4, '73047401');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mon_result_detail`
--

CREATE TABLE `mon_result_detail` (
  `idDetail` bigint(200) NOT NULL,
  `idResult` bigint(200) DEFAULT NULL,
  `actionDT` date DEFAULT NULL,
  `detail` varchar(1000) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `detailStatus` varchar(200) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mon_result_detail`
--

INSERT INTO `mon_result_detail` (`idDetail`, `idResult`, `actionDT`, `detail`, `remarks`, `detailStatus`) VALUES
(1, 1, '2020-07-01', 'EDC is monitored no transaction', NULL, '1'),
(2, 1, '2020-07-02', 'Outbound WA to PIC Merchant', NULL, '1'),
(3, 1, '2020-07-03', 'Outbound WA not responded by PIC Merchant', NULL, '1'),
(4, 1, '2020-07-03', 'Outbound Call by Agent Heksa to PIC Merchant', NULL, '1'),
(5, 1, '2020-07-03', 'Outbound Call to PIC Merchant not answered', 'Tidak diangkat', '0'),
(6, 1, '2020-07-04', 'Outbound Call to PIC Merchant not succeeded', 'Reject Call', '1'),
(7, 1, '2020-07-04', 'CaseID 00000246126 - Request Visit by Vendor Telkom', NULL, '1'),
(8, 1, '2020-07-05', 'CaseID 00000246126 - Vendor Telkom visited', 'EDC Normal. Issue on MDR - merchant request reduction', '1'),
(9, 1, '2020-07-05', 'CaseID 00000246145 - Request MDR Reduction Approval to Region V - Jakarta III', NULL, '1'),
(10, 2, '2023-01-07', 'Draft', NULL, '1'),
(11, 2, '2023-01-07', 'Doc Registration', NULL, '1'),
(12, 2, '2023-01-07', 'Quality Assurance (QAM)', 'Sedang dalam proses pengecekan dokumen', '1'),
(13, 3, '2020-06-29', 'EDC is monitored no transaction', NULL, '1'),
(14, 3, '2020-06-30', 'Outbound WA to PIC Merchant', NULL, '1'),
(15, 3, '2020-07-01', 'Outbound WA not responded by PIC Merchant', NULL, '1'),
(16, 3, '2020-07-01', 'Outbound Call by Agent Heksa to PIC Merchant', NULL, '1'),
(17, 3, '2020-07-02', 'Transaction Occurs', 'EDC has been used for transaction', '1'),
(18, 4, '2020-07-10', 'EDC is monitored no transaction', NULL, '1'),
(19, 4, '2020-07-11', 'Outbound WA to PIC Merchant', NULL, '1'),
(20, 4, '2020-07-12', 'Outbound WA not responded by PIC Merchant', NULL, '1'),
(21, 4, '2020-07-13', 'Outbound Call by Agent Heksa to PIC Merchant', NULL, '1'),
(22, 2, '2023-01-08', 'Data Entry ', 'sedang dalam proses penginputan data ', '1'),
(23, 2, '2023-01-08', 'Application Check', NULL, '1'),
(24, 2, '2023-01-08', 'Merchant Analyst', 'phone Verifikasi', '1'),
(25, 2, '2023-01-08', 'Approval Completed', 'aplikasi approved', '1'),
(26, 2, '2023-01-09', 'Preparasi', 'Sent to Merchant', '1'),
(27, 2, '2023-01-10', 'Done Pasang', 'ÿØÿí', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mon_tid`
--

CREATE TABLE `mon_tid` (
  `idTID` bigint(200) NOT NULL,
  `idMerchant` bigint(200) DEFAULT NULL,
  `mid` varchar(200) DEFAULT NULL,
  `tid` varchar(200) DEFAULT NULL,
  `edctype` varchar(200) DEFAULT NULL,
  `serial` varchar(200) DEFAULT NULL,
  `acquirer` varchar(200) DEFAULT NULL,
  `sla` decimal(10,2) DEFAULT NULL,
  `vendor` varchar(200) DEFAULT NULL,
  `connection` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mon_tid`
--

INSERT INTO `mon_tid` (`idTID`, `idMerchant`, `mid`, `tid`, `edctype`, `serial`, `acquirer`, `sla`, `vendor`, `connection`) VALUES
(1, 1, '71001740909', '73047357', 'Veri C680', '15340CT24711523', 'Bank Mandiri', '95.50', 'Telkom', 'GPRS ISAT'),
(2, 2, '70403815515', '73047369', 'Veri C680', '15340CT24711918', 'Bank Mandiri', '96.00', 'JO BNI PROJECT PART 4 18012023 - BATCH 05', 'GPRS ISAT'),
(3, 2, '70403815515', '73047370', 'Veri C680', '15340CT24711919', 'Bank Mandiri', '95.50', 'Telkom', 'GPRS ISAT'),
(4, 3, '70403815515', '73047401', 'Veri C680', '15340CT24711789', 'Bank Mandiri', '95.80', 'Telkom', 'GPRS ISAT');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mon_mid`
--
ALTER TABLE `mon_mid`
  ADD PRIMARY KEY (`idMerchant`);

--
-- Indeks untuk tabel `mon_result`
--
ALTER TABLE `mon_result`
  ADD PRIMARY KEY (`idResult`);

--
-- Indeks untuk tabel `mon_result_detail`
--
ALTER TABLE `mon_result_detail`
  ADD PRIMARY KEY (`idDetail`);

--
-- Indeks untuk tabel `mon_tid`
--
ALTER TABLE `mon_tid`
  ADD PRIMARY KEY (`idTID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `mon_mid`
--
ALTER TABLE `mon_mid`
  MODIFY `idMerchant` bigint(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `mon_result`
--
ALTER TABLE `mon_result`
  MODIFY `idResult` bigint(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `mon_result_detail`
--
ALTER TABLE `mon_result_detail`
  MODIFY `idDetail` bigint(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `mon_tid`
--
ALTER TABLE `mon_tid`
  MODIFY `idTID` bigint(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
