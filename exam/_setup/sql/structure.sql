-- ================================================================
-- Database structure
-- ================================================================


--
-- Table structure for table `answers`
--

CREATE TABLE IF NOT EXISTS `answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` int(11) NOT NULL,
  `answer` text NOT NULL,
  `correct` int(2) NOT NULL DEFAULT '0',
  `banned` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(55) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=261 ;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `parent_id`, `name`) VALUES
(1, 0, 'Albania'),
(2, 0, 'Algeria'),
(3, 0, 'American Samoa'),
(4, 0, 'Andorra'),
(5, 0, 'Angola'),
(6, 0, 'Anguilla'),
(7, 0, 'Antigua'),
(8, 0, 'Antilles'),
(9, 0, 'Argentina'),
(10, 0, 'Armenia'),
(11, 0, 'Aruba'),
(12, 0, 'Australia'),
(13, 0, 'Austria'),
(14, 0, 'Azerbaijan'),
(15, 0, 'Azores'),
(16, 0, 'Bahamas'),
(17, 0, 'Bahrain'),
(18, 0, 'Bangladesh'),
(19, 0, 'Barbados'),
(20, 0, 'Barbuda'),
(21, 0, 'Belgium'),
(22, 0, 'Belize'),
(23, 0, 'Belorus'),
(24, 0, 'Benin'),
(25, 0, 'Bermuda'),
(26, 0, 'Bhutan'),
(27, 0, 'Bolivia'),
(28, 0, 'Bonaire'),
(29, 0, 'Bosnia &amp; Hercegovina'),
(30, 0, 'Botswana'),
(31, 0, 'Br. Virgin Islands'),
(32, 0, 'Brazil'),
(33, 0, 'Brunei'),
(34, 0, 'Bulgaria'),
(35, 0, 'Burkina Faso'),
(36, 0, 'Burundi'),
(37, 0, 'Caicos Island'),
(38, 0, 'Cameroon'),
(39, 0, 'Canada'),
(40, 0, 'Canary Islands'),
(41, 0, 'Cape Verde'),
(42, 0, 'Cayman Islands'),
(43, 0, 'Central African Republic'),
(44, 0, 'Chad'),
(45, 0, 'Channel Islands'),
(46, 0, 'Chile'),
(47, 0, 'China'),
(48, 0, 'Colombia'),
(50, 0, 'Congo'),
(51, 0, 'Cook Islands'),
(52, 0, 'Cooper Island'),
(53, 0, 'Costa Rica'),
(54, 0, 'Cote D&#39;Ivoire'),
(55, 0, 'Croatia'),
(56, 0, 'Curacao'),
(57, 0, 'Cyprus'),
(58, 0, 'Czech Republic'),
(59, 0, 'Denmark'),
(60, 0, 'Djibouti'),
(61, 0, 'Dominica'),
(62, 0, 'Dominican Republic'),
(63, 0, 'Ecuador'),
(64, 0, 'Egypt'),
(65, 0, 'El Salvador'),
(66, 0, 'England'),
(67, 0, 'Equatorial Guinea'),
(68, 0, 'Estonia'),
(69, 0, 'Ethiopia'),
(70, 0, 'Fiji'),
(71, 0, 'Finland'),
(72, 0, 'France'),
(73, 0, 'French Guiana'),
(74, 0, 'French Polynesia'),
(75, 0, 'Futuna Island'),
(76, 0, 'Gabon'),
(77, 0, 'Gambia'),
(78, 0, 'Georgia'),
(79, 0, 'Germany'),
(80, 0, 'Ghana'),
(81, 0, 'Gibraltar'),
(82, 0, 'Greece'),
(83, 0, 'Grenada'),
(84, 0, 'Grenland'),
(85, 0, 'Guadeloupe'),
(86, 0, 'Guam'),
(87, 0, 'Guatemala'),
(88, 0, 'Guinea'),
(89, 0, 'Guinea-Bissau'),
(90, 0, 'Guyana'),
(91, 0, 'Haiti'),
(92, 0, 'Holland'),
(93, 0, 'Honduras'),
(94, 0, 'Hong Kong'),
(95, 0, 'Hungary'),
(96, 0, 'Iceland'),
(97, 0, 'India'),
(98, 0, 'Indonesia'),
(99, 0, 'Iran'),
(100, 0, 'Iraq'),
(101, 0, 'Ireland, Northern'),
(102, 0, 'Ireland, Republic of'),
(103, 0, 'Isle of Man'),
(104, 0, 'Israel'),
(105, 0, 'Italy'),
(106, 0, 'Ivory Coast'),
(107, 0, 'Jamaica'),
(108, 0, 'Japan'),
(109, 0, 'Jordan'),
(110, 0, 'Jost Van Dyke Island'),
(111, 0, 'Kampuchea'),
(112, 0, 'Kazakhstan'),
(113, 0, 'Kenya'),
(114, 0, 'Kiribati'),
(115, 0, 'Korea'),
(116, 0, 'Korea, South'),
(117, 0, 'Kosrae'),
(118, 0, 'Kuwait'),
(119, 0, 'Kyrgyzstan'),
(120, 0, 'Laos'),
(121, 0, 'Latvia'),
(122, 0, 'Lebanon'),
(123, 0, 'Lesotho'),
(124, 0, 'Liberia'),
(125, 0, 'Liechtenstein'),
(126, 0, 'Lithuania'),
(127, 0, 'Luxembourg'),
(128, 0, 'Macau'),
(129, 0, 'Macedonia'),
(130, 0, 'Madagascar'),
(131, 0, 'Madeira Islands'),
(132, 0, 'Malagasy'),
(133, 0, 'Malawi'),
(134, 0, 'Malaysia'),
(135, 0, 'Maldives'),
(136, 0, 'Mali'),
(137, 0, 'Malta'),
(138, 0, 'Marshall Islands'),
(139, 0, 'Martinique'),
(140, 0, 'Mauritania'),
(141, 0, 'Mauritius'),
(142, 0, 'Mexico'),
(143, 0, 'Micronesia'),
(144, 0, 'Moldova'),
(145, 0, 'Monaco'),
(146, 0, 'Mongolia'),
(147, 0, 'Montenegro'),
(148, 0, 'Montserrat'),
(149, 0, 'Morocco'),
(150, 0, 'Mozambique'),
(151, 0, 'Myanmar'),
(152, 0, 'Namibia'),
(153, 0, 'Nauru'),
(154, 0, 'Nepal'),
(155, 0, 'Netherlands'),
(156, 0, 'Nevis'),
(157, 0, 'Nevis (St. Kitts)'),
(158, 0, 'New Caledonia'),
(159, 0, 'New Zealand'),
(160, 0, 'Nicaragua'),
(161, 0, 'Niger'),
(162, 0, 'Nigeria'),
(163, 0, 'Niue'),
(164, 0, 'Norfolk Island'),
(165, 0, 'Norman Island'),
(166, 0, 'Northern Mariana Island'),
(167, 0, 'Norway'),
(168, 0, 'Oman'),
(169, 0, 'Pakistan'),
(170, 0, 'Palau'),
(171, 0, 'Panama'),
(172, 0, 'Papua New Guinea'),
(173, 0, 'Paraguay'),
(174, 0, 'Peru'),
(175, 0, 'Philippines'),
(176, 0, 'Poland'),
(177, 0, 'Ponape'),
(178, 0, 'Portugal'),
(179, 0, 'Qatar'),
(180, 0, 'Reunion'),
(181, 0, 'Romania'),
(182, 0, 'Rota'),
(183, 0, 'Russia'),
(184, 0, 'Rwanda'),
(185, 0, 'Saba'),
(186, 0, 'Saipan'),
(187, 0, 'San Marino'),
(188, 0, 'Sao Tome'),
(189, 0, 'Saudi Arabia'),
(190, 0, 'Scotland'),
(191, 0, 'Senegal'),
(192, 0, 'Serbia'),
(193, 0, 'Seychelles'),
(194, 0, 'Sierra Leone'),
(195, 0, 'Singapore'),
(196, 0, 'Slovakia'),
(197, 0, 'Slovenia'),
(198, 0, 'Solomon Islands'),
(199, 0, 'Somalia'),
(200, 0, 'South Africa'),
(201, 0, 'Spain'),
(202, 0, 'Sri Lanka'),
(203, 0, 'St. Barthelemy'),
(204, 0, 'St. Christopher'),
(205, 0, 'St. Croix'),
(206, 0, 'St. Eustatius'),
(207, 0, 'St. John'),
(208, 0, 'St. Kitts'),
(209, 0, 'St. Lucia'),
(210, 0, 'St. Maarten'),
(211, 0, 'St. Martin'),
(212, 0, 'St. Thomas'),
(213, 0, 'St. Vincent'),
(214, 0, 'Sudan'),
(215, 0, 'Suriname'),
(216, 0, 'Swaziland'),
(217, 0, 'Sweden'),
(218, 0, 'Switzerland'),
(219, 0, 'Syria'),
(220, 0, 'Tahiti'),
(221, 0, 'Taiwan'),
(222, 0, 'Tajikistan'),
(223, 0, 'Tanzania'),
(224, 0, 'Thailand'),
(225, 0, 'Tinian'),
(226, 0, 'Togo'),
(227, 0, 'Tonaga'),
(228, 0, 'Tonga'),
(229, 0, 'Tortola'),
(230, 0, 'Trinidad and Tobago'),
(231, 0, 'Truk'),
(232, 0, 'Tunisia'),
(233, 0, 'Turkey'),
(234, 0, 'Turkmenistan'),
(235, 0, 'Turks and Caicos Island'),
(236, 0, 'Tuvalu'),
(237, 0, 'U.S. Virgin Islands'),
(238, 0, 'Uganda'),
(239, 0, 'Ukraine'),
(240, 0, 'Union Island'),
(241, 0, 'United Arab Emirates'),
(242, 0, 'United Kingdom'),
(243, 0, 'Uruguay'),
(244, 0, 'United States'),
(245, 0, 'Uzbekistan'),
(246, 0, 'Vanuatu'),
(247, 0, 'Vatican City'),
(248, 0, 'Venezuela'),
(249, 0, 'Vietnam'),
(250, 0, 'Virgin Islands (British)'),
(251, 0, 'Virgin Islands (U.S.)'),
(252, 0, 'Wake Island'),
(253, 0, 'Wales'),
(254, 0, 'Wallis Island'),
(255, 0, 'Western Samoa'),
(256, 0, 'Yap'),
(257, 0, 'Yemen, Republic of'),
(258, 0, 'Zaire'),
(259, 0, 'Zambia'),
(260, 0, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE IF NOT EXISTS `custom_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) DEFAULT NULL,
  `fsize` tinyint(1) NOT NULL DEFAULT '55',
  `section` varchar(3) DEFAULT NULL,
  `sorting` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE IF NOT EXISTS `enrollment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(11) NOT NULL,
  `course` varchar(11) NOT NULL,
  `date` date NOT NULL,
  `banned` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Table structure for table `exams`
--

CREATE TABLE IF NOT EXISTS `exams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course` int(5) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `syllabus` text NOT NULL,
  `duration` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Table structure for table `faqs`
--

CREATE TABLE IF NOT EXISTS `faqs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(55) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `content` text NOT NULL,
  `order` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Table structure for table `gateways`
--

CREATE TABLE IF NOT EXISTS `gateways` (
  `id` tinyint(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `displayname` varchar(200) NOT NULL,
  `dir` varchar(200) NOT NULL,
  `live` tinyint(1) NOT NULL DEFAULT '0',
  `extra_txt` varchar(200) NOT NULL,
  `extra_txt2` varchar(200) NOT NULL,
  `extra_txt3` varchar(200) DEFAULT NULL,
  `extra` varchar(200) NOT NULL,
  `extra2` varchar(200) NOT NULL,
  `extra3` varchar(200) DEFAULT NULL,
  `info` text,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `name`, `displayname`, `dir`, `live`, `extra_txt`, `extra_txt2`, `extra_txt3`, `extra`, `extra2`, `extra3`, `info`, `active`) VALUES
(1, 'paypal', 'PayPal', 'paypal', 0, 'Paypal Email Address', 'Currency Code', 'Not in Use', '', '', '', '&lt;p&gt;&lt;a href=&quot;http://www.paypal.com/&quot; title=&quot;PayPal&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;Click here to setup an account with Paypal&lt;/a&gt; &lt;/p&gt;\r\n			&lt;p&gt;&lt;strong&gt;Gateway Name&lt;/strong&gt; - Enter the name of the payment provider here.&lt;/p&gt;\r\n			&lt;p&gt;&lt;strong&gt;Active&lt;/strong&gt; - Select Yes to make this payment provider active. &lt;br/&gt;\r\n			If this box is not checked, the payment provider will not show up in the payment provider list during checkout.&lt;/p&gt;\r\n			&lt;p&gt;&lt;strong&gt;Set Live Mode&lt;/strong&gt; - If you would like to test the payment provider settings, please select No. &lt;/p&gt;\r\n			&lt;p&gt;&lt;strong&gt;Paypal email address&lt;/strong&gt; - Enter your PayPal Business email address here. &lt;/p&gt;\r\n			&lt;p&gt;&lt;strong&gt;Currency Code&lt;/strong&gt; - Enter your currency code here. Valid choices are: &lt;/p&gt;\r\n				&lt;ul&gt;\r\n					&lt;li&gt; USD (U.S. Dollar)&lt;/li&gt;\r\n					&lt;li&gt; EUR (Euro) &lt;/li&gt;\r\n					&lt;li&gt; GBP (Pound Sterling) &lt;/li&gt;\r\n					&lt;li&gt; CAD (Canadian Dollar) &lt;/li&gt;\r\n					&lt;li&gt; JPY (Yen). &lt;/li&gt;\r\n					&lt;li&gt; If omitted, all monetary fields will use default system setting Currency Code. &lt;/li&gt;\r\n				&lt;/ul&gt;\r\n			&lt;p&gt;&lt;strong&gt;Not in Use&lt;/strong&gt; - This field it&#039;s not in use. Leave it empty. &lt;/p&gt;\r\n	        &lt;p&gt;&lt;strong&gt;IPN Url&lt;/strong&gt; - If using recurring payment method, you need to set up and activate the IPN Url in your account: &lt;/p&gt;', 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE IF NOT EXISTS `invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `client_id` int(11) NOT NULL DEFAULT '0',
  `created` date NOT NULL,
  `duedate` date NOT NULL,
  `amount_total` decimal(13,2) NOT NULL DEFAULT '0.00',
  `amount_paid` decimal(13,2) NOT NULL DEFAULT '0.00',
  `method` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tax` decimal(13,2) NOT NULL DEFAULT '0.00',
  `notes` text,
  `comment` varchar(200) DEFAULT NULL,
  `recurring` tinyint(1) NOT NULL DEFAULT '0',
  `onhold` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Table structure for table `invoice_data`
--

CREATE TABLE IF NOT EXISTS `invoice_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(13,2) NOT NULL DEFAULT '0.00',
  `recurring` tinyint(1) NOT NULL DEFAULT '0',
  `days` int(2) NOT NULL DEFAULT '0',
  `period` varchar(1) NOT NULL DEFAULT 'D',
  `tax` decimal(13,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Table structure for table `invoice_payments`
--

CREATE TABLE IF NOT EXISTS `invoice_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `method` varchar(20) NOT NULL,
  `amount` decimal(13,2) NOT NULL DEFAULT '0.00',
  `recurring` tinyint(1) NOT NULL DEFAULT '0',
  `created` date NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `txn_id` varchar(100) DEFAULT NULL,
  `form_id` int(11) NOT NULL DEFAULT '0',
  `user` varchar(60) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `price` decimal(9,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(6) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pp` varchar(40) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Table structure for table `project_types`
--

CREATE TABLE IF NOT EXISTS `project_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(55) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fees` float NOT NULL,
  `description` text NOT NULL,
  `recurring` int(11) NOT NULL,
  `period` varchar(11) NOT NULL,
  `days` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam` int(11) NOT NULL,
  `type` text NOT NULL,
  `description` text NOT NULL,
  `marks` int(11) NOT NULL,
  `banned` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Table structure for table `resources`
--

CREATE TABLE IF NOT EXISTS `resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(5) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Table structure for table `results`
--

CREATE TABLE IF NOT EXISTS `results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(11) NOT NULL,
  `exam` varchar(11) NOT NULL,
  `token` varchar(20) NOT NULL,
  `fullmarks` float(5,2) NOT NULL,
  `duration` float(5,2) NOT NULL,
  `marks` float(5,2) NOT NULL,
  `score` int(11) NOT NULL,
  `remarks` int(2) NOT NULL,
  `date` date NOT NULL,
  `banned` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `company` varchar(75) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `site_url` varchar(75) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `site_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `address` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `city` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `state` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `zip` varchar(16) NOT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `fax` varchar(16) DEFAULT NULL,
  `logo` varchar(60) NOT NULL,
  `short_date` varchar(20) NOT NULL,
  `long_date` varchar(20) NOT NULL,
  `dtz` varchar(200) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'en',
  `weekstart` tinyint(1) NOT NULL DEFAULT '1',
  `theme` varchar(30) DEFAULT NULL,
  `enable_reg` tinyint(1) NOT NULL DEFAULT '1',
  `enable_tax` tinyint(1) NOT NULL DEFAULT '0',
  `tax_name` varchar(55) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tax_rate` varchar(8) NOT NULL DEFAULT '0',
  `tax_number` varchar(100) DEFAULT NULL,
  `enable_offline` tinyint(1) NOT NULL DEFAULT '1',
  `offline_info` text,
  `invoice_note` text,
  `invoice_number` varchar(40) DEFAULT NULL,
  `quote_number` varchar(40) DEFAULT NULL,
  `enable_uploads` tinyint(1) NOT NULL DEFAULT '1',
  `file_types` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `file_max` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `perpage` varchar(3) NOT NULL DEFAULT '10',
  `sbackup` varchar(50) DEFAULT NULL,
  `currency` varchar(4) DEFAULT NULL,
  `cur_symbol` varchar(6) DEFAULT NULL,
  `tsep` varchar(1) NOT NULL DEFAULT ',',
  `dsep` varchar(1) NOT NULL DEFAULT '.',
  `pp_email` varchar(50) DEFAULT NULL,
  `pp_pass` varchar(30) DEFAULT NULL,
  `pp_api` varchar(100) DEFAULT NULL,
  `pp_mode` tinyint(1) NOT NULL DEFAULT '0',
  `invdays` tinyint(1) NOT NULL DEFAULT '7',
  `mailer` enum('PHP','SMTP','SMAIL') NOT NULL DEFAULT 'PHP',
  `smtp_host` varchar(100) DEFAULT NULL,
  `smtp_user` varchar(50) DEFAULT NULL,
  `smtp_pass` varchar(50) DEFAULT NULL,
  `smtp_port` smallint(3) DEFAULT NULL,
  `sendmail` varchar(60) DEFAULT NULL,
  `is_ssl` tinyint(1) NOT NULL DEFAULT '0',
  `crmv` varchar(5) DEFAULT NULL,
  `passing_score` int(2) NOT NULL,
  `google_analytics` text NOT NULL,
  `social_gplus` varchar(75) NOT NULL,
  `social_twitter` varchar(75) NOT NULL,
  `social_facebook` varchar(75) NOT NULL,
  `social_pinterest` varchar(75) NOT NULL,
  `social_linkedin` varchar(75) NOT NULL,
  `social_rss` varchar(75) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`company`, `site_url`, `site_email`, `address`, `city`, `state`, `zip`, `phone`, `fax`, `logo`, `short_date`, `long_date`, `dtz`, `lang`, `weekstart`, `theme`, `enable_reg`, `enable_tax`, `tax_name`, `tax_rate`, `tax_number`, `enable_offline`, `offline_info`, `invoice_note`, `invoice_number`, `quote_number`, `enable_uploads`, `file_types`, `file_max`, `perpage`, `sbackup`, `currency`, `cur_symbol`, `tsep`, `dsep`, `pp_email`, `pp_pass`, `pp_api`, `pp_mode`, `invdays`, `mailer`, `smtp_host`, `smtp_user`, `smtp_pass`, `smtp_port`, `sendmail`, `is_ssl`, `crmv`, `passing_score`, `google_analytics`, `social_gplus`, `social_twitter`, `social_facebook`, `social_pinterest`, `social_linkedin`, `social_rss`) VALUES
('BitSet Limited', 'http://localhost/eb', 'support@bitset.org', '123 Main St.', 'Toronto', 'Ontario', 'M2J 1K5', '555-555-5555', '444-444-4444', 'logo.png', '%b %d %Y', '%d %B %Y %H:%M', 'America/Toronto', 'en', 1, 'master', 1, 1, 'HST', '0.13', '123456789-WOJO-321', 1, 'Instructions for offline payments\r\nSuch as bank info, address etc...', 'You can enter here your company policy or any other info', 'RTB-ST5', 'QUO-1010', 1, 'gif,png,jpg,jpeg,pdf,zip,rar', '10485760', '10', '03-Jan-2015_00-57-16.sql', 'CAD', '$', ',', '.', '', '', '', 0, 10, 'PHP', '', '', '', 25, '/usr/sbin/sendmail -t -i', 0, '3.0.0', 60, 'dfsvjfdsj', 'defcsd', 'dsfsd', 'dsf', 'dsfs', 'sdf', 'dsfsd');

-- --------------------------------------------------------

--
-- Table structure for table `tanswers`
--

CREATE TABLE IF NOT EXISTS `tanswers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tquestion` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `answer` text NOT NULL,
  `correct` text NOT NULL,
  `marked` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=339 ;

--
-- Table structure for table `tquestions`
--

CREATE TABLE IF NOT EXISTS `tquestions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `token` varchar(20) NOT NULL,
  `qid` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `exam` int(11) NOT NULL,
  `description` text NOT NULL,
  `marks` float(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=251 ;

--
-- Table structure for table `tracker`
--

CREATE TABLE IF NOT EXISTS `tracker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` date NOT NULL,
  `time` time NOT NULL,
  `ip` text NOT NULL,
  `country` text NOT NULL,
  `city` text NOT NULL,
  `query_string` text NOT NULL,
  `http_referer` text NOT NULL,
  `http_user_agent` text NOT NULL,
  `isbot` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=561 ;

--
-- Dumping data for table `tracker`
--

INSERT INTO `tracker` (`id`, `created`, `time`, `ip`, `country`, `city`, `query_string`, `http_referer`, `http_user_agent`, `isbot`) VALUES
(1, '2014-12-04', '08:12:43', '::1', '', '', '', 'http://localhost/eb/admin/login.php', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pp_email` varchar(50) DEFAULT NULL,
  `fname` varchar(32) NOT NULL,
  `lname` varchar(32) NOT NULL,
  `company` varbinary(150) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `country` int(3) NOT NULL DEFAULT '0',
  `currency` varchar(10) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `vat` varchar(60) DEFAULT NULL,
  `avatar` varchar(60) DEFAULT NULL,
  `userlevel` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime DEFAULT '0000-00-00 00:00:00',
  `notes` text,
  `custom_fields` text,
  `credit` decimal(10,2) NOT NULL DEFAULT '0.00',
  `lastlogin` datetime DEFAULT '0000-00-00 00:00:00',
  `lastip` varchar(16) DEFAULT '0',
  `active` enum('y','n','t','b') NOT NULL DEFAULT 'n',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;
