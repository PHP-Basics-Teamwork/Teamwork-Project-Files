-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 
-- Версия на сървъра: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `forum`
--
CREATE DATABASE IF NOT EXISTS `forum` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `forum`;

-- --------------------------------------------------------

--
-- Структура на таблица `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Схема на данните от таблица `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Pictures'),
(2, 'Songs'),
(3, 'Videos'),
(4, 'Books'),
(5, 'Cars');

-- --------------------------------------------------------

--
-- Структура на таблица `gender`
--

CREATE TABLE IF NOT EXISTS `gender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Схема на данните от таблица `gender`
--

INSERT INTO `gender` (`id`, `gender`) VALUES
(1, 'Male'),
(2, 'Female'),
(3, 'Animal');

-- --------------------------------------------------------

--
-- Структура на таблица `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `summary` text NOT NULL,
  `text` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `votes` int(11) NOT NULL DEFAULT '0',
  `answers` int(11) DEFAULT '0',
  `best_answer_id` int(11) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`,`user_id`),
  KEY `best_answer_id` (`best_answer_id`),
  KEY `category_id_2` (`category_id`),
  KEY `best_answer_id_2` (`best_answer_id`),
  KEY `category_id_3` (`category_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Схема на данните от таблица `posts`
--

INSERT INTO `posts` (`id`, `title`, `summary`, `text`, `category_id`, `user_id`, `votes`, `answers`, `best_answer_id`, `date`) VALUES
(13, 'New post', 'lba bal', 'd awd wadwa dwa daw dwa dag ewagwrgaergag da gaw4', 2, 8, 0, 1, NULL, '0000-00-00 00:00:00'),
(15, 'fdsf', 'fdsfs', 'fsdfsdfsd', 2, 8, 0, 0, NULL, '0000-00-00 00:00:00'),
(16, 'Temata na icaka', 'sumaarito na temata na icaka', 'Pozdrav za martin Pozdrav za martin Pozdrav za martin Pozdrav za martin Pozdrav za martin Pozdrav za martin Pozdrav za martin ', 2, 15, 0, 2, NULL, '0000-00-00 00:00:00'),
(17, 'Temata na icaka2', 'dsadsada', 'dsadsa dsad asd ad sa', 4, 15, 0, 0, NULL, '2014-08-26 23:09:14'),
(18, '<h1>dasdas</h1>', 'dsadsadsa', 'dsadasdsa', 3, 15, 0, 6, NULL, '2014-08-26 23:16:58');

-- --------------------------------------------------------

--
-- Структура на таблица `post_tags`
--

CREATE TABLE IF NOT EXISTS `post_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`,`tag_id`),
  KEY `tag_id` (`tag_id`),
  KEY `post_id_2` (`post_id`),
  KEY `tag_id_2` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура на таблица `replies`
--

CREATE TABLE IF NOT EXISTS `replies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `votes` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`post_id`),
  KEY `user_id_2` (`user_id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Схема на данните от таблица `replies`
--

INSERT INTO `replies` (`id`, `text`, `user_id`, `post_id`, `votes`, `date`) VALUES
(7, 'answer', 8, 15, 0, '2014-08-26 23:34:13'),
(8, 'fas 2', 8, 15, 0, '2014-08-26 23:34:13'),
(9, 'fafda  2', 8, 15, 0, '2014-08-26 23:34:13'),
(13, 'gdfgdgd', 8, 13, 0, '2014-08-26 23:34:13'),
(14, 'Za icaka', 15, 16, 0, '2014-08-26 23:34:13'),
(15, 'gdfgdfgdf', 15, 16, 0, '2014-08-26 23:34:13'),
(16, 'gdgdgdfgdfg', 15, 18, 0, '2014-08-26 23:34:13'),
(17, 'gdfgdfgdf', 15, 18, 0, '2014-08-26 23:34:13'),
(18, 'dgdfgdf', 8, 18, 0, '2014-08-26 23:34:13'),
(19, 'nnnnnn', 8, 18, 0, '2014-08-26 23:34:13'),
(20, 'fsfsfsfsd', 8, 18, 0, '2014-08-26 23:39:01'),
(21, 'fsfsfsfsd', 8, 18, 0, '2014-08-26 23:39:41');

-- --------------------------------------------------------

--
-- Структура на таблица `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура на таблица `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender_id` int(11) NOT NULL,
  `salt` varchar(300) NOT NULL,
  `session_key` varchar(100) DEFAULT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`),
  KEY `gender_id` (`gender_id`),
  KEY `session_key` (`session_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Схема на данните от таблица `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `gender_id`, `salt`, `session_key`, `isAdmin`) VALUES
(8, 'gardax', 'gardax95@gmail.com', 'Georgi', 'Georgiev', 'd13ce3e2ffad97e5cb37a7f95472ac0a0f22f376', 1, 's1jnq6lbskgkc8s4s0ckkcwkgo8kk0c', '82aeCplHI2h0PsFn65k6Vs4uCwWgGXyOIMkVPdizB5CKiu2Taqb', 0),
(12, 'divoom12', 'divoom12@abv.bg', 'Yavor', 'Ivanov', 'caf8ef81c530bbe32726475e8ea2736d5bf1ae57', 3, 'qsbg0hpc62o48k4sc8cokckgccw0s8g', NULL, 0),
(13, 'fasdfsafa', '3dfsafas@dsa.com', 'dsada', 'dsadas', '1d70a01b961bcf5eb9635a8713c7a57a1f0cd9fa', 1, 'rd38ftwgckgg448ow0w8wo8coc8w0gw', NULL, 0),
(14, 'admin-', 'admin@gmail.com', 'Admin', 'Admin', 'ce31215085c15d3657cbd9a837118d841b1b3b7f', 3, 'hlq6msfv6144cc8oc4408ksgg840kso', NULL, 0),
(15, 'Icaka', 'icaka@abv.bg', 'Icaka', 'Icaka', 'b5d4716b837b43ad7b6831cdf1eec814acc945f2', 3, 'sxa4h60fbqs8ckk8g80kos848gs04kw', '15OHYrptY277lzLA1g6lgbV7ah7x4S3UzpuSgJl3ypD0EtMXISnM', 1);

--
-- Ограничения за дъмпнати таблици
--

--
-- Ограничения за таблица `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`best_answer_id`) REFERENCES `replies` (`id`),
  ADD CONSTRAINT `posts_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения за таблица `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tags_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `post_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

--
-- Ограничения за таблица `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `replies_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Ограничения за таблица `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
