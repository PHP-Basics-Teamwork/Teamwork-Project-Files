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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Схема на данните от таблица `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Pictures'),
(2, 'Songs'),
(3, 'Videos'),
(4, 'Books'),
(5, 'Cars'),
(6, 'Software'),
(7, 'Hardware'),
(8, 'Design'),
(9, 'Others');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Схема на данните от таблица `posts`
--

INSERT INTO `posts` (`id`, `title`, `summary`, `text`, `category_id`, `user_id`, `votes`, `answers`, `best_answer_id`, `date`) VALUES
(29, 'Google Chrome 64-bit arrives for Windows 7 and Windows 8', 'Google Chrome update ', 'Google today also released the 64-bit version of Chrome for Windows 7 and Windows 8 in the stable channel. Nevertheless, going 64-bit is still an opt-in process: to take advantage you have to hit the new &ldquo;Windows 64-bit&rdquo; download link over at google.com/chrome.\n\nGoogle first launched Chrome 64-bit back in June, but only in the browser&rsquo;s Dev and Canary channels. The beta channel received the same treatment in July, and now finally available in the stable channel.\n\nGoogle has found that the native 64-bit version has improved speed on many of its graphics and media benchmarks:\n\nFor example, the VP9 codec that&rsquo;s used in High Definition YouTube videos shows a 15 percent improvement in decoding performance. Stability measurements from people opted into our Canary, Dev and Beta 64-bit channels confirm that 64-bit rendering engines are almost twice as stable as 32-bit engines when handling typical web content. Finally, on 64-bit, our defense in depth security mitigations such as Partition Alloc are able to far more effectively defend against vulnerabilities that rely on controlling the memory layout of objects.\n\nThe 64-bit version is faster because it can take advantage of the latest processor and compiler optimizations, a more modern instruction set, and a calling convention that allows more function parameters to be passed quickly by registers. It is more secure, since Chrome can take advantage of the latest OS features such as High Entropy ASLR on Windows 8, better defend against exploitation techniques such as JIT spraying, and improve the effectiveness of existing security defense features like heap partitioning.\n\nOverall, it should also be more stable, yet despite the stable channel release you should still expect some issues. Google says the only significant one (that the company knows of) is the lack of 32-bit NPAPI plugin support, although that&rsquo;s on its way out anyway.\n\nGoogle says it plans to support the 32-bit channel &ldquo;for the foreseeable future.&rdquo; The company didn&rsquo;t say, however, when the 64-bit channel will no longer be opt-in, or when it would become the default option for 64-bit Windows users.', 6, 16, 0, 3, NULL, '2014-08-27 02:07:05'),
(30, 'What''s New in Java 8', 'Java 8 - New Features', 'Like many Java developers, the first time I heard about lambda expressions it piqued my interest. Also like many others, I was disappointed when it was set back. However, it is better late than never.\r\n\r\nJava 8 is a giant step forward for the Java language. Writing this book has forced me to learn a lot more about it. In Project Lambda, Java gets a new closure syntax, method-references, and default methods on interfaces. It manages to add many of the features of functional languages without losing the clarity and simplicity Java developers have come to expect.\r\n\r\nAside from Project Lambda, Java 8 also gets a new Date and Time API (JSR 310), the Nashorn JavaScript engine, and removes the Permanent Generation from the HotSpot virtual machine, among other changes.\r\n\r\nI would like to acknowledge the following people for providing valuable resources:\r\n\r\nBrian Goetz &ndash; &ldquo;State of the Lambda&rdquo;\r\nAleksey Shipilev &ndash; jdk8-lambda-samples\r\nRichard Warburton &ndash; &ldquo;Java 8 Lambdas&rdquo;\r\nJulien Ponge &ndash; &ldquo;Oracle Nashorn&rdquo; in the Jan./Feb. 2014 issue of Java Magazine.\r\nVenkat Subramaniam &ndash; agiledeveloper.com\r\nAll of the developers behind Java 8.\r\nThe developers of Guava, joda-time, Groovy, and Scala.', 6, 18, 0, 2, NULL, '2014-08-27 02:14:20'),
(31, 'NVIDIA Refreshes Quadro Lineup, Launches 5 New Quadro Cards', 'Check out the New NVIDIA GPU', 'Continuing today&rsquo;s spate of professional graphics announcements, along with AMD&rsquo;s refresh of their FirePro lineup NVIDIA is announcing that they are undertaking their own refresh of their Quadro lineup. Being announced today and shipping in September are 5 new Quadro cards that will come just short of a top-to-bottom refresh of the Quadro lineup.\r\n\r\nWith the exception of NVIDIA&rsquo;s much more recently introduced Quadro K6000 &ndash; which will continue its reign as NVIDIA&rsquo;s most powerful professional GPU &ndash; NVIDIA&rsquo;s Quadro refresh comes as the bulk of the current Quadro K5000 family approaches 2 years old. At the point NVIDIA is looking to offer an across-the-board boost to their Quadro lineup, to increase performance and memory capacity at every tier. As a result this refresh will involve replacing NVIDIA&rsquo;s Quadro cards with newer models based on larger and more powerful Kepler and Maxwell GPUs, and released as the Quadro Kx200 series.  All told, NVIDIA is shooting for an average performance improvement of 40%, on top of any benefits from the larger memory amounts.', 7, 17, 0, 2, NULL, '2014-08-27 02:16:49'),
(32, 'Graphic designer', 'Job description', 'A graphic designer is responsible for creating design solutions that have a high visual impact. The role involves listening to clients and understanding their needs before making design decisions. \r\n\r\nTheir designs are required for a huge variety of products and activities, such as websites, advertising, books, magazines, posters, computer games, product packaging, exhibitions and displays, corporate communications and corporate identity, i.e. giving organisations a visual ''brand''.\r\n\r\nA graphic designer works to a brief agreed with the client, creative director or account manager. They develop creative ideas and concepts, choosing the appropriate media and style to meet the client''s objectives.\r\n\r\nThe work demands creative flair, up-to-date knowledge of industry software and a professional approach to time, costs and deadlines.', 8, 16, 0, 2, NULL, '2014-08-27 02:18:45'),
(33, 'J.K. Rowling Writes A New ''Harry Potter'' Story', 'The daily lowdown on books, publishing, and the occasional author behaving badly.', 'J.K. Rowling has a new short story about the adult Harry Potter, written in the form of a gossip column by Rita Skeeter, the ruthless and fact-bending journalist of the Potter series. Harry, who is attending the Quidditch World Cup with his family as well as Ron and Hermione, is now in his 30s and has &quot;a couple of threads of silver&quot; in his hair and a mysterious cut on his cheek. &quot;Are cracks beginning to show in a union the Potters are determined to promote as happy?&quot; asks Skeeters, who also takes shots at his glasses, friends and godson. Rowling has satirized tabloid papers in the past, and indeed testified at an inquiry into the practices of the British press, saying that the unwanted attention made her feel like she was &quot;under siege or like a hostage.&quot; The new story can be read on her website Pottermore [registration required].', 4, 18, 0, 2, NULL, '2014-08-27 02:20:45'),
(34, 'First drive: Lamborghini Huracan', 'The Gallardo replacement is here. Can it outgun the Ferrari 458 and McLaren 650S? ', 'What is it?\r\n\r\nIt''s a big one: Lamborghini''s replacement for the best-selling car in its history. In over a decade of production, Lambo shifted 14,022 Gallardos, accounting for more than half of all the cars sold in the brands half-century existence. The all-new Huracan, then, has some pretty big boots to fill.\r\n\r\nIs it really all-new?\r\n\r\nIt would be wrong to dismiss this as a refreshed Gallardo. Very wrong. In a marketplace containing the Ferrari 458 and McLaren&rsquo;s 650S, anything other than a radical refresh of Lamborghini&rsquo;s V10 formula would have the Huracan entering an automotive battleground severely outgunned.\r\nSo what''s new then?\r\n\r\nPretty much everything. The Huracan features an all-new chassis structure, new suspension with new controlling electronics, new steering, a heavily revised engine and &ndash; maybe most significantly &ndash; a new seven-speed dual-clutch gearbox to replace the Gallardo&rsquo;s clunking robotised manual. There''s a new four-wheel drive system and new cabin, too. Point is, while it might not look radically different from the outside, this is a completely new car.\r\n\r\nThe Huracan, like the McLaren, uses RTM carbonfibre for its rear bulkhead, central tunnel and the rear part of the sills. From the rear bulkhead backwards, the frame is aluminium, like the 458 and the 650S. It''s also aluminium from the base of the windscreen forwards, while body panels are made from aluminium, too. The chassis, then, is 10 per cent lighter than that of the Gallardo, but 50 per cent more rigid.', 5, 16, 0, 3, NULL, '2014-08-27 02:22:49'),
(35, 'Eminem teases details of new album, Shady XV', 'Shady XV... Are you ready?', 'Eminem appears to be putting out an album this November. The rapper will release Shady XV, thought to be either his ninth studio LP or a compilation for his label, Shady Records.\r\n\r\nRumours regarding the new release come via a movie trailer. The latest preview clip for The Equalizer, starring Denzel Washington, includes snippets of audio of Guts Over Fear, Eminem&rsquo;s new track with Sia. At the end of the trailer, a split-second title card indicates that the song will appear both in the movie and on the mysterious Shady XV, due out on Black Friday, which is 28 November. Since the clip&rsquo;s release, another short video has been posted by Eminem, showing flashes of images of his career&rsquo;s greatest hits. \r\n\r\nOver the weekend, those scant details &ndash; Shady XV, Black Friday &ndash; also briefly appeared on Eminem&rsquo;s official website; however, the page has since been taken down. The rapper and his collaborators have been tweeting the #SHADYXV hashtag since June, and Eminem was also spotted sporting the phrase on a t-shirt at his recent concerts.', 2, 16, 0, 2, NULL, '2014-08-27 02:26:55'),
(36, 'Intel Broadwell vs Haswell', 'What''s new in Intel CPUs?', 'Broadwell is the next generation of Intel Core CPUs. It will power most of the laptops and desktops we''ll see over the next 18 months, among other kinds of gadget. It''s not here yet, but many, many people are eager for its arrival. Including us.\r\nBroadwell is Intel''s fifth generation of Core-series processor, and will define the sort of power we''ll be able to get from our computers of the future.\r\nIt''s pretty important, but what''s new? We''re going to have a peek into Broadwell to see whether it''s worth holding off for, as the first Broadwell computers will start flying of shelves towards the end of the year.', 7, 19, 0, 2, NULL, '2014-08-27 02:28:48'),
(37, 'Game of Thrones author George R.R. Martin gives book status update', 'Game of Thrones author George R.R. Martin has been getting badgered', 'Patience among fans has been growing thin ever since Martin''s last release, 2011''s &quot;A Dance with Dragons,&quot; the fifth entry in the series.', 4, 18, 0, 2, NULL, '2014-08-27 02:32:19'),
(38, 'Useful new tricks of CSS 3?', 'Do you know any', 'Does anyone here make use of the new capabilities that CSS 3 offers? I know that I still haven''t moved on from CSS 2.1 standard, but its mainly because I don''t know enough about what can be accomplished with CSS 3. If you know of any good examples of CSS 3 in action, please share them! I''ve used some of the new pseudo-classes as progressive enhancement. For instance, to make zebra-striped tables,', 8, 19, 0, 2, NULL, '2014-08-27 02:34:12');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Схема на данните от таблица `replies`
--

INSERT INTO `replies` (`id`, `text`, `user_id`, `post_id`, `votes`, `date`) VALUES
(26, 'I wonder what the technical reason is behind being more stable, and is there a benchmark comparing the speed improvements? Honestly curious since despite these news and this version being on the horizon for quite some time in the dev and beta channels, I''ve never read much on this. I also wonder if this 64-bit version will consume even more RAM than the 32-bit version already does?', 17, 29, 0, '2014-08-27 02:10:28'),
(27, 'I don''t see no separate 64-bit link on the chrome download page.', 17, 29, 0, '2014-08-27 02:10:52'),
(28, 'Since I''m on v37 I got problems with HIDPI. Chrome looks terrible awful now (pixelated). HIDPI Scaling in compatible mode won''t work.. Arghhhh', 18, 29, 0, '2014-08-27 02:12:52'),
(29, 'This book is a short introduction to Java 8. After reading it, you should have a basic understanding of the new features and be ready to start using it.\r\n\r\nThis book assumes that you have a good understanding of Java the language and the JVM. If you&rsquo;re not familiar with the language, including features of Java 7, it might be hard to follow some of the examples.', 16, 30, 0, '2014-08-27 02:14:53'),
(30, 'In Java 8 a functional interface is defined as an interface with exactly one abstract method. This even applies to interfaces that were created with previous versions of Java.\r\n\r\nJava 8 comes with several new functional interfaces in the package, java.util.function.\r\n\r\nFunction&lt;T,R&gt; - takes an object of type T and returns R.\r\nSupplier&lt;T&gt; - just returns an object of type T.\r\nPredicate&lt;T&gt; - returns a boolean value based on input of type T.\r\nConsumer&lt;T&gt; - performs an action with given object of type T.\r\nBiFunction - like Function but with two parameters.\r\nBiConsumer - like Consumer but with two parameters.\r\nIt also comes with several corresponding interfaces for primitive types, such as:\r\n\r\nIntConsumer\r\nIntFunction\r\nIntPredicate\r\nIntSupplier', 17, 30, 0, '2014-08-27 02:15:16'),
(31, 'The K5200 ships with 12 SMXes (2304 CUDA cores) enabled and utilizes a 256-bit memory bus, making this the first NVIDIA GK110 product we&rsquo;ve seen ship without the full 384-bit memory bus. NVIDIA has put the GPU clockspeed at 650MHz while the memory clock stands at 6GHz. Meanwhile the card has the second largest memory capacity of the Quadro family, doubling K5000&rsquo;s 4GB of VRAM for a total of 8GB.\r\n\r\nCompared to the K5000, K5200 offers an increase in shader/compute throughput of 36%, and a smaller 11% increase in memory bandwidth. More significant however are GK110&rsquo;s general enhancements, which elevate K5200 beyond K5000. Whereas K5000 and its GK104 GPU made for a strong graphics card, it was a relatively weak compute card, a weakness that GK110 resolved. As a result K5200 should be similar to K6000 in that it&rsquo;s a well-balanced fit for mixed graphics/compute workloads, and the ECC memory support means that it offers an additional degree of reliability not found on the K5000.', 16, 31, 0, '2014-08-27 02:17:10'),
(32, 'NVIDIA&rsquo;s second new Quadro card is the K4200. Replacing the GK106 based K4000, the K4200 sees NVIDIA&rsquo;s venerable GK104 GPU find a new home as NVIDIA&rsquo;s third-tier Quadro card. Unlike K5200, K4200&rsquo;s GPU shift doesn&rsquo;t come with any kind of dramatic change in functionality, so while it will be an all-around more powerful card than the previous K4000, it&rsquo;s still going to be primarily geared towards graphics like the K4000 and K5000 before it.\r\n\r\nFor the K4200 NVIDIA is using a cut down version of GK104 to reach their performance and power targets. Comprised of 7 active SMXes (1344 CUDA cores), the K4200 is paired with 4GB of VRAM. Clockspeeds stand at 780MHz for the GPU and 5.4GHz for the VRAM.\r\n\r\nOn a relative basis the K4200 will see some of the greatest performance gains of this wave of refreshes. Its 2.1 TFLOPS of compute/shader performance blasts past K4000 by 75%, and memory bandwidth has been increased by 29%. However the 4GB of VRAM makes for a smaller increase in VRAM than the doubling most other Quadro cards are seeing. Otherwise power consumption is once again up slightly, rising from 80W to 105W in exchange for the more powerful GK104 GPU.', 17, 31, 0, '2014-08-27 02:17:30'),
(33, 'Typical work activities\r\nA graphic designer''s job may involve managing more than one design brief at a time and allocating the relevant amount of time according to the value of the job. Typical activities include:\r\n\r\nmeeting clients or account managers to discuss the business objectives and requirements of the job;\r\ninterpreting the client''s business needs and developing a concept to suit their purpose;\r\nestimating the time required to complete the work and providing quotes for clients;\r\ndeveloping design briefs by gathering information and data through research;\r\nthinking creatively to produce new ideas and concepts;\r\nusing innovation to redefine a design brief within the constraints of cost and time;\r\npresenting finalised ideas and concepts to clients or account managers;\r\nworking with a wide range of media, including photography and computer-aided design (CAD);\r\nproofreading to produce accurate and high-quality work;\r\ncontributing ideas and design artwork to the overall brief;\r\ndemonstrating illustrative skills with rough sketches;\r\nworking on layouts and artworking pages ready for print;\r\nkeeping abreast of emerging technologies in new media, particularly design programs such as InDesign, QuarkXPress, FreeHand, Illustrator, Photoshop, 3ds Max, Acrobat, Director, Dreamweaver and Flash;\r\ndeveloping interactive design;\r\ncommissioning illustrators and photographers;\r\nworking as part of a team with printers, copywriters, photographers, stylists, illustrators, other designers, account executives, web developers and marketing specialists.', 17, 32, 0, '2014-08-27 02:19:04'),
(34, 'Whether they''re self-employed, working freelance or employed within a business, graphic designers often have to be proactive in presenting or ''pitching'' their ideas and designs to the agency director and/or prospective clients.', 18, 32, 0, '2014-08-27 02:19:25'),
(35, 'A first edition of Karl Marx''s Das Kapitalhas sold for $40,000. Do with that what you will, commodity fetishists.\r\nLeslie Jamison, who says in her book The Empathy Exams that she doesn''t believe in &quot;a finite economy of empathy,&quot; writes about unexpectedly discovering the limits of her empathy. She says: &quot;At a certain point I stopped responding to [letters from readers]. I didn''t respond to the one who wrote to me drunk, the one who wrote to me after her relationship had ended, to the man in the shelter or the man in the retirement home. An abiding sense of guilt and hypocrisy began to fester: I was peddling empathy everywhere, and getting so much from it &mdash; absorbing the affirmation of every charged emotional response to what I''d written. I''d made everyone feel, and now I was ignoring those feelings. I was empathetic in the abstract and stingy everywhere else.&quot;\r\nThe Millions has released its stellar biannual books preview &mdash; a list of 84 of the most exciting books coming out in the second half of 2014, including new works from Haruki Murakami, Hilary Mantel and Margaret Atwood.', 16, 33, 0, '2014-08-27 02:21:03'),
(36, 'For Slate, Katie Roiphe asks what would have happened if My Struggle by Karl Ove Knausgaard were written by a woman: &quot;I don''t think we would be able to tolerate, let alone celebrate, this sort of domestic diarylike profusion from a woman. ... The particular variety of rage aimed at women who document their daily lives, especially if they don''t involve a childhood of poverty or abuse or illness, is deeply entrenched and irrational. It''s not just that we don''t think of what they are doing as art, but that it annoys us, riles us. It feels presumptuous, vain, narrow, feminine, clich&eacute;d. It is not chic the way Knausgaard''s stormy ruminations on the minor oppressions of family life are chic.&quot;', 17, 33, 0, '2014-08-27 02:21:16'),
(37, 'Tell me about the engine...\r\n\r\nThe good news is that Lamborghini has stuck to its roots in the engine department. In a supercar world increasingly turning to forced induction for performance, the Huracan is powered by a naturally aspirated 5.2-litre V10, which delivers 602bhp to all four wheels through that new double-clutcher.\r\n\r\nAll of which means the Huracan will smash 0-62mph in 3.2sec, hit 124mph in 9.9sec, and reach a v-max of &lsquo;over 200mph&rsquo;, while drowning the surrounding countryside beneath one of the most iconic engine noises of the modern age, utterly unadulterated by forced induction. Good news.\r\n\r\nOther good news comes in the form of the Huracan&rsquo;s torque curve, with no less than 75 per cent of the V10''s 413lb ft available from just 1000rpm. Proof, if you needed it, that you can have low-end torque without turbos. A dry weight of 1422kg sees the Huracan deliver a power to weight of 423bhp per tonne, well north of the 458&rsquo;s 378bhp per tonne and just a fraction behind the 12C.', 18, 34, 0, '2014-08-27 02:23:42'),
(38, 'Doesn&rsquo;t it look a bit&hellip; sensible?\r\n\r\nTruth is, Lamborghini has been the victim of its own success in the design department. During more than a decade in production, the Gallardo spawned some 40 different iterations, sprouting ever more aggressive wing packs as it aged.\r\n\r\nThrow in the motor-show headline acts that are the Veneno, Aventador J and the Sesto Elemento, and the design of the &lsquo;base&rsquo; Huracan was always in danger of looking a trifle safe.\r\n\r\nBut surely it&rsquo;s the Aventador&rsquo;s job to be the shock and awe of the supercar world, a job it does mighty well? The Huracan must appeal to a broader church, and while initial pictures may not have had the hairs on the back of your neck standing up, in the flesh it&rsquo;s far finer: subtle yet striking. But be in no doubt though: this is merely the start of a genus of derivatives that will mutate in ever more aggressive directions.', 17, 34, 0, '2014-08-27 02:24:07'),
(39, 'What''s it like on the inside?\r\n\r\nAs you drop into the driver''s seat you''re met a familiar, effective origami of aggressive lines. The Audi underpinnings might have robbed Lamborghini of a little Italian originality, but this interior exudes a quality that used to be a distant dream for Sant&rsquo;Agata.\r\n\r\nThere''s a new full-TFT screen (shared with the Audi TT, but with Lamborghini''s own bespoke graphics) that you can configure to major on the rev counter, speedo or nav. Very clever.\r\n\r\nThe interior is surprisingly button-light, with most key functions including indicators and wipers now nestled on the steering wheel, like the 458. At the bottom of the wheel lurks a button Lamborghini describes as &lsquo;Anima&rsquo;. This translates as &lsquo;soul&rsquo; and features three settings: Strada, Sport and Corsa. \r\n\r\nThese alter the parameters of the magnetorheological dampers, steering and traction settings, with Strada and Sport modes also making the V10 pop and bang hilariously on the over-run. Nice.\r\n\r\nVisibility through the rear-view mirror is virtually non-existent, but can be improved by optioning the glass rear deck. This not only improves your view, but far more importantly puts the V10 on full display. \r\n\r\nDriving a Lamborghini should feel like an event, and the start procedure for the Huracan is pure supercar theatre. Slam the door, flick the red &lsquo;missile arm&rsquo; toggle forwards to reveal the pulsating start/stop button, press and you send the V10 barking to life. All is well in the world.\r\n\r\nSo how does it drive?\r\n\r\nOur first shot in the Huracan is at the Ascari track under the baking glare of the Spanish sun. I''m led out by a Lamborghini test drivers in a lime green Aventador Roadster. After a sighting lap the pace builds, and as I uncoil the Huracan, two things become immediately clear. First, that the Huracan has traded in none of the Gallardo&rsquo;s trademark Lamborghini DNA. The V10 is a fabulous accompaniment to proceedings and the perfect advert for the purity of a naturally aspirated engine, snarling its way to the 8500rpm with relish. \r\n\r\nSecondly, the Huracan has a suppleness to its suspension that distinguishes it from the opposition. As the laps accumulate and the speed builds, it&rsquo;s a suppleness that inspires real confidence, helping TG to stay pinned to the back of that Aventador in all but Ascari&rsquo;s longest straight. This is a seriously rapid car.\r\n\r\nThe instant response of the new gearbox is fabulous, and a quantum leap forwards from the Gallardo&rsquo;s thunky transmission. As are the stability systems, which Lambo says utilise the same technology that keeps complex fighter jets aloft, a fiendish combination of three accelerometers and three gyros. Well, if it''s good enough for the EuroFighter...\r\n\r\nConfident in the fact that there''s a 4WD safety net in place, it&rsquo;s easy to dig into the Huracan&rsquo;s chassis capabilities. Dive into a corner too deep and initially the front end will wash wide, but counter that on the throttle and the nose nips back into line as the four-wheel drive system juggles torque between front and rear, dragging you out of the bend and down to the next braking zone. The carbon ceramic brakes are fabulously strong, too, hauling the Huracan down from triple-figure speeds time and time again without fading. \r\n\r\nThe car we drove featured Lamborghini&rsquo;s new active electric steering, which varies in rate depending upon &lsquo;Anima&rsquo; setting, and can make minor adjustments to steering angle at the limit if necessary. Thankfully the active element is unobtrusive, and for 99 per cent of the time, 99 per cent of Huracan owners will merely be aware of a nicely weighted lightness to the steering in all types of driving.\r\n\r\nAfter four track sessions it''s clear the Huracan is a huge leap forward from its predecessor. This is a car that positively encourages you investigate the depths of its talents, and flatters you throughout the process. It''s a car that knows its audience: those who want a car with huge potential, but enough of a buffer to encourage them closer to the limit.', 19, 34, 0, '2014-08-27 02:25:57'),
(40, 'Most fans assume that Shady XV is not a new studio album. Eminem released his last full-length, The Marshall Mathers LP 2, less than a year ago; this would be an uncharacteristically swift follow-up for the rapper. Instead, Shady XV is most likely a nod to Shady Records&rsquo; 15th anniversary. Although Eminem has released his own greatest hits anthology, Shady has only ever issued one compilation, 2006&rsquo;s The Re-Up. Like Young Money&rsquo;s Rise of an Empire or Good Music&rsquo;s Cruel Summer, Shady XV could be Shady Records&rsquo; bid to promote its roster acts, such as Yelawolf and Slaughterhouse.', 18, 35, 0, '2014-08-27 02:27:30'),
(41, 'Shady has only ever issued one compilation, 2006&rsquo;s The Re-Up. Like Young Money&rsquo;s Rise of an Empire or Good Music&rsquo;s Cruel Summer, Shady XV could be Shady Records&rsquo; bid to promote its roster acts, such as Yelawolf and Slaughterhouse.\r\n\r\nThis new record might also be his way of saluting The Slim Shady LP, which turned 15 in February. At home and in the UK, the 41-year-old&rsquo;s last six albums have all gone straight to No 1.', 19, 35, 0, '2014-08-27 02:27:45'),
(42, 'ntel goes Innerspace\r\n\r\nSo, how much smaller will Broadwell be? The architecture shrinking process isn''t about getting the actual chips smaller, but the transistors that make up the CPU''s brain.\r\nIntel Haswell uses 22 nanometer transistors, Broadwell''s transistors will be 14nm. Back in 2006, the first Core processors had whopping great big 65nm ones. We''ve made a lot of progress in those eight years.\r\nIf you''re wondering how big a nanometer is, a normal human hair is about 90,000 nanometers thick. These transistors are incredibly tiny, even the old ones. They are the switches that work together to perform the incredibly complex functions a processor has to deal with, and there are more than a billion of them in a modern CPU.\r\nWhy is slim in?\r\n\r\nThe big claim about Broadwell is that its chips will be 30% more efficient than Haswell''s ones, using 30% less power while providing slightly better performance at the same clock speed. Everyone''s a winner.\r\nHaswell already made huge improvements to efficiency compared with the previous generation, Ivy Bridge, resulting in a huge upsurge in the battery life of Windows laptops last year. Looking at what Haswell did when it arrived in 2013 tells us what we can expect in Broadwell.', 18, 36, 0, '2014-08-27 02:29:05'),
(43, 'For an example, the 2012 13-inch MacBook Air was rated by Apple for seven hours of battery life when web browsing. It used the Ivy Bridge generation of Intel chip, one step behind the current Haswell models.\r\nToday''s Haswell 13-inch MacBook Airs last up to 12 hours. That''s an extra five hours of stamina, and a lot of that was down to Haswell. With the upgrades of Broadwell in tow, we could be looking at laptops that last for more than 15 hours. Finally, we''ll have laptops that can outlast current tablets.\r\nWhy Broadwell will start a whole new revolution\r\n\r\nPure battery life is not the most important part of why Broadwell really matters, though. Having better efficiency will enable a laptop screen revolution.\r\nIn the last few years, laptops have lagged way behind phones and tablets in terms of screen technology. If you have a good phone and a mid-range laptop, there''s a good chance your phone''s screen will have more pixels than your laptop''s.\r\nIt''s a bit mad when you stop and think about it.\r\nGreater efficiency will allow laptops without giant batteries to use higher-res screens without a deal-breaking battery life hit. We won''t see ultra-high res &pound;300 laptops just yet, but this is the first step to affordable laptops whose screens aren''t as blocky as Minecraft.', 17, 36, 0, '2014-08-27 02:29:23'),
(44, 'Patience among fans has been growing thin ever since Martin''s last release, 2011''s &quot;A Dance with Dragons,&quot; the fifth entry in the series.\r\n\r\n&quot;I''m still writing the books,&quot; Martin told CBS News at the season 4 New York premiere of the mega-hit HBO series based on his novels. In addition to &quot;The Winds of Winter,&quot; a seventh installment in the series, &quot;A Dream of Spring,&quot; is also in the works.\r\n\r\nMartin recently told Sky News that &quot;The Winds of Winter&quot; will be released &quot;when it''s ready.&quot;', 17, 37, 0, '2014-08-27 02:32:38'),
(45, 'I really stopped looking at the websites,&quot; Martin said, &quot;I don''t want to know what they have figured out and what they haven''t figured out. Let them have the discussions and debates amongst themselves. I''m very gratified that so much discussion is taking place, but I''m not going to let that influence how I write the books...I''m going to write the books the way I want to write the books and let the chips fall where they may.&quot;\r\n\r\nFans have been left wondering if Martin''s books will be able to stay ahead of the timeline of the TV show, but the author has said that viewers should never expect the two works to align exactly.', 19, 37, 0, '2014-08-27 02:32:57'),
(46, 'I''d recommend you check out our CSS3 Preview section which demonstrates many live examples of CSS3 features.\r\n\r\nPersonally, one of my favourite new features comes from the CSS3 Basic UI module; the box-sizing property utilises a far more useful box model, compared to the current CSS 2.1 version. Support for this property is also very widespread now; Opera (without a prefix), Firefox (with the ''-ms-'' prefix), Safari (with the ''-webkit'' prefix), and IE8 (without a prefix) all support it.', 17, 38, 0, '2014-08-27 02:34:27'),
(47, 't will certainly be a great day when CSS 3 finally becomes a standard and browsers can support it in the knowledge that it isn''t going to change any more leaving them with code that doesn''t follow the standards (as happened to Microsoft when they started implementing the earlier CSS standards before they were finalised).', 18, 38, 0, '2014-08-27 02:34:44');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Схема на данните от таблица `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `gender_id`, `salt`, `session_key`, `isAdmin`) VALUES
(8, 'gardax', 'gardax95@gmail.com', 'Georgi', 'Georgiev', 'd13ce3e2ffad97e5cb37a7f95472ac0a0f22f376', 1, 's1jnq6lbskgkc8s4s0ckkcwkgo8kk0c', '82aeCplHI2h0PsFn65k6Vs4uCwWgGXyOIMkVPdizB5CKiu2Taqb', 0),
(12, 'divoom12', 'divoom12@abv.bg', 'Yavor', 'Ivanov', 'caf8ef81c530bbe32726475e8ea2736d5bf1ae57', 3, 'qsbg0hpc62o48k4sc8cokckgccw0s8g', NULL, 0),
(13, 'fasdfsafa', '3dfsafas@dsa.com', 'dsada', 'dsadas', '1d70a01b961bcf5eb9635a8713c7a57a1f0cd9fa', 1, 'rd38ftwgckgg448ow0w8wo8coc8w0gw', NULL, 0),
(14, 'admin-', 'admin@gmail.com', 'Admin', 'Admin', 'ce31215085c15d3657cbd9a837118d841b1b3b7f', 3, 'hlq6msfv6144cc8oc4408ksgg840kso', NULL, 0),
(15, 'Icaka', 'icaka@abv.bg', 'Icaka', 'Icaka', 'b5d4716b837b43ad7b6831cdf1eec814acc945f2', 3, 'sxa4h60fbqs8ckk8g80kos848gs04kw', '15OHYrptY277lzLA1g6lgbV7ah7x4S3UzpuSgJl3ypD0EtMXISnM', 1),
(16, 'yavor', 'davko996@gmail.com', 'Yavor', 'Ivanov', 'fe29060bcddb9a2ae06ee1e61b2fbc333bc35002', 1, 'fygnyogmbpk4sccs0scksgk8w00g800', '16BeBKQANYVRx9O4eSY9fJyFj47U3ZvSM9uEre0QIQh8rKwvIgDv', 1),
(17, 'georgi', 'go6o@abv.bg', 'Georgi', 'Georgiev', '6aff820b2e25f564e871f159c38e1d6431e5dc92', 1, 'bq635l42j5cs84gww8o8skwoowgscw0', '17jDHTcrUiD5TT5bdBKclpZtEsrbsJpT3ZXkaeb8p06pcceaJwKa', 0),
(18, 'petur', 'petur@pe6o.bg', 'Petur', 'Marinov', 'b541779b8f67bb780b07648cb1253ae153c5b365', 3, 'kl2k3ziehm8o0cwoosc0kwo088c0cs8', '18eVgG8Gco3eTlj7KM2emKIivrMGMgZnB1lFyaI7pc0MMoFRdOqK', 0),
(19, 'kristina', 'krisi@abv.bg', 'Kristina', 'Ivanova', 'a50da9ed614da9d138f657b02e1f70824f384a49', 2, 'hdtymzlho2okk8sw84occowccowo04w', '19G59UK60uRAl3gUFsdnpqQJLwcj7dJI0s7jMA6E1RtWKBYp7Mgs', 0);

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
