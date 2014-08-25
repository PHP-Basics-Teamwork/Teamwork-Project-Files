-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 
-- Версия на сървъра: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `forum`
--

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
(1, 'male'),
(2, 'female'),
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
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`,`user_id`),
  KEY `best_answer_id` (`best_answer_id`),
  KEY `category_id_2` (`category_id`),
  KEY `best_answer_id_2` (`best_answer_id`),
  KEY `category_id_3` (`category_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Схема на данните от таблица `posts`
--

INSERT INTO `posts` (`id`, `title`, `summary`, `text`, `category_id`, `user_id`, `votes`, `answers`, `best_answer_id`) VALUES
(3, 'Wallpapers and Pics', 'Fell free to post any pictures here...', 'i have a picture', 1, 8, 0, 7, NULL),
(4, 'Eminem - Some Song', 'Post your favourite Eminem songs here..', 'Eminem song. He sings. Nice', 2, 12, 3, 2, NULL),
(5, 'Cartoon Network Video', 'Tell us what you think about it', 'Cartoon Network Video Cartoon Network Video', 3, 8, 1, 5, NULL),
(6, 'The new and the best... VW POLO', 'Do you want to drive it?', 'Volkswagen Polo is a supermini car produced by the German manufacturer Volkswagen since 1975. It is sold in Europe and other markets worldwide in hatchback, sedan, coupé and estate variants.', 5, 12, 5, 0, NULL),
(7, 'Google Books', 'Any google books that you like, can be found here', 'Search and preview millions of books from libraries and publishers worldwide using Google Book Search. Discover a new favorite or unearth an old', 4, 8, 2, 3, NULL),
(8, 'Some 50 Cent songs maybe', 'Can someone sudgest me some songs?', 'So hi.. I''m amateur rap fan, and I want to become the real OG. So... Cound you sudgest me some of 50''s song, so I can become a gangster? Thanks :) :D', 2, 8, 4, 0, NULL),
(9, 'The New LAMBO is out guys?!?!!!!', 'Lets hear what u think about it. I hear its faaasst...', 'So I''m very rich programmer, and I just found out, that the new lambo is out. Can u believe it? I have waited for this moment my whole live, and now, I even can afford to buy it!! Wow. So what do you think? Should I?', 5, 12, 17, 6, NULL);

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
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`post_id`),
  KEY `user_id_2` (`user_id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Схема на данните от таблица `replies`
--

INSERT INTO `replies` (`id`, `text`, `user_id`, `post_id`, `votes`) VALUES
(2, 'I like pictures too bruh..', 8, 3, 12);

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`),
  KEY `gender_id` (`gender_id`),
  KEY `session_key` (`session_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Схема на данните от таблица `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `gender_id`, `salt`, `session_key`) VALUES
(8, 'gardax', 'gardax95@gmail.com', 'Georgi', 'Georgiev', 'd13ce3e2ffad97e5cb37a7f95472ac0a0f22f376', 1, 's1jnq6lbskgkc8s4s0ckkcwkgo8kk0c', '8ATJ0ZAS03JnMCdeZ6LsaM9os3IIQnUfgewndFM0je08xTYXlnF'),
(12, 'divoom12', 'divoom12@abv.bg', 'Yavor', 'Ivanov', 'caf8ef81c530bbe32726475e8ea2736d5bf1ae57', 3, 'qsbg0hpc62o48k4sc8cokckgccw0s8g', NULL);

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
