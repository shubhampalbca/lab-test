-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2024 at 09:15 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laptest`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lab_department`
--

CREATE TABLE `lab_department` (
  `id` int(11) NOT NULL,
  `dep_name` varchar(200) DEFAULT NULL,
  `test_name` varchar(50) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lab_department`
--

INSERT INTO `lab_department` (`id`, `dep_name`, `test_name`, `status`, `date`) VALUES
(3, 'URINE ANALYSIS', '', 0, '2023-12-08 23:30:27'),
(4, 'BIOCHEMISTRY', '', 0, '2023-12-08 23:30:43'),
(5, 'SEROLOGY', '', 0, '2023-12-08 23:31:33'),
(6, 'HAEMATOLOGY', '', 0, '2023-12-08 23:32:29'),
(8, 'MOTION ANALYSIS', '', 0, '2023-12-14 00:18:07'),
(9, 'BIOPSY STUDY', '', 0, '2023-12-14 00:18:32'),
(10, 'MICROBIOLOGY', '', 0, '2023-12-14 00:18:45'),
(11, 'HORMONES ANALYSIS', '', 0, '2023-12-14 00:18:53'),
(12, 'SURGRY ROUTINE', '', 0, '2023-12-14 00:19:02');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_24_052213_create_usertest_table', 1),
(6, '2024_01_24_072105_create_usertest_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `parent_lab_test`
--

CREATE TABLE `parent_lab_test` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `short` varchar(255) DEFAULT NULL,
  `sampletype` varchar(255) DEFAULT NULL,
  `precaution` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `dep_id` int(11) DEFAULT NULL,
  `doc_name` varchar(50) NOT NULL,
  `result_type` varchar(255) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parent_lab_test`
--

INSERT INTO `parent_lab_test` (`id`, `name`, `short`, `sampletype`, `precaution`, `status`, `price`, `dep_id`, `doc_name`, `result_type`, `date`) VALUES
(33, 'HAEMOGLOBIN', 'HB', 'EDTA', '', NULL, '50', 6, '', NULL, '2023-12-18 12:47:02'),
(35, 'TOTAL W.B.CS COUNT', 'TC', 'EDTA', '', NULL, '50', 6, '', NULL, '2023-12-18 12:47:02'),
(37, 'DC', 'DIFFRENTIAL WHITE BLOOD CELL COUNT', 'EDTA', '', NULL, '50', 6, '', NULL, '2023-12-18 12:47:02'),
(41, 'CBC', 'COMPLETE BLOOD COUNT', 'EDTA', '', NULL, '500', 6, '', NULL, '2023-12-18 12:47:02'),
(52, 'ESR', 'ESR', 'EDTA', '', NULL, '50', 6, '', NULL, '2023-12-18 12:47:02'),
(55, 'BLOOD GROUPING', 'BLOOD GROUPNG', 'BLOOD ', '', NULL, '50', 6, '', NULL, '2023-12-18 12:47:02'),
(58, 'BT & CT', 'BT & CT', 'BLOOD ', '', NULL, '100', 6, '', NULL, '2023-12-18 12:47:02'),
(61, 'PLATELETE COUNT', 'PLT', 'BLOOD ', '', NULL, '200', 6, '', NULL, '2023-12-18 12:47:02'),
(63, 'ABS.EOSINOPHIL COUNT', 'AEC', 'BLOOD ', '', NULL, '100', 6, '', NULL, '2023-12-18 12:47:02'),
(65, 'PROTHROMBIN TIME (PT)', 'PT', 'Citrate', '', NULL, '350', 6, '', NULL, '2023-12-18 12:47:02'),
(67, 'APTT (BLOOD)', 'APTT', 'Citrate', '', NULL, '500', 6, '', NULL, '2023-12-18 12:47:02'),
(69, 'PCV (BLOOD)', 'PCV', 'EDTA', '', NULL, '50', 6, '', NULL, '2023-12-18 12:47:02'),
(71, 'SMEAR FOR MP, MF', 'MP.MF', 'BLOOD ', '', NULL, '200', 6, '', NULL, '2023-12-18 12:47:02'),
(74, 'SMEAR STUDY', 'SMEAR STY', 'BLOOD ', '', NULL, '500', 6, '', NULL, '2023-12-18 12:47:02'),
(75, 'COOMBS -D', 'COOMBS', 'BLOOD ', '', NULL, '400', 4, '', NULL, '2023-12-12 11:13:21'),
(76, 'COOMBS -ID', 'COOMBS I', 'BLOOD ', '', NULL, '400', 4, '', NULL, '2023-12-12 11:13:21'),
(77, 'MX ', 'MX', 'INJECTION', '', NULL, '100', 6, '', NULL, '2023-12-18 12:47:49'),
(78, 'SUGAR (COMBO)', 'SUGAR', 'BLOOD ', '', NULL, '100', 4, '', NULL, '2023-12-18 12:49:47'),
(81, 'SUGAR (F)', 'SUGAR F', 'BLOOD ', '', NULL, '50', 4, '', NULL, '2023-12-18 12:49:47'),
(83, 'SUGAR (PP)', 'SUGAR PP', 'BLOOD ', '', NULL, '50', 4, '', NULL, '2023-12-18 12:49:47'),
(85, 'GCT-75 (BLOOD)', 'GCT 75', 'BLOOD ', '', NULL, '150', 4, '', NULL, '2023-12-18 12:49:47'),
(87, 'UREA', 'UREA', 'BLOOD SERUM', '', NULL, '200', 4, '', NULL, '2023-12-18 12:49:47'),
(89, 'CREATININE', 'CREATININE', 'BLOOD SERUM', '', NULL, '200', 4, '', NULL, '2023-12-18 12:49:47'),
(91, 'CHOLESTEROL ', 'CHLO', 'BLOOD SERUM', '', NULL, '200', 4, '', NULL, '2023-12-18 12:49:47'),
(93, 'TGL (BLOOD)', 'TGL', 'BLOOD SERUM', '', NULL, '200', 4, '', NULL, '2023-12-18 12:49:47'),
(95, 'URIC ACID (BLOOD)', 'URIC ACID ', 'BLOOD SERUM', '', NULL, '200', 4, '', NULL, '2023-12-18 12:49:47'),
(97, 'CALCIUM (BLOOD)', 'CALCIUM', 'BLOOD SERUM', '', NULL, '500', 4, '', NULL, '2023-12-18 12:49:47'),
(99, 'PHOSPHORUS(BLOOD)', 'PHOSPHOROUS', 'BLOOD SERUM', '', NULL, '150', 4, '', NULL, '2023-12-18 12:49:47'),
(101, 'BILLIRUBIN(BLOOD)', 'BILLIRUBIN', 'BLOOD SERUM', '', NULL, '200', 4, '', NULL, '2023-12-18 12:49:47'),
(105, 'S.G.O.T (BLOOD)', 'SGOT', 'BLOOD SERUM', '', NULL, '200', 4, '', NULL, '2023-12-18 12:49:47'),
(107, 'S.G.P.T (BLOOD)', 'SGPT', 'BLOOD SERUM', '', NULL, '200', 4, '', NULL, '2023-12-18 12:49:47'),
(109, 'ALKALINE PHOSPATES(BLOOD)', 'ALKP', 'BLOOD SERUM', '', NULL, '200', 4, '', NULL, '2023-12-18 12:49:47'),
(111, 'A/G RATIO (BLOOD)', 'AG', 'BLOOD SERUM', '', NULL, '400', 4, '', NULL, '2023-12-18 12:49:47'),
(116, 'CK-MB (BLOOD)', 'CKMB', 'BLOOD SERUM', '', NULL, '600', 4, '', NULL, '2023-12-18 12:49:47'),
(118, 'TROP-I (BLOOD)', 'TROP-I', 'BLOOD SERUM', '', NULL, '1000', 4, '', NULL, '2023-12-18 12:49:47'),
(120, 'TROP-T (BLOOD)', 'TROP-T', 'BLOOD SERUM', '', NULL, '1500', 4, '', NULL, '2023-12-18 12:49:47'),
(122, 'LDH(BLOOD)', 'LDH', 'BLOOD SERUM', '', NULL, '600', 4, '', NULL, '2023-12-18 12:49:47'),
(124, 'AMYLASE(BLOOD)', 'AMYLASE', 'BLOOD SERUM', '', NULL, '600', 4, '', NULL, '2023-12-18 12:49:47'),
(126, 'POTASSIUM (BLOOD)', 'POTASSIUM', 'BLOOD SERUM', '', NULL, '200', 4, '', NULL, '2023-12-12 11:13:21'),
(128, 'SODIUM(BLOOD)', 'NA', 'BLOOD SERUM', '', NULL, '100', 4, '', NULL, '2023-12-12 11:13:21'),
(130, 'ELECTROLYTES(BLOOD)', 'ELECTRO', 'BLOOD SERUM', '', NULL, '600', 4, '', NULL, '2023-12-12 11:13:21'),
(135, 'CA-125 (BLOOD)', 'CA-125', 'BLOOD SERUM', '', NULL, '800', 4, '', NULL, '2023-12-12 11:13:21'),
(137, 'LIPID PROFILE(BLOOD)', 'LP', 'BLOOD SERUM', '', NULL, '500', 4, '', NULL, '2023-12-12 11:13:21'),
(145, 'LFT(BLOOD)', 'LFT ', 'BLOOD SERUM', '', NULL, '900', 4, '', NULL, '2023-12-12 11:13:21'),
(157, 'RFT (BLOOD)', 'RFT', 'BLOOD SERUM', '', NULL, '500', 4, '', NULL, '2023-12-12 11:13:21'),
(161, 'HBA1C (BLOOD)', 'HBA1C', 'BLOOD SERUM', '', NULL, '500', 4, '', NULL, '2023-12-12 11:13:21'),
(164, 'TRIPLE MARKER (BLOOD)', 'TRIPLE MRK', 'BLOOD SERUM', '', NULL, '3000', 4, '', NULL, '2023-12-12 11:13:21'),
(166, 'PSA (BLOOD)', 'PSA', 'BLOOD SERUM', '', NULL, '500', 4, '', NULL, '2023-12-12 11:13:21'),
(168, 'LIPASE(BLOOD)', 'LIPASE', 'BLOOD SERUM', '', NULL, '900', 4, '', NULL, '2023-12-12 11:13:21'),
(170, 'VITAMIN D3 (BLOOD)', 'VIT D3', 'BLOOD SERUM', '', NULL, '1500', 4, '', NULL, '2023-12-12 11:13:21'),
(172, 'DOUBLE MARKER (BLOOD)', 'DOUBLE MARKER', 'BLOOD SERUM', '', NULL, '2000', 4, '', NULL, '2023-12-12 11:13:21'),
(174, 'FOLIC ACID (BLOOD)', 'FOLIC ACID ', 'BLOOD SERUM', '', NULL, '1200', 4, '', NULL, '2023-12-12 11:13:21'),
(176, 'IRON (BLOOD)', 'IRON', 'BLOOD SERUM', '', NULL, '700', 4, '', NULL, '2023-12-12 11:13:21'),
(178, 'VITAMIN B12 (BLOOD)', 'VITB12', 'BLOOD SERUM', '', NULL, '600', 4, '', NULL, '2023-12-12 11:13:21'),
(180, 'AMH (BLOOD)', 'AMH', 'BLOOD SERUM', '', NULL, '1600', 4, '', NULL, '2023-12-12 11:13:21'),
(182, 'ANTI SPERM ANTIBODIES (ASAB)', 'ASB', 'BLOOD SERUM', '', NULL, '1500', 4, '', NULL, '2023-12-12 11:13:21'),
(184, 'QUATRAPLE MARKER (BLOOD)', 'QUATRAPLE MRK', 'BLOOD SERUM', '', NULL, '3000', 4, '', NULL, '2023-12-12 11:13:21'),
(186, 'HEPATITIS -A  (BLOOD)', 'HEP-A', 'BLOOD SERUM', '', NULL, '2200', 4, '', NULL, '2023-12-12 11:13:21'),
(189, 'SCRUP TYPES', 'SCRUP-TYP', '', '', NULL, '1200', 4, '', NULL, '2023-12-12 11:13:21'),
(191, 'TORCH PANEL (BLOOD)', 'TORCH PL', 'BLOOD SERUM', '', NULL, '2500', 4, '', NULL, '2023-12-12 11:13:21'),
(193, 'ANTI TPO ANTI BODIES (BLOOD)', 'ATAB', '', '', NULL, '800', 4, '', NULL, '2023-12-12 11:13:21'),
(195, 'BOH PANEL (BLOOD)', 'BOH PA', 'BLOOD SERUM', '', NULL, '4000', 4, '', NULL, '2023-12-12 11:13:21'),
(197, 'HEPATITIS -E (BLOOD)', 'HEP-E', 'BLOOD SERUM', '', NULL, '3000', 4, '', NULL, '2023-12-12 11:13:21'),
(200, 'LEPTO SYPTA (BLOOD)', 'LS', 'BLOOD SERUM', '', NULL, '3400', 4, '', NULL, '2023-12-12 11:13:21'),
(203, 'VDRL QUANTITATIVE (BLOOD)', 'VDRL QT', 'BLOOD SERUM', '', NULL, '800', 5, '', NULL, '2023-12-18 12:52:32'),
(205, 'COAGULATION PROFILE (BLOOD)', 'COAGULATION PF', 'Citrate', '', NULL, '1200', 5, '', NULL, '2023-12-18 12:52:40'),
(207, 'DHEA (BLOOD)', 'DHEA', 'BLOOD SERUM', '', NULL, '1000', 5, '', NULL, '2023-12-18 12:55:17'),
(209, 'TB INTERFERON (BLOOD)', 'TB IN', 'HEPARIN', '', NULL, '2000', 5, '', NULL, '2023-12-18 12:55:17'),
(211, 'LUPUS ANTI COAGULATION (BLOOD)', 'LA COA', 'Citrate', '', NULL, '2000', 5, '', NULL, '2023-12-18 12:55:17'),
(213, 'D-DIMER (BLOOD)', 'D-DIMER', 'BLOOD SERUM', '', NULL, '1000', 4, '', NULL, '2023-12-18 12:55:47'),
(215, 'IL-6 (BLOOD)', 'IL-6', 'BLOOD SERUM', '', NULL, '2500', 5, '', NULL, '2023-12-18 12:55:17'),
(217, 'TRANSFERRIN (BLOOD )', 'TRANSFERRIN ', 'BLOOD SERUM', '', NULL, '850', 5, '', NULL, '2023-12-18 12:55:17'),
(219, 'A.S.O TITRE (BLOOD)', 'ASO', 'BLOOD SERUM', '', NULL, '300', 5, '', NULL, '2023-12-18 12:55:17'),
(221, 'V.D.R.L (BLOOD)', 'VDRL', 'BLOOD SERUM', '', NULL, '200', 5, '', NULL, '2023-12-18 12:55:17'),
(223, 'RA FACTOR  (BLOOD)', 'RA FTR', 'BLOOD SERUM', '', NULL, '350', 5, '', NULL, '2023-12-18 12:55:17'),
(225, 'CRP (QUANTITATIVE )', 'CRP', 'BLOOD SERUM', '', NULL, '500', 5, '', NULL, '2023-12-18 12:55:17'),
(229, 'HBSAG - (BLOOD)', 'HBSAG', 'BLOOD SERUM', '', NULL, '250', 5, '', NULL, '2023-12-18 12:55:17'),
(231, 'HCV (BLOOD)', 'HCV', 'BLOOD SERUM', '', NULL, '300', 5, '', NULL, '2023-12-18 12:55:17'),
(233, 'WIDAL (SLIDE METHOD)', 'WIDAL ', 'BLOOD SERUM', '', NULL, '150', 5, '', NULL, '2023-12-18 12:55:17'),
(238, 'HIV 1&2 ANTIBODIES  (BLOOD)', 'HIV1&2', 'BLOOD SERUM', '', NULL, '300', 5, '', NULL, '2023-12-18 12:55:17'),
(241, 'DENGUE (CARD METHOD)', 'DENGUE ', 'BLOOD SERUM', '', NULL, '900', 5, '', NULL, '2023-12-18 12:55:17'),
(245, 'URINE ANALYSIS (URINE)', 'URINE RT', 'URINE ', '', NULL, '150', 3, '', NULL, '2023-12-18 12:57:46'),
(263, 'SUGAR (URINE)', 'UR SUGAR', 'URINE ', '', NULL, '50', 3, '', NULL, '2023-12-18 12:57:46'),
(265, 'ALBUMIN (URINE)', 'UR ALBU', 'URINE ', '', NULL, '50', 3, '', NULL, '2023-12-18 12:57:46'),
(267, 'BS & BP (URINE)', 'BSBP', 'URINE ', '', NULL, '50', 3, '', NULL, '2023-12-18 12:57:46'),
(271, 'ACETONE (URINE)', 'ACETONE', 'URINE ', '', NULL, '50', 3, '', NULL, '2023-12-18 12:57:46'),
(274, 'UPT (URINE)', 'UPT', 'URINE ', '', NULL, '100', 3, '', NULL, '2023-12-18 12:57:46'),
(276, 'MICROALBUMIN', 'MICRO ALB', 'URINE ', '', NULL, '600', 3, '', NULL, '2023-12-18 12:57:46'),
(280, 'DEPOSITS (URINE)', 'DPT URINE', 'URINE ', '', NULL, '50', 3, '', NULL, '2023-12-18 12:57:46'),
(287, '24 HRS PROTEIN (URINE)', '24HRS PRO', 'URINE ', '', NULL, '500', 3, '', NULL, '2023-12-18 12:57:46'),
(289, 'OVA & CYST  (MOTION)', 'OVA CYST ', 'MOTION', '', NULL, '450', 8, '', NULL, '2023-12-18 12:58:32'),
(291, 'REDUCING SUBSTANCE (MOTION) ', 'REDU SUB ', 'MOTION', '', NULL, '50', 8, '', NULL, '2023-12-18 12:58:36'),
(293, 'OCCULT BLOOD (MOTION)', 'OCC BLD ', 'MOTION', '', NULL, '100', 8, '', NULL, '2023-12-18 12:58:40'),
(295, 'SPUTUM FOR AFB ', 'SPUTUM ', 'SPUTUM', '', NULL, '500', 9, '', NULL, '2023-12-18 12:59:58'),
(297, 'BIOPSY TYPE 1', 'BIOPSY', 'TISSUE', '', NULL, '1200', 9, '', NULL, '2023-12-18 12:59:58'),
(299, 'BIOPSY TYPE 2', 'BIOPSY', 'TISSUE', '', NULL, '2400', 9, '', NULL, '2023-12-18 12:59:58'),
(301, 'BIOPSY TYPE 3', 'BIOPSY', 'TISSUE', '', NULL, '3500', 9, '', NULL, '2023-12-18 12:59:58'),
(303, 'NIPT (BIOPSY)', 'BIOPSY', 'TISSUE, EDTA', '', NULL, '10000', 9, '', NULL, '2023-12-18 12:59:58'),
(305, 'BIOPSY -CA', 'BIOPSY', 'TISSUE', '', NULL, '5100', 9, '', NULL, '2023-12-18 12:59:58'),
(307, 'VAGINAL SWAB (FLUID)', 'VAGINAL SWAB ', 'FLUID', '', NULL, '600', 9, '', NULL, '2023-12-18 12:59:58'),
(309, 'PAP SMEAR (FLUID)', 'PAP ', 'FLUID', '', NULL, '1100', 9, '', NULL, '2023-12-18 12:59:58'),
(314, 'SURGERY PROFILE', 'SUR ROUTINE', 'BLOOD, URINE', '', NULL, '4400', 12, '', NULL, '2023-12-18 13:00:55'),
(372, 'SEMEN ANALYSIS (FLUID)', 'SEMEN', 'FLUID', '', NULL, '450', 3, '', NULL, '2023-12-18 13:01:52'),
(390, 'URINE CULTURE ANALYSIS', 'URINE CL', 'URINE ', '', NULL, '350', 3, '', NULL, '2023-12-18 13:01:55'),
(392, 'PUS CULTURE ANALYSIS', 'PUS CL', 'PUS', '', NULL, '500', 10, '', NULL, '2023-12-20 05:26:08'),
(394, 'BLOOD CULTURE ANALYSIS', 'BLOOD CL', 'BLOOD ', '', NULL, '1200', 10, '', NULL, '2023-12-20 05:26:08'),
(396, 'SEMEN CULTURE ANALYSIS', 'SEMEN CL', 'FLUID', '', NULL, '450', 10, '', NULL, '2023-12-20 05:26:08'),
(398, 'MOTION CULTURE ANALYSIS', 'MOTION CL', 'MOTION', '', NULL, '500', 10, '', NULL, '2023-12-20 05:26:08'),
(400, 'THYROID PROFILE 1', 'THY 1', 'BLOOD SERUM', '', NULL, '600', 11, '', NULL, '2023-12-20 05:27:49'),
(404, 'THYROID PROFILE 2', 'THY 2', 'BLOOD SERUM', '', NULL, '600', 11, '', NULL, '2023-12-20 05:27:49'),
(408, 'THYROID PROFILE ', 'THY', 'BLOOD SERUM', '', NULL, '400', 11, '', NULL, '2023-12-20 05:27:49'),
(419, 'LH (BLOOD)', 'lh', 'BLOOD SERUM', '', NULL, '400', 11, '', NULL, '2023-12-20 05:27:49'),
(420, 'FSH(BLOOD)', 'FSH', 'BLOOD SERUM', '', NULL, '400', 11, '', NULL, '2023-12-20 05:27:49'),
(421, 'PROLACTINE (BLOOD)', 'PRL', 'BLOOD SERUM', '', NULL, '400', 11, '', NULL, '2023-12-20 05:27:49'),
(422, 'ESTRADIOL -E2 (BLOOD)', 'E2', 'BLOOD SERUM', '', NULL, '600', 11, '', NULL, '2023-12-20 05:27:49'),
(423, 'PROGESTERONE ', 'PRO', 'BLOOD SERUM', '', NULL, '400', 11, '', NULL, '2023-12-20 05:27:49'),
(424, 'TESTOSTERONE (BLOOD)', 'TESTRO', 'BLOOD SERUM', '', NULL, '500', 11, '', NULL, '2023-12-20 05:27:49'),
(425, 'TSH RECEPTOR ANTIBODY(BLOOD)', 'TRA', 'BLOOD SERUM', '', NULL, '1200', 11, '', NULL, '2023-12-20 05:27:49'),
(426, 'BETA HCG (BLOOD)', 'HCG', 'BLOOD SERUM', '', NULL, '500', 11, '', NULL, '2023-12-20 05:27:49'),
(427, 'CHROMOSOMAL ASSAY (BLOOD)', 'CHROMO', 'BLOOD SERUM', '', NULL, '5000', 11, '', NULL, '2023-12-20 05:27:49'),
(428, 'ANTIPHOSPHOLIPO ANTIBODY (BLOOD)', 'APLA', 'BLOOD SERUM', '', NULL, '1500', 11, '', NULL, '2023-12-20 05:27:49'),
(429, 'ANA (BLOOD)', 'ANA', 'BLOOD SERUM', '', NULL, '1800', 4, '', NULL, '2023-12-20 05:29:27'),
(430, 'ANTIAUTO ANTIBODIES (BLOOD)', 'ANA', 'BLOOD SERUM', '', NULL, '2000', 4, '', NULL, '2023-12-20 05:29:30'),
(431, 'ANTI DS DNA(BLOOD)', 'ADSD', 'BLOOD SERUM', '', NULL, '1800', 4, '', NULL, '2023-12-20 05:29:34'),
(432, 'THYROID PROFILE 3 (BLOOD)', 'THY 3', 'BLOOD SERUM', '', NULL, '600', 11, '', NULL, '2023-12-20 05:27:49'),
(434, 'ECG', 'ECG', 'INVESTI', '', NULL, '300', 11, '', NULL, '2023-12-20 05:27:49'),
(435, 'XRAY CHEST AP/PA', 'XCH', '-', '', NULL, '450', 11, '', NULL, '2023-12-20 05:27:49'),
(436, 'XRAY HAND AP/LAT', 'XRAY HAND', '-', '', NULL, '750', 11, '', NULL, '2023-12-20 05:27:49'),
(437, 'XRAY LEG-AP/OBLIQUE', 'XRAY LEG', '-', '', NULL, '750', 11, '', NULL, '2023-12-20 05:27:49'),
(438, 'XRAY KNEE- AP/LAT', 'XRAY KNEE', '-', '', NULL, '750', 11, '', NULL, '2023-12-20 05:27:49'),
(439, 'XRAY KUB', 'XRAY KUB', '-', '', NULL, '450', 11, '', NULL, '2023-12-20 05:27:49'),
(440, 'XRAY CERVICAL SPINE-AP/LAT', 'XRAY CER', '-', '', NULL, '750', 11, '', NULL, '2023-12-20 05:27:49'),
(441, 'XRAY LS SPINE-AP/LAT', 'XRAY LS', '-', '', NULL, '750', 11, '', NULL, '2023-12-20 05:27:49'),
(442, 'XRAY WRIST-AP/LAT', 'XRAY WRIST', '-', '', NULL, '755', 11, '', NULL, '2023-12-29 08:02:09'),
(443, 'XRAY ABDOMEN ', 'XRAY ABD', '-', '', NULL, '450', 11, '', NULL, '2023-12-20 05:27:49'),
(444, 'XRAY FOOT-AP/LAT', 'XRAY FOOT', '-', '', NULL, '750', 11, '', NULL, '2023-12-20 05:27:49'),
(445, 'XRAY SHOULDER AP/LAT', 'XRAY SHOLDER', '-', '', NULL, '750', 11, '', NULL, '2023-12-20 05:27:49'),
(446, 'XRAY PELVIS -AP', 'XRAY PELVIS', '-', '', NULL, '450', 11, '', NULL, '2023-12-20 05:27:49'),
(447, 'CEA (BLOOD)', 'CEA', 'BLOOD SERUM', '', NULL, '800', 4, '', NULL, '2023-12-20 05:33:31'),
(448, 'ANEMIC PANEL (BLOOD)', 'ANEMIC PANL', 'BLOOD SERUM', '', NULL, '2000', 4, '', NULL, '2023-12-20 05:33:31'),
(449, 'SLE PANEL (BLOOD)', 'SLE', 'BLOOD SERUM', '', NULL, '4500', 4, '', NULL, '2023-12-20 05:33:31'),
(450, 'HOMOCYSTO URIA-(BLOOD)', 'HOMO URIA', 'BLOOD SERUM', '', NULL, '1100', 4, '', NULL, '2023-12-20 05:33:31'),
(451, 'C-ANCA-(BLOOD)', 'C-ANCA', 'BLOOD SERUM', '', NULL, '1000', 4, '', NULL, '2023-12-20 05:33:31'),
(452, 'P-ANCA (BLOOD)', 'P-ANCA', 'BLOOD SERUM', '', NULL, '1000', 4, '', NULL, '2023-12-20 05:33:31'),
(453, 'CORTISOL (BLOOD)', 'CORTISOL', 'BLOOD SERUM', '', NULL, '600', 4, '', NULL, '2023-12-20 05:33:31'),
(454, 'C-PEPTIDE-F (BOOD)', 'C-PEPTIDE', 'BLOOD SERUM', '', NULL, '600', 4, '', NULL, '2023-12-20 05:33:31'),
(455, 'C-PEPTIDE-PP (BLOOD)', 'C-PEPTIDE', 'BLOOD SERUM', '', NULL, '600', 4, '', NULL, '2023-12-20 05:33:31'),
(456, 'C-PEPTIDE-R (BLOOD)', 'C-PEPTIDE', 'BLOOD SERUM', '', NULL, '600', 4, '', NULL, '2023-12-20 05:33:31'),
(457, 'MEGNICUM (BLOOD)', 'MG', 'BLOOD SERUM', '', NULL, '400', 4, '', NULL, '2023-12-20 05:33:31'),
(458, 'AMMONIA (BLOOD)', 'AM', 'BLOOD SERUM', '', NULL, '800', 4, '', NULL, '2023-12-20 05:33:31'),
(459, 'CA-19.9 (BLOOD)', 'CA-19.9', 'BLOOD SERUM', '', NULL, '900', 4, '', NULL, '2023-12-20 05:33:31'),
(460, 'CERULO PLASMIN (BLOOD)', 'CERULO PLA', 'BLOOD SERUM', '', NULL, '800', 6, '', NULL, '2023-12-20 05:35:13'),
(469, 'CERULO PLASMIN (BLOOD)', 'C-PEPTIDE', 'BLOOD SERUM', 'wer4t', NULL, '344', 6, '', NULL, '2023-12-20 05:35:18'),
(471, 'HAEMOGLOBIN', 'CERULO PLA', 'BLOOD SERUM', '4543543', NULL, '10000', -1, 'NISHANT DOCTOR', NULL, '2023-12-20 05:35:32'),
(472, 'URINE CULTURE ANALYSIS', 'URINE CL', 'URINE', NULL, NULL, '455', 10, '', NULL, '2023-12-30 09:05:28');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usertest`
--

CREATE TABLE `usertest` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dep_id` varchar(255) NOT NULL,
  `parent_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usertest`
--

INSERT INTO `usertest` (`id`, `dep_id`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, '4', '75', '2024-01-24 01:52:10', '2024-01-24 01:52:10'),
(2, '4', '76', '2024-01-24 01:52:11', '2024-01-24 01:52:11'),
(3, '4', '78', '2024-01-24 01:52:11', '2024-01-24 01:52:11'),
(4, '4', '81', '2024-01-24 01:52:11', '2024-01-24 01:52:11'),
(5, '4', '83', '2024-01-24 01:52:11', '2024-01-24 01:52:11'),
(6, '4', '85', '2024-01-24 01:52:11', '2024-01-24 01:52:11'),
(7, '4', '87', '2024-01-24 01:52:11', '2024-01-24 01:52:11'),
(8, '10', '394', '2024-01-24 02:24:50', '2024-01-24 02:24:50'),
(9, '10', '396', '2024-01-24 02:24:50', '2024-01-24 02:24:50'),
(10, '10', '398', '2024-01-24 02:24:50', '2024-01-24 02:24:50'),
(11, '4', '75', '2024-01-24 02:27:55', '2024-01-24 02:27:55'),
(12, '4', '76', '2024-01-24 02:27:55', '2024-01-24 02:27:55'),
(13, '4', '78', '2024-01-24 02:27:56', '2024-01-24 02:27:56'),
(14, '4', '81', '2024-01-24 02:27:56', '2024-01-24 02:27:56'),
(15, '4', '75', '2024-01-24 02:41:16', '2024-01-24 02:41:16'),
(16, '4', '76', '2024-01-24 02:41:17', '2024-01-24 02:41:17'),
(17, '4', '78', '2024-01-24 02:41:17', '2024-01-24 02:41:17'),
(18, '4', '81', '2024-01-24 02:41:17', '2024-01-24 02:41:17'),
(19, '4', '83', '2024-01-24 02:41:17', '2024-01-24 02:41:17'),
(20, '4', '85', '2024-01-24 02:41:17', '2024-01-24 02:41:17'),
(21, '4', '87', '2024-01-24 02:41:17', '2024-01-24 02:41:17'),
(22, '4', '89', '2024-01-24 02:41:17', '2024-01-24 02:41:17'),
(23, '4', '91', '2024-01-24 02:41:18', '2024-01-24 02:41:18'),
(24, '4', '93', '2024-01-24 02:41:18', '2024-01-24 02:41:18'),
(25, '4', '95', '2024-01-24 02:41:18', '2024-01-24 02:41:18'),
(26, '4', '97', '2024-01-24 02:41:18', '2024-01-24 02:41:18'),
(27, '4', '99', '2024-01-24 02:41:18', '2024-01-24 02:41:18'),
(28, '4', '101', '2024-01-24 02:41:18', '2024-01-24 02:41:18'),
(29, '4', '105', '2024-01-24 02:41:18', '2024-01-24 02:41:18'),
(30, '4', '107', '2024-01-24 02:41:18', '2024-01-24 02:41:18'),
(31, '4', '109', '2024-01-24 02:41:18', '2024-01-24 02:41:18'),
(32, '4', '111', '2024-01-24 02:41:18', '2024-01-24 02:41:18'),
(33, '4', '116', '2024-01-24 02:41:18', '2024-01-24 02:41:18'),
(34, '4', '118', '2024-01-24 02:41:18', '2024-01-24 02:41:18'),
(35, '4', '120', '2024-01-24 02:41:19', '2024-01-24 02:41:19'),
(36, '4', '122', '2024-01-24 02:41:19', '2024-01-24 02:41:19'),
(37, '4', '124', '2024-01-24 02:41:19', '2024-01-24 02:41:19'),
(38, '4', '126', '2024-01-24 02:41:19', '2024-01-24 02:41:19'),
(39, '4', '128', '2024-01-24 02:41:19', '2024-01-24 02:41:19'),
(40, '4', '130', '2024-01-24 02:41:19', '2024-01-24 02:41:19'),
(41, '4', '135', '2024-01-24 02:41:19', '2024-01-24 02:41:19'),
(42, '4', '137', '2024-01-24 02:41:19', '2024-01-24 02:41:19'),
(43, '4', '145', '2024-01-24 02:41:19', '2024-01-24 02:41:19'),
(44, '4', '157', '2024-01-24 02:41:19', '2024-01-24 02:41:19'),
(45, '4', '161', '2024-01-24 02:41:19', '2024-01-24 02:41:19'),
(46, '4', '164', '2024-01-24 02:41:19', '2024-01-24 02:41:19'),
(47, '4', '166', '2024-01-24 02:41:19', '2024-01-24 02:41:19'),
(48, '4', '168', '2024-01-24 02:41:19', '2024-01-24 02:41:19'),
(49, '4', '170', '2024-01-24 02:41:19', '2024-01-24 02:41:19'),
(50, '4', '172', '2024-01-24 02:41:19', '2024-01-24 02:41:19'),
(51, '4', '174', '2024-01-24 02:41:19', '2024-01-24 02:41:19'),
(52, '4', '176', '2024-01-24 02:41:20', '2024-01-24 02:41:20'),
(53, '4', '178', '2024-01-24 02:41:20', '2024-01-24 02:41:20'),
(54, '4', '180', '2024-01-24 02:41:20', '2024-01-24 02:41:20'),
(55, '4', '182', '2024-01-24 02:41:20', '2024-01-24 02:41:20'),
(56, '4', '184', '2024-01-24 02:41:20', '2024-01-24 02:41:20'),
(57, '4', '186', '2024-01-24 02:41:20', '2024-01-24 02:41:20'),
(58, '4', '189', '2024-01-24 02:41:20', '2024-01-24 02:41:20'),
(59, '4', '191', '2024-01-24 02:41:20', '2024-01-24 02:41:20'),
(60, '4', '193', '2024-01-24 02:41:20', '2024-01-24 02:41:20'),
(61, '4', '195', '2024-01-24 02:41:20', '2024-01-24 02:41:20'),
(62, '4', '197', '2024-01-24 02:41:20', '2024-01-24 02:41:20'),
(63, '4', '200', '2024-01-24 02:41:20', '2024-01-24 02:41:20'),
(64, '4', '213', '2024-01-24 02:41:20', '2024-01-24 02:41:20'),
(65, '4', '429', '2024-01-24 02:41:20', '2024-01-24 02:41:20'),
(66, '4', '430', '2024-01-24 02:41:20', '2024-01-24 02:41:20'),
(67, '4', '431', '2024-01-24 02:41:20', '2024-01-24 02:41:20'),
(68, '4', '447', '2024-01-24 02:41:20', '2024-01-24 02:41:20'),
(69, '4', '448', '2024-01-24 02:41:20', '2024-01-24 02:41:20'),
(70, '4', '449', '2024-01-24 02:41:20', '2024-01-24 02:41:20'),
(71, '4', '450', '2024-01-24 02:41:20', '2024-01-24 02:41:20'),
(72, '4', '451', '2024-01-24 02:41:20', '2024-01-24 02:41:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `lab_department`
--
ALTER TABLE `lab_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent_lab_test`
--
ALTER TABLE `parent_lab_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `usertest`
--
ALTER TABLE `usertest`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lab_department`
--
ALTER TABLE `lab_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `parent_lab_test`
--
ALTER TABLE `parent_lab_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=474;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usertest`
--
ALTER TABLE `usertest`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
