-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 15, 2020 at 12:56 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sweoj`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int(100) DEFAULT NULL,
  `des` longtext DEFAULT NULL,
  `aid` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `archieve`
--

CREATE TABLE `archieve` (
  `id` int(11) NOT NULL,
  `pbname` varchar(100) DEFAULT NULL,
  `pbdes` longtext DEFAULT NULL,
  `pbauthor` varchar(100) DEFAULT NULL,
  `tc` mediumtext DEFAULT NULL,
  `output` longtext DEFAULT NULL,
  `uoutput` longtext DEFAULT NULL,
  `tlimit` double(100,2) DEFAULT 3.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `archieve`
--

INSERT INTO `archieve` (`id`, `pbname`, `pbdes`, `pbauthor`, `tc`, `output`, `uoutput`, `tlimit`) VALUES
(1, 'Corona', '<p>print&nbsp; &quot;CORONA&quot;</p>\r\n', 'RakibulRanak', '', 'CORONA\r\n', 'CORONA\n', 1.00);

-- --------------------------------------------------------

--
-- Table structure for table `code`
--

CREATE TABLE `code` (
  `submit_name` varchar(100) DEFAULT NULL,
  `source_code` longtext DEFAULT NULL,
  `id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `codes`
--

CREATE TABLE `codes` (
  `submit_name` varchar(50) DEFAULT NULL,
  `source_code` longtext DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `codes`
--

INSERT INTO `codes` (`submit_name`, `source_code`, `id`) VALUES
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n\r\n{\r\ncout<<\"CORONA\"<<endl;\r\n}', 1),
('RakibulRanak', '#include<bits/stdc++.h>\r\nusing namespace std;\r\n\r\nint main()\r\n\r\n{\r\ncout<<\"CORONA\"<<endl;\r\n}', 2);

-- --------------------------------------------------------

--
-- Table structure for table `contest`
--

CREATE TABLE `contest` (
  `id` int(11) NOT NULL,
  `cname` varchar(4000) DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `date_on` date DEFAULT NULL,
  `owner` varchar(100) DEFAULT 'shawon',
  `pass` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contest`
--

INSERT INTO `contest` (`id`, `cname`, `start_at`, `end_at`, `date_on`, `owner`, `pass`) VALUES
(1, 'Corona', '2020-09-15 04:35:37', '2020-09-15 04:40:37', '2020-09-15', 'RakibulRanak', 'corona');

-- --------------------------------------------------------

--
-- Table structure for table `contestproblems`
--

CREATE TABLE `contestproblems` (
  `id` int(11) DEFAULT NULL,
  `cname` varchar(50) NOT NULL,
  `pbname` varchar(400) DEFAULT NULL,
  `pbdes` longtext DEFAULT NULL,
  `pbauthor` varchar(100) DEFAULT NULL,
  `tc` longtext DEFAULT NULL,
  `output` longtext DEFAULT NULL,
  `uoutput` longtext DEFAULT NULL,
  `pbid` int(12) NOT NULL,
  `tlimit` double(100,2) DEFAULT 3.00,
  `sts` tinyint(1) DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contestproblems`
--

INSERT INTO `contestproblems` (`id`, `cname`, `pbname`, `pbdes`, `pbauthor`, `tc`, `output`, `uoutput`, `pbid`, `tlimit`, `sts`) VALUES
(1, 'Corona', 'SUM', '<p><strong>1+9=?</strong></p>\r\n', 'RakibulRanak', '1', '10\r\n', '', 1, 1.00, 2),
(1, 'Corona', 'SUM', '<p><strong>1+9=?</strong></p>\r\n', 'RakibulRanak', '1', '10\r\n', '', 2, 1.00, 2);

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(100) NOT NULL,
  `des` varchar(500) NOT NULL,
  `exdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `solve`
--

CREATE TABLE `solve` (
  `sname` varchar(100) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `pbname` varchar(100) DEFAULT NULL,
  `solved` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `submission`
--

CREATE TABLE `submission` (
  `sid` int(100) NOT NULL,
  `sname` varchar(100) DEFAULT NULL,
  `verdict` varchar(50) DEFAULT NULL,
  `pbid` int(11) DEFAULT NULL,
  `pbname` varchar(100) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `penalty` decimal(10,2) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `sid` int(11) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `verdict` varchar(50) DEFAULT NULL,
  `pbname` varchar(500) DEFAULT NULL,
  `time` float(10,2) DEFAULT 0.00,
  `time2` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`sid`, `sname`, `verdict`, `pbname`, `time`, `time2`) VALUES
(1, 'RakibulRanak', 'Wrong Answer', 'Corona', 0.01, '2020-09-15 04:17:43'),
(2, 'RakibulRanak', 'Accepted', 'Corona', 0.01, '2020-09-15 04:18:39');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `pass` varchar(40) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'student',
  `email` varchar(100) NOT NULL DEFAULT '',
  `photo` longblob DEFAULT NULL,
  `Verified` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `pass`, `status`, `email`, `photo`, `Verified`) VALUES
('1', 'c4ca4238a0b923820dcc509a6f75849b', 'User', '1@gmail.com', NULL, 0),
('RakibulRanak', '11fabe18bf4dec1953c2910e84678698', 'Developer', 'rakibulhasanranak1@gmail.com', 0x72722e6a7067, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `archieve`
--
ALTER TABLE `archieve`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `code`
--
ALTER TABLE `code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `codes`
--
ALTER TABLE `codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `contest`
--
ALTER TABLE `contest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contestproblems`
--
ALTER TABLE `contestproblems`
  ADD PRIMARY KEY (`pbid`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `submission`
--
ALTER TABLE `submission`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `aid` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `archieve`
--
ALTER TABLE `archieve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `code`
--
ALTER TABLE `code`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `codes`
--
ALTER TABLE `codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contest`
--
ALTER TABLE `contest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contestproblems`
--
ALTER TABLE `contestproblems`
  MODIFY `pbid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
