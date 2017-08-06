-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Aug 03, 2017 at 04:59 AM
-- Server version: 5.5.49-log
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qanda`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountmaster`
--

CREATE TABLE IF NOT EXISTS `accountmaster` (
  `accounttype` varchar(25) NOT NULL,
  `prefix` varchar(11) NOT NULL,
  `minbalance` double(12,2) NOT NULL,
  `interest` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accountmaster`
--

INSERT INTO `accountmaster` (`accounttype`, `prefix`, `minbalance`, `interest`) VALUES
('current', 'fd', 6000.00, 600.00),
('dfd', 'gdf', 45.00, 7546.00),
('salary account', 'SAL', 0.00, 10.00),
('saving', 'sb', 4000.00, 500.00);

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `accno` varchar(25) NOT NULL,
  `customerid` int(10) NOT NULL,
  `accstatus` varchar(25) NOT NULL,
  `primaryacc` varchar(10) NOT NULL,
  `accopendate` date NOT NULL,
  `accounttype` varchar(25) NOT NULL,
  `accountbalance` double(10,2) NOT NULL,
  `unclearbalance` double(10,2) NOT NULL,
  `accuredinterest` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`accno`, `customerid`, `accstatus`, `primaryacc`, `accopendate`, `accounttype`, `accountbalance`, `unclearbalance`, `accuredinterest`) VALUES
('4666', 98683, 'active', '40000', '2013-02-11', 'sv', 100000.00, 100.00, 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `admin_task`
--

CREATE TABLE IF NOT EXISTS `admin_task` (
  `username` varchar(50) NOT NULL,
  `accepted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE IF NOT EXISTS `answer` (
  `ans_ID` int(11) NOT NULL,
  `answer` text NOT NULL,
  `question` int(11) NOT NULL,
  `answeredBy` int(11) NOT NULL,
  `likes` varchar(11) NOT NULL DEFAULT '0',
  `dislikes` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `areaofintrest`
--

CREATE TABLE IF NOT EXISTS `areaofintrest` (
  `userId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE IF NOT EXISTS `branch` (
  `ifsccode` varchar(25) NOT NULL,
  `branchname` varchar(50) NOT NULL,
  `city` varchar(25) NOT NULL,
  `branchaddress` text NOT NULL,
  `state` varchar(25) NOT NULL,
  `country` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`ifsccode`, `branchname`, `city`, `branchaddress`, `state`, `country`) VALUES
('5249898', 'Mangalore', 'gfhdh', 'hdjjj', 'PAKISTAN', 'MAHARASTRA'),
('KARB0000404', 'karkala', 'karkala', 'NEAR BUS STAND,KARLA COMPLEX,1ST FLOOR,PB 19,KARKALA 574104,UDUPI DIST', 'KARNATAKA', 'india'),
('tyg', 'yfy', 'fy', 'yfg', 'PAKISTAN', 'MAHARASTRA');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `com_ID` int(11) NOT NULL,
  `comment` text NOT NULL,
  `ansId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `customerid` int(10) NOT NULL,
  `ifsccode` varchar(25) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `loginid` varchar(25) NOT NULL,
  `accpassword` varchar(50) NOT NULL,
  `transpasword` varchar(50) NOT NULL,
  `accstatus` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL,
  `state` varchar(25) NOT NULL,
  `country` varchar(25) NOT NULL,
  `accopendate` date NOT NULL,
  `lastlogin` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=98684 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `ifsccode`, `firstname`, `lastname`, `loginid`, `accpassword`, `transpasword`, `accstatus`, `city`, `state`, `country`, `accopendate`, `lastlogin`) VALUES
(98680, 'KARB0000404', 'sadf', 'werwe', '23432', 'fgdfg', 'werwe', 'ACTIVE', '23423', 'KARNATAKA', 'INDIA', '2013-02-02', '0000-00-00 00:00:00'),
(98682, '5249898', 'Raj', 'kiran', '123456', '987654', '123456', 'ACTIVE', 'mangaloree', 'KARNATAKA', 'INDIA', '2013-02-02', '0000-00-00 00:00:00'),
(98683, '5249898', 'john', 'mark', 'cust', 'cust', 'cust', 'ACTIVE', 'mangalore', 'KARNATAKA', 'INDIA', '2013-02-09', '2013-02-16 05:25:20');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `empid` int(10) NOT NULL,
  `employee_name` varchar(25) NOT NULL,
  `loginid` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `emailid` varchar(30) NOT NULL,
  `contactno` varchar(30) NOT NULL,
  `createdat` date NOT NULL,
  `last_login` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=313800 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`empid`, `employee_name`, `loginid`, `password`, `emailid`, `contactno`, `createdat`, `last_login`) VALUES
(313786, 'soudhabanu', '445545', '125487', 'soudha_ban@52yahoo.com', '9535543313', '2012-12-15', '2012-12-03 11:27:00'),
(313787, 'mahesh', 'mahesh', 'qwert', 'mahesh@gmail.com', '98478872783', '0000-00-00', '0000-00-00 00:00:00'),
(313788, 'jyothi', '3535355', '3636', 'jyothi@yahoo.com', '95425422424', '2013-01-02', '0000-00-00 00:00:00'),
(313791, 'admin', 'admin', 'admin', 'admin', 'admin', '2013-01-12', '2013-01-12 00:00:00'),
(313798, 'raj', 'rajkiran', '123456', 'abc@gmail.com', '9874563210', '2013-02-02', '0000-00-00 00:00:00'),
(313799, 'peter king', 'emp', 'emp', 'emp@gmail.com', '987456321', '2013-02-09', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `field`
--

CREATE TABLE IF NOT EXISTS `field` (
  `fie_ID` int(11) NOT NULL,
  `nameOfField` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `field`
--

INSERT INTO `field` (`fie_ID`, `nameOfField`) VALUES
(0, 'c'),
(1, 'java'),
(2, 'HTML'),
(3, 'CSS'),
(4, 'php'),
(5, 'javascript'),
(6, 'python'),
(7, 'bootstrap'),
(8, 'laravel');

-- --------------------------------------------------------

--
-- Table structure for table `group_title`
--

CREATE TABLE IF NOT EXISTS `group_title` (
  `group_name` varchar(50) NOT NULL,
  `group_leader` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_title`
--

INSERT INTO `group_title` (`group_name`, `group_leader`) VALUES
('admin', 'admin'),
('server', 'philip'),
('computer_lab_tech', 'reintje'),
('telephone_tech', 'brian'),
('admin_tech', 'lyndon');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `groups` varchar(20) NOT NULL,
  `position` varchar(20) NOT NULL,
  `group_task` varchar(50) NOT NULL,
  `individ_task` varchar(50) NOT NULL,
  `task_status_indi` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`username`, `password`, `groups`, `position`, `group_task`, `individ_task`, `task_status_indi`) VALUES
('admin', 'admin', 'admin', 'admin', '', '', ''),
('philip', '1234', 'server', 'leader', 'server_maintenace', '', ''),
('amoy', '1234', 'computer_lab_tech', 'member', '', 'network_ict_dept', '20'),
('boyit', '1234', 'computer_lab_tech', 'member', '', 'network_simlab', '60'),
('alex', 'admin', 'admin', 'admin', '', '', ''),
('lyndon', '1234', 'admin_tech', 'leader', 'admin_task', '', ''),
('reintje', '1234', 'computer_lab_tech', 'leader', 'networking', '', ''),
('brian', '1234', 'telephone_tech', 'leader', 'resolve_telephone', '', ''),
('rex', '1234', 'telephone_tech', 'member', '', '', ''),
('smith', '1234', 'admin_tech', 'member', '', '', ''),
('bryan', '1234', 'server', 'member', '', 'backup_all_files', '10'),
('mendoza', '1234', 'admin_tech', 'member', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE IF NOT EXISTS `loan` (
  `loanid` int(10) NOT NULL,
  `loantype` varchar(25) NOT NULL,
  `loanamt` varchar(25) NOT NULL,
  `period` varchar(25) NOT NULL,
  `interest` float(10,2) NOT NULL,
  `startdate` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2147483647 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`loanid`, `loantype`, `loanamt`, `period`, `interest`, `startdate`) VALUES
(2147483647, 'homeloan', '300000', 'monthly', 63.09, '2012-12-02');

-- --------------------------------------------------------

--
-- Table structure for table `loanpayment`
--

CREATE TABLE IF NOT EXISTS `loanpayment` (
  `paymentid` int(10) NOT NULL,
  `date` date NOT NULL,
  `paidamt` float(10,2) NOT NULL,
  `principleamt` float(10,2) NOT NULL,
  `interestamt` float(10,2) NOT NULL,
  `balance` float(10,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2147483647 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loanpayment`
--

INSERT INTO `loanpayment` (`paymentid`, `date`, `paidamt`, `principleamt`, `interestamt`, `balance`) VALUES
(2147483647, '2012-01-03', 50000.00, 25000.00, 2500.50, 250000.00);

-- --------------------------------------------------------

--
-- Table structure for table `loantype`
--

CREATE TABLE IF NOT EXISTS `loantype` (
  `loantype` varchar(25) NOT NULL,
  `prefix` varchar(25) NOT NULL,
  `maximumamt` float(10,2) NOT NULL,
  `minimumamt` float(10,2) NOT NULL,
  `interest` float(10,2) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loantype`
--

INSERT INTO `loantype` (`loantype`, `prefix`, `maximumamt`, `minimumamt`, `interest`, `status`) VALUES
('current', 'sb', 70000.00, 50000.00, 3000.00, 'active'),
('homeloan', 'hl', 1000000.00, 50000.00, 65.09, 'active'),
('sb', 'fd', 7000.00, 5000.00, 400.00, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE IF NOT EXISTS `mail` (
  `mailid` int(10) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `message` text NOT NULL,
  `mdatetime` datetime NOT NULL,
  `senderid` varchar(25) NOT NULL,
  `reciverid` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mail`
--

INSERT INTO `mail` (`mailid`, `subject`, `message`, `mdatetime`, `senderid`, `reciverid`) VALUES
(10, 'sdfgfdg', 'dfgfdg', '2013-01-19 05:05:58', '0', 'admin'),
(12, 'fdgdfsgsd', 'fgdsfgdsfg', '2013-02-02 05:32:29', 'admin', '98682'),
(13, 'hello this is test pag', 'this is test page to all emp', '2013-02-02 05:33:00', 'admin', '98682'),
(14, 'good morning raj kiran', 'this is welcome page', '2013-02-02 05:36:16', 'admin', '98682');

-- --------------------------------------------------------

--
-- Table structure for table `messaging`
--

CREATE TABLE IF NOT EXISTS `messaging` (
  `ctrl_no` int(255) NOT NULL,
  `date_send` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `to_receiver` varchar(50) NOT NULL,
  `from_sender` varchar(50) NOT NULL,
  `opened` tinyint(1) NOT NULL DEFAULT '0',
  `mail_subject` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=262 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messaging`
--

INSERT INTO `messaging` (`ctrl_no`, `date_send`, `to_receiver`, `from_sender`, `opened`, `mail_subject`, `message`) VALUES
(260, '2009-10-16 03:26:20', 'boyit', 'reintje', 0, ' notification', 'Your leader give you task. Go to TASK to know your task.'),
(261, '2009-10-16 03:27:41', 'bryan', 'philip', 0, ' notification', 'Your leader give you task. Go to TASK to know your task.'),
(255, '2009-10-16 03:13:43', 'lyndon', 'alex', 0, ' notification', 'Administrator assigned you to be a leader. Go to TASK to know your task.'),
(256, '2009-10-16 03:13:44', 'reintje', 'alex', 1, ' notification', 'Administrator assigned you to be a leader. Go to TASK to know your task.'),
(257, '2009-10-16 03:13:44', 'philip', 'alex', 1, ' notification', 'Administrator assigned you to be a leader. Go to TASK to know your task.'),
(258, '2009-10-16 03:13:45', 'brian', 'alex', 0, ' notification', 'Administrator assigned you to be a leader. Go to TASK to know your task.'),
(259, '2009-10-16 03:26:19', 'amoy', 'reintje', 0, ' notification', 'Your leader give you task. Go to TASK to know your task.');

-- --------------------------------------------------------

--
-- Table structure for table `networking`
--

CREATE TABLE IF NOT EXISTS `networking` (
  `username` varchar(50) NOT NULL,
  `accepted` tinyint(1) NOT NULL DEFAULT '0',
  `network_simlab` varchar(255) NOT NULL,
  `network_ict_dept` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `networking`
--

INSERT INTO `networking` (`username`, `accepted`, `network_simlab`, `network_ict_dept`) VALUES
('boyit', 1, 'working', ''),
('amoy', 1, '', 'working');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `que_ID` int(11) NOT NULL,
  `question` text NOT NULL,
  `field` int(11) NOT NULL,
  `askedBy` int(11) NOT NULL,
  `likes` int(11) NOT NULL DEFAULT '0',
  `dislikes` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`que_ID`, `question`, `field`, `askedBy`, `likes`, `dislikes`) VALUES
(32, 'What is php?', 4, 8, 0, 0),
(33, 'Who is the first programmer in the world?', 1, 8, 0, 0),
(34, 'What is laravell?', 8, 9, 0, 0),
(35, 'is laravell framework or api?', 8, 9, 0, 0),
(36, 'is it good to make a website responsive in css or using bootstrap?', 7, 9, 0, 0),
(37, 'what is java', 1, 8, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `registerdpayee`
--

CREATE TABLE IF NOT EXISTS `registerdpayee` (
  `slno` int(11) NOT NULL,
  `payeename` varchar(25) NOT NULL,
  `accountnumber` varchar(25) NOT NULL,
  `accounttype` varchar(25) NOT NULL,
  `bankname` varchar(25) NOT NULL,
  `ifsccode` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registerdpayee`
--

INSERT INTO `registerdpayee` (`slno`, `payeename`, `accountnumber`, `accounttype`, `bankname`, `ifsccode`) VALUES
(101, 'arpitha', '26548', 'saving', 'canarabank', 'KARB0000404');

-- --------------------------------------------------------

--
-- Table structure for table `resolve_telephone`
--

CREATE TABLE IF NOT EXISTS `resolve_telephone` (
  `username` varchar(50) NOT NULL,
  `accepted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sent_items`
--

CREATE TABLE IF NOT EXISTS `sent_items` (
  `ctrl_no` int(255) NOT NULL,
  `date_send` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `to_receiver` varchar(50) NOT NULL,
  `from_sender` varchar(50) NOT NULL,
  `opened` tinyint(1) NOT NULL DEFAULT '0',
  `mail_subject` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sent_items`
--

INSERT INTO `sent_items` (`ctrl_no`, `date_send`, `to_receiver`, `from_sender`, `opened`, `mail_subject`, `message`) VALUES
(59, '2009-10-16 03:26:20', 'boyit', 'reintje', 0, ' notification', 'Your leader give you task. Go to TASK to know your task.'),
(58, '2009-10-16 03:26:19', 'amoy', 'reintje', 0, ' notification', 'Your leader give you task. Go to TASK to know your task.'),
(56, '2009-10-16 03:13:44', 'philip', 'alex', 0, ' notification', 'Administrator assigned you to be a leader. Go to TASK to know your task.'),
(57, '2009-10-16 03:13:45', 'brian', 'alex', 0, ' notification', 'Administrator assigned you to be a leader. Go to TASK to know your task.'),
(54, '2009-10-16 03:13:43', 'lyndon', 'alex', 0, ' notification', 'Administrator assigned you to be a leader. Go to TASK to know your task.'),
(55, '2009-10-16 03:13:44', 'reintje', 'alex', 0, ' notification', 'Administrator assigned you to be a leader. Go to TASK to know your task.'),
(60, '2009-10-16 03:27:41', 'bryan', 'philip', 0, ' notification', 'Your leader give you task. Go to TASK to know your task.');

-- --------------------------------------------------------

--
-- Table structure for table `server_maintenace`
--

CREATE TABLE IF NOT EXISTS `server_maintenace` (
  `username` varchar(50) NOT NULL,
  `accepted` tinyint(1) NOT NULL DEFAULT '0',
  `backup_all_files` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `server_maintenace`
--

INSERT INTO `server_maintenace` (`username`, `accepted`, `backup_all_files`) VALUES
('bryan', 1, 'working');

-- --------------------------------------------------------

--
-- Table structure for table `task_list`
--

CREATE TABLE IF NOT EXISTS `task_list` (
  `taskname` varchar(50) NOT NULL,
  `ds` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task_list`
--

INSERT INTO `task_list` (`taskname`, `ds`) VALUES
('networking', 'network all desktop computer in campus (MUST)'),
('resolve_telephone', 'resolve telephone line in ICT department'),
('server_maintenace', 'maintain server...upgrade server'),
('admin_task', 'network all computers in admin');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
  `transactionid` int(10) NOT NULL,
  `transactiondate` date NOT NULL,
  `paymentdate` datetime NOT NULL,
  `payeeid` int(25) NOT NULL,
  `receiveid` int(10) NOT NULL,
  `debitac` varchar(25) NOT NULL,
  `amount` float(10,2) NOT NULL,
  `paymentstat` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2147483647 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transactionid`, `transactiondate`, `paymentdate`, `payeeid`, `receiveid`, `debitac`, `amount`, `paymentstat`) VALUES
(2147483647, '2012-12-13', '2012-12-03 04:21:10', 111232154, 0, '150000', 100000.00, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `use_ID` int(11) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `password` varchar(500) NOT NULL,
  `fullName` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`use_ID`, `userName`, `password`, `fullName`, `email`, `dateOfBirth`, `points`) VALUES
(8, 'adminsufiyan', 'c63967a4dd011e9272dd3e273fc8f8a3', 'pawaskar sufiyan', 'sufiyan11221122@gmail.com', '0000-00-00', 22),
(9, 'adminusama', 'a92c6dac3229d848eaefb8e23a30707f', 'usama malim', 'usamaimalim@gmail.com', '0000-00-00', 5),
(33, 'adminmustafa', 'e5de81655caaea1616f2d5afe6cb3d23', 'mustafa khan', 'mustafa@gmail.com', '1996-10-04', 5),
(34, 'Usama', 'ee9da88ee661ebb1304986300bef5e4a', 'Malim', 'usama@gmail.com', '2016-10-04', 0),
(35, 'Afnan', 'a92c6dac3229d848eaefb8e23a30707f', 'Afnan sayyed', 'sayyed@gmail.com', '0000-00-00', 0),
(36, 'KhanKhalid', '56696684b9456a2eea26d9a457312e65', 'Khan Mohd Khalid', 'khalid@gmail.com', '0000-00-00', 0),
(37, 'usama malim', 'd41d8cd98f00b204e9800998ecf8427e', 'usama malim1233', 'us@gmail.com', '2016-10-07', 0),
(38, 'Mubashir ', 'e06e71f7a878ad77e93b48bfb897fd49', 'MAlim', 'malim@gmail.com', '1998-08-19', 0),
(39, 'javed', 'ffc6a94da1739338be5a03b3a585cece', 'gauri', 'javed@gmail.com', '1998-08-26', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE IF NOT EXISTS `user_profile` (
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `verification_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`email`, `username`, `password`, `fname`, `lname`, `verification_code`) VALUES
('aquarius_1727@yahoo.com', 'admin', 'admin', 'admin', 'admin', 'admin'),
('.....', 'alex', 'admin', 'alex', 'maureal', 'admin'),
('b', 'brian', '1234', 'brian', 'torres', '21119'),
('d', 'lyndon', '1234', 'lydon', 'baylin', '11382'),
('c', 'philip', '1234', 'philip', 'abamonga', '16298'),
('a', 'reintje', '1234', 'reintje', 'francisco', '30745');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountmaster`
--
ALTER TABLE `accountmaster`
  ADD PRIMARY KEY (`accounttype`);

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`accno`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`ans_ID`),
  ADD UNIQUE KEY `ID` (`ans_ID`),
  ADD KEY `question` (`question`),
  ADD KEY `answeredBy` (`answeredBy`);

--
-- Indexes for table `areaofintrest`
--
ALTER TABLE `areaofintrest`
  ADD KEY `userId` (`userId`),
  ADD KEY `fieldId` (`fieldId`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`ifsccode`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`com_ID`),
  ADD KEY `ansId` (`ansId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `field`
--
ALTER TABLE `field`
  ADD PRIMARY KEY (`fie_ID`);

--
-- Indexes for table `group_title`
--
ALTER TABLE `group_title`
  ADD PRIMARY KEY (`group_name`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`loanid`);

--
-- Indexes for table `loanpayment`
--
ALTER TABLE `loanpayment`
  ADD PRIMARY KEY (`paymentid`);

--
-- Indexes for table `loantype`
--
ALTER TABLE `loantype`
  ADD UNIQUE KEY `loantype` (`loantype`);

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`mailid`);

--
-- Indexes for table `messaging`
--
ALTER TABLE `messaging`
  ADD PRIMARY KEY (`ctrl_no`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`que_ID`),
  ADD KEY `field` (`field`),
  ADD KEY `askedBy` (`askedBy`);

--
-- Indexes for table `registerdpayee`
--
ALTER TABLE `registerdpayee`
  ADD PRIMARY KEY (`slno`);

--
-- Indexes for table `sent_items`
--
ALTER TABLE `sent_items`
  ADD PRIMARY KEY (`ctrl_no`);

--
-- Indexes for table `task_list`
--
ALTER TABLE `task_list`
  ADD PRIMARY KEY (`taskname`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`use_ID`),
  ADD UNIQUE KEY `UserName` (`userName`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `ans_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `com_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=98684;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `empid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=313800;
--
-- AUTO_INCREMENT for table `field`
--
ALTER TABLE `field`
  MODIFY `fie_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `loanid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2147483647;
--
-- AUTO_INCREMENT for table `loanpayment`
--
ALTER TABLE `loanpayment`
  MODIFY `paymentid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2147483647;
--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `mailid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `messaging`
--
ALTER TABLE `messaging`
  MODIFY `ctrl_no` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=262;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `que_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `registerdpayee`
--
ALTER TABLE `registerdpayee`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `sent_items`
--
ALTER TABLE `sent_items`
  MODIFY `ctrl_no` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transactionid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2147483647;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `use_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`question`) REFERENCES `question` (`que_ID`),
  ADD CONSTRAINT `answer_ibfk_2` FOREIGN KEY (`answeredBy`) REFERENCES `user` (`use_ID`);

--
-- Constraints for table `areaofintrest`
--
ALTER TABLE `areaofintrest`
  ADD CONSTRAINT `areaOfIntrest_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`use_ID`),
  ADD CONSTRAINT `areaOfIntrest_ibfk_2` FOREIGN KEY (`fieldId`) REFERENCES `field` (`fie_ID`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`ansId`) REFERENCES `answer` (`ans_ID`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`use_ID`);

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`field`) REFERENCES `field` (`fie_ID`),
  ADD CONSTRAINT `question_ibfk_2` FOREIGN KEY (`askedBy`) REFERENCES `user` (`use_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
