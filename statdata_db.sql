-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2015 at 05:17 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `statdata_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_tbl`
--

CREATE TABLE IF NOT EXISTS `data_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_link` longtext NOT NULL,
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` text NOT NULL,
  `tweet_link` longtext NOT NULL,
  `comment` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `event_tbl`
--

CREATE TABLE IF NOT EXISTS `event_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `event_name` text NOT NULL,
  `event_date` datetime NOT NULL,
  `event_description` longtext NOT NULL,
  `hashtag` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `event_tbl`
--

INSERT INTO `event_tbl` (`id`, `user_id`, `event_name`, `event_date`, `event_description`, `hashtag`) VALUES
(1, 1, 'Tree Planting', '2015-01-07 00:00:00', 'Tree Planting po', '#TreePlantingSanJuan');

-- --------------------------------------------------------

--
-- Table structure for table `pending_user_tbl`
--

CREATE TABLE IF NOT EXISTS `pending_user_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pending_first_name` text NOT NULL,
  `pending_middle_name` text NOT NULL,
  `pending_last_name` text NOT NULL,
  `pending_password` varchar(64) NOT NULL,
  `pending_email` text NOT NULL,
  `pending_address` longtext NOT NULL,
  `pending_date_of_term` text NOT NULL,
  `pending_user_name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `pending_user_tbl`
--

INSERT INTO `pending_user_tbl` (`id`, `pending_first_name`, `pending_middle_name`, `pending_last_name`, `pending_password`, `pending_email`, `pending_address`, `pending_date_of_term`, `pending_user_name`) VALUES
(2, 'Jose', 'BAluga', 'SAn Juan', '13213', 'jose@gmail.com', 'morong', '2014-2016', 'Jose');

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE IF NOT EXISTS `user_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` text NOT NULL,
  `first_name` text NOT NULL,
  `middle_name` text NOT NULL,
  `last_name` text NOT NULL,
  `password` varchar(64) NOT NULL,
  `email` text NOT NULL,
  `address` int(11) NOT NULL,
  `date_registered` text NOT NULL,
  `date_of_term` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`id`, `user_name`, `first_name`, `middle_name`, `last_name`, `password`, `email`, `address`, `date_registered`, `date_of_term`) VALUES
(1, 'gidj02', 'gino', 'Iglesias', 'de Jesus', '1111', 'ginodejesus02@gmail.com', 0, '2015-01-15', '2014-2016');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
