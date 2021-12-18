-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 18, 2021 at 07:41 AM
-- Server version: 5.7.36
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rmcgems_rmc`
--

-- --------------------------------------------------------

--
-- Table structure for table `activation_history`
--

CREATE TABLE `activation_history` (
  `id` int(11) NOT NULL,
  `suser` varchar(255) NOT NULL,
  `ruser` varchar(255) NOT NULL,
  `amount` float NOT NULL,
  `date_time` datetime NOT NULL,
  `package` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `coin_rate` float NOT NULL,
  `sms` int(11) NOT NULL,
  `coin_cell_rate` float NOT NULL,
  `daytrade` date DEFAULT NULL,
  `fixtrade` date DEFAULT NULL,
  `speed_trade` date DEFAULT NULL,
  `bg_img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `coin_rate`, `sms`, `coin_cell_rate`, `daytrade`, `fixtrade`, `speed_trade`, `bg_img`) VALUES
(1, 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 9, 238, 9, '2021-03-07', '2021-03-07', '2021-03-07', '0.02939575');

-- --------------------------------------------------------

--
-- Table structure for table `admin_add`
--

CREATE TABLE `admin_add` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `amount` float NOT NULL,
  `type` varchar(50) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_noti`
--

CREATE TABLE `admin_noti` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `apis`
--

CREATE TABLE `apis` (
  `id` int(11) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `transaction_pass` varchar(255) DEFAULT NULL,
  `dispute_email` varchar(255) DEFAULT NULL,
  `timestamps` bigint(20) DEFAULT NULL,
  `api_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apis`
--

INSERT INTO `apis` (`id`, `token`, `user_id`, `password`, `transaction_pass`, `dispute_email`, `timestamps`, `api_name`, `status`, `balance`) VALUES
(1, '40717e12df5c0af3d2c48f2aef2276eda1b0cb67d11dde2312207dc51992c431', '29', '', '', NULL, 1536240451, 'JPRWEBS', 1, 0),
(2, '23ae021f-c559-4ceb-a164-3cdd0e671d27', '29', '', '', NULL, 1536240451, 'STC Recharge', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `awards_sections`
--

CREATE TABLE `awards_sections` (
  `id` int(11) NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `awards_sections`
--

INSERT INTO `awards_sections` (`id`, `banner_image`, `created`) VALUES
(1, '1637058173741CB.jpg', '2021-11-16 02:22:53');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image`) VALUES
(3, '1636986486BGDCK.jpg'),
(4, '16369864924CJKE.jpg'),
(5, '16369864984G81E.jpg'),
(6, '1636986506J2AC1.jpg'),
(7, '16369865104253B.jpg'),
(8, '163698651443B9I.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `company_sections`
--

CREATE TABLE `company_sections` (
  `id` int(11) NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `below_content` longtext NOT NULL,
  `second_section_content` longtext NOT NULL,
  `second_section_image` varchar(255) NOT NULL,
  `third_section_image` varchar(255) NOT NULL,
  `third_section_content` longtext NOT NULL,
  `fourth_section_image` varchar(255) NOT NULL,
  `fourth_section_content` longtext NOT NULL,
  `fifth_section_image` varchar(255) NOT NULL,
  `fifth_section_content` longtext NOT NULL,
  `sixth_section_image` varchar(255) NOT NULL,
  `sixth_section_content` longtext NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company_sections`
--

INSERT INTO `company_sections` (`id`, `banner_image`, `below_content`, `second_section_content`, `second_section_image`, `third_section_image`, `third_section_content`, `fourth_section_image`, `fourth_section_content`, `fifth_section_image`, `fifth_section_content`, `sixth_section_image`, `sixth_section_content`, `created`) VALUES
(1, '16369674836AADD.jpg', ' &lt;h3&gt;Who Are We&lt;/h3&gt;\r\n                            &lt;p&gt;In the world of coloured gemstones, RMC has emerged as a premier brand globally. RMC is known worldwide for providing perfectly cut faceted and exquisite selection of eye-catching gemstones at great value, especially in Blue Topaz, Tourmaline (Paraiba, Indogolite, and Rubellite), Tanzanite, Aquamarine, Morganite, Amethyst, Citrine, and all coloured gemstones.&lt;/p&gt;\r\n            \r\n                            &lt;p&gt;Today, RMC is one of the largest producers of coloured gemstones in India. Further, the company is one of the first in coloured gemstone trade to have the ISO 9001, ISO 14001, and ISO 18001 certification. The company is also a holder of the status – “Star Export House”. &lt;/p&gt;\r\n            \r\n                            &lt;p&gt;One of the major strengths that RMC developed over the years owing to its strong focus on producing high quality gem stones. The company has the large and loyal domestic and global customer base, which is ever growing. The great quality of its \r\n                products coupled with its smart customer service has helped the company create a strong global footprint for RMC. Currently, the company exports its wide array of gems and jewellery regularly to all the major countries such as the USA, China, Japan, Hong Kong, and Thailand. &lt;/p&gt;\r\n                            \r\n                            &lt;h3&gt;Company Milestones&lt;/h3&gt;\r\n                            &lt;ul&gt;\r\n                                &lt;li&gt;&lt;i class=&quot;fa fa-hand-o-right&quot; aria-hidden=&quot;true&quot;&gt;&lt;/i&gt; Mr. Nirmal Bardiya, Managing Director, RMC has been honoured with “Gem Dealer of the Decade” award by Indian Diamond and Colour Stone Association (IDCA), USA in 2010&lt;/li&gt;\r\n                                &lt;li&gt;&lt;i class=&quot;fa fa-hand-o-right&quot; aria-hidden=&quot;true&quot;&gt;&lt;/i&gt; RMC received “Highest Export Awards” for its colour stones by the Gem &amp;amp; Jewellery Export Promotion Council (GJEPC), India for the 2010-11, 2011-12, and 2012-13.&lt;/li&gt;\r\n                                &lt;li&gt;&lt;i class=&quot;fa fa-hand-o-right&quot; aria-hidden=&quot;true&quot;&gt;&lt;/i&gt; RMC is certified “Star Export House” by Director General of Foreign Trade, government of India&lt;/li&gt;\r\n                                &lt;li&gt;&lt;i class=&quot;fa fa-hand-o-right&quot; aria-hidden=&quot;true&quot;&gt;&lt;/i&gt; RMC is “SA-8000” certified for its outstanding social accountability and good HR practices&lt;/li&gt;\r\n                            &lt;/ul&gt;', '&lt;h3&gt;Gem Dealer of the Decade Award&lt;/h3&gt;\r\n\r\n&lt;p&gt;Customers and clients can leverage many mutual synergies and benefits through associating with RMC. Highly skilled team members at RMC use state-of-the-art technology and equipment to produce world class range of gems and jewellery.&lt;/p&gt;\r\n', '16370634128JC42.jpg', '163706354271I6I.jpg', '&lt;h3&gt;Highest Export Award (2010-11)&lt;/h3&gt;\r\n\r\n&lt;p&gt;Customers and clients can leverage many mutual synergies and benefits through associating with RMC. Highly skilled team members at RMC use state-of-the-art technology and equipment to produce world class range of gems and jewellery.&lt;/p&gt;\r\n', '16370636927BFA2.jpg', '&lt;h3&gt;Highest Export Award (2011-12)&lt;/h3&gt;\r\n\r\n&lt;p&gt;Customers and clients can leverage many mutual synergies and benefits through associating with RMC. Highly skilled team members at RMC use state-of-the-art technology and equipment to produce world class range of gems and jewellery.&lt;/p&gt;\r\n', '', '', '', '', '2021-11-15 08:41:38');

-- --------------------------------------------------------

--
-- Table structure for table `contact_queries`
--

CREATE TABLE `contact_queries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_queries`
--

INSERT INTO `contact_queries` (`id`, `name`, `email`, `contact`, `subject`, `message`, `created`) VALUES
(1, 'raviCH', 'ravichordiya39@gmail.com', '7877791438', 'Regular ', 'Hello', '2021-11-15 06:39:00'),
(2, 'name1', 'email@email.com', 'phoe1', 'subje1', 'mesgskdjflkasdjlkf asjd;lkfj lasd asf', '2021-11-16 04:57:03'),
(3, 'AnthonyHom', 'no.reply.feedbackform@gmail.com', 'no.reply.feedbackform@gmail.com', 'Do you want cheap and innovative advertising for little money?', 'HÐµllÐ¾!  rmcgems.in \r\n \r\nDid yÐ¾u knÐ¾w thÐ°t it is pÐ¾ssiblÐµ tÐ¾ sÐµnd Ð°ppÐµÐ°l ÑÐ¾mplÐµtÐµly lÐµgÐ°l? \r\nWÐµ prÐ¾pÐ¾sÐµ Ð° nÐµw wÐ°y Ð¾f sÐµnding mÐµssÐ°gÐµ thrÐ¾ugh fÐµÐµdbÐ°Ñk fÐ¾rms. SuÑh fÐ¾rms Ð°rÐµ lÐ¾ÑÐ°tÐµd Ð¾n mÐ°ny sitÐµs. \r\nWhÐµn suÑh lÐµttÐµrs Ð°rÐµ sÐµnt, nÐ¾ pÐµrsÐ¾nÐ°l dÐ°tÐ° is usÐµd, Ð°nd mÐµssÐ°gÐµs Ð°rÐµ sÐµnt tÐ¾ fÐ¾rms spÐµÑifiÑÐ°lly dÐµsignÐµd tÐ¾ rÐµÑÐµivÐµ mÐµssÐ°gÐµs Ð°nd Ð°ppÐµÐ°ls. \r\nÐ°lsÐ¾, mÐµssÐ°gÐµs sÐµnt thrÐ¾ugh ÑÐ¾ntÐ°Ñt FÐ¾rms dÐ¾ nÐ¾t gÐµt intÐ¾ spÐ°m bÐµÑÐ°usÐµ suÑh mÐµssÐ°gÐµs Ð°rÐµ ÑÐ¾nsidÐµrÐµd impÐ¾rtÐ°nt. \r\nWÐµ Ð¾ffÐµr yÐ¾u tÐ¾ tÐµst Ð¾ur sÐµrviÑÐµ fÐ¾r frÐµÐµ. WÐµ will sÐµnd up tÐ¾ 50,000 mÐµssÐ°gÐµs fÐ¾r yÐ¾u. \r\nThÐµ ÑÐ¾st Ð¾f sÐµnding Ð¾nÐµ milliÐ¾n mÐµssÐ°gÐµs is 49 USD. \r\n \r\nThis Ð¾ffÐµr is ÑrÐµÐ°tÐµd Ð°utÐ¾mÐ°tiÑÐ°lly. PlÐµÐ°sÐµ usÐµ thÐµ ÑÐ¾ntÐ°Ñt dÐµtÐ°ils bÐµlÐ¾w tÐ¾ ÑÐ¾ntÐ°Ñt us. \r\n \r\nContact us. \r\nTelegram - @FeedbackMessages \r\nSkype  live:contactform_18 \r\nWhatsApp - +375259112693 \r\nWe only use chat.', '2021-11-21 09:06:04'),
(4, 'Im Alison. My sexy photo here https://dacoculew.page.link/JHN9HHmyt1ozZjSA8#photo_id653198', 'Tuanngo041291@gmail.com', 'Tuanngo041291@gmail.com', 'Im Catherine. My sexy photo here https://zuqegubu.page.link/6NoXof8PN9jG2Yk79#photo_id523375', 'Im Carla. My sexy photo here https://symupaxo.page.link/UCxDCjXTJ2kanUXLA#photo_id874734', '2021-12-12 02:57:39'),
(5, 'Donald Cole', 'lanj7962@gmail.com', 'lanj7962@gmail.com', 'Partnership', 'Good day \r\n \r\nI contacted you some days back seeking your cooperation in a matter regarding funds worth $24 Million, I urge you to get back to me through this email coledd11@cloedcolela.com if you\'re still interested. \r\n \r\nI await your response. \r\n \r\nThanks, \r\n \r\nDonald Cole', '2021-12-13 18:46:35'),
(6, 'Mike Bradberry\r\n', 'no-replyvubap@gmail.com', 'no-replyvubap@gmail.com', 'DA60+ for rmcgems.in with -35%', 'Good Day \r\n \r\nDo you want a quick boost in ranks and sales for your website? \r\nHaving a high DA score, always helps \r\n \r\nApply this -35% code ( MEGAPROMOTER ) while getting your rmcgems.in to have a DA above 60 points in Moz with us today and reap the benefits of such a great feat at an affordable rate. \r\n \r\n \r\n \r\nSee our offers here: \r\nhttps://www.strictlydigital.net/product/moz-da50-seo-plan/ \r\nhttps://www.strictlydigital.net/product/moz-da60-seo-plan/ \r\n \r\nNEW: ahrefs DR70 is now possible: \r\nhttps://www.strictlydigital.net/product/ahrefs-seo-plan/ \r\n \r\n \r\nThank you \r\nMike Bradberry\r\n \r\nmike@strictlydigital.net', '2021-12-14 19:22:03'),
(7, 'Im Agatha. My sexy photo here https://tydaveqen.page.link/CVMGvc75fJK431xq5#photo_id896998', 'ltphat19@gmail.com', 'ltphat19@gmail.com', 'Im Laura. My sexy photo here https://fuxagydym.page.link/BJgKXX6qYTbsG2z1A#photo_id256791', 'Im Carla. My sexy photo here https://siguco.page.link/bNohot27WP88Wg896#photo_id981161', '2021-12-15 16:41:22'),
(8, 'Im Agatha. My sexy photo here https://tydaveqen.page.link/CVMGvc75fJK431xq5#photo_id896998', 'ltphat19@gmail.com', 'ltphat19@gmail.com', 'Im Laura. My sexy photo here https://fuxagydym.page.link/BJgKXX6qYTbsG2z1A#photo_id256791', 'Im Carla. My sexy photo here https://siguco.page.link/bNohot27WP88Wg896#photo_id981161', '2021-12-15 16:41:23'),
(9, 'Im Agatha. My sexy photo here https://tydaveqen.page.link/CVMGvc75fJK431xq5#photo_id896998', 'ltphat19@gmail.com', 'ltphat19@gmail.com', 'Im Laura. My sexy photo here https://fuxagydym.page.link/BJgKXX6qYTbsG2z1A#photo_id256791', 'Im Carla. My sexy photo here https://siguco.page.link/bNohot27WP88Wg896#photo_id981161', '2021-12-15 16:41:24'),
(10, 'Im Agatha. My sexy photo here https://tydaveqen.page.link/CVMGvc75fJK431xq5#photo_id896998', 'ltphat19@gmail.com', 'ltphat19@gmail.com', 'Im Laura. My sexy photo here https://fuxagydym.page.link/BJgKXX6qYTbsG2z1A#photo_id256791', 'Im Carla. My sexy photo here https://siguco.page.link/bNohot27WP88Wg896#photo_id981161', '2021-12-15 16:41:25'),
(11, 'Im Agatha. My sexy photo here https://tydaveqen.page.link/CVMGvc75fJK431xq5#photo_id896998', 'ltphat19@gmail.com', 'ltphat19@gmail.com', 'Im Laura. My sexy photo here https://fuxagydym.page.link/BJgKXX6qYTbsG2z1A#photo_id256791', 'Im Carla. My sexy photo here https://siguco.page.link/bNohot27WP88Wg896#photo_id981161', '2021-12-15 16:41:27'),
(12, 'Im Denise. My sexy photo here https://qulofih.page.link/VYnCngfhq9YmV13d8#photo_id485327', 'floranacatou291@ipal.com', 'floranacatou291@ipal.com', 'Im Wendy. My sexy photo here https://semyjaf.page.link/frMYTedNnv15qKg99#photo_id938443', 'Im Norma. My sexy photo here https://zisepip.page.link/De1hWLd79CpSt2as9#photo_id671491', '2021-12-17 15:38:42'),
(13, 'Im Denise. My sexy photo here https://qulofih.page.link/VYnCngfhq9YmV13d8#photo_id485327', 'floranacatou291@ipal.com', 'floranacatou291@ipal.com', 'Im Wendy. My sexy photo here https://semyjaf.page.link/frMYTedNnv15qKg99#photo_id938443', 'Im Norma. My sexy photo here https://zisepip.page.link/De1hWLd79CpSt2as9#photo_id671491', '2021-12-17 15:38:44'),
(14, 'Im Denise. My sexy photo here https://qulofih.page.link/VYnCngfhq9YmV13d8#photo_id485327', 'floranacatou291@ipal.com', 'floranacatou291@ipal.com', 'Im Wendy. My sexy photo here https://semyjaf.page.link/frMYTedNnv15qKg99#photo_id938443', 'Im Norma. My sexy photo here https://zisepip.page.link/De1hWLd79CpSt2as9#photo_id671491', '2021-12-17 15:38:45'),
(15, 'Im Denise. My sexy photo here https://qulofih.page.link/VYnCngfhq9YmV13d8#photo_id485327', 'floranacatou291@ipal.com', 'floranacatou291@ipal.com', 'Im Wendy. My sexy photo here https://semyjaf.page.link/frMYTedNnv15qKg99#photo_id938443', 'Im Norma. My sexy photo here https://zisepip.page.link/De1hWLd79CpSt2as9#photo_id671491', '2021-12-17 15:38:46'),
(16, 'Im Denise. My sexy photo here https://qulofih.page.link/VYnCngfhq9YmV13d8#photo_id485327', 'floranacatou291@ipal.com', 'floranacatou291@ipal.com', 'Im Wendy. My sexy photo here https://semyjaf.page.link/frMYTedNnv15qKg99#photo_id938443', 'Im Norma. My sexy photo here https://zisepip.page.link/De1hWLd79CpSt2as9#photo_id671491', '2021-12-17 15:38:47');

-- --------------------------------------------------------

--
-- Table structure for table `contact_sections`
--

CREATE TABLE `contact_sections` (
  `id` int(11) NOT NULL,
  `contact_form` longtext NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_sections`
--

INSERT INTO `contact_sections` (`id`, `contact_form`, `created`) VALUES
(1, ' &lt;div class=&quot;col-md-6 col-sm-6&quot;&gt;\r\n                    &lt;h2 class=&quot;font-weight-bold&quot;&gt;Contact Us&lt;/h2&gt;\r\n                    &lt;p class=&quot;heading-subtitle&quot;&gt;Do you have any questions? Please do not hesitate to contact us directly. Our team will come back to you within a matter of hours to help you.&lt;/p&gt;\r\n					&lt;form method=&quot;post&quot;&gt;\r\n                      &lt;div class=&quot;row&quot;&gt;\r\n						\r\n                        &lt;div class=&quot;col-md-6 col-sm-6 form-group&quot;&gt;\r\n                            &lt;label for=&quot;name&quot; class=&quot;&quot;&gt;Your name&lt;/label&gt;\r\n                            &lt;input type=&quot;text&quot; id=&quot;name&quot; name=&quot;name&quot; class=&quot;form-control&quot;&gt;\r\n                        &lt;/div&gt;\r\n\r\n                        &lt;div class=&quot;col-md-6 col-sm-6 form-group&quot;&gt;\r\n                          &lt;label for=&quot;email&quot; class=&quot;&quot;&gt;Your email&lt;/label&gt;\r\n                           &lt;input type=&quot;text&quot; id=&quot;email&quot; name=&quot;email&quot; class=&quot;form-control&quot;&gt;\r\n                        &lt;/div&gt;\r\n\r\n                         &lt;div class=&quot;col-md-6 col-sm-6 form-group&quot;&gt;\r\n                           &lt;label for=&quot;subject&quot; class=&quot;&quot;&gt;Phone Number&lt;/label&gt;\r\n                           &lt;input type=&quot;text&quot; id=&quot;subject&quot; name=&quot;contact&quot; class=&quot;form-control&quot;&gt;\r\n                        &lt;/div&gt;\r\n\r\n                          &lt;div class=&quot;col-md-6 col-sm-6 form-group&quot;&gt;\r\n                           &lt;label for=&quot;subject&quot; class=&quot;&quot;&gt;Subject&lt;/label&gt;\r\n                           &lt;input type=&quot;text&quot; id=&quot;subject&quot; name=&quot;subject&quot; class=&quot;form-control&quot;&gt;\r\n                        &lt;/div&gt;\r\n\r\n                         &lt;div class=&quot;col-md-12 col-sm-12 form-group&quot;&gt;\r\n                          &lt;label for=&quot;message&quot;&gt;Your message&lt;/label&gt;\r\n                          &lt;textarea type=&quot;text&quot; id=&quot;message&quot; name=&quot;message&quot; rows=&quot;2&quot; class=&quot;form-control md-textarea&quot;&gt;&lt;/textarea&gt;\r\n                        &lt;/div&gt;\r\n                         &lt;div class=&quot;col-md-12 col-sm-12 form-group text-center&quot;&gt;\r\n                          &lt;input type=&quot;submit&quot; name=&quot;submit&quot; class=&quot;btn  btn-touch  &quot; value=&quot;Get In Touch&quot;&gt;\r\n                         &lt;/div&gt;\r\n						  \r\n                      &lt;/div&gt;\r\n						&lt;/form&gt;\r\n                  &lt;/div&gt;\r\n                &lt;div class=&quot;col-md-6 col-sm-6&quot;&gt;\r\n                    &lt;iframe src=&quot;https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3561.6291296474665!2d75.83386221436294!3d26.788089471894256!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x396dc9a6d2bde699%3A0x9cc8782e3d1dfa15!2sRMC%20Gems%20India%20Ltd!5e0!3m2!1sen!2sin!4v1636809670917!5m2!1sen!2sin&quot; style=&quot;border:0;&quot; allowfullscreen=&quot;&quot; loading=&quot;lazy&quot; width=&quot;600&quot; height=&quot;450&quot;&gt;&lt;/iframe&gt;    \r\n                &lt;/div&gt;                ', '2021-11-15 07:41:07');

-- --------------------------------------------------------

--
-- Table structure for table `csr_sections`
--

CREATE TABLE `csr_sections` (
  `id` int(11) NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `below_content` longtext NOT NULL,
  `second_section_content` longtext NOT NULL,
  `second_section_image` varchar(255) NOT NULL,
  `third_section_image` varchar(255) NOT NULL,
  `third_section_content` longtext NOT NULL,
  `fourth_section_image` varchar(255) NOT NULL,
  `fourth_section_content` longtext NOT NULL,
  `fifth_section_image` varchar(255) NOT NULL,
  `fifth_section_content` longtext NOT NULL,
  `sixth_section_image` varchar(255) NOT NULL,
  `sixth_section_content` longtext NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `csr_sections`
--

INSERT INTO `csr_sections` (`id`, `banner_image`, `below_content`, `second_section_content`, `second_section_image`, `third_section_image`, `third_section_content`, `fourth_section_image`, `fourth_section_content`, `fifth_section_image`, `fifth_section_content`, `sixth_section_image`, `sixth_section_content`, `created`) VALUES
(1, '16370649549H91D.jpg', '&lt;ol&gt;\r\n	&lt;li&gt;&lt;strong&gt;Brief out line CSR Policy of the Company&lt;/strong&gt;:&lt;/li&gt;\r\n&lt;/ol&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;The Company&amp;rsquo;s CSR programs are guided by Corporate Social Responsibility Policy (&amp;lsquo;CSR Policy&amp;rsquo;) duly approved by the Board in the Board Meeting dated 14/06/2017. The Company&amp;rsquo;s CSR Policy framework details the mechanisms for undertaking various programs in accordance with section 135 of the Companies Act, 2013 (the &amp;ldquo;Act&amp;rdquo;) read with Schedule VII to the Companies Act, 2013 and the Companies (Corporate Social Responsibility Policy) Rules, 2014 (&amp;ldquo;Rules&amp;rdquo;) for the benefit of the community.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;The Company is committed towards its works and its CSR policy by making a big and lasting difference, through sustainable measures, by actively contribute to the Social, Economic and Environmental development of the community in which we operate ensuring participation from the community and thereby create value for the nation.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;The Company has identified the following thrust areas around which the Company shall be focusing its CSR initiatives/programmes:&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;strong&gt;HEALTH CARE: &lt;/strong&gt;Promoting healthcare including preventive healthcare and sanitation, eradicating hunger, poverty and malnutrition and making available safe drinking water, providing financial support for healthcare, conducting health camps and providing consultation, medicines etc.&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;&lt;strong&gt;EDUCATION: &lt;/strong&gt;Promoting education, including special education and employment enhancing vocation skills especially among children, women, elderly, and the differently abled and livelihood enhancement projects, providing support at every stage of a child&amp;rsquo;s educational cycle including but not limited to developing infrastructure for schools/educational centers/ universities/hostels, scholarships including financial support to students for education, conducting education programs, skill development and vocational training, support to sports for development of students in both urban and rural settings, digital literacy initiatives and other holistic education initiatives for rural &amp;amp; urban youth.&lt;/li&gt;\r\n	&lt;li&gt;&lt;strong&gt;RURAL DEVELOPMENT&lt;/strong&gt;: Improving water conservation and rain-water harvesting, developing community infrastructure and strengthening rural areas by improving accessibility, education, healthcare, housing, street roads /lights, drinking water, sanitation, power and livelihoods, thereby creating sustainable villages.&lt;/li&gt;\r\n	&lt;li&gt;&lt;strong&gt;GENDER EQUALITY AND EMPOWERMENT OF WOMEN&lt;/strong&gt;: Promoting gender equality, empowering women, setting up homes and hostels for women and orphans; setting up old age homes, daycare centers and such other facilities for senior citizens and measures for reducing inequalities faced by socially and economically backward groups.&lt;/li&gt;\r\n	&lt;li&gt;&lt;strong&gt;ENVIRONMENTAL SUSTAINABILITY&lt;/strong&gt;: Ensuring environmental sustainability, ecological balance, protection of flora and fauna, animal welfare, agro-forestry, conservation of natural resources, maintaining quality of soil, air and water, tree plantation, promoting renewable energy and developing gardens.&lt;/li&gt;\r\n	&lt;li&gt;&lt;strong&gt;NATIONAL HERITAGE, ART AND CULTURE&lt;/strong&gt;: Protection of national heritage, art and culture including restoration of buildings and sites of historical importance and works of art; setting up public libraries; promotion and development of traditional arts and handicrafts and preserving &amp;amp; promoting music and sports.&lt;/li&gt;\r\n	&lt;li&gt;&lt;strong&gt;DISASTER RESPONSE&lt;/strong&gt;: Supporting disaster management, including relief, rehabilitation and reconstruction activities and provide relief and assistance to victims of disasters and calamities.&lt;/li&gt;\r\n	&lt;li&gt;&lt;strong&gt;CONTRIBUTION TO FUNDS: &lt;/strong&gt;Contribution to various funds, projects, universities, bodies, departments, etc. as specified in Schedule VII of the Companies Act, 2013.&lt;/li&gt;\r\n	&lt;li&gt;&lt;strong&gt;OTHER INITIATIVES:&amp;nbsp; &lt;/strong&gt;To undertake other need based initiatives in compliance with Schedule VII of the Companies Act, 2013 and amendments thereto from time to time&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '&lt;h3&gt;Supply Chain Policy&lt;/h3&gt;\r\n\r\n&lt;p&gt;We, RMC Gems India Ltd(&amp;ldquo;RMC&amp;rdquo;), have become a member of Responsible Jewelry Council (&amp;ldquo;the RJC&amp;rdquo;) since November,2019 and are committed to operating our business in accordance with the 2019 Code of Practices as stipulated by the RJC (&amp;ldquo;COP&amp;rdquo;). Our significant policies as highlighted below and briefly explained in the annex are based on the responsible business practices required by the RJC. We strictly adhere to these policies and will make every effort to work with all our employees and business counterparties to ensure our compliance with the standards set out in the COP. We share these policies with our employees and business counterparties in the expectation of their meeting to the responsible business practice requirements under the COP for our mutual benefits of trade business.&lt;/p&gt;\r\n\r\n&lt;p&gt;To Know more about the Policy ::&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;https://drive.google.com/file/d/17HdRvsrLF3gI138dRUm1e87RYL9JIOXT/view?usp=sharing&quot;&gt;RMC Supply Chain Policy&lt;/a&gt;&lt;/p&gt;\r\n', '1637065841FF16C.jpg', '1637067894635HC.jpg', '&lt;h3&gt;CSR Policy and Annual Report 20-21&lt;/h3&gt;\r\n\r\n&lt;p&gt;The Company is committed towards its works and its CSR policy by making a big and lasting difference, through sustainable measures, by actively contribute to the Social, Economic and Environmental development of the community in which we operate ensuring participation from the community and thereby create value for the nation.&lt;/p&gt;\r\n\r\n&lt;p&gt;To know more about the policy : Download&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;https://drive.google.com/file/d/10gGw9IXtKbulTnsw6wYVXBv1Atq1v1Ik/view?usp=sharing&quot;&gt;RMC CSR Policy Document&lt;/a&gt;&lt;/p&gt;\r\n', '', '', '', '', '', '', '2021-11-15 08:41:38');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gemstone_sections`
--

CREATE TABLE `gemstone_sections` (
  `id` int(11) NOT NULL DEFAULT '0',
  `banner_image` varchar(255) NOT NULL,
  `second_section_content` longtext NOT NULL,
  `second_section_image` varchar(255) NOT NULL,
  `third_section_image` varchar(255) NOT NULL,
  `third_section_content` longtext NOT NULL,
  `fourth_section_image` varchar(255) NOT NULL,
  `fourth_section_content` longtext NOT NULL,
  `fifth_section_image` varchar(255) NOT NULL,
  `fifth_section_content` longtext NOT NULL,
  `sixth_section_image` varchar(255) NOT NULL,
  `sixth_section_content` longtext NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gemstone_sections`
--

INSERT INTO `gemstone_sections` (`id`, `banner_image`, `second_section_content`, `second_section_image`, `third_section_image`, `third_section_content`, `fourth_section_image`, `fourth_section_content`, `fifth_section_image`, `fifth_section_content`, `sixth_section_image`, `sixth_section_content`, `created`) VALUES
(0, '1636976182B8AB2.jpg', ' &lt;h3&gt;Cut &amp;amp; Cabs&lt;/h3&gt;\r\n                                &lt;p&gt;All the hard work paid off when the company came up with its own computerised 3-Axis Shape-Making Machine in 2015. The machine made it possible for four processes to be executed with more accuracy in one go: Shape-making, griddle-polishing, facetting and polishing. As a result, production capacity has increased nearly three times without sacrificing quality while maintaining the sizes within 50 microns. And while initial coordination between the machine and the computer/controller encountered some issues, RMC was able to resolve the problems through better teamwork, a focused strategy and technological advancements. being granted in 2015 when it won the Manufacturer of the Year – Coloured Gemstone Cutting &amp;amp; Polishing award.&lt;/p&gt;', '1636976247BE8KI.jpg', '1636976382ADKHB.jpg', '  &lt;h3&gt;Beads&lt;/h3&gt;\r\n                                &lt;p&gt;All the hard work paid off when the company came up with its own computerised 3-Axis Shape-Making Machine in 2015. The machine made it possible for four processes to be executed with more accuracy in one go: Shape-making, griddle-polishing, facetting and polishing. As a result, production capacity has increased nearly three times without sacrificing quality while maintaining the sizes within 50 microns. And while initial coordination between the machine and the computer/controller encountered some issues, RMC was able to resolve the problems through better teamwork, a focused strategy and technological advancements. being granted in 2015 when it won the Manufacturer of the Year – Coloured Gemstone Cutting &amp;amp; Polishing award.&lt;/p&gt;\r\n', '16369764697CE6G.jpg', ' &lt;h3&gt;Customize Stone&lt;/h3&gt;\r\n                                &lt;p&gt;All the hard work paid off when the company came up with its own computerised 3-Axis Shape-Making Machine in 2015. The machine made it possible for four processes to be executed with more accuracy in one go: Shape-making, griddle-polishing, facetting and polishing. As a result, production capacity has increased nearly three times without sacrificing quality while maintaining the sizes within 50 microns. And while initial coordination between the machine and the computer/controller encountered some issues, RMC was able to resolve the problems through better teamwork, a focused strategy and technological advancements. being granted in 2015 when it won the Manufacturer of the Year – Coloured Gemstone Cutting &amp;amp; Polishing award.&lt;/p&gt;', '1636976504I4CF5.jpg', ' &lt;h3&gt;Raugh Stones&lt;/h3&gt;\r\n                                &lt;p&gt;All the hard work paid off when the company came up with its own computerised 3-Axis Shape-Making Machine in 2015. The machine made it possible for four processes to be executed with more accuracy in one go: Shape-making, griddle-polishing, facetting and polishing. As a result, production capacity has increased nearly three times without sacrificing quality while maintaining the sizes within 50 microns. And while initial coordination between the machine and the computer/controller encountered some issues, RMC was able to resolve the problems through better teamwork, a focused strategy and technological advancements. being granted in 2015 when it won the Manufacturer of the Year – Coloured Gemstone Cutting &amp;amp; Polishing award.&lt;/p&gt;', '16369765326BK62.jpg', ' &lt;h3&gt;Precious Machine Cut Stone&lt;/h3&gt;\r\n                                &lt;p&gt;All the hard work paid off when the company came up with its own computerised 3-Axis Shape-Making Machine in 2015. The machine made it possible for four processes to be executed with more accuracy in one go: Shape-making, griddle-polishing, facetting and polishing. As a result, production capacity has increased nearly three times without sacrificing quality while maintaining the sizes within 50 microns. And while initial coordination between the machine and the computer/controller encountered some issues, RMC was able to resolve the problems through better teamwork, a focused strategy and technological advancements. being granted in 2015 when it won the Manufacturer of the Year – Coloured Gemstone Cutting &amp;amp; Polishing award.&lt;/p&gt;', '2021-11-15 12:36:07');

-- --------------------------------------------------------

--
-- Table structure for table `home_sections`
--

CREATE TABLE `home_sections` (
  `id` int(11) NOT NULL,
  `rmc_story_left` longtext NOT NULL,
  `rmc_story_right` longtext NOT NULL,
  `rmc_infra_left` varchar(255) NOT NULL,
  `rmc_infra_right` longtext NOT NULL,
  `csr_left_image` varchar(255) NOT NULL,
  `csr_right_image` varchar(255) NOT NULL,
  `csr_below_content` longtext NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home_sections`
--

INSERT INTO `home_sections` (`id`, `rmc_story_left`, `rmc_story_right`, `rmc_infra_left`, `rmc_infra_right`, `csr_left_image`, `csr_right_image`, `csr_below_content`, `created`) VALUES
(1, '&lt;p&gt;&lt;strong&gt;While RMC Gems India Ltd operates from Jaipur&lt;/strong&gt;, India, its name is highly respected by clients coming from ifferent parts of the globe. The company has been in the industry since 2001, powered by more than 600 well-trained professionals who were instrumental in bringing in an impressive revenue of over US$20 million in 2015 for the company.&lt;/p&gt;\r\n                            &lt;p&gt;RMC manufactures coloured gemstones in its state of-the-art facilities in Jaipur. All finished gemstones are regularly shipped from this manufacturing unit for export to various destinations around the world, including the &lt;strong&gt;US, Japan, Hong Kong and Thailand.&lt;/strong&gt; Although 100 percent export-oriented, RMC also imports and sources rough gemstones locally. This makes RMC one of the largest coloured gemstone manufacturers in India.&lt;/p&gt;\r\n                            &lt;a href=&quot;company.php&quot;&gt;Read More&lt;/a&gt;\r\n', '1636877184GAHF9.png', '1636878836I2GJE.jpg', '&lt;p&gt;Today, RMC is one of the largest producers of coloured gemstones in India. Further, the company is one of the first in coloured gemstone trade to have the ISO 9001, ISO 14001, and ISO 18001 certification. The company is also a holder of the status &quot;Star Export House&quot;.&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Mr. Nirmal Bardiya, Managing Director, RMC has been honoured with &quot;Gem Dealer of the Decade&quot; award by Indian Diamond and Colour Stone Association (IDCA), USA in 2010&lt;/li&gt;\r\n	&lt;li&gt;RMC received &quot;Highest Export Awards&quot; for its colour stones by the Gem &amp;amp; Jewellery Export Promotion Council (GJEPC), India for the 2010-11, 2011-12, and 2012-13.&lt;/li&gt;\r\n	&lt;li&gt;RMC is certified &quot;Star Export House&quot; by Director General of Foreign Trade,government of India&lt;/li&gt;\r\n	&lt;li&gt;RMC is &quot;SA-8000&quot; certified for its outstanding social accountability and good HR practices&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '1637064005EEJ89.jpg', '16370640909FF13.jpg', '&lt;p&gt;&lt;strong&gt;RMC&lt;/strong&gt; is regularly giving financial contributing to the government mid-day-meal project which is related to child education into rural areas. We are doing directly social events for society, like organizing Blood Donation camp (with govt. approved hospitals and blood banks) for last few years, where RMC employees, suppliers and contractors donate blood voluntary. RMC is regularly contributing in Employee Medical benefit Scheme (ESIC) and Pension Schemes (PF). Social Responsibility is regularly monitoring by CSR committee including all compliance of SA 8000 standards.&lt;/p&gt;\r\n\r\n&lt;p&gt;At RMC, we believe that each employee should have the freedom to live with economic and social poise. With a strong belief for human rights, they offer every employee an opportunity for growth and prosperity.&lt;/p&gt;\r\n', '2021-11-12 11:33:40');

-- --------------------------------------------------------

--
-- Table structure for table `infrastructure_sections`
--

CREATE TABLE `infrastructure_sections` (
  `id` int(11) NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `below_content` longtext NOT NULL,
  `second_section_content` longtext NOT NULL,
  `second_section_image` varchar(255) NOT NULL,
  `third_section_image` varchar(255) NOT NULL,
  `third_section_content` longtext NOT NULL,
  `fourth_section_image` varchar(255) NOT NULL,
  `fourth_section_content` longtext NOT NULL,
  `fifth_section_image` varchar(255) NOT NULL,
  `fifth_section_content` longtext NOT NULL,
  `sixth_section_image` varchar(255) NOT NULL,
  `sixth_section_content` longtext NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `infrastructure_sections`
--

INSERT INTO `infrastructure_sections` (`id`, `banner_image`, `below_content`, `second_section_content`, `second_section_image`, `third_section_image`, `third_section_content`, `fourth_section_image`, `fourth_section_content`, `fifth_section_image`, `fifth_section_content`, `sixth_section_image`, `sixth_section_content`, `created`) VALUES
(1, '16370604607KBI7.jpg', '&lt;p&gt;RMC has 100% EOU in SEZ Sitapura, Jaipur with high quality processing machines and tools for manufacturing coloured stones. The company possesses state-of-the-art technology and equipment used by its highly skilled artisans and designers to create gorgeous gems that match international standards.&lt;/p&gt;\r\n\r\n&lt;p&gt;One of the major strengths of RMC lies in sourcing the raw material directly from mines, cutting and polishing them with the most superior and skilled workforce, and always maintain huge quantity of rough stones and preforms in inventory, which would aid in speedy delivery. Further, RMC has strong quality check team, which is engaged in each and every manufacturing process separately. Moreover, the company has developed its own in-house ERP system to manage and control the entire process right from rough stones to final delivery of the finished product.&lt;/p&gt;\r\n\r\n&lt;p&gt;Furthermore, RMC has an in-house Research &amp;amp; Development department, which dedicatedly works towards constantly improving quality of its products and processes along with production capacity.&lt;/p&gt;\r\n', ' &lt;h3&gt;Computer Numeric Control&lt;/h3&gt;\r\n                                &lt;p&gt;Customers and clients can leverage many mutual synergies and benefits through associating with RMC. Highly skilled team members at RMC use state-of-the-art technology and equipment to produce world class range of gems and jewellery.&lt;/p&gt;', '1636977761DH3J3.jpg', '16369777939591F.jpg', ' &lt;h3&gt;Chain Making&lt;/h3&gt;\r\n                                &lt;p&gt;Customers and clients can leverage many mutual synergies and benefits through associating with RMC. Highly skilled team members at RMC use state-of-the-art technology and equipment to produce world class range of gems and jewellery.&lt;/p&gt;', '16369778409H9I7.jpg', ' &lt;h3&gt;Casting&lt;/h3&gt;\r\n                                &lt;p&gt;Customers and clients can leverage many mutual synergies and benefits through associating with RMC. Highly skilled team members at RMC use state-of-the-art technology and equipment to produce world class range of gems and jewellery.&lt;/p&gt;', '1636977872IIDB8.jpg', '&lt;h3&gt;Tubing&lt;/h3&gt;\r\n                                &lt;p&gt;Customers and clients can leverage many mutual synergies and benefits through associating with RMC. Highly skilled team members at RMC use state-of-the-art technology and equipment to produce world class range of gems and jewellery.&lt;/p&gt;', '16369778998ECD4.jpg', '  &lt;h3&gt;Stamping&lt;/h3&gt;\r\n                                &lt;p&gt;Customers and clients can leverage many mutual synergies and benefits through associating with RMC. Highly skilled team members at RMC use state-of-the-art technology and equipment to produce world class range of gems and jewellery.&lt;/p&gt;', '2021-11-15 08:41:38');

-- --------------------------------------------------------

--
-- Table structure for table `login_activity`
--

CREATE TABLE `login_activity` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_activity`
--

INSERT INTO `login_activity` (`id`, `comment`, `date_time`) VALUES
(1, 'users page visited127.0.0.1', '2021-10-08 03:42:57'),
(2, 'users page visited127.0.0.1', '2021-10-08 03:43:36'),
(3, 'users page visited127.0.0.1', '2021-10-08 03:43:36'),
(4, 'users page visited127.0.0.1', '2021-10-08 04:53:48'),
(5, 'users update page visited127.0.0.1', '2021-10-08 04:53:50'),
(6, 'users page visited127.0.0.1', '2021-10-08 04:54:06'),
(7, 'users page visited127.0.0.1', '2021-10-10 23:09:54'),
(8, 'users page visited127.0.0.1', '2021-10-10 23:09:58'),
(9, 'users page visited127.0.0.1', '2021-10-10 23:10:04'),
(10, 'users page visited127.0.0.1', '2021-10-10 23:10:04'),
(11, 'users page visited127.0.0.1', '2021-10-10 23:10:28'),
(12, 'users page visited127.0.0.1', '2021-10-10 23:10:28'),
(13, 'users page visited127.0.0.1', '2021-10-10 23:26:24'),
(14, 'users page visited127.0.0.1', '2021-10-10 23:26:28'),
(15, 'users page visited127.0.0.1', '2021-10-10 23:26:32'),
(16, 'users page visited127.0.0.1', '2021-10-10 23:26:50'),
(17, 'users page visited127.0.0.1', '2021-10-10 23:26:50'),
(18, 'users page visited127.0.0.1', '2021-10-10 23:26:53'),
(19, 'users page visited127.0.0.1', '2021-10-10 23:27:01'),
(20, 'users page visited127.0.0.1', '2021-10-10 23:27:01'),
(21, 'users page visited127.0.0.1', '2021-10-10 23:27:08'),
(22, 'users page visited127.0.0.1', '2021-10-10 23:27:10'),
(23, 'users page visited127.0.0.1', '2021-10-10 23:30:42'),
(24, 'users page visited127.0.0.1', '2021-10-10 23:30:45'),
(25, 'admin url vistied 127.0.0.1', '2021-10-10 23:57:58'),
(26, 'users page visited127.0.0.1', '2021-10-11 01:51:59'),
(27, 'users page visited127.0.0.1', '2021-10-11 01:52:43'),
(28, 'users page visited127.0.0.1', '2021-10-11 01:52:46'),
(29, 'users page visited127.0.0.1', '2021-10-11 02:01:29'),
(30, 'users page visited127.0.0.1', '2021-10-11 02:01:38'),
(31, 'users page visited127.0.0.1', '2021-10-11 02:01:45'),
(32, 'users page visited127.0.0.1', '2021-10-11 02:02:21'),
(33, 'users page visited127.0.0.1', '2021-10-11 02:02:52'),
(34, 'users page visited127.0.0.1', '2021-10-11 02:05:01'),
(35, 'users page visited127.0.0.1', '2021-10-11 02:05:03'),
(36, 'users page visited127.0.0.1', '2021-10-11 02:05:03'),
(37, 'users page visited127.0.0.1', '2021-10-11 02:05:19'),
(38, 'users page visited127.0.0.1', '2021-10-11 02:05:19'),
(39, 'users page visited127.0.0.1', '2021-10-11 02:05:24'),
(40, 'users page visited127.0.0.1', '2021-10-11 02:05:24'),
(41, 'users page visited127.0.0.1', '2021-10-11 02:07:00'),
(42, 'users page visited127.0.0.1', '2021-10-11 02:07:13'),
(43, 'users page visited127.0.0.1', '2021-10-11 02:07:13'),
(44, 'users page visited127.0.0.1', '2021-10-11 02:07:29'),
(45, 'users page visited127.0.0.1', '2021-10-11 02:07:29'),
(46, 'admin url vistied 127.0.0.1', '2021-10-11 03:13:53'),
(47, 'admin url vistied 127.0.0.1', '2021-10-11 03:13:57'),
(48, 'admin url vistied 127.0.0.1', '2021-10-11 03:14:03'),
(49, 'login form submit vistied 127.0.0.1', '2021-10-11 03:14:03'),
(50, 'opt page vistied 127.0.0.1', '2021-10-11 03:14:03'),
(51, 'opt page vistied 127.0.0.1', '2021-10-11 03:14:06'),
(52, 'opt submit 127.0.0.1', '2021-10-11 03:14:06'),
(53, 'login success vistied 127.0.0.1', '2021-10-11 03:14:06'),
(54, 'users page visited127.0.0.1', '2021-10-11 03:14:11'),
(55, 'users page visited127.0.0.1', '2021-10-11 03:14:34'),
(56, 'users page visited127.0.0.1', '2021-10-11 03:17:11'),
(57, 'users page visited127.0.0.1', '2021-10-11 03:17:15'),
(58, 'users page visited127.0.0.1', '2021-10-11 03:17:22'),
(59, 'users page visited127.0.0.1', '2021-10-11 03:20:48'),
(60, 'users page visited127.0.0.1', '2021-10-11 03:20:52'),
(61, 'users page visited127.0.0.1', '2021-10-11 03:20:57'),
(62, 'users page visited127.0.0.1', '2021-10-11 03:21:08'),
(63, 'users page visited127.0.0.1', '2021-10-11 03:21:12'),
(64, 'users page visited127.0.0.1', '2021-10-11 03:21:12'),
(65, 'users page visited127.0.0.1', '2021-10-11 03:22:02'),
(66, 'users page visited127.0.0.1', '2021-10-11 03:22:06'),
(67, 'users page visited127.0.0.1', '2021-10-11 03:22:06'),
(68, 'users page visited127.0.0.1', '2021-10-11 03:25:50'),
(69, 'users page visited127.0.0.1', '2021-10-11 03:35:52'),
(70, 'users page visited127.0.0.1', '2021-10-11 03:36:17'),
(71, 'users page visited127.0.0.1', '2021-10-11 03:36:28'),
(72, 'users page visited127.0.0.1', '2021-10-11 03:37:10'),
(73, 'users page visited127.0.0.1', '2021-10-11 03:49:24'),
(74, 'users page visited127.0.0.1', '2021-10-11 03:51:59'),
(75, 'users page visited127.0.0.1', '2021-10-11 03:52:04'),
(76, 'users page visited127.0.0.1', '2021-10-11 03:52:04'),
(77, 'users page visited127.0.0.1', '2021-10-11 03:52:16'),
(78, 'users page visited127.0.0.1', '2021-10-11 03:52:21'),
(79, 'users page visited127.0.0.1', '2021-10-11 03:52:21'),
(80, 'users page visited127.0.0.1', '2021-10-11 03:53:00'),
(81, 'users page visited127.0.0.1', '2021-10-11 03:53:05'),
(82, 'users page visited127.0.0.1', '2021-10-11 03:53:05'),
(83, 'users page visited127.0.0.1', '2021-10-11 03:53:10'),
(84, 'users page visited127.0.0.1', '2021-10-11 04:02:49'),
(85, 'users page visited127.0.0.1', '2021-10-11 04:02:54'),
(86, 'users page visited127.0.0.1', '2021-10-11 04:02:54'),
(87, 'users page visited127.0.0.1', '2021-10-11 04:04:09'),
(88, 'users page visited127.0.0.1', '2021-10-11 04:05:56'),
(89, 'users page visited127.0.0.1', '2021-10-11 04:06:00'),
(90, 'users page visited127.0.0.1', '2021-10-11 04:06:51'),
(91, 'users page visited127.0.0.1', '2021-10-11 04:08:05'),
(92, 'users page visited127.0.0.1', '2021-10-11 21:33:22'),
(93, 'users page visited127.0.0.1', '2021-10-11 21:33:27'),
(94, 'users page visited127.0.0.1', '2021-10-11 21:33:30'),
(95, 'users page visited127.0.0.1', '2021-10-11 21:33:37'),
(96, 'users page visited127.0.0.1', '2021-10-11 21:42:22'),
(97, 'users page visited127.0.0.1', '2021-10-11 21:42:25'),
(98, 'users page visited127.0.0.1', '2021-10-11 21:42:31'),
(99, 'users page visited127.0.0.1', '2021-10-11 21:42:31'),
(100, 'users page visited127.0.0.1', '2021-10-11 21:45:31'),
(101, 'users page visited127.0.0.1', '2021-10-11 21:54:13'),
(102, 'users page visited127.0.0.1', '2021-10-11 21:54:20'),
(103, 'users page visited127.0.0.1', '2021-10-11 21:54:23'),
(104, 'users page visited127.0.0.1', '2021-10-11 21:54:23'),
(105, 'admin url vistied 127.0.0.1', '2021-10-13 21:22:35'),
(106, 'admin url vistied 127.0.0.1', '2021-10-13 21:23:14'),
(107, 'admin url vistied 127.0.0.1', '2021-10-13 21:28:09'),
(108, 'login form submit vistied 127.0.0.1', '2021-10-13 21:28:09'),
(109, 'opt page vistied 127.0.0.1', '2021-10-13 21:28:09'),
(110, 'opt page vistied 127.0.0.1', '2021-10-13 21:28:12'),
(111, 'opt submit 127.0.0.1', '2021-10-13 21:28:12'),
(112, 'login success vistied 127.0.0.1', '2021-10-13 21:28:12'),
(113, 'users page visited127.0.0.1', '2021-10-13 21:31:42'),
(114, 'users page visited127.0.0.1', '2021-10-13 21:31:49'),
(115, 'users page visited127.0.0.1', '2021-10-13 21:31:49'),
(116, 'users page visited127.0.0.1', '2021-10-13 21:31:56'),
(117, 'users page visited127.0.0.1', '2021-10-13 21:31:56'),
(118, 'users page visited127.0.0.1', '2021-10-13 21:34:29'),
(119, 'users page visited127.0.0.1', '2021-10-13 21:34:32'),
(120, 'users page visited127.0.0.1', '2021-10-13 21:34:33'),
(121, 'users page visited127.0.0.1', '2021-10-13 21:34:36'),
(122, 'users page visited127.0.0.1', '2021-10-13 21:34:36'),
(123, 'users page visited127.0.0.1', '2021-10-13 21:49:22'),
(124, 'users page visited127.0.0.1', '2021-10-14 00:30:52'),
(125, 'users page visited127.0.0.1', '2021-10-14 01:36:25'),
(126, 'users page visited127.0.0.1', '2021-10-14 01:36:49'),
(127, 'users page visited127.0.0.1', '2021-10-14 01:36:54'),
(128, 'users page visited127.0.0.1', '2021-10-14 01:39:03'),
(129, 'users page visited127.0.0.1', '2021-10-14 01:43:19'),
(130, 'users page visited127.0.0.1', '2021-10-14 01:43:31'),
(131, 'users page visited127.0.0.1', '2021-10-14 01:43:57'),
(132, 'users page visited127.0.0.1', '2021-10-14 01:44:08'),
(133, 'users page visited127.0.0.1', '2021-10-14 01:44:48'),
(134, 'users page visited127.0.0.1', '2021-10-14 01:44:50'),
(135, 'users page visited127.0.0.1', '2021-10-14 01:46:05'),
(136, 'users page visited127.0.0.1', '2021-10-14 01:46:29'),
(137, 'users page visited127.0.0.1', '2021-10-14 01:46:43'),
(138, 'users page visited127.0.0.1', '2021-10-14 01:47:15'),
(139, 'users page visited127.0.0.1', '2021-10-14 01:47:36'),
(140, 'users page visited127.0.0.1', '2021-10-14 01:47:45'),
(141, 'users page visited127.0.0.1', '2021-10-14 01:48:20'),
(142, 'users page visited127.0.0.1', '2021-10-14 01:48:42'),
(143, 'users page visited127.0.0.1', '2021-10-14 01:49:15'),
(144, 'users page visited127.0.0.1', '2021-10-14 01:49:28'),
(145, 'users page visited127.0.0.1', '2021-10-14 01:49:51'),
(146, 'users page visited127.0.0.1', '2021-10-14 01:49:55'),
(147, 'users page visited127.0.0.1', '2021-10-14 01:50:15'),
(148, 'users page visited127.0.0.1', '2021-10-14 01:52:21'),
(149, 'users page visited127.0.0.1', '2021-10-14 01:52:29'),
(150, 'users page visited127.0.0.1', '2021-10-14 01:52:40'),
(151, 'users page visited127.0.0.1', '2021-10-14 01:52:50'),
(152, 'users page visited127.0.0.1', '2021-10-14 01:53:29'),
(153, 'users page visited127.0.0.1', '2021-10-14 01:54:16'),
(154, 'users page visited127.0.0.1', '2021-10-14 01:55:13'),
(155, 'users page visited127.0.0.1', '2021-10-14 01:55:15'),
(156, 'users page visited127.0.0.1', '2021-10-14 01:57:52'),
(157, 'users page visited127.0.0.1', '2021-10-14 02:21:27'),
(158, 'users page visited127.0.0.1', '2021-10-14 02:21:58'),
(159, 'users page visited127.0.0.1', '2021-10-14 02:22:25'),
(160, 'users page visited127.0.0.1', '2021-10-14 02:22:47'),
(161, 'users page visited127.0.0.1', '2021-10-14 02:22:56'),
(162, 'users page visited127.0.0.1', '2021-10-14 02:23:05'),
(163, 'users page visited127.0.0.1', '2021-10-14 02:23:34'),
(164, 'users page visited127.0.0.1', '2021-10-14 02:23:40'),
(165, 'users page visited127.0.0.1', '2021-10-14 02:25:15'),
(166, 'users page visited127.0.0.1', '2021-10-14 02:25:29'),
(167, 'users page visited127.0.0.1', '2021-10-14 02:25:37'),
(168, 'users page visited127.0.0.1', '2021-10-14 02:25:48'),
(169, 'users page visited127.0.0.1', '2021-10-14 02:25:48'),
(170, 'users page visited127.0.0.1', '2021-10-14 02:26:01'),
(171, 'users page visited127.0.0.1', '2021-10-14 02:26:08'),
(172, 'users page visited127.0.0.1', '2021-10-14 02:26:08'),
(173, 'users page visited127.0.0.1', '2021-10-14 02:26:17'),
(174, 'users page visited127.0.0.1', '2021-10-14 02:26:17'),
(175, 'users page visited127.0.0.1', '2021-10-14 02:28:09'),
(176, 'users page visited127.0.0.1', '2021-10-14 02:28:43'),
(177, 'users page visited127.0.0.1', '2021-10-14 02:29:05'),
(178, 'users page visited127.0.0.1', '2021-10-14 02:30:40'),
(179, 'users page visited127.0.0.1', '2021-10-14 02:31:01'),
(180, 'users page visited127.0.0.1', '2021-10-14 02:31:28'),
(181, 'users page visited127.0.0.1', '2021-10-14 02:31:42'),
(182, 'users page visited127.0.0.1', '2021-10-14 02:32:15'),
(183, 'users page visited127.0.0.1', '2021-10-14 02:35:11'),
(184, 'users page visited127.0.0.1', '2021-10-14 02:35:36'),
(185, 'users page visited127.0.0.1', '2021-10-14 02:36:28'),
(186, 'users page visited127.0.0.1', '2021-10-14 02:36:44'),
(187, 'users page visited127.0.0.1', '2021-10-14 02:36:50'),
(188, 'users page visited127.0.0.1', '2021-10-14 02:37:31'),
(189, 'users page visited127.0.0.1', '2021-10-14 02:37:48'),
(190, 'users page visited127.0.0.1', '2021-10-14 02:40:20'),
(191, 'users page visited127.0.0.1', '2021-10-14 03:17:13'),
(192, 'users page visited127.0.0.1', '2021-10-14 03:17:18'),
(193, 'users page visited127.0.0.1', '2021-10-14 03:17:18'),
(194, 'users page visited127.0.0.1', '2021-10-14 03:17:50'),
(195, 'users page visited127.0.0.1', '2021-10-14 03:17:53'),
(196, 'users page visited127.0.0.1', '2021-10-14 03:17:56'),
(197, 'users page visited127.0.0.1', '2021-10-14 03:18:00'),
(198, 'users page visited127.0.0.1', '2021-10-14 03:18:00'),
(199, 'users page visited127.0.0.1', '2021-10-14 03:18:29'),
(200, 'users page visited127.0.0.1', '2021-10-14 03:18:32'),
(201, 'users page visited127.0.0.1', '2021-10-14 03:18:32'),
(202, 'users page visited127.0.0.1', '2021-10-14 03:18:41'),
(203, 'users page visited127.0.0.1', '2021-10-14 03:18:41'),
(204, 'users page visited127.0.0.1', '2021-10-14 03:18:44'),
(205, 'users page visited127.0.0.1', '2021-10-14 03:18:47'),
(206, 'users page visited127.0.0.1', '2021-10-14 03:20:26'),
(207, 'users page visited127.0.0.1', '2021-10-14 03:22:36'),
(208, 'users page visited127.0.0.1', '2021-10-14 03:22:40'),
(209, 'users page visited127.0.0.1', '2021-10-14 03:23:04'),
(210, 'users page visited127.0.0.1', '2021-10-14 03:23:50'),
(211, 'users page visited127.0.0.1', '2021-10-14 03:24:09'),
(212, 'users page visited127.0.0.1', '2021-10-14 03:24:48'),
(213, 'users page visited127.0.0.1', '2021-10-14 03:36:25'),
(214, 'users page visited127.0.0.1', '2021-10-14 03:36:30'),
(215, 'users page visited127.0.0.1', '2021-10-14 03:36:30'),
(216, 'users page visited127.0.0.1', '2021-10-14 03:36:44'),
(217, 'users page visited127.0.0.1', '2021-10-14 03:37:34'),
(218, 'users page visited127.0.0.1', '2021-10-14 03:37:37'),
(219, 'users page visited127.0.0.1', '2021-10-14 03:38:18'),
(220, 'users page visited127.0.0.1', '2021-10-14 03:38:21'),
(221, 'users page visited127.0.0.1', '2021-10-14 03:59:24'),
(222, 'users page visited127.0.0.1', '2021-10-14 04:15:03'),
(223, 'users page visited127.0.0.1', '2021-10-14 04:15:06'),
(224, 'users page visited127.0.0.1', '2021-10-14 04:15:09'),
(225, 'users page visited127.0.0.1', '2021-10-14 04:15:56'),
(226, 'users page visited127.0.0.1', '2021-10-14 04:16:14'),
(227, 'users page visited127.0.0.1', '2021-10-14 04:16:28'),
(228, 'users page visited127.0.0.1', '2021-10-14 04:16:50'),
(229, 'users page visited127.0.0.1', '2021-10-14 04:17:22'),
(230, 'users page visited127.0.0.1', '2021-10-14 04:18:42'),
(231, 'users page visited127.0.0.1', '2021-10-14 04:18:58'),
(232, 'users page visited127.0.0.1', '2021-10-14 04:19:08'),
(233, 'users page visited127.0.0.1', '2021-10-14 04:19:10'),
(234, 'users page visited127.0.0.1', '2021-10-14 04:20:48'),
(235, 'users page visited127.0.0.1', '2021-10-14 04:20:52'),
(236, 'users page visited127.0.0.1', '2021-10-14 04:21:21'),
(237, 'users page visited127.0.0.1', '2021-10-14 04:22:23'),
(238, 'users page visited127.0.0.1', '2021-10-14 04:22:40'),
(239, 'users page visited127.0.0.1', '2021-10-14 04:23:24'),
(240, 'users page visited127.0.0.1', '2021-10-14 04:23:37'),
(241, 'users page visited127.0.0.1', '2021-10-14 04:23:47'),
(242, 'users page visited127.0.0.1', '2021-10-14 04:24:33'),
(243, 'users page visited127.0.0.1', '2021-10-14 04:27:34'),
(244, 'users page visited127.0.0.1', '2021-10-14 04:28:26'),
(245, 'users page visited127.0.0.1', '2021-10-14 04:28:41'),
(246, 'users page visited127.0.0.1', '2021-10-14 04:28:46'),
(247, 'users page visited127.0.0.1', '2021-10-14 04:29:01'),
(248, 'users page visited127.0.0.1', '2021-10-14 04:29:07'),
(249, 'users page visited127.0.0.1', '2021-10-14 04:29:26'),
(250, 'users page visited127.0.0.1', '2021-10-14 04:29:30'),
(251, 'users page visited127.0.0.1', '2021-10-14 04:29:47'),
(252, 'users page visited127.0.0.1', '2021-10-14 04:30:32'),
(253, 'users page visited127.0.0.1', '2021-10-14 04:31:12'),
(254, 'users page visited127.0.0.1', '2021-10-14 04:36:38'),
(255, 'users page visited127.0.0.1', '2021-10-14 04:37:08'),
(256, 'users page visited127.0.0.1', '2021-10-14 04:37:31'),
(257, 'users page visited127.0.0.1', '2021-10-14 04:37:40'),
(258, 'users page visited127.0.0.1', '2021-10-14 04:38:45'),
(259, 'users page visited127.0.0.1', '2021-10-14 04:38:48'),
(260, 'users page visited127.0.0.1', '2021-10-14 04:39:59'),
(261, 'users page visited127.0.0.1', '2021-10-14 04:40:43'),
(262, 'users page visited127.0.0.1', '2021-10-14 04:41:00'),
(263, 'users page visited127.0.0.1', '2021-10-14 04:41:56'),
(264, 'users page visited127.0.0.1', '2021-10-14 04:41:58'),
(265, 'users page visited127.0.0.1', '2021-10-14 04:42:09'),
(266, 'users page visited127.0.0.1', '2021-10-14 04:42:12'),
(267, 'users page visited127.0.0.1', '2021-10-14 04:42:59'),
(268, 'users page visited127.0.0.1', '2021-10-14 04:43:01'),
(269, 'users page visited127.0.0.1', '2021-10-14 04:43:08'),
(270, 'users page visited127.0.0.1', '2021-10-14 04:58:37'),
(271, 'users page visited127.0.0.1', '2021-10-14 04:58:40'),
(272, 'users page visited127.0.0.1', '2021-10-14 04:58:42'),
(273, 'users page visited127.0.0.1', '2021-10-14 04:58:46'),
(274, 'users page visited127.0.0.1', '2021-10-14 04:58:48'),
(275, 'users page visited127.0.0.1', '2021-10-14 04:59:01'),
(276, 'users page visited127.0.0.1', '2021-10-14 04:59:03'),
(277, 'users page visited127.0.0.1', '2021-10-14 04:59:05'),
(278, 'users page visited127.0.0.1', '2021-10-14 04:59:47'),
(279, 'users page visited127.0.0.1', '2021-10-14 04:59:49'),
(280, 'users page visited127.0.0.1', '2021-10-14 04:59:49'),
(281, 'users page visited127.0.0.1', '2021-10-14 04:59:52'),
(282, 'users page visited127.0.0.1', '2021-10-14 04:59:52'),
(283, 'users page visited127.0.0.1', '2021-10-14 04:59:54'),
(284, 'users page visited127.0.0.1', '2021-10-14 05:00:02'),
(285, 'users page visited127.0.0.1', '2021-10-14 05:00:02'),
(286, 'users page visited127.0.0.1', '2021-10-14 05:00:30'),
(287, 'users page visited127.0.0.1', '2021-10-14 05:00:30'),
(288, 'users page visited127.0.0.1', '2021-10-14 05:00:32'),
(289, 'users page visited127.0.0.1', '2021-10-14 05:00:32'),
(290, 'users page visited127.0.0.1', '2021-10-14 05:00:36'),
(291, 'users page visited127.0.0.1', '2021-10-14 05:01:17'),
(292, 'users page visited127.0.0.1', '2021-10-14 05:01:17'),
(293, 'users page visited127.0.0.1', '2021-10-14 05:01:19'),
(294, 'users page visited127.0.0.1', '2021-10-14 05:01:19'),
(295, 'users page visited127.0.0.1', '2021-10-14 05:01:26'),
(296, 'users page visited127.0.0.1', '2021-10-14 05:01:40'),
(297, 'users page visited127.0.0.1', '2021-10-14 05:01:40'),
(298, 'users page visited127.0.0.1', '2021-10-14 05:01:41'),
(299, 'users page visited127.0.0.1', '2021-10-14 05:01:42'),
(300, 'users page visited127.0.0.1', '2021-10-14 05:02:18'),
(301, 'users page visited127.0.0.1', '2021-10-14 05:02:20'),
(302, 'users page visited127.0.0.1', '2021-10-14 05:02:23'),
(303, 'users page visited127.0.0.1', '2021-10-14 05:02:39'),
(304, 'users page visited127.0.0.1', '2021-10-14 05:02:40'),
(305, 'users page visited127.0.0.1', '2021-10-14 05:02:43'),
(306, 'users page visited127.0.0.1', '2021-10-14 05:02:53'),
(307, 'users page visited127.0.0.1', '2021-10-14 05:02:56'),
(308, 'users page visited127.0.0.1', '2021-10-14 05:02:58'),
(309, 'users page visited127.0.0.1', '2021-10-14 05:02:58'),
(310, 'users page visited127.0.0.1', '2021-10-14 05:03:06'),
(311, 'users page visited127.0.0.1', '2021-10-14 05:03:19'),
(312, 'users page visited127.0.0.1', '2021-10-14 05:03:21'),
(313, 'users page visited127.0.0.1', '2021-10-14 05:03:21'),
(314, 'users page visited127.0.0.1', '2021-10-14 05:03:24'),
(315, 'users page visited127.0.0.1', '2021-10-15 21:16:48'),
(316, 'admin url vistied 127.0.0.1', '2021-10-16 04:57:27'),
(317, 'admin url vistied 127.0.0.1', '2021-10-16 04:57:30'),
(318, 'admin url vistied 127.0.0.1', '2021-10-16 04:57:35'),
(319, 'login form submit vistied 127.0.0.1', '2021-10-16 04:57:35'),
(320, 'opt page vistied 127.0.0.1', '2021-10-16 04:57:35'),
(321, 'opt page vistied 127.0.0.1', '2021-10-16 04:57:37'),
(322, 'opt submit 127.0.0.1', '2021-10-16 04:57:37'),
(323, 'login success vistied 127.0.0.1', '2021-10-16 04:57:37'),
(324, 'users page visited127.0.0.1', '2021-10-16 04:58:00'),
(325, 'users page visited127.0.0.1', '2021-10-16 04:58:09'),
(326, 'users page visited127.0.0.1', '2021-10-16 04:58:15'),
(327, 'users page visited127.0.0.1', '2021-10-16 04:58:19'),
(328, 'users page visited127.0.0.1', '2021-10-16 04:58:23'),
(329, 'users page visited127.0.0.1', '2021-10-16 04:58:28'),
(330, 'users page visited127.0.0.1', '2021-10-16 04:58:32'),
(331, 'users page visited127.0.0.1', '2021-10-16 04:58:39'),
(332, 'users page visited127.0.0.1', '2021-10-16 04:58:40'),
(333, 'admin url vistied 127.0.0.1', '2021-11-11 21:31:34'),
(334, 'admin url vistied 127.0.0.1', '2021-11-11 21:31:43'),
(335, 'admin url vistied 127.0.0.1', '2021-11-11 21:31:48'),
(336, 'login form submit vistied 127.0.0.1', '2021-11-11 21:31:48'),
(337, 'opt page vistied 127.0.0.1', '2021-11-11 21:31:49'),
(338, 'opt page vistied 127.0.0.1', '2021-11-11 21:31:54'),
(339, 'opt submit 127.0.0.1', '2021-11-11 21:31:54'),
(340, 'login success vistied 127.0.0.1', '2021-11-11 21:31:54'),
(341, 'users page visited127.0.0.1', '2021-11-11 21:32:17'),
(342, 'users page visited127.0.0.1', '2021-11-11 21:32:57'),
(343, 'users page visited127.0.0.1', '2021-11-11 21:33:00'),
(344, 'admin url vistied 127.0.0.1', '2021-11-11 21:34:21'),
(345, 'users page visited127.0.0.1', '2021-11-11 21:52:57'),
(346, 'users page visited127.0.0.1', '2021-11-11 21:53:02'),
(347, 'users page visited127.0.0.1', '2021-11-11 21:54:17'),
(348, 'users page visited127.0.0.1', '2021-11-11 21:54:24'),
(349, 'users page visited127.0.0.1', '2021-11-11 21:54:24'),
(350, 'users page visited127.0.0.1', '2021-11-11 21:55:23'),
(351, 'users page visited127.0.0.1', '2021-11-11 21:55:55'),
(352, 'users page visited127.0.0.1', '2021-11-11 21:55:59'),
(353, 'users page visited127.0.0.1', '2021-11-11 21:55:59'),
(354, 'users page visited127.0.0.1', '2021-11-11 21:57:49'),
(355, 'users page visited127.0.0.1', '2021-11-11 21:58:19'),
(356, 'users page visited127.0.0.1', '2021-11-11 21:58:21'),
(357, 'users page visited127.0.0.1', '2021-11-11 21:59:55'),
(358, 'users page visited127.0.0.1', '2021-11-11 22:01:47'),
(359, 'users page visited127.0.0.1', '2021-11-11 22:02:32'),
(360, 'users page visited127.0.0.1', '2021-11-11 22:04:15'),
(361, 'users page visited127.0.0.1', '2021-11-11 22:05:04'),
(362, 'users page visited127.0.0.1', '2021-11-11 22:05:37'),
(363, 'users page visited127.0.0.1', '2021-11-11 22:05:42'),
(364, 'users page visited127.0.0.1', '2021-11-11 22:06:46'),
(365, 'users page visited127.0.0.1', '2021-11-11 22:07:17'),
(366, 'users page visited127.0.0.1', '2021-11-11 22:07:48'),
(367, 'users page visited127.0.0.1', '2021-11-11 22:08:42'),
(368, 'users page visited127.0.0.1', '2021-11-11 22:08:45'),
(369, 'users page visited127.0.0.1', '2021-11-11 22:10:42'),
(370, 'users page visited127.0.0.1', '2021-11-11 22:11:04'),
(371, 'users page visited127.0.0.1', '2021-11-11 22:11:07'),
(372, 'users page visited127.0.0.1', '2021-11-11 22:11:16'),
(373, 'users page visited127.0.0.1', '2021-11-11 22:12:05'),
(374, 'users page visited127.0.0.1', '2021-11-11 22:12:52'),
(375, 'users page visited127.0.0.1', '2021-11-11 22:14:32'),
(376, 'users page visited127.0.0.1', '2021-11-11 22:15:42'),
(377, 'users page visited127.0.0.1', '2021-11-11 22:15:50'),
(378, 'users page visited127.0.0.1', '2021-11-11 22:16:05'),
(379, 'users page visited127.0.0.1', '2021-11-11 22:16:27'),
(380, 'users page visited127.0.0.1', '2021-11-11 22:17:35'),
(381, 'users page visited127.0.0.1', '2021-11-11 22:18:10'),
(382, 'users page visited127.0.0.1', '2021-11-11 22:18:18'),
(383, 'users page visited127.0.0.1', '2021-11-11 22:22:09'),
(384, 'users page visited127.0.0.1', '2021-11-11 22:22:11'),
(385, 'users page visited127.0.0.1', '2021-11-11 22:22:21'),
(386, 'users page visited127.0.0.1', '2021-11-11 22:22:24'),
(387, 'users page visited127.0.0.1', '2021-11-11 22:22:50'),
(388, 'users page visited127.0.0.1', '2021-11-11 22:22:51'),
(389, 'users page visited127.0.0.1', '2021-11-11 22:24:42'),
(390, 'users page visited127.0.0.1', '2021-11-11 22:25:29'),
(391, 'users page visited127.0.0.1', '2021-11-11 22:26:07'),
(392, 'users page visited127.0.0.1', '2021-11-11 22:26:22'),
(393, 'users page visited127.0.0.1', '2021-11-11 22:27:05'),
(394, 'users page visited127.0.0.1', '2021-11-11 22:27:35'),
(395, 'users page visited127.0.0.1', '2021-11-11 22:27:48'),
(396, 'users page visited127.0.0.1', '2021-11-11 22:27:58'),
(397, 'users page visited127.0.0.1', '2021-11-11 22:28:12'),
(398, 'users page visited127.0.0.1', '2021-11-11 22:28:22'),
(399, 'users page visited127.0.0.1', '2021-11-11 22:28:35'),
(400, 'users page visited127.0.0.1', '2021-11-11 22:28:43'),
(401, 'users page visited127.0.0.1', '2021-11-11 22:28:59'),
(402, 'users page visited127.0.0.1', '2021-11-11 22:29:00'),
(403, 'users page visited127.0.0.1', '2021-11-11 22:29:29'),
(404, 'users page visited127.0.0.1', '2021-11-11 22:29:37'),
(405, 'users page visited127.0.0.1', '2021-11-11 22:29:47'),
(406, 'users page visited127.0.0.1', '2021-11-11 22:29:52'),
(407, 'users page visited127.0.0.1', '2021-11-11 22:30:09'),
(408, 'users page visited127.0.0.1', '2021-11-11 22:30:53'),
(409, 'users page visited127.0.0.1', '2021-11-11 22:31:01'),
(410, 'users page visited127.0.0.1', '2021-11-11 22:31:06'),
(411, 'users page visited127.0.0.1', '2021-11-11 22:31:13'),
(412, 'users page visited127.0.0.1', '2021-11-11 22:31:18'),
(413, 'users page visited127.0.0.1', '2021-11-11 22:31:19'),
(414, 'users page visited127.0.0.1', '2021-11-11 22:31:20'),
(415, 'users page visited127.0.0.1', '2021-11-11 22:31:31'),
(416, 'users page visited127.0.0.1', '2021-11-11 22:31:34'),
(417, 'users page visited127.0.0.1', '2021-11-11 22:31:47'),
(418, 'users page visited127.0.0.1', '2021-11-11 22:32:01'),
(419, 'users page visited127.0.0.1', '2021-11-11 22:32:14'),
(420, 'users page visited127.0.0.1', '2021-11-11 22:32:41'),
(421, 'users page visited127.0.0.1', '2021-11-11 22:33:11'),
(422, 'users page visited127.0.0.1', '2021-11-11 22:33:21'),
(423, 'users page visited127.0.0.1', '2021-11-11 22:34:00'),
(424, 'users page visited127.0.0.1', '2021-11-11 22:34:05'),
(425, 'admin url vistied 127.0.0.1', '2021-11-11 22:34:12'),
(426, 'admin url vistied 127.0.0.1', '2021-11-11 22:34:16'),
(427, 'admin url vistied 127.0.0.1', '2021-11-11 22:34:25'),
(428, 'login form submit vistied 127.0.0.1', '2021-11-11 22:34:25'),
(429, 'opt page vistied 127.0.0.1', '2021-11-11 22:34:25'),
(430, 'opt page vistied 127.0.0.1', '2021-11-11 22:34:30'),
(431, 'opt submit 127.0.0.1', '2021-11-11 22:34:30'),
(432, 'login success vistied 127.0.0.1', '2021-11-11 22:34:30'),
(433, 'users page visited127.0.0.1', '2021-11-11 22:34:33'),
(434, 'users page visited127.0.0.1', '2021-11-11 22:34:49'),
(435, 'users page visited127.0.0.1', '2021-11-11 22:36:08'),
(436, 'users page visited127.0.0.1', '2021-11-11 22:36:26'),
(437, 'users page visited127.0.0.1', '2021-11-11 22:36:38'),
(438, 'users page visited127.0.0.1', '2021-11-11 22:36:41'),
(439, 'users page visited127.0.0.1', '2021-11-11 22:37:01'),
(440, 'users page visited127.0.0.1', '2021-11-11 22:37:06'),
(441, 'users page visited127.0.0.1', '2021-11-11 22:37:16'),
(442, 'users page visited127.0.0.1', '2021-11-11 22:37:20'),
(443, 'users page visited127.0.0.1', '2021-11-11 22:37:28'),
(444, 'users page visited127.0.0.1', '2021-11-11 22:37:47'),
(445, 'users page visited127.0.0.1', '2021-11-11 22:38:07'),
(446, 'users page visited127.0.0.1', '2021-11-11 22:38:12'),
(447, 'users page visited127.0.0.1', '2021-11-11 22:38:19'),
(448, 'users page visited127.0.0.1', '2021-11-11 22:39:11'),
(449, 'users page visited127.0.0.1', '2021-11-11 22:39:25'),
(450, 'users page visited127.0.0.1', '2021-11-11 22:39:35'),
(451, 'users page visited127.0.0.1', '2021-11-11 22:40:07'),
(452, 'users page visited127.0.0.1', '2021-11-11 22:40:25'),
(453, 'users page visited127.0.0.1', '2021-11-11 22:40:50'),
(454, 'users page visited127.0.0.1', '2021-11-11 22:41:01'),
(455, 'users page visited127.0.0.1', '2021-11-11 22:41:12'),
(456, 'users page visited127.0.0.1', '2021-11-11 22:41:50'),
(457, 'users page visited127.0.0.1', '2021-11-11 22:47:27'),
(458, 'users page visited127.0.0.1', '2021-11-11 22:48:08'),
(459, 'users page visited127.0.0.1', '2021-11-11 22:48:10'),
(460, 'users page visited127.0.0.1', '2021-11-11 22:48:24'),
(461, 'users page visited127.0.0.1', '2021-11-11 22:48:25'),
(462, 'users page visited127.0.0.1', '2021-11-11 22:48:25'),
(463, 'users page visited127.0.0.1', '2021-11-11 22:48:25'),
(464, 'users page visited127.0.0.1', '2021-11-11 22:48:34'),
(465, 'users page visited127.0.0.1', '2021-11-11 22:48:47'),
(466, 'users page visited127.0.0.1', '2021-11-11 22:48:48'),
(467, 'users page visited127.0.0.1', '2021-11-11 22:48:51'),
(468, 'users page visited127.0.0.1', '2021-11-11 22:51:54'),
(469, 'users page visited127.0.0.1', '2021-11-11 22:51:57'),
(470, 'users page visited127.0.0.1', '2021-11-11 22:52:01'),
(471, 'users page visited127.0.0.1', '2021-11-11 22:52:15'),
(472, 'users page visited127.0.0.1', '2021-11-11 22:52:38'),
(473, 'users page visited127.0.0.1', '2021-11-11 22:52:39'),
(474, 'users page visited127.0.0.1', '2021-11-11 22:52:39'),
(475, 'users page visited127.0.0.1', '2021-11-11 22:52:39'),
(476, 'users page visited127.0.0.1', '2021-11-11 22:52:39'),
(477, 'users page visited127.0.0.1', '2021-11-11 22:52:39'),
(478, 'users page visited127.0.0.1', '2021-11-11 22:52:49'),
(479, 'users page visited127.0.0.1', '2021-11-11 22:53:01'),
(480, 'users page visited127.0.0.1', '2021-11-11 22:53:06'),
(481, 'users page visited127.0.0.1', '2021-11-11 22:53:07'),
(482, 'users page visited127.0.0.1', '2021-11-11 22:53:08'),
(483, 'users page visited127.0.0.1', '2021-11-11 22:53:09'),
(484, 'users page visited127.0.0.1', '2021-11-11 22:53:34'),
(485, 'users page visited127.0.0.1', '2021-11-11 22:53:39'),
(486, 'users page visited127.0.0.1', '2021-11-11 22:53:45'),
(487, 'users page visited127.0.0.1', '2021-11-11 22:54:28'),
(488, 'users page visited127.0.0.1', '2021-11-11 22:55:06'),
(489, 'users page visited127.0.0.1', '2021-11-11 22:55:39'),
(490, 'users page visited127.0.0.1', '2021-11-11 22:57:56'),
(491, 'users page visited127.0.0.1', '2021-11-11 23:01:32'),
(492, 'users page visited127.0.0.1', '2021-11-11 23:02:11'),
(493, 'users page visited127.0.0.1', '2021-11-11 23:03:55'),
(494, 'users page visited127.0.0.1', '2021-11-11 23:04:18'),
(495, 'users page visited127.0.0.1', '2021-11-11 23:04:38'),
(496, 'users page visited127.0.0.1', '2021-11-11 23:05:49'),
(497, 'users page visited127.0.0.1', '2021-11-11 23:06:10'),
(498, 'users page visited127.0.0.1', '2021-11-11 23:07:09'),
(499, 'users page visited127.0.0.1', '2021-11-11 23:07:16'),
(500, 'users page visited127.0.0.1', '2021-11-11 23:08:45'),
(501, 'users page visited127.0.0.1', '2021-11-11 23:08:47'),
(502, 'users page visited127.0.0.1', '2021-11-11 23:08:49'),
(503, 'users page visited127.0.0.1', '2021-11-11 23:08:49'),
(504, 'users page visited127.0.0.1', '2021-11-11 23:08:49'),
(505, 'users page visited127.0.0.1', '2021-11-11 23:08:50'),
(506, 'users page visited127.0.0.1', '2021-11-11 23:08:51'),
(507, 'users page visited127.0.0.1', '2021-11-11 23:08:51'),
(508, 'users page visited127.0.0.1', '2021-11-11 23:08:52'),
(509, 'users page visited127.0.0.1', '2021-11-11 23:08:52'),
(510, 'users page visited127.0.0.1', '2021-11-11 23:08:52'),
(511, 'users page visited127.0.0.1', '2021-11-11 23:08:52'),
(512, 'users page visited127.0.0.1', '2021-11-11 23:08:52'),
(513, 'users page visited127.0.0.1', '2021-11-11 23:08:52'),
(514, 'users page visited127.0.0.1', '2021-11-11 23:08:53'),
(515, 'users page visited127.0.0.1', '2021-11-11 23:08:53'),
(516, 'users page visited127.0.0.1', '2021-11-11 23:08:53'),
(517, 'users page visited127.0.0.1', '2021-11-11 23:08:54'),
(518, 'users page visited127.0.0.1', '2021-11-11 23:08:54'),
(519, 'users page visited127.0.0.1', '2021-11-11 23:08:55'),
(520, 'users page visited127.0.0.1', '2021-11-11 23:09:00'),
(521, 'users page visited127.0.0.1', '2021-11-11 23:09:02'),
(522, 'users page visited127.0.0.1', '2021-11-11 23:09:04'),
(523, 'users page visited127.0.0.1', '2021-11-11 23:09:04'),
(524, 'users page visited127.0.0.1', '2021-11-11 23:09:05'),
(525, 'users page visited127.0.0.1', '2021-11-11 23:09:05'),
(526, 'users page visited127.0.0.1', '2021-11-11 23:09:05'),
(527, 'users page visited127.0.0.1', '2021-11-11 23:09:05'),
(528, 'users page visited127.0.0.1', '2021-11-11 23:09:05'),
(529, 'users page visited127.0.0.1', '2021-11-11 23:09:06'),
(530, 'users page visited127.0.0.1', '2021-11-11 23:09:06'),
(531, 'users page visited127.0.0.1', '2021-11-11 23:09:06'),
(532, 'users page visited127.0.0.1', '2021-11-11 23:09:06'),
(533, 'users page visited127.0.0.1', '2021-11-11 23:09:07'),
(534, 'users page visited127.0.0.1', '2021-11-11 23:09:07'),
(535, 'users page visited127.0.0.1', '2021-11-11 23:09:07'),
(536, 'users page visited127.0.0.1', '2021-11-11 23:09:07'),
(537, 'users page visited127.0.0.1', '2021-11-11 23:09:07'),
(538, 'users page visited127.0.0.1', '2021-11-11 23:09:08'),
(539, 'users page visited127.0.0.1', '2021-11-11 23:09:08'),
(540, 'users page visited127.0.0.1', '2021-11-11 23:09:46'),
(541, 'users page visited127.0.0.1', '2021-11-11 23:09:48'),
(542, 'users page visited127.0.0.1', '2021-11-11 23:09:49'),
(543, 'users page visited127.0.0.1', '2021-11-11 23:10:09'),
(544, 'users page visited127.0.0.1', '2021-11-11 23:10:35'),
(545, 'users page visited127.0.0.1', '2021-11-11 23:12:39'),
(546, 'users page visited127.0.0.1', '2021-11-11 23:13:04'),
(547, 'users page visited127.0.0.1', '2021-11-11 23:13:36'),
(548, 'users page visited127.0.0.1', '2021-11-11 23:13:45'),
(549, 'users page visited127.0.0.1', '2021-11-11 23:14:19'),
(550, 'users page visited127.0.0.1', '2021-11-11 23:14:35'),
(551, 'users page visited127.0.0.1', '2021-11-11 23:15:07'),
(552, 'users page visited127.0.0.1', '2021-11-11 23:15:39'),
(553, 'users page visited127.0.0.1', '2021-11-11 23:16:00'),
(554, 'users page visited127.0.0.1', '2021-11-11 23:17:59'),
(555, 'users page visited127.0.0.1', '2021-11-11 23:18:55'),
(556, 'users page visited127.0.0.1', '2021-11-11 23:18:57'),
(557, 'users page visited127.0.0.1', '2021-11-11 23:19:29'),
(558, 'users page visited127.0.0.1', '2021-11-11 23:28:20'),
(559, 'users page visited127.0.0.1', '2021-11-11 23:29:02'),
(560, 'users page visited127.0.0.1', '2021-11-11 23:29:19'),
(561, 'users page visited127.0.0.1', '2021-11-11 23:29:19'),
(562, 'users page visited127.0.0.1', '2021-11-11 23:31:16'),
(563, 'users page visited127.0.0.1', '2021-11-11 23:35:41'),
(564, 'users page visited127.0.0.1', '2021-11-11 23:35:45'),
(565, 'users page visited127.0.0.1', '2021-11-11 23:35:45'),
(566, 'users page visited127.0.0.1', '2021-11-11 23:37:10'),
(567, 'users page visited127.0.0.1', '2021-11-11 23:38:34'),
(568, 'users page visited127.0.0.1', '2021-11-11 23:38:41'),
(569, 'users page visited127.0.0.1', '2021-11-11 23:38:41'),
(570, 'users page visited127.0.0.1', '2021-11-11 23:39:10'),
(571, 'users page visited127.0.0.1', '2021-11-11 23:39:43'),
(572, 'users page visited127.0.0.1', '2021-11-11 23:39:49'),
(573, 'users page visited127.0.0.1', '2021-11-11 23:44:27'),
(574, 'users page visited127.0.0.1', '2021-11-11 23:44:32'),
(575, 'users page visited127.0.0.1', '2021-11-11 23:44:35'),
(576, 'users page visited127.0.0.1', '2021-11-11 23:45:41'),
(577, 'users page visited127.0.0.1', '2021-11-11 23:45:48'),
(578, 'users page visited127.0.0.1', '2021-11-11 23:45:48'),
(579, 'users page visited127.0.0.1', '2021-11-11 23:45:53'),
(580, 'users page visited127.0.0.1', '2021-11-11 23:46:05'),
(581, 'users page visited127.0.0.1', '2021-11-11 23:46:05'),
(582, 'users page visited127.0.0.1', '2021-11-11 23:46:42'),
(583, 'users page visited127.0.0.1', '2021-11-11 23:47:20'),
(584, 'users page visited127.0.0.1', '2021-11-11 23:47:28'),
(585, 'users page visited127.0.0.1', '2021-11-11 23:48:25'),
(586, 'users page visited127.0.0.1', '2021-11-11 23:49:37'),
(587, 'users page visited127.0.0.1', '2021-11-11 23:50:09'),
(588, 'users page visited127.0.0.1', '2021-11-11 23:53:19'),
(589, 'users page visited127.0.0.1', '2021-11-11 23:53:52'),
(590, 'users page visited127.0.0.1', '2021-11-11 23:58:32'),
(591, 'users page visited127.0.0.1', '2021-11-11 23:58:45'),
(592, 'users page visited127.0.0.1', '2021-11-11 23:59:44'),
(593, 'users page visited127.0.0.1', '2021-11-12 00:46:16'),
(594, 'users page visited127.0.0.1', '2021-11-12 00:46:19'),
(595, 'users page visited127.0.0.1', '2021-11-12 00:46:48'),
(596, 'users page visited127.0.0.1', '2021-11-12 00:46:53'),
(597, 'users page visited127.0.0.1', '2021-11-12 00:46:59'),
(598, 'users page visited127.0.0.1', '2021-11-12 00:47:07'),
(599, 'users page visited127.0.0.1', '2021-11-12 01:18:05'),
(600, 'users page visited127.0.0.1', '2021-11-12 01:18:13'),
(601, 'users page visited127.0.0.1', '2021-11-12 01:18:51'),
(602, 'users page visited127.0.0.1', '2021-11-12 01:20:15'),
(603, 'users page visited127.0.0.1', '2021-11-12 01:22:31'),
(604, 'users page visited127.0.0.1', '2021-11-12 01:22:56'),
(605, 'users page visited127.0.0.1', '2021-11-12 01:23:12'),
(606, 'users page visited127.0.0.1', '2021-11-12 01:23:13'),
(607, 'users page visited127.0.0.1', '2021-11-12 01:23:13'),
(608, 'users page visited127.0.0.1', '2021-11-12 01:27:24'),
(609, 'users page visited127.0.0.1', '2021-11-12 01:27:26'),
(610, 'users page visited127.0.0.1', '2021-11-12 01:27:37'),
(611, 'users page visited127.0.0.1', '2021-11-12 01:28:03'),
(612, 'users page visited127.0.0.1', '2021-11-12 01:28:19'),
(613, 'users page visited127.0.0.1', '2021-11-12 01:28:22'),
(614, 'users page visited127.0.0.1', '2021-11-12 01:28:31'),
(615, 'users page visited127.0.0.1', '2021-11-12 01:29:13'),
(616, 'users page visited127.0.0.1', '2021-11-12 01:29:33'),
(617, 'users page visited127.0.0.1', '2021-11-12 01:31:52'),
(618, 'users page visited127.0.0.1', '2021-11-12 01:32:14'),
(619, 'users page visited127.0.0.1', '2021-11-12 01:34:47'),
(620, 'users page visited127.0.0.1', '2021-11-12 01:35:04'),
(621, 'users page visited127.0.0.1', '2021-11-12 01:35:04'),
(622, 'users page visited127.0.0.1', '2021-11-12 01:35:29'),
(623, 'users page visited127.0.0.1', '2021-11-12 01:35:31'),
(624, 'users page visited127.0.0.1', '2021-11-12 01:35:42'),
(625, 'users page visited127.0.0.1', '2021-11-12 01:35:42'),
(626, 'users page visited127.0.0.1', '2021-11-12 01:37:10'),
(627, 'users page visited127.0.0.1', '2021-11-12 01:37:14'),
(628, 'users page visited127.0.0.1', '2021-11-12 01:37:21'),
(629, 'users page visited127.0.0.1', '2021-11-12 01:37:22'),
(630, 'users page visited127.0.0.1', '2021-11-12 01:37:30'),
(631, 'users page visited127.0.0.1', '2021-11-12 01:37:36'),
(632, 'users page visited127.0.0.1', '2021-11-12 01:37:40'),
(633, 'users page visited127.0.0.1', '2021-11-12 01:37:40'),
(634, 'users page visited127.0.0.1', '2021-11-12 01:37:50'),
(635, 'users page visited127.0.0.1', '2021-11-12 01:37:54'),
(636, 'users page visited127.0.0.1', '2021-11-12 01:37:54'),
(637, 'users page visited127.0.0.1', '2021-11-12 01:38:03'),
(638, 'users page visited127.0.0.1', '2021-11-12 01:38:06'),
(639, 'users page visited127.0.0.1', '2021-11-12 01:38:06'),
(640, 'users page visited127.0.0.1', '2021-11-12 01:38:08'),
(641, 'users page visited127.0.0.1', '2021-11-12 01:39:32'),
(642, 'users page visited127.0.0.1', '2021-11-12 01:39:35'),
(643, 'users page visited127.0.0.1', '2021-11-12 01:39:36'),
(644, 'users page visited127.0.0.1', '2021-11-12 01:39:38'),
(645, 'users page visited127.0.0.1', '2021-11-12 01:39:39'),
(646, 'users page visited127.0.0.1', '2021-11-12 01:39:42'),
(647, 'users page visited127.0.0.1', '2021-11-12 01:39:45'),
(648, 'users page visited127.0.0.1', '2021-11-12 01:39:47'),
(649, 'users page visited127.0.0.1', '2021-11-12 01:39:47'),
(650, 'users page visited127.0.0.1', '2021-11-12 01:40:21'),
(651, 'users page visited127.0.0.1', '2021-11-12 01:42:12'),
(652, 'users page visited127.0.0.1', '2021-11-12 01:42:14'),
(653, 'users page visited127.0.0.1', '2021-11-12 01:42:16'),
(654, 'users page visited127.0.0.1', '2021-11-12 01:42:16'),
(655, 'users page visited127.0.0.1', '2021-11-12 01:42:23'),
(656, 'users page visited127.0.0.1', '2021-11-12 01:42:27'),
(657, 'users page visited127.0.0.1', '2021-11-12 01:42:29'),
(658, 'users page visited127.0.0.1', '2021-11-12 01:42:31'),
(659, 'users page visited127.0.0.1', '2021-11-12 01:42:33'),
(660, 'users page visited127.0.0.1', '2021-11-12 01:42:43'),
(661, 'users page visited127.0.0.1', '2021-11-12 01:42:46'),
(662, 'users page visited127.0.0.1', '2021-11-12 01:42:47'),
(663, 'users page visited127.0.0.1', '2021-11-12 01:42:49'),
(664, 'users page visited127.0.0.1', '2021-11-12 01:42:51'),
(665, 'users page visited127.0.0.1', '2021-11-12 01:42:53'),
(666, 'users page visited127.0.0.1', '2021-11-12 01:42:56'),
(667, 'users page visited127.0.0.1', '2021-11-12 01:42:58'),
(668, 'users page visited127.0.0.1', '2021-11-12 01:50:05'),
(669, 'users page visited127.0.0.1', '2021-11-12 01:53:43'),
(670, 'users page visited127.0.0.1', '2021-11-12 01:53:47'),
(671, 'users page visited127.0.0.1', '2021-11-12 01:53:47'),
(672, 'users page visited127.0.0.1', '2021-11-12 01:54:03'),
(673, 'users page visited127.0.0.1', '2021-11-12 01:54:06'),
(674, 'users page visited127.0.0.1', '2021-11-12 01:54:38'),
(675, 'users page visited127.0.0.1', '2021-11-12 01:54:41'),
(676, 'users page visited127.0.0.1', '2021-11-12 01:54:41'),
(677, 'users page visited127.0.0.1', '2021-11-12 01:55:02'),
(678, 'users page visited127.0.0.1', '2021-11-12 01:55:53'),
(679, 'users page visited127.0.0.1', '2021-11-12 01:56:06'),
(680, 'users page visited127.0.0.1', '2021-11-12 01:56:30'),
(681, 'users page visited127.0.0.1', '2021-11-12 01:57:00'),
(682, 'users page visited127.0.0.1', '2021-11-12 01:57:35'),
(683, 'users page visited127.0.0.1', '2021-11-12 01:58:02'),
(684, 'users page visited127.0.0.1', '2021-11-12 01:58:19'),
(685, 'users page visited127.0.0.1', '2021-11-12 01:58:21'),
(686, 'users page visited127.0.0.1', '2021-11-12 01:58:51'),
(687, 'users page visited127.0.0.1', '2021-11-12 01:58:58'),
(688, 'users page visited127.0.0.1', '2021-11-12 01:58:58'),
(689, 'users page visited127.0.0.1', '2021-11-12 02:01:09'),
(690, 'users page visited127.0.0.1', '2021-11-12 02:01:29'),
(691, 'users page visited127.0.0.1', '2021-11-12 02:01:32'),
(692, 'users page visited127.0.0.1', '2021-11-12 02:01:40'),
(693, 'users page visited127.0.0.1', '2021-11-12 02:01:42'),
(694, 'users page visited127.0.0.1', '2021-11-12 02:02:21'),
(695, 'users page visited127.0.0.1', '2021-11-12 02:02:22'),
(696, 'users page visited127.0.0.1', '2021-11-12 02:02:51'),
(697, 'users page visited127.0.0.1', '2021-11-12 02:02:55'),
(698, 'users page visited127.0.0.1', '2021-11-12 02:03:04'),
(699, 'users page visited127.0.0.1', '2021-11-12 02:04:27'),
(700, 'users page visited127.0.0.1', '2021-11-12 02:04:36'),
(701, 'users page visited127.0.0.1', '2021-11-12 02:07:56'),
(702, 'users page visited127.0.0.1', '2021-11-12 02:08:01'),
(703, 'users page visited127.0.0.1', '2021-11-12 02:08:02'),
(704, 'users page visited127.0.0.1', '2021-11-12 02:08:03'),
(705, 'users page visited127.0.0.1', '2021-11-12 02:08:04'),
(706, 'users page visited127.0.0.1', '2021-11-12 02:09:48'),
(707, 'users page visited127.0.0.1', '2021-11-12 02:09:54'),
(708, 'users page visited127.0.0.1', '2021-11-12 02:11:23'),
(709, 'users page visited127.0.0.1', '2021-11-12 02:12:02'),
(710, 'users page visited127.0.0.1', '2021-11-12 02:19:19'),
(711, 'users page visited127.0.0.1', '2021-11-12 02:20:29'),
(712, 'users page visited127.0.0.1', '2021-11-12 02:20:36'),
(713, 'users page visited127.0.0.1', '2021-11-12 02:21:55'),
(714, 'users page visited127.0.0.1', '2021-11-12 02:22:25'),
(715, 'users page visited127.0.0.1', '2021-11-12 02:22:54'),
(716, 'users page visited127.0.0.1', '2021-11-12 02:23:03'),
(717, 'users page visited127.0.0.1', '2021-11-12 02:23:12'),
(718, 'users page visited127.0.0.1', '2021-11-12 02:23:32'),
(719, 'users page visited127.0.0.1', '2021-11-12 02:24:51'),
(720, 'users page visited127.0.0.1', '2021-11-12 02:25:18'),
(721, 'users page visited127.0.0.1', '2021-11-12 02:26:39'),
(722, 'users page visited127.0.0.1', '2021-11-12 02:33:26'),
(723, 'users page visited127.0.0.1', '2021-11-12 02:33:31'),
(724, 'users page visited127.0.0.1', '2021-11-12 02:33:31'),
(725, 'users page visited127.0.0.1', '2021-11-12 02:33:59'),
(726, 'users page visited127.0.0.1', '2021-11-12 02:34:08'),
(727, 'users page visited127.0.0.1', '2021-11-12 02:34:08'),
(728, 'users page visited127.0.0.1', '2021-11-12 02:43:26'),
(729, 'users page visited127.0.0.1', '2021-11-12 02:43:53'),
(730, 'users page visited127.0.0.1', '2021-11-12 02:44:50'),
(731, 'users page visited127.0.0.1', '2021-11-12 02:44:53'),
(732, 'users page visited127.0.0.1', '2021-11-12 02:44:54'),
(733, 'users page visited127.0.0.1', '2021-11-12 02:45:16'),
(734, 'users page visited127.0.0.1', '2021-11-12 02:45:19'),
(735, 'users page visited127.0.0.1', '2021-11-12 02:46:08'),
(736, 'users page visited127.0.0.1', '2021-11-12 02:46:10'),
(737, 'users page visited127.0.0.1', '2021-11-12 02:46:11'),
(738, 'users page visited127.0.0.1', '2021-11-12 02:46:20'),
(739, 'users page visited127.0.0.1', '2021-11-12 02:46:36'),
(740, 'users page visited127.0.0.1', '2021-11-12 02:46:36'),
(741, 'users page visited127.0.0.1', '2021-11-12 02:47:13'),
(742, 'users page visited127.0.0.1', '2021-11-12 02:47:13'),
(743, 'users page visited127.0.0.1', '2021-11-12 02:47:51'),
(744, 'users page visited127.0.0.1', '2021-11-12 02:47:51'),
(745, 'users page visited127.0.0.1', '2021-11-12 02:48:20'),
(746, 'users page visited127.0.0.1', '2021-11-12 02:48:20'),
(747, 'users page visited127.0.0.1', '2021-11-12 02:48:47'),
(748, 'users page visited127.0.0.1', '2021-11-12 02:48:48'),
(749, 'users page visited127.0.0.1', '2021-11-12 02:54:39'),
(750, 'users page visited127.0.0.1', '2021-11-12 02:54:52'),
(751, 'users page visited127.0.0.1', '2021-11-12 02:55:47'),
(752, 'users page visited127.0.0.1', '2021-11-12 02:55:50'),
(753, 'users page visited127.0.0.1', '2021-11-12 02:56:08'),
(754, 'users page visited127.0.0.1', '2021-11-12 02:56:11'),
(755, 'users page visited127.0.0.1', '2021-11-12 02:56:32'),
(756, 'users page visited127.0.0.1', '2021-11-12 02:56:55'),
(757, 'users page visited127.0.0.1', '2021-11-12 02:57:09'),
(758, 'users page visited127.0.0.1', '2021-11-12 02:57:12'),
(759, 'users page visited127.0.0.1', '2021-11-12 02:57:12'),
(760, 'users page visited127.0.0.1', '2021-11-12 03:00:34'),
(761, 'users page visited127.0.0.1', '2021-11-12 03:01:32'),
(762, 'users page visited127.0.0.1', '2021-11-12 03:01:43'),
(763, 'users page visited127.0.0.1', '2021-11-12 03:01:49'),
(764, 'users page visited127.0.0.1', '2021-11-12 03:02:04'),
(765, 'users page visited127.0.0.1', '2021-11-12 03:02:35'),
(766, 'users page visited127.0.0.1', '2021-11-12 03:02:38'),
(767, 'users page visited127.0.0.1', '2021-11-12 03:02:47'),
(768, 'users page visited127.0.0.1', '2021-11-12 03:02:50'),
(769, 'users page visited127.0.0.1', '2021-11-12 03:02:50'),
(770, 'users page visited127.0.0.1', '2021-11-12 03:04:13'),
(771, 'users page visited127.0.0.1', '2021-11-12 03:04:24'),
(772, 'users page visited127.0.0.1', '2021-11-12 03:05:03'),
(773, 'users page visited127.0.0.1', '2021-11-12 03:05:09'),
(774, 'users page visited127.0.0.1', '2021-11-12 03:05:09'),
(775, 'users page visited127.0.0.1', '2021-11-12 03:06:08'),
(776, 'users page visited127.0.0.1', '2021-11-12 03:06:18'),
(777, 'users page visited127.0.0.1', '2021-11-12 03:08:07'),
(778, 'users page visited127.0.0.1', '2021-11-12 03:08:13'),
(779, 'users page visited127.0.0.1', '2021-11-12 03:09:08'),
(780, 'users page visited127.0.0.1', '2021-11-12 03:09:28'),
(781, 'users page visited127.0.0.1', '2021-11-12 03:09:51'),
(782, 'users page visited127.0.0.1', '2021-11-12 03:10:07'),
(783, 'users page visited127.0.0.1', '2021-11-12 03:10:11'),
(784, 'users page visited127.0.0.1', '2021-11-12 03:11:19'),
(785, 'users page visited127.0.0.1', '2021-11-12 03:11:22'),
(786, 'users page visited127.0.0.1', '2021-11-12 03:12:31'),
(787, 'users page visited127.0.0.1', '2021-11-12 03:12:35'),
(788, 'users page visited127.0.0.1', '2021-11-12 03:12:57'),
(789, 'users page visited127.0.0.1', '2021-11-12 03:13:01'),
(790, 'users page visited127.0.0.1', '2021-11-12 03:13:01'),
(791, 'users page visited127.0.0.1', '2021-11-12 03:13:18'),
(792, 'users page visited127.0.0.1', '2021-11-12 03:13:18'),
(793, 'users page visited127.0.0.1', '2021-11-12 03:13:35'),
(794, 'users page visited127.0.0.1', '2021-11-12 03:13:42'),
(795, 'users page visited127.0.0.1', '2021-11-12 03:13:42'),
(796, 'users page visited127.0.0.1', '2021-11-12 03:14:24'),
(797, 'users page visited127.0.0.1', '2021-11-12 03:14:30'),
(798, 'users page visited127.0.0.1', '2021-11-12 03:14:33'),
(799, 'users page visited127.0.0.1', '2021-11-12 03:14:51'),
(800, 'users page visited127.0.0.1', '2021-11-12 03:15:02'),
(801, 'users page visited127.0.0.1', '2021-11-12 03:15:39'),
(802, 'users page visited127.0.0.1', '2021-11-12 03:17:47'),
(803, 'users page visited127.0.0.1', '2021-11-12 03:17:48'),
(804, 'users page visited127.0.0.1', '2021-11-12 03:22:07'),
(805, 'users page visited127.0.0.1', '2021-11-12 03:22:45'),
(806, 'users page visited127.0.0.1', '2021-11-12 03:22:57'),
(807, 'users page visited127.0.0.1', '2021-11-12 03:23:05'),
(808, 'users page visited127.0.0.1', '2021-11-12 03:23:21'),
(809, 'users page visited127.0.0.1', '2021-11-12 03:23:46'),
(810, 'users page visited127.0.0.1', '2021-11-12 03:23:59'),
(811, 'users page visited127.0.0.1', '2021-11-12 03:24:29'),
(812, 'users page visited127.0.0.1', '2021-11-12 03:24:46'),
(813, 'users page visited127.0.0.1', '2021-11-12 03:25:20'),
(814, 'users page visited127.0.0.1', '2021-11-12 03:25:34'),
(815, 'users page visited127.0.0.1', '2021-11-12 03:25:42'),
(816, 'users page visited127.0.0.1', '2021-11-12 03:25:48'),
(817, 'users page visited127.0.0.1', '2021-11-12 03:26:44'),
(818, 'users page visited127.0.0.1', '2021-11-12 03:26:46'),
(819, 'users page visited127.0.0.1', '2021-11-12 03:27:38'),
(820, 'users page visited127.0.0.1', '2021-11-12 03:27:58'),
(821, 'users page visited127.0.0.1', '2021-11-12 03:28:16'),
(822, 'users page visited127.0.0.1', '2021-11-12 03:28:24'),
(823, 'users page visited127.0.0.1', '2021-11-12 03:28:44'),
(824, 'users page visited127.0.0.1', '2021-11-12 03:29:17'),
(825, 'users page visited127.0.0.1', '2021-11-12 03:29:44'),
(826, 'users page visited127.0.0.1', '2021-11-12 03:31:07'),
(827, 'users page visited127.0.0.1', '2021-11-12 03:51:50'),
(828, 'users page visited127.0.0.1', '2021-11-12 03:52:06'),
(829, 'users page visited127.0.0.1', '2021-11-12 03:52:06'),
(830, 'users page visited127.0.0.1', '2021-11-12 03:52:32'),
(831, 'users page visited127.0.0.1', '2021-11-12 03:52:37'),
(832, 'users page visited127.0.0.1', '2021-11-12 03:53:26'),
(833, 'users page visited127.0.0.1', '2021-11-12 03:53:29'),
(834, 'users page visited127.0.0.1', '2021-11-12 03:53:32'),
(835, 'users page visited127.0.0.1', '2021-11-12 03:54:19'),
(836, 'users page visited127.0.0.1', '2021-11-12 03:54:26'),
(837, 'users page visited127.0.0.1', '2021-11-12 03:54:48'),
(838, 'users page visited127.0.0.1', '2021-11-12 03:54:54'),
(839, 'users page visited127.0.0.1', '2021-11-12 03:55:36'),
(840, 'users page visited127.0.0.1', '2021-11-12 03:55:44'),
(841, 'users page visited127.0.0.1', '2021-11-12 03:56:56'),
(842, 'users page visited127.0.0.1', '2021-11-12 03:57:02'),
(843, 'users page visited127.0.0.1', '2021-11-12 03:57:02'),
(844, 'users page visited127.0.0.1', '2021-11-12 03:57:52'),
(845, 'users page visited127.0.0.1', '2021-11-12 03:58:04'),
(846, 'users page visited127.0.0.1', '2021-11-12 03:58:04'),
(847, 'users page visited127.0.0.1', '2021-11-12 03:59:11');
INSERT INTO `login_activity` (`id`, `comment`, `date_time`) VALUES
(848, 'users page visited127.0.0.1', '2021-11-12 04:00:30'),
(849, 'users page visited127.0.0.1', '2021-11-12 04:01:03'),
(850, 'users page visited127.0.0.1', '2021-11-12 04:01:28'),
(851, 'users page visited127.0.0.1', '2021-11-12 04:01:31'),
(852, 'users page visited127.0.0.1', '2021-11-12 04:01:42'),
(853, 'users page visited127.0.0.1', '2021-11-12 04:02:10'),
(854, 'users page visited127.0.0.1', '2021-11-12 04:02:32'),
(855, 'users page visited127.0.0.1', '2021-11-12 04:02:32'),
(856, 'users page visited127.0.0.1', '2021-11-12 04:02:56'),
(857, 'users page visited127.0.0.1', '2021-11-12 04:04:27'),
(858, 'users page visited127.0.0.1', '2021-11-12 04:04:30'),
(859, 'users page visited127.0.0.1', '2021-11-12 04:04:39'),
(860, 'users page visited127.0.0.1', '2021-11-12 04:05:22'),
(861, 'users page visited127.0.0.1', '2021-11-12 04:05:29'),
(862, 'users page visited127.0.0.1', '2021-11-12 04:05:59'),
(863, 'users page visited127.0.0.1', '2021-11-12 04:06:08'),
(864, 'users page visited127.0.0.1', '2021-11-12 04:06:38'),
(865, 'users page visited127.0.0.1', '2021-11-12 04:06:44'),
(866, 'users page visited127.0.0.1', '2021-11-12 04:07:20'),
(867, 'users page visited127.0.0.1', '2021-11-12 04:07:42'),
(868, 'users page visited127.0.0.1', '2021-11-12 04:09:08'),
(869, 'users page visited127.0.0.1', '2021-11-12 04:09:43'),
(870, 'users page visited127.0.0.1', '2021-11-12 04:11:15'),
(871, 'users page visited127.0.0.1', '2021-11-12 04:16:15'),
(872, 'users page visited127.0.0.1', '2021-11-12 04:16:18'),
(873, 'users page visited127.0.0.1', '2021-11-12 04:16:18'),
(874, 'users page visited127.0.0.1', '2021-11-12 04:16:25'),
(875, 'users page visited127.0.0.1', '2021-11-12 04:19:39'),
(876, 'users page visited127.0.0.1', '2021-11-12 04:19:42'),
(877, 'users page visited127.0.0.1', '2021-11-12 04:19:42'),
(878, 'users page visited127.0.0.1', '2021-11-12 04:20:03'),
(879, 'users page visited127.0.0.1', '2021-11-12 04:20:06'),
(880, 'users page visited127.0.0.1', '2021-11-12 04:29:40'),
(881, 'users page visited127.0.0.1', '2021-11-12 04:29:42'),
(882, 'users page visited127.0.0.1', '2021-11-12 04:30:00'),
(883, 'users page visited127.0.0.1', '2021-11-12 04:30:04'),
(884, 'users page visited127.0.0.1', '2021-11-12 04:31:04'),
(885, 'users page visited127.0.0.1', '2021-11-12 04:37:08'),
(886, 'users page visited127.0.0.1', '2021-11-12 04:37:10'),
(887, 'users page visited127.0.0.1', '2021-11-12 04:38:47'),
(888, 'users page visited127.0.0.1', '2021-11-12 04:39:04'),
(889, 'users page visited127.0.0.1', '2021-11-12 04:39:06'),
(890, 'users page visited127.0.0.1', '2021-11-12 04:39:45'),
(891, 'users page visited127.0.0.1', '2021-11-12 04:40:29'),
(892, 'users page visited127.0.0.1', '2021-11-12 04:40:32'),
(893, 'users page visited127.0.0.1', '2021-11-12 04:40:51'),
(894, 'users page visited127.0.0.1', '2021-11-12 04:40:53'),
(895, 'users page visited127.0.0.1', '2021-11-12 04:41:33'),
(896, 'users page visited127.0.0.1', '2021-11-12 04:41:35'),
(897, 'users page visited127.0.0.1', '2021-11-12 04:42:05'),
(898, 'users page visited127.0.0.1', '2021-11-12 04:42:07'),
(899, 'users page visited127.0.0.1', '2021-11-12 04:43:12'),
(900, 'users page visited127.0.0.1', '2021-11-12 04:43:15'),
(901, 'users page visited127.0.0.1', '2021-11-12 04:43:15'),
(902, 'users page visited127.0.0.1', '2021-11-12 04:45:21'),
(903, 'users page visited127.0.0.1', '2021-11-12 04:45:27'),
(904, 'users page visited127.0.0.1', '2021-11-12 04:45:27'),
(905, 'users page visited127.0.0.1', '2021-11-12 04:45:53'),
(906, 'users page visited127.0.0.1', '2021-11-12 04:48:04'),
(907, 'users page visited127.0.0.1', '2021-11-12 04:48:05'),
(908, 'users page visited127.0.0.1', '2021-11-12 04:51:25'),
(909, 'users page visited127.0.0.1', '2021-11-12 04:51:59'),
(910, 'users page visited127.0.0.1', '2021-11-12 04:59:17'),
(911, 'users page visited127.0.0.1', '2021-11-12 04:59:50'),
(912, 'users page visited127.0.0.1', '2021-11-12 05:00:01'),
(913, 'users page visited127.0.0.1', '2021-11-12 05:00:26'),
(914, 'users page visited127.0.0.1', '2021-11-12 05:00:36'),
(915, 'users page visited127.0.0.1', '2021-11-12 05:00:48'),
(916, 'users page visited127.0.0.1', '2021-11-12 05:01:31'),
(917, 'users page visited127.0.0.1', '2021-11-12 05:02:09'),
(918, 'users page visited127.0.0.1', '2021-11-12 05:05:02'),
(919, 'users page visited127.0.0.1', '2021-11-12 05:05:10'),
(920, 'users page visited127.0.0.1', '2021-11-12 05:05:10'),
(921, 'users page visited127.0.0.1', '2021-11-12 05:08:02'),
(922, 'users page visited127.0.0.1', '2021-11-12 05:08:09'),
(923, 'users page visited127.0.0.1', '2021-11-12 05:08:09'),
(924, 'users page visited127.0.0.1', '2021-11-12 05:08:43'),
(925, 'users page visited127.0.0.1', '2021-11-12 05:09:04'),
(926, 'users page visited127.0.0.1', '2021-11-12 05:09:12'),
(927, 'users page visited127.0.0.1', '2021-11-12 05:09:12'),
(928, 'users page visited127.0.0.1', '2021-11-12 05:11:27'),
(929, 'users page visited127.0.0.1', '2021-11-12 05:11:40'),
(930, 'users page visited127.0.0.1', '2021-11-12 05:12:22'),
(931, 'users page visited127.0.0.1', '2021-11-12 05:14:28'),
(932, 'users page visited127.0.0.1', '2021-11-12 05:14:31'),
(933, 'users page visited127.0.0.1', '2021-11-12 05:14:31'),
(934, 'users page visited127.0.0.1', '2021-11-12 05:14:35'),
(935, 'users page visited127.0.0.1', '2021-11-12 05:24:52'),
(936, 'users page visited127.0.0.1', '2021-11-12 05:24:54'),
(937, 'users page visited127.0.0.1', '2021-11-12 05:26:30'),
(938, 'users page visited127.0.0.1', '2021-11-12 05:26:38'),
(939, 'users page visited127.0.0.1', '2021-11-12 05:26:46'),
(940, 'users page visited127.0.0.1', '2021-11-12 05:26:50'),
(941, 'users page visited127.0.0.1', '2021-11-12 05:26:53'),
(942, 'users page visited127.0.0.1', '2021-11-12 05:26:57'),
(943, 'users page visited127.0.0.1', '2021-11-12 05:27:01'),
(944, 'users page visited127.0.0.1', '2021-11-12 05:27:11'),
(945, 'users page visited127.0.0.1', '2021-11-12 05:27:28'),
(946, 'users page visited127.0.0.1', '2021-11-12 05:27:29'),
(947, 'users page visited127.0.0.1', '2021-11-12 05:27:30'),
(948, 'users page visited127.0.0.1', '2021-11-12 05:35:04'),
(949, 'users page visited127.0.0.1', '2021-11-12 05:35:20'),
(950, 'users page visited127.0.0.1', '2021-11-12 05:35:50'),
(951, 'users page visited127.0.0.1', '2021-11-12 05:35:52'),
(952, 'users page visited127.0.0.1', '2021-11-12 05:35:52'),
(953, 'users page visited127.0.0.1', '2021-11-12 05:35:54'),
(954, 'users page visited127.0.0.1', '2021-11-12 05:36:08'),
(955, 'users page visited127.0.0.1', '2021-11-12 05:36:21'),
(956, 'users page visited127.0.0.1', '2021-11-12 05:41:09'),
(957, 'users page visited127.0.0.1', '2021-11-12 05:41:37'),
(958, 'users page visited127.0.0.1', '2021-11-12 05:42:18'),
(959, 'users page visited127.0.0.1', '2021-11-12 05:44:23'),
(960, 'users page visited127.0.0.1', '2021-11-12 05:44:36'),
(961, 'users page visited127.0.0.1', '2021-11-12 05:48:02'),
(962, 'users page visited127.0.0.1', '2021-11-12 05:48:11'),
(963, 'users page visited127.0.0.1', '2021-11-12 05:48:47'),
(964, 'users page visited127.0.0.1', '2021-11-12 05:52:14'),
(965, 'users page visited127.0.0.1', '2021-11-12 05:52:29'),
(966, 'users page visited127.0.0.1', '2021-11-12 06:06:13'),
(967, 'users page visited127.0.0.1', '2021-11-12 06:09:25'),
(968, 'users page visited127.0.0.1', '2021-11-12 06:09:53'),
(969, 'users page visited127.0.0.1', '2021-11-12 06:10:01'),
(970, 'users page visited127.0.0.1', '2021-11-12 06:10:01'),
(971, 'users page visited127.0.0.1', '2021-11-12 06:11:43'),
(972, 'users page visited127.0.0.1', '2021-11-12 06:11:48'),
(973, 'users page visited127.0.0.1', '2021-11-12 06:12:03'),
(974, 'users page visited127.0.0.1', '2021-11-12 06:12:03'),
(975, 'users page visited127.0.0.1', '2021-11-12 20:42:05'),
(976, 'users page visited127.0.0.1', '2021-11-12 20:42:08'),
(977, 'users page visited127.0.0.1', '2021-11-12 20:42:26'),
(978, 'users page visited127.0.0.1', '2021-11-12 20:59:36'),
(979, 'users page visited127.0.0.1', '2021-11-12 21:00:15'),
(980, 'users page visited127.0.0.1', '2021-11-12 21:00:23'),
(981, 'users page visited127.0.0.1', '2021-11-12 21:00:37'),
(982, 'users page visited127.0.0.1', '2021-11-12 21:01:04'),
(983, 'users page visited127.0.0.1', '2021-11-12 21:01:12'),
(984, 'users page visited127.0.0.1', '2021-11-12 21:01:12'),
(985, 'users page visited127.0.0.1', '2021-11-12 21:16:05'),
(986, 'users page visited127.0.0.1', '2021-11-12 21:16:12'),
(987, 'users page visited127.0.0.1', '2021-11-12 21:16:23'),
(988, 'users page visited127.0.0.1', '2021-11-12 21:16:24'),
(989, 'users page visited127.0.0.1', '2021-11-12 21:17:55'),
(990, 'users page visited127.0.0.1', '2021-11-12 21:17:58'),
(991, 'users page visited127.0.0.1', '2021-11-12 21:18:09'),
(992, 'users page visited127.0.0.1', '2021-11-12 21:18:27'),
(993, 'users page visited127.0.0.1', '2021-11-12 21:19:04'),
(994, 'users page visited127.0.0.1', '2021-11-12 21:19:20'),
(995, 'users page visited127.0.0.1', '2021-11-12 21:20:24'),
(996, 'users page visited127.0.0.1', '2021-11-12 21:20:58'),
(997, 'users page visited127.0.0.1', '2021-11-12 21:22:24'),
(998, 'users page visited127.0.0.1', '2021-11-12 21:22:29'),
(999, 'users page visited127.0.0.1', '2021-11-12 21:22:29'),
(1000, 'users page visited127.0.0.1', '2021-11-12 21:22:33'),
(1001, 'users page visited127.0.0.1', '2021-11-12 21:23:12'),
(1002, 'users page visited127.0.0.1', '2021-11-12 21:23:15'),
(1003, 'users page visited127.0.0.1', '2021-11-12 21:23:15'),
(1004, 'users page visited127.0.0.1', '2021-11-12 21:24:49'),
(1005, 'users page visited127.0.0.1', '2021-11-12 21:25:31'),
(1006, 'users page visited127.0.0.1', '2021-11-12 21:25:35'),
(1007, 'users page visited127.0.0.1', '2021-11-12 21:25:50'),
(1008, 'users page visited127.0.0.1', '2021-11-12 21:25:50'),
(1009, 'users page visited127.0.0.1', '2021-11-12 21:26:24'),
(1010, 'users page visited127.0.0.1', '2021-11-12 21:26:34'),
(1011, 'users page visited127.0.0.1', '2021-11-12 21:26:50'),
(1012, 'users page visited127.0.0.1', '2021-11-12 21:30:02'),
(1013, 'users page visited127.0.0.1', '2021-11-12 21:30:04'),
(1014, 'users page visited127.0.0.1', '2021-11-12 21:31:39'),
(1015, 'users page visited127.0.0.1', '2021-11-12 21:31:58'),
(1016, 'users page visited127.0.0.1', '2021-11-12 21:32:27'),
(1017, 'users page visited127.0.0.1', '2021-11-12 21:33:25'),
(1018, 'users page visited127.0.0.1', '2021-11-12 21:33:45'),
(1019, 'users page visited127.0.0.1', '2021-11-12 21:34:12'),
(1020, 'users page visited127.0.0.1', '2021-11-12 21:34:49'),
(1021, 'users page visited127.0.0.1', '2021-11-12 21:35:16'),
(1022, 'users page visited127.0.0.1', '2021-11-12 21:35:54'),
(1023, 'users page visited127.0.0.1', '2021-11-12 21:36:19'),
(1024, 'users page visited127.0.0.1', '2021-11-12 21:37:07'),
(1025, 'users page visited127.0.0.1', '2021-11-12 21:49:49'),
(1026, 'users page visited127.0.0.1', '2021-11-12 21:50:22'),
(1027, 'users page visited127.0.0.1', '2021-11-12 21:56:32'),
(1028, 'users page visited127.0.0.1', '2021-11-12 21:56:39'),
(1029, 'users page visited127.0.0.1', '2021-11-12 21:56:39'),
(1030, 'users page visited127.0.0.1', '2021-11-12 21:57:06'),
(1031, 'users page visited127.0.0.1', '2021-11-12 22:01:33'),
(1032, 'users page visited127.0.0.1', '2021-11-12 22:20:22'),
(1033, 'users page visited127.0.0.1', '2021-11-12 22:20:38'),
(1034, 'users page visited127.0.0.1', '2021-11-12 22:20:48'),
(1035, 'users page visited127.0.0.1', '2021-11-12 22:21:00'),
(1036, 'users page visited127.0.0.1', '2021-11-12 22:21:02'),
(1037, 'users page visited127.0.0.1', '2021-11-12 22:21:28'),
(1038, 'users page visited127.0.0.1', '2021-11-12 22:22:11'),
(1039, 'users page visited127.0.0.1', '2021-11-12 22:32:06'),
(1040, 'users page visited127.0.0.1', '2021-11-12 22:35:07'),
(1041, 'users page visited127.0.0.1', '2021-11-12 22:35:10'),
(1042, 'users page visited127.0.0.1', '2021-11-12 22:36:39'),
(1043, 'users page visited127.0.0.1', '2021-11-12 22:36:42'),
(1044, 'users page visited127.0.0.1', '2021-11-12 22:36:42'),
(1045, 'users page visited127.0.0.1', '2021-11-12 22:37:03'),
(1046, 'users page visited127.0.0.1', '2021-11-12 22:37:14'),
(1047, 'users page visited127.0.0.1', '2021-11-12 22:37:14'),
(1048, 'users page visited127.0.0.1', '2021-11-12 22:38:55'),
(1049, 'users page visited127.0.0.1', '2021-11-12 22:38:57'),
(1050, 'users page visited127.0.0.1', '2021-11-12 22:39:27'),
(1051, 'users page visited127.0.0.1', '2021-11-12 22:41:35'),
(1052, 'users page visited127.0.0.1', '2021-11-12 22:42:04'),
(1053, 'users page visited127.0.0.1', '2021-11-12 22:42:38'),
(1054, 'users page visited127.0.0.1', '2021-11-12 22:43:04'),
(1055, 'users page visited127.0.0.1', '2021-11-12 22:43:39'),
(1056, 'users page visited127.0.0.1', '2021-11-12 22:43:49'),
(1057, 'users page visited127.0.0.1', '2021-11-12 22:44:04'),
(1058, 'users page visited127.0.0.1', '2021-11-12 22:44:17'),
(1059, 'users page visited127.0.0.1', '2021-11-12 22:44:47'),
(1060, 'users page visited127.0.0.1', '2021-11-12 23:09:48'),
(1061, 'users page visited127.0.0.1', '2021-11-12 23:09:54'),
(1062, 'users page visited127.0.0.1', '2021-11-12 23:09:54'),
(1063, 'users page visited127.0.0.1', '2021-11-12 23:09:58'),
(1064, 'users page visited127.0.0.1', '2021-11-12 23:10:13'),
(1065, 'users page visited127.0.0.1', '2021-11-12 23:10:18'),
(1066, 'users page visited127.0.0.1', '2021-11-12 23:10:38'),
(1067, 'users page visited127.0.0.1', '2021-11-12 23:10:41'),
(1068, 'users page visited127.0.0.1', '2021-11-12 23:10:41'),
(1069, 'users page visited127.0.0.1', '2021-11-12 23:11:22'),
(1070, 'users page visited127.0.0.1', '2021-11-12 23:12:20'),
(1071, 'users page visited127.0.0.1', '2021-11-12 23:12:32'),
(1072, 'users page visited127.0.0.1', '2021-11-12 23:12:32'),
(1073, 'users page visited127.0.0.1', '2021-11-12 23:16:27'),
(1074, 'users page visited127.0.0.1', '2021-11-12 23:16:31'),
(1075, 'users page visited127.0.0.1', '2021-11-12 23:16:31'),
(1076, 'users page visited127.0.0.1', '2021-11-12 23:16:55'),
(1077, 'admin url vistied 127.0.0.1', '2021-11-12 23:46:22'),
(1078, 'admin url vistied 127.0.0.1', '2021-11-12 23:46:29'),
(1079, 'admin url vistied 127.0.0.1', '2021-11-12 23:46:34'),
(1080, 'admin url vistied 127.0.0.1', '2021-11-12 23:46:36'),
(1081, 'admin url vistied 127.0.0.1', '2021-11-12 23:46:41'),
(1082, 'login form submit vistied 127.0.0.1', '2021-11-12 23:46:41'),
(1083, 'opt page vistied 127.0.0.1', '2021-11-12 23:46:41'),
(1084, 'opt page vistied 127.0.0.1', '2021-11-12 23:46:47'),
(1085, 'opt submit 127.0.0.1', '2021-11-12 23:46:47'),
(1086, 'login success vistied 127.0.0.1', '2021-11-12 23:46:47'),
(1087, 'opt page vistied 127.0.0.1', '2021-11-12 23:46:49'),
(1088, 'admin url vistied 127.0.0.1', '2021-11-12 23:46:49'),
(1089, 'admin url vistied 127.0.0.1', '2021-11-12 23:46:53'),
(1090, 'admin url vistied 127.0.0.1', '2021-11-12 23:50:35'),
(1091, 'admin url vistied 127.0.0.1', '2021-11-12 23:50:37'),
(1092, 'admin url vistied 127.0.0.1', '2021-11-12 23:50:56'),
(1093, 'admin url vistied 127.0.0.1', '2021-11-12 23:51:35'),
(1094, 'admin url vistied 127.0.0.1', '2021-11-12 23:51:44'),
(1095, 'admin url vistied 127.0.0.1', '2021-11-12 23:52:23'),
(1096, 'admin url vistied 127.0.0.1', '2021-11-12 23:52:25'),
(1097, 'admin url vistied 127.0.0.1', '2021-11-12 23:53:12'),
(1098, 'admin url vistied 127.0.0.1', '2021-11-12 23:53:59'),
(1099, 'admin url vistied 127.0.0.1', '2021-11-12 23:54:06'),
(1100, 'admin url vistied 127.0.0.1', '2021-11-12 23:54:39'),
(1101, 'admin url vistied 127.0.0.1', '2021-11-12 23:54:44'),
(1102, 'admin url vistied 127.0.0.1', '2021-11-12 23:55:34'),
(1103, 'admin url vistied 127.0.0.1', '2021-11-12 23:55:43'),
(1104, 'admin url vistied 127.0.0.1', '2021-11-12 23:55:59'),
(1105, 'admin url vistied 127.0.0.1', '2021-11-12 23:57:17'),
(1106, 'admin url vistied 127.0.0.1', '2021-11-12 23:57:35'),
(1107, 'admin url vistied 127.0.0.1', '2021-11-12 23:57:52'),
(1108, 'admin url vistied 127.0.0.1', '2021-11-12 23:58:23'),
(1109, 'admin url vistied 127.0.0.1', '2021-11-12 23:58:36'),
(1110, 'admin url vistied 127.0.0.1', '2021-11-12 23:59:03'),
(1111, 'admin url vistied 127.0.0.1', '2021-11-13 00:01:09'),
(1112, 'admin url vistied 127.0.0.1', '2021-11-13 00:02:08'),
(1113, 'admin url vistied 127.0.0.1', '2021-11-13 00:02:59'),
(1114, 'admin url vistied 127.0.0.1', '2021-11-13 00:04:44'),
(1115, 'admin url vistied 127.0.0.1', '2021-11-13 00:04:51'),
(1116, 'admin url vistied 127.0.0.1', '2021-11-13 00:05:25'),
(1117, 'admin url vistied 127.0.0.1', '2021-11-13 00:05:27'),
(1118, 'admin url vistied 127.0.0.1', '2021-11-13 00:05:28'),
(1119, 'admin url vistied 127.0.0.1', '2021-11-13 00:05:28'),
(1120, 'admin url vistied 127.0.0.1', '2021-11-13 00:05:28'),
(1121, 'admin url vistied 127.0.0.1', '2021-11-13 00:05:28'),
(1122, 'admin url vistied 127.0.0.1', '2021-11-13 00:05:28'),
(1123, 'admin url vistied 127.0.0.1', '2021-11-13 00:05:28'),
(1124, 'admin url vistied 127.0.0.1', '2021-11-13 00:05:28'),
(1125, 'admin url vistied 127.0.0.1', '2021-11-13 00:05:28'),
(1126, 'admin url vistied 127.0.0.1', '2021-11-13 00:05:28'),
(1127, 'admin url vistied 127.0.0.1', '2021-11-13 00:05:28'),
(1128, 'admin url vistied 127.0.0.1', '2021-11-13 00:05:28'),
(1129, 'admin url vistied 127.0.0.1', '2021-11-13 00:05:54'),
(1130, 'admin url vistied 127.0.0.1', '2021-11-13 00:06:03'),
(1131, 'admin url vistied 127.0.0.1', '2021-11-13 00:06:17'),
(1132, 'admin url vistied 127.0.0.1', '2021-11-13 00:06:23'),
(1133, 'admin url vistied 127.0.0.1', '2021-11-13 00:06:47'),
(1134, 'admin url vistied 127.0.0.1', '2021-11-13 00:07:45'),
(1135, 'admin url vistied 127.0.0.1', '2021-11-13 00:07:52'),
(1136, 'admin url vistied 127.0.0.1', '2021-11-13 00:07:52'),
(1137, 'admin url vistied 127.0.0.1', '2021-11-13 00:07:52'),
(1138, 'admin url vistied 127.0.0.1', '2021-11-13 00:07:52'),
(1139, 'admin url vistied 127.0.0.1', '2021-11-13 00:07:52'),
(1140, 'admin url vistied 127.0.0.1', '2021-11-13 00:07:53'),
(1141, 'admin url vistied 127.0.0.1', '2021-11-13 00:07:53'),
(1142, 'admin url vistied 127.0.0.1', '2021-11-13 00:07:53'),
(1143, 'admin url vistied 127.0.0.1', '2021-11-13 00:08:50'),
(1144, 'admin url vistied 127.0.0.1', '2021-11-13 00:08:52'),
(1145, 'admin url vistied 127.0.0.1', '2021-11-13 00:08:57'),
(1146, 'admin url vistied 127.0.0.1', '2021-11-13 00:09:42'),
(1147, 'admin url vistied 127.0.0.1', '2021-11-13 00:09:59'),
(1148, 'admin url vistied 127.0.0.1', '2021-11-13 00:10:09'),
(1149, 'admin url vistied 127.0.0.1', '2021-11-13 00:10:16'),
(1150, 'admin url vistied 127.0.0.1', '2021-11-13 00:10:42'),
(1151, 'admin url vistied 127.0.0.1', '2021-11-13 00:12:00'),
(1152, 'admin url vistied 127.0.0.1', '2021-11-13 00:13:21'),
(1153, 'admin url vistied 127.0.0.1', '2021-11-13 00:13:36'),
(1154, 'admin url vistied 127.0.0.1', '2021-11-13 00:13:38'),
(1155, 'admin url vistied 127.0.0.1', '2021-11-13 00:13:41'),
(1156, 'admin url vistied 127.0.0.1', '2021-11-13 00:13:48'),
(1157, 'admin url vistied 127.0.0.1', '2021-11-13 00:13:49'),
(1158, 'admin url vistied 127.0.0.1', '2021-11-13 00:13:57'),
(1159, 'admin url vistied 127.0.0.1', '2021-11-13 00:17:33'),
(1160, 'admin url vistied 127.0.0.1', '2021-11-13 00:17:42'),
(1161, 'admin url vistied 127.0.0.1', '2021-11-13 00:19:00'),
(1162, 'admin url vistied 127.0.0.1', '2021-11-13 00:21:17'),
(1163, 'admin url vistied 127.0.0.1', '2021-11-13 00:21:33'),
(1164, 'admin url vistied 127.0.0.1', '2021-11-13 00:21:59'),
(1165, 'login form submit vistied 127.0.0.1', '2021-11-13 00:21:59'),
(1166, 'admin url vistied 127.0.0.1', '2021-11-13 00:21:59'),
(1167, 'admin url vistied 127.0.0.1', '2021-11-13 00:22:01'),
(1168, 'admin url vistied 127.0.0.1', '2021-11-13 00:22:05'),
(1169, 'login form submit vistied 127.0.0.1', '2021-11-13 00:22:05'),
(1170, 'opt page vistied 127.0.0.1', '2021-11-13 00:22:05'),
(1171, 'opt page vistied 127.0.0.1', '2021-11-13 00:24:01'),
(1172, 'admin url vistied 127.0.0.1', '2021-11-13 00:24:02'),
(1173, 'admin url vistied 127.0.0.1', '2021-11-13 00:24:02'),
(1174, 'admin url vistied 127.0.0.1', '2021-11-13 00:24:06'),
(1175, 'login form submit vistied 127.0.0.1', '2021-11-13 00:24:06'),
(1176, 'login success vistied 127.0.0.1', '2021-11-13 00:24:06'),
(1177, 'users page visited127.0.0.1', '2021-11-13 00:24:09'),
(1178, 'admin url vistied 127.0.0.1', '2021-11-13 00:24:12'),
(1179, 'admin url vistied 127.0.0.1', '2021-11-13 00:24:16'),
(1180, 'admin url vistied 127.0.0.1', '2021-11-13 00:24:19'),
(1181, 'login form submit vistied 127.0.0.1', '2021-11-13 00:24:19'),
(1182, 'admin url vistied 127.0.0.1', '2021-11-13 00:24:19'),
(1183, 'admin url vistied 127.0.0.1', '2021-11-13 00:24:21'),
(1184, 'admin url vistied 127.0.0.1', '2021-11-13 00:24:35'),
(1185, 'login form submit vistied 127.0.0.1', '2021-11-13 00:24:35'),
(1186, 'admin url vistied 127.0.0.1', '2021-11-13 00:24:35'),
(1187, 'admin url vistied 127.0.0.1', '2021-11-13 00:25:00'),
(1188, 'admin url vistied 127.0.0.1', '2021-11-13 00:25:01'),
(1189, 'admin url vistied 127.0.0.1', '2021-11-13 00:25:02'),
(1190, 'admin url vistied 127.0.0.1', '2021-11-13 00:25:06'),
(1191, 'login form submit vistied 127.0.0.1', '2021-11-13 00:25:06'),
(1192, 'login success vistied 127.0.0.1', '2021-11-13 00:25:06'),
(1193, 'admin url vistied 127.0.0.1', '2021-11-13 00:25:06'),
(1194, 'admin url vistied 127.0.0.1', '2021-11-13 00:25:09'),
(1195, 'admin url vistied 127.0.0.1', '2021-11-13 00:25:17'),
(1196, 'admin url vistied 127.0.0.1', '2021-11-13 00:25:22'),
(1197, 'login form submit vistied 127.0.0.1', '2021-11-13 00:25:22'),
(1198, 'login success vistied 127.0.0.1', '2021-11-13 00:25:22'),
(1199, 'users page visited127.0.0.1', '2021-11-13 00:25:26'),
(1200, 'admin url vistied 127.0.0.1', '2021-11-13 00:25:30'),
(1201, 'admin url vistied 127.0.0.1', '2021-11-13 00:25:33'),
(1202, 'admin url vistied 127.0.0.1', '2021-11-13 00:25:37'),
(1203, 'login form submit vistied 127.0.0.1', '2021-11-13 00:25:37'),
(1204, 'login success vistied 127.0.0.1', '2021-11-13 00:25:37'),
(1205, 'admin url vistied 127.0.0.1', '2021-11-13 00:41:34'),
(1206, 'admin url vistied 127.0.0.1', '2021-11-13 00:41:37'),
(1207, 'admin url vistied 127.0.0.1', '2021-11-13 01:22:24'),
(1208, 'login form submit vistied 127.0.0.1', '2021-11-13 01:22:24'),
(1209, 'login success vistied 127.0.0.1', '2021-11-13 01:22:24'),
(1210, 'admin url vistied 127.0.0.1', '2021-11-13 01:22:27'),
(1211, 'admin url vistied 127.0.0.1', '2021-11-13 01:23:47'),
(1212, 'admin url vistied 127.0.0.1', '2021-11-13 01:23:52'),
(1213, 'login form submit vistied 127.0.0.1', '2021-11-13 01:23:52'),
(1214, 'login success vistied 127.0.0.1', '2021-11-13 01:23:52'),
(1215, 'admin url vistied 127.0.0.1', '2021-11-13 01:23:55'),
(1216, 'admin url vistied 127.0.0.1', '2021-11-13 01:24:08'),
(1217, 'admin url vistied 127.0.0.1', '2021-11-13 01:24:12'),
(1218, 'login form submit vistied 127.0.0.1', '2021-11-13 01:24:12'),
(1219, 'login success vistied 127.0.0.1', '2021-11-13 01:24:12'),
(1220, 'admin url vistied 127.0.0.1', '2021-11-13 01:24:18'),
(1221, 'admin url vistied 127.0.0.1', '2021-11-13 01:24:22'),
(1222, 'login form submit vistied 127.0.0.1', '2021-11-13 01:24:22'),
(1223, 'login success vistied 127.0.0.1', '2021-11-13 01:24:22'),
(1224, 'admin url vistied 127.0.0.1', '2021-11-13 01:24:25'),
(1225, 'admin url vistied 127.0.0.1', '2021-11-13 01:24:29'),
(1226, 'login form submit vistied 127.0.0.1', '2021-11-13 01:24:29'),
(1227, 'admin url vistied 127.0.0.1', '2021-11-13 01:24:29'),
(1228, 'admin url vistied 127.0.0.1', '2021-11-13 01:24:32'),
(1229, 'admin url vistied 127.0.0.1', '2021-11-13 01:24:54'),
(1230, 'admin url vistied 127.0.0.1', '2021-11-13 01:24:57'),
(1231, 'login form submit vistied 127.0.0.1', '2021-11-13 01:24:57'),
(1232, 'login success vistied 127.0.0.1', '2021-11-13 01:24:57'),
(1233, 'admin url vistied 127.0.0.1', '2021-11-13 01:24:59'),
(1234, 'admin url vistied 127.0.0.1', '2021-11-13 01:25:02'),
(1235, 'login form submit vistied 127.0.0.1', '2021-11-13 01:25:02'),
(1236, 'admin url vistied 127.0.0.1', '2021-11-13 01:25:02'),
(1237, 'admin url vistied 127.0.0.1', '2021-11-13 01:25:17'),
(1238, 'admin url vistied 127.0.0.1', '2021-11-13 01:25:18'),
(1239, 'admin url vistied 127.0.0.1', '2021-11-13 01:25:20'),
(1240, 'admin url vistied 127.0.0.1', '2021-11-13 01:25:23'),
(1241, 'login form submit vistied 127.0.0.1', '2021-11-13 01:25:23'),
(1242, 'admin url vistied 127.0.0.1', '2021-11-13 01:25:23'),
(1243, 'admin url vistied 127.0.0.1', '2021-11-13 01:25:28'),
(1244, 'login form submit vistied 127.0.0.1', '2021-11-13 01:25:28'),
(1245, 'login success vistied 127.0.0.1', '2021-11-13 01:25:28'),
(1246, 'admin url vistied 127.0.0.1', '2021-11-13 01:25:30'),
(1247, 'admin url vistied 127.0.0.1', '2021-11-13 01:25:31'),
(1248, 'admin url vistied 127.0.0.1', '2021-11-13 01:25:32'),
(1249, 'admin url vistied 127.0.0.1', '2021-11-13 01:25:33'),
(1250, 'admin url vistied 127.0.0.1', '2021-11-13 01:25:33'),
(1251, 'admin url vistied 127.0.0.1', '2021-11-13 01:25:33'),
(1252, 'admin url vistied 127.0.0.1', '2021-11-13 01:25:34'),
(1253, 'admin url vistied 127.0.0.1', '2021-11-13 01:25:34'),
(1254, 'admin url vistied 127.0.0.1', '2021-11-13 01:25:36'),
(1255, 'admin url vistied 127.0.0.1', '2021-11-13 01:49:28'),
(1256, 'admin url vistied 127.0.0.1', '2021-11-13 01:51:21'),
(1257, 'admin url vistied 127.0.0.1', '2021-11-13 01:51:23'),
(1258, 'admin url vistied 127.0.0.1', '2021-11-13 01:51:28'),
(1259, 'admin url vistied 127.0.0.1', '2021-11-13 01:51:30'),
(1260, 'admin url vistied 127.0.0.1', '2021-11-13 01:51:30'),
(1261, 'admin url vistied 127.0.0.1', '2021-11-13 01:51:30'),
(1262, 'admin url vistied 127.0.0.1', '2021-11-13 01:51:30'),
(1263, 'admin url vistied 127.0.0.1', '2021-11-13 01:51:30'),
(1264, 'admin url vistied 127.0.0.1', '2021-11-13 01:51:30'),
(1265, 'admin url vistied 127.0.0.1', '2021-11-13 01:51:31'),
(1266, 'admin url vistied 127.0.0.1', '2021-11-13 01:51:31'),
(1267, 'admin url vistied 127.0.0.1', '2021-11-13 01:52:09'),
(1268, 'admin url vistied 127.0.0.1', '2021-11-13 01:52:29'),
(1269, 'admin url vistied 127.0.0.1', '2021-11-13 01:52:33'),
(1270, 'admin url vistied 127.0.0.1', '2021-11-13 01:52:57'),
(1271, 'admin url vistied 127.0.0.1', '2021-11-13 01:56:28'),
(1272, 'admin url vistied 127.0.0.1', '2021-11-13 03:27:30'),
(1273, 'login form submit vistied 127.0.0.1', '2021-11-13 03:27:30'),
(1274, 'login success vistied 127.0.0.1', '2021-11-13 03:27:30'),
(1275, 'users page visited127.0.0.1', '2021-11-13 03:27:31'),
(1276, 'users page visited127.0.0.1', '2021-11-13 03:28:12'),
(1277, 'users page visited127.0.0.1', '2021-11-13 03:28:22'),
(1278, 'users page visited127.0.0.1', '2021-11-13 03:28:22'),
(1279, 'users page visited127.0.0.1', '2021-11-13 03:28:37'),
(1280, 'users page visited127.0.0.1', '2021-11-13 03:28:37'),
(1281, 'users page visited127.0.0.1', '2021-11-13 03:28:50'),
(1282, 'users page visited127.0.0.1', '2021-11-13 03:28:50'),
(1283, 'users page visited127.0.0.1', '2021-11-13 03:29:01'),
(1284, 'users page visited127.0.0.1', '2021-11-13 03:29:01'),
(1285, 'users page visited127.0.0.1', '2021-11-13 03:29:09'),
(1286, 'users page visited127.0.0.1', '2021-11-13 03:29:09'),
(1287, 'users page visited127.0.0.1', '2021-11-13 03:29:16'),
(1288, 'users page visited127.0.0.1', '2021-11-13 03:29:16'),
(1289, 'users page visited127.0.0.1', '2021-11-13 03:29:22'),
(1290, 'users page visited127.0.0.1', '2021-11-13 03:29:22'),
(1291, 'users page visited127.0.0.1', '2021-11-13 03:31:44'),
(1292, 'users page visited127.0.0.1', '2021-11-13 03:33:22'),
(1293, 'users page visited127.0.0.1', '2021-11-13 04:04:22'),
(1294, 'users page visited127.0.0.1', '2021-11-13 04:13:49'),
(1295, 'users page visited127.0.0.1', '2021-11-13 04:13:59'),
(1296, 'users page visited127.0.0.1', '2021-11-13 04:14:03'),
(1297, 'users page visited127.0.0.1', '2021-11-13 04:18:15'),
(1298, 'users page visited127.0.0.1', '2021-11-13 04:28:59'),
(1299, 'users page visited127.0.0.1', '2021-11-13 04:29:15'),
(1300, 'users page visited127.0.0.1', '2021-11-13 04:29:15'),
(1301, 'users page visited127.0.0.1', '2021-11-13 04:29:17'),
(1302, 'users page visited127.0.0.1', '2021-11-13 04:30:59'),
(1303, 'users page visited127.0.0.1', '2021-11-13 04:31:02'),
(1304, 'users page visited127.0.0.1', '2021-11-13 04:31:02'),
(1305, 'users page visited127.0.0.1', '2021-11-13 04:44:54'),
(1306, 'users page visited127.0.0.1', '2021-11-13 04:45:22'),
(1307, 'users page visited127.0.0.1', '2021-11-13 04:45:22'),
(1308, 'users page visited127.0.0.1', '2021-11-13 04:45:27'),
(1309, 'users page visited127.0.0.1', '2021-11-13 04:45:27'),
(1310, 'users page visited127.0.0.1', '2021-11-13 04:47:22'),
(1311, 'users page visited127.0.0.1', '2021-11-13 04:48:26'),
(1312, 'users page visited127.0.0.1', '2021-11-13 04:48:29'),
(1313, 'users page visited127.0.0.1', '2021-11-13 04:48:36'),
(1314, 'users page visited127.0.0.1', '2021-11-13 04:49:01'),
(1315, 'users page visited127.0.0.1', '2021-11-13 04:49:04'),
(1316, 'users page visited127.0.0.1', '2021-11-13 04:49:07'),
(1317, 'users page visited127.0.0.1', '2021-11-13 04:52:53'),
(1318, 'users page visited127.0.0.1', '2021-11-13 04:52:55'),
(1319, 'users page visited127.0.0.1', '2021-11-13 04:53:39'),
(1320, 'users page visited127.0.0.1', '2021-11-13 04:53:41'),
(1321, 'users page visited127.0.0.1', '2021-11-13 04:53:41'),
(1322, 'users page visited127.0.0.1', '2021-11-13 04:53:56'),
(1323, 'users page visited127.0.0.1', '2021-11-13 04:53:59'),
(1324, 'users page visited127.0.0.1', '2021-11-13 04:53:59'),
(1325, 'users page visited127.0.0.1', '2021-11-13 05:00:51'),
(1326, 'users page visited127.0.0.1', '2021-11-13 05:00:56'),
(1327, 'users page visited127.0.0.1', '2021-11-13 05:02:11'),
(1328, 'users page visited127.0.0.1', '2021-11-13 05:03:11'),
(1329, 'users page visited127.0.0.1', '2021-11-13 05:03:15'),
(1330, 'users page visited127.0.0.1', '2021-11-13 05:08:11'),
(1331, 'users page visited127.0.0.1', '2021-11-13 05:09:11'),
(1332, 'users page visited127.0.0.1', '2021-11-13 05:10:14'),
(1333, 'users page visited127.0.0.1', '2021-11-13 05:10:29'),
(1334, 'users page visited127.0.0.1', '2021-11-13 05:10:29'),
(1335, 'users page visited127.0.0.1', '2021-11-13 05:26:08'),
(1336, 'users page visited127.0.0.1', '2021-11-13 05:26:10'),
(1337, 'users page visited127.0.0.1', '2021-11-13 05:26:10'),
(1338, 'users page visited127.0.0.1', '2021-11-13 05:27:25'),
(1339, 'users page visited127.0.0.1', '2021-11-13 05:27:25'),
(1340, 'users page visited127.0.0.1', '2021-11-13 05:28:51'),
(1341, 'users page visited127.0.0.1', '2021-11-13 05:28:51'),
(1342, 'users page visited127.0.0.1', '2021-11-13 05:29:11'),
(1343, 'users page visited127.0.0.1', '2021-11-13 05:29:11'),
(1344, 'users page visited127.0.0.1', '2021-11-13 05:30:10'),
(1345, 'users page visited127.0.0.1', '2021-11-13 05:30:10'),
(1346, 'users page visited127.0.0.1', '2021-11-13 05:30:29'),
(1347, 'users page visited127.0.0.1', '2021-11-13 05:30:35'),
(1348, 'users page visited127.0.0.1', '2021-11-13 05:30:35'),
(1349, 'users page visited127.0.0.1', '2021-11-13 05:30:43'),
(1350, 'users page visited127.0.0.1', '2021-11-13 05:30:43'),
(1351, 'users page visited127.0.0.1', '2021-11-13 05:30:46'),
(1352, 'users page visited127.0.0.1', '2021-11-13 05:30:46'),
(1353, 'users page visited127.0.0.1', '2021-11-13 05:31:02'),
(1354, 'users page visited127.0.0.1', '2021-11-13 05:31:02'),
(1355, 'users page visited127.0.0.1', '2021-11-13 05:31:15'),
(1356, 'users page visited127.0.0.1', '2021-11-13 05:31:15'),
(1357, 'users page visited127.0.0.1', '2021-11-13 05:31:43'),
(1358, 'users page visited127.0.0.1', '2021-11-13 05:31:47'),
(1359, 'users page visited127.0.0.1', '2021-11-13 05:31:49'),
(1360, 'users page visited127.0.0.1', '2021-11-13 05:31:52'),
(1361, 'users page visited127.0.0.1', '2021-11-13 05:32:11'),
(1362, 'users page visited127.0.0.1', '2021-11-13 05:32:17'),
(1363, 'users page visited127.0.0.1', '2021-11-13 05:32:17'),
(1364, 'users page visited127.0.0.1', '2021-11-13 05:32:47'),
(1365, 'users page visited127.0.0.1', '2021-11-13 05:32:50'),
(1366, 'users page visited127.0.0.1', '2021-11-13 05:32:50'),
(1367, 'users page visited127.0.0.1', '2021-11-13 05:32:57'),
(1368, 'users page visited127.0.0.1', '2021-11-13 05:32:57'),
(1369, 'users page visited127.0.0.1', '2021-11-13 05:33:22'),
(1370, 'users page visited127.0.0.1', '2021-11-13 05:33:23'),
(1371, 'users page visited127.0.0.1', '2021-11-13 05:33:32'),
(1372, 'users page visited127.0.0.1', '2021-11-13 05:33:32'),
(1373, 'users page visited127.0.0.1', '2021-11-13 05:33:35'),
(1374, 'users page visited127.0.0.1', '2021-11-13 05:33:35'),
(1375, 'users page visited127.0.0.1', '2021-11-13 05:33:55'),
(1376, 'users page visited127.0.0.1', '2021-11-13 05:33:58'),
(1377, 'users page visited127.0.0.1', '2021-11-13 05:33:58'),
(1378, 'users page visited127.0.0.1', '2021-11-13 05:34:00'),
(1379, 'users page visited127.0.0.1', '2021-11-13 05:34:00'),
(1380, 'users page visited127.0.0.1', '2021-11-13 05:34:33'),
(1381, 'users page visited127.0.0.1', '2021-11-13 05:34:35'),
(1382, 'users page visited127.0.0.1', '2021-11-13 05:34:35'),
(1383, 'users page visited127.0.0.1', '2021-11-13 05:34:38'),
(1384, 'users page visited127.0.0.1', '2021-11-13 05:34:38'),
(1385, 'users page visited127.0.0.1', '2021-11-13 05:34:44'),
(1386, 'users page visited127.0.0.1', '2021-11-13 05:34:44'),
(1387, 'users page visited127.0.0.1', '2021-11-13 05:34:57'),
(1388, 'users page visited127.0.0.1', '2021-11-13 05:34:57'),
(1389, 'users page visited127.0.0.1', '2021-11-13 05:35:40'),
(1390, 'users page visited127.0.0.1', '2021-11-13 05:35:42'),
(1391, 'users page visited127.0.0.1', '2021-11-13 05:35:57'),
(1392, 'users page visited127.0.0.1', '2021-11-13 05:36:10'),
(1393, 'users page visited127.0.0.1', '2021-11-13 05:36:12'),
(1394, 'users page visited127.0.0.1', '2021-11-13 05:36:21'),
(1395, 'users page visited127.0.0.1', '2021-11-13 05:36:23'),
(1396, 'users page visited127.0.0.1', '2021-11-13 05:36:39'),
(1397, 'users page visited127.0.0.1', '2021-11-13 05:36:42'),
(1398, 'users page visited127.0.0.1', '2021-11-13 05:37:01'),
(1399, 'users page visited127.0.0.1', '2021-11-13 05:37:04'),
(1400, 'users page visited127.0.0.1', '2021-11-13 05:37:04'),
(1401, 'users page visited127.0.0.1', '2021-11-13 05:37:20'),
(1402, 'users page visited127.0.0.1', '2021-11-13 05:37:20'),
(1403, 'users page visited127.0.0.1', '2021-11-13 05:37:39'),
(1404, 'users page visited127.0.0.1', '2021-11-13 05:37:42'),
(1405, 'users page visited127.0.0.1', '2021-11-13 05:37:42'),
(1406, 'users page visited127.0.0.1', '2021-11-13 05:37:59'),
(1407, 'users page visited127.0.0.1', '2021-11-13 05:38:03'),
(1408, 'users page visited127.0.0.1', '2021-11-13 05:38:13'),
(1409, 'users page visited127.0.0.1', '2021-11-13 05:38:16'),
(1410, 'users page visited127.0.0.1', '2021-11-13 05:38:27'),
(1411, 'users page visited127.0.0.1', '2021-11-13 05:38:29'),
(1412, 'users page visited127.0.0.1', '2021-11-13 05:38:33'),
(1413, 'users page visited127.0.0.1', '2021-11-13 05:39:30'),
(1414, 'users page visited127.0.0.1', '2021-11-13 05:39:32'),
(1415, 'users page visited127.0.0.1', '2021-11-13 05:39:40'),
(1416, 'users page visited127.0.0.1', '2021-11-13 05:39:42'),
(1417, 'users page visited127.0.0.1', '2021-11-13 05:40:13'),
(1418, 'users page visited127.0.0.1', '2021-11-13 05:40:15'),
(1419, 'users page visited127.0.0.1', '2021-11-13 05:41:31'),
(1420, 'users page visited127.0.0.1', '2021-11-13 05:41:33'),
(1421, 'users page visited127.0.0.1', '2021-11-13 05:41:33'),
(1422, 'users page visited127.0.0.1', '2021-11-13 05:41:46'),
(1423, 'users page visited127.0.0.1', '2021-11-13 05:41:46'),
(1424, 'users page visited127.0.0.1', '2021-11-13 05:43:20'),
(1425, 'users page visited127.0.0.1', '2021-11-13 05:43:20'),
(1426, 'users page visited127.0.0.1', '2021-11-13 05:43:27'),
(1427, 'users page visited127.0.0.1', '2021-11-13 05:43:27'),
(1428, 'users page visited127.0.0.1', '2021-11-13 05:43:38'),
(1429, 'users page visited127.0.0.1', '2021-11-13 05:43:45'),
(1430, 'users page visited127.0.0.1', '2021-11-13 05:43:45'),
(1431, 'admin url vistied 127.0.0.1', '2021-11-14 00:01:33'),
(1432, 'admin url vistied 127.0.0.1', '2021-11-14 00:01:38'),
(1433, 'admin url vistied 127.0.0.1', '2021-11-14 00:01:42'),
(1434, 'login form submit vistied 127.0.0.1', '2021-11-14 00:01:42'),
(1435, 'login success vistied 127.0.0.1', '2021-11-14 00:01:42'),
(1436, 'users page visited127.0.0.1', '2021-11-14 00:01:45'),
(1437, 'admin url vistied 127.0.0.1', '2021-11-14 00:01:57'),
(1438, 'users page visited127.0.0.1', '2021-11-14 00:02:15'),
(1439, 'users page visited127.0.0.1', '2021-11-14 00:02:15'),
(1440, 'users page visited127.0.0.1', '2021-11-14 00:02:23'),
(1441, 'users page visited127.0.0.1', '2021-11-14 00:06:19'),
(1442, 'users page visited127.0.0.1', '2021-11-14 00:06:24'),
(1443, 'users page visited127.0.0.1', '2021-11-14 00:06:24'),
(1444, 'users page visited127.0.0.1', '2021-11-14 00:07:02'),
(1445, 'users page visited127.0.0.1', '2021-11-14 00:07:35'),
(1446, 'users page visited127.0.0.1', '2021-11-14 00:08:07'),
(1447, 'users page visited127.0.0.1', '2021-11-14 00:08:08'),
(1448, 'users page visited127.0.0.1', '2021-11-14 00:09:03'),
(1449, 'users page visited127.0.0.1', '2021-11-14 00:09:03'),
(1450, 'users page visited127.0.0.1', '2021-11-14 00:09:27'),
(1451, 'users page visited127.0.0.1', '2021-11-14 00:09:27'),
(1452, 'users page visited127.0.0.1', '2021-11-14 00:09:51'),
(1453, 'users page visited127.0.0.1', '2021-11-14 00:09:51'),
(1454, 'users page visited127.0.0.1', '2021-11-14 00:10:08'),
(1455, 'users page visited127.0.0.1', '2021-11-14 00:10:08'),
(1456, 'users page visited127.0.0.1', '2021-11-14 00:14:19'),
(1457, 'users page visited127.0.0.1', '2021-11-14 00:29:51'),
(1458, 'users page visited127.0.0.1', '2021-11-14 00:30:04'),
(1459, 'users page visited127.0.0.1', '2021-11-14 00:30:04'),
(1460, 'users page visited127.0.0.1', '2021-11-14 00:30:52'),
(1461, 'users page visited127.0.0.1', '2021-11-14 00:30:56'),
(1462, 'users page visited127.0.0.1', '2021-11-14 00:30:56'),
(1463, 'users page visited127.0.0.1', '2021-11-14 00:33:48'),
(1464, 'users page visited127.0.0.1', '2021-11-14 00:33:56'),
(1465, 'users page visited127.0.0.1', '2021-11-14 00:33:56'),
(1466, 'users page visited127.0.0.1', '2021-11-14 00:36:02'),
(1467, 'users page visited127.0.0.1', '2021-11-14 00:36:20'),
(1468, 'users page visited127.0.0.1', '2021-11-14 00:37:05'),
(1469, 'users page visited127.0.0.1', '2021-11-14 00:37:05'),
(1470, 'users page visited127.0.0.1', '2021-11-14 00:37:34'),
(1471, 'users page visited127.0.0.1', '2021-11-14 00:37:34'),
(1472, 'users page visited127.0.0.1', '2021-11-14 00:37:58'),
(1473, 'users page visited127.0.0.1', '2021-11-14 00:38:12'),
(1474, 'users page visited127.0.0.1', '2021-11-14 00:38:12'),
(1475, 'users page visited127.0.0.1', '2021-11-14 00:38:33'),
(1476, 'users page visited127.0.0.1', '2021-11-14 00:38:33'),
(1477, 'users page visited127.0.0.1', '2021-11-14 00:39:06'),
(1478, 'users page visited127.0.0.1', '2021-11-14 00:39:17'),
(1479, 'users page visited127.0.0.1', '2021-11-14 00:39:59'),
(1480, 'users page visited127.0.0.1', '2021-11-14 00:40:14'),
(1481, 'users page visited127.0.0.1', '2021-11-14 00:40:40'),
(1482, 'users page visited127.0.0.1', '2021-11-14 00:41:11'),
(1483, 'users page visited127.0.0.1', '2021-11-14 00:42:01'),
(1484, 'users page visited127.0.0.1', '2021-11-14 00:42:01'),
(1485, 'users page visited127.0.0.1', '2021-11-14 00:42:42'),
(1486, 'users page visited127.0.0.1', '2021-11-14 00:43:59'),
(1487, 'users page visited127.0.0.1', '2021-11-14 00:44:02'),
(1488, 'users page visited127.0.0.1', '2021-11-14 00:44:05'),
(1489, 'users page visited127.0.0.1', '2021-11-14 00:44:43'),
(1490, 'users page visited127.0.0.1', '2021-11-14 00:44:52'),
(1491, 'users page visited127.0.0.1', '2021-11-14 00:45:52'),
(1492, 'users page visited127.0.0.1', '2021-11-14 00:45:52'),
(1493, 'users page visited127.0.0.1', '2021-11-14 00:45:57'),
(1494, 'users page visited127.0.0.1', '2021-11-14 00:45:57'),
(1495, 'users page visited127.0.0.1', '2021-11-14 00:46:00'),
(1496, 'users page visited127.0.0.1', '2021-11-14 00:46:00'),
(1497, 'users page visited127.0.0.1', '2021-11-14 00:46:48'),
(1498, 'users page visited127.0.0.1', '2021-11-14 00:46:48'),
(1499, 'users page visited127.0.0.1', '2021-11-14 00:47:29'),
(1500, 'users page visited127.0.0.1', '2021-11-14 00:47:29'),
(1501, 'users page visited127.0.0.1', '2021-11-14 00:48:19'),
(1502, 'users page visited127.0.0.1', '2021-11-14 00:48:28'),
(1503, 'users page visited127.0.0.1', '2021-11-14 00:56:11'),
(1504, 'users page visited127.0.0.1', '2021-11-14 00:57:28'),
(1505, 'users page visited127.0.0.1', '2021-11-14 01:10:08'),
(1506, 'users page visited127.0.0.1', '2021-11-14 01:11:38'),
(1507, 'users page visited127.0.0.1', '2021-11-14 01:16:54'),
(1508, 'users page visited127.0.0.1', '2021-11-14 01:19:56'),
(1509, 'users page visited127.0.0.1', '2021-11-14 01:20:14'),
(1510, 'users page visited127.0.0.1', '2021-11-14 01:20:14'),
(1511, 'users page visited127.0.0.1', '2021-11-14 01:20:25'),
(1512, 'users page visited127.0.0.1', '2021-11-14 01:20:25'),
(1513, 'users page visited127.0.0.1', '2021-11-14 01:28:40'),
(1514, 'users page visited127.0.0.1', '2021-11-14 01:28:42'),
(1515, 'users page visited127.0.0.1', '2021-11-14 01:29:00'),
(1516, 'users page visited127.0.0.1', '2021-11-14 01:38:16'),
(1517, 'users page visited127.0.0.1', '2021-11-14 01:39:17'),
(1518, 'users page visited127.0.0.1', '2021-11-14 01:40:08'),
(1519, 'users page visited127.0.0.1', '2021-11-14 01:40:08'),
(1520, 'users page visited127.0.0.1', '2021-11-14 01:41:27'),
(1521, 'users page visited127.0.0.1', '2021-11-14 01:41:27'),
(1522, 'users page visited127.0.0.1', '2021-11-14 02:06:41'),
(1523, 'users page visited127.0.0.1', '2021-11-14 02:06:43'),
(1524, 'users page visited127.0.0.1', '2021-11-14 02:07:24'),
(1525, 'users page visited127.0.0.1', '2021-11-14 02:07:37'),
(1526, 'users page visited127.0.0.1', '2021-11-14 02:09:40'),
(1527, 'users page visited127.0.0.1', '2021-11-14 02:09:48'),
(1528, 'users page visited127.0.0.1', '2021-11-14 02:09:48'),
(1529, 'users page visited127.0.0.1', '2021-11-14 02:11:07'),
(1530, 'users page visited127.0.0.1', '2021-11-14 02:11:25'),
(1531, 'users page visited127.0.0.1', '2021-11-14 02:11:25'),
(1532, 'users page visited127.0.0.1', '2021-11-14 02:13:04'),
(1533, 'users page visited127.0.0.1', '2021-11-14 02:14:33'),
(1534, 'users page visited127.0.0.1', '2021-11-14 02:17:15'),
(1535, 'users page visited127.0.0.1', '2021-11-14 02:20:27'),
(1536, 'users page visited127.0.0.1', '2021-11-14 02:20:33'),
(1537, 'users page visited127.0.0.1', '2021-11-14 02:20:33'),
(1538, 'users page visited127.0.0.1', '2021-11-14 02:21:24'),
(1539, 'users page visited127.0.0.1', '2021-11-14 02:21:30'),
(1540, 'users page visited127.0.0.1', '2021-11-14 02:21:47'),
(1541, 'users page visited127.0.0.1', '2021-11-14 02:21:55'),
(1542, 'users page visited127.0.0.1', '2021-11-14 02:21:55'),
(1543, 'users page visited127.0.0.1', '2021-11-14 02:23:34'),
(1544, 'users page visited127.0.0.1', '2021-11-14 02:23:49'),
(1545, 'users page visited127.0.0.1', '2021-11-14 02:23:49'),
(1546, 'users page visited127.0.0.1', '2021-11-14 02:23:52'),
(1547, 'users page visited127.0.0.1', '2021-11-14 02:24:26'),
(1548, 'users page visited127.0.0.1', '2021-11-14 02:25:05'),
(1549, 'users page visited127.0.0.1', '2021-11-14 02:28:36'),
(1550, 'users page visited127.0.0.1', '2021-11-14 02:28:43'),
(1551, 'users page visited127.0.0.1', '2021-11-14 02:28:43'),
(1552, 'users page visited127.0.0.1', '2021-11-14 02:34:17'),
(1553, 'users page visited127.0.0.1', '2021-11-14 02:34:28'),
(1554, 'users page visited127.0.0.1', '2021-11-14 02:34:29'),
(1555, 'users page visited127.0.0.1', '2021-11-14 02:34:31'),
(1556, 'users page visited127.0.0.1', '2021-11-14 02:34:33'),
(1557, 'users page visited127.0.0.1', '2021-11-14 02:35:22'),
(1558, 'users page visited127.0.0.1', '2021-11-14 02:35:28'),
(1559, 'users page visited127.0.0.1', '2021-11-14 02:35:33'),
(1560, 'users page visited127.0.0.1', '2021-11-14 02:35:53'),
(1561, 'users page visited127.0.0.1', '2021-11-14 02:35:56'),
(1562, 'users page visited127.0.0.1', '2021-11-14 02:40:20'),
(1563, 'users page visited127.0.0.1', '2021-11-14 02:41:31'),
(1564, 'users page visited127.0.0.1', '2021-11-14 02:41:41'),
(1565, 'users page visited127.0.0.1', '2021-11-14 03:42:41'),
(1566, 'users page visited127.0.0.1', '2021-11-14 03:44:03'),
(1567, 'users page visited127.0.0.1', '2021-11-14 03:44:34'),
(1568, 'users page visited127.0.0.1', '2021-11-14 03:44:54'),
(1569, 'users page visited127.0.0.1', '2021-11-14 03:45:19'),
(1570, 'users page visited127.0.0.1', '2021-11-14 03:46:00'),
(1571, 'users page visited127.0.0.1', '2021-11-14 03:46:17'),
(1572, 'users page visited127.0.0.1', '2021-11-14 03:49:35'),
(1573, 'users page visited127.0.0.1', '2021-11-14 03:49:56'),
(1574, 'users page visited127.0.0.1', '2021-11-14 03:49:56'),
(1575, 'users page visited127.0.0.1', '2021-11-14 03:50:13'),
(1576, 'users page visited127.0.0.1', '2021-11-14 03:50:44'),
(1577, 'users page visited127.0.0.1', '2021-11-14 03:51:36'),
(1578, 'users page visited127.0.0.1', '2021-11-14 03:52:28'),
(1579, 'users page visited127.0.0.1', '2021-11-14 03:52:28'),
(1580, 'users page visited127.0.0.1', '2021-11-14 03:56:16'),
(1581, 'users page visited127.0.0.1', '2021-11-14 03:56:58'),
(1582, 'users page visited127.0.0.1', '2021-11-14 03:57:19'),
(1583, 'users page visited127.0.0.1', '2021-11-14 03:57:19'),
(1584, 'users page visited127.0.0.1', '2021-11-14 03:57:45'),
(1585, 'users page visited127.0.0.1', '2021-11-14 03:59:42'),
(1586, 'users page visited127.0.0.1', '2021-11-14 04:03:23'),
(1587, 'users page visited127.0.0.1', '2021-11-14 04:03:23'),
(1588, 'users page visited127.0.0.1', '2021-11-14 04:03:32'),
(1589, 'users page visited127.0.0.1', '2021-11-14 04:03:32'),
(1590, 'users page visited127.0.0.1', '2021-11-14 04:05:39'),
(1591, 'users page visited127.0.0.1', '2021-11-14 04:05:55'),
(1592, 'users page visited127.0.0.1', '2021-11-14 04:05:57'),
(1593, 'users page visited127.0.0.1', '2021-11-14 04:07:59'),
(1594, 'users page visited127.0.0.1', '2021-11-14 04:08:38'),
(1595, 'users page visited127.0.0.1', '2021-11-14 04:08:49'),
(1596, 'users page visited127.0.0.1', '2021-11-14 04:11:15'),
(1597, 'users page visited127.0.0.1', '2021-11-14 04:16:25'),
(1598, 'users page visited127.0.0.1', '2021-11-14 04:17:05'),
(1599, 'users page visited127.0.0.1', '2021-11-14 04:17:05'),
(1600, 'users page visited127.0.0.1', '2021-11-14 04:17:11'),
(1601, 'users page visited127.0.0.1', '2021-11-14 04:17:11'),
(1602, 'users page visited127.0.0.1', '2021-11-14 04:17:30'),
(1603, 'users page visited127.0.0.1', '2021-11-14 04:19:50'),
(1604, 'users page visited127.0.0.1', '2021-11-14 04:21:59'),
(1605, 'users page visited127.0.0.1', '2021-11-14 04:55:47'),
(1606, 'users page visited127.0.0.1', '2021-11-14 04:56:23'),
(1607, 'users page visited127.0.0.1', '2021-11-14 04:56:23'),
(1608, 'users page visited127.0.0.1', '2021-11-14 04:58:10'),
(1609, 'users page visited127.0.0.1', '2021-11-14 04:58:10'),
(1610, 'users page visited127.0.0.1', '2021-11-14 04:58:27'),
(1611, 'users page visited127.0.0.1', '2021-11-14 04:58:27'),
(1612, 'users page visited127.0.0.1', '2021-11-14 04:58:54'),
(1613, 'users page visited127.0.0.1', '2021-11-14 04:58:54'),
(1614, 'admin url vistied 127.0.0.1', '2021-11-14 22:30:18'),
(1615, 'admin url vistied 127.0.0.1', '2021-11-14 22:30:22'),
(1616, 'admin url vistied 127.0.0.1', '2021-11-14 22:30:56'),
(1617, 'admin url vistied 127.0.0.1', '2021-11-14 22:31:37'),
(1618, 'login form submit vistied 127.0.0.1', '2021-11-14 22:31:37'),
(1619, 'login success vistied 127.0.0.1', '2021-11-14 22:31:37'),
(1620, 'users page visited127.0.0.1', '2021-11-14 22:33:16'),
(1621, 'users page visited127.0.0.1', '2021-11-14 22:33:17'),
(1622, 'users page visited127.0.0.1', '2021-11-14 22:33:20'),
(1623, 'users page visited127.0.0.1', '2021-11-14 22:33:22'),
(1624, 'users page visited127.0.0.1', '2021-11-14 22:33:24'),
(1625, 'users page visited127.0.0.1', '2021-11-14 22:33:25'),
(1626, 'users page visited127.0.0.1', '2021-11-14 22:33:26'),
(1627, 'users page visited127.0.0.1', '2021-11-14 22:33:28'),
(1628, 'users page visited127.0.0.1', '2021-11-14 22:33:32'),
(1629, 'users page visited127.0.0.1', '2021-11-14 22:33:34'),
(1630, 'users page visited127.0.0.1', '2021-11-14 22:33:36'),
(1631, 'users page visited127.0.0.1', '2021-11-14 22:34:13'),
(1632, 'users page visited127.0.0.1', '2021-11-14 22:34:17'),
(1633, 'users page visited127.0.0.1', '2021-11-14 22:35:25'),
(1634, 'users page visited127.0.0.1', '2021-11-14 22:36:23'),
(1635, 'users page visited127.0.0.1', '2021-11-14 22:38:26'),
(1636, 'users page visited127.0.0.1', '2021-11-14 22:44:59'),
(1637, 'users page visited127.0.0.1', '2021-11-14 22:45:36'),
(1638, 'users page visited127.0.0.1', '2021-11-14 22:45:41'),
(1639, 'users page visited127.0.0.1', '2021-11-14 22:45:41'),
(1640, 'users page visited127.0.0.1', '2021-11-14 22:47:12'),
(1641, 'users page visited127.0.0.1', '2021-11-14 23:25:51'),
(1642, 'users page visited127.0.0.1', '2021-11-14 23:25:57'),
(1643, 'users page visited127.0.0.1', '2021-11-14 23:25:59'),
(1644, 'users page visited127.0.0.1', '2021-11-14 23:26:12'),
(1645, 'users page visited127.0.0.1', '2021-11-14 23:26:13'),
(1646, 'users page visited127.0.0.1', '2021-11-14 23:26:16'),
(1647, 'users page visited127.0.0.1', '2021-11-14 23:26:17'),
(1648, 'users page visited127.0.0.1', '2021-11-14 23:26:21'),
(1649, 'users page visited127.0.0.1', '2021-11-14 23:26:24'),
(1650, 'users page visited127.0.0.1', '2021-11-14 23:26:27'),
(1651, 'users page visited127.0.0.1', '2021-11-14 23:29:07'),
(1652, 'users page visited127.0.0.1', '2021-11-14 23:30:31'),
(1653, 'users page visited127.0.0.1', '2021-11-14 23:30:59'),
(1654, 'users page visited127.0.0.1', '2021-11-14 23:41:55'),
(1655, 'users page visited127.0.0.1', '2021-11-14 23:42:58'),
(1656, 'users page visited127.0.0.1', '2021-11-14 23:43:46'),
(1657, 'users page visited127.0.0.1', '2021-11-14 23:43:55'),
(1658, 'users page visited127.0.0.1', '2021-11-14 23:43:55'),
(1659, 'users page visited127.0.0.1', '2021-11-15 01:06:15'),
(1660, 'users page visited127.0.0.1', '2021-11-15 01:06:17'),
(1661, 'users page visited127.0.0.1', '2021-11-15 01:08:06'),
(1662, 'users page visited127.0.0.1', '2021-11-15 01:08:07'),
(1663, 'users page visited127.0.0.1', '2021-11-15 01:10:48'),
(1664, 'users page visited127.0.0.1', '2021-11-15 01:10:48'),
(1665, 'users page visited127.0.0.1', '2021-11-15 01:11:14'),
(1666, 'users page visited127.0.0.1', '2021-11-15 01:11:23'),
(1667, 'users page visited127.0.0.1', '2021-11-15 01:11:23'),
(1668, 'users page visited127.0.0.1', '2021-11-15 01:12:20'),
(1669, 'users page visited127.0.0.1', '2021-11-15 02:16:31'),
(1670, 'users page visited127.0.0.1', '2021-11-15 02:16:55'),
(1671, 'users page visited127.0.0.1', '2021-11-15 02:17:45'),
(1672, 'users page visited127.0.0.1', '2021-11-15 02:17:53'),
(1673, 'users page visited127.0.0.1', '2021-11-15 02:27:27'),
(1674, 'users page visited127.0.0.1', '2021-11-15 02:28:13'),
(1675, 'users page visited127.0.0.1', '2021-11-15 02:28:13'),
(1676, 'users page visited127.0.0.1', '2021-11-15 02:28:20'),
(1677, 'users page visited127.0.0.1', '2021-11-15 02:28:45'),
(1678, 'users page visited127.0.0.1', '2021-11-15 02:28:54');
INSERT INTO `login_activity` (`id`, `comment`, `date_time`) VALUES
(1679, 'users page visited127.0.0.1', '2021-11-15 02:28:54'),
(1680, 'users page visited127.0.0.1', '2021-11-15 02:29:54'),
(1681, 'users page visited127.0.0.1', '2021-11-15 02:30:46'),
(1682, 'users page visited127.0.0.1', '2021-11-15 02:30:46'),
(1683, 'users page visited127.0.0.1', '2021-11-15 02:31:18'),
(1684, 'users page visited127.0.0.1', '2021-11-15 02:31:46'),
(1685, 'users page visited127.0.0.1', '2021-11-15 02:31:53'),
(1686, 'users page visited127.0.0.1', '2021-11-15 02:31:53'),
(1687, 'users page visited127.0.0.1', '2021-11-15 02:33:03'),
(1688, 'users page visited127.0.0.1', '2021-11-15 02:33:11'),
(1689, 'users page visited127.0.0.1', '2021-11-15 02:33:11'),
(1690, 'users page visited127.0.0.1', '2021-11-15 02:47:50'),
(1691, 'users page visited127.0.0.1', '2021-11-15 02:48:17'),
(1692, 'users page visited127.0.0.1', '2021-11-15 02:48:44'),
(1693, 'users page visited127.0.0.1', '2021-11-15 02:49:27'),
(1694, 'users page visited127.0.0.1', '2021-11-15 02:49:27'),
(1695, 'users page visited127.0.0.1', '2021-11-15 02:53:17'),
(1696, 'users page visited127.0.0.1', '2021-11-15 02:53:37'),
(1697, 'users page visited127.0.0.1', '2021-11-15 02:54:08'),
(1698, 'users page visited127.0.0.1', '2021-11-15 02:54:08'),
(1699, 'users page visited127.0.0.1', '2021-11-15 02:54:37'),
(1700, 'users page visited127.0.0.1', '2021-11-15 02:55:03'),
(1701, 'users page visited127.0.0.1', '2021-11-15 02:55:03'),
(1702, 'users page visited127.0.0.1', '2021-11-15 03:04:21'),
(1703, 'users page visited127.0.0.1', '2021-11-15 03:05:00'),
(1704, 'users page visited127.0.0.1', '2021-11-15 03:05:46'),
(1705, 'users page visited127.0.0.1', '2021-11-15 03:05:46'),
(1706, 'users page visited127.0.0.1', '2021-11-15 03:05:57'),
(1707, 'users page visited127.0.0.1', '2021-11-15 03:05:57'),
(1708, 'users page visited127.0.0.1', '2021-11-15 03:08:51'),
(1709, 'users page visited127.0.0.1', '2021-11-15 03:08:54'),
(1710, 'users page visited127.0.0.1', '2021-11-15 03:14:51'),
(1711, 'users page visited127.0.0.1', '2021-11-15 03:14:58'),
(1712, 'users page visited127.0.0.1', '2021-11-15 03:14:58'),
(1713, 'users page visited127.0.0.1', '2021-11-15 03:16:04'),
(1714, 'users page visited127.0.0.1', '2021-11-15 03:28:11'),
(1715, 'users page visited127.0.0.1', '2021-11-15 03:28:30'),
(1716, 'users page visited127.0.0.1', '2021-11-15 03:28:35'),
(1717, 'users page visited127.0.0.1', '2021-11-15 03:32:53'),
(1718, 'users page visited127.0.0.1', '2021-11-15 03:33:11'),
(1719, 'users page visited127.0.0.1', '2021-11-15 03:34:30'),
(1720, 'users page visited127.0.0.1', '2021-11-15 03:34:55'),
(1721, 'users page visited127.0.0.1', '2021-11-15 03:35:06'),
(1722, 'users page visited127.0.0.1', '2021-11-15 03:35:09'),
(1723, 'users page visited127.0.0.1', '2021-11-15 03:35:09'),
(1724, 'users page visited127.0.0.1', '2021-11-15 03:35:51'),
(1725, 'users page visited127.0.0.1', '2021-11-15 03:35:56'),
(1726, 'users page visited127.0.0.1', '2021-11-15 03:35:56'),
(1727, 'users page visited127.0.0.1', '2021-11-15 03:36:22'),
(1728, 'users page visited127.0.0.1', '2021-11-15 03:36:22'),
(1729, 'users page visited127.0.0.1', '2021-11-15 03:37:27'),
(1730, 'users page visited127.0.0.1', '2021-11-15 03:37:27'),
(1731, 'users page visited127.0.0.1', '2021-11-15 03:37:37'),
(1732, 'users page visited127.0.0.1', '2021-11-15 03:38:11'),
(1733, 'users page visited127.0.0.1', '2021-11-15 03:38:14'),
(1734, 'users page visited127.0.0.1', '2021-11-15 03:38:53'),
(1735, 'users page visited127.0.0.1', '2021-11-15 03:39:42'),
(1736, 'users page visited127.0.0.1', '2021-11-15 03:39:42'),
(1737, 'users page visited127.0.0.1', '2021-11-15 03:39:49'),
(1738, 'users page visited127.0.0.1', '2021-11-15 03:40:37'),
(1739, 'users page visited127.0.0.1', '2021-11-15 03:40:41'),
(1740, 'users page visited127.0.0.1', '2021-11-15 03:41:09'),
(1741, 'users page visited127.0.0.1', '2021-11-15 03:41:09'),
(1742, 'users page visited127.0.0.1', '2021-11-15 03:41:32'),
(1743, 'users page visited127.0.0.1', '2021-11-15 03:41:44'),
(1744, 'users page visited127.0.0.1', '2021-11-15 03:41:45'),
(1745, 'users page visited127.0.0.1', '2021-11-15 03:42:12'),
(1746, 'users page visited127.0.0.1', '2021-11-15 03:42:12'),
(1747, 'users page visited127.0.0.1', '2021-11-15 03:49:42'),
(1748, 'users page visited127.0.0.1', '2021-11-15 03:49:44'),
(1749, 'users page visited127.0.0.1', '2021-11-15 03:50:23'),
(1750, 'users page visited127.0.0.1', '2021-11-15 03:50:28'),
(1751, 'users page visited127.0.0.1', '2021-11-15 03:50:31'),
(1752, 'users page visited127.0.0.1', '2021-11-15 03:50:47'),
(1753, 'users page visited127.0.0.1', '2021-11-15 03:51:12'),
(1754, 'users page visited127.0.0.1', '2021-11-15 03:51:15'),
(1755, 'users page visited127.0.0.1', '2021-11-15 03:51:20'),
(1756, 'users page visited127.0.0.1', '2021-11-15 03:51:37'),
(1757, 'users page visited127.0.0.1', '2021-11-15 03:51:40'),
(1758, 'users page visited127.0.0.1', '2021-11-15 03:53:00'),
(1759, 'users page visited127.0.0.1', '2021-11-15 03:54:14'),
(1760, 'users page visited127.0.0.1', '2021-11-15 04:00:49'),
(1761, 'users page visited127.0.0.1', '2021-11-15 04:01:48'),
(1762, 'users page visited127.0.0.1', '2021-11-15 04:01:48'),
(1763, 'users page visited127.0.0.1', '2021-11-15 04:02:41'),
(1764, 'users page visited127.0.0.1', '2021-11-15 04:02:41'),
(1765, 'users page visited127.0.0.1', '2021-11-15 04:03:13'),
(1766, 'users page visited127.0.0.1', '2021-11-15 04:03:13'),
(1767, 'users page visited127.0.0.1', '2021-11-15 04:04:00'),
(1768, 'users page visited127.0.0.1', '2021-11-15 04:04:00'),
(1769, 'users page visited127.0.0.1', '2021-11-15 04:04:32'),
(1770, 'users page visited127.0.0.1', '2021-11-15 04:04:32'),
(1771, 'users page visited127.0.0.1', '2021-11-15 04:04:59'),
(1772, 'users page visited127.0.0.1', '2021-11-15 04:04:59'),
(1773, 'users page visited127.0.0.1', '2021-11-15 04:09:28'),
(1774, 'users page visited127.0.0.1', '2021-11-15 04:10:16'),
(1775, 'users page visited127.0.0.1', '2021-11-15 04:10:22'),
(1776, 'users page visited127.0.0.1', '2021-11-15 04:10:22'),
(1777, 'users page visited127.0.0.1', '2021-11-15 04:24:02'),
(1778, 'users page visited127.0.0.1', '2021-11-15 04:25:23'),
(1779, 'users page visited127.0.0.1', '2021-11-15 04:25:27'),
(1780, 'admin url vistied 127.0.0.1', '2021-11-15 04:25:57'),
(1781, 'users page visited127.0.0.1', '2021-11-15 04:26:11'),
(1782, 'users page visited127.0.0.1', '2021-11-15 04:26:15'),
(1783, 'users page visited127.0.0.1', '2021-11-15 04:26:33'),
(1784, 'users page visited127.0.0.1', '2021-11-15 04:26:35'),
(1785, 'users page visited127.0.0.1', '2021-11-15 04:28:15'),
(1786, 'users page visited127.0.0.1', '2021-11-15 04:28:31'),
(1787, 'users page visited127.0.0.1', '2021-11-15 04:37:49'),
(1788, 'users page visited127.0.0.1', '2021-11-15 04:38:00'),
(1789, 'users page visited127.0.0.1', '2021-11-15 04:39:59'),
(1790, 'users page visited127.0.0.1', '2021-11-15 04:40:02'),
(1791, 'users page visited127.0.0.1', '2021-11-15 04:42:53'),
(1792, 'users page visited127.0.0.1', '2021-11-15 04:42:59'),
(1793, 'users page visited127.0.0.1', '2021-11-15 04:43:47'),
(1794, 'users page visited127.0.0.1', '2021-11-15 04:43:51'),
(1795, 'users page visited127.0.0.1', '2021-11-15 04:43:51'),
(1796, 'users page visited127.0.0.1', '2021-11-15 04:46:30'),
(1797, 'users page visited127.0.0.1', '2021-11-15 05:07:02'),
(1798, 'users page visited127.0.0.1', '2021-11-15 05:07:04'),
(1799, 'users page visited127.0.0.1', '2021-11-15 05:10:01'),
(1800, 'users page visited127.0.0.1', '2021-11-15 05:12:35'),
(1801, 'users page visited127.0.0.1', '2021-11-15 05:12:57'),
(1802, 'users page visited127.0.0.1', '2021-11-15 05:12:57'),
(1803, 'users page visited127.0.0.1', '2021-11-15 05:25:55'),
(1804, 'users page visited127.0.0.1', '2021-11-15 05:25:57'),
(1805, 'users page visited127.0.0.1', '2021-11-15 05:26:02'),
(1806, 'users page visited127.0.0.1', '2021-11-15 05:29:39'),
(1807, 'users page visited127.0.0.1', '2021-11-15 05:34:25'),
(1808, 'users page visited127.0.0.1', '2021-11-15 05:34:25'),
(1809, 'users page visited127.0.0.1', '2021-11-15 05:35:14'),
(1810, 'users page visited127.0.0.1', '2021-11-15 05:35:14'),
(1811, 'users page visited127.0.0.1', '2021-11-15 05:35:44'),
(1812, 'users page visited127.0.0.1', '2021-11-15 05:35:44'),
(1813, 'users page visited127.0.0.1', '2021-11-15 05:42:22'),
(1814, 'users page visited127.0.0.1', '2021-11-15 05:42:22'),
(1815, 'users page visited127.0.0.1', '2021-11-15 05:44:29'),
(1816, 'users page visited127.0.0.1', '2021-11-15 05:45:10'),
(1817, 'users page visited127.0.0.1', '2021-11-15 05:45:13'),
(1818, 'users page visited127.0.0.1', '2021-11-15 05:45:18'),
(1819, 'users page visited127.0.0.1', '2021-11-15 05:45:35'),
(1820, 'users page visited127.0.0.1', '2021-11-15 05:45:36'),
(1821, 'users page visited127.0.0.1', '2021-11-15 05:50:07'),
(1822, 'users page visited127.0.0.1', '2021-11-15 05:50:26'),
(1823, 'users page visited127.0.0.1', '2021-11-15 05:50:42'),
(1824, 'users page visited127.0.0.1', '2021-11-15 05:51:10'),
(1825, 'users page visited127.0.0.1', '2021-11-15 05:57:31'),
(1826, 'users page visited127.0.0.1', '2021-11-15 05:57:35'),
(1827, 'users page visited127.0.0.1', '2021-11-15 05:57:35'),
(1828, 'users page visited127.0.0.1', '2021-11-15 05:59:01'),
(1829, 'users page visited127.0.0.1', '2021-11-15 05:59:01'),
(1830, 'users page visited127.0.0.1', '2021-11-15 06:06:03'),
(1831, 'users page visited127.0.0.1', '2021-11-15 06:09:52'),
(1832, 'users page visited127.0.0.1', '2021-11-15 06:09:56'),
(1833, 'users page visited127.0.0.1', '2021-11-15 06:09:56'),
(1834, 'users page visited127.0.0.1', '2021-11-15 06:11:38'),
(1835, 'users page visited127.0.0.1', '2021-11-15 06:11:40'),
(1836, 'users page visited127.0.0.1', '2021-11-15 06:13:29'),
(1837, 'users page visited127.0.0.1', '2021-11-15 06:14:05'),
(1838, 'users page visited127.0.0.1', '2021-11-15 06:14:15'),
(1839, 'admin url vistied 49.36.239.205', '2021-11-15 06:23:53'),
(1840, 'admin url vistied 49.36.239.205', '2021-11-15 06:24:00'),
(1841, 'login form submit vistied 49.36.239.205', '2021-11-15 06:24:00'),
(1842, 'login success vistied 49.36.239.205', '2021-11-15 06:24:00'),
(1843, 'users page visited49.36.239.205', '2021-11-15 06:25:40'),
(1844, 'users page visited49.36.239.205', '2021-11-15 06:25:47'),
(1845, 'users page visited49.36.239.205', '2021-11-15 06:27:31'),
(1846, 'users page visited49.36.239.205', '2021-11-15 06:27:35'),
(1847, 'users page visited49.36.239.205', '2021-11-15 06:27:35'),
(1848, 'users page visited49.36.239.205', '2021-11-15 06:27:37'),
(1849, 'users page visited49.36.239.205', '2021-11-15 06:27:37'),
(1850, 'users page visited49.36.239.205', '2021-11-15 06:28:06'),
(1851, 'users page visited49.36.239.205', '2021-11-15 06:28:06'),
(1852, 'users page visited49.36.239.205', '2021-11-15 06:28:12'),
(1853, 'users page visited49.36.239.205', '2021-11-15 06:28:12'),
(1854, 'users page visited49.36.239.205', '2021-11-15 06:28:18'),
(1855, 'users page visited49.36.239.205', '2021-11-15 06:28:18'),
(1856, 'users page visited49.36.239.205', '2021-11-15 06:28:26'),
(1857, 'users page visited49.36.239.205', '2021-11-15 06:28:26'),
(1858, 'users page visited49.36.239.205', '2021-11-15 06:28:30'),
(1859, 'users page visited49.36.239.205', '2021-11-15 06:28:30'),
(1860, 'users page visited49.36.239.205', '2021-11-15 06:28:34'),
(1861, 'users page visited49.36.239.205', '2021-11-15 06:28:35'),
(1862, 'users page visited49.36.239.205', '2021-11-15 06:31:13'),
(1863, 'admin url vistied 49.36.239.205', '2021-11-15 06:31:54'),
(1864, 'admin url vistied 49.36.239.205', '2021-11-15 06:31:57'),
(1865, 'login form submit vistied 49.36.239.205', '2021-11-15 06:31:57'),
(1866, 'login success vistied 49.36.239.205', '2021-11-15 06:31:57'),
(1867, 'users page visited49.36.239.205', '2021-11-15 06:32:12'),
(1868, 'users page visited49.36.239.205', '2021-11-15 06:32:14'),
(1869, 'users page visited49.36.239.205', '2021-11-15 06:32:16'),
(1870, 'users page visited49.36.239.205', '2021-11-15 06:32:19'),
(1871, 'users page visited49.36.239.205', '2021-11-15 06:32:29'),
(1872, 'users page visited49.36.239.205', '2021-11-15 06:32:29'),
(1873, 'users page visited49.36.239.205', '2021-11-15 06:32:34'),
(1874, 'users page visited49.36.239.205', '2021-11-15 06:32:36'),
(1875, 'users page visited49.36.239.205', '2021-11-15 06:32:39'),
(1876, 'users page visited49.36.239.205', '2021-11-15 06:33:18'),
(1877, 'users page visited49.36.239.205', '2021-11-15 06:33:20'),
(1878, 'users page visited49.36.239.205', '2021-11-15 06:33:22'),
(1879, 'users page visited49.36.239.205', '2021-11-15 06:33:24'),
(1880, 'users page visited49.36.239.205', '2021-11-15 06:33:25'),
(1881, 'users page visited49.36.239.205', '2021-11-15 06:33:33'),
(1882, 'users page visited49.36.239.205', '2021-11-15 06:33:45'),
(1883, 'users page visited49.36.239.205', '2021-11-15 06:33:59'),
(1884, 'users page visited49.36.239.205', '2021-11-15 06:34:03'),
(1885, 'users page visited49.36.239.205', '2021-11-15 06:34:38'),
(1886, 'users page visited49.36.239.205', '2021-11-15 06:36:02'),
(1887, 'users page visited49.36.239.205', '2021-11-15 06:36:02'),
(1888, 'users page visited49.36.239.205', '2021-11-15 06:36:15'),
(1889, 'users page visited49.36.239.205', '2021-11-15 06:36:23'),
(1890, 'users page visited49.36.239.205', '2021-11-15 06:36:36'),
(1891, 'users page visited49.36.239.205', '2021-11-15 06:37:01'),
(1892, 'users page visited49.36.239.205', '2021-11-15 06:37:01'),
(1893, 'users page visited49.36.239.205', '2021-11-15 06:37:08'),
(1894, 'users page visited49.36.239.205', '2021-11-15 06:37:22'),
(1895, 'users page visited49.36.239.205', '2021-11-15 06:37:46'),
(1896, 'users page visited49.36.239.205', '2021-11-15 06:37:47'),
(1897, 'users page visited49.36.239.205', '2021-11-15 06:37:50'),
(1898, 'users page visited49.36.239.205', '2021-11-15 06:38:10'),
(1899, 'users page visited49.36.239.205', '2021-11-15 06:38:13'),
(1900, 'users page visited49.36.239.205', '2021-11-15 06:38:26'),
(1901, 'users page visited49.36.239.205', '2021-11-15 06:39:03'),
(1902, 'admin url vistied 103.137.85.187', '2021-11-15 07:28:25'),
(1903, 'admin url vistied 103.137.85.187', '2021-11-15 07:28:36'),
(1904, 'admin url vistied 103.137.85.187', '2021-11-15 07:28:47'),
(1905, 'login form submit vistied 103.137.85.187', '2021-11-15 07:28:47'),
(1906, 'login success vistied 103.137.85.187', '2021-11-15 07:28:47'),
(1907, 'users page visited103.137.85.187', '2021-11-15 07:29:00'),
(1908, 'users page visited103.137.85.187', '2021-11-15 07:29:08'),
(1909, 'users page visited103.137.85.187', '2021-11-15 07:29:16'),
(1910, 'users page visited103.137.85.187', '2021-11-15 07:29:28'),
(1911, 'users page visited103.137.85.187', '2021-11-15 07:29:30'),
(1912, 'users page visited103.137.85.187', '2021-11-15 07:30:31'),
(1913, 'users page visited103.137.85.187', '2021-11-15 07:30:50'),
(1914, 'users page visited103.137.85.187', '2021-11-15 07:30:54'),
(1915, 'users page visited103.137.85.187', '2021-11-15 07:31:05'),
(1916, 'users page visited103.137.85.187', '2021-11-15 07:31:21'),
(1917, 'users page visited103.137.85.187', '2021-11-15 07:31:23'),
(1918, 'users page visited103.137.85.187', '2021-11-15 07:31:54'),
(1919, 'users page visited103.137.85.187', '2021-11-15 07:32:20'),
(1920, 'users page visited103.137.85.187', '2021-11-15 07:32:26'),
(1921, 'users page visited103.137.85.187', '2021-11-15 07:32:34'),
(1922, 'users page visited103.137.85.187', '2021-11-15 07:32:39'),
(1923, 'users page visited103.137.85.187', '2021-11-15 07:32:59'),
(1924, 'users page visited103.137.85.187', '2021-11-15 07:33:07'),
(1925, 'users page visited103.137.85.187', '2021-11-15 07:33:34'),
(1926, 'users page visited103.137.85.187', '2021-11-15 07:33:34'),
(1927, 'users page visited103.137.85.187', '2021-11-15 07:33:42'),
(1928, 'users page visited103.137.85.187', '2021-11-15 07:33:46'),
(1929, 'users page visited103.137.85.187', '2021-11-15 07:34:14'),
(1930, 'admin url vistied 49.36.237.187', '2021-11-15 21:12:18'),
(1931, 'admin url vistied 49.36.237.187', '2021-11-15 21:12:21'),
(1932, 'login form submit vistied 49.36.237.187', '2021-11-15 21:12:21'),
(1933, 'login success vistied 49.36.237.187', '2021-11-15 21:12:21'),
(1934, 'users page visited49.36.237.187', '2021-11-15 21:12:23'),
(1935, 'users page visited49.36.237.187', '2021-11-15 21:12:25'),
(1936, 'users page visited49.36.237.187', '2021-11-15 21:12:33'),
(1937, 'users page visited49.36.237.187', '2021-11-15 21:12:36'),
(1938, 'users page visited49.36.237.187', '2021-11-15 21:12:42'),
(1939, 'users page visited49.36.237.187', '2021-11-15 21:12:45'),
(1940, 'users page visited49.36.237.187', '2021-11-15 21:12:51'),
(1941, 'users page visited49.36.237.187', '2021-11-15 21:12:53'),
(1942, 'users page visited49.36.237.187', '2021-11-15 21:12:57'),
(1943, 'users page visited49.36.237.187', '2021-11-15 21:13:05'),
(1944, 'users page visited49.36.237.187', '2021-11-15 21:13:11'),
(1945, 'users page visited49.36.237.187', '2021-11-15 21:13:16'),
(1946, 'users page visited49.36.237.187', '2021-11-15 21:13:22'),
(1947, 'users page visited49.36.237.187', '2021-11-15 21:13:23'),
(1948, 'users page visited49.36.237.187', '2021-11-15 21:13:25'),
(1949, 'users page visited49.36.237.187', '2021-11-15 21:13:27'),
(1950, 'admin url vistied 49.36.237.187', '2021-11-15 21:21:33'),
(1951, 'admin url vistied 49.36.237.187', '2021-11-15 21:21:35'),
(1952, 'login form submit vistied 49.36.237.187', '2021-11-15 21:21:35'),
(1953, 'login success vistied 49.36.237.187', '2021-11-15 21:21:35'),
(1954, 'admin url vistied 49.36.237.187', '2021-11-15 21:23:19'),
(1955, 'admin url vistied 49.36.237.187', '2021-11-15 21:23:34'),
(1956, 'admin url vistied 49.36.237.187', '2021-11-15 21:23:37'),
(1957, 'login form submit vistied 49.36.237.187', '2021-11-15 21:23:37'),
(1958, 'login success vistied 49.36.237.187', '2021-11-15 21:23:37'),
(1959, 'users page visited49.36.237.187', '2021-11-15 21:26:38'),
(1960, 'users page visited49.36.237.187', '2021-11-15 21:26:40'),
(1961, 'users page visited49.36.237.187', '2021-11-15 21:30:27'),
(1962, 'users page visited49.36.237.187', '2021-11-15 21:30:30'),
(1963, 'users page visited49.36.237.187', '2021-11-15 21:30:33'),
(1964, 'users page visited49.36.237.187', '2021-11-15 21:34:16'),
(1965, 'users page visited49.36.237.187', '2021-11-15 21:34:27'),
(1966, 'users page visited49.36.237.187', '2021-11-15 21:34:28'),
(1967, 'users page visited49.36.237.187', '2021-11-15 21:34:32'),
(1968, 'users page visited49.36.237.187', '2021-11-15 21:34:35'),
(1969, 'users page visited49.36.237.187', '2021-11-15 21:34:37'),
(1970, 'users page visited49.36.237.187', '2021-11-15 21:34:45'),
(1971, 'users page visited49.36.237.187', '2021-11-15 21:34:46'),
(1972, 'users page visited49.36.237.187', '2021-11-15 21:34:53'),
(1973, 'users page visited49.36.237.187', '2021-11-15 21:35:01'),
(1974, 'users page visited49.36.237.187', '2021-11-15 21:35:27'),
(1975, 'users page visited49.36.237.187', '2021-11-15 21:35:31'),
(1976, 'users page visited49.36.237.187', '2021-11-15 21:35:43'),
(1977, 'users page visited49.36.237.187', '2021-11-15 21:35:59'),
(1978, 'users page visited49.36.237.187', '2021-11-15 21:36:08'),
(1979, 'users page visited49.36.237.187', '2021-11-15 21:36:08'),
(1980, 'users page visited49.36.237.187', '2021-11-15 21:36:13'),
(1981, 'users page visited49.36.237.187', '2021-11-15 21:36:13'),
(1982, 'users page visited49.36.237.187', '2021-11-15 21:36:28'),
(1983, 'users page visited49.36.237.187', '2021-11-15 21:38:06'),
(1984, 'users page visited49.36.237.187', '2021-11-15 21:38:22'),
(1985, 'users page visited49.36.237.187', '2021-11-15 21:38:31'),
(1986, 'users page visited49.36.237.187', '2021-11-15 21:38:49'),
(1987, 'users page visited49.36.237.187', '2021-11-15 21:39:15'),
(1988, 'users page visited49.36.237.187', '2021-11-15 21:40:12'),
(1989, 'users page visited49.36.237.187', '2021-11-15 21:41:00'),
(1990, 'users page visited49.36.237.187', '2021-11-15 21:41:53'),
(1991, 'users page visited49.36.237.187', '2021-11-15 21:41:57'),
(1992, 'users page visited49.36.237.187', '2021-11-15 21:42:11'),
(1993, 'users page visited49.36.237.187', '2021-11-15 21:42:19'),
(1994, 'users page visited49.36.237.187', '2021-11-15 21:42:20'),
(1995, 'users page visited49.36.237.187', '2021-11-15 21:42:23'),
(1996, 'users page visited49.36.237.187', '2021-11-15 21:49:47'),
(1997, 'users page visited49.36.237.187', '2021-11-15 21:49:50'),
(1998, 'users page visited49.36.237.187', '2021-11-15 21:49:55'),
(1999, 'users page visited49.36.237.187', '2021-11-15 22:00:06'),
(2000, 'users page visited49.36.237.187', '2021-11-15 22:08:56'),
(2001, 'users page visited49.36.237.187', '2021-11-15 22:09:13'),
(2002, 'users page visited49.36.237.187', '2021-11-15 22:09:13'),
(2003, 'users page visited49.36.237.187', '2021-11-15 22:09:14'),
(2004, 'users page visited49.36.237.187', '2021-11-15 22:09:14'),
(2005, 'users page visited49.36.237.187', '2021-11-15 22:09:23'),
(2006, 'users page visited49.36.237.187', '2021-11-15 22:09:41'),
(2007, 'users page visited49.36.237.187', '2021-11-15 22:09:49'),
(2008, 'users page visited49.36.237.187', '2021-11-15 22:10:00'),
(2009, 'users page visited49.36.237.187', '2021-11-15 22:10:11'),
(2010, 'users page visited49.36.237.187', '2021-11-15 22:10:21'),
(2011, 'users page visited49.36.237.187', '2021-11-15 22:10:28'),
(2012, 'users page visited49.36.237.187', '2021-11-15 22:10:28'),
(2013, 'users page visited49.36.237.187', '2021-11-15 22:10:28'),
(2014, 'users page visited49.36.237.187', '2021-11-15 22:10:28'),
(2015, 'users page visited49.36.237.187', '2021-11-15 22:10:28'),
(2016, 'users page visited49.36.237.187', '2021-11-15 22:10:28'),
(2017, 'users page visited49.36.237.187', '2021-11-15 22:10:29'),
(2018, 'users page visited49.36.237.187', '2021-11-15 22:10:29'),
(2019, 'users page visited49.36.237.187', '2021-11-15 22:10:29'),
(2020, 'users page visited49.36.237.187', '2021-11-15 22:10:52'),
(2021, 'users page visited49.36.237.187', '2021-11-15 22:10:57'),
(2022, 'users page visited49.36.237.187', '2021-11-15 22:11:02'),
(2023, 'users page visited49.36.237.187', '2021-11-15 22:12:13'),
(2024, 'users page visited49.36.237.187', '2021-11-15 22:12:13'),
(2025, 'users page visited49.36.237.187', '2021-11-15 22:12:17'),
(2026, 'users page visited49.36.237.187', '2021-11-15 22:12:20'),
(2027, 'users page visited49.36.237.187', '2021-11-15 22:12:23'),
(2028, 'users page visited49.36.237.187', '2021-11-15 22:13:07'),
(2029, 'users page visited49.36.237.187', '2021-11-15 22:13:16'),
(2030, 'users page visited49.36.237.187', '2021-11-15 22:13:16'),
(2031, 'users page visited49.36.237.187', '2021-11-15 22:13:19'),
(2032, 'users page visited49.36.237.187', '2021-11-15 22:14:03'),
(2033, 'users page visited49.36.237.187', '2021-11-15 22:14:08'),
(2034, 'users page visited49.36.237.187', '2021-11-15 22:14:18'),
(2035, 'users page visited49.36.237.187', '2021-11-15 22:14:18'),
(2036, 'users page visited49.36.237.187', '2021-11-15 22:15:29'),
(2037, 'users page visited49.36.237.187', '2021-11-15 22:15:32'),
(2038, 'users page visited49.36.237.187', '2021-11-15 22:15:38'),
(2039, 'users page visited49.36.237.187', '2021-11-15 22:15:46'),
(2040, 'users page visited49.36.237.187', '2021-11-15 22:16:09'),
(2041, 'users page visited49.36.237.187', '2021-11-15 22:16:09'),
(2042, 'users page visited49.36.237.187', '2021-11-15 22:16:18'),
(2043, 'users page visited49.36.237.187', '2021-11-15 22:16:18'),
(2044, 'users page visited49.36.237.187', '2021-11-15 22:16:22'),
(2045, 'users page visited49.36.237.187', '2021-11-15 22:16:35'),
(2046, 'users page visited49.36.237.187', '2021-11-15 22:16:48'),
(2047, 'users page visited49.36.237.187', '2021-11-15 22:16:51'),
(2048, 'users page visited49.36.237.187', '2021-11-15 22:18:21'),
(2049, 'users page visited49.36.237.187', '2021-11-15 22:18:33'),
(2050, 'users page visited49.36.237.187', '2021-11-15 22:18:36'),
(2051, 'users page visited49.36.237.187', '2021-11-15 22:27:45'),
(2052, 'users page visited49.36.237.187', '2021-11-15 22:28:02'),
(2053, 'users page visited49.36.237.187', '2021-11-15 22:28:04'),
(2054, 'users page visited49.36.237.187', '2021-11-15 22:28:05'),
(2055, 'users page visited49.36.237.187', '2021-11-15 22:28:06'),
(2056, 'users page visited49.36.237.187', '2021-11-15 22:28:12'),
(2057, 'users page visited49.36.237.187', '2021-11-15 22:28:13'),
(2058, 'users page visited49.36.237.187', '2021-11-15 22:28:15'),
(2059, 'users page visited49.36.237.187', '2021-11-15 22:28:38'),
(2060, 'users page visited49.36.237.187', '2021-11-15 22:28:42'),
(2061, 'users page visited49.36.237.187', '2021-11-15 22:29:37'),
(2062, 'users page visited49.36.237.187', '2021-11-15 22:29:39'),
(2063, 'users page visited49.36.237.187', '2021-11-15 22:30:43'),
(2064, 'users page visited49.36.237.187', '2021-11-15 22:30:50'),
(2065, 'users page visited49.36.237.187', '2021-11-15 22:35:15'),
(2066, 'users page visited49.36.237.187', '2021-11-15 22:35:35'),
(2067, 'users page visited49.36.237.187', '2021-11-15 22:35:41'),
(2068, 'users page visited49.36.237.187', '2021-11-15 22:35:57'),
(2069, 'users page visited49.36.237.187', '2021-11-15 22:36:05'),
(2070, 'users page visited49.36.237.187', '2021-11-15 22:43:41'),
(2071, 'users page visited49.36.237.187', '2021-11-15 22:43:52'),
(2072, 'users page visited49.36.237.187', '2021-11-15 22:43:52'),
(2073, 'users page visited49.36.237.187', '2021-11-15 22:43:59'),
(2074, 'users page visited49.36.237.187', '2021-11-15 22:44:16'),
(2075, 'users page visited49.36.237.187', '2021-11-15 22:44:37'),
(2076, 'users page visited49.36.237.187', '2021-11-15 22:45:33'),
(2077, 'users page visited49.36.237.187', '2021-11-15 22:45:49'),
(2078, 'users page visited49.36.237.187', '2021-11-15 22:46:35'),
(2079, 'users page visited49.36.237.187', '2021-11-15 22:46:48'),
(2080, 'users page visited49.36.237.187', '2021-11-15 22:46:48'),
(2081, 'users page visited49.36.237.187', '2021-11-15 22:46:55'),
(2082, 'users page visited49.36.237.187', '2021-11-15 22:47:00'),
(2083, 'users page visited49.36.237.187', '2021-11-15 22:47:00'),
(2084, 'users page visited49.36.237.187', '2021-11-15 22:47:02'),
(2085, 'users page visited49.36.237.187', '2021-11-15 22:47:15'),
(2086, 'users page visited49.36.237.187', '2021-11-15 22:47:15'),
(2087, 'users page visited49.36.237.187', '2021-11-15 22:47:30'),
(2088, 'users page visited49.36.237.187', '2021-11-15 22:48:03'),
(2089, 'users page visited49.36.237.187', '2021-11-15 22:48:03'),
(2090, 'users page visited49.36.237.187', '2021-11-15 22:48:08'),
(2091, 'users page visited49.36.237.187', '2021-11-15 22:48:08'),
(2092, 'users page visited49.36.237.187', '2021-11-15 22:48:11'),
(2093, 'users page visited49.36.237.187', '2021-11-15 22:48:11'),
(2094, 'users page visited49.36.237.187', '2021-11-15 22:48:16'),
(2095, 'users page visited49.36.237.187', '2021-11-15 22:51:31'),
(2096, 'users page visited49.36.237.187', '2021-11-15 22:51:31'),
(2097, 'users page visited49.36.237.187', '2021-11-15 22:51:38'),
(2098, 'users page visited49.36.237.187', '2021-11-15 22:51:40'),
(2099, 'users page visited49.36.237.187', '2021-11-15 22:51:57'),
(2100, 'users page visited49.36.237.187', '2021-11-15 22:52:08'),
(2101, 'users page visited49.36.237.187', '2021-11-15 22:52:08'),
(2102, 'users page visited49.36.237.187', '2021-11-15 22:52:16'),
(2103, 'users page visited49.36.237.187', '2021-11-15 22:52:23'),
(2104, 'users page visited49.36.237.187', '2021-11-15 22:52:40'),
(2105, 'users page visited49.36.237.187', '2021-11-15 22:52:49'),
(2106, 'users page visited49.36.237.187', '2021-11-15 22:52:49'),
(2107, 'users page visited49.36.237.187', '2021-11-15 22:55:08'),
(2108, 'users page visited49.36.237.187', '2021-11-15 22:55:16'),
(2109, 'users page visited49.36.237.187', '2021-11-15 22:55:18'),
(2110, 'users page visited49.36.237.187', '2021-11-15 22:55:22'),
(2111, 'users page visited49.36.237.187', '2021-11-15 22:55:24'),
(2112, 'users page visited49.36.237.187', '2021-11-15 22:55:28'),
(2113, 'users page visited49.36.237.187', '2021-11-15 22:58:27'),
(2114, 'users page visited49.36.237.187', '2021-11-15 23:01:19'),
(2115, 'users page visited49.36.237.187', '2021-11-15 23:01:23'),
(2116, 'users page visited49.36.237.187', '2021-11-15 23:01:26'),
(2117, 'users page visited49.36.237.187', '2021-11-15 23:01:30'),
(2118, 'users page visited49.36.237.187', '2021-11-15 23:02:00'),
(2119, 'users page visited49.36.237.187', '2021-11-15 23:02:02'),
(2120, 'users page visited49.36.237.187', '2021-11-15 23:02:35'),
(2121, 'users page visited49.36.237.187', '2021-11-15 23:02:58'),
(2122, 'users page visited49.36.237.187', '2021-11-15 23:03:01'),
(2123, 'users page visited49.36.237.187', '2021-11-15 23:03:24'),
(2124, 'users page visited49.36.237.187', '2021-11-15 23:04:03'),
(2125, 'users page visited49.36.237.187', '2021-11-15 23:04:04'),
(2126, 'users page visited49.36.237.187', '2021-11-15 23:04:48'),
(2127, 'users page visited49.36.237.187', '2021-11-15 23:05:14'),
(2128, 'users page visited49.36.237.187', '2021-11-15 23:05:26'),
(2129, 'users page visited49.36.237.187', '2021-11-15 23:05:45'),
(2130, 'users page visited49.36.237.187', '2021-11-15 23:05:45'),
(2131, 'users page visited49.36.237.187', '2021-11-15 23:05:56'),
(2132, 'users page visited49.36.237.187', '2021-11-15 23:05:57'),
(2133, 'users page visited49.36.237.187', '2021-11-15 23:06:20'),
(2134, 'users page visited49.36.237.187', '2021-11-15 23:06:20'),
(2135, 'users page visited49.36.237.187', '2021-11-15 23:06:27'),
(2136, 'users page visited49.36.237.187', '2021-11-15 23:06:30'),
(2137, 'users page visited49.36.237.187', '2021-11-15 23:07:19'),
(2138, 'users page visited49.36.237.187', '2021-11-15 23:07:31'),
(2139, 'users page visited49.36.237.187', '2021-11-15 23:07:39'),
(2140, 'users page visited49.36.237.187', '2021-11-15 23:07:41'),
(2141, 'users page visited49.36.237.187', '2021-11-15 23:07:44'),
(2142, 'users page visited49.36.237.187', '2021-11-15 23:07:46'),
(2143, 'users page visited49.36.237.187', '2021-11-15 23:08:08'),
(2144, 'users page visited49.36.237.187', '2021-11-15 23:08:11'),
(2145, 'users page visited49.36.237.187', '2021-11-15 23:08:15'),
(2146, 'users page visited49.36.237.187', '2021-11-15 23:08:17'),
(2147, 'users page visited49.36.237.187', '2021-11-15 23:08:20'),
(2148, 'users page visited49.36.237.187', '2021-11-15 23:08:24'),
(2149, 'users page visited49.36.237.187', '2021-11-15 23:08:27'),
(2150, 'users page visited49.36.237.187', '2021-11-15 23:08:30'),
(2151, 'users page visited49.36.237.187', '2021-11-15 23:08:31'),
(2152, 'users page visited49.36.237.187', '2021-11-15 23:08:33'),
(2153, 'users page visited49.36.237.187', '2021-11-15 23:08:35'),
(2154, 'users page visited49.36.237.187', '2021-11-15 23:08:45'),
(2155, 'users page visited49.36.237.187', '2021-11-15 23:11:14'),
(2156, 'users page visited49.36.237.187', '2021-11-15 23:11:15'),
(2157, 'users page visited49.36.237.187', '2021-11-15 23:11:17'),
(2158, 'users page visited49.36.237.187', '2021-11-15 23:11:17'),
(2159, 'users page visited49.36.237.187', '2021-11-15 23:11:24'),
(2160, 'users page visited49.36.237.187', '2021-11-15 23:11:26'),
(2161, 'users page visited49.36.237.187', '2021-11-15 23:11:26'),
(2162, 'users page visited49.36.237.187', '2021-11-15 23:11:29'),
(2163, 'users page visited49.36.237.187', '2021-11-15 23:11:31'),
(2164, 'admin url vistied 49.36.237.187', '2021-11-15 23:47:15'),
(2165, 'admin url vistied 49.36.237.187', '2021-11-15 23:47:18'),
(2166, 'login form submit vistied 49.36.237.187', '2021-11-15 23:47:18'),
(2167, 'login success vistied 49.36.237.187', '2021-11-15 23:47:18'),
(2168, 'admin url vistied 103.137.85.187', '2021-11-16 02:17:27'),
(2169, 'admin url vistied 103.137.85.187', '2021-11-16 02:17:33'),
(2170, 'login form submit vistied 103.137.85.187', '2021-11-16 02:17:33'),
(2171, 'admin url vistied 103.137.85.187', '2021-11-16 02:17:33'),
(2172, 'admin url vistied 103.137.85.187', '2021-11-16 02:18:06'),
(2173, 'login form submit vistied 103.137.85.187', '2021-11-16 02:18:06'),
(2174, 'login success vistied 103.137.85.187', '2021-11-16 02:18:06'),
(2175, 'users page visited103.137.85.187', '2021-11-16 02:18:14'),
(2176, 'users page visited103.137.85.187', '2021-11-16 02:18:17'),
(2177, 'users page visited103.137.85.187', '2021-11-16 02:18:22'),
(2178, 'users page visited103.137.85.187', '2021-11-16 02:18:50'),
(2179, 'users page visited103.137.85.187', '2021-11-16 02:18:55'),
(2180, 'users page visited103.137.85.187', '2021-11-16 02:18:58'),
(2181, 'users page visited103.137.85.187', '2021-11-16 02:21:15'),
(2182, 'users page visited103.137.85.187', '2021-11-16 02:22:53'),
(2183, 'users page visited103.137.85.187', '2021-11-16 02:22:53'),
(2184, 'users page visited103.137.85.187', '2021-11-16 02:23:51'),
(2185, 'users page visited103.137.85.187', '2021-11-16 02:29:18'),
(2186, 'users page visited103.137.85.187', '2021-11-16 02:29:18'),
(2187, 'users page visited103.137.85.187', '2021-11-16 02:30:44'),
(2188, 'users page visited103.137.85.187', '2021-11-16 02:32:44'),
(2189, 'users page visited103.137.85.187', '2021-11-16 02:32:53'),
(2190, 'users page visited103.137.85.187', '2021-11-16 02:59:04'),
(2191, 'admin url vistied 49.36.237.187', '2021-11-16 02:59:22'),
(2192, 'admin url vistied 49.36.237.187', '2021-11-16 02:59:25'),
(2193, 'login form submit vistied 49.36.237.187', '2021-11-16 02:59:25'),
(2194, 'login success vistied 49.36.237.187', '2021-11-16 02:59:25'),
(2195, 'users page visited49.36.237.187', '2021-11-16 02:59:27'),
(2196, 'users page visited49.36.237.187', '2021-11-16 03:00:37'),
(2197, 'users page visited49.36.237.187', '2021-11-16 03:00:37'),
(2198, 'users page visited49.36.237.187', '2021-11-16 03:01:00'),
(2199, 'users page visited49.36.237.187', '2021-11-16 03:01:00'),
(2200, 'users page visited103.137.85.187', '2021-11-16 03:04:13'),
(2201, 'users page visited103.137.85.187', '2021-11-16 03:04:37'),
(2202, 'users page visited49.36.237.187', '2021-11-16 03:13:26'),
(2203, 'users page visited103.137.85.187', '2021-11-16 03:28:42'),
(2204, 'users page visited103.137.85.187', '2021-11-16 03:28:58'),
(2205, 'users page visited49.36.237.187', '2021-11-16 03:29:15'),
(2206, 'users page visited49.36.237.187', '2021-11-16 03:29:27'),
(2207, 'users page visited49.36.237.187', '2021-11-16 03:29:30'),
(2208, 'users page visited103.137.85.187', '2021-11-16 03:30:47'),
(2209, 'users page visited49.36.237.187', '2021-11-16 03:31:48'),
(2210, 'users page visited49.36.237.187', '2021-11-16 03:31:54'),
(2211, 'users page visited49.36.237.187', '2021-11-16 03:33:39'),
(2212, 'users page visited103.137.85.187', '2021-11-16 03:34:12'),
(2213, 'users page visited103.137.85.187', '2021-11-16 03:35:19'),
(2214, 'users page visited49.36.237.187', '2021-11-16 03:41:55'),
(2215, 'users page visited49.36.237.187', '2021-11-16 03:42:26'),
(2216, 'users page visited49.36.237.187', '2021-11-16 03:42:28'),
(2217, 'users page visited49.36.237.187', '2021-11-16 03:42:35'),
(2218, 'users page visited49.36.237.187', '2021-11-16 03:42:40'),
(2219, 'users page visited49.36.237.187', '2021-11-16 03:43:15'),
(2220, 'users page visited49.36.237.187', '2021-11-16 03:48:42'),
(2221, 'users page visited49.36.237.187', '2021-11-16 03:49:29'),
(2222, 'users page visited49.36.237.187', '2021-11-16 03:49:33'),
(2223, 'users page visited49.36.237.187', '2021-11-16 03:49:34'),
(2224, 'users page visited49.36.237.187', '2021-11-16 03:50:12'),
(2225, 'users page visited49.36.237.187', '2021-11-16 03:50:12'),
(2226, 'users page visited49.36.237.187', '2021-11-16 03:51:41'),
(2227, 'users page visited49.36.237.187', '2021-11-16 03:52:01'),
(2228, 'users page visited49.36.237.187', '2021-11-16 03:52:06'),
(2229, 'users page visited49.36.237.187', '2021-11-16 03:52:06'),
(2230, 'users page visited49.36.237.187', '2021-11-16 03:52:22'),
(2231, 'users page visited49.36.237.187', '2021-11-16 03:52:22'),
(2232, 'users page visited103.137.85.187', '2021-11-16 03:53:00'),
(2233, 'users page visited103.137.85.187', '2021-11-16 03:53:16'),
(2234, 'users page visited49.36.237.187', '2021-11-16 03:54:06'),
(2235, 'users page visited49.36.237.187', '2021-11-16 03:54:22'),
(2236, 'users page visited49.36.237.187', '2021-11-16 03:54:22'),
(2237, 'users page visited49.36.237.187', '2021-11-16 03:54:52'),
(2238, 'users page visited49.36.237.187', '2021-11-16 03:54:52'),
(2239, 'users page visited49.36.237.187', '2021-11-16 03:57:12'),
(2240, 'users page visited49.36.237.187', '2021-11-16 03:57:31'),
(2241, 'users page visited49.36.237.187', '2021-11-16 03:57:43'),
(2242, 'users page visited49.36.237.187', '2021-11-16 03:57:46'),
(2243, 'users page visited49.36.237.187', '2021-11-16 03:57:46'),
(2244, 'users page visited49.36.237.187', '2021-11-16 03:58:08'),
(2245, 'users page visited49.36.237.187', '2021-11-16 03:58:23'),
(2246, 'users page visited49.36.237.187', '2021-11-16 03:58:23'),
(2247, 'users page visited49.36.237.187', '2021-11-16 03:58:42'),
(2248, 'users page visited49.36.237.187', '2021-11-16 03:58:46'),
(2249, 'users page visited49.36.237.187', '2021-11-16 03:58:49'),
(2250, 'users page visited49.36.237.187', '2021-11-16 03:58:52'),
(2251, 'users page visited49.36.237.187', '2021-11-16 03:58:54'),
(2252, 'users page visited49.36.237.187', '2021-11-16 03:59:00'),
(2253, 'users page visited103.137.85.187', '2021-11-16 04:00:05'),
(2254, 'users page visited103.137.85.187', '2021-11-16 04:00:05'),
(2255, 'users page visited103.137.85.187', '2021-11-16 04:01:30'),
(2256, 'users page visited103.137.85.187', '2021-11-16 04:01:30'),
(2257, 'users page visited103.137.85.187', '2021-11-16 04:01:57'),
(2258, 'users page visited103.137.85.187', '2021-11-16 04:03:02'),
(2259, 'users page visited49.36.237.187', '2021-11-16 04:03:40'),
(2260, 'users page visited49.36.237.187', '2021-11-16 04:05:09'),
(2261, 'users page visited49.36.237.187', '2021-11-16 04:05:13'),
(2262, 'users page visited49.36.237.187', '2021-11-16 04:05:23'),
(2263, 'users page visited103.137.85.187', '2021-11-16 04:06:23'),
(2264, 'users page visited103.137.85.187', '2021-11-16 04:06:30'),
(2265, 'users page visited103.137.85.187', '2021-11-16 04:06:41'),
(2266, 'users page visited103.137.85.187', '2021-11-16 04:06:41'),
(2267, 'users page visited103.137.85.187', '2021-11-16 04:13:10'),
(2268, 'users page visited49.36.237.187', '2021-11-16 04:14:27'),
(2269, 'users page visited103.137.85.187', '2021-11-16 04:15:54'),
(2270, 'users page visited103.137.85.187', '2021-11-16 04:15:54'),
(2271, 'users page visited49.36.237.187', '2021-11-16 04:16:23'),
(2272, 'users page visited49.36.237.187', '2021-11-16 04:16:40'),
(2273, 'users page visited49.36.237.187', '2021-11-16 04:16:47'),
(2274, 'users page visited49.36.237.187', '2021-11-16 04:16:50'),
(2275, 'users page visited49.36.237.187', '2021-11-16 04:16:51'),
(2276, 'users page visited49.36.237.187', '2021-11-16 04:22:16'),
(2277, 'users page visited49.36.237.187', '2021-11-16 04:22:20'),
(2278, 'users page visited49.36.237.187', '2021-11-16 04:22:22'),
(2279, 'users page visited49.36.237.187', '2021-11-16 04:22:30'),
(2280, 'users page visited49.36.237.187', '2021-11-16 04:24:31'),
(2281, 'users page visited49.36.237.187', '2021-11-16 04:25:47'),
(2282, 'users page visited49.36.237.187', '2021-11-16 04:25:53'),
(2283, 'users page visited49.36.237.187', '2021-11-16 04:26:03'),
(2284, 'users page visited49.36.237.187', '2021-11-16 04:26:06'),
(2285, 'users page visited49.36.237.187', '2021-11-16 04:26:24'),
(2286, 'users page visited49.36.237.187', '2021-11-16 04:26:25'),
(2287, 'users page visited49.36.237.187', '2021-11-16 04:26:56'),
(2288, 'users page visited49.36.237.187', '2021-11-16 04:27:49'),
(2289, 'users page visited103.137.85.187', '2021-11-16 04:30:41'),
(2290, 'users page visited103.137.85.187', '2021-11-16 04:30:41'),
(2291, 'users page visited49.36.237.187', '2021-11-16 04:32:19'),
(2292, 'users page visited49.36.237.187', '2021-11-16 04:32:39'),
(2293, 'users page visited49.36.237.187', '2021-11-16 04:34:28'),
(2294, 'users page visited49.36.237.187', '2021-11-16 04:34:46'),
(2295, 'users page visited49.36.237.187', '2021-11-16 04:37:45'),
(2296, 'users page visited49.36.237.187', '2021-11-16 04:38:07'),
(2297, 'users page visited49.36.237.187', '2021-11-16 04:38:07'),
(2298, 'users page visited49.36.237.187', '2021-11-16 04:38:13'),
(2299, 'users page visited49.36.237.187', '2021-11-16 04:38:27'),
(2300, 'users page visited49.36.237.187', '2021-11-16 04:38:27'),
(2301, 'users page visited49.36.237.187', '2021-11-16 04:38:40'),
(2302, 'users page visited49.36.237.187', '2021-11-16 04:39:30'),
(2303, 'users page visited49.36.237.187', '2021-11-16 04:39:45'),
(2304, 'users page visited49.36.237.187', '2021-11-16 04:39:45'),
(2305, 'users page visited49.36.237.187', '2021-11-16 04:40:00'),
(2306, 'users page visited49.36.237.187', '2021-11-16 04:40:00'),
(2307, 'users page visited49.36.237.187', '2021-11-16 04:40:19'),
(2308, 'users page visited49.36.237.187', '2021-11-16 04:40:19'),
(2309, 'users page visited49.36.237.187', '2021-11-16 04:41:14'),
(2310, 'users page visited49.36.237.187', '2021-11-16 04:41:16'),
(2311, 'users page visited103.137.85.187', '2021-11-16 04:45:30'),
(2312, 'users page visited103.137.85.187', '2021-11-16 04:45:32'),
(2313, 'users page visited103.137.85.187', '2021-11-16 04:49:27'),
(2314, 'users page visited103.137.85.187', '2021-11-16 04:49:27'),
(2315, 'users page visited103.137.85.187', '2021-11-16 04:49:37'),
(2316, 'users page visited103.137.85.187', '2021-11-16 04:49:37'),
(2317, 'users page visited103.137.85.187', '2021-11-16 04:51:21'),
(2318, 'users page visited49.36.237.187', '2021-11-16 04:52:53'),
(2319, 'users page visited103.137.85.187', '2021-11-16 04:52:57'),
(2320, 'users page visited103.137.85.187', '2021-11-16 04:53:04'),
(2321, 'users page visited103.137.85.187', '2021-11-16 04:54:08'),
(2322, 'users page visited103.137.85.187', '2021-11-16 04:54:08'),
(2323, 'users page visited103.137.85.187', '2021-11-16 04:57:14'),
(2324, 'users page visited103.137.85.187', '2021-11-16 04:57:20'),
(2325, 'users page visited103.137.85.187', '2021-11-16 05:03:44'),
(2326, 'users page visited103.137.85.187', '2021-11-16 05:04:54'),
(2327, 'users page visited103.137.85.187', '2021-11-16 05:04:54'),
(2328, 'users page visited103.137.85.187', '2021-11-16 05:15:51'),
(2329, 'users page visited103.137.85.187', '2021-11-16 05:15:55'),
(2330, 'users page visited103.137.85.187', '2021-11-16 05:19:58'),
(2331, 'users page visited103.137.85.187', '2021-11-16 05:19:58'),
(2332, 'admin url vistied 49.36.238.0', '2021-11-27 00:42:56'),
(2333, 'admin url vistied 49.36.238.0', '2021-11-27 00:43:10'),
(2334, 'login form submit vistied 49.36.238.0', '2021-11-27 00:43:10'),
(2335, 'login success vistied 49.36.238.0', '2021-11-27 00:43:10'),
(2336, 'users page visited49.36.238.0', '2021-11-27 00:43:17'),
(2337, 'users page visited49.36.238.0', '2021-11-27 00:43:31'),
(2338, 'users page visited49.36.238.0', '2021-11-27 00:43:34'),
(2339, 'users page visited49.36.238.0', '2021-11-27 00:43:37'),
(2340, 'users page visited49.36.238.0', '2021-11-27 00:43:39'),
(2341, 'users page visited49.36.238.0', '2021-11-27 00:43:42'),
(2342, 'users page visited49.36.238.0', '2021-11-27 00:44:19'),
(2343, 'users page visited49.36.238.0', '2021-11-27 00:44:56'),
(2344, 'users page visited49.36.238.0', '2021-11-27 00:45:00'),
(2345, 'users page visited49.36.238.0', '2021-11-27 00:45:00'),
(2346, 'users page visited49.36.238.0', '2021-11-27 00:45:17'),
(2347, 'users page visited49.36.238.0', '2021-11-27 00:45:17'),
(2348, 'users page visited49.36.238.0', '2021-11-27 00:45:48'),
(2349, 'users page visited49.36.238.0', '2021-11-27 00:45:52'),
(2350, 'users page visited49.36.238.0', '2021-11-27 01:05:44'),
(2351, 'admin url vistied 49.36.238.164', '2021-12-03 22:20:50'),
(2352, 'admin url vistied 49.36.238.164', '2021-12-03 22:20:57'),
(2353, 'admin url vistied 49.36.238.164', '2021-12-03 22:21:00'),
(2354, 'admin url vistied 49.36.238.164', '2021-12-03 22:21:03'),
(2355, 'login form submit vistied 49.36.238.164', '2021-12-03 22:21:03'),
(2356, 'login success vistied 49.36.238.164', '2021-12-03 22:21:03'),
(2357, 'users page visited49.36.238.164', '2021-12-03 22:21:06'),
(2358, 'users page visited49.36.238.164', '2021-12-03 22:21:07'),
(2359, 'admin url vistied 92.223.85.247', '2021-12-16 14:37:23'),
(2360, 'admin url vistied 182.184.75.108', '2021-12-17 03:17:25'),
(2361, 'admin url vistied 182.184.75.108', '2021-12-17 03:17:26'),
(2362, 'admin url vistied 182.184.75.108', '2021-12-17 03:17:27'),
(2363, 'admin url vistied 81.17.18.62', '2021-12-17 03:17:39'),
(2364, 'admin url vistied 185.220.101.179', '2021-12-17 03:17:48'),
(2365, 'admin url vistied 45.222.202.54', '2021-12-17 03:52:04'),
(2366, 'admin url vistied 45.222.202.54', '2021-12-17 03:52:06'),
(2367, 'admin url vistied 45.222.202.54', '2021-12-17 03:52:07');

-- --------------------------------------------------------

--
-- Table structure for table `losses`
--

CREATE TABLE `losses` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `loss_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `type` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('active','deactive') NOT NULL DEFAULT 'active',
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `status`, `created`, `updated`) VALUES
(1, 'Company', 'active', '2021-11-13 03:28:22', NULL),
(2, 'Gemstone', 'active', '2021-11-13 03:28:37', NULL),
(3, 'Infrastructure', 'active', '2021-11-13 03:28:50', NULL),
(4, 'Awards and Certifications', 'active', '2021-11-13 03:29:01', NULL),
(5, 'News &amp; Events', 'active', '2021-11-13 03:29:09', NULL),
(6, 'CSR / Business Ethics', 'active', '2021-11-13 03:29:16', NULL),
(7, 'Contact Us', 'active', '2021-11-13 03:29:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news_sections`
--

CREATE TABLE `news_sections` (
  `id` int(11) NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news_sections`
--

INSERT INTO `news_sections` (`id`, `banner_image`, `created`) VALUES
(1, '1636981977F9C39.jpg', '2021-11-15 05:12:57');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `msg` text NOT NULL,
  `title` text NOT NULL,
  `status` enum('No','Yes') NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rmc_awards`
--

CREATE TABLE `rmc_awards` (
  `id` int(11) NOT NULL,
  `award_title` varchar(255) NOT NULL,
  `award_image` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rmc_awards`
--

INSERT INTO `rmc_awards` (`id`, `award_title`, `award_image`, `year`, `created`) VALUES
(1, ' Best Gemstone Manufacturer', '16368790254JHA8.jpg', '2011-12', '2021-11-14 00:37:05'),
(2, ' Best Gemstone Manufacturer', '1636879054A47KF.jpg', '2008', '2021-11-14 00:37:34'),
(3, ' Best Gemstone Manufacturer', '1636879092DJEH8.jpg', '2011-12', '2021-11-14 00:38:12'),
(4, ' Best Gemstone Manufacturer', '1636879113E3I4I.jpg', '2008', '2021-11-14 00:38:33'),
(5, ' Best Gemstone Manufacturer', '16368945834K1C5.jpg', '2008', '2021-11-14 04:56:23'),
(6, ' Best Gemstone Manufacturer', '163689469082869.jpg', '2008', '2021-11-14 04:58:10'),
(7, ' Best Gemstone Manufacturer', '1636894707JBEE9.jpg', '2008', '2021-11-14 04:58:27'),
(8, ' Best Gemstone Manufacturer', '1637045569BKA46.jpg', '2008', '2021-11-14 04:58:54');

-- --------------------------------------------------------

--
-- Table structure for table `rmc_contact`
--

CREATE TABLE `rmc_contact` (
  `id` int(11) NOT NULL,
  `contact_title` varchar(255) NOT NULL,
  `contact_address` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_image` varchar(255) NOT NULL,
  `contact_fax` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_website` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rmc_contact`
--

INSERT INTO `rmc_contact` (`id`, `contact_title`, `contact_address`, `contact_phone`, `contact_image`, `contact_fax`, `created`, `contact_email`, `contact_website`) VALUES
(1, 'Registered Office', '24, Bardiya Colony Museum Road Jaipur - 302004 India', '91-141-4041000/1050', '1637067248KBBAI.jpg', '91-141-2602881', '2021-11-16 04:54:08', 'rmc@rmcgems.in', ' www.rmcgems.in'),
(2, 'SEZ Factory', 'G1-18 &amp; 19, SEZ Phase 1st Sitapura Industrial Area Tonk Road Jaipur - 302022 India', '91-141-2770687,2770688', '1637066419A63EB.jpg', '91-141-2770669', '2021-11-16 04:40:19', 'rmc@rmcgems.in', 'www.rmcgems.in'),
(3, 'Contact us for', 'Business Ethics', 'Complaints', '1637068798G6JI4.png', 'Suggestions', '2021-11-16 05:19:58', 'ethics@rmcgems.in', '.');

-- --------------------------------------------------------

--
-- Table structure for table `rmc_news`
--

CREATE TABLE `rmc_news` (
  `id` int(11) NOT NULL,
  `news_title` varchar(255) NOT NULL,
  `news_badge` varchar(255) NOT NULL,
  `news_year` varchar(255) NOT NULL,
  `news_image` varchar(255) NOT NULL,
  `news_description` longtext NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rmc_news`
--

INSERT INTO `rmc_news` (`id`, `news_title`, `news_badge`, `news_year`, `news_image`, `news_description`, `created`) VALUES
(5, 'What do chefs cook when they have friends over for dinner?', 'Gemstone', '2021-05-28', '163687932187B4E.jpg', '&lt;p&gt;We are proud Caterers In Jaipur with years of experience in the catering services. Our premium food items have gained acknowledgements from the clients for their rich taste and hygiene.&lt;/p&gt;\r\n', '2021-11-14 00:42:01'),
(6, 'What do chefs cook when they have friends over for dinner?', 'Gemstone', '2021-05-28', '1636879608DE7HB.jpg', '&lt;p&gt;We are proud Caterers In Jaipur with years of experience in the catering services. Our premium food items have gained acknowledgements from the clients for their rich taste and hygiene.&lt;/p&gt;\r\n', '2021-11-14 00:46:48'),
(7, 'What do chefs cook when they have friends over for dinner?', 'Gemstone', '2021-05-28', '16370463809J7IH.jpg', '&lt;p&gt;We are proud Caterers In Jaipur with years of experience in the catering services. Our premium food items have gained acknowledgements from the clients for their rich taste and hygiene.&lt;/p&gt;\r\n', '2021-11-14 00:47:29');

-- --------------------------------------------------------

--
-- Table structure for table `rmc_products`
--

CREATE TABLE `rmc_products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` varchar(255) DEFAULT NULL,
  `product_image` varchar(255) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rmc_products`
--

INSERT INTO `rmc_products` (`id`, `product_name`, `product_description`, `product_image`, `created`) VALUES
(4, 'Rubellite', '', '1636877343CGEEI.png', '2021-11-14 00:09:03'),
(5, 'Morganite', '&lt;p&gt;ghdfasdf&lt;/p&gt;\r\n', '1636877367II6KA.jpg', '2021-11-14 00:09:27'),
(6, 'Sapphire', '&lt;p&gt;ghdfasdf&lt;/p&gt;\r\n', '1636877391C8H2J.jpg', '2021-11-14 00:09:51'),
(7, 'Paraiba', '&lt;p&gt;ghdfasdfsdfafafasfsda&lt;/p&gt;\r\n', '163704337898E1A.jpg', '2021-11-14 00:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `telegram` varchar(255) NOT NULL,
  `ppt` varchar(255) NOT NULL,
  `day_trade` float NOT NULL DEFAULT '1',
  `fix_trade` float NOT NULL DEFAULT '1',
  `bottom_footer` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `speed_trade` decimal(10,2) NOT NULL,
  `recharge_status` enum('On','Off') NOT NULL DEFAULT 'On'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `message`, `telegram`, `ppt`, `day_trade`, `fix_trade`, `bottom_footer`, `logo`, `speed_trade`, `recharge_status`) VALUES
(1, 'test test test test test test test', 'https://www.youtube.com/watch?v=_4Cbc997Iyw', 'https://www.youtube.com/watch?v=_4Cbc997Iyw', 1.74, 3.15, '&lt;p&gt;@ 2021 RMC GEMS LTD. All Rights Reserved. &lt;a href=&quot;https://dzoneindia.co.in/&quot; target=&quot;_blank&quot;&gt;Powered By Dzone India.&lt;/a&gt;&lt;/p&gt;\r\n', '16368065552CI73.png', 0.00, 'On');

-- --------------------------------------------------------

--
-- Table structure for table `top_header`
--

CREATE TABLE `top_header` (
  `id` int(11) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `pinterest` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `top_header`
--

INSERT INTO `top_header` (`id`, `contact`, `email`, `fb`, `instagram`, `pinterest`, `twitter`, `youtube`, `created`) VALUES
(1, '+919829044445', 'rmc@rmcgems.in', '#', '#', '#', '#', '#', '2021-11-14 12:48:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sec_code` varchar(255) DEFAULT NULL,
  `sponser_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `earnings` decimal(10,2) NOT NULL DEFAULT '0.00',
  `funds` decimal(10,2) NOT NULL DEFAULT '0.00',
  `active_direct` int(11) NOT NULL DEFAULT '0',
  `total_direct` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `performance_rank` int(11) NOT NULL DEFAULT '0',
  `earned` decimal(15,2) NOT NULL DEFAULT '0.00',
  `self_business` decimal(10,2) NOT NULL DEFAULT '0.00',
  `team_business` decimal(10,2) NOT NULL DEFAULT '0.00',
  `level_value` varchar(255) DEFAULT NULL,
  `device_id` varchar(255) NOT NULL DEFAULT '',
  `ac_holder` varchar(255) DEFAULT NULL,
  `ac_number` varchar(255) DEFAULT NULL,
  `ifsc_code` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `fcm_token` varchar(255) NOT NULL DEFAULT '',
  `status` enum('Pending','Active','Suspended','Inactive') CHARACTER SET latin1 COLLATE latin1_german2_ci NOT NULL DEFAULT 'Pending',
  `date_time` datetime NOT NULL,
  `date` date NOT NULL,
  `activation_date_time` varchar(255) DEFAULT '',
  `noti_count` int(11) NOT NULL DEFAULT '0',
  `country` int(11) NOT NULL DEFAULT '0',
  `level1_status` enum('Yes','No') NOT NULL DEFAULT 'No',
  `level2_status` enum('Yes','No') NOT NULL DEFAULT 'No',
  `level3_status` enum('Yes','No') NOT NULL DEFAULT 'No',
  `level4_status` enum('Yes','No') NOT NULL DEFAULT 'No',
  `level1` decimal(20,2) NOT NULL DEFAULT '0.00',
  `level2` decimal(20,2) NOT NULL DEFAULT '0.00',
  `level3` decimal(20,2) NOT NULL DEFAULT '0.00',
  `level4` decimal(20,2) NOT NULL DEFAULT '0.00',
  `level5` decimal(20,2) NOT NULL DEFAULT '0.00',
  `level6` decimal(20,2) NOT NULL DEFAULT '0.00',
  `level7` decimal(20,2) NOT NULL DEFAULT '0.00',
  `level8` decimal(20,2) NOT NULL DEFAULT '0.00',
  `level9` decimal(20,2) NOT NULL DEFAULT '0.00',
  `level10` decimal(20,2) NOT NULL DEFAULT '0.00',
  `level11` decimal(20,2) NOT NULL DEFAULT '0.00',
  `level12` decimal(20,2) NOT NULL DEFAULT '0.00',
  `level13` decimal(20,2) NOT NULL DEFAULT '0.00',
  `level14` decimal(20,2) NOT NULL DEFAULT '0.00',
  `level15` decimal(20,2) NOT NULL DEFAULT '0.00',
  `level16` decimal(20,2) NOT NULL DEFAULT '0.00',
  `level17` decimal(20,2) NOT NULL DEFAULT '0.00',
  `level18` decimal(20,2) NOT NULL DEFAULT '0.00',
  `level19` decimal(20,2) NOT NULL DEFAULT '0.00',
  `level20` decimal(20,2) NOT NULL DEFAULT '0.00',
  `level21` decimal(20,2) NOT NULL DEFAULT '0.00',
  `with_status` enum('Yes','No') NOT NULL DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `sec_code`, `sponser_id`, `token`, `name`, `mobile`, `email`, `earnings`, `funds`, `active_direct`, `total_direct`, `rank`, `performance_rank`, `earned`, `self_business`, `team_business`, `level_value`, `device_id`, `ac_holder`, `ac_number`, `ifsc_code`, `bank_name`, `fcm_token`, `status`, `date_time`, `date`, `activation_date_time`, `noti_count`, `country`, `level1_status`, `level2_status`, `level3_status`, `level4_status`, `level1`, `level2`, `level3`, `level4`, `level5`, `level6`, `level7`, `level8`, `level9`, `level10`, `level11`, `level12`, `level13`, `level14`, `level15`, `level16`, `level17`, `level18`, `level19`, `level20`, `level21`, `with_status`) VALUES
(22, 'ASPRAL', '7c4a8d09ca3762af61e59520943dc26494f8941b', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'ADD', '112AVHN25I2PE3Z26QI4ZSCY8V5HY4', 'admin', '1234567890', 'admin@gmail.com', 0.00, 0.00, 0, 0, 0, 0, 0.00, 0.00, 0.00, NULL, '77fce8305634bf9a', NULL, NULL, NULL, NULL, '', 'Active', '2021-10-07 10:18:57', '2021-10-07', '2021-10-07 10:18:57', 0, 99, 'No', 'No', 'No', 'No', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'Yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activation_history`
--
ALTER TABLE `activation_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `admin_add`
--
ALTER TABLE `admin_add`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_noti`
--
ALTER TABLE `admin_noti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apis`
--
ALTER TABLE `apis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `awards_sections`
--
ALTER TABLE `awards_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_sections`
--
ALTER TABLE `company_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_queries`
--
ALTER TABLE `contact_queries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_sections`
--
ALTER TABLE `contact_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `csr_sections`
--
ALTER TABLE `csr_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sections`
--
ALTER TABLE `home_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `infrastructure_sections`
--
ALTER TABLE `infrastructure_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_activity`
--
ALTER TABLE `login_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_sections`
--
ALTER TABLE `news_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmc_awards`
--
ALTER TABLE `rmc_awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmc_contact`
--
ALTER TABLE `rmc_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmc_news`
--
ALTER TABLE `rmc_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmc_products`
--
ALTER TABLE `rmc_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_header`
--
ALTER TABLE `top_header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `token` (`token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activation_history`
--
ALTER TABLE `activation_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_add`
--
ALTER TABLE `admin_add`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_noti`
--
ALTER TABLE `admin_noti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apis`
--
ALTER TABLE `apis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `awards_sections`
--
ALTER TABLE `awards_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `company_sections`
--
ALTER TABLE `company_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_queries`
--
ALTER TABLE `contact_queries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contact_sections`
--
ALTER TABLE `contact_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_sections`
--
ALTER TABLE `home_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `infrastructure_sections`
--
ALTER TABLE `infrastructure_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login_activity`
--
ALTER TABLE `login_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2368;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `news_sections`
--
ALTER TABLE `news_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rmc_awards`
--
ALTER TABLE `rmc_awards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rmc_contact`
--
ALTER TABLE `rmc_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rmc_news`
--
ALTER TABLE `rmc_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rmc_products`
--
ALTER TABLE `rmc_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `top_header`
--
ALTER TABLE `top_header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=651;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
