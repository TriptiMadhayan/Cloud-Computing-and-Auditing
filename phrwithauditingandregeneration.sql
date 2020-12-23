-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 17, 2020 at 02:28 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `phrwithauditingandregeneration`
--

-- --------------------------------------------------------

--
-- Table structure for table `cloud`
--

CREATE TABLE IF NOT EXISTS `cloud` (
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cloud`
--

INSERT INTO `cloud` (`username`, `password`) VALUES
('cloud', 'cloud');

-- --------------------------------------------------------

--
-- Table structure for table `key_server`
--

CREATE TABLE IF NOT EXISTS `key_server` (
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `key_server`
--

INSERT INTO `key_server` (`username`, `password`) VALUES
('ks', 'ks');

-- --------------------------------------------------------

--
-- Table structure for table `owner_details`
--

CREATE TABLE IF NOT EXISTS `owner_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `regdate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=4 ;

--
-- Dumping data for table `owner_details`
--

INSERT INTO `owner_details` (`id`, `fname`, `lname`, `gender`, `address`, `dob`, `mobile`, `email`, `username`, `password`, `regdate`) VALUES
(1, 'Aniket', 'Wanjare', 'Male', 'Akurdi', '1995-01-01', '8459594800', 'anikey@gmail.com', 'aniket', '123456', '17-01-2020 13:24:55'),
(2, 'Prachi', 'Sinde', 'FeMale', 'NalStop', '1992-06-03', '8459594800', 'prachi@gmail.com', 'prachi', '123456', '17-01-2020 16:48:29'),
(3, 'Lata', 'Katamkar', 'FeMale', 'Pune', '1987-03-12', '8459594800', 'lata@gmail.com', 'lata', '123456', '17-01-2020 18:02:37');

-- --------------------------------------------------------

--
-- Table structure for table `phr_record`
--

CREATE TABLE IF NOT EXISTS `phr_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(30) DEFAULT NULL,
  `sdate` varchar(30) DEFAULT NULL,
  `ldate` varchar(30) DEFAULT NULL,
  `upload_by` varchar(30) DEFAULT NULL,
  `u_date` varchar(30) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  `hospital_name` varchar(30) DEFAULT NULL,
  `digest_value` varchar(100) DEFAULT NULL,
  `v_status` varchar(30) NOT NULL DEFAULT 'Waiting',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `phr_record`
--

INSERT INTO `phr_record` (`id`, `filename`, `sdate`, `ldate`, `upload_by`, `u_date`, `u_id`, `hospital_name`, `digest_value`, `v_status`) VALUES
(1, 'Report.txt', '2020-01-17', '2020-01-30', '1', '17/01/2020', 6, 'Sasun', '13eca3f8147c9413882c2009a667521d', 'OK'),
(2, 'PHR.txt', '2020-01-17', '2020-01-30', '2', '17/01/2020', 6, 'Sasun', 'caff86e5492bc797da5429e3a5894473', 'Regenerate'),
(3, 'Healthrecord.txt', '2020-01-10', '2020-02-02', '3', '17/01/2020', 8, 'KEM', '40c7c5ca2e596f8517d71f7cb7ab377b', 'Regenerate'),
(4, 'Healthrecord.txt', '2020-01-10', '2020-10-28', '1', '17/01/2020', 8, 'KEM', '40c7c5ca2e596f8517d71f7cb7ab377b', 'Regenerate'),
(5, 'rohitphr.txt', '2020-01-02', '2020-01-31', '3', '17/01/2020', 7, 'KEM', '345a9a30f51f756123ad4de6cd12260e', 'Regenerate');

-- --------------------------------------------------------

--
-- Table structure for table `proxy`
--

CREATE TABLE IF NOT EXISTS `proxy` (
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proxy`
--

INSERT INTO `proxy` (`username`, `password`) VALUES
('proxy', 'proxy');

-- --------------------------------------------------------

--
-- Table structure for table `rdecrypt_krequest`
--

CREATE TABLE IF NOT EXISTS `rdecrypt_krequest` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `user_id` int(30) DEFAULT NULL,
  `filename` varchar(30) DEFAULT NULL,
  `re_dec_key` varchar(50) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `rdecrypt_krequest`
--

INSERT INTO `rdecrypt_krequest` (`id`, `user_id`, `filename`, `re_dec_key`, `status`) VALUES
(1, 4, 'data.txt', 'n1j8vikkclmokd1zq5yz', 'send_key'),
(2, 6, 'Report.txt', '5d9412z9au', 'send_key'),
(3, 7, 'rohitphr.txt', '8d12ls670a', 'send_key');

-- --------------------------------------------------------

--
-- Table structure for table `rencrypt_krequest`
--

CREATE TABLE IF NOT EXISTS `rencrypt_krequest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` varchar(30) DEFAULT NULL,
  `filename` varchar(30) DEFAULT NULL,
  `re_enc_key` varchar(50) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `tpa`
--

CREATE TABLE IF NOT EXISTS `tpa` (
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tpa`
--

INSERT INTO `tpa` (`username`, `password`) VALUES
('tpa', 'tpa');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `Address` varchar(300) DEFAULT NULL,
  `degree` varchar(300) DEFAULT NULL,
  `work_exp` text,
  `hospital_name` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `regdate` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=9 ;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `fname`, `lname`, `gender`, `mobile`, `Address`, `degree`, `work_exp`, `hospital_name`, `email`, `username`, `password`, `regdate`) VALUES
(1, 'Ritesh', 'Surange', 'Male', '2147483647', 'Bhosari Pune', 'MBBS', '3years', 'ABC Hospital', 'ritesh@gmail.com', 'Ritesh', '123456', NULL),
(2, 'Sumit', 'yewale', 'Male', '2147483647', 'Akurdi Pune', 'MBBS', '2 year ', 'ABCDE', 'sy@gmail.com', 'sumoit', '123456', NULL),
(3, 'Sumit', 'yewale', 'Male', '2147483647', 'Akurdi Pune', 'MBBS', '2 year ', 'ABCDE', 'sy1@gmail.com', 'sam', '1234567', NULL),
(4, 'Onkale', 'kale', 'Male', '2147483647', 'Akurdi Pune', 'MBBS', '2 year Exp', 'YPS hospital', 'ok@gmail.com', 'omkale', '123456', NULL),
(5, 'Parnita', 'Patil', 'FeMale', '2147483647', 'Bhosari', 'MBBS', '10 years', 'Patil Hospital', 'p@gmail.com', 'pranita', '123456', NULL),
(6, 'Dipak', 'Lohar', 'Male', '2147483647', 'Kalewadi', 'MBBS', '10', 'Sasun', 'dipak@gmail.com', 'dipak', '123456', '2020-01-06 17:26:30'),
(7, 'Anu', 'Naik', 'FeMale', '8459594800', 'Pune', 'PhD', '10 years', 'KEM', 'anu@gmail.com', 'anu', '123456', '17-01-2020 17:58:30'),
(8, 'Laxmi', 'Singh', 'FeMale', '8459594800', 'Moshi', 'MBChB', '5 years', 'KEM', 'laxmi@gmail.com', 'laxmi', '123456', '17-01-2020 18:01:15');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
