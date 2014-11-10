-- phpMyAdmin SQL Dump
-- version 2.11.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 06, 2014 at 03:34 AM
-- Server version: 5.0.67
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pas`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE IF NOT EXISTS `adminlogin` (
  `USERNAME` varchar(20) NOT NULL default '',
  `PASSWORD` varchar(20) default NULL,
  PRIMARY KEY  (`USERNAME`),
  UNIQUE KEY `USERNAME` (`USERNAME`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`USERNAME`, `PASSWORD`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `CLIENTID` varchar(30) NOT NULL,
  `CLNAME` varchar(50) default NULL,
  `ADDRESS` varchar(50) default NULL,
  `CITY` varchar(30) default NULL,
  `STATE` varchar(30) default NULL,
  `NATION` varchar(30) default NULL,
  `NOOFBRANCH` varchar(5) default NULL,
  `CLTYPE` varchar(100) default NULL,
  `CONTPHNO` varchar(15) default NULL,
  `EXT` varchar(10) default NULL,
  `COMDESC` varchar(200) default NULL,
  `CTPERSON` varchar(40) default NULL,
  `WEBSITE` varchar(40) default NULL,
  `PASS` varchar(20) default NULL,
  PRIMARY KEY  (`CLIENTID`),
  UNIQUE KEY `CLIENTID` (`CLIENTID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`CLIENTID`, `CLNAME`, `ADDRESS`, `CITY`, `STATE`, `NATION`, `NOOFBRANCH`, `CLTYPE`, `CONTPHNO`, `EXT`, `COMDESC`, `CTPERSON`, `WEBSITE`, `PASS`) VALUES
