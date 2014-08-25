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
(3, 'Wallpapers and Pics', 'Fell free to post any pictures here...', 'A picture is a visual capture of an object. Pictures are created using another hardware device such as a digital camera or a scanner and not the computer. The picture of pictures shown here is a good example of a picture.\nIf visual object is made exclusively on a computer and is not captured by another device it may be referred to as a clip art, graphic, illustration, render, or a screenshot.', 1, 8, 0, 7, NULL),
(4, 'Eminem - Some Song', 'Post your favourite Eminem songs here..', 'Marshall Bruce Mathers III (born October 17, 1972), better known by his stage name Eminem and by his alter ego Slim Shady, is an American rapper, record producer, songwriter, and actor. In addition to his solo career, Eminem is a member of the group D12, as well as one half of the hip hop duo Bad Meets Evil, alongside Royce da 5''9". Eminem is the best-selling artist of the 2000s in the United States. Rolling Stone magazine ranked him 82nd on its list of The 100 Greatest Artists of All Time. The same magazine declared him The King of Hip Hop. Including his work with D12 and Bad Meets Evil, Eminem has achieved ten number-one albums on the Billboard 200. Eminem has sold more than 115 million albums and singles worldwide, making him one of the best-selling artists of all time.As of June 2014, he is the second best selling male artist of the Nielsen Soundscan era, the sixth best overall selling artist in the United States, and the best-selling hip-hop artist having sold 45,160,000 albums and 31 million digital singles.', 2, 12, 3, 2, NULL),
(5, 'Cartoon Network Video', 'Tell us what you think about it', 'Cartoon Network is an American basic cable and satellite television channel that is owned by the Turner Broadcasting System division of Time Warner. The channel airs mainly animated programming, ranging from action to animated comedy. It was launched on October 1, 1992.\n\nIt is primarily aimed at children and teenagers between the ages of 7–15, and also targets older teens and adults with mature content during its late night daypart Adult Swim, which is treated as a separate entity for promotional purposes and as a separate channel by Nielsen for ratings purposes.[1] A Spanish language audio track for select programs is accessible via SAP; some cable and satellite companies offer the Spanish feed as a separate channel.\n\nAs of August 2013, Cartoon Network is available to approximately 98,671,000 pay television households (86.4% of households with television) in the United States.[2]', 3, 8, 1, 5, NULL),
(6, 'The new and the best... VW POLO', 'Do you want to drive it?', 'Volkswagen Polo is a supermini car produced by the German manufacturer Volkswagen since 1975. It is sold in Europe and other markets worldwide in hatchback, sedan, coupé and estate variants. Volkswagen was originally founded in 1937 by the German Labour Front (Deutsche Arbeitsfront).[3] In the early 1930s, the German auto industry was still largely composed of luxury models, and the average German could rarely afford anything more than a motorcycle. As a result, only one German out of 50 owned a car. Seeking a potential new market, some car makers began independent "peoples'' car" projects – Mercedes'' 170H, Adler''s AutoBahn, Steyr 55, Hanomag 1,3L, among others.\n\nThe trend was not new, as is credited with having conceived the basic design in the middle 1920s. Josef Ganz developed the Standard Superior (going as far as advertising it as the "German Volkswagen"). In Germany the company Hanomag mass-produced the 2/10 PS, a small, cheap rear engined car, from 1925 to ', 5, 12, 5, 0, NULL),
(7, 'Google Books', 'Any google books that you like, can be found here', 'Search and preview millions of books from libraries and publishers worldwide using Google Book Search. Discover a new favorite or unearth an old. If the book is out of copyright, or the publisher has given us permission, you''ll be able to see a preview of the book, and in some cases the entire text. If it''s in the public domain, you''re free to download a PDF copy.If you find a book you like, click on the "Buy this book" and "Borrow this book" links to see where you can buy or borrow the print book. You can now also buy the ebook from the Google Play Store.', 4, 8, 2, 3, NULL),
(8, 'Some 50 Cent songs maybe', 'Can someone sudgest me some songs?', 'Curtis James Jackson III (born July 6, 1975), better known by his stage name 50 Cent, is an American rapper, entrepreneur, investor, and actor from New York City, New York. He rose to fame with the release of his albums Get Rich or Die Tryin'' (2003) and The Massacre (2005). His major-label debut Get Rich or Die Tryin'', has been certified six times platinum by the Recording Industry Association of America (RIAA).[1] 50 Cent also gained prominence with East Coast hip hop group G-Unit, of which he is the de facto leader.\n\nBorn in the South Jamaica neighborhood in the New York City borough of Queens, Jackson began drug dealing at the age of twelve during the 1980s crack epidemic.[2] After leaving drug dealing to pursue a rap career, he was shot at and struck by nine bullets during an incident in 2000. After releasing his album Guess Who''s Back? in 2002, Jackson was discovered by rapper Eminem and signed to Interscope Records, Shady Records and Aftermath Entertainment. With the help of Eminem and Dr. Dre, who produced his first major commercial successes, Jackson became one of the world''s highest selling rappers. In 2003, he founded the record label G-Unit Records, which signed several successful rappers such as Young Buck, Lloyd Banks, and Tony Yayo.', 2, 8, 4, 0, NULL),
(9, 'The New LAMBO is out guys?!?!!!!', 'Lets hear what u think about it. I hear its faaasst...', 'Automobili Lamborghini S.p.A. is an Italian brand and manufacturer of luxury sports cars and, formerly, SUVs, which is owned by the Volkswagen Group through its subsidiary brand division Audi. Lamborghini''s production facility and headquarters are located in Sant''Agata Bolognese Italy. In 2011, Lamborghini''s 831 employees produced 1,711 vehicles.\n\nFerruccio Lamborghini, an Italian manufacturing magnate, founded Automobili Ferruccio Lamborghini S.p.A. in 1963 to compete with established marques, including Ferrari. The company gained wide acclaim in 1966 for the Miura sports coupé, which established rear mid-engine, rear wheel drive as the standard layout for high-performance cars of the era. Lamborghini grew rapidly during its first decade, but sales plunged in the wake of the 1973 worldwide financial downturn and the oil crisis. The firm''s ownership changed three times after 1973, including a bankruptcy in 1978. American Chrysler Corporation took control of Lamborghini in 1987 and sold it to Malaysian investment group Mycom Setdco and Indonesian group V''Power Corporation in 1994. In 1998, Mycom Setdco and V''Power sold Lamborghini to the Volkswagen Group where it was placed under the control of the group''s Audi division.', 5, 12, 17, 6, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Схема на данните от таблица `replies`
--

INSERT INTO `replies` (`id`, `text`, `user_id`, `post_id`, `votes`) VALUES
(3, 'I too like 50 cent. He''s like 50 stinki but better. Best songs according to me: its a secret', 13, 8, 0),
(4, 'I read books quite often. But I preffer watching tv... If there was google tv, I would totaly check it out...', 8, 7, 0),
(5, 'Motori Marini Lamborghini produces a large V12 marine engine block for use in World Offshore Series Class 1 powerboats. A Lamborghini branded marine engine displaces approximately 8,171 cc (499 cu in) and outputs approximately 940 hp (700 kW).', 12, 9, 0),
(6, 'n contrast to his rival Enzo Ferrari, Ferruccio Lamborghini had decided early on that there would be no factory-supported racing of Lamborghinis, viewing motorsport as too expensive and too draining on company resources. This was unusual for the time, as many sports car manufacturers sought to demonstrate the speed, reliability, and technical superiority through motorsport participation. Enzo Ferrari in particular was known for considering his road car business mostly a source of funding for his participation in motor racing. Ferruccio''s policy led to tensions between him and his engineers, many of whom were racing enthusiasts; some had pre', 12, 6, 0),
(8, '\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 8, 6, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Схема на данните от таблица `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `gender_id`, `salt`, `session_key`) VALUES
(8, 'gardax', 'gardax95@gmail.com', 'Georgi', 'Georgiev', 'd13ce3e2ffad97e5cb37a7f95472ac0a0f22f376', 1, 's1jnq6lbskgkc8s4s0ckkcwkgo8kk0c', '8ATJ0ZAS03JnMCdeZ6LsaM9os3IIQnUfgewndFM0je08xTYXlnF'),
(12, 'divoom12', 'divoom12@abv.bg', 'Yavor', 'Ivanov', 'caf8ef81c530bbe32726475e8ea2736d5bf1ae57', 3, 'qsbg0hpc62o48k4sc8cokckgccw0s8g', NULL),
(13, 'yavor', 'davko996blog@gmail.com', 'Yavor', 'Ivanov', '263ec75caded9ab03633e54512d82df34d809795', 1, 'poi9tr7b39cwgw04oow00oscw8c4c0k', '13zrvwopEWmbk1snAoZVjhoIA36IfiN4x07jGoIsJQNZJjLRy3dY');

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