('tcs', 'tcs', 'ba', 'fwhdjk', 'hiudvh', 'hcvbas', '5', 'con', '9553861167', 'tcs', 'vklsj', 'djk', 'www.svc.com', 'tcs'),
('sapna', '', '', '', '', '', '', '', '', '', '', '', '', '12345678'),
('sapna2', '', '', '', '', '', '', '', '', '', '', '', '', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE IF NOT EXISTS `education` (
  `QUL` varchar(20) default NULL,
  `POSTG` varchar(20) default NULL,
  `PUN` varchar(50) default NULL,
  `PPER` varchar(5) default NULL,
  `GRADU` varchar(20) default NULL,
  `GUN` varchar(50) default NULL,
  `GPER` varchar(5) default NULL,
  `INTER` varchar(20) default NULL,
  `INTERCERTNO` varchar(10) default NULL,
  `SSC` varchar(20) default NULL,
  `SSCCERTNO` varchar(10) NOT NULL,
  `OTHERQUL` varchar(20) default NULL,
  `OTHERCERT` varchar(20) default NULL,
  `USERID` varchar(30) NOT NULL,
  PRIMARY KEY  (`USERID`),
  UNIQUE KEY `USERID` (`USERID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`QUL`, `POSTG`, `PUN`, `PPER`, `GRADU`, `GUN`, `GPER`, `INTER`, `INTERCERTNO`, `SSC`, `SSCCERTNO`, `OTHERQUL`, `OTHERCERT`, `USERID`) VALUES
('PG', 'MTech', 'jntu', '98', 'BTech', 'ou', '98', 'mjc', '98', 'lhs', '98', 'sdk', '1gjfk;sdlg', 'vijay'),
('PG', 'MTech', 'ffffff', '78', 'BTech', 'gtttgtgtgtgttgtg', '78', 'gtgtgtgt', '67', 'ggtgtggt', '67', '', '', 'simerjit'),
('PG', 'MTech', '', '', 'BTech', '', '', '', '', '', '', '', '', '33333'),
('PG', 'MTech', '', '', 'BTech', '', '', '', '', '', '', '', '', '12345678'),
('PG', 'MTech', '', '', 'BTech', '', '', '', '', '', '', '', '', 'eeeeeeeee'),
('PG', 'MTech', '', '', 'BTech', '', '', '', '', '', '', '', '', '123345678'),
('PG', 'MTech', '', '', 'BTech', '', '', '', '', '', '', '', '', 'EDEEDEDK');

-- --------------------------------------------------------

--
-- Table structure for table `empreg`
--

CREATE TABLE IF NOT EXISTS `empreg` (
  `USERID` varchar(30) NOT NULL,
  `PASS` varchar(10) default NULL,
  `FNAME` varchar(20) default NULL,
  `MNAME` varchar(20) default NULL,
  `LNAME` varchar(20) default NULL,
  `PRSTADD` varchar(50) default NULL,
  `PARTADD` varchar(50) default NULL,
  `PIN` varchar(8) default NULL,
  `CITY` varchar(20) default NULL,
  `STATE` varchar(20) default NULL,
  `COUNTRY` varchar(20) default NULL,
  `CTNTNOOFICE` varchar(15) default NULL,
  `EXTNO` varchar(5) default NULL,
  `CTNTNORESNO` varchar(15) default NULL,
  `CARRABJ` varchar(200) default NULL,
  `MOBILENO` varchar(15) default NULL,
  `GENDER` varchar(10) default NULL,
  `filename` varchar(200) NOT NULL,
  PRIMARY KEY  (`USERID`),
  UNIQUE KEY `USERID` (`USERID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empreg`
--

INSERT INTO `empreg` (`USERID`, `PASS`, `FNAME`, `MNAME`, `LNAME`, `PRSTADD`, `PARTADD`, `PIN`, `CITY`, `STATE`, `COUNTRY`, `CTNTNOOFICE`, `EXTNO`, `CTNTNORESNO`, `CARRABJ`, `MOBILENO`, `GENDER`, `filename`) VALUES
('vijay', 'vijay', 'vijay', 'vijay', 'vijay', 'kjfhilk', 'bcja', '505445', 'null', 'ap', 'india', '9949300828', '54321', '9553861167', 'sdsdkljg;', '9030156257', 'male', 'resume.sql'),
('simerjit', '12345678', 'fffffffff', 'fffffff', 'tttttttt', '45h tgtttgtgggttgtggt', '45g tggtggtgtgtgtgtgtg', '', 'tttttttttt', '', 'tggttgtggt', '5555555555666', '', '666666666666666', 'gregegtegeheegggtggb', '', 'Male', ''),
('33333', '66666', '66666', '6666', '66666', '6', 'd', '', 'ddedd', 'dded', 'dedd', 'ded', '', 'dededd', 'deededed', '', 'Male', ''),
('eeeerrrr', '1234567', 'fffffff', 'fffffffffffffff', 'ffffff', 'ffffffffffff', 'ffffffffffff', '', 'ffffffffffffff', 'fffffffffffffffffff', 'fffffffffffffffff', 'fffffffffffffff', '', 'fffffffffffffff', 'fffffffffffffffffffffff', '', 'Male', ''),
('pranav899', '12345678', 'ffffffff', 'fff', 'ff', 'fffffffffffffff', 'ffffffffffffff', '', 'ffffffffffff', 'fffffffffffffffff', 'fffffffffffffffff', '', '', 'fffffffffffffff', 'fffffffffffffffffff', '', 'Male', ''),
('qwertyu', '123456678', 'fdfdfdf', 'fdadfdf', 'fdddfdfdf', 'ffddfdffdsdfdf', 'fdddfddfdfdfdf', '', 'ffddfdfdffds', '', 'fdfdfddsfdsfdfs', '', '', 'dfsdsfdfsdfdfsd', 'fdfdsaasdfdsffdfds', '', 'Male', ''),
('12345678', 'ssdffgttr', 'ddttttt', 'feerfre', 'frrer', 'frerfeer', 'fefe', '', 'ferfeferf', '', 'ferferfr', '', '', 'frefrefrefr', 'ferffer', '', 'Male', ''),
('ssffffff', 'ffffffffff', 'fffffffffffff', 'fffffffffffffff', 'fffffffffffffff', '', '', '', '', '', '', '', '', '', '', '', 'Male', ''),
('eeeeeeeee', 'eeeeeeee', 'eeeeeee', 'eeeeee', 'eeeeeee', '', '', '', '', '', '', '', '', '', '', '', 'Male', ''),
('123345678', 'djfoijpijf', 'qijfgerioqfjq', 'qjgpjirew', 'gwgewrgrg', '', '', '', '', '', '', '', '', '', '', '', 'Male', ''),
('fefejreoi', 'jgriogrgio', 'jgiooigtjtigjt', 'ijgreo&#309;toijg', 'getogjtoijgot', '', '', '', '', '', '', '', '', '', '', '', 'Male', ''),
('dohdoiiadjaioj', 'adadjoiajd', 'djsaiododajdoi', 'dsajodijdioajd', 'sajdoijdas', '', '', '', '', '', '', '', '', '', '', '', 'Male', ''),
('fjheroierjif', 'frwfiorejf', 'fjrejpwfofj', 'fjoijfrf', 'rwjfiorwfroj', '', '', '', '', '', '', '', '', '', '', '', 'Male', ''),
('rwhufufu', 'rfoeroijop', 'rfijjiojoi3oij3', 'rjrfijrwjiopjr', 'rjrwopjf3ioj', '', '', '', '', '', '', '', '', '', '', '', 'Male', ''),
('jntrrojtgtr', 'growpjwroi', 'giwojjg4w4j', 'jritjtjwjitw', 'hwigtjpitwj', '', '', '', '', '', '', '', '', '', '', '', 'Male', ''),
('EDEEDEDK', 'DEDODJIED', 'DEDEJDEODEDEJ', 'EDIJEIDEI', 'DEEDEDED', '', '', '', '', '', '', '', '', '', '', '', 'Male', '');

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE IF NOT EXISTS `experience` (
  `USERID` varchar(30) NOT NULL default '',
  `EXPE` varchar(6) default NULL,
  `FIEL` varchar(100) default NULL,
  `PRESENTWORKING` varchar(100) default NULL,
  `OFFORONSITE` varchar(5) default NULL,
  `EXPFROM` varchar(20) default NULL,
  `EXPTO` varchar(20) default NULL,
  `PRESENTSAL` varchar(20) default NULL,
  `EXPTSAL` varchar(20) default NULL,
  `WWW` varchar(40) default NULL,
  PRIMARY KEY  (`USERID`),
  UNIQUE KEY `USERID` (`USERID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`USERID`, `EXPE`, `FIEL`, `PRESENTWORKING`, `OFFORONSITE`, `EXPFROM`, `EXPTO`, `PRESENTSAL`, `EXPTSAL`, `WWW`) VALUES
('vijay', '3', '2', 'sahasra', 'off', '06-05-2012', '05-06-2012', '45000', '50000', 'www.abc.com');

-- --------------------------------------------------------

--
-- Table structure for table `joborder`
--

CREATE TABLE IF NOT EXISTS `joborder` (
  `JOBTITLE` varchar(50) default NULL,
  `JOBCODE` varchar(20) NOT NULL,
  `SKILL1` varchar(30) default NULL,
  `SKILL2` varchar(30) default NULL,
  `SKILL3` varchar(30) default NULL,
  `SKILL4` varchar(30) default NULL,
  `SKILL5` varchar(30) default NULL,
  `SKILL6` varchar(30) default NULL,
  `NOYEXP` varchar(10) default NULL,
  `RELDATE` varchar(20) default NULL,
  `CLODATE` varchar(20) default NULL,
  `CLIENTID` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`CLIENTID`),
  UNIQUE KEY `CLIENTID` (`CLIENTID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `joborder`
--


-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
  `JOBTITLE` varchar(50) default NULL,
  `JOBCODE` varchar(20) default NULL,
  `SKILL` varchar(50) default NULL,
  `NOYEXP` varchar(10) default NULL,
  `RELDATE` varchar(20) default NULL,
  `CLODATE` varchar(20) default NULL,
  `CLIENTID` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`CLIENTID`),
  UNIQUE KEY `CLIENTID` (`CLIENTID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`JOBTITLE`, `JOBCODE`, `SKILL`, `NOYEXP`, `RELDATE`, `CLODATE`, `CLIENTID`) VALUES
('developer', 'j123', 'a,b,c,d,e,f', '2', '04-05-2012', '04-06-2012', 'tcs');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `USERID` varchar(30) NOT NULL default '',
  `PROJTITLE` varchar(200) default NULL,
  `PROJDESC` varchar(200) default NULL,
  `USEDSKILLS` varchar(200) default NULL,
  `TEAMSIZE` varchar(3) default NULL,
  `ENVRN` varchar(200) default NULL,
  `ROLLS` varchar(200) default NULL,
  PRIMARY KEY  (`USERID`),
  UNIQUE KEY `USERID` (`USERID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--


-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE IF NOT EXISTS `skills` (
  `USERID` varchar(30) NOT NULL default '',
  `SKILL1` varchar(20) default NULL,
  `SKILL2` varchar(20) default NULL,
  `SKILL3` varchar(20) default NULL,
  `SKILL4` varchar(20) default NULL,
  `SKILL5` varchar(20) default NULL,
  `SKILL6` varchar(20) default NULL,
  `OTHERS` varchar(40) default NULL,
  `DESCOFSKILLS` varchar(200) default NULL,
  `TOTEXP` varchar(20) default NULL,
  PRIMARY KEY  (`USERID`),
  UNIQUE KEY `USERID` (`USERID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`USERID`, `SKILL1`, `SKILL2`, `SKILL3`, `SKILL4`, `SKILL5`, `SKILL6`, `OTHERS`, `DESCOFSKILLS`, `TOTEXP`) VALUES
('vijay', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'hhhhhh', '5');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE IF NOT EXISTS `upload` (
  `uid1` varchar(255) NOT NULL,
  `datafile` longblob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload`
--

