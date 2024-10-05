-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 23, 2020 at 06:19 PM
-- Server version: 5.5.53
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `swtx`
--

-- --------------------------------------------------------

--
-- Table structure for table `swtx_ecms_infoclass_news`
--

CREATE TABLE IF NOT EXISTS `swtx_ecms_infoclass_news` (
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `zz_title` text NOT NULL,
  `z_title` varchar(255) NOT NULL DEFAULT '',
  `qz_title` varchar(255) NOT NULL DEFAULT '',
  `save_title` varchar(10) NOT NULL DEFAULT '',
  `zz_titlepic` text NOT NULL,
  `z_titlepic` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepic` varchar(255) NOT NULL DEFAULT '',
  `save_titlepic` varchar(10) NOT NULL DEFAULT '',
  `zz_newstime` text NOT NULL,
  `z_newstime` varchar(255) NOT NULL DEFAULT '',
  `qz_newstime` varchar(255) NOT NULL DEFAULT '',
  `save_newstime` varchar(10) NOT NULL DEFAULT '',
  `zz_ftitle` text NOT NULL,
  `z_ftitle` varchar(255) NOT NULL DEFAULT '',
  `qz_ftitle` varchar(255) NOT NULL DEFAULT '',
  `save_ftitle` varchar(10) NOT NULL DEFAULT '',
  `zz_smalltext` text NOT NULL,
  `z_smalltext` varchar(255) NOT NULL DEFAULT '',
  `qz_smalltext` varchar(255) NOT NULL DEFAULT '',
  `save_smalltext` varchar(10) NOT NULL DEFAULT '',
  `zz_writer` text NOT NULL,
  `z_writer` varchar(255) NOT NULL DEFAULT '',
  `qz_writer` varchar(255) NOT NULL DEFAULT '',
  `save_writer` varchar(10) NOT NULL DEFAULT '',
  `zz_befrom` text NOT NULL,
  `z_befrom` varchar(255) NOT NULL DEFAULT '',
  `qz_befrom` varchar(255) NOT NULL DEFAULT '',
  `save_befrom` varchar(10) NOT NULL DEFAULT '',
  `zz_newstext` text NOT NULL,
  `z_newstext` varchar(255) NOT NULL DEFAULT '',
  `qz_newstext` varchar(255) NOT NULL DEFAULT '',
  `save_newstext` varchar(10) NOT NULL DEFAULT '',
  `zz_diggtop` text NOT NULL,
  `z_diggtop` varchar(255) NOT NULL DEFAULT '',
  `qz_diggtop` varchar(255) NOT NULL DEFAULT '',
  `save_diggtop` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_ecms_infotmp_news`
--

CREATE TABLE IF NOT EXISTS `swtx_ecms_infotmp_news` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `oldurl` varchar(200) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `tmptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `keyboard` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `ftitle` varchar(120) NOT NULL DEFAULT '',
  `smalltext` varchar(255) NOT NULL DEFAULT '',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `befrom` varchar(60) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  `diggtop` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_ecms_news`
--

CREATE TABLE IF NOT EXISTS `swtx_ecms_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` char(20) NOT NULL DEFAULT '',
  `filename` char(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` char(14) NOT NULL DEFAULT '',
  `titleurl` char(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` char(80) NOT NULL DEFAULT '',
  `title` char(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` char(120) NOT NULL DEFAULT '',
  `eckuid` int(11) NOT NULL DEFAULT '0',
  `ftitle` char(120) NOT NULL DEFAULT '',
  `smalltext` char(255) NOT NULL DEFAULT '',
  `diggtop` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`),
  KEY `useridis` (`userid`,`ismember`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `swtx_ecms_news`
--

INSERT INTO `swtx_ecms_news` (`id`, `classid`, `ttid`, `onclick`, `plnum`, `totaldown`, `newspath`, `filename`, `userid`, `username`, `firsttitle`, `isgood`, `ispic`, `istop`, `isqf`, `ismember`, `isurl`, `truetime`, `lastdotime`, `havehtml`, `groupid`, `userfen`, `titlefont`, `titleurl`, `stb`, `fstb`, `restb`, `keyboard`, `title`, `newstime`, `titlepic`, `eckuid`, `ftitle`, `smalltext`, `diggtop`) VALUES
(1, 4, 0, 1, 0, 0, '', '1', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1600854176, 1600854176, 1, 0, 0, '', '/news/gsxw/1.html', 1, 1, 1, '', '舜王科技陪您欢度中国传统情人节七夕！', 1600854158, '', 0, '', '一年一度的七夕情人节又来临了，成都舜王科技有限公司祝愿广大新老客户、公司全体成员、以及天下有情人们终成眷属、幸福美满！\r\n \r\n我国的七夕情人节不同于每年2月14日的西方情人', 0),
(2, 4, 0, 0, 0, 0, '', '2', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1600854209, 1600854209, 1, 0, 0, '', '/news/gsxw/2.html', 1, 1, 1, '', '舜王科技组织对新人进行技能提升培训', 1600854194, '', 0, '', '因公司业务量上升，公司在开放使用骡马市办公区后即开始积极招聘新成员，现已招聘到公司可以承载的人数，已将招聘工作暂停，接下来即是对新队友的培训事宜，因为公司经营模式为渠道模', 0),
(3, 4, 0, 0, 0, 0, '', '3', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1600854247, 1600854247, 1, 0, 0, '', '/news/gsxw/3.html', 1, 1, 1, '', '成都衡阳商会莅临舜王科技指导交流工作', 1600854211, '', 0, '', '2020年8月20日，应我成都舜王科技有限公司诚意邀请，成都衡阳商会秘书长张朝阳应邀莅临舜王公司骡马市办公区指导工作及工作交流。我公司秦存江监事长、赵保路经理接待了张朝阳', 0),
(4, 4, 0, 0, 0, 0, '', '4', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1600854284, 1600854284, 1, 0, 0, '', '/news/gsxw/4.html', 1, 1, 1, '', '舜王科技应邀访问四川车元互联汽配股份有限公司', 1600854273, '', 0, '', '​应四川车元互联汽配股份有限公司吴邦志董事长邀请，我成都舜王科技有限公司应约对该公司进行访问交流，双方对前期合作进行了总结，并对未来的合作事宜进行了商讨，当场落实了部分', 0),
(5, 4, 0, 0, 0, 0, '', '5', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1600854309, 1600854309, 1, 0, 0, '', '/news/gsxw/5.html', 1, 1, 1, '', '舜王科技应邀访问四川发现律师事务所', 1600854287, '', 0, '', '(左起：发现律师事务所郑雪阳律师、周勇律师、舜王科技赵保路经理、林涛经理)\r\n2020年7月27日下午，应四川发现律师事务所邀请，我公司应邀访问四川发现律师事务所，该所周勇律师、', 0),
(6, 4, 0, 0, 0, 0, '', '6', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1600854432, 1600854432, 1, 0, 0, '', '/news/gsxw/6.html', 1, 1, 1, '', '舜王科技圆满承办第六届在蓉徐州籍老乡会', 1600854311, '', 0, '', ' \r\n \r\n2020年7月4日18时（晚上六点），第六届在蓉徐州籍老乡会暨成都徐州商会筹备预备会将在山东老家饭店徐州厅举行，本次活动由我公司赵保路经理，乔荣奇，米苗，蒋松林，李奔五位老乡共同', 0),
(7, 4, 0, 0, 0, 0, '', '7', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1600854449, 1600854449, 1, 0, 0, '', '/news/gsxw/7.html', 1, 1, 1, '', '公司参加成都无锡商会一届九次会长办公会议', 1600854435, '', 0, '', ' \r\n2020年5月29日下午1时，成都无锡商会一届九次会长办公会在商会会议室召开，会议由会长、党支部书记许铭占主持。\r\n\r\n参加本次会议的领导有：商会会长、党支部书记许铭占，商会秘书', 0),
(8, 4, 0, 0, 0, 0, '', '8', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1600854472, 1600854472, 1, 0, 0, '', '/news/gsxw/8.html', 1, 1, 1, '', '成都市工商联领导莅临成都无锡商会考察指导', 1600854457, '', 0, '', ' \r\n2020年5月29日上午9点30分，成都市工商联领导一行莅临成都无锡商会，对商会会员企业疫情防控以来、复工复产情况及困难展开调研座谈。座谈中首先由成都无锡商会秘书长姜浩彬', 0),
(9, 4, 0, 1, 0, 0, '', '9', 1, 'admin', 0, 0, 0, 0, 0, 0, 0, 1600854489, 1600854489, 1, 0, 0, '', '/news/gsxw/9.html', 1, 1, 1, '', '舜王科技向成都盐城商会新春团拜会捐资助款！', 1600854474, '', 0, '', '2019年12月10日成都舜王科技有限公司积极响应成都盐城商会即将举办新春团拜会的号召，向大会赞助现金1000元，礼品400份，价值3000元。虽为绵薄之力，但作为商会一份子，团结友爱之心，', 0);

-- --------------------------------------------------------

--
-- Table structure for table `swtx_ecms_news_check`
--

CREATE TABLE IF NOT EXISTS `swtx_ecms_news_check` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` char(20) NOT NULL DEFAULT '',
  `filename` char(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` char(14) NOT NULL DEFAULT '',
  `titleurl` char(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` char(80) NOT NULL DEFAULT '',
  `title` char(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` char(120) NOT NULL DEFAULT '',
  `eckuid` int(11) NOT NULL DEFAULT '0',
  `ftitle` char(120) NOT NULL DEFAULT '',
  `smalltext` char(255) NOT NULL DEFAULT '',
  `diggtop` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`),
  KEY `useridis` (`userid`,`ismember`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_ecms_news_check_data`
--

CREATE TABLE IF NOT EXISTS `swtx_ecms_news_check_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `befrom` varchar(60) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_ecms_news_data_1`
--

CREATE TABLE IF NOT EXISTS `swtx_ecms_news_data_1` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `befrom` varchar(60) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `swtx_ecms_news_data_1`
--

INSERT INTO `swtx_ecms_news_data_1` (`id`, `classid`, `keyid`, `dokey`, `newstempid`, `closepl`, `haveaddfen`, `infotags`, `writer`, `befrom`, `newstext`) VALUES
(1, 4, '', 1, 0, 0, 0, '', '', '', '一年一度的七夕情人节又来临了，成都舜王科技有限公司祝愿广大新老客户、公司全体成员、以及天下有情人们终成眷属、幸福美满！<br />&nbsp;<br />我国的七夕情人节不同于每年2月14日的西方情人节，西方情人节，又称圣瓦伦丁节或圣华伦泰节，日期在每年公历的2月14日，是西方国家的传统节日之一，起源于基督教。如今已经成为全世界著名的浪漫节日，但是不同国家的人们表达爱意的方式却各不相同。<br /><br />公元3世纪，罗马帝国皇帝克劳迪乌斯二世在首都罗马宣布废弃所有的婚姻承诺，情人节礼物当时是出于战争的考虑，使更多无所牵挂的男人可以走上争战的疆场。一名叫瓦仑廷的神父没有遵照这个旨意而继续为相爱的年轻人举行教堂婚礼。事情被告发后，瓦仑廷神父先是被鞭打，然后被石头掷打，最后在公元270年2月14日这天被送上了绞架被绞死。14世纪以后，人们就开始纪念这个日子。中文译为&ldquo;情人节&rdquo;的这个日子，在西方国家里就被称为用以纪念那位为情人做主而牺牲的神父。而这也就成为了情人节的由来。<br /><br />中国的七夕的由来则不同，七夕节，又称七巧节、七姐节、女儿节、乞巧节、七娘会、七夕祭、牛公牛婆日、巧夕等，是中国民间的传统节日。七夕节由星宿崇拜衍化而来，为传统意义上的七姐诞，因拜祭&ldquo;七姐&rdquo;活动在七月七晩上举行，故名&ldquo;七夕&rdquo;。<br /><br />七夕节既是拜祭七姐的节日，也是爱情的节日，是一个以&ldquo;牛郎织女&rdquo;民间传说为载体，以祈福、乞巧、爱情为主题，以女性为主体的综合性节日。七夕的&ldquo;牛郎织女&rdquo;来源于人们对自然天象的崇拜，上古时代人们将天文星区与地理区域相互对应，这个对应关系就天文来说，称作&ldquo;分星&rdquo;，就地理来说，称作&ldquo;分野&rdquo;。相传每年七月初七，牛郎织女会于天上的鹊桥相会。<br /><br />七夕情人节已然成为当今世界华人地区以及部分受汉族文化影响的东亚国家传统节日，每年农历七月七日夜或七月六日夜妇女在庭院向织女星乞求智巧，故称为&ldquo;乞巧&ldquo;。早在2006年5月20日，&ldquo;七夕节&rdquo;就被中华人民共和国国务院列入第一批国家级非物质文化遗产名录。大多数人们更倾向于在七夕过情人节，意指在宣传传统文化的同时，和有情人度过美好的一天。<br /><br />最后，请耐心等待您的幸福时刻，会出现一个人手机里珍藏着您的名字，心里收藏着您的影子，在每一个被惦念的节日，您注定会被想起，愿我的祝福能送到您心里！祝您七夕情人节快乐！<br /><br /><br />&nbsp;\r\n<div style=\\"text-align: right;\\">成都舜王科技有限公司企业文化部<br /><br />庚子鼠年 七月初七（西历2020年8月25日）</div>'),
(2, 4, '', 1, 0, 0, 0, '', '', '', '因公司业务量上升，公司在开放使用骡马市办公区后即开始积极招聘新成员，现已招聘到公司可以承载的人数，已将招聘工作暂停，接下来即是对新队友的培训事宜，因为公司经营模式为渠道模式（即朋友或客户介绍业务），所以在工作与生产过程中的流程与其他同业公司以主动营销为主体的业务结构不相同，因此新队友均需一个短时间的内部培训过程，使之可以迅速的融入舜王公司这个大家庭。<br /><br />&nbsp;\r\n<div style=\\"text-align: right;\\">成都舜王科技有限公司企业文化部<br />2020年8月21日</div>'),
(3, 4, '', 1, 0, 0, 0, '', '', '', '2020年8月20日，应我成都舜王科技有限公司诚意邀请，成都衡阳商会秘书长张朝阳应邀莅临舜王公司骡马市办公区指导工作及工作交流。我公司秦存江监事长、赵保路经理接待了张朝阳秘书长一行，张朝阳秘书长对我公司的发展状况与前期工作进行了表扬，并对公司取得的工作成绩予以认可。我公司秦存江监事长表示成都衡阳商会短时间内会员人数增长快速，商会行政工作井井有条，工作进展之快，真是令人惊叹。<br />&nbsp;<br />成都衡阳商会于2017年6月26日经核名开始筹建，第一次会员代表大会于2017年11月29日在成都市成龙大道二段888号总部经济港隆重召开，成都经开银河科技有限公司董事长陈成鑫先生任会长，四川湘衡电气实业有限公司董事长魏湘粤女士任法人代表,成都哆咪联创商贸有限公司董事长张朝阳先生任秘书长。<br />成都衡阳商会现有会员单位100余家，覆盖物流、矿山矿产、金融保险、房地产业、建筑建材、石油化工、医疗卫生、食品、电气实业、教育培训、文化媒体、餐饮娱乐、批发零售等多个行业和领域。&ldquo;维护衡商权益、整合多方资源、提升衡商形象、谋求更大发展&rdquo;是成都衡阳商会始终坚持的办会宗旨，在促进广大在蓉创业的衡阳籍企业家实业更加有序、健康、规范、良性发展的同时，不断地推动成衡两地经贸往来。成都衡阳商会坚持不懈的为会员单位做好服务工作，同时为政府部门分忧，真正起到桥梁与纽带的作用。<br />&nbsp;<br /><br />成都衡阳商会，是面向在蓉衡阳籍企业的民间非营利团体组织，旨在加强会员企业与政府之间的沟通协调，构建在蓉衡商沟通交流的平台，增进互信、互助，汇聚人脉、商脉、财脉，互利共赢、抱团发展，深化成衡两地间的民间经济往来。<br />都衡阳商会是在成都、衡阳两地政府和工商联的关心支持下，经成都市民政局审核批准成立的非营利性社会团体法人组织。凭借强大的团队优势和资源整合能力，成都衡阳商会积极加强地方政府与企业沟通互动，以商会凝聚力推动企业抱团发展，并最终助力区域经济增长。在找寻成、衡两地区投资沃土、价值洼地的同时，商会成员更开拓视野，将投资的触角延伸至全国各地。如今，商会成员已在北京、上海、广州、贵阳、武汉、阿坝、西昌、攀枝花等地拥有各类行业项目，总投资约500亿元，成功地实现成都衡阳商会的&ldquo;走出去&rdquo;战略，也为未来商会的国际化进程注入了无穷的动力。我们坚信，成都衡阳商会将承载众多衡商的希望，远播衡商诚誉，书写民营经济发展新篇章。<br /><br />会长：陈成鑫<br />法人代表：魏湘粤<br />秘书长：张朝阳（电话：13308209298）<br />&nbsp;\r\n<div style=\\"text-align: right;\\">成都舜王科技有限公司企业文化部<br />2020年8月21日</div>'),
(4, 4, '', 1, 0, 0, 0, '', '', '', '<p data-bjh-caption-id=\\"cap-77146008\\" data-bjh-helper-id=\\"1597592436368\\" data-diagnose-id=\\"398690d577e108b8b85ba1bef7a73b17\\">​应四川车元互联汽配股份有限公司吴邦志董事长邀请，我成都舜王科技有限公司应约对该公司进行访问交流，双方对前期合作进行了总结，并对未来的合作事宜进行了商讨，当场落实了部分合作项目，并制定了长期的合作计划，此次交流达成了实际成果。</p>\r\n<p data-bjh-caption-for=\\"cap-77146008\\" data-bjh-caption-length=\\"18\\" data-bjh-caption-text=\\"请点击输入图片描述\\" data-diagnose-id=\\"e98d1e0c2c7aad1586e31fa894536330\\">四川车元互联汽配股份有限公司，简称车元互联，成立于2015年，准集团公司，地址总部位于四川省成都市武侯区大悦路511号大合仓星商界，公司董事长吴邦志，现为天府(四川)联合股权交易中心挂牌企业，股票代码101460，控股公司：四川德兴源贸易有限公司、四川德兴正安科技有限公司、贵州车元通达汽车服务有限公司等，公司为嘉实多、德国特曼特机油等国际品牌的重要合作商。</p>\r\n<p data-diagnose-id=\\"0a7d4905240c4ad652234e94496a3193\\">四川车元互联汽配股份有限公司现为我公司重点服务客户，开业首年合作的客户之一。<br />&nbsp;</p>\r\n<p data-diagnose-id=\\"b1fc7b851eac430d595bb0c13b6330ba\\">&nbsp;</p>\r\n<p data-diagnose-id=\\"c92f77af84a297a19ab545eb6400a658\\" style=\\"text-align: right;\\">&nbsp;成都舜王科技有限公司企业文化部</p>\r\n<p data-diagnose-id=\\"8caef0397460c52972b6ac4512c4f976\\" style=\\"text-align: right;\\">2020年8月16日</p>\r\n<p data-diagnose-id=\\"1d4996089546588a24b54f61ab416155\\" style=\\"text-align: right;\\">​</p>'),
(5, 4, '', 1, 0, 0, 0, '', '', '', '<p align=\\"center\\"><img border=\\"0\\" src=\\"https://www.shunking.cn/d/file/3ded49c9ae167431b06f2b8729ede65a.jpg\\" /><br />(左起：发现律师事务所郑雪阳律师、周勇律师、舜王科技赵保路经理、林涛经理)</p><br />2020年7月27日下午，应四川发现律师事务所邀请，我公司应邀访问四川发现律师事务所，该所周勇律师、郑雪阳律师接待了我公司一行。双方就未来可合作的空间进行的深入交流，并讨论了新媒体、自媒体、网络推广等课题。周勇律师对我公司过去一年的服务工作给予了较高的评价，我方表示将继续不忘初心，尽力为客户提供更高更优质的服务。\r\n<p align=\\"center\\"><img border=\\"0\\" src=\\"https://www.shunking.cn/d/file/622c0a2b1519a695f3adfbb3607d2d8a.jpg\\" /></p>&nbsp;\r\n<p align=\\"center\\"><img border=\\"0\\" src=\\"https://www.shunking.cn/d/file/b2d9a4eef65f1cdbc5529edb537e1907.jpg\\" /></p><br />四川发现律师事务所成立于2001年，2019年5月与我公司达成合作协议，单位位于金融城中心区域，拥有办公面积2000平米，现有律师及工作人员共二百余人，先后荣获&ldquo;全国优秀律师事务所&rdquo;、&ldquo;全国优秀党支部&ldquo;、&ldquo;四川省优秀律师事务所&rdquo;、&ldquo;成都市优秀律师事务所&rdquo;、&ldquo;成都市公安局执法监督联系点&rdquo;等荣誉。\r\n<p style=\\"text-align: center;\\"><img border=\\"0\\" src=\\"https://www.shunking.cn/d/file/ba0b7a821d07b92ac1902af965155438.jpg\\" /></p>\r\n<p style=\\"text-align: center;\\">（四川发现律师事务所&nbsp;周勇律师）</p>\r\n<p>&nbsp;</p>\r\n<div style=\\"text-align: right;\\">成都舜王科技有限公司企业文化部<br />2020年7月31日</div>'),
(6, 4, '', 1, 0, 0, 0, '', '', '', '<br /><img border=\\"0\\" src=\\"https://www.shunking.cn/d/file/b8c296f2550018413f6b3b3229e8e24e.jpg\\" /><br />&nbsp;<br />&nbsp;<br />2020年7月4日18时（晚上六点），第六届在蓉徐州籍老乡会暨成都徐州商会筹备预备会将在山东老家饭店徐州厅举行，本次活动由我公司赵保路经理，乔荣奇，米苗，蒋松林，李奔五位老乡共同主办，我成都舜王科技有限公司执行承办，此次活动相比前几期在人数、规模等方面都均有较大提升，因参与人数多，人际关系也较为复杂，有众多的恩怨情仇，且参与嘉宾多为成都本地的知名企业家，活动执行难度大，将给活动的进行带来重大考验。<br />&nbsp;<br />&nbsp;<br /><img border=\\"0\\" src=\\"https://www.shunking.cn/d/file/b83c1799e29e4a1c56db7863b2602087.jpg\\" /><br />&nbsp;<br />&nbsp;<br />2020年7月3日下午，经我公司赵保路经理再三确认，其他四位参与主办的老乡均不能如约提前到场参与活动执行，情况万分紧急。<br />&nbsp;<br />2020年7月4日15时（下午三点），成都舜王科技有限公司骡马市办公区全体同事临危受命，竭力为公司处理此次突发情况。接到任务后，大家有条不紊的分工，然后兵分两路，一路立即到活动现场提前参与布置工作，一路接手临时离岗同事的手头工作，保持公司上班时间的正常运行，待到下班之后再到会场与其他同事汇合。<br />&nbsp;<br />&nbsp;<br /><img border=\\"0\\" src=\\"https://www.shunking.cn/d/file/e4229f2ccabd609e8e755c48ab9b1d42.jpg\\" /><br />&nbsp;<br />&nbsp;<br />活动现场大家忙的风风火火、不亦乐乎，搭建签到台、安装广告物料、投放宣传视频、协调赞助商、张拉横幅、接待嘉宾、制作与分发嘉宾证等，一帮首次参与活动的技术宅把会议场控工作忙得头头是道，一项也没有落下，大家本着&ldquo;我是一块砖，哪里需要哪里搬&rdquo;的积极态度应对并处理了众多突发事件，坚定保障了活动的圆满成功，并得到了参与嘉宾的一致好评，更是有参与嘉宾直言夸赞我们不输专业公司，希望我们可以帮助其完成其他的活动场控工作。<br />&nbsp;<br />&nbsp;<br /><img border=\\"0\\" src=\\"https://www.shunking.cn/d/file/5d7f43cd8e64991aeea0421262d58c28.jpg\\" /><br />&nbsp;<br />&nbsp;<br />活动的圆满成功，对外建立了我舜王公司良好的形象，同时也展现了公司团队的高效执行力，充分体现了公司超强的协作能力与战斗力，使得公司美名得以远播。<br />&nbsp;<br />&nbsp;<br /><img border=\\"0\\" src=\\"https://www.shunking.cn/d/file/afff9474a5f7d1f2f223bba1ae8ce33f.jpg\\" /><br />&nbsp;<br />&nbsp;<br />这一天，大家忙到凌晨才结束，难得的热血了一次，公司团队在本次活动执行中身体力行的践行了有组织有纪律的工作风范。不畏艰苦，团结一心，出色的完成了公司赋予的使命。大家敢于争先，勇于奉献的精神也正是我舜王公司的核心所在。用心服务，方得始终，这是我们舜王团队高光的一次，也希望在将来的工作中我们可以有更多的高光时刻。<br />&nbsp;<br />&nbsp;<br /><img border=\\"0\\" src=\\"https://www.shunking.cn/d/file/d4add283917384afc6f514d89c06ec30.jpg\\" /><br />&nbsp;<br />&nbsp;<br />在接下来的工作中希望公司团队以此次活动作为将来工作执行的范本，继续不辱使命，为公司谋利，为职工谋福，为公司的稳定与发展添砖加瓦。<br />&nbsp;<br />&nbsp;<br /><img border=\\"0\\" src=\\"https://www.shunking.cn/d/file/cac1f1c32186930cd2cd289ce5dbc02d.jpg\\" /><br />&nbsp;<br />&nbsp;<br />&nbsp;\r\n<p style=\\"text-align: right;\\">成都舜王科技有限公司企业文化部<br />2020年7月26日&nbsp;补发</p>'),
(7, 4, '', 1, 0, 0, 0, '', '', '', '<img alt=\\"\\" src=\\"https://www.shunking.cn/d/file/19e9477e8f3056b366a97e069a357206.jpg\\" /><br />&nbsp;<br />2020年5月29日下午1时，成都无锡商会一届九次会长办公会在商会会议室召开，会议由会长、党支部书记许铭占主持。<br /><br />参加本次会议的领导有：商会会长、党支部书记许铭占，商会秘书长姜浩彬，副秘书长苏广华，常务副会长李辉，刘利，王洪萍，副会长胡宏，李富强，文俊峰、樊小凤，潘红君，赵保路，会员顾锋，将甚民，秘书处林萍列席了本次会议。<br /><br />&nbsp;秘书长姜浩彬首先汇报了秘书处一季度完成的工作和二季度的工作计划。<br /><br />参会领导对商会今后的发展树充满了信心，对提升服务会员企业的功能，建立网络平台，帮助会员企业进行维权等多项工作提出了更高要求，并对商会会员发展、商会宣传报导、商会项目发展、商会维权服务、商会人才培训等进行了热烈讨论。<br /><br />会议通过了2020年秘书处二季度的工作计划。听取了商会会长、党支部书记许铭占同志1至5月份的工作报，对6至12月份工作计划充满信心，大家建言献策，发挥集休智慧和力量，资源共享、抱团发展，最终推动会员企业的经济发展而共同奋斗。&nbsp;<br /><br />会议还决定聘请苏广华同志为成都无锡商会副秘书长，选举成都舜王科技有限公司为副会长单位，赵保路经理担任成都无锡商会副会长。<br /><br /><br />&nbsp;&nbsp;&nbsp;&nbsp;<br />成都舜王科技有限公司企业文化部<br />转自成都无锡商会<br />2020年5月29日<br />&nbsp;'),
(8, 4, '', 1, 0, 0, 0, '', '', '', '<img alt=\\"\\" src=\\"https://www.shunking.cn/d/file/5a84f796e2a7b3f2536ec33cc81d296b.jpg\\" /><br />&nbsp;<br />2020年5月29日上午9点30分，成都市工商联领导一行莅临成都无锡商会，对商会会员企业疫情防控以来、复工复产情况及困难展开调研座谈。座谈中首先由成都无锡商会秘书长姜浩彬分别介绍了参与调研的领导。调研组有成都市工商联副主席周光志同志、市工商联一级调研员张浩同志、市工商联研究室主任刘朔同志、市工商联四级调研员况燕平同志、市工商联研究室主任科员蒋红同志、市工商联研究室工作人员唐亮同志。同时主持人也分别介绍了成都无锡商会参会的领导和会员企业代表。<br />&nbsp;<br /><img alt=\\"\\" src=\\"https://www.shunking.cn/d/file/e307aab16470fad652449bd16cc94a69.jpg\\" /><br />&nbsp;<br /><img alt=\\"\\" src=\\"https://www.shunking.cn/d/file/b90a927e1559d3db6c7e4180a544f63a.jpg\\" /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本次调研座谈会在成都无锡商会会议室召开，由秘书长姜浩彬同志主持，参加的商会领导有：成都无锡商会会长、党支部书记许铭占同志、名誉会长刘焕荣同志、常务副会长李辉、刘利、王洪萍、副会长胡宏、李富强、樊小凤、潘红君、赵保路、文俊峰、会员蒋甚民、顾锋、任建云等，秘书处副秘书长苏广华、秘书林萍列席了本次会议。<br /><img alt=\\"\\" src=\\"https://www.shunking.cn/d/file/d919d8dd2111adbaa1d06a51bd63f2f4.jpg\\" /><br />到会的会员企业代表分别向调研组长周光志同志汇报企业在疫情防控和复工复产方面遇到的困难和问题，我公司赵保路经理代表成都舜王科技有限公司发言，调研座谈会上调研组长周光志同志对会员企业提出的困难和问题逐一分析，找出原因和科学解决问题途径，为民营企业指明解决问题的方向以及对接政府哪些职能部门负责处理，会议在热烈讨论、欢快的气氛中结束。<br />&nbsp;<br /><img alt=\\"\\" src=\\"https://www.shunking.cn/d/file/6f216909cfc5e29faa7a71889b8ae3a5.jpg\\" /><br />会议结束后，大家合影留念<br />&nbsp;<br />成都舜王科技有限公司企业文化部<br />稿件转自成都无锡商会<br />2020年5月29日<br />&nbsp;'),
(9, 4, '', 1, 0, 0, 0, '', '', '', '2019年12月10日成都舜王科技有限公司积极响应成都盐城商会即将举办新春团拜会的号召，向大会赞助现金1000元，礼品400份，价值3000元。虽为绵薄之力，但作为商会一份子，团结友爱之心，顾全大局之心却毫不逊色。<br /><br />在此衷心祝愿成都盐城商会越办越好，越办越红火。<br /><br /><br />&nbsp;<br />成都舜王科技有限公司办公室<br /><br />2019年12月14日<br />&nbsp;');

-- --------------------------------------------------------

--
-- Table structure for table `swtx_ecms_news_doc`
--

CREATE TABLE IF NOT EXISTS `swtx_ecms_news_doc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` char(20) NOT NULL DEFAULT '',
  `filename` char(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` char(14) NOT NULL DEFAULT '',
  `titleurl` char(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` char(80) NOT NULL DEFAULT '',
  `title` char(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` char(120) NOT NULL DEFAULT '',
  `eckuid` int(11) NOT NULL DEFAULT '0',
  `ftitle` char(120) NOT NULL DEFAULT '',
  `smalltext` char(255) NOT NULL DEFAULT '',
  `diggtop` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`),
  KEY `useridis` (`userid`,`ismember`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_ecms_news_doc_data`
--

CREATE TABLE IF NOT EXISTS `swtx_ecms_news_doc_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `befrom` varchar(60) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_ecms_news_doc_index`
--

CREATE TABLE IF NOT EXISTS `swtx_ecms_news_doc_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_ecms_news_index`
--

CREATE TABLE IF NOT EXISTS `swtx_ecms_news_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `swtx_ecms_news_index`
--

INSERT INTO `swtx_ecms_news_index` (`id`, `classid`, `checked`, `newstime`, `truetime`, `lastdotime`, `havehtml`) VALUES
(1, 4, 1, 1600854158, 1600854176, 1600854176, 1),
(2, 4, 1, 1600854194, 1600854209, 1600854209, 1),
(3, 4, 1, 1600854211, 1600854247, 1600854247, 1),
(4, 4, 1, 1600854273, 1600854284, 1600854284, 1),
(5, 4, 1, 1600854287, 1600854309, 1600854309, 1),
(6, 4, 1, 1600854311, 1600854432, 1600854432, 1),
(7, 4, 1, 1600854435, 1600854449, 1600854449, 1),
(8, 4, 1, 1600854457, 1600854472, 1600854472, 1),
(9, 4, 1, 1600854474, 1600854489, 1600854489, 1);

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsad`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsad` (
  `adid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `picurl` varchar(255) NOT NULL DEFAULT '',
  `url` text NOT NULL,
  `pic_width` int(10) unsigned NOT NULL DEFAULT '0',
  `pic_height` int(10) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `adtype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `target` varchar(10) NOT NULL DEFAULT '',
  `alt` varchar(120) NOT NULL DEFAULT '',
  `starttime` date NOT NULL DEFAULT '0000-00-00',
  `endtime` date NOT NULL DEFAULT '0000-00-00',
  `adsay` varchar(255) NOT NULL DEFAULT '',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titlecolor` varchar(10) NOT NULL DEFAULT '',
  `htmlcode` text NOT NULL,
  `t` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ylink` tinyint(1) NOT NULL DEFAULT '0',
  `reptext` text NOT NULL,
  PRIMARY KEY (`adid`),
  KEY `classid` (`classid`),
  KEY `t` (`t`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsadclass`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsadclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `swtx_enewsadclass`
--

INSERT INTO `swtx_enewsadclass` (`classid`, `classname`) VALUES
(1, '默认广告分类');

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsadminstyle`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsadminstyle` (
  `styleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `stylename` char(30) NOT NULL DEFAULT '',
  `path` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`styleid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `swtx_enewsadminstyle`
--

INSERT INTO `swtx_enewsadminstyle` (`styleid`, `stylename`, `path`, `isdefault`) VALUES
(1, '管理员后台界面', 1, 1),
(2, '编辑后台界面', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsag`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsag` (
  `agid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `agname` varchar(60) NOT NULL DEFAULT '',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `auids` text NOT NULL,
  PRIMARY KEY (`agid`),
  KEY `isadmin` (`isadmin`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `swtx_enewsag`
--

INSERT INTO `swtx_enewsag` (`agid`, `agname`, `isadmin`, `auids`) VALUES
(1, '管理员', 9, ''),
(2, '版主', 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsautodo`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsautodo` (
  `doid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `dotype` char(50) NOT NULL DEFAULT '',
  `classid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `dotime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `ckstr` char(32) NOT NULL DEFAULT '',
  `fname` char(255) NOT NULL DEFAULT '',
  `ecmspno` char(32) NOT NULL DEFAULT '',
  `ckpass` char(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`doid`),
  KEY `userid` (`userid`),
  KEY `pid` (`pid`),
  KEY `dotime` (`dotime`),
  KEY `ckstr` (`ckstr`),
  KEY `ecmspno` (`ecmspno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsbefrom`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsbefrom` (
  `befromid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sitename` char(60) NOT NULL DEFAULT '',
  `siteurl` char(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`befromid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsbq`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsbq` (
  `bqid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `bqname` varchar(60) NOT NULL DEFAULT '',
  `bqsay` text NOT NULL,
  `funname` varchar(60) NOT NULL DEFAULT '',
  `bq` varchar(60) NOT NULL DEFAULT '',
  `issys` tinyint(1) NOT NULL DEFAULT '0',
  `bqgs` text NOT NULL,
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bqid`),
  KEY `classid` (`classid`),
  KEY `isclose` (`isclose`),
  KEY `myorder` (`myorder`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `swtx_enewsbq`
--

INSERT INTO `swtx_enewsbq` (`bqid`, `bqname`, `bqsay`, `funname`, `bq`, `issys`, `bqgs`, `isclose`, `classid`, `myorder`) VALUES
(1, '文字调用标签', '<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">栏目ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看栏目ID点<a onclick=\\"window.open(\\''../ListClass.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a>，查看标题分类ID点<a onclick=\\"window.open(\\''../info/InfoType.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a>,当前ID=\\''selfinfo\\''<br />\r\n            多个栏目ID与标题分类ID可用,号格开，如\\''1,2\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示条数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示时间</div>\r\n            </td>\r\n            <td height=\\"25\\">是否在标题后显示时间，0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">操作类型</div>\r\n            </td>\r\n            <td height=\\"25\\">具体看操作类型说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示栏目名</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">时间格式化</div>\r\n            </td>\r\n            <td height=\\"25\\">形式：Y-m-d H:i:s．默认为：\\''(m-d)\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\"25\\">附加调用条件，如：&quot;title=\\''帝国\\''&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示排序</div>\r\n            </td>\r\n            <td height=\\"25\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td colspan=\\"2\\">\r\n            <div align=\\"center\\">（注：在栏目ID中写大栏目，系统会自己搜索子栏目的信息）</div>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetClassNews', 'phomenews', 1, '[phomenews]栏目ID,显示条数,标题截取数,是否显示时间,操作类型,是否显示栏目名,\\''时间格式化\\'',附加SQL条件,显示排序[/phomenews]', 0, 1, 9),
(22, '留言板调用', '<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td width=\\"40%\\">\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td width=\\"60%\\">参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示信息数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示记录数</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标签模板ID</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <div align=\\"left\\">查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a></div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\"25\\">模板标签变量说明：<br />\r\n            留言ID：[!--lyid--]，留言内容：[!--lytext--]<br />\r\n            回复内容：[!--retext--]，留言时间：[!--lytime--]<br />\r\n            留言者：[!--name--]，留言者邮箱：[!--email--]<br />\r\n            序号：[!--no--]</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">留言分类ID</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <div align=\\"left\\">点击<strong><a onclick=\\"window.open(\\''../tool/GbookClass.php?[!--ehash--]\\'');\\">这里</a></strong>查看分类ID，0为不限制</div>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_ShowLyInfo', 'gbookinfo', 1, '[gbookinfo]显示信息数,标签模板ID,留言分类ID[/gbookinfo]', 0, 3, 5),
(23, '专题调用标签', '<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">\r\n            <div align=\\"center\\">标签模板ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\"25\\">查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <p>模板标签变量说明：(list.var)<br />\r\n            [!--classurl--]：专题链接，[!--classname--]：专题名称<br />\r\n            [!--classid--]：专题id，[!--classimg--]：专题图片<br />\r\n            [!--intro--]：专题简介,[!--no--]：序号</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">专题类别ID</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <div align=\\"left\\">点击<strong><a onclick=\\"window.open(\\''../special/ListZtClass.php?[!--ehash--]\\'');\\">这里</a></strong>查看分类ID，0为不限制，多个分类ID用逗号隔开，如\\''1,2\\''</div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示专题数</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不限制</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">所属栏目ID</div>\r\n            </td>\r\n            <td height=\\"25\\">点击<strong><a onclick=\\"window.open(\\''../ListClass.php?[!--ehash--]\\'');\\">这里</a></strong>查看栏目ID，0为不限制，多个栏目ID用逗号隔开，如\\''1,2\\''</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_ShowZtData', 'eshowzt', 1, '[eshowzt]标签模板ID,专题类别ID,显示专题数,所属栏目ID[/eshowzt]', 0, 2, 6),
(2, '图文信息调用(标题图片的信息)', '<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">栏目ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看栏目ID点<a onclick=\\"window.open(\\''../ListClass.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a>，查看标题分类ID点<a onclick=\\"window.open(\\''../info/InfoType.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a>,当前ID=\\''selfinfo\\''<br />\r\n            多个栏目ID与标题分类ID可用,号格开，如\\''1,2\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">每行显示条数</div>\r\n            </td>\r\n            <td height=\\"25\\">每行显示几个图片</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示总信息数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示信息总数</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">图片宽度，图片高度</div>\r\n            </td>\r\n            <td height=\\"25\\">图文信息图片大小</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示标题</div>\r\n            </td>\r\n            <td height=\\"25\\">是否在图片下显示标题，0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td bgcolor=\\"#ffffff\\" height=\\"25\\">\r\n            <div align=\\"center\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td bgcolor=\\"#ffffff\\" height=\\"25\\">\r\n            <div align=\\"center\\">操作类型说明</div>\r\n            </td>\r\n            <td height=\\"25\\">具体看操作类型说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\"25\\">附加调用条件，如：&quot;title=\\''帝国\\''&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示排序</div>\r\n            </td>\r\n            <td height=\\"25\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetClassNewsPic', 'phomenewspic', 1, '[phomenewspic]栏目ID,每行显示条数,显示总信息数,图片宽度,图片高度,是否显示标题,标题截取数,操作类型,附加SQL条件,显示排序[/phomenewspic]', 0, 1, 9),
(5, '广告标签', '<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">广告ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看广告ID点<a onclick=\\"window.open(\\''../tool/ListAd.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetAd', 'phomead', 1, '[phomead]广告ID[/phomead]', 0, 3, 5),
(6, '投票标签', '<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">投票ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看投票ID点<a onclick=\\"window.open(\\''../tool/ListVote.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetVote', 'phomevote', 1, '[phomevote]投票ID[/phomevote]', 0, 3, 5),
(11, '带模板的信息调用标签[万能标签]', '<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">栏目ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看栏目ID点<a onclick=\\"window.open(\\''../ListClass.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a>，查看标题分类ID点<a onclick=\\"window.open(\\''../info/InfoType.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a>,当前ID=\\''selfinfo\\''<br />\r\n            多个栏目ID与标题分类ID可用,号格开，如\\''1,2\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示条数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示栏目名</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">操作类型</div>\r\n            </td>\r\n            <td height=\\"25\\">具体看操作类型说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标签模板ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">只显示有标题图片</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不限制，1为只显示有标题图片的信息</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\"25\\">附加调用条件，如：&quot;title=\\''帝国\\''&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示排序</div>\r\n            </td>\r\n            <td height=\\"25\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetEcmsInfo', 'ecmsinfo', 1, '[ecmsinfo]栏目ID,显示条数,标题截取数,是否显示栏目名,操作类型,模板ID,只显示有标题图片,附加SQL条件,显示排序[/ecmsinfo]', 0, 1, 10),
(12, '友情链接标签', '<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td width=\\"40%\\">\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td width=\\"60%\\">参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">每行显示记录数</div>\r\n            </td>\r\n            <td height=\\"25\\">每行显示记录数</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示总记录数</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <div align=\\"left\\">总记录数</div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">操作类型</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <div align=\\"left\\">0为所有记录，1为图片链接，2为文字链接</div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">分类ID</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <div align=\\"left\\">点击<strong><a onclick=\\"window.open(\\''../tool/LinkClass.php?[!--ehash--]\\'');\\">这里</a></strong>查看分类ID，0为不限制</div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示原链接</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <div align=\\"left\\">0为统计点击链接，1为显示原链接</div>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_GetSitelink', 'phomelink', 1, '[phomelink]每行显示数,显示总数,操作类型,分类id,是否显示原链接[/phomelink]', 0, 3, 5),
(15, '引用文件标签', '<p>[includefile]\\''文件地址\\''[/includefile]<br />\r\n文件地址需要为相对地址,并且从后台目录算起：&quot;../../header.html&quot;（这个地址的header.html是放在ecms根目录）</p>', 'sys_IncludeFile', 'includefile', 1, '[includefile]\\''文件地址\\''[/includefile]', 1, 4, 4),
(16, '读取远程页面', '<p>[readhttp]\\''页面地址\\''[/readhttp]</p>', 'sys_ReadFile', 'readhttp', 1, '[readhttp]\\''页面地址\\''[/readhttp]', 1, 4, 4),
(17, '网站信息统计', '<p>操作类型说明：\r\n<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\">\r\n    <tbody>\r\n        <tr bgcolor=\\"#dbeaf5\\">\r\n            <td width=\\"25%\\">\r\n            <div align=\\"center\\">操作类型</div>\r\n            </td>\r\n            <td width=\\"75%\\">内容</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">0</div>\r\n            </td>\r\n            <td>统计栏目数据</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">1</div>\r\n            </td>\r\n            <td>统计标题分类</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">2</div>\r\n            </td>\r\n            <td>统计数据表</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<br />\r\n时间范围：0为不限；1为今日；2为本月；3为本年。<br />\r\n统计类型：0为统计信息数；1为统计评论数；2为统计点击数；3为统计下载数。<br />\r\n如果操作类型是&ldquo;统计数据表&rdquo;，栏目ID=\\''数据表名\\''</p>', 'sys_TotalData', 'totaldata', 1, '[totaldata]栏目ID,操作类型,时间范围,统计类型[/totaldata]', 0, 1, 7),
(18, 'FLASH幻灯信息调用', '<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">\r\n            <div align=\\"center\\">栏目ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\"25\\">查看栏目ID点<a onclick=\\"window.open(\\''../ListClass.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a>，查看标题分类ID点<a onclick=\\"window.open(\\''../info/InfoType.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a>,当前ID=\\''selfinfo\\''<br />\r\n            多个栏目ID与标题分类ID可用,号格开，如\\''1,2\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示总数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示信息总数</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">图片宽度，图片高度</div>\r\n            </td>\r\n            <td height=\\"25\\">图文信息图片大小</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示标题</div>\r\n            </td>\r\n            <td height=\\"25\\">是否在图片下显示标题，0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td bgcolor=\\"#ffffff\\" height=\\"25\\">\r\n            <div align=\\"center\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td bgcolor=\\"#ffffff\\" height=\\"25\\">\r\n            <div align=\\"center\\">操作类型说明</div>\r\n            </td>\r\n            <td height=\\"25\\">具体看操作类型说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\"25\\">附加调用条件，如：&quot;title=\\''帝国\\''&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示排序</div>\r\n            </td>\r\n            <td height=\\"25\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_FlashPixpic', 'phomeflashpic', 1, '[phomeflashpic]栏目ID,显示总数,图片宽度,图片高度,是否显示标题,标题截取数,操作类型,停顿秒数,附加SQL条件,显示排序[/phomeflashpic]', 0, 1, 9),
(19, '搜索关键字调用标签', '<p>栏目id为0，则显示所有栏目的关键字</p>\r\n<p>操作类型：0为搜索热门排行，1为最新搜索排行</p>', 'sys_ShowSearchKey', 'showsearch', 1, '[showsearch]每行显示条数,总条数,栏目id,操作类型[/showsearch]', 0, 1, 7),
(20, '循环子栏目数据标签', '<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">栏目ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看栏目ID点<a onclick=\\"window.open(\\''../ListClass.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a>，单个为父栏目ID，多栏目可用&quot;,&quot;格开<br />\r\n            当前栏目ID用：\\''selfinfo\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示条数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示栏目名</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">操作类型</div>\r\n            </td>\r\n            <td height=\\"25\\">0：栏目最新<br />\r\n            1：栏目热门<br />\r\n            2：栏目推荐<br />\r\n            3：栏目评论排行<br />\r\n            4：栏目头条<br />\r\n            5：栏目下载排行</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标签模板ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">只显示有标题图片</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不限制，1为只显示有标题图片的信息</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示栏目数</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不限制</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示头条操作类型</div>\r\n            </td>\r\n            <td height=\\"25\\">0：不显示栏目头条<br />\r\n            1：栏目内容简介<br />\r\n            2：栏目推荐信息<br />\r\n            3：栏目头条信息<br />\r\n            4：栏目最新信息</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">头条标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">头条简介截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">头条只显示有标题图片</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不限制，1为只显示有标题图片的信息</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\"25\\">附加调用条件，如：&quot;title=\\''帝国\\''&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示排序</div>\r\n            </td>\r\n            <td height=\\"25\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">头条的模板变量<br />\r\n            (标签模板的页面模板内容中使用)</div>\r\n            </td>\r\n            <td height=\\"25\\">[!--sonclass.id--]：信息ID<br />\r\n            [!--sonclass.title--]：信息标题<br />\r\n            [!--sonclass.oldtitle--]：信息标题(不截取字数)<br />\r\n            [!--sonclass.titlepic--]：标题图片<br />\r\n            [!--sonclass.titleurl--]：信息链接<br />\r\n            [!--sonclass.text--]：信息简介</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_ForSonclassData', 'listsonclass', 1, '[listsonclass]栏目ID,显示条数,标题截取数,是否显示栏目名,操作类型,模板ID,只显示有标题图片,显示栏目数,显示头条操作类型,头条标题截取数,头条简介截取数,头条只显示有标题图片,附加SQL条件,显示排序[/listsonclass]', 0, 1, 9),
(21, '带模板的栏目导航标签', '<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">父栏目ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看栏目ID点<a onclick=\\"window.open(\\''../ListClass.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a><br />\r\n            \\''0\\''为显示所有一级栏目<br />\r\n            \\''selfinfo\\''显示本栏目下级栏目</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">\r\n            <div align=\\"center\\">标签模板ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\"25\\">查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <p>模板标签变量说明：[!--bclassname--]：父栏目名,[!--bclassurl--]：父栏目链接,[!--bclassid--]：父栏目id</p>\r\n            <p>list.var模板标签：<br />\r\n            [!--classurl--]：栏目链接,[!--classname--]：栏目名称,[!--classid--]：栏目id,[!--classimg--]：栏目图片,[!--intro--]：栏目简介,[!--num--]：信息数,[!--no--]：序号</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示栏目信息数</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示栏目数</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不限制</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_ShowClassByTemp', 'showclasstemp', 1, '[showclasstemp]父栏目ID,标签模板ID,是否显示栏目信息数,显示栏目数[/showclasstemp]', 0, 2, 6),
(24, '图库模型分页标签', '<p>\r\n<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">\r\n            <div align=\\"center\\">标签模板ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\"25\\">查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <p><strong>模板标签变量说明：</strong><br />\r\n            图片集JS数组：[!--photor--]，缩略图导航：[!--smalldh--]<br />\r\n            分页导航：[!--select--]，标题分页导航：[!--titleselect--]，分页列表式导航：[!--listpage--]</p>\r\n            <p><strong>list.var模板标签：</strong><br />\r\n            图片名称：[!--picname--]，图片地址：[!--picurl--]</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">导航图片宽度<br />\r\n            导航图片高度</div>\r\n            </td>\r\n            <td height=\\"25\\">0为按原图大小</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</p>', 'sys_PhotoMorepage', 'eshowphoto', 1, '[eshowphoto]标签模板ID,导航图片宽度,导航图片高度[/eshowphoto]', 0, 1, 7),
(25, '复选项输出函数', '<p>如：[echocheckbox]\\''title\\'',\\''&lt;br&gt;\\''[/echocheckbox]：表示按回车分隔输出title字段的项</p>', 'sys_EchoCheckboxFValue', 'echocheckbox', 1, '[echocheckbox]\\''字段\\'',\\''分隔符\\''[/echocheckbox]', 0, 3, 5),
(26, '相关链接标签', '<p><strong>标签模板ID</strong>：查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a><br />\r\n<strong>操作类型</strong>：0为默认；1为按表；2为按栏目；3为按标题分类<br />\r\n<strong>操作对象</strong>：对应操作类型的表/栏目/标题分类。空则为默认。<br />\r\n<strong>是否显示栏目名</strong>：0为不显示；1为显示<br />\r\n<strong>只显示标题图片的信息</strong>：0为不限；1为只显示标题图片的信息</p>', 'sys_GetOtherLinkInfo', 'otherlink', 1, '[otherlink]标签模板ID,操作对象,调用条数,标题截取字数,是否显示栏目名,操作类型,只显示标题图片的信息[/otherlink]', 0, 1, 9),
(27, '评论调用标签', '<p><strong>标签模板ID</strong>：查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a><br />\r\n<strong>栏目ID</strong>：0为不限调用栏目，父栏目会应用于子栏目<br />\r\n<strong>信息ID</strong>：0为不限<br />\r\n<strong>显示推荐评论</strong>：0为不限；1为只显示推荐评论<br />\r\n<strong>操作类型</strong>：0为按发布时间；1为按支持数；2为按反对数<br />\r\n<strong>标签模板说明</strong>：[!--title--]:信息标题；[!--titleurl--]:信息链接；[!--titlepic--]:信息标题图片；[!--id--]:信息ID<br />\r\n[!--classid--]:栏目ID；[!--plid--]:评论ID；[!--username--]:发表者；[!--no--]:编号<br />\r\n[!--pltext--]:评论内容；[!--pltime--]:评论时间；[!--zcnum--]:支持数；[!--fdnum--]:反对数</p>', 'sys_ShowPlInfo', 'showplinfo', 1, '[showplinfo]调用条数,标签模板ID,栏目ID,信息ID,显示推荐评论,操作类型[/showplinfo]', 0, 3, 5),
(28, '循环栏目导航标签', '<p>\r\n<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">父栏目ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看栏目ID点<a onclick=\\"window.open(\\''../ListClass.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a><br />\r\n            \\''0\\''为显示所有一级栏目<br />\r\n            \\''selfinfo\\''显示本栏目下级栏目<br />\r\n            多栏目固定调用可用&quot;,&quot;格开</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">\r\n            <div align=\\"center\\">标签模板ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\"25\\">查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\"25\\">\r\n            <p>模板标签变量说明：[!--bclassname--]：父栏目名,[!--bclassurl--]：父栏目链接,[!--bclassid--]：父栏目id，[!--bclassimg--]：父栏目图片,[!--bintro--]：父栏目简介,[!--bnum--]：父栏目信息数,[!--bno--]：父栏目序号</p>\r\n            <p>list.var模板标签：<br />\r\n            [!--classurl--]：栏目链接,[!--classname--]：栏目名称,[!--classid--]：栏目id,[!--classimg--]：栏目图片,[!--intro--]：栏目简介,[!--num--]：信息数,[!--no--]：序号</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示栏目信息数</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示栏目数</div>\r\n            </td>\r\n            <td height=\\"25\\">0为不限制</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</p>', 'sys_ForShowSonClass', 'listshowclass', 1, '[listshowclass]父栏目ID,标签模板ID,是否显示栏目信息数,显示栏目数[/listshowclass]', 0, 2, 6),
(29, '调用TAGS的信息标签', '<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">TAGS的ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看TAGS的ID点<a onclick=\\"window.open(\\''../tags/ListTags.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a><br />\r\n            多个ID可以用,号格开，如\\''1,2\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示条数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标签模板ID</div>\r\n            </td>\r\n            <td height=\\"25\\">查看标签模板ID点<a onclick=\\"window.open(\\''ListBqtemp.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">栏目ID</div>\r\n            </td>\r\n            <td height=\\"25\\">限制只调用某一个或多个栏目的信息<br />\r\n            多个ID可以用,号格开，如\\''1,2\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">系统模型ID</div>\r\n            </td>\r\n            <td height=\\"25\\">限制只调用某一个或多个系统模型的信息<br />\r\n            多个ID可以用,号格开，如\\''1,2\\''</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_eShowTagsInfo', 'tagsinfo', 0, '[tagsinfo]TAGS的ID,显示条数,标题截取数,标签模板ID,栏目ID,系统模型ID[/tagsinfo]', 0, 0, 9),
(30, '调用碎片的信息标签', '<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">碎片变量名</div>\r\n            </td>\r\n            <td height=\\"25\\">查看碎片变量名点<a onclick=\\"window.open(\\''../sp/ListSp.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示条数</div>\r\n            </td>\r\n            <td height=\\"25\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\"25\\">截取几个字符</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<p><br />\r\n&nbsp;</p>\r\n<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td colspan=\\"2\\">\r\n            <div align=\\"center\\">碎片标签模板变量说明</div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\" width=\\"34%\\">\r\n            <div align=\\"center\\">静态碎片</div>\r\n            </td>\r\n            <td height=\\"25\\" width=\\"66%\\">模板标签变量说明：[!--the.spname--]：碎片名称,[!--the.spid--]：碎片ID,[!--the.sppic--]：碎片效果图,[!--the.spsay--]：碎片描述\r\n            <p>list.var模板标签：<br />\r\n            [!--title--]：标题,[!--oldtitle--]：标题ALT,[!--newstime--]：发布时间,[!--id--]：碎片信息ID,[!--titleurl--]：标题链接,[!--titlepic--]：标题缩图,[!--bigpic--]：标题大图,[!--titlepre--]：标题左边,[!--titlenext--]：标题右边,[!--smalltext--]：内容简介,[!--no.num--]：编号</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">动态碎片</div>\r\n            </td>\r\n            <td height=\\"25\\">模板标签变量说明：[!--the.spname--]：碎片名称,[!--the.spid--]：碎片ID,[!--the.sppic--]：碎片效果图,[!--the.spsay--]：碎片描述\r\n            <p>list.var模板标签：<br />\r\n            支持变量同模型信息调用</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">代码碎片</div>\r\n            </td>\r\n            <td height=\\"25\\">无需标签模板，直接显示代码内容</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_eShowSpInfo', 'spinfo', 0, '[spinfo]碎片变量名,显示条数,标题截取数[/spinfo]', 0, 0, 9),
(31, '调用TAGS标签', '<table border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" width=\\"100%\\" bgcolor=\\"#dbeaf5\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\"center\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">分类ID</div>\r\n            </td>\r\n            <td height=\\"25\\">\\''\\''空为不限制，查看TAGS分类ID点<a onclick=\\"window.open(\\''../tags/TagsClass.php?[!--ehash--]\\'');\\"><strong><u>这里</u></strong></a><br />\r\n            多个可以用,号格开，如\\''1,2\\''<br />\r\n            内容页显示当前TAGS可以用\\''selfinfo\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示数量</div>\r\n            </td>\r\n            <td height=\\"25\\">显示前几条记录，0为显示所有（\\''selfinfo\\''本设置无效）</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">每行显示数量</div>\r\n            </td>\r\n            <td height=\\"25\\">一行显示多少个TAGS，0为不换行</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示排序</div>\r\n            </td>\r\n            <td height=\\"25\\">使用默认设置\\''\\''空就可以，默认是\\''tagid desc\\''（\\''selfinfo\\''本设置无效）</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">只显示推荐</div>\r\n            </td>\r\n            <td height=\\"25\\">只显示推荐的TAGS，0为不限制，1为限制（\\''selfinfo\\''本设置无效）</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">推荐TAGS属性</div>\r\n            </td>\r\n            <td height=\\"25\\">如果是推荐的TAGS，内容是否要加粗或加红（\\''selfinfo\\''本设置无效）<br />\r\n            设置\\''s\\''表示加粗、\\''r\\''表示加红、同时加粗加红用\\''s,r\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">显示间隔符</div>\r\n            </td>\r\n            <td height=\\"25\\">TAGS之间显示间隔符，默认是\\'' &amp;nbsp; \\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">是否显示信息数量</div>\r\n            </td>\r\n            <td height=\\"25\\">是否在TAGS后显示信息数量，0为不显示，1为显示（\\''selfinfo\\''本设置无效）</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">链接附加参数</div>\r\n            </td>\r\n            <td height=\\"25\\">可指定在TAGS链接后面增加参数，比如：\\''&amp;tempid=模板ID\\''</td>\r\n        </tr>\r\n        <tr bgcolor=\\"#ffffff\\">\r\n            <td height=\\"25\\">\r\n            <div align=\\"center\\">链接变量名</div>\r\n            </td>\r\n            <td height=\\"25\\">可指定在链接使用的变量名(需加引号)：tagname或tagid，默认为tagname，比如：\\''tagname\\''</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 'sys_eShowTags', 'showtags', 0, '[showtags]分类ID,显示数量,每行显示数量,显示排序,只显示推荐,推荐TAGS属性,显示间隔符,是否显示信息数,链接附加参数,链接变量名[/showtags]', 0, 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsbqclass`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsbqclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `swtx_enewsbqclass`
--

INSERT INTO `swtx_enewsbqclass` (`classid`, `classname`) VALUES
(1, '信息调用'),
(2, '栏目调用'),
(3, '非信息调用'),
(4, '其它标签');

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsbqtemp`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsbqtemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `modid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `temptext` text NOT NULL,
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `listvar` text NOT NULL,
  `subnews` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rownum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `docode` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `swtx_enewsbqtemp`
--

INSERT INTO `swtx_enewsbqtemp` (`tempid`, `tempname`, `modid`, `temptext`, `showdate`, `listvar`, `subnews`, `rownum`, `classid`, `docode`) VALUES
(1, '子栏目导航标签模板', 1, '| [!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<a href=\\"[!--classurl--]\\">[!--classname--]</a> | ', 0, 1, 0, 0),
(2, '标题列表模板', 1, '[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<li><a href="[!--titleurl--]" title="[!--oldtitle--]">[!--title--]</a></li>', 0, 1, 0, 0),
(3, '标题+简介', 1, '[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 'm-d', '<li><p><strong><a href="[!--titleurl--]" title="[!--oldtitle--]">[!--title--]</a></strong>[!--smalltext--] </p></li>', 60, 1, 0, 0),
(4, '头条相关', 1, '[!--empirenews.listtemp--]<!--list.var1-->　<!--list.var2-->[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<a href="[!--titleurl--]" title="[!--oldtitle--]">·[!--title--]</a>', 0, 2, 0, 0),
(5, '图片+标题+简介', 1, '[!--empirenews.listtemp--]\r\n<!--list.var1-->\r\n[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<table width=\\"94%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"6\\" class=\\"picText\\">\r\n<tr valign=\\"top\\">\r\n<td><a href=\\"[!--titleurl--]\\" target=\\"_blank\\"><img width=\\"70\\" height=\\"78\\" src=\\"[!--titlepic--]\\" alt=\\"[!--oldtitle--]\\" /></a></td>\r\n<td><strong><a href=\\"[!--titleurl--]\\" title=\\"[!--oldtitle--]\\">[!--title--]</a></strong>[!--smalltext--]</td>\r\n</tr>\r\n</table>', 56, 1, 0, 0),
(7, '循环子栏目标签', 1, '<table width="100%" border="0" cellspacing="0" cellpadding="0" class="title">\r\n<tr>\r\n<td><strong>[!--the.classname--]</strong></td>\r\n<td align="right"><a href="[!--the.classurl--]">更多&gt;&gt;</a></td>\r\n</tr>\r\n</table>\r\n<table width="100%" border="0" cellspacing="0" cellpadding="0" class="box">\r\n<tr>\r\n<td><ul>\r\n       [!--empirenews.listtemp--]\r\n       <!--list.var1-->\r\n       [!--empirenews.listtemp--]\r\n</ul>\r\n</td>\r\n</tr>\r\n</table>', 'Y-m-d', '<li><a href="[!--titleurl--]" title="[!--oldtitle--]">[!--title--]</a> <span>[!--newstime--]</span></li>', 0, 1, 0, 0),
(8, '头条标题', 1, '[!--empirenews.listtemp--]\r\n<!--list.var1-->\r\n[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<strong><a href="[!--titleurl--]">[!--title--]</a></strong>\r\n<p>　　[!--smalltext--]</p>', 150, 1, 0, 0),
(9, '标题+软件简介', 2, '[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<li><p><strong><a href=\\"[!--titleurl--]\\" title=\\"[!--oldtitle--]\\">[!--title--]</a></strong>[!--softsay--]</p></li>', 50, 1, 0, 0),
(10, '排行列表', 1, '[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<li class="no[!--no.num--]"><a href="[!--titleurl--]" title="[!--oldtitle--]">[!--title--]</a></li>', 0, 1, 0, 0),
(11, '图片集分页模板', 1, '<script type=\\"text/javascript\\">\r\n        var photosr=new Array();\r\n        [!--photor--]\r\n        function GotoPhPage(page){\r\n                page=parseInt(page);\r\n                document.getElementById(\\"showpagephoto\\").innerHTML=photosr[page];\r\n                document.ViewPhotoForm.thisphpage.value=page;\r\n                document.ViewPhotoForm.tothephpage.options[page-1].selected=true;\r\n        }\r\n        //上一页\r\n        function PriPhPage(){\r\n                var thispage=parseInt(document.ViewPhotoForm.thisphpage.value);\r\n                var num=photosr.length;\r\n                if(thispage<=1)\r\n                {\r\n                        return false;\r\n                }\r\n                GotoPhPage(thispage-1);\r\n        }\r\n        //下一页\r\n        function NextPhPage(){\r\n                var thispage=parseInt(document.ViewPhotoForm.thisphpage.value);\r\n                var num=photosr.length;\r\n                if(thispage>=num-1)\r\n                {\r\n                        return false;\r\n                }\r\n                GotoPhPage(thispage+1);\r\n        }\r\n        function PhAutoPlay(){\r\n                var sec=parseInt(document.ViewPhotoForm.autoplaysec.value);\r\n                var i;\r\n                var num=photosr.length;\r\n                for(i=1;i<=sec;i++)\r\n                {\r\n                        if(document.ViewPhotoForm.autophstop.value==0)\r\n                        {\r\n                                window.setTimeout(\\"PhAutoPlayExe(\\"+i+\\",\\"+sec+\\")\\",i*1000);\r\n                        }\r\n                        else\r\n                        {\r\n                                break;\r\n                        }\r\n                }\r\n        }\r\n        function PhAutoPlayExe(num,sec){\r\n                var t;\r\n                if(document.ViewPhotoForm.autophstop.value==1)\r\n                {\r\n                        return \\"\\";\r\n                }\r\n                if(num==sec) \r\n                {\r\n                        t=NextPhPage();\r\n                        if(t==false)\r\n                        {\r\n                                GotoPhPage(1);\r\n                        }\r\n                        PhAutoPlay();\r\n                } \r\n        }\r\n        </script>\r\n        \r\n<table width=\\"100%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\">\r\n  <tr> \r\n    <td height=\\"25\\" id=\\"showpagephoto\\" align=\\"center\\"> \r\n      <!--list.var1-->\r\n    </td>\r\n  </tr>\r\n  <form name=\\"ViewPhotoForm\\" id=\\"ViewPhotoForm\\" method=\\"POST\\" action=\\"\\">\r\n    <tr> \r\n      <td height=\\"25\\"> <div align=\\"center\\"> \r\n          <input type=\\"button\\" name=\\"Submit\\" value=\\"上一页\\" onclick=\\"PriPhPage();\\">\r\n          &nbsp;&nbsp; \r\n          <select name=\\"tothephpage\\" onchange=\\"GotoPhPage(this.options[this.selectedIndex].value)\\">\r\n            [!--select--]\r\n          </select>\r\n          &nbsp;&nbsp; \r\n          <input type=\\"button\\" name=\\"Submit2\\" value=\\"下一页\\" onclick=\\"NextPhPage();\\">\r\n          <input name=\\"thisphpage\\" type=\\"hidden\\" value=\\"1\\">\r\n        </div></td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\\"25\\"><div align=\\"center\\">\r\n          <select name=\\"autoplaysec\\">\r\n            <option value=\\"1\\">1秒</option>\r\n            <option value=\\"2\\">2秒</option>\r\n            <option value=\\"3\\" selected>3秒</option>\r\n            <option value=\\"4\\">4秒</option>\r\n            <option value=\\"5\\">5秒</option>\r\n            <option value=\\"6\\">6秒</option>\r\n            <option value=\\"7\\">7秒</option>\r\n            <option value=\\"8\\">8秒</option>\r\n            <option value=\\"9\\">9秒</option>\r\n            <option value=\\"10\\">10秒</option>\r\n          </select>\r\n                  <input name=\\"autophstop\\" type=\\"hidden\\" value=\\"0\\">\r\n          <input type=\\"button\\" name=\\"Submit3\\" value=\\"自动播放\\" onclick=\\"document.ViewPhotoForm.autophstop.value=0;PhAutoPlay();\\">\r\n          &nbsp;<input type=\\"button\\" name=\\"Submit32\\" value=\\"停止播放\\" onclick=\\"document.ViewPhotoForm.autophstop.value=1;\\">\r\n        </div></td>\r\n    </tr>\r\n  </form>\r\n</table>\r\n<table width=\\"500\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\">\r\n<tr><td>\r\n<marquee  behavior=alternate ONMOUSEOUT=\\"this.scrollDelay=1\\" ONMOUSEOVER=\\"this.scrollDelay=600\\"  scrollamount=1  SCROLLDELAY=1  border=0  scrolldelay=70  width=\\"100%\\"  align=middle>\r\n        [!--smalldh--]\r\n</marquee>\r\n</td></tr></table>', 'Y-m-d H:i:s', '<a href=\\''#ecms\\'' onclick=\\''NextPhPage();\\'' title=\\''点击进入下一张图片\\''><img src=\\''[!--picurl--]\\'' alt=\\''[!--picname--]\\'' border=1 class=\\''photoresize\\''></a><br><span style=\\''line-height=18pt\\''>[!--picname--]</span>', 0, 1, 0, 0),
(12, '栏目tabs导航', 1, '[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]', 'Y-m-d H:i:s', '<li id="tabnav_btn_[!--no--]" onmouseover="tabit(this)"><a href="[!--classurl--]">[!--classname--]</a></li>', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsbqtempclass`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsbqtempclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsbuybak`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsbuybak` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL DEFAULT '',
  `card_no` char(120) NOT NULL DEFAULT '',
  `buytime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cardfen` int(10) unsigned NOT NULL DEFAULT '0',
  `money` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userdate` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsbuygroup`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsbuygroup` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `gname` varchar(255) NOT NULL DEFAULT '',
  `gmoney` int(10) unsigned NOT NULL DEFAULT '0',
  `gfen` int(10) unsigned NOT NULL DEFAULT '0',
  `gdate` int(10) unsigned NOT NULL DEFAULT '0',
  `ggroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gzgroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `buygroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gsay` text NOT NULL,
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewscard`
--

CREATE TABLE IF NOT EXISTS `swtx_enewscard` (
  `cardid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `card_no` char(30) NOT NULL DEFAULT '',
  `password` char(20) NOT NULL DEFAULT '',
  `money` int(10) unsigned NOT NULL DEFAULT '0',
  `cardfen` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` date NOT NULL DEFAULT '0000-00-00',
  `cardtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `carddate` int(10) unsigned NOT NULL DEFAULT '0',
  `cdgroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cdzgroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsclass`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `bclassid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classname` varchar(50) NOT NULL DEFAULT '',
  `sonclass` text NOT NULL,
  `is_zt` tinyint(1) NOT NULL DEFAULT '0',
  `lencord` smallint(6) NOT NULL DEFAULT '0',
  `link_num` tinyint(4) NOT NULL DEFAULT '0',
  `newstempid` smallint(6) NOT NULL DEFAULT '0',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `listtempid` smallint(6) NOT NULL DEFAULT '0',
  `featherclass` text NOT NULL,
  `islast` tinyint(1) NOT NULL DEFAULT '0',
  `classpath` text NOT NULL,
  `classtype` varchar(10) NOT NULL DEFAULT '',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` tinyint(1) NOT NULL DEFAULT '0',
  `filetype` varchar(10) NOT NULL DEFAULT '',
  `openpl` tinyint(1) NOT NULL DEFAULT '0',
  `openadd` tinyint(1) NOT NULL DEFAULT '0',
  `newline` int(11) NOT NULL DEFAULT '0',
  `hotline` int(11) NOT NULL DEFAULT '0',
  `goodline` int(11) NOT NULL DEFAULT '0',
  `classurl` varchar(200) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `filename_qz` varchar(20) NOT NULL DEFAULT '',
  `hotplline` tinyint(4) NOT NULL DEFAULT '0',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `firstline` tinyint(4) NOT NULL DEFAULT '0',
  `bname` varchar(50) NOT NULL DEFAULT '',
  `islist` tinyint(1) NOT NULL DEFAULT '0',
  `searchtempid` smallint(6) NOT NULL DEFAULT '0',
  `tid` smallint(6) NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `maxnum` int(11) NOT NULL DEFAULT '0',
  `checkpl` tinyint(1) NOT NULL DEFAULT '0',
  `down_num` tinyint(4) NOT NULL DEFAULT '0',
  `online_num` tinyint(4) NOT NULL DEFAULT '0',
  `listorder` varchar(50) NOT NULL DEFAULT '',
  `reorder` varchar(50) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `classimg` varchar(255) NOT NULL DEFAULT '',
  `jstempid` smallint(6) NOT NULL DEFAULT '0',
  `addinfofen` int(11) NOT NULL DEFAULT '0',
  `listdt` tinyint(1) NOT NULL DEFAULT '0',
  `showclass` tinyint(1) NOT NULL DEFAULT '0',
  `showdt` tinyint(1) NOT NULL DEFAULT '0',
  `checkqadd` tinyint(1) NOT NULL DEFAULT '0',
  `qaddlist` tinyint(1) NOT NULL DEFAULT '0',
  `qaddgroupid` text NOT NULL,
  `qaddshowkey` tinyint(1) NOT NULL DEFAULT '0',
  `adminqinfo` tinyint(1) NOT NULL DEFAULT '0',
  `doctime` smallint(6) NOT NULL DEFAULT '0',
  `classpagekey` varchar(255) NOT NULL DEFAULT '',
  `dtlisttempid` smallint(6) NOT NULL DEFAULT '0',
  `classtempid` smallint(6) NOT NULL DEFAULT '0',
  `nreclass` tinyint(1) NOT NULL DEFAULT '0',
  `nreinfo` tinyint(1) NOT NULL DEFAULT '0',
  `nrejs` tinyint(1) NOT NULL DEFAULT '0',
  `nottobq` tinyint(1) NOT NULL DEFAULT '0',
  `ipath` varchar(255) NOT NULL DEFAULT '',
  `addreinfo` tinyint(1) NOT NULL DEFAULT '0',
  `haddlist` tinyint(4) NOT NULL DEFAULT '0',
  `sametitle` tinyint(1) NOT NULL DEFAULT '0',
  `definfovoteid` smallint(6) NOT NULL DEFAULT '0',
  `wburl` varchar(255) NOT NULL DEFAULT '',
  `qeditchecked` tinyint(1) NOT NULL DEFAULT '0',
  `wapstyleid` smallint(6) NOT NULL DEFAULT '0',
  `repreinfo` tinyint(1) NOT NULL DEFAULT '0',
  `pltempid` smallint(6) NOT NULL DEFAULT '0',
  `cgroupid` text NOT NULL,
  `yhid` smallint(6) NOT NULL DEFAULT '0',
  `wfid` smallint(6) NOT NULL DEFAULT '0',
  `cgtoinfo` tinyint(1) NOT NULL DEFAULT '0',
  `bdinfoid` varchar(25) NOT NULL DEFAULT '',
  `repagenum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keycid` smallint(6) NOT NULL DEFAULT '0',
  `allinfos` int(10) unsigned NOT NULL DEFAULT '0',
  `infos` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `oneinfo` tinyint(1) NOT NULL DEFAULT '0',
  `addsql` varchar(255) NOT NULL DEFAULT '',
  `wapislist` tinyint(1) NOT NULL DEFAULT '0',
  `fclast` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`classid`),
  KEY `bclassid` (`bclassid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `swtx_enewsclass`
--

INSERT INTO `swtx_enewsclass` (`classid`, `bclassid`, `classname`, `sonclass`, `is_zt`, `lencord`, `link_num`, `newstempid`, `onclick`, `listtempid`, `featherclass`, `islast`, `classpath`, `classtype`, `newspath`, `filename`, `filetype`, `openpl`, `openadd`, `newline`, `hotline`, `goodline`, `classurl`, `groupid`, `myorder`, `filename_qz`, `hotplline`, `modid`, `checked`, `firstline`, `bname`, `islist`, `searchtempid`, `tid`, `tbname`, `maxnum`, `checkpl`, `down_num`, `online_num`, `listorder`, `reorder`, `intro`, `classimg`, `jstempid`, `addinfofen`, `listdt`, `showclass`, `showdt`, `checkqadd`, `qaddlist`, `qaddgroupid`, `qaddshowkey`, `adminqinfo`, `doctime`, `classpagekey`, `dtlisttempid`, `classtempid`, `nreclass`, `nreinfo`, `nrejs`, `nottobq`, `ipath`, `addreinfo`, `haddlist`, `sametitle`, `definfovoteid`, `wburl`, `qeditchecked`, `wapstyleid`, `repreinfo`, `pltempid`, `cgroupid`, `yhid`, `wfid`, `cgtoinfo`, `bdinfoid`, `repagenum`, `keycid`, `allinfos`, `infos`, `addtime`, `oneinfo`, `addsql`, `wapislist`, `fclast`) VALUES
(1, 0, '新闻中心', '|4|5|6|', 0, 25, 10, 0, 0, 0, '', 0, 'news', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '新闻中心', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 0, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, 0, 1600853710, 0, '', 0, 1600853710),
(2, 0, '成功案例', '', 0, 25, 10, 1, 0, 1, '', 1, 'anli', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '成功案例', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 1, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, 0, 1600853786, 0, '', 0, 1600853786),
(3, 0, '秒杀号码', '', 0, 25, 10, 1, 0, 1, '', 1, 'mshm', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '秒杀号码', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 1, 1, 1, 1, 1, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, 0, 1600853839, 0, '', 0, 1600853890),
(4, 1, '公司新闻', '', 0, 25, 10, 1, 0, 1, '|1|', 1, 'news/gsxw', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '公司新闻', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 1, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 9, 9, 1600853944, 0, '', 0, 1600853944),
(5, 1, '行业动态', '', 0, 25, 10, 1, 0, 1, '|1|', 1, 'news/hydt', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '行业动态', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 1, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, 0, 1600853958, 0, '', 0, 1600853958),
(6, 1, '常见问题', '', 0, 25, 10, 1, 0, 1, '|1|', 1, 'news/cjwt', '.html', '', 0, '.html', 0, 1, 10, 10, 10, '', 0, 0, '', 10, 1, 1, 10, '常见问题', 0, 0, 1, 'news', 0, 0, 2, 2, 'id DESC', 'newstime DESC', '', '', 1, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', 1, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, '', 0, 0, 0, 0, 1600853971, 0, '', 0, 1600853971);

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsclassadd`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsclassadd` (
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classtext` mediumtext NOT NULL,
  `ttids` text NOT NULL,
  `eclasspagetext` mediumtext NOT NULL,
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `swtx_enewsclassadd`
--

INSERT INTO `swtx_enewsclassadd` (`classid`, `classtext`, `ttids`, `eclasspagetext`) VALUES
(1, '', '', ''),
(2, '', '', ''),
(3, '', '', ''),
(4, '', '', ''),
(5, '', '', ''),
(6, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsclassf`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsclassf` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fhtml` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `fvalue` text NOT NULL,
  `fformsize` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsclassnavcache`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsclassnavcache` (
  `navtype` char(16) NOT NULL DEFAULT '',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `modid` smallint(5) unsigned NOT NULL DEFAULT '0',
  KEY `navtype` (`navtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `swtx_enewsclassnavcache`
--

INSERT INTO `swtx_enewsclassnavcache` (`navtype`, `userid`, `modid`) VALUES
('modclass', 0, 1),
('jsclass', 0, 0),
('listenews', 0, 0),
('listclass', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsclasstemp`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsclasstemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(30) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `swtx_enewsclasstemp`
--

INSERT INTO `swtx_enewsclasstemp` (`tempid`, `tempname`, `temptext`, `classid`) VALUES
(1, '通用一级栏目模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"channle\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"news_list\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n[listsonclass]\\''selfinfo\\'',5,38,0,0,7,0,0[/listsonclass]</td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>推荐资讯</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[phomenewspic]\\''selfinfo\\'',2,4,128,90,1,20,2[/phomenewspic]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\''selfinfo\\'',10,44,0,0,2,0[/ecmsinfo] \r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ol class=\\"rank\\">\r\n[ecmsinfo]\\''selfinfo\\'',10,40,0,1,10,0[/ecmsinfo] \r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 0),
(2, '分类信息一级栏目模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"channle\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"news_list\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n[listsonclass]\\''selfinfo\\'',5,38,0,0,7,0,0[/listsonclass]</td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>分类信息搜索</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><form action=\\"[!--news.url--]e/search/index.php\\" method=\\"post\\" name=\\"searchform\\" id=\\"searchform\\">\r\n<table width=\\"98%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"6\\">\r\n<input type=\\"hidden\\" name=\\"tbname\\" value=\\"info\\">\r\n<input type=\\"hidden\\" name=\\"tempid\\" value=\\"1\\">\r\n<tr>\r\n<td><input name=\\"keyboard\\" type=\\"text\\" class=\\"inputText\\" id=\\"keyboard\\" size=\\"18\\" />\r\n<select name=\\"show\\">\r\n<option value=\\"title,smalltext,myarea\\" selected=\\"selected\\">不限</option>\r\n<option value=\\"title\\">信息标题</option>\r\n<option value=\\"smalltext\\">信息内容</option>\r\n<option value=\\"myarea\\">所在地</option>\r\n</select></td>\r\n</tr>\r\n<tr>\r\n<td><select name=\\"classid\\">\r\n<option value=\\''9\\''>所有分类</option>\r\n<option value=\\''10\\''>|-房屋信息</option>\r\n<option value=\\''11\\'' >&nbsp;&nbsp;|-房屋求租</option>\r\n<option value=\\''12\\'' >&nbsp;&nbsp;|-房屋出租</option>\r\n<option value=\\''13\\'' >&nbsp;&nbsp;|-房屋求购</option>\r\n<option value=\\''14\\'' >&nbsp;&nbsp;|-房屋出售</option>\r\n<option value=\\''15\\'' >&nbsp;&nbsp;|-办公用房</option>\r\n<option value=\\''16\\'' >&nbsp;&nbsp;|-旺铺门面</option>\r\n<option value=\\''17\\''>|-跳蚤市场</option>\r\n<option value=\\''18\\'' >&nbsp;&nbsp;|-电脑配件</option>\r\n<option value=\\''19\\'' >&nbsp;&nbsp;|-电器数码</option>\r\n<option value=\\''20\\'' >&nbsp;&nbsp;|-通讯产品</option>\r\n<option value=\\''21\\'' >&nbsp;&nbsp;|-居家用品</option>\r\n<option value=\\''22\\''>|-同城生活</option>\r\n<option value=\\''23\\'' >&nbsp;&nbsp;|-本地新闻</option>\r\n<option value=\\''24\\'' >&nbsp;&nbsp;|-购物打折</option>\r\n<option value=\\''25\\'' >&nbsp;&nbsp;|-旅游活动</option>\r\n<option value=\\''26\\'' >&nbsp;&nbsp;|-便民告示</option>\r\n<option value=\\''27\\''>|-求职招聘</option>\r\n<option value=\\''28\\'' >&nbsp;&nbsp;|-工程技术</option>\r\n<option value=\\''29\\'' >&nbsp;&nbsp;|-财务会计</option>\r\n<option value=\\''30\\'' >&nbsp;&nbsp;|-餐饮行业</option>\r\n<option value=\\''31\\'' >&nbsp;&nbsp;|-经营管理</option>\r\n</select>\r\n<input name=\\"Submit2\\" type=\\"image\\" value=\\"搜索\\" src=\\"[!--news.url--]skin/default/images/search.gif\\" />　\r\n[<a href=\\"[!--news.url--]e/DoInfo/ChangeClass.php?mid=8\\" target=\\"_blank\\">发布信息</a>]</td>\r\n</tr>\r\n</table>\r\n</form></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>地区导航</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[!--temp.infoarea--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>分类导航</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[!--temp.infoclassnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ol class=\\"rank\\">\r\n[ecmsinfo]\\''selfinfo\\'',10,40,0,1,10,0[/ecmsinfo] \r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsclasstempclass`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsclasstempclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsclass_stats`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsclass_stats` (
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `pvall` int(10) unsigned NOT NULL DEFAULT '0',
  `pvyear` int(10) unsigned NOT NULL DEFAULT '0',
  `pvhalfyear` int(10) unsigned NOT NULL DEFAULT '0',
  `pvquarter` int(10) unsigned NOT NULL DEFAULT '0',
  `pvmonth` int(10) unsigned NOT NULL DEFAULT '0',
  `pvweek` int(10) unsigned NOT NULL DEFAULT '0',
  `pvday` int(10) unsigned NOT NULL DEFAULT '0',
  `pvyesterday` int(10) unsigned NOT NULL DEFAULT '0',
  `ipall` int(10) unsigned NOT NULL DEFAULT '0',
  `ipyear` int(10) unsigned NOT NULL DEFAULT '0',
  `iphalfyear` int(10) unsigned NOT NULL DEFAULT '0',
  `ipquarter` int(10) unsigned NOT NULL DEFAULT '0',
  `ipmonth` int(10) unsigned NOT NULL DEFAULT '0',
  `ipweek` int(10) unsigned NOT NULL DEFAULT '0',
  `ipday` int(10) unsigned NOT NULL DEFAULT '0',
  `ipyesterday` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `swtx_enewsclass_stats`
--

INSERT INTO `swtx_enewsclass_stats` (`classid`, `uptime`, `pvall`, `pvyear`, `pvhalfyear`, `pvquarter`, `pvmonth`, `pvweek`, `pvday`, `pvyesterday`, `ipall`, `ipyear`, `iphalfyear`, `ipquarter`, `ipmonth`, `ipweek`, `ipday`, `ipyesterday`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsclass_stats_ip`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsclass_stats_ip` (
  `ip` char(21) NOT NULL DEFAULT '',
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsclass_stats_set`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsclass_stats_set` (
  `openstats` tinyint(1) NOT NULL DEFAULT '0',
  `pvtime` int(10) unsigned NOT NULL DEFAULT '0',
  `statsdate` int(10) unsigned NOT NULL DEFAULT '0',
  `changedate` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `swtx_enewsclass_stats_set`
--

INSERT INTO `swtx_enewsclass_stats_set` (`openstats`, `pvtime`, `statsdate`, `changedate`) VALUES
(0, 3600, 0, 20170227);

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsdiggips`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsdiggips` (
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `ips` mediumtext NOT NULL,
  KEY `classid` (`classid`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsdo`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsdo` (
  `doid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `doname` varchar(60) NOT NULL DEFAULT '',
  `dotime` smallint(6) NOT NULL DEFAULT '0',
  `isopen` tinyint(1) NOT NULL DEFAULT '0',
  `doing` tinyint(4) NOT NULL DEFAULT '0',
  `classid` text NOT NULL,
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`doid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `swtx_enewsdo`
--

INSERT INTO `swtx_enewsdo` (`doid`, `doname`, `dotime`, `isopen`, `doing`, `classid`, `lasttime`) VALUES
(1, '自动刷新首页', 12, 0, 0, ',', 1273215883);

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsdolog`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsdolog` (
  `logid` bigint(20) NOT NULL AUTO_INCREMENT,
  `logip` varchar(20) NOT NULL DEFAULT '',
  `logtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `username` varchar(30) NOT NULL DEFAULT '',
  `enews` varchar(30) NOT NULL DEFAULT '',
  `doing` varchar(255) NOT NULL DEFAULT '',
  `pubid` bigint(16) unsigned NOT NULL DEFAULT '0',
  `ipport` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`logid`),
  KEY `pubid` (`pubid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `swtx_enewsdolog`
--

INSERT INTO `swtx_enewsdolog` (`logid`, `logip`, `logtime`, `username`, `enews`, `doing`, `pubid`, `ipport`) VALUES
(1, '127.0.0.1', '2020-09-23 17:31:09', 'admin', 'login', '---', 0, '60400'),
(2, '127.0.0.1', '2020-09-23 17:31:20', 'admin', 'DelTable', 'tid=8<br>tbname=info', 0, '60423'),
(3, '127.0.0.1', '2020-09-23 17:31:26', 'admin', 'DelTable', 'tid=7<br>tbname=article', 0, '60423'),
(4, '127.0.0.1', '2020-09-23 17:31:30', 'admin', 'DelTable', 'tid=6<br>tbname=shop', 0, '60423'),
(5, '127.0.0.1', '2020-09-23 17:31:34', 'admin', 'DelTable', 'tid=5<br>tbname=movie', 0, '60423'),
(6, '127.0.0.1', '2020-09-23 17:31:38', 'admin', 'DelTable', 'tid=4<br>tbname=flash', 0, '60423'),
(7, '127.0.0.1', '2020-09-23 17:31:42', 'admin', 'DelTable', 'tid=3<br>tbname=photo', 0, '60423'),
(8, '127.0.0.1', '2020-09-23 17:31:47', 'admin', 'DelTable', 'tid=2<br>tbname=download', 0, '60423'),
(9, '127.0.0.1', '2020-09-23 17:31:55', 'admin', 'DelListtemp', 'tempid=8<br>tempname=分类信息默认列表模板&amp;gid=1', 0, '60423'),
(10, '127.0.0.1', '2020-09-23 17:31:59', 'admin', 'DelListtemp', 'tempid=7<br>tempname=默认文章列表模板&amp;gid=1', 0, '60423'),
(11, '127.0.0.1', '2020-09-23 17:32:02', 'admin', 'DelListtemp', 'tempid=6<br>tempname=默认商城列表模板&amp;gid=1', 0, '60423'),
(12, '127.0.0.1', '2020-09-23 17:32:05', 'admin', 'DelListtemp', 'tempid=5<br>tempname=默认电影列表模板&amp;gid=1', 0, '60423'),
(13, '127.0.0.1', '2020-09-23 17:32:08', 'admin', 'DelListtemp', 'tempid=4<br>tempname=默认FLASH列表模板&amp;gid=1', 0, '60423'),
(14, '127.0.0.1', '2020-09-23 17:32:13', 'admin', 'DelNewstemp', 'tempid=9<br>tempname=默认分类信息内容模板&amp;gid=1', 0, '60423'),
(15, '127.0.0.1', '2020-09-23 17:32:16', 'admin', 'DelNewstemp', 'tempid=8<br>tempname=默认文章内容模板&amp;gid=1', 0, '60423'),
(16, '127.0.0.1', '2020-09-23 17:32:19', 'admin', 'DelNewstemp', 'tempid=7<br>tempname=默认商城内容模板&amp;gid=1', 0, '60423'),
(17, '127.0.0.1', '2020-09-23 17:32:23', 'admin', 'DelNewstemp', 'tempid=6<br>tempname=默认电影内容模板&amp;gid=1', 0, '60423'),
(18, '127.0.0.1', '2020-09-23 17:32:26', 'admin', 'DelNewstemp', 'tempid=5<br>tempname=默认FLASH内容模板&amp;gid=1', 0, '60423'),
(19, '127.0.0.1', '2020-09-23 17:32:30', 'admin', 'DelNewstemp', 'tempid=4<br>tempname=默认图片内容模板(图片集)&amp;gid=1', 0, '60423'),
(20, '127.0.0.1', '2020-09-23 17:33:42', 'admin', 'SetEnews', '---', 0, '60907'),
(21, '127.0.0.1', '2020-09-23 17:34:03', 'admin', 'SetEnews', '---', 0, '60915'),
(22, '127.0.0.1', '2020-09-23 17:34:23', 'admin', 'SetEnews', '---', 0, '60924'),
(23, '127.0.0.1', '2020-09-23 17:35:10', 'admin', 'AddClass', 'classid=1<br>classname=新闻中心', 0, '60962'),
(24, '127.0.0.1', '2020-09-23 17:36:26', 'admin', 'AddClass', 'classid=2<br>classname=成功案例', 0, '61001'),
(25, '127.0.0.1', '2020-09-23 17:37:19', 'admin', 'AddClass', 'classid=3<br>classname=秒杀号码', 0, '61050'),
(26, '127.0.0.1', '2020-09-23 17:38:10', 'admin', 'EditClass', 'classid=3<br>classname=秒杀号码', 0, '61078'),
(27, '127.0.0.1', '2020-09-23 17:39:04', 'admin', 'AddClass', 'classid=4<br>classname=公司新闻', 0, '61101'),
(28, '127.0.0.1', '2020-09-23 17:39:18', 'admin', 'AddClass', 'classid=5<br>classname=行业动态', 0, '61101'),
(29, '127.0.0.1', '2020-09-23 17:39:31', 'admin', 'AddClass', 'classid=6<br>classname=常见问题', 0, '61121'),
(30, '127.0.0.1', '2020-09-23 17:41:46', 'admin', 'SetMoreClass', '---', 0, '61138'),
(31, '127.0.0.1', '2020-09-23 17:42:56', 'admin', 'AddNews', 'classid=4<br>id=1<br>title=舜王科技陪您欢度中国传统情人节七夕！', 1000010000000001, '61182'),
(32, '127.0.0.1', '2020-09-23 17:43:29', 'admin', 'AddNews', 'classid=4<br>id=2<br>title=舜王科技组织对新人进行技能提升培训', 1000010000000002, '61208'),
(33, '127.0.0.1', '2020-09-23 17:44:07', 'admin', 'AddNews', 'classid=4<br>id=3<br>title=成都衡阳商会莅临舜王科技指导交流工作', 1000010000000003, '61224'),
(34, '127.0.0.1', '2020-09-23 17:44:44', 'admin', 'AddNews', 'classid=4<br>id=4<br>title=舜王科技应邀访问四川车元互联汽配股份有限公司', 1000010000000004, '61253'),
(35, '127.0.0.1', '2020-09-23 17:45:09', 'admin', 'AddNews', 'classid=4<br>id=5<br>title=舜王科技应邀访问四川发现律师事务所', 1000010000000005, '61266'),
(36, '127.0.0.1', '2020-09-23 17:47:12', 'admin', 'AddNews', 'classid=4<br>id=6<br>title=舜王科技圆满承办第六届在蓉徐州籍老乡会', 1000010000000006, '61351'),
(37, '127.0.0.1', '2020-09-23 17:47:29', 'admin', 'AddNews', 'classid=4<br>id=7<br>title=公司参加成都无锡商会一届九次会长办公会议', 1000010000000007, '61364'),
(38, '127.0.0.1', '2020-09-23 17:47:52', 'admin', 'AddNews', 'classid=4<br>id=8<br>title=成都市工商联领导莅临成都无锡商会考察指导', 1000010000000008, '61386'),
(39, '127.0.0.1', '2020-09-23 17:48:09', 'admin', 'AddNews', 'classid=4<br>id=9<br>title=舜王科技向成都盐城商会新春团拜会捐资助款！', 1000010000000009, '61401'),
(40, '127.0.0.1', '2020-09-23 17:56:01', 'admin', 'EditPublicTemp', 'gid=1', 0, '62463'),
(41, '127.0.0.1', '2020-09-23 17:58:12', 'admin', 'EditPublicTemp', 'gid=1', 0, '54895'),
(42, '127.0.0.1', '2020-09-23 18:06:16', 'admin', 'EditPublicTemp', 'gid=1', 0, '51536');

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsdownerror`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsdownerror` (
  `errorid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `errortext` varchar(255) NOT NULL DEFAULT '',
  `errortime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `errorip` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`errorid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsdownrecord`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsdownrecord` (
  `id` int(11) NOT NULL DEFAULT '0',
  `pathid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `cardfen` int(11) NOT NULL DEFAULT '0',
  `truetime` int(11) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `online` tinyint(1) NOT NULL DEFAULT '0',
  KEY `userid` (`userid`),
  KEY `truetime` (`truetime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsdownurlqz`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsdownurlqz` (
  `urlid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `urlname` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `downtype` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`urlid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewserrorclass`
--

CREATE TABLE IF NOT EXISTS `swtx_enewserrorclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsf`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsf` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fhtml` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `isadd` tinyint(1) NOT NULL DEFAULT '0',
  `isshow` tinyint(1) NOT NULL DEFAULT '0',
  `iscj` tinyint(1) NOT NULL DEFAULT '0',
  `cjhtml` mediumtext NOT NULL,
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `dotemp` tinyint(1) NOT NULL DEFAULT '0',
  `tid` smallint(6) NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `savetxt` tinyint(1) NOT NULL DEFAULT '0',
  `fvalue` text NOT NULL,
  `iskey` tinyint(1) NOT NULL DEFAULT '0',
  `tobr` tinyint(1) NOT NULL DEFAULT '0',
  `dohtml` tinyint(1) NOT NULL DEFAULT '0',
  `qfhtml` mediumtext NOT NULL,
  `isonly` tinyint(1) NOT NULL DEFAULT '0',
  `linkfieldval` varchar(30) NOT NULL DEFAULT '',
  `samedata` tinyint(1) NOT NULL DEFAULT '0',
  `fformsize` varchar(12) NOT NULL DEFAULT '',
  `tbdataf` tinyint(1) NOT NULL DEFAULT '0',
  `ispage` tinyint(1) NOT NULL DEFAULT '0',
  `adddofun` varchar(255) NOT NULL DEFAULT '',
  `editdofun` varchar(255) NOT NULL DEFAULT '',
  `qadddofun` varchar(255) NOT NULL DEFAULT '',
  `qeditdofun` varchar(255) NOT NULL DEFAULT '',
  `linkfieldtb` varchar(60) NOT NULL DEFAULT '',
  `linkfieldshow` varchar(30) NOT NULL DEFAULT '',
  `editorys` tinyint(1) NOT NULL DEFAULT '0',
  `issmalltext` tinyint(1) NOT NULL DEFAULT '0',
  `fmvnum` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=107 ;

--
-- Dumping data for table `swtx_enewsf`
--

INSERT INTO `swtx_enewsf` (`fid`, `f`, `fname`, `fform`, `fhtml`, `fzs`, `isadd`, `isshow`, `iscj`, `cjhtml`, `myorder`, `ftype`, `flen`, `dotemp`, `tid`, `tbname`, `savetxt`, `fvalue`, `iskey`, `tobr`, `dohtml`, `qfhtml`, `isonly`, `linkfieldval`, `samedata`, `fformsize`, `tbdataf`, `ispage`, `adddofun`, `editdofun`, `qadddofun`, `qeditdofun`, `linkfieldtb`, `linkfieldshow`, `editorys`, `issmalltext`, `fmvnum`) VALUES
(1, 'title', '标题', 'text', '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" bgcolor=\\"#DBEAF5\\">\r\n<tr> \r\n  <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">\r\n	<?=$tts?\\"<select name=\\''ttid\\''><option value=\\''0\\''>标题分类</option>$tts</select>\\":\\"\\"?>\r\n	<input type=text name=title value=\\"<?=ehtmlspecialchars(stripSlashes($r[title]))?>\\" size=\\"60\\"> \r\n	<input type=\\"button\\" name=\\"button\\" value=\\"图文\\" onclick=\\"document.add.title.value=document.add.title.value+\\''(图文)\\'';\\"> \r\n  </td>\r\n</tr>\r\n<tr> \r\n  <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">属性: \r\n	<input name=\\"titlefont[b]\\" type=\\"checkbox\\" value=\\"b\\"<?=$titlefontb?>>粗体\r\n	<input name=\\"titlefont[i]\\" type=\\"checkbox\\" value=\\"i\\"<?=$titlefonti?>>斜体\r\n	<input name=\\"titlefont[s]\\" type=\\"checkbox\\" value=\\"s\\"<?=$titlefonts?>>删除线\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;颜色: <input name=\\"titlecolor\\" type=\\"text\\" value=\\"<?=stripSlashes($r[titlecolor])?>\\" size=\\"10\\" class=\\"color\\">\r\n  </td>\r\n</tr>\r\n</table>', '标题', 0, 1, 1, '  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--title--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_title]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_title]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_title]" type="text" id="add[z_title]" value="<?=stripSlashes($r[z_title])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>', 0, 'CHAR', '100', 1, 1, 'news', 0, '', 0, 0, 0, '<input name=\\"title\\" type=\\"text\\" size=\\"42\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''title\\'',stripSlashes($r[title]))?>\\">', 0, '', 0, '60', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(2, 'special.field', '特殊属性', '', '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" bgcolor=\\"#DBEAF5\\">\r\n  <tr>\r\n    <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">信息属性: \r\n      <input name=\\"checked\\" type=\\"checkbox\\" value=\\"1\\"<?=$r[checked]?\\'' checked\\'':\\''\\''?>>\r\n      审核 &nbsp;&nbsp; 推荐 \r\n      <select name=\\"isgood\\" id=\\"isgood\\">\r\n        <option value=\\"0\\">不推荐</option>\r\n	<?=$ftnr[\\''igname\\'']?>\r\n      </select>\r\n      &nbsp;&nbsp; 头条 \r\n      <select name=\\"firsttitle\\" id=\\"firsttitle\\">\r\n        <option value=\\"0\\">非头条</option>\r\n	<?=$ftnr[\\''ftname\\'']?>\r\n      </select></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">关键字&nbsp;&nbsp;&nbsp;: \r\n      <input name=\\"keyboard\\" type=\\"text\\" size=\\"52\\" value=\\"<?=stripSlashes($r[keyboard])?>\\">\r\n      <font color=\\"#666666\\">(多个请用&quot;,&quot;隔开)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\"25\\" bgcolor=\\"#FFFFFF\\">外部链接: \r\n      <input name=\\"titleurl\\" type=\\"text\\" value=\\"<?=stripSlashes($r[titleurl])?>\\" size=\\"52\\">\r\n      <font color=\\"#666666\\">(填写后信息连接地址将为此链接)</font></td>\r\n  </tr>\r\n</table>', '特殊属性', 0, 1, 0, '', 1, '', '', 0, 1, 'news', 0, '', 0, 0, 0, '<input name=\\"keyboard\\" type=\\"text\\" size=42 value=\\"<?=stripSlashes($r[keyboard])?>\\">\r\n<font color=\\"#666666\\">(多个请用&quot;,&quot;隔开)</font>', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(3, 'titlepic', '标题图片', 'img', '<input name=\\"titlepic\\" type=\\"text\\" id=\\"titlepic\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[titlepic]))?>\\" size=\\"45\\">\r\n<a onclick=\\"window.open(\\''ecmseditor/FileMain.php?type=1&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=titlepic<?=$ecms_hashur[ehref]?>\\'',\\''\\'',\\''width=700,height=550,scrollbars=yes\\'');\\" title=\\"选择已上传的图片\\"><img src=\\"../data/images/changeimg.gif\\" border=\\"0\\" align=\\"absbottom\\"></a>', '标题图片', 0, 1, 1, '  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--titlepic--]\\" size=\\"20\\">\r\n      )</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\\"add[qz_titlepic]\\" type=\\"text\\" id=\\"add[qz_titlepic]\\" value=\\"<?=stripSlashes($r[qz_titlepic])?>\\"> \r\n        <input name=\\"add[save_titlepic]\\" type=\\"checkbox\\" id=\\"add[save_titlepic]\\" value=\\" checked\\"<?=$r[save_titlepic]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\\"add[zz_titlepic]\\" cols=\\"60\\" rows=\\"10\\" id=\\"add[zz_titlepic]\\"><?=ehtmlspecialchars(stripSlashes($r[zz_titlepic]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\\"add[z_titlepic]\\" type=\\"text\\" id=\\"titlepic5\\" value=\\"<?=stripSlashes($r[z_titlepic])?>\\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n', 2, 'CHAR', '120', 1, 1, 'news', 0, '', 0, 0, 0, '<input type=\\"file\\" name=\\"titlepicfile\\" size=\\"45\\">', 0, '', 0, '60', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(4, 'newstime', '发布时间', 'text', '<input name=\\"newstime\\" type=\\"text\\" value=\\"<?=$r[newstime]?>\\" size=\\"28\\" class=\\"Wdate\\" onClick=\\"WdatePicker({skin:\\''default\\'',dateFmt:\\''yyyy-MM-dd HH:mm:ss\\''})\\"><input type=button name=button value=\\"设为当前时间\\" onclick=\\"document.add.newstime.value=\\''<?=$todaytime?>\\''\\">', '发布时间', 0, 1, 1, '  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--newstime--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_newstime]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_newstime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_newstime]" type="text" id="add[z_newstime]" value="<?=stripSlashes($r[z_newstime])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>', 1, 'INT', '11', 1, 1, 'news', 0, '', 1, 0, 0, '', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(5, 'ftitle', '副标题', 'text', '<input name=\\"ftitle\\" type=\\"text\\" size=60 id=\\"ftitle\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[ftitle]))?>\\">\r\n', '副标题', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--ftitle--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_ftitle]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_ftitle]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_ftitle]" type="text" id="add[z_ftitle]" value="<?=stripSlashes($r[z_ftitle])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 0, 'CHAR', '120', 1, 1, 'news', 0, '', 0, 0, 1, '<input name=\\"ftitle\\" type=\\"text\\" size=42 id=\\"ftitle\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''ftitle\\'',stripSlashes($r[ftitle]))?>\\">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, ''),
(6, 'smalltext', '内容简介', 'textarea', '<textarea name=\\"smalltext\\" cols=\\"80\\" rows=\\"10\\" id=\\"smalltext\\"><?=$ecmsfirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[smalltext]))?></textarea>\r\n', '内容简介', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--smalltext--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_smalltext]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_smalltext]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_smalltext]" type="text" id="add[z_smalltext]" value="<?=stripSlashes($r[z_smalltext])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'CHAR', '255', 1, 1, 'news', 0, '', 0, 1, 1, '<textarea name=\\"smalltext\\" cols=\\"60\\" rows=\\"10\\" id=\\"smalltext\\"><?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''smalltext\\'',stripSlashes($r[smalltext]))?></textarea>\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 1, ''),
(7, 'writer', '作者', 'text', '<?php\r\n$writer_sql=$empire->query(\\"select writer from {$dbtbpre}enewswriter\\");\r\nwhile($w_r=$empire->fetch($writer_sql))\r\n{\r\n	$w_class.=\\"<option value=\\''\\".$w_r[writer].\\"\\''>\\".$w_r[writer].\\"</option>\\";\r\n}\r\n?>\r\n<input type=text name=writer value=\\"<?=$ecmsfirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[writer]))?>\\" size=\\"\\"> \r\n        <select name=\\"w_id\\" id=\\"select7\\" onchange=\\"document.add.writer.value=document.add.w_id.value\\">\r\n          <option>选择作者</option>\r\n		  <?=$w_class?>\r\n        </select>\r\n<input type=\\"button\\" name=\\"wbutton\\" value=\\"增加作者\\" onclick=\\"window.open(\\''NewsSys/writer.php?<?=$ecms_hashur[ehref]?>&addwritername=\\''+document.add.writer.value);\\">\r\n', '作者', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--writer--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_writer]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_writer]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_writer]\\" type=\\"text\\" id=\\"add[z_writer]\\" value=\\"<?=stripSlashes($r[z_writer])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'CHAR', '30', 1, 1, 'news', 0, '', 0, 0, 1, '<input name=\\"writer\\" type=\\"text\\" id=\\"writer\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''writer\\'',stripSlashes($r[writer]))?>\\" size=\\"\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0, ''),
(8, 'befrom', '信息来源', 'text', '<?php\r\n$befrom_sql=$empire->query(\\"select sitename from {$dbtbpre}enewsbefrom\\");\r\nwhile($b_r=$empire->fetch($befrom_sql))\r\n{\r\n	$b_class.=\\"<option value=\\''\\".$b_r[sitename].\\"\\''>\\".$b_r[sitename].\\"</option>\\";\r\n}\r\n?>\r\n<input type=\\"text\\" name=\\"befrom\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($r[befrom]))?>\\" size=\\"\\"> \r\n        <select name=\\"befrom_id\\" id=\\"befromid\\" onchange=\\"document.add.befrom.value=document.add.befrom_id.value\\">\r\n          <option>选择信息来源</option>\r\n          <?=$b_class?>\r\n        </select>\r\n<input type=\\"button\\" name=\\"wbutton\\" value=\\"增加来源\\" onclick=\\"window.open(\\''NewsSys/BeFrom.php?<?=$ecms_hashur[ehref]?>&addsitename=\\''+document.add.befrom.value);\\">\r\n', '信息来源', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--befrom--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_befrom]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_befrom]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_befrom]\\" type=\\"text\\" id=\\"add[z_befrom]\\" value=\\"<?=stripSlashes($r[z_befrom])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'CHAR', '60', 1, 1, 'news', 0, '', 0, 0, 1, '<input name=\\"befrom\\" type=\\"text\\" id=\\"befrom\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''befrom\\'',stripSlashes($r[befrom]))?>\\" size=\\"\\">\r\n', 0, '', 0, '', 1, 0, '', '', '', '', '', '', 0, 0, ''),
(9, 'newstext', '新闻正文', 'editor', '<?=ECMS_ShowEditorVar(\\"newstext\\",$ecmsfirstpost==1?\\"\\":stripSlashes($r[newstext]),\\"Default\\",\\"\\",\\"300\\",\\"100%\\")?>\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"3\\" cellspacing=\\"1\\" bgcolor=\\"#DBEAF5\\">\r\n          <tr> \r\n            <td bgcolor=\\"#FFFFFF\\"> <input name=\\"dokey\\" type=\\"checkbox\\" value=\\"1\\"<?=$r[dokey]==1?\\'' checked\\'':\\''\\''?>>\r\n              关键字替换&nbsp;&nbsp; <input name=\\"copyimg\\" type=\\"checkbox\\" id=\\"copyimg\\" value=\\"1\\">\r\n      远程保存图片(\r\n      <input name=\\"mark\\" type=\\"checkbox\\" id=\\"mark\\" value=\\"1\\">\r\n      <a href=\\"SetEnews.php<?=$ecms_hashur[whehref]?>\\" target=\\"_blank\\">加水印</a>)&nbsp;&nbsp; \r\n      <input name=\\"copyflash\\" type=\\"checkbox\\" id=\\"copyflash\\" value=\\"1\\">\r\n      远程保存FLASH(地址前缀： \r\n      <input name=\\"qz_url\\" type=\\"text\\" id=\\"qz_url\\" size=\\"\\">\r\n              )</td>\r\n          </tr>\r\n          <tr>\r\n            \r\n    <td bgcolor=\\"#FFFFFF\\"><input name=\\"repimgnexturl\\" type=\\"checkbox\\" id=\\"repimgnexturl\\" value=\\"1\\"> 图片链接转为下一页&nbsp;&nbsp; <input name=\\"autopage\\" type=\\"checkbox\\" id=\\"autopage\\" value=\\"1\\">自动分页\r\n      ,每 \r\n      <input name=\\"autosize\\" type=\\"text\\" id=\\"autosize\\" value=\\"5000\\" size=\\"5\\">\r\n      个字节为一页&nbsp;&nbsp; 取第 \r\n      <input name=\\"getfirsttitlepic\\" type=\\"text\\" id=\\"getfirsttitlepic\\" value=\\"\\" size=\\"1\\">\r\n      张上传图为标题图片( \r\n      <input name=\\"getfirsttitlespic\\" type=\\"checkbox\\" id=\\"getfirsttitlespic\\" value=\\"1\\">\r\n      缩略图: 宽 \r\n      <input name=\\"getfirsttitlespicw\\" type=\\"text\\" id=\\"getfirsttitlespicw\\" size=\\"3\\" value=\\"<?=$public_r[spicwidth]?>\\">\r\n      *高\r\n      <input name=\\"getfirsttitlespich\\" type=\\"text\\" id=\\"getfirsttitlespich\\" size=\\"3\\" value=\\"<?=$public_r[spicheight]?>\\">\r\n      )</td>\r\n          </tr>\r\n        </table>\r\n', '新闻正文', 1, 1, 1, '\r\n  <tr bgcolor=\\"#FFFFFF\\"> \r\n    <td height=\\"22\\" valign=\\"top\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\"textfield\\" type=\\"text\\" id=\\"textfield\\" value=\\"[!--newstext--]\\" size=\\"20\\">)</td>\r\n    <td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td><textarea name=\\"add[zz_newstext]\\" cols=\\"60\\" rows=\\"10\\" id=\\"textarea\\"><?=ehtmlspecialchars(stripSlashes($r[zz_newstext]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\"add[z_newstext]\\" type=\\"text\\" id=\\"add[z_newstext]\\" value=\\"<?=stripSlashes($r[z_newstext])?>\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 2, 'MEDIUMTEXT', '', 1, 1, 'news', 0, '', 0, 1, 1, '<?=ECMS_ShowEditorVar(\\"newstext\\",$ecmsfirstpost==1?\\"\\":DoReqValue($mid,\\''newstext\\'',stripSlashes($r[newstext])),\\"Default\\",\\"\\",\\"300\\",\\"100%\\")?>\r\n', 0, '', 0, '', 1, 1, '', '', '', '', '', '', 0, 0, ''),
(10, 'diggtop', '顶', 'text', '\r\n<input name="diggtop" type="text" id="diggtop" value="<?=$ecmsfirstpost==1?"":ehtmlspecialchars(stripSlashes($r[diggtop]))?>" size="">\r\n', '', 1, 1, 1, '\r\n  <tr bgcolor="#FFFFFF"> \r\n    <td height="22" valign="top"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name="textfield" type="text" id="textfield" value="[!--diggtop--]" size="20">)</td>\r\n    <td><table width="100%" border="0" cellspacing="1" cellpadding="3">\r\n        <tr> \r\n          <td><textarea name="add[zz_diggtop]" cols="60" rows="10" id="textarea"><?=ehtmlspecialchars(stripSlashes($r[zz_diggtop]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name="add[z_diggtop]" type="text" id="add[z_diggtop]" value="<?=stripSlashes($r[z_diggtop])?>">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n', 3, 'INT', '', 1, 1, 'news', 0, '', 0, 0, 1, '\r\n<input name="diggtop" type="text" id="diggtop" value="<?=$ecmsfirstpost==1?"":DoReqValue($mid,''diggtop'',stripSlashes($r[diggtop]))?>" size="">\r\n', 0, '', 0, '', 0, 0, '', '', '', '', '', '', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsfava`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsfava` (
  `favaid` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL DEFAULT '0',
  `favatime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `cid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`favaid`),
  KEY `userid` (`userid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsfavaclass`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsfavaclass` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(30) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsfeedback`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsfeedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `saytext` text NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `mycall` varchar(30) NOT NULL DEFAULT '',
  `homepage` varchar(160) NOT NULL DEFAULT '',
  `company` varchar(80) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `saytime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `job` varchar(36) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `filepath` varchar(20) NOT NULL DEFAULT '',
  `filename` text NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `haveread` tinyint(1) NOT NULL DEFAULT '0',
  `eipport` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `bid` (`bid`),
  KEY `haveread` (`haveread`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsfeedbackclass`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsfeedbackclass` (
  `bid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `bname` varchar(60) NOT NULL DEFAULT '',
  `btemp` mediumtext NOT NULL,
  `bzs` varchar(255) NOT NULL DEFAULT '',
  `enter` text NOT NULL,
  `mustenter` text NOT NULL,
  `filef` varchar(255) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `checkboxf` text NOT NULL,
  `usernames` text NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `swtx_enewsfeedbackclass`
--

INSERT INTO `swtx_enewsfeedbackclass` (`bid`, `bname`, `btemp`, `bzs`, `enter`, `mustenter`, `filef`, `groupid`, `checkboxf`, `usernames`) VALUES
(1, '默认反馈分类', '[!--cp.header--]\r\n<table width=100% align=center cellpadding=3 cellspacing=1 class=\\"tableborder\\">\r\n  <form name=\\''feedback\\'' method=\\''post\\'' enctype=\\''multipart/form-data\\'' action=\\''../../enews/index.php\\''>\r\n    <input name=\\''enews\\'' type=\\''hidden\\'' value=\\''AddFeedback\\''>\r\n    <tr>\r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">您的姓名:</div></td>\r\n      <td bgcolor=\\''ffffff\\''><input name=\\''name\\'' type=\\''text\\'' size=\\''42\\''>\r\n        (*)</td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">职务:</div></td>\r\n      <td bgcolor=\\''ffffff\\''><input name=\\''job\\'' type=\\''text\\'' size=\\''42\\''></td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">公司名称:</div></td>\r\n      <td bgcolor=\\''ffffff\\''><input name=\\''company\\'' type=\\''text\\'' size=\\''42\\''></td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">联系邮箱:</div></td>\r\n      <td bgcolor=\\''ffffff\\''><input name=\\''email\\'' type=\\''text\\'' size=\\''42\\''></td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">联系电话:</div></td>\r\n      <td bgcolor=\\''ffffff\\''><input name=\\''mycall\\'' type=\\''text\\'' size=\\''42\\''>\r\n        (*)</td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">网站:</div></td>\r\n      <td bgcolor=\\''ffffff\\''><input name=\\''homepage\\'' type=\\''text\\'' size=\\''42\\''></td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">联系地址:</div></td>\r\n      <td bgcolor=\\''ffffff\\''><input name=\\''address\\'' type=\\''text\\'' size=\\"42\\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">信息标题:</div></td>\r\n      <td bgcolor=\\''ffffff\\''><input name=\\''title\\'' type=\\''text\\'' size=\\"42\\"> (*)</td>\r\n    </tr>\r\n    <tr> \r\n      <td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''><div align=\\"right\\">信息内容(*):</div></td>\r\n      <td bgcolor=\\''ffffff\\''><textarea name=\\''saytext\\'' cols=\\''60\\'' rows=\\''12\\''></textarea> \r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td bgcolor=\\''ffffff\\''></td>\r\n      <td bgcolor=\\''ffffff\\''><input type=\\''submit\\'' name=\\''submit\\'' value=\\''提交\\''></td>\r\n    </tr>\r\n  </form>\r\n</table>\r\n[!--cp.footer--]', '', '您的姓名<!--field--->name<!--record-->职务<!--field--->job<!--record-->公司名称<!--field--->company<!--record-->联系邮箱<!--field--->email<!--record-->联系电话<!--field--->mycall<!--record-->网站<!--field--->homepage<!--record-->联系地址<!--field--->address<!--record-->信息标题<!--field--->title<!--record-->信息内容<!--field--->saytext<!--record-->', ',name,mycall,title,saytext,', ',', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsfeedbackf`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsfeedbackf` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `fformsize` varchar(12) NOT NULL DEFAULT '',
  `fvalue` text NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `swtx_enewsfeedbackf`
--

INSERT INTO `swtx_enewsfeedbackf` (`fid`, `f`, `fname`, `fform`, `fzs`, `myorder`, `ftype`, `flen`, `fformsize`, `fvalue`) VALUES
(1, 'title', '标题', 'text', '', 7, 'VARCHAR', '120', '', ''),
(2, 'saytext', '内容', 'textarea', '', 8, 'TEXT', '', '', ''),
(3, 'name', '姓名', 'text', '', 0, 'VARCHAR', '30', '', ''),
(4, 'email', '邮箱', 'text', '', 3, 'VARCHAR', '80', '', ''),
(5, 'mycall', '电话', 'text', '', 4, 'VARCHAR', '30', '', ''),
(6, 'homepage', '网站', 'text', '', 5, 'VARCHAR', '160', '', ''),
(7, 'company', '公司名称', 'text', '', 2, 'VARCHAR', '80', '', ''),
(8, 'address', '联系地址', 'text', '', 6, 'VARCHAR', '255', '', ''),
(9, 'job', '职务', 'text', '', 1, 'VARCHAR', '36', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsfile_1`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsfile_1` (
  `fileid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pubid` bigint(16) unsigned NOT NULL DEFAULT '0',
  `filename` char(60) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `path` char(20) NOT NULL DEFAULT '',
  `adduser` char(30) NOT NULL DEFAULT '',
  `filetime` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `no` char(60) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `onclick` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `cjid` int(10) unsigned NOT NULL DEFAULT '0',
  `fpath` tinyint(1) NOT NULL DEFAULT '0',
  `modtype` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fileid`),
  KEY `id` (`id`),
  KEY `type` (`type`),
  KEY `classid` (`classid`),
  KEY `pubid` (`pubid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsfile_member`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsfile_member` (
  `fileid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pubid` tinyint(1) NOT NULL DEFAULT '0',
  `filename` char(60) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `path` char(20) NOT NULL DEFAULT '',
  `adduser` char(30) NOT NULL DEFAULT '',
  `filetime` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` tinyint(1) NOT NULL DEFAULT '0',
  `no` char(60) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `onclick` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `cjid` int(10) unsigned NOT NULL DEFAULT '0',
  `fpath` tinyint(1) NOT NULL DEFAULT '0',
  `modtype` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fileid`),
  KEY `id` (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsfile_other`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsfile_other` (
  `fileid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pubid` tinyint(1) NOT NULL DEFAULT '0',
  `filename` char(60) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `path` char(20) NOT NULL DEFAULT '',
  `adduser` char(30) NOT NULL DEFAULT '',
  `filetime` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` tinyint(1) NOT NULL DEFAULT '0',
  `no` char(60) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `onclick` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `cjid` int(10) unsigned NOT NULL DEFAULT '0',
  `fpath` tinyint(1) NOT NULL DEFAULT '0',
  `modtype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fileid`),
  KEY `id` (`id`),
  KEY `type` (`type`),
  KEY `modtype` (`modtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsfile_public`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsfile_public` (
  `fileid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pubid` tinyint(1) NOT NULL DEFAULT '0',
  `filename` char(60) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `path` char(20) NOT NULL DEFAULT '',
  `adduser` char(30) NOT NULL DEFAULT '',
  `filetime` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` tinyint(1) NOT NULL DEFAULT '0',
  `no` char(60) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `onclick` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `cjid` int(10) unsigned NOT NULL DEFAULT '0',
  `fpath` tinyint(1) NOT NULL DEFAULT '0',
  `modtype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fileid`),
  KEY `id` (`id`),
  KEY `type` (`type`),
  KEY `modtype` (`modtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsgbook`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsgbook` (
  `lyid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `mycall` varchar(30) NOT NULL DEFAULT '',
  `lytime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lytext` text NOT NULL,
  `retext` text NOT NULL,
  `bid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `eipport` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`lyid`),
  KEY `bid` (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsgbookclass`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsgbookclass` (
  `bid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `bname` varchar(60) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `swtx_enewsgbookclass`
--

INSERT INTO `swtx_enewsgbookclass` (`bid`, `bname`, `checked`, `groupid`) VALUES
(1, '默认留言分类', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsgfenip`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsgfenip` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsgoodtype`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsgoodtype` (
  `tid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tname` varchar(60) NOT NULL DEFAULT '',
  `ttype` tinyint(1) NOT NULL DEFAULT '0',
  `levelid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `groupid` varchar(255) NOT NULL DEFAULT '',
  `showall` tinyint(1) NOT NULL DEFAULT '0',
  `showcid` text NOT NULL,
  `hiddencid` text NOT NULL,
  PRIMARY KEY (`tid`),
  KEY `ttype` (`ttype`),
  KEY `levelid` (`levelid`),
  KEY `myorder` (`myorder`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `swtx_enewsgoodtype`
--

INSERT INTO `swtx_enewsgoodtype` (`tid`, `tname`, `ttype`, `levelid`, `myorder`, `groupid`, `showall`, `showcid`, `hiddencid`) VALUES
(1, '一级头条', 1, 1, 0, '', 0, '', ''),
(2, '二级头条', 1, 2, 0, '', 0, '', ''),
(3, '三级头条', 1, 3, 0, '', 0, '', ''),
(4, '四级头条', 1, 4, 0, '', 0, '', ''),
(5, '五级头条', 1, 5, 0, '', 0, '', ''),
(6, '六级头条', 1, 6, 0, '', 0, '', ''),
(7, '七级头条', 1, 7, 0, '', 0, '', ''),
(8, '八级头条', 1, 8, 0, '', 0, '', ''),
(9, '九级头条', 1, 9, 0, '', 0, '', ''),
(10, '一级推荐', 0, 1, 0, '', 0, '', ''),
(11, '二级推荐', 0, 2, 0, '', 0, '', ''),
(12, '三级推荐', 0, 3, 0, '', 0, '', ''),
(13, '四级推荐', 0, 4, 0, '', 0, '', ''),
(14, '五级推荐', 0, 5, 0, '', 0, '', ''),
(15, '六级推荐', 0, 6, 0, '', 0, '', ''),
(16, '七级推荐', 0, 7, 0, '', 0, '', ''),
(17, '八级推荐', 0, 8, 0, '', 0, '', ''),
(18, '九级推荐', 0, 9, 0, '', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsgroup`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsgroup` (
  `groupid` smallint(6) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(50) NOT NULL DEFAULT '',
  `dopublic` tinyint(1) NOT NULL DEFAULT '0',
  `doclass` tinyint(1) NOT NULL DEFAULT '0',
  `dotemplate` tinyint(1) NOT NULL DEFAULT '0',
  `dopicnews` tinyint(1) NOT NULL DEFAULT '0',
  `dofile` tinyint(1) NOT NULL DEFAULT '0',
  `douser` tinyint(1) NOT NULL DEFAULT '0',
  `dolog` tinyint(1) NOT NULL DEFAULT '0',
  `domember` tinyint(1) NOT NULL DEFAULT '0',
  `dobefrom` tinyint(1) NOT NULL DEFAULT '0',
  `doword` tinyint(1) NOT NULL DEFAULT '0',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `doad` tinyint(1) NOT NULL DEFAULT '0',
  `dovote` tinyint(1) NOT NULL DEFAULT '0',
  `dogroup` tinyint(1) NOT NULL DEFAULT '0',
  `doall` tinyint(1) NOT NULL DEFAULT '0',
  `docj` tinyint(1) NOT NULL DEFAULT '0',
  `dobq` tinyint(1) NOT NULL DEFAULT '0',
  `domovenews` tinyint(1) NOT NULL DEFAULT '0',
  `dopostdata` tinyint(1) NOT NULL DEFAULT '0',
  `dochangedata` tinyint(1) NOT NULL DEFAULT '0',
  `dopl` tinyint(1) NOT NULL DEFAULT '0',
  `dof` tinyint(1) NOT NULL DEFAULT '0',
  `dom` tinyint(1) NOT NULL DEFAULT '0',
  `dodo` tinyint(1) NOT NULL DEFAULT '0',
  `dodbdata` tinyint(1) NOT NULL DEFAULT '0',
  `dorepnewstext` tinyint(1) NOT NULL DEFAULT '0',
  `dotempvar` tinyint(1) NOT NULL DEFAULT '0',
  `dostats` tinyint(1) NOT NULL DEFAULT '0',
  `dowriter` tinyint(1) NOT NULL DEFAULT '0',
  `dototaldata` tinyint(1) NOT NULL DEFAULT '0',
  `dosearchkey` tinyint(1) NOT NULL DEFAULT '0',
  `dozt` tinyint(1) NOT NULL DEFAULT '0',
  `docard` tinyint(1) NOT NULL DEFAULT '0',
  `dolink` tinyint(1) NOT NULL DEFAULT '0',
  `doselfinfo` tinyint(1) NOT NULL DEFAULT '0',
  `doexecsql` tinyint(1) NOT NULL DEFAULT '0',
  `dotable` tinyint(1) NOT NULL DEFAULT '0',
  `dodownurl` tinyint(1) NOT NULL DEFAULT '0',
  `dodeldownrecord` tinyint(1) NOT NULL DEFAULT '0',
  `doshoppayfs` tinyint(1) NOT NULL DEFAULT '0',
  `doshopps` tinyint(1) NOT NULL DEFAULT '0',
  `doshopdd` tinyint(1) NOT NULL DEFAULT '0',
  `dogbook` tinyint(1) NOT NULL DEFAULT '0',
  `dofeedback` tinyint(1) NOT NULL DEFAULT '0',
  `douserpage` tinyint(1) NOT NULL DEFAULT '0',
  `donotcj` tinyint(1) NOT NULL DEFAULT '0',
  `dodownerror` tinyint(1) NOT NULL DEFAULT '0',
  `dodelinfodata` tinyint(1) NOT NULL DEFAULT '0',
  `doaddinfo` tinyint(1) NOT NULL DEFAULT '0',
  `doeditinfo` tinyint(1) NOT NULL DEFAULT '0',
  `dodelinfo` tinyint(1) NOT NULL DEFAULT '0',
  `doadminstyle` tinyint(1) NOT NULL DEFAULT '0',
  `dorepdownpath` tinyint(1) NOT NULL DEFAULT '0',
  `douserjs` tinyint(1) NOT NULL DEFAULT '0',
  `douserlist` tinyint(1) NOT NULL DEFAULT '0',
  `domsg` tinyint(1) NOT NULL DEFAULT '0',
  `dosendemail` tinyint(1) NOT NULL DEFAULT '0',
  `dosetmclass` tinyint(1) NOT NULL DEFAULT '0',
  `doinfodoc` tinyint(1) NOT NULL DEFAULT '0',
  `dotempgroup` tinyint(1) NOT NULL DEFAULT '0',
  `dofeedbackf` tinyint(1) NOT NULL DEFAULT '0',
  `dotask` tinyint(1) NOT NULL DEFAULT '0',
  `domemberf` tinyint(1) NOT NULL DEFAULT '0',
  `dospacestyle` tinyint(1) NOT NULL DEFAULT '0',
  `dospacedata` tinyint(1) NOT NULL DEFAULT '0',
  `dovotemod` tinyint(1) NOT NULL DEFAULT '0',
  `doplayer` tinyint(1) NOT NULL DEFAULT '0',
  `dowap` tinyint(1) NOT NULL DEFAULT '0',
  `dopay` tinyint(1) NOT NULL DEFAULT '0',
  `dobuygroup` tinyint(1) NOT NULL DEFAULT '0',
  `dosearchall` tinyint(1) NOT NULL DEFAULT '0',
  `doinfotype` tinyint(1) NOT NULL DEFAULT '0',
  `doplf` tinyint(1) NOT NULL DEFAULT '0',
  `dopltable` tinyint(1) NOT NULL DEFAULT '0',
  `dochadminstyle` tinyint(1) NOT NULL DEFAULT '0',
  `dotags` tinyint(1) NOT NULL DEFAULT '0',
  `dosp` tinyint(1) NOT NULL DEFAULT '0',
  `doyh` tinyint(1) NOT NULL DEFAULT '0',
  `dofirewall` tinyint(1) NOT NULL DEFAULT '0',
  `dosetsafe` tinyint(1) NOT NULL DEFAULT '0',
  `douserclass` tinyint(1) NOT NULL DEFAULT '0',
  `doworkflow` tinyint(1) NOT NULL DEFAULT '0',
  `domenu` tinyint(1) NOT NULL DEFAULT '0',
  `dopubvar` tinyint(1) NOT NULL DEFAULT '0',
  `doclassf` tinyint(1) NOT NULL DEFAULT '0',
  `doztf` tinyint(1) NOT NULL DEFAULT '0',
  `dofiletable` tinyint(1) NOT NULL DEFAULT '0',
  `docheckinfo` tinyint(1) NOT NULL DEFAULT '0',
  `dogoodinfo` tinyint(1) NOT NULL DEFAULT '0',
  `dodocinfo` tinyint(1) NOT NULL DEFAULT '0',
  `domoveinfo` tinyint(1) NOT NULL DEFAULT '0',
  `dodttemp` tinyint(1) NOT NULL DEFAULT '0',
  `doloadcj` tinyint(1) NOT NULL DEFAULT '0',
  `domustcheck` tinyint(1) NOT NULL DEFAULT '0',
  `docheckedit` tinyint(1) NOT NULL DEFAULT '0',
  `domemberconnect` tinyint(1) NOT NULL DEFAULT '0',
  `doprecode` tinyint(1) NOT NULL DEFAULT '0',
  `domoreport` tinyint(1) NOT NULL DEFAULT '0',
  `docanhtml` tinyint(1) NOT NULL DEFAULT '0',
  `dodelclass` tinyint(1) NOT NULL DEFAULT '0',
  `doinfofile` tinyint(1) NOT NULL DEFAULT '0',
  `doingroup` tinyint(1) NOT NULL DEFAULT '0',
  `domembergroup` tinyint(1) NOT NULL DEFAULT '0',
  `doviewgroup` tinyint(1) NOT NULL DEFAULT '0',
  `domadmingroup` tinyint(1) NOT NULL DEFAULT '0',
  `dochmoreport` tinyint(1) NOT NULL DEFAULT '0',
  `doisqf` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`groupid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `swtx_enewsgroup`
--

INSERT INTO `swtx_enewsgroup` (`groupid`, `groupname`, `dopublic`, `doclass`, `dotemplate`, `dopicnews`, `dofile`, `douser`, `dolog`, `domember`, `dobefrom`, `doword`, `dokey`, `doad`, `dovote`, `dogroup`, `doall`, `docj`, `dobq`, `domovenews`, `dopostdata`, `dochangedata`, `dopl`, `dof`, `dom`, `dodo`, `dodbdata`, `dorepnewstext`, `dotempvar`, `dostats`, `dowriter`, `dototaldata`, `dosearchkey`, `dozt`, `docard`, `dolink`, `doselfinfo`, `doexecsql`, `dotable`, `dodownurl`, `dodeldownrecord`, `doshoppayfs`, `doshopps`, `doshopdd`, `dogbook`, `dofeedback`, `douserpage`, `donotcj`, `dodownerror`, `dodelinfodata`, `doaddinfo`, `doeditinfo`, `dodelinfo`, `doadminstyle`, `dorepdownpath`, `douserjs`, `douserlist`, `domsg`, `dosendemail`, `dosetmclass`, `doinfodoc`, `dotempgroup`, `dofeedbackf`, `dotask`, `domemberf`, `dospacestyle`, `dospacedata`, `dovotemod`, `doplayer`, `dowap`, `dopay`, `dobuygroup`, `dosearchall`, `doinfotype`, `doplf`, `dopltable`, `dochadminstyle`, `dotags`, `dosp`, `doyh`, `dofirewall`, `dosetsafe`, `douserclass`, `doworkflow`, `domenu`, `dopubvar`, `doclassf`, `doztf`, `dofiletable`, `docheckinfo`, `dogoodinfo`, `dodocinfo`, `domoveinfo`, `dodttemp`, `doloadcj`, `domustcheck`, `docheckedit`, `domemberconnect`, `doprecode`, `domoreport`, `docanhtml`, `dodelclass`, `doinfofile`, `doingroup`, `domembergroup`, `doviewgroup`, `domadmingroup`, `dochmoreport`, `doisqf`) VALUES
(1, '超级管理员', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewshmsg`
--

CREATE TABLE IF NOT EXISTS `swtx_enewshmsg` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL DEFAULT '',
  `msgtext` text NOT NULL,
  `haveread` tinyint(1) NOT NULL DEFAULT '0',
  `msgtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `to_username` varchar(30) NOT NULL DEFAULT '',
  `from_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `from_username` varchar(30) NOT NULL DEFAULT '',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `issys` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`),
  KEY `to_username` (`to_username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewshnotice`
--

CREATE TABLE IF NOT EXISTS `swtx_enewshnotice` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL DEFAULT '',
  `msgtext` text NOT NULL,
  `haveread` tinyint(1) NOT NULL DEFAULT '0',
  `msgtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `to_username` varchar(30) NOT NULL DEFAULT '',
  `from_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `from_username` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`mid`),
  KEY `to_username` (`to_username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewshy`
--

CREATE TABLE IF NOT EXISTS `swtx_enewshy` (
  `fid` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `cid` int(11) NOT NULL DEFAULT '0',
  `fsay` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`),
  KEY `userid` (`userid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewshyclass`
--

CREATE TABLE IF NOT EXISTS `swtx_enewshyclass` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(30) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsindexpage`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsindexpage` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(30) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsinfoclass`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsinfoclass` (
  `classid` int(11) NOT NULL AUTO_INCREMENT,
  `bclassid` int(11) NOT NULL DEFAULT '0',
  `classname` varchar(100) NOT NULL DEFAULT '',
  `infourl` mediumtext NOT NULL,
  `newsclassid` smallint(6) NOT NULL DEFAULT '0',
  `startday` date NOT NULL DEFAULT '0000-00-00',
  `endday` date NOT NULL DEFAULT '0000-00-00',
  `bz` text NOT NULL,
  `num` smallint(6) NOT NULL DEFAULT '0',
  `copyimg` tinyint(1) NOT NULL DEFAULT '0',
  `renum` smallint(6) NOT NULL DEFAULT '0',
  `keyboard` text NOT NULL,
  `oldword` text NOT NULL,
  `newword` text NOT NULL,
  `titlelen` smallint(6) NOT NULL DEFAULT '0',
  `retitlewriter` tinyint(1) NOT NULL DEFAULT '0',
  `smalltextlen` smallint(6) NOT NULL DEFAULT '0',
  `zz_smallurl` text NOT NULL,
  `zz_newsurl` text NOT NULL,
  `httpurl` varchar(255) NOT NULL DEFAULT '',
  `repad` text NOT NULL,
  `imgurl` varchar(255) NOT NULL DEFAULT '',
  `relistnum` smallint(6) NOT NULL DEFAULT '0',
  `zz_titlepicl` text NOT NULL,
  `z_titlepicl` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepicl` varchar(255) NOT NULL DEFAULT '',
  `save_titlepicl` varchar(10) NOT NULL DEFAULT '',
  `keynum` tinyint(4) NOT NULL DEFAULT '0',
  `insertnum` smallint(6) NOT NULL DEFAULT '0',
  `copyflash` tinyint(1) NOT NULL DEFAULT '0',
  `tid` smallint(6) NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `pagetype` tinyint(1) NOT NULL DEFAULT '0',
  `smallpagezz` text NOT NULL,
  `pagezz` text NOT NULL,
  `smallpageallzz` text NOT NULL,
  `pageallzz` text NOT NULL,
  `mark` tinyint(1) NOT NULL DEFAULT '0',
  `enpagecode` tinyint(1) NOT NULL DEFAULT '0',
  `recjtheurl` tinyint(1) NOT NULL DEFAULT '0',
  `hiddenload` tinyint(1) NOT NULL DEFAULT '0',
  `justloadin` tinyint(1) NOT NULL DEFAULT '0',
  `justloadcheck` tinyint(1) NOT NULL DEFAULT '0',
  `delloadinfo` tinyint(1) NOT NULL DEFAULT '0',
  `pagerepad` mediumtext NOT NULL,
  `newsztid` text NOT NULL,
  `getfirstpic` tinyint(4) NOT NULL DEFAULT '0',
  `oldpagerep` text NOT NULL,
  `newpagerep` text NOT NULL,
  `keeptime` smallint(6) NOT NULL DEFAULT '0',
  `lasttime` int(11) NOT NULL DEFAULT '0',
  `newstextisnull` tinyint(1) NOT NULL DEFAULT '0',
  `getfirstspic` tinyint(1) NOT NULL DEFAULT '0',
  `getfirstspicw` smallint(6) NOT NULL DEFAULT '0',
  `getfirstspich` smallint(6) NOT NULL DEFAULT '0',
  `doaddtextpage` tinyint(1) NOT NULL DEFAULT '0',
  `infourlispage` tinyint(1) NOT NULL DEFAULT '0',
  `repf` varchar(255) NOT NULL DEFAULT '',
  `repadf` varchar(255) NOT NULL DEFAULT '',
  `loadkeeptime` smallint(6) NOT NULL DEFAULT '0',
  `isnullf` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`),
  KEY `newsclassid` (`newsclassid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsinfotype`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsinfotype` (
  `typeid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tname` varchar(30) NOT NULL DEFAULT '',
  `mid` smallint(6) NOT NULL DEFAULT '0',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `yhid` smallint(6) NOT NULL DEFAULT '0',
  `tnum` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `listtempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tpath` varchar(100) NOT NULL DEFAULT '',
  `ttype` varchar(10) NOT NULL DEFAULT '',
  `maxnum` int(10) unsigned NOT NULL DEFAULT '0',
  `reorder` varchar(50) NOT NULL DEFAULT '',
  `tid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `timg` varchar(200) NOT NULL DEFAULT '',
  `intro` varchar(255) NOT NULL DEFAULT '',
  `pagekey` varchar(255) NOT NULL DEFAULT '',
  `newline` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hotline` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `goodline` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hotplline` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `firstline` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `jstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `nrejs` tinyint(1) NOT NULL DEFAULT '0',
  `listdt` tinyint(1) NOT NULL DEFAULT '0',
  `repagenum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fclast` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`typeid`),
  KEY `mid` (`mid`),
  KEY `myorder` (`myorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsinfovote`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsinfovote` (
  `pubid` bigint(16) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `votenum` int(10) unsigned NOT NULL DEFAULT '0',
  `voteip` mediumtext NOT NULL,
  `votetext` text NOT NULL,
  `voteclass` tinyint(1) NOT NULL DEFAULT '0',
  `doip` tinyint(1) NOT NULL DEFAULT '0',
  `dotime` date NOT NULL DEFAULT '0000-00-00',
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `width` int(10) unsigned NOT NULL DEFAULT '0',
  `height` int(10) unsigned NOT NULL DEFAULT '0',
  `diyotherlink` tinyint(1) NOT NULL DEFAULT '0',
  `infouptime` int(10) unsigned NOT NULL DEFAULT '0',
  `infodowntime` int(10) unsigned NOT NULL DEFAULT '0',
  `copyids` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pubid`),
  KEY `id` (`id`,`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsingroup`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsingroup` (
  `gid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `gname` char(60) NOT NULL DEFAULT '',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gid`),
  KEY `myorder` (`myorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsjstemp`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsjstemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(30) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `showdate` varchar(20) NOT NULL DEFAULT '',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `subnews` smallint(6) NOT NULL DEFAULT '0',
  `subtitle` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `swtx_enewsjstemp`
--

INSERT INTO `swtx_enewsjstemp` (`tempid`, `tempname`, `temptext`, `classid`, `isdefault`, `showdate`, `modid`, `subnews`, `subtitle`) VALUES
(1, '默认js模板', '[!--empirenews.listtemp--]<li><a href=\\"[!--titleurl--]\\" title=\\"[!--oldtitle--]\\">[!--title--]</a></li>[!--empirenews.listtemp--]', 0, 1, 'm-d', 1, 0, 32);

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsjstempclass`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsjstempclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewskey`
--

CREATE TABLE IF NOT EXISTS `swtx_enewskey` (
  `keyid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `keyname` char(50) NOT NULL DEFAULT '',
  `keyurl` char(200) NOT NULL DEFAULT '',
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`keyid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewskeyclass`
--

CREATE TABLE IF NOT EXISTS `swtx_enewskeyclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewslink`
--

CREATE TABLE IF NOT EXISTS `swtx_enewslink` (
  `lid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `lname` varchar(100) NOT NULL DEFAULT '',
  `lpic` varchar(255) NOT NULL DEFAULT '',
  `lurl` varchar(255) NOT NULL DEFAULT '',
  `ltime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `width` varchar(10) NOT NULL DEFAULT '',
  `height` varchar(10) NOT NULL DEFAULT '',
  `target` varchar(10) NOT NULL DEFAULT '',
  `myorder` tinyint(4) NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `lsay` text NOT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `ltype` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewslinkclass`
--

CREATE TABLE IF NOT EXISTS `swtx_enewslinkclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewslinktmp`
--

CREATE TABLE IF NOT EXISTS `swtx_enewslinktmp` (
  `newsurl` varchar(255) NOT NULL DEFAULT '',
  `checkrnd` varchar(50) NOT NULL DEFAULT '',
  `linkid` bigint(20) NOT NULL AUTO_INCREMENT,
  `titlepic` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`linkid`),
  KEY `checkrnd` (`checkrnd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewslisttemp`
--

CREATE TABLE IF NOT EXISTS `swtx_enewslisttemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `subnews` smallint(6) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `listvar` text NOT NULL,
  `rownum` smallint(6) NOT NULL DEFAULT '0',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `subtitle` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `docode` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `swtx_enewslisttemp`
--

INSERT INTO `swtx_enewslisttemp` (`tempid`, `tempname`, `temptext`, `subnews`, `isdefault`, `listvar`, `rownum`, `modid`, `showdate`, `subtitle`, `classid`, `docode`) VALUES
(1, '默认新闻列表模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"news_list\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[!--empirenews.listtemp--]<ul>\r\n<!--list.var1-->\r\n<!--list.var2-->\r\n<!--list.var3-->\r\n<!--list.var4-->\r\n<!--list.var5--></ul>\r\n[!--empirenews.listtemp--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\r\n<tr>\r\n                <td height=\\"38\\"><div class=\\"epages\\">[!--show.listpage--]</div></td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</table></td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>推荐资讯</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[phomenewspic]\\''selfinfo\\'',2,4,128,90,1,20,2[/phomenewspic]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\''selfinfo\\'',10,44,0,0,2,0[/ecmsinfo] \r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ol class=\\"rank\\">\r\n[ecmsinfo]\\''selfinfo\\'',10,40,0,1,10,0[/ecmsinfo] \r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 0, 0, '<li><a href=\\"[!--titleurl--]\\" title=\\"[!--oldtitle--]\\">[!--title--]</a> <span>[!--newstime--]</span></li>', 5, 1, 'Y-m-d', 0, 0, 0),
(2, '默认下载列表模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n<tr>\r\n<td colspan=\\"3\\" class=\\"down_list\\"><table bgcolor=\\"#FFFFFF\\" width=\\"100%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\" style=\\"table-layout:  fixed;  word-wrap:  break-word\\">\r\n<tr align=\\"center\\">\r\n<td bgcolor=\\"#D0E7F7\\">软件名称</td>\r\n<td width=\\"76\\"  nowrap=\\"nowrap\\" bgcolor=\\"#D0E7F7\\">整理日期</td>\r\n<td width=\\"70\\" nowrap=\\"nowrap\\" bgcolor=\\"#D0E7F7\\">软件大小</td>\r\n<td width=\\"50\\" nowrap=\\"nowrap\\" bgcolor=\\"#D0E7F7\\">人气</td>\r\n<td width=\\"76\\" nowrap=\\"nowrap\\" bgcolor=\\"#D0E7F7\\">软件等级</td>\r\n</tr>\r\n[!--empirenews.listtemp--]\r\n<!--list.var1-->\r\n[!--empirenews.listtemp--]\r\n</table></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"list_page\\">\r\n<tr>\r\n<td>[!--show.page--]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table></td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>推荐下载</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\''selfinfo\\'',10,44,0,2,2,0[/ecmsinfo]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\''selfinfo\\'',10,44,0,0,2,0[/ecmsinfo]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ol class=\\"rank\\">\r\n[ecmsinfo]\\''selfinfo\\'',10,40,0,1,10,0[/ecmsinfo]\r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 200, 0, '<tr> \r\n    <td width=\\"290\\"><img src=\\"[!--news.url--]e/data/images/list.gif\\" width=\\"11\\" height=\\"11\\" border=\\"0\\" /> <b>[!--class.name--]<a href=\\"[!--titleurl--]\\">[!--title--]</a></b></td>\r\n    <td align=\\"center\\" nowrap=\\"nowrap\\">[!--newstime--]</td>\r\n    <td align=\\"center\\" nowrap=\\"nowrap\\">[!--filesize--]</td>\r\n    <td align=\\"center\\" nowrap=\\"nowrap\\">[!--totaldown--]</td>\r\n    <td align=\\"center\\" nowrap=\\"nowrap\\"><img src=\\"[!--news.url--]e/data/images/[!--star--]star.gif\\" border=\\"0\\" /></td>\r\n  </tr>\r\n  <tr valign=\\"top\\"> \r\n    <td colspan=\\"5\\" class=\\"softsay\\">[!--softsay--]</td>\r\n</tr>\r\n  <tr> \r\n    <td colspan=\\"5\\"><font color=\\"green\\">界面语言：</font>[!--language--]  <font color=\\"green\\">软件类型：</font>[!--softtype--]  <font color=\\"green\\">授权方式：</font>[!--softsq--]  <font color=\\"green\\">运行平台：</font>[!--softfj--]</td>\r\n</tr></td></tr>\r\n  <tr> \r\n    <td colspan=\\"5\\"><img src=\\"[!--news.url--]e/data/images/line.gif\\" width=\\"100%\\" height=\\"9\\" /></td>\r\n</tr>', 1, 2, 'Y-m-d', 0, 0, 0),
(3, '默认图片列表模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n<tr>\r\n<td colspan=\\"3\\" class=\\"photo_list\\">\r\n[!--empirenews.listtemp--]\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"line_bottom\\">\r\n	<tr>\r\n		<td width=\\"25%\\" valign=\\"top\\"><!--list.var1--></td>\r\n		<td width=\\"25%\\" valign=\\"top\\"><!--list.var2--></td>\r\n		<td width=\\"25%\\" valign=\\"top\\"><!--list.var3--></td>\r\n		<td width=\\"25%\\" valign=\\"top\\"><!--list.var4--></td>\r\n	</tr>\r\n</table>\r\n[!--empirenews.listtemp--]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"list_page\\">\r\n<tr>\r\n<td>[!--show.page--]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table></td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>图片推荐</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[phomenewspic]\\''selfinfo\\'',2,4,128,90,1,20,2[/phomenewspic] </td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\''selfinfo\\'',10,44,0,0,2,0[/ecmsinfo]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ol class=\\"rank\\">\r\n[ecmsinfo]\\''selfinfo\\'',10,40,0,1,10,0[/ecmsinfo]\r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 0, 0, '<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"4\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td align=\\"center\\" class=\\"titlepic\\"><a href=\\"[!--titleurl--]\\"><img src=\\"[!--titlepic--]\\" alt=\\"[!--oldtitle--]\\" width=\\"128\\" height=\\"90\\" border=\\"0\\" /></a></td>\r\n	</tr>\r\n	<tr>\r\n		<td align=\\"center\\"><a href=\\"[!--titleurl--]\\" title=\\"[!--oldtitle--]\\">[!--title--]</a></td>\r\n	</tr>\r\n</table>', 4, 3, 'Y-m-d H:i:s', 22, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewslisttempclass`
--

CREATE TABLE IF NOT EXISTS `swtx_enewslisttempclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewslog`
--

CREATE TABLE IF NOT EXISTS `swtx_enewslog` (
  `loginid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `logintime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `loginip` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(30) NOT NULL DEFAULT '',
  `loginauth` tinyint(1) NOT NULL DEFAULT '0',
  `ipport` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`loginid`),
  KEY `status` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `swtx_enewslog`
--

INSERT INTO `swtx_enewslog` (`loginid`, `username`, `logintime`, `loginip`, `status`, `password`, `loginauth`, `ipport`) VALUES
(1, 'admin', '2020-09-23 17:31:09', '127.0.0.1', 1, '', 0, '60400');

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsloginfail`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsloginfail` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `num` tinyint(4) NOT NULL DEFAULT '0',
  `lasttime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsmember`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsmember` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `rnd` char(20) NOT NULL DEFAULT '',
  `email` char(50) NOT NULL DEFAULT '',
  `registertime` int(10) unsigned NOT NULL DEFAULT '0',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userfen` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userdate` int(10) unsigned NOT NULL DEFAULT '0',
  `money` float(11,2) NOT NULL DEFAULT '0.00',
  `zgroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `havemsg` tinyint(1) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `salt` char(8) NOT NULL DEFAULT '',
  `userkey` char(12) NOT NULL DEFAULT '',
  `ingid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `agid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isern` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`),
  KEY `groupid` (`groupid`),
  KEY `ingid` (`ingid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsmemberadd`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsmemberadd` (
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `oicq` varchar(25) NOT NULL DEFAULT '',
  `msn` varchar(120) NOT NULL DEFAULT '',
  `mycall` varchar(30) NOT NULL DEFAULT '',
  `phone` varchar(30) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zip` varchar(8) NOT NULL DEFAULT '',
  `spacestyleid` smallint(6) NOT NULL DEFAULT '0',
  `homepage` varchar(200) NOT NULL DEFAULT '',
  `saytext` text NOT NULL,
  `company` varchar(255) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `userpic` varchar(200) NOT NULL DEFAULT '',
  `spacename` varchar(255) NOT NULL DEFAULT '',
  `spacegg` text NOT NULL,
  `viewstats` int(11) NOT NULL DEFAULT '0',
  `regip` varchar(20) NOT NULL DEFAULT '',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(20) NOT NULL DEFAULT '',
  `loginnum` int(10) unsigned NOT NULL DEFAULT '0',
  `regipport` varchar(6) NOT NULL DEFAULT '',
  `lastipport` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsmemberf`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsmemberf` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fhtml` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `fvalue` text NOT NULL,
  `fformsize` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `swtx_enewsmemberf`
--

INSERT INTO `swtx_enewsmemberf` (`fid`, `f`, `fname`, `fform`, `fhtml`, `fzs`, `myorder`, `ftype`, `flen`, `fvalue`, `fformsize`) VALUES
(1, 'truename', '真实姓名', 'text', '\r\n<input name="truename" type="text" id="truename" value="<?=$ecmsfirstpost==1?"":ehtmlspecialchars(stripSlashes($addr[truename]))?>">\r\n', '', 1, 'VARCHAR', '20', '', ''),
(2, 'oicq', 'QQ号码', 'text', '<input name=\\"oicq\\" type=\\"text\\" id=\\"oicq\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($addr[oicq]))?>\\">\r\n', '', 5, 'VARCHAR', '25', '', ''),
(3, 'msn', 'MSN', 'text', '<input name=\\"msn\\" type=\\"text\\" id=\\"msn\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($addr[msn]))?>\\">\r\n', '', 6, 'VARCHAR', '120', '', ''),
(4, 'mycall', '联系电话', 'text', '<input name=\\"mycall\\" type=\\"text\\" id=\\"mycall\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($addr[mycall]))?>\\">\r\n', '', 2, 'VARCHAR', '30', '', ''),
(5, 'phone', '手机', 'text', '<input name=\\"phone\\" type=\\"text\\" id=\\"phone\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($addr[phone]))?>\\">\r\n', '', 4, 'VARCHAR', '30', '', ''),
(6, 'address', '联系地址', 'text', '<input name=\\"address\\" type=\\"text\\" id=\\"address\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($addr[address]))?>\\" size=\\"50\\">\r\n', '', 9, 'VARCHAR', '255', '', ''),
(7, 'zip', '邮编', 'text', '<input name=\\"zip\\" type=\\"text\\" id=\\"zip\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($addr[zip]))?>\\" size=\\"8\\">\r\n', '', 10, 'VARCHAR', '8', '', ''),
(9, 'homepage', '网址', 'text', '\r\n<input name="homepage" type="text" id="homepage" value="<?=$ecmsfirstpost==1?"":ehtmlspecialchars(stripSlashes($addr[homepage]))?>">\r\n', '', 7, 'VARCHAR', '200', '', ''),
(10, 'saytext', '简介', 'textarea', '<textarea name=\\"saytext\\" cols=\\"65\\" rows=\\"10\\" id=\\"saytext\\"><?=$ecmsfirstpost==1?\\"\\":stripSlashes($addr[saytext])?></textarea>\r\n', '', 11, 'TEXT', '', '', ''),
(11, 'company', '公司名称', 'text', '<input name=\\"company\\" type=\\"text\\" id=\\"company\\" value=\\"<?=$ecmsfirstpost==1?\\"\\":ehtmlspecialchars(stripSlashes($addr[company]))?>\\" size=\\"38\\">\r\n', '', 0, 'VARCHAR', '255', '', ''),
(12, 'fax', '传真', 'text', '\r\n<input name="fax" type="text" id="fax" value="<?=$ecmsfirstpost==1?"":ehtmlspecialchars(stripSlashes($addr[fax]))?>">\r\n', '', 3, 'VARCHAR', '30', '', ''),
(13, 'userpic', '会员头像', 'img', '<input type=\\"file\\" name=\\"userpicfile\\">&nbsp;&nbsp;\r\n<?=empty($addr[userpic])?\\"\\":\\"<img src=\\''\\".ehtmlspecialchars(stripSlashes($addr[userpic])).\\"\\'' border=0>\\"?>', '', 8, 'VARCHAR', '200', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsmemberfeedback`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsmemberfeedback` (
  `fid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(12) NOT NULL DEFAULT '',
  `company` varchar(80) NOT NULL DEFAULT '',
  `phone` varchar(30) NOT NULL DEFAULT '',
  `fax` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zip` varchar(8) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `ftext` text NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uname` varchar(20) NOT NULL DEFAULT '',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `eipport` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsmemberform`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsmemberform` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(60) NOT NULL DEFAULT '',
  `ftemp` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `enter` text NOT NULL,
  `mustenter` text NOT NULL,
  `filef` varchar(255) NOT NULL DEFAULT '',
  `imgf` varchar(255) NOT NULL DEFAULT '0',
  `tobrf` text NOT NULL,
  `viewenter` text NOT NULL,
  `searchvar` varchar(255) NOT NULL DEFAULT '',
  `canaddf` text NOT NULL,
  `caneditf` text NOT NULL,
  `checkboxf` text NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `swtx_enewsmemberform`
--

INSERT INTO `swtx_enewsmemberform` (`fid`, `fname`, `ftemp`, `fzs`, `enter`, `mustenter`, `filef`, `imgf`, `tobrf`, `viewenter`, `searchvar`, `canaddf`, `caneditf`, `checkboxf`) VALUES
(1, '个人注册表单', '<table width=\\''100%\\'' align=\\''center\\'' cellpadding=3 cellspacing=1 bgcolor=\\''#DBEAF5\\''>\r\n<tr><td width=\\''25%\\'' height=25 bgcolor=\\''ffffff\\''>真实姓名</td><td bgcolor=\\''ffffff\\''>[!--truename--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>QQ号码</td><td bgcolor=\\''ffffff\\''>[!--oicq--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>MSN</td><td bgcolor=\\''ffffff\\''>[!--msn--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>联系电话</td><td bgcolor=\\''ffffff\\''>[!--mycall--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>手机</td><td bgcolor=\\''ffffff\\''>[!--phone--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>网站地址</td><td bgcolor=\\''ffffff\\''>[!--homepage--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>会员头像</td><td bgcolor=\\''ffffff\\''>[!--userpic--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>联系地址</td><td bgcolor=\\''ffffff\\''>[!--address--]&nbsp;邮编: [!--zip--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>个人介绍</td><td bgcolor=\\''ffffff\\''>[!--saytext--]</td></tr>\r\n</table>', '', '真实姓名<!--field--->truename<!--record-->联系电话<!--field--->mycall<!--record-->手机<!--field--->phone<!--record-->QQ号码<!--field--->oicq<!--record-->MSN<!--field--->msn<!--record-->网站地址<!--field--->homepage<!--record-->会员头像<!--field--->userpic<!--record-->联系地址<!--field--->address<!--record-->邮编<!--field--->zip<!--record-->简介<!--field--->saytext<!--record-->', '', ',', ',userpic,', ',saytext,', '真实姓名<!--field--->truename<!--record-->联系电话<!--field--->mycall<!--record-->手机<!--field--->phone<!--record-->QQ号码<!--field--->oicq<!--record-->MSN<!--field--->msn<!--record-->网站地址<!--field--->homepage<!--record-->会员头像<!--field--->userpic<!--record-->联系地址<!--field--->address<!--record-->邮编<!--field--->zip<!--record-->简介<!--field--->saytext<!--record-->', '', ',truename,mycall,phone,oicq,msn,homepage,userpic,address,zip,saytext,', ',truename,mycall,phone,oicq,msn,homepage,userpic,address,zip,saytext,', ','),
(2, '企员注册表单', '<table width=\\''100%\\'' align=\\''center\\'' cellpadding=3 cellspacing=1 bgcolor=\\''#DBEAF5\\''><tr><td width=\\''25%\\'' height=25 bgcolor=\\''ffffff\\''>公司名称</td><td bgcolor=\\''ffffff\\''>[!--company--](*)</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>联系人</td><td bgcolor=\\''ffffff\\''>[!--truename--](*)</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>联系电话</td><td bgcolor=\\''ffffff\\''>[!--mycall--](*)</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>传真</td><td bgcolor=\\''ffffff\\''>[!--fax--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>手机</td><td bgcolor=\\''ffffff\\''>[!--phone--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>QQ号码</td><td bgcolor=\\''ffffff\\''>[!--oicq--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>MSN</td><td bgcolor=\\''ffffff\\''>[!--msn--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>网址</td><td bgcolor=\\''ffffff\\''>[!--homepage--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>会员头像</td><td bgcolor=\\''ffffff\\''>[!--userpic--]</td></tr>\r\n<tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>联系地址</td><td bgcolor=\\''ffffff\\''>[!--address--]&nbsp;邮编: [!--zip--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>公司介绍</td><td bgcolor=\\''ffffff\\''>[!--saytext--]</td></tr></table>', '', '公司名称<!--field--->company<!--record-->联系人<!--field--->truename<!--record-->联系电话<!--field--->mycall<!--record-->传真<!--field--->fax<!--record-->手机<!--field--->phone<!--record-->QQ号码<!--field--->oicq<!--record-->MSN<!--field--->msn<!--record-->网址<!--field--->homepage<!--record-->会员头像<!--field--->userpic<!--record-->联系地址<!--field--->address<!--record-->邮编<!--field--->zip<!--record-->公司介绍<!--field--->saytext<!--record-->', ',company,truename,mycall,', ',', ',userpic,', ',saytext,', '公司名称<!--field--->company<!--record-->联系人<!--field--->truename<!--record-->联系电话<!--field--->mycall<!--record-->传真<!--field--->fax<!--record-->手机<!--field--->phone<!--record-->QQ号码<!--field--->oicq<!--record-->MSN<!--field--->msn<!--record-->网址<!--field--->homepage<!--record-->会员头像<!--field--->userpic<!--record-->联系地址<!--field--->address<!--record-->邮编<!--field--->zip<!--record-->公司介绍<!--field--->saytext<!--record-->', ',company,', ',company,truename,mycall,fax,phone,oicq,msn,homepage,userpic,address,zip,saytext,', ',company,truename,mycall,fax,phone,oicq,msn,homepage,userpic,address,zip,saytext,', ',');

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsmembergbook`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsmembergbook` (
  `gid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `isprivate` tinyint(1) NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uname` varchar(20) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `gbtext` text NOT NULL,
  `retext` text NOT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `eipport` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsmembergroup`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsmembergroup` (
  `groupid` smallint(6) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(60) NOT NULL DEFAULT '',
  `level` smallint(6) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `favanum` smallint(6) NOT NULL DEFAULT '0',
  `daydown` int(11) NOT NULL DEFAULT '0',
  `msglen` int(11) NOT NULL DEFAULT '0',
  `msgnum` int(11) NOT NULL DEFAULT '0',
  `canreg` tinyint(1) NOT NULL DEFAULT '0',
  `formid` smallint(6) NOT NULL DEFAULT '0',
  `regchecked` tinyint(1) NOT NULL DEFAULT '0',
  `spacestyleid` smallint(6) NOT NULL DEFAULT '0',
  `dayaddinfo` smallint(6) NOT NULL DEFAULT '0',
  `infochecked` tinyint(1) NOT NULL DEFAULT '0',
  `plchecked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`groupid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `swtx_enewsmembergroup`
--

INSERT INTO `swtx_enewsmembergroup` (`groupid`, `groupname`, `level`, `checked`, `favanum`, `daydown`, `msglen`, `msgnum`, `canreg`, `formid`, `regchecked`, `spacestyleid`, `dayaddinfo`, `infochecked`, `plchecked`) VALUES
(1, '普通会员', 1, 0, 120, 0, 255, 50, 1, 1, 0, 1, 0, 0, 0),
(2, 'VIP会员', 2, 0, 200, 0, 255, 120, 0, 1, 0, 1, 0, 0, 0),
(3, '企业会员', 1, 0, 120, 0, 255, 50, 1, 2, 0, 2, 0, 0, 0),
(4, '企业VIP会员', 2, 0, 200, 0, 255, 120, 0, 2, 0, 2, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsmemberpub`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsmemberpub` (
  `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `todayinfodate` char(10) NOT NULL DEFAULT '',
  `todayaddinfo` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `todaydate` char(10) NOT NULL DEFAULT '',
  `todaydown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authstr` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsmember_connect`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsmember_connect` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `apptype` char(20) NOT NULL DEFAULT '',
  `bindkey` char(32) NOT NULL DEFAULT '',
  `bindtime` int(10) unsigned NOT NULL DEFAULT '0',
  `loginnum` int(10) unsigned NOT NULL DEFAULT '0',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `bindkey` (`bindkey`),
  KEY `apptype` (`apptype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsmember_connect_app`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsmember_connect_app` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `apptype` char(20) NOT NULL DEFAULT '',
  `appname` char(30) NOT NULL DEFAULT '',
  `appid` char(60) NOT NULL DEFAULT '',
  `appkey` char(120) NOT NULL DEFAULT '',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `qappname` char(30) NOT NULL DEFAULT '',
  `appsay` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `apptype` (`apptype`),
  KEY `isclose` (`isclose`),
  KEY `myorder` (`myorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsmenu`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsmenu` (
  `menuid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menuname` varchar(60) NOT NULL DEFAULT '',
  `menuurl` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addhash` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuid`),
  KEY `myorder` (`myorder`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsmenuclass`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsmenuclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(60) NOT NULL DEFAULT '',
  `issys` tinyint(1) NOT NULL DEFAULT '0',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classtype` tinyint(1) NOT NULL DEFAULT '0',
  `groupids` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`),
  KEY `myorder` (`myorder`),
  KEY `classtype` (`classtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsmod`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsmod` (
  `mid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `mname` varchar(100) NOT NULL DEFAULT '',
  `mtemp` mediumtext NOT NULL,
  `mzs` varchar(255) NOT NULL DEFAULT '',
  `cj` mediumtext NOT NULL,
  `enter` mediumtext NOT NULL,
  `tempvar` mediumtext NOT NULL,
  `sonclass` text NOT NULL,
  `searchvar` varchar(255) NOT NULL DEFAULT '',
  `tid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `qenter` mediumtext NOT NULL,
  `mustqenterf` text NOT NULL,
  `qmtemp` mediumtext NOT NULL,
  `listandf` text NOT NULL,
  `setandf` tinyint(1) NOT NULL DEFAULT '0',
  `listtempvar` mediumtext NOT NULL,
  `qmname` varchar(30) NOT NULL DEFAULT '',
  `canaddf` text NOT NULL,
  `caneditf` text NOT NULL,
  `definfovoteid` smallint(6) NOT NULL DEFAULT '0',
  `showmod` tinyint(1) NOT NULL DEFAULT '0',
  `usemod` tinyint(1) NOT NULL DEFAULT '0',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `orderf` text NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `listfile` varchar(30) NOT NULL DEFAULT '',
  `printtempid` smallint(6) NOT NULL DEFAULT '0',
  `maddfun` varchar(255) NOT NULL DEFAULT '',
  `meditfun` varchar(255) NOT NULL DEFAULT '',
  `qmaddfun` varchar(255) NOT NULL DEFAULT '',
  `qmeditfun` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`mid`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `swtx_enewsmod`
--

INSERT INTO `swtx_enewsmod` (`mid`, `mname`, `mtemp`, `mzs`, `cj`, `enter`, `tempvar`, `sonclass`, `searchvar`, `tid`, `tbname`, `qenter`, `mustqenterf`, `qmtemp`, `listandf`, `setandf`, `listtempvar`, `qmname`, `canaddf`, `caneditf`, `definfovoteid`, `showmod`, `usemod`, `myorder`, `orderf`, `isdefault`, `listfile`, `printtempid`, `maddfun`, `meditfun`, `qmaddfun`, `qmeditfun`) VALUES
(1, '新闻系统模型', '<table width=\\''100%\\'' align=center cellpadding=3 cellspacing=1 class=\\"tableborder\\"><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>标题(*)</td><td bgcolor=\\''ffffff\\''>[!--title--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>副标题</td><td bgcolor=\\''ffffff\\''>[!--ftitle--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>特殊属性</td><td bgcolor=\\''ffffff\\''>[!--special.field--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>发布时间</td><td bgcolor=\\''ffffff\\''>[!--newstime--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>标题图片</td><td bgcolor=\\''ffffff\\''>[!--titlepic--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>内容简介</td><td bgcolor=\\''ffffff\\''>[!--smalltext--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>作者</td><td bgcolor=\\''ffffff\\''>[!--writer--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>信息来源</td><td bgcolor=\\''ffffff\\''>[!--befrom--]</td></tr><tr><td height=25 colspan=2 bgcolor=\\''ffffff\\''><div align=left>新闻正文(*)</div></td></tr></table><div style=\\"background-color:#D0D0D0\\">[!--newstext--]</div>', '新闻系统模型', '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->', '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->特殊属性<!--field--->special.field<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->', '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->顶<!--field--->diggtop<!--record-->', '|2|3|4|5|6|', ',title,smalltext,', 1, 'news', '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->特殊属性<!--field--->special.field<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->', ',title,newstext,', '<table width=100% align=center cellpadding=3 cellspacing=1 class=\\"tableborder\\"><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>标题(*)</td><td bgcolor=\\''ffffff\\''>[!--title--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>副标题</td><td bgcolor=\\''ffffff\\''>[!--ftitle--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>关键字</td><td bgcolor=\\''ffffff\\''>[!--special.field--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>标题图片</td><td bgcolor=\\''ffffff\\''>[!--titlepic--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>内容简介</td><td bgcolor=\\''ffffff\\''>[!--smalltext--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>作者</td><td bgcolor=\\''ffffff\\''>[!--writer--]</td></tr><tr><td width=\\''16%\\'' height=25 bgcolor=\\''ffffff\\''>信息来源</td><td bgcolor=\\''ffffff\\''>[!--befrom--]</td></tr><tr><td height=25 colspan=2 bgcolor=\\''ffffff\\''><div align=left>新闻正文(*)</div></td></tr></table><div style=\\"background-color:#D0D0D0\\">[!--newstext--]</div>', '', 0, '标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->顶<!--field--->diggtop<!--record-->', '新闻', ',title,ftitle,newstime,titlepic,smalltext,writer,befrom,newstext,', ',title,ftitle,newstime,titlepic,smalltext,writer,befrom,newstext,', 0, 0, 0, 0, '', 1, '', 0, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsmoreport`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsmoreport` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` char(60) NOT NULL DEFAULT '',
  `purl` char(255) NOT NULL DEFAULT '',
  `ppath` char(255) NOT NULL DEFAULT '',
  `postpass` char(120) NOT NULL DEFAULT '',
  `postfile` char(255) NOT NULL DEFAULT '',
  `tempgid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mustdt` tinyint(1) NOT NULL DEFAULT '0',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `closeadd` tinyint(1) NOT NULL DEFAULT '0',
  `headersign` char(255) NOT NULL DEFAULT '',
  `openadmin` tinyint(1) NOT NULL DEFAULT '0',
  `rehtml` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`),
  KEY `isclose` (`isclose`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `swtx_enewsmoreport`
--

INSERT INTO `swtx_enewsmoreport` (`pid`, `pname`, `purl`, `ppath`, `postpass`, `postfile`, `tempgid`, `mustdt`, `isclose`, `closeadd`, `headersign`, `openadmin`, `rehtml`) VALUES
(1, '主访问端', '', '', '', '', 0, 0, 0, 0, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsnewstemp`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsnewstemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `temptext` mediumtext NOT NULL,
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `swtx_enewsnewstemp`
--

INSERT INTO `swtx_enewsnewstemp` (`tempid`, `tempname`, `isdefault`, `temptext`, `showdate`, `modid`, `classid`) VALUES
(1, '默认新闻内容模板', 0, '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]e/data/js/ajax.js\\"></script>\r\n</head>\r\n<body class=\\"showpage news\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"main\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"title_info\\">\r\n<tr>\r\n<td><h1>[!--title--]</h1></td>\r\n</tr>\r\n<tr>\r\n<td class=\\"info_text\\">时间：[!--newstime--]&nbsp;&nbsp;来源：[!--befrom--]&nbsp;&nbsp;作者：[!--writer--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\r\n<tr>\r\n<td id=\\"text\\">[!--newstext--]\r\n<p align=\\"center\\" class=\\"pageLink\\">[!--page.url--]</p></td>\r\n</tr>\r\n</table>\r\n<table border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"8\\">\r\n<tr>\r\n<td><table border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"digg\\">\r\n<tr>\r\n<td class=\\"diggnum\\" id=\\"diggnum\\"><strong><script type=\\"text/javascript\\" src=\\"[!--news.url--]e/public/ViewClick/?classid=[!--classid--]&id=[!--id--]&down=5\\"></script></strong></td>\r\n</tr>\r\n<tr>\r\n<td class=\\"diggit\\"><a href=\\"JavaScript:makeRequest(\\''[!--news.url--]e/public/digg/?classid=[!--classid--]&id=[!--id--]&dotop=1&doajax=1&ajaxarea=diggnum\\'',\\''EchoReturnedText\\'',\\''GET\\'',\\''\\'');\\">来顶一下</a></td>\r\n</tr>\r\n</table></td>\r\n<td><table border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"digg\\">\r\n<tr>\r\n<td valign=\\"middle\\" class=\\"diggnum\\"><strong><a href=\\"[!--news.url--]\\"><img src=\\"[!--news.url--]skin/default/images/back.gif\\" alt=\\"返回首页\\" width=\\"12\\" height=\\"13\\" border=\\"0\\" align=\\"absmiddle\\" /></a></strong></td>\r\n</tr>\r\n<tr>\r\n<td class=\\"diggit\\"><a href=\\"[!--news.url--]\\">返回首页</a></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n          </td>\r\n</tr>\r\n</table>\r\n[!--temp.pl--]\r\n</td>\r\n<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>推荐资讯</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td>[phomenewspic]\\''news\\'',2,4,128,90,1,20,20[/phomenewspic]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>相关文章</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n[!--other.link--]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>栏目更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n              <script src=''[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js''></script></ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n<tr>\r\n<td><strong>栏目热门</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n<tr>\r\n<td><ul>\r\n              <script src=''[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js''></script></ul></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n[!--page.stats--]\r\n</body>\r\n</html>', 'Y-m-d H:i:s', 1, 0),
(2, '默认下载内容模板', 0, '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"Keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"showpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td class=\\"main\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n				<tr>\r\n					<td>您当前的位置：[!--newsnav--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"3\\" cellspacing=\\"2\\" bgcolor=\\"#FFFFFF\\">\r\n							<tbody>\r\n								<tr>\r\n									<td width=\\"78\\" align=\\"center\\" nowrap=\\"nowrap\\" bgcolor=\\"#E1EFFB\\"><b>软件名称：</b></td>\r\n									<td colspan=\\"2\\" bgcolor=\\"#E1EFFB\\"><b>[!--title--]</b></td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\"center\\"><strong>文件类型：</strong></td>\r\n									<td width=\\"296\\">[!--filetype--]</td>\r\n									<td width=\\"180\\" rowspan=\\"9\\" align=\\"center\\"><a href=\\"[!--titlepic--]\\" target=\\"_blank\\"><img src=\\"[!--titlepic--]\\" border=\\"0\\" width=\\"128\\" /></a></td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\"center\\" bgcolor=\\"#F4F9FD\\"><strong>界面语言：</strong></td>\r\n									<td bgcolor=\\"#F4F9FD\\">[!--language--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\"center\\"><strong>软件类型：</strong></td>\r\n									<td>[!--softtype--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\"center\\" bgcolor=\\"#F4F9FD\\"><strong>运行环境：</strong></td>\r\n									<td bgcolor=\\"#F4F9FD\\">[!--softfj--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\"center\\"><strong>授权方式：</strong></td>\r\n									<td>[!--softsq--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\"center\\" bgcolor=\\"#F4F9FD\\"><strong>软件大小：</strong></td>\r\n									<td bgcolor=\\"#F4F9FD\\">[!--filesize--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\"center\\"><strong>软件等级：</strong></td>\r\n									<td><img src=\\"[!--news.url--]e/data/images/[!--star--]star.gif\\" border=\\"0\\" /></td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\"center\\" bgcolor=\\"#F4F9FD\\"><strong>软件登陆：</strong></td>\r\n									<td bgcolor=\\"#F4F9FD\\">[!--username--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\"center\\"><strong>作 者 ：</strong></td>\r\n									<td>[!--softwriter--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\"center\\" bgcolor=\\"#F4F9FD\\"><strong>官方网址：</strong></td>\r\n									<td colspan=\\"2\\" bgcolor=\\"#F4F9FD\\"><a href=\\''[!--homepage--]\\'' target=\\"_blank\\">官方站</a></td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\"center\\"><strong>程序演示：</strong></td>\r\n									<td colspan=\\"2\\"><a href=\\''[!--demo--]\\'' target=\\"_blank\\">演示</a></td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\"center\\" bgcolor=\\"#F4F9FD\\"><strong>整理时间：</strong></td>\r\n									<td colspan=\\"2\\" bgcolor=\\"#F4F9FD\\">[!--newstime--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\"center\\"><strong>软件简介：</strong></td>\r\n									<td \r\n            colspan=\\"2\\"> [!--softsay--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td width=\\"78\\" align=\\"center\\" nowrap=\\"nowrap\\" bgcolor=\\"#F4F9FD\\"><b><font color=\\"#008E00\\">下载地址：</font></b></td>\r\n									<td colspan=\\"2\\" bgcolor=\\"#F4F9FD\\"> [!--downpath--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\"center\\" nowrap=\\"nowrap\\"><strong>下载帮助：</strong></td>\r\n									<td colspan=\\"2\\"><img src=\\"[!--news.url--]e/data/images/gonggao.gif\\" border=\\"0\\" /><a href=\\"[!--news.url--]e/pl/?classid=[!--classid--]&amp;id=[!--id--]\\">发表评论</a> <img src=\\"[!--news.url--]e/data/images/gonggao.gif\\" border=\\"0\\" /><a href=\\"[!--news.url--]e/member/fava/add/?classid=[!--classid--]&amp;id=[!--id--]\\">加入收藏夹</a> <img src=\\"[!--news.url--]e/data/images/gonggao.gif\\" border=\\"0\\" /><a href=\\"[!--news.url--]e/public/report/?classid=[!--classid--]&amp;id=[!--id--]\\" target=\\"_blank\\">错误报告</a></td>\r\n								</tr>\r\n								<tr>\r\n									<td width=\\"78\\" align=\\"center\\" valign=\\"top\\" nowrap=\\"nowrap\\" bgcolor=\\"#F4F9FD\\"><b><font color=\\"#008E0\\">相关软件：</font></b></td>\r\n									<td colspan=\\"2\\" bgcolor=\\"#F4F9FD\\">[!--other.link--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\"center\\" valign=\\"center\\" nowrap=\\"nowrap\\"><strong>下载说明：</strong></td>\r\n									<td colspan=\\"2\\">⊙推荐使用网际快车下载本站软件，使用 WinRAR v3.10 以上版本解压本站软件。<br />\r\n										⊙如果这个软件总是不能下载的请点击报告错误,谢谢合作!!<br />\r\n										⊙下载本站资源，如果服务器暂不能下载请过一段时间重试！<br />\r\n										⊙如果遇到什么问题，请到<a href=\\"http://www.phome.net\\" target=\\"_blank\\">本站论坛</a>去咨寻，我们将在那里提供更多\r\n										、更好的资源！<br />\r\n										⊙本站提供的一些商业软件是供学习研究之用，如用于商业用途，请购买正版。 </td>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n						</td>\r\n				</tr>\r\n			</table>\r\n			[!--temp.pl--]</td>\r\n		<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n				<tr>\r\n					<td><strong>推荐下载</strong></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><ul>\r\n              <script src=''[!--news.url--]d/js/class/class[!--self.classid--]_goodnews.js''></script></ul></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n				<tr>\r\n					<td><strong>最后更新</strong></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><ul>\r\n              <script src=''[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js''></script></ul></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n				<tr>\r\n					<td><strong>热门点击</strong></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><ul>\r\n              <script src=''[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js''></script></ul></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--] [!--page.stats--]\r\n</body>\r\n</html>', 'Y-m-d', 2, 0),
(3, '默认图片内容模板(单图片)', 0, '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"Keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"showpage\\">\r\n[!--temp.header--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td class=\\"main\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n				<tr>\r\n					<td>您当前的位置：[!--newsnav--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td>\r\n						<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"1\\" bgcolor=\\"#FFFFFF\\">\r\n							<tr>\r\n								<td bgcolor=\\"#E1EFFB\\">&nbsp;&nbsp;<strong>[!--title--]</strong></td>\r\n							</tr>\r\n							<tr>\r\n								<td><table width=\\"0\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n										<tr>\r\n											<td width=\\"25\\"><img src=\\"[!--news.url--]e/data/images/mod/center_1.gif\\" width=\\"25\\" height=\\"24\\" /></td>\r\n											<td background=\\"[!--news.url--]e/data/images/mod/box_1.gif\\">&nbsp;</td>\r\n											<td width=\\"25\\"><img src=\\"[!--news.url--]e/data/images/mod/center_2.gif\\" width=\\"25\\" height=\\"24\\" /></td>\r\n										</tr>\r\n										<tr>\r\n											<td background=\\"[!--news.url--]e/data/images/mod/box_4.gif\\">&nbsp;</td>\r\n											<td bgcolor=\\"#F3F3F3\\"><a href=\\"[!--news.url--]e/ViewImg/index.html?url=[!--picurl--]\\" target=\\"_blank\\"><img border=\\"0\\" src=\\"[!--picurl--]\\" class=\\"photoresize\\" /></a></td>\r\n											<td background=\\"[!--news.url--]e/data/images/mod/box_2.gif\\">&nbsp;</td>\r\n										</tr>\r\n										<tr>\r\n											<td><img src=\\"[!--news.url--]e/data/images/mod/center_3.gif\\" width=\\"25\\" height=\\"24\\" /></td>\r\n											<td background=\\"[!--news.url--]e/data/images/mod/box_3.gif\\">&nbsp;</td>\r\n											<td><img src=\\"[!--news.url--]e/data/images/mod/center_4.gif\\" width=\\"25\\" height=\\"24\\" /></td>\r\n										</tr>\r\n								</table></td>\r\n							</tr>\r\n							<tr>\r\n								<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"1\\">\r\n										<tr>\r\n											<td colspan=\\"2\\" bgcolor=\\"#F4F9FD\\">&nbsp;&nbsp;<strong>图片资料</strong></td>\r\n										</tr>\r\n										<tr>\r\n											<td width=\\"80\\">图片名称：</td>\r\n											<td width=\\"462\\"> [!--title--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td bgcolor=\\"#F8F8F8\\">人气：</td>\r\n											<td bgcolor=\\"#F8F8F8\\"> [!--onclick--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td>图片尺寸：</td>\r\n											<td> [!--picsize--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td bgcolor=\\"#F8F8F8\\">图片大小：</td>\r\n											<td bgcolor=\\"#F8F8F8\\"> [!--filesize--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td>编辑：</td>\r\n											<td> [!--username--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td bgcolor=\\"#F8F8F8\\">创建日期：</td>\r\n											<td bgcolor=\\"#F8F8F8\\"> [!--newstime--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td valign=\\"top\\">简介：</td>\r\n											<td valign=\\"top\\">[!--picsay--]</td>\r\n										</tr>\r\n								</table></td>\r\n							</tr>\r\n												</table>						</td>\r\n				</tr>\r\n			</table>\r\n			[!--temp.pl--]</td>\r\n		<td class=\\"sider\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title\\">\r\n				<tr>\r\n					<td><strong>图片推荐</strong></td>\r\n				</tr>\r\n			</table>\r\n				<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"8\\" cellpadding=\\"0\\" class=\\"box\\">\r\n					<tr>\r\n						<td>[phomenewspic]\\''selfinfo\\'',2,4,128,90,1,20,2[/phomenewspic] </td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n					<tr>\r\n						<td><strong>最后更新</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=''[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js''></script> </ul></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"title margin_top\\">\r\n					<tr>\r\n						<td><strong>热门点击</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=''[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js''></script></ul></td>\r\n					</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--] [!--page.stats--]\r\n</body>\r\n</html>', 'Y-m-d H:i:s', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsnewstempclass`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsnewstempclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsnotcj`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsnotcj` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `word` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `swtx_enewsnotcj`
--

INSERT INTO `swtx_enewsnotcj` (`id`, `word`) VALUES
(1, '<input type=hidden value=''欢迎使用帝国网站管理系统：www.phome.net''>'),
(2, '<phome 帝国网站管理系统,phome.net>'),
(3, '<!--帝国CMS,phome.net-->'),
(4, '<table style=display:none><tr><td>\r\nEmpire CMS,phome.net\r\n</td></tr></table>'),
(5, '<div style=display:none>\r\n拥有帝国一切，皆有可能。欢迎访问phome.net\r\n</div>');

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsnotice`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsnotice` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL DEFAULT '',
  `msgtext` text NOT NULL,
  `haveread` tinyint(1) NOT NULL DEFAULT '0',
  `msgtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `to_username` varchar(30) NOT NULL DEFAULT '',
  `from_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `from_username` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`mid`),
  KEY `to_username` (`to_username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewspage`
--

CREATE TABLE IF NOT EXISTS `swtx_enewspage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `pagetext` mediumtext NOT NULL,
  `path` varchar(255) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pagetitle` varchar(120) NOT NULL DEFAULT '',
  `pagekeywords` varchar(255) NOT NULL DEFAULT '',
  `pagedescription` varchar(255) NOT NULL DEFAULT '',
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewspageclass`
--

CREATE TABLE IF NOT EXISTS `swtx_enewspageclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewspagetemp`
--

CREATE TABLE IF NOT EXISTS `swtx_enewspagetemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(30) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewspayapi`
--

CREATE TABLE IF NOT EXISTS `swtx_enewspayapi` (
  `payid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `paytype` varchar(20) NOT NULL DEFAULT '',
  `myorder` tinyint(4) NOT NULL DEFAULT '0',
  `payfee` varchar(10) NOT NULL DEFAULT '',
  `payuser` varchar(60) NOT NULL DEFAULT '',
  `partner` varchar(60) NOT NULL DEFAULT '',
  `paykey` varchar(120) NOT NULL DEFAULT '',
  `paylogo` varchar(200) NOT NULL DEFAULT '',
  `paysay` text NOT NULL,
  `payname` varchar(120) NOT NULL DEFAULT '',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `payemail` varchar(120) NOT NULL DEFAULT '',
  `paymethod` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`payid`),
  UNIQUE KEY `paytype` (`paytype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `swtx_enewspayapi`
--

INSERT INTO `swtx_enewspayapi` (`payid`, `paytype`, `myorder`, `payfee`, `payuser`, `partner`, `paykey`, `paylogo`, `paysay`, `payname`, `isclose`, `payemail`, `paymethod`) VALUES
(1, 'tenpay', 1, '0', '', '', '', '', '财付通（www.tenpay.com） - 腾讯旗下在线支付平台，通过国家权威安全认证，支持各大银行网上支付。', '财付通', 0, '', 0),
(2, 'chinabank', 2, '0', '', '', '', '', '网银在线与中国工商银行、招商银行、中国建设银行、农业银行、民生银行等数十家金融机构达成协议。全面支持全国19家银行的信用卡及借记卡实现网上支付。（网址：http://www.chinabank.com.cn）', '网银在线', 0, '', 0),
(3, 'alipay', 0, '0', '', '', '', '', '支付宝网站(www.alipay.com) 是国内先进的网上支付平台。', '支付宝接口', 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewspayrecord`
--

CREATE TABLE IF NOT EXISTS `swtx_enewspayrecord` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `orderid` varchar(50) NOT NULL DEFAULT '',
  `money` varchar(20) NOT NULL DEFAULT '',
  `posttime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `paybz` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(12) NOT NULL DEFAULT '',
  `payip` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`,`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewspic`
--

CREATE TABLE IF NOT EXISTS `swtx_enewspic` (
  `picid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `pic_url` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `pic_width` varchar(20) NOT NULL DEFAULT '',
  `pic_height` varchar(20) NOT NULL DEFAULT '',
  `open_pic` varchar(20) NOT NULL DEFAULT '',
  `border` tinyint(1) NOT NULL DEFAULT '0',
  `pictext` text NOT NULL,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`picid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewspicclass`
--

CREATE TABLE IF NOT EXISTS `swtx_enewspicclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `swtx_enewspicclass`
--

INSERT INTO `swtx_enewspicclass` (`classid`, `classname`) VALUES
(1, '默认图片信息类别');

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsplayer`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsplayer` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `player` varchar(30) NOT NULL DEFAULT '',
  `filename` varchar(20) NOT NULL DEFAULT '',
  `bz` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `swtx_enewsplayer`
--

INSERT INTO `swtx_enewsplayer` (`id`, `player`, `filename`, `bz`) VALUES
(1, 'RealPlayer', 'realplayer.php', 'RealPlayer播放器'),
(2, 'MediaPlayer', 'mediaplayer.php', 'MediaPlayer播放器'),
(3, 'FLASH', 'flasher.php', 'FLASH播放器'),
(4, 'FLV播放器', 'flver.php', 'FLV播放器'),
(5, 'HTML5Video', 'htmlvideo.php', 'HTML5的video播放标签'),
(6, 'JWPlayer', 'jwplayer.php', 'JWPlayer播放器'),
(7, 'HTML5Audio', 'htmlaudio.php', 'HTML5的audio播放标签');

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsplf`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsplf` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `ismust` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewspltemp`
--

CREATE TABLE IF NOT EXISTS `swtx_enewspltemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `swtx_enewspltemp`
--

INSERT INTO `swtx_enewspltemp` (`tempid`, `tempname`, `temptext`, `isdefault`) VALUES
(1, '默认评论列表模板', '<!DOCTYPE HTML PUBLIC \\"-//W3C//DTD HTML 4.01 Transitional//EN\\">\r\n<html>\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\">\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<style type=\\"text/css\\">\r\n<!--\r\nbody,Table{ color: #222; font-size: 12px; }\r\na { color: #222; text-decoration: none; }\r\na:hover { color: #f00; text-decoration: underline; }\r\nh1 { font-size:32px; font-weight: bold; }\r\nh2 { color: #1e3a9e; font-size: 25px; font-weight: bold;  }\r\n.you { color: #1f3a87; font-size: 14px; }\r\n.text { font-size: 14px; padding-left: 5px; padding-right: 5px; line-height: 20px}\r\n.re a { color: #1f3a87; }\r\n.name { color: #1f3a87; }\r\n.name a { color: #1f3a87; text-decoration: underline;}\r\n.retext { background-color: #f3f3f3; width: 100%; float: left; padding-top: 22px; padding-bottom: 22px; border-top: 1px solid #ccc; }\r\n.retext textarea { width: 535px; height: 130px; float: left; margin-left: 60px; border-top-style: inset; border-top-width: 2px; border-left-style: inset; border-left-width: 2px; }\r\n.hrLine{BORDER-BOTTOM: #807d76 1px dotted;}\r\n\r\n.ecomment {margin:0;padding:0;}\r\n.ecomment {margin-bottom:12px;overflow-x:hidden;overflow-y:hidden;padding-bottom:3px;padding-left:3px;padding-right:3px;padding-top:3px;background:#FFFFEE;padding:3px;border:solid 1px #999;}\r\n.ecommentauthor {float:left; color:#F96; font-weight:bold;}\r\n.ecommenttext {clear:left;margin:0;padding:0;}\r\n-->\r\n</style>\r\n<script src=\\"[!--news.url--]e/data/js/ajax.js\\"></script>\r\n</head>\r\n\r\n<body topmargin=\\"0\\">\r\n<table width=\\"766\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\">\r\n  <tr>\r\n    <td width=\\"210\\"><a href=\\"[!--news.url--]\\"><img src=\\"[!--news.url--]skin/default/images/logo.gif\\" border=\\"0\\" /></a></td>\r\n    <td><h1>网友评论</h1></td>\r\n    <td><div align=\\"right\\"><a href=\\"#tosaypl\\"><strong><font color=\\"#FF0000\\">我也评两句</font></strong></a></div></td>\r\n  </tr>\r\n</table>\r\n<table width=\\"766\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\" bgcolor=\\"#222\\">\r\n  <tr>\r\n    <td height=\\"2\\"></td>\r\n  </tr>\r\n</table>\r\n<table width=\\"766\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\">\r\n  <tr> \r\n    <td height=\\"42\\"> \r\n      <h2>评论：<a href=\\"[!--titleurl--]\\" target=\\"_blank\\"><font color=\\"#1e3a9e\\">[!--title--]</font></a></h2></td>\r\n    <td><div align=\\"right\\"><a href=\\"[!--titleurl--]\\" target=\\"_blank\\">查看原文</a></div></td>\r\n  </tr>\r\n</table>\r\n<hr align=\\"center\\" width=\\"766\\" size=1 class=hrline>\r\n<table width=\\"766\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\" bgcolor=\\"#384EA3\\">\r\n  <form action=\\"../enews/index.php\\" method=\\"post\\" name=\\"infopfenform\\">\r\n    <input type=\\"hidden\\" name=\\"enews\\" value=\\"AddInfoPfen\\" />\r\n    <input type=\\"hidden\\" name=\\"classid\\" value=\\"[!--classid--]\\" />\r\n    <input type=\\"hidden\\" name=\\"id\\" value=\\"[!--id--]\\" />\r\n    <tr> \r\n      <td width=\\"50%\\" height=\\"27\\" valign=\\"middle\\"><font color=\\"#FFFFFF\\">&nbsp;评分: \r\n        <input type=\\"radio\\" name=\\"fen\\" value=\\"1\\">\r\n        1分 \r\n        <input type=\\"radio\\" name=\\"fen\\" value=\\"2\\">\r\n        2分 \r\n        <input name=\\"fen\\" type=\\"radio\\" value=\\"3\\" checked>\r\n        3分 \r\n        <input type=\\"radio\\" name=\\"fen\\" value=\\"4\\">\r\n        4分 \r\n        <input type=\\"radio\\" name=\\"fen\\" value=\\"5\\">\r\n        5分 \r\n        <input type=\\"submit\\" name=\\"Submit\\" value=\\"提交\\">\r\n        </font></td>\r\n      <td width=\\"50%\\" valign=\\"middle\\"><div align=\\"center\\"><font color=\\"#FFFFFF\\">平均得分: \r\n          <strong><span id=\\"pfendiv\\">[!--pinfopfen--]</span></strong> 分，共有 <strong>[!--infopfennum--]</strong> \r\n          人参与评分</font></div></td>\r\n    </tr>\r\n  </form>\r\n</table>\r\n<table width=\\"766\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\" bgcolor=\\"#CCCCCC\\">\r\n  <tr> \r\n    <td height=\\"30\\" bgcolor=\\"#FFFFFF\\"> \r\n      <table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n          <td width=\\"17%\\">&nbsp;&nbsp;&nbsp;网友评论</td>\r\n          <td width=\\"83%\\"><div align=\\"right\\">[!--listpage--]&nbsp;&nbsp;&nbsp;</div></td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n  <tr> \r\n    <td bgcolor=\\"#f8fcff\\"> [!--empirenews.listtemp--] \r\n      <table width=\\"96%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\" style=\\"word-break:break-all; word-wrap:break-all;\\">\r\n        <tr> \r\n          <td height=\\"30\\"><span class=\\"name\\">本站网友 [!--username--]</span> <font color=\\"#666666\\">ip:[!--plip--]</font></td>\r\n          <td><div align=\\"right\\"><font color=\\"#666666\\">[!--pltime--] 发表</font></div></td>\r\n        </tr>\r\n        <tr valign=\\"top\\"> \r\n          <td height=\\"50\\" colspan=\\"2\\" class=\\"text\\">[!--pltext--]</td>\r\n        </tr>\r\n        <tr> \r\n          <td height=\\"30\\">&nbsp;</td>\r\n          <td><div align=\\"right\\" class=\\"re\\"><a href=\\"#tosaypl\\"[!--includelink--]>回复</a>&nbsp; \r\n              <a href=\\"JavaScript:makeRequest(\\''../pl/doaction.php?enews=DoForPl&plid=[!--plid--]&classid=[!--classid--]&id=[!--id--]&dopl=1&doajax=1&ajaxarea=zcpldiv[!--plid--]\\'',\\''EchoReturnedText\\'',\\''GET\\'',\\''\\'');\\">支持</a>[<span id=\\"zcpldiv[!--plid--]\\">[!--zcnum--]</span>]&nbsp; \r\n              <a href=\\"JavaScript:makeRequest(\\''../pl/doaction.php?enews=DoForPl&plid=[!--plid--]&classid=[!--classid--]&id=[!--id--]&dopl=0&doajax=1&ajaxarea=fdpldiv[!--plid--]\\'',\\''EchoReturnedText\\'',\\''GET\\'',\\''\\'');\\">反对</a>[<span id=\\"fdpldiv[!--plid--]\\">[!--fdnum--]</span>]\r\n            </div></td>\r\n        </tr>\r\n      </table>\r\n      <table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr>\r\n          <td background=\\"[!--news.url--]skin/default/images/plhrbg.gif\\"></td>\r\n        </tr>\r\n      </table>\r\n      [!--empirenews.listtemp--] \r\n      <div align=\\"right\\"><br />\r\n        [!--listpage--]&nbsp;&nbsp;&nbsp;<br />\r\n        <br />\r\n        <font color=\\"#FF0000\\">网友评论仅供网友表达个人看法，并不表明本站同意其观点或证实其描述&nbsp;&nbsp;&nbsp;</font><br><br> </div></td>\r\n  </tr>\r\n  <script>\r\n  function CheckPl(obj)\r\n  {\r\n  	if(obj.saytext.value==\\"\\")\r\n  	{\r\n  		alert(\\"错误，评论不能为空\\");\r\n  		obj.saytext.focus();\r\n  		return false;\r\n  	}\r\n  	return true;\r\n  }\r\n  </script>\r\n  <form action=\\"../pl/doaction.php\\" method=\\"post\\" name=\\"saypl\\" id=\\"saypl\\" onsubmit=\\"return CheckPl(document.saypl)\\">\r\n  <tr id=\\"tosaypl\\"> \r\n    <td bgcolor=\\"#f8fcff\\"> <table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr> \r\n            <td width=\\"13%\\" height=\\"28\\">&nbsp;&nbsp;&nbsp;<span class=\\"you\\">我也评两句</span></td>\r\n            <td valign=\\"middle\\">用户名： \r\n              <input name=\\"username\\" type=\\"text\\" id=\\"username\\" size=\\"12\\" value=\\"[!--lusername--]\\" />\r\n            密码： \r\n            <input name=\\"password\\" type=\\"password\\" id=\\"password\\" size=\\"12\\" value=\\"[!--lpassword--]\\" />\r\n            验证码： \r\n            <input name=\\"key\\" type=\\"text\\" id=\\"key\\" size=\\"6\\" />\r\n              <img src=\\"[!--key.url--]\\" align=\\"middle\\" name=\\"plKeyImg\\" id=\\"plKeyImg\\" onclick=\\"plKeyImg.src=\\''[!--news.url--]e/ShowKey/?v=pl&t=\\''+Math.random()\\" title=\\"看不清楚,点击刷新\\" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\\"[!--news.url--]e/member/register/\\" target=\\"_blank\\">还没有注册？</a></td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n  <tr> \r\n    <td bgcolor=\\"#f8fcff\\"> <table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\" class=\\"retext\\">\r\n        <tr> \r\n          <td width=\\"78%\\"><div align=\\"center\\"> \r\n              <textarea name=\\"saytext\\" cols=\\"58\\" rows=\\"6\\" id=\\"saytext\\"></textarea>\r\n            </div></td>\r\n          <td width=\\"22%\\" rowspan=\\"2\\"> <div align=\\"center\\">\r\n              <input name=\\"nomember\\" type=\\"checkbox\\" id=\\"nomember\\" value=\\"1\\" checked=\\"checked\\" />\r\n                匿名发表<br>\r\n                <br />\r\n              <input name=\\"imageField\\" type=\\"submit\\" id=\\"imageField\\" value=\\" 提 交 \\" />\r\n            </div></td>\r\n        </tr>\r\n        <tr> \r\n          <td><div align=\\"center\\"> \r\n              <script src=\\"[!--news.url--]d/js/js/plface.js\\"></script>\r\n            </div></td>\r\n        </tr>\r\n      </table> </td>\r\n  </tr>\r\n  <input name=\\"id\\" type=\\"hidden\\" id=\\"id\\" value=\\"[!--id--]\\" />\r\n  <input name=\\"classid\\" type=\\"hidden\\" id=\\"classid\\" value=\\"[!--classid--]\\" />\r\n  <input name=\\"enews\\" type=\\"hidden\\" id=\\"enews\\" value=\\"AddPl\\" />\r\n  <input name=\\"repid\\" type=\\"hidden\\" id=\\"repid\\" value=\\"0\\" />\r\n  </form>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewspl_1`
--

CREATE TABLE IF NOT EXISTS `swtx_enewspl_1` (
  `plid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pubid` bigint(16) NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `sayip` varchar(20) NOT NULL DEFAULT '',
  `saytime` int(10) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `zcnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fdnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `saytext` text NOT NULL,
  `eipport` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`plid`),
  KEY `id` (`id`),
  KEY `classid` (`classid`),
  KEY `pubid` (`pubid`,`checked`,`plid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewspl_set`
--

CREATE TABLE IF NOT EXISTS `swtx_enewspl_set` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pltime` smallint(5) unsigned NOT NULL DEFAULT '0',
  `plsize` smallint(5) unsigned NOT NULL DEFAULT '0',
  `plincludesize` smallint(5) unsigned NOT NULL DEFAULT '0',
  `plkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `plface` text NOT NULL,
  `plfacenum` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `plgroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `plclosewords` text NOT NULL,
  `plf` text NOT NULL,
  `plmustf` text NOT NULL,
  `pldatatbs` text NOT NULL,
  `defpltempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pl_num` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pldeftb` smallint(5) unsigned NOT NULL DEFAULT '0',
  `plurl` varchar(200) NOT NULL DEFAULT '',
  `plmaxfloor` smallint(5) unsigned NOT NULL DEFAULT '0',
  `plquotetemp` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `swtx_enewspl_set`
--

INSERT INTO `swtx_enewspl_set` (`id`, `pltime`, `plsize`, `plincludesize`, `plkey_ok`, `plface`, `plfacenum`, `plgroupid`, `plclosewords`, `plf`, `plmustf`, `pldatatbs`, `defpltempid`, `pl_num`, `pldeftb`, `plurl`, `plmaxfloor`, `plquotetemp`) VALUES
(1, 20, 500, 0, 1, '||[~e.jy~]##1.gif||[~e.kq~]##2.gif||[~e.se~]##3.gif||[~e.sq~]##4.gif||[~e.lh~]##5.gif||[~e.ka~]##6.gif||[~e.hh~]##7.gif||[~e.ys~]##8.gif||[~e.ng~]##9.gif||[~e.ot~]##10.gif||', 10, 0, '', '', '', ',1,', 1, 12, 1, '/e/pl/', 0, '<div class=\\"ecomment\\">\r\n<span class=\\"ecommentauthor\\">网友 [!--username--] 的原文：</span>\r\n<p class=\\"ecommenttext\\">[!--pltext--]</p>\r\n</div>');

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewspostdata`
--

CREATE TABLE IF NOT EXISTS `swtx_enewspostdata` (
  `postid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rnd` varchar(32) NOT NULL DEFAULT '',
  `postdata` varchar(255) NOT NULL DEFAULT '',
  `ispath` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`postid`),
  KEY `rnd` (`rnd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewspostserver`
--

CREATE TABLE IF NOT EXISTS `swtx_enewspostserver` (
  `pid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pname` varchar(60) NOT NULL DEFAULT '',
  `purl` varchar(255) NOT NULL DEFAULT '',
  `ptype` tinyint(1) NOT NULL DEFAULT '0',
  `ftphost` varchar(255) NOT NULL DEFAULT '',
  `ftpport` varchar(20) NOT NULL DEFAULT '',
  `ftpusername` varchar(120) NOT NULL DEFAULT '',
  `ftppassword` varchar(120) NOT NULL DEFAULT '',
  `ftppath` varchar(255) NOT NULL DEFAULT '',
  `ftpmode` tinyint(1) NOT NULL DEFAULT '0',
  `ftpssl` tinyint(1) NOT NULL DEFAULT '0',
  `ftppasv` tinyint(1) NOT NULL DEFAULT '0',
  `ftpouttime` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lastposttime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`),
  KEY `ptype` (`ptype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `swtx_enewspostserver`
--

INSERT INTO `swtx_enewspostserver` (`pid`, `pname`, `purl`, `ptype`, `ftphost`, `ftpport`, `ftpusername`, `ftppassword`, `ftppath`, `ftpmode`, `ftpssl`, `ftppasv`, `ftpouttime`, `lastposttime`) VALUES
(1, '附件服务器', '', 1, '', '', '', '', '', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsprinttemp`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsprinttemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `swtx_enewsprinttemp`
--

INSERT INTO `swtx_enewsprinttemp` (`tempid`, `tempname`, `temptext`, `isdefault`, `showdate`, `modid`) VALUES
(1, '默认打印模板', '<html>\r\n<head>\r\n<meta http-equiv=\\"content-type\\" content=\\"text/html; charset=utf-8\\">\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<style>\r\nbody{font-family:宋体}td,.f12{font-size:12px}.f24 {font-size:24px;}.f14 {font-size:14px;}.title14 {font-size:14px;line-height:130%}.l17 {line-height:170%;}\r\n</style>\r\n</head>\r\n<body bgcolor=\\"#ffffff\\" topmargin=5 leftmargin=5 marginheight=5 marginwidth=5 onLoad=\\''window.print()\\''>\r\n<center>\r\n<table width=650 border=0 cellspacing=0 cellpadding=0>\r\n<tr>\r\n<td height=65 width=180><A href=\\"http://www.phome.net/\\"><IMG src=\\"../../skin/default/images/elogo.jpg\\" alt=\\"帝国软件\\" width=\\"180\\" height=\\"65\\" border=0></A></td> \r\n<td valign=\\"bottom\\">[!--url--]</td>\r\n<td width=\\"83\\" align=\\"right\\" valign=\\"bottom\\"><a href=\\''javascript:history.back()\\''>返回</a>　<a href=\\''javascript:window.print()\\''>打印</a></td>\r\n</tr>\r\n</table>\r\n<table width=650 border=0 cellpadding=0 cellspacing=20 bgcolor=\\"#EDF0F5\\">\r\n<tr>\r\n<td>\r\n<BR>\r\n<TABLE cellSpacing=0 cellPadding=0 width=\\"100%\\" border=0>\r\n<TBODY>\r\n<TR>\r\n<TH class=\\"f24\\"><FONT color=#05006c>[!--title--]</FONT></TH></TR>\r\n<TR>\r\n<TD>\r\n<HR SIZE=1 bgcolor=\\"#d9d9d9\\">\r\n</TD>\r\n</TR>\r\n<TR>\r\n<TD align=\\"middle\\" height=20><div align=\\"center\\">[!--writer--]&nbsp;&nbsp;[!--newstime--]&nbsp;&nbsp;[!--befrom--]</div></TD>\r\n</TR>\r\n<TR>\r\n<TD height=15></TD>\r\n</TR>\r\n<TR>\r\n<TD class=\\"l17\\">\r\n<FONT class=\\"f14\\" id=\\"zoom\\"> \r\n<P>[!--newstext--]<br>\r\n<BR clear=all>\r\n</P>\r\n</FONT>\r\n</TD>\r\n</TR>\r\n<TR height=10>\r\n<TD></TD>\r\n</TR>\r\n</TBODY>\r\n</TABLE>\r\n[!--titlelink--]\r\n</td>\r\n</tr>\r\n</table>\r\n</center>\r\n</body>\r\n</html>', 1, 'Y-m-d H:i:s', 1);

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewspublic`
--

CREATE TABLE IF NOT EXISTS `swtx_enewspublic` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `newsurl` varchar(120) NOT NULL DEFAULT '',
  `sitename` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `filetype` text NOT NULL,
  `filesize` int(11) NOT NULL DEFAULT '0',
  `hotnum` tinyint(4) NOT NULL DEFAULT '0',
  `newnum` tinyint(4) NOT NULL DEFAULT '0',
  `relistnum` int(11) NOT NULL DEFAULT '0',
  `renewsnum` int(11) NOT NULL DEFAULT '0',
  `min_keyboard` tinyint(4) NOT NULL DEFAULT '0',
  `max_keyboard` tinyint(4) NOT NULL DEFAULT '0',
  `search_num` tinyint(4) NOT NULL DEFAULT '0',
  `search_pagenum` tinyint(4) NOT NULL DEFAULT '0',
  `newslink` tinyint(4) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `searchtime` int(11) NOT NULL DEFAULT '0',
  `loginnum` smallint(6) NOT NULL DEFAULT '0',
  `logintime` int(11) NOT NULL DEFAULT '0',
  `addnews_ok` tinyint(1) NOT NULL DEFAULT '0',
  `register_ok` tinyint(1) NOT NULL DEFAULT '0',
  `indextype` varchar(10) NOT NULL DEFAULT '',
  `goodlencord` tinyint(4) NOT NULL DEFAULT '0',
  `goodtype` varchar(10) NOT NULL DEFAULT '',
  `goodnum` tinyint(4) NOT NULL DEFAULT '0',
  `searchtype` varchar(10) NOT NULL DEFAULT '',
  `exittime` smallint(6) NOT NULL DEFAULT '0',
  `smalltextlen` smallint(6) NOT NULL DEFAULT '0',
  `defaultgroupid` smallint(6) NOT NULL DEFAULT '0',
  `fileurl` varchar(255) NOT NULL DEFAULT '',
  `phpmode` tinyint(1) NOT NULL DEFAULT '0',
  `ftphost` varchar(255) NOT NULL DEFAULT '',
  `ftpport` varchar(20) NOT NULL DEFAULT '21',
  `ftpusername` varchar(120) NOT NULL DEFAULT '',
  `ftppassword` varchar(120) NOT NULL DEFAULT '',
  `ftppath` varchar(255) NOT NULL DEFAULT '',
  `ftpmode` tinyint(1) NOT NULL DEFAULT '0',
  `install` tinyint(1) NOT NULL DEFAULT '0',
  `hotplnum` tinyint(4) NOT NULL DEFAULT '0',
  `softversion` varchar(30) NOT NULL DEFAULT '0',
  `lctime` int(11) NOT NULL DEFAULT '0',
  `dorepnum` smallint(6) NOT NULL DEFAULT '0',
  `loadtempnum` smallint(6) NOT NULL DEFAULT '0',
  `firstnum` tinyint(4) NOT NULL DEFAULT '0',
  `bakdbpath` varchar(50) NOT NULL DEFAULT '',
  `bakdbzip` varchar(50) NOT NULL DEFAULT '',
  `downpass` varchar(32) NOT NULL DEFAULT '',
  `min_userlen` tinyint(4) NOT NULL DEFAULT '0',
  `max_userlen` tinyint(4) NOT NULL DEFAULT '0',
  `min_passlen` tinyint(4) NOT NULL DEFAULT '0',
  `max_passlen` tinyint(4) NOT NULL DEFAULT '0',
  `filechmod` tinyint(1) NOT NULL DEFAULT '0',
  `tid` smallint(6) NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `loginkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `limittype` tinyint(1) NOT NULL DEFAULT '0',
  `redodown` smallint(6) NOT NULL DEFAULT '0',
  `candocode` tinyint(1) NOT NULL DEFAULT '0',
  `opennotcj` tinyint(1) NOT NULL DEFAULT '0',
  `reuserpagenum` int(11) NOT NULL DEFAULT '0',
  `revotejsnum` int(11) NOT NULL DEFAULT '0',
  `readjsnum` int(11) NOT NULL DEFAULT '0',
  `qaddtran` tinyint(1) NOT NULL DEFAULT '0',
  `qaddtransize` int(11) NOT NULL DEFAULT '0',
  `ebakthisdb` tinyint(1) NOT NULL DEFAULT '0',
  `delnewsnum` int(11) NOT NULL DEFAULT '0',
  `markpos` tinyint(4) NOT NULL DEFAULT '0',
  `markimg` varchar(80) NOT NULL DEFAULT '',
  `marktext` varchar(80) NOT NULL DEFAULT '',
  `markfontsize` varchar(12) NOT NULL DEFAULT '',
  `markfontcolor` varchar(12) NOT NULL DEFAULT '',
  `markfont` varchar(80) NOT NULL DEFAULT '',
  `adminloginkey` tinyint(1) NOT NULL DEFAULT '0',
  `php_outtime` int(11) NOT NULL DEFAULT '0',
  `listpagefun` varchar(36) NOT NULL DEFAULT '',
  `textpagefun` varchar(36) NOT NULL DEFAULT '',
  `adfile` varchar(30) NOT NULL DEFAULT '',
  `notsaveurl` text NOT NULL,
  `jstempid` smallint(6) NOT NULL DEFAULT '0',
  `rssnum` smallint(6) NOT NULL DEFAULT '0',
  `rsssub` smallint(6) NOT NULL DEFAULT '0',
  `savetxtf` text NOT NULL,
  `dorepdlevelnum` int(11) NOT NULL DEFAULT '0',
  `listpagelistfun` varchar(36) NOT NULL DEFAULT '',
  `listpagelistnum` smallint(6) NOT NULL DEFAULT '0',
  `infolinknum` int(11) NOT NULL DEFAULT '0',
  `searchgroupid` smallint(6) NOT NULL DEFAULT '0',
  `opencopytext` tinyint(1) NOT NULL DEFAULT '0',
  `reuserjsnum` int(11) NOT NULL DEFAULT '0',
  `reuserlistnum` int(11) NOT NULL DEFAULT '0',
  `opentitleurl` tinyint(1) NOT NULL DEFAULT '0',
  `qaddtranimgtype` text NOT NULL,
  `qaddtranfile` tinyint(1) NOT NULL DEFAULT '0',
  `qaddtranfilesize` int(11) NOT NULL DEFAULT '0',
  `qaddtranfiletype` text NOT NULL,
  `sendmailtype` tinyint(1) NOT NULL DEFAULT '0',
  `smtphost` varchar(255) NOT NULL DEFAULT '',
  `fromemail` varchar(120) NOT NULL DEFAULT '',
  `loginemail` tinyint(1) NOT NULL DEFAULT '0',
  `emailusername` varchar(60) NOT NULL DEFAULT '',
  `emailpassword` varchar(60) NOT NULL DEFAULT '',
  `smtpport` varchar(20) NOT NULL DEFAULT '',
  `emailname` varchar(120) NOT NULL DEFAULT '',
  `deftempid` smallint(6) NOT NULL DEFAULT '0',
  `feedbacktfile` tinyint(1) NOT NULL DEFAULT '0',
  `feedbackfilesize` int(11) NOT NULL DEFAULT '0',
  `feedbackfiletype` text NOT NULL,
  `searchtempvar` tinyint(1) NOT NULL DEFAULT '0',
  `showinfolevel` smallint(6) NOT NULL DEFAULT '0',
  `navfh` varchar(20) NOT NULL DEFAULT '',
  `spicwidth` smallint(6) NOT NULL DEFAULT '0',
  `spicheight` smallint(6) NOT NULL DEFAULT '0',
  `spickill` tinyint(1) NOT NULL DEFAULT '0',
  `jpgquality` tinyint(4) NOT NULL DEFAULT '0',
  `markpct` tinyint(4) NOT NULL DEFAULT '0',
  `redoview` smallint(6) NOT NULL DEFAULT '0',
  `reggetfen` smallint(6) NOT NULL DEFAULT '0',
  `regbooktime` smallint(6) NOT NULL DEFAULT '0',
  `revotetime` smallint(6) NOT NULL DEFAULT '0',
  `nreclass` text NOT NULL,
  `nreinfo` text NOT NULL,
  `nrejs` text NOT NULL,
  `fpath` tinyint(1) NOT NULL DEFAULT '0',
  `filepath` varchar(30) NOT NULL DEFAULT '',
  `openmembertranimg` tinyint(1) NOT NULL DEFAULT '0',
  `memberimgsize` int(11) NOT NULL DEFAULT '0',
  `memberimgtype` text NOT NULL,
  `openmembertranfile` tinyint(1) NOT NULL DEFAULT '0',
  `memberfilesize` int(11) NOT NULL DEFAULT '0',
  `memberfiletype` text NOT NULL,
  `nottobq` text NOT NULL,
  `defspacestyleid` smallint(6) NOT NULL DEFAULT '0',
  `canposturl` text NOT NULL,
  `openspace` tinyint(1) NOT NULL DEFAULT '0',
  `defadminstyle` smallint(6) NOT NULL DEFAULT '0',
  `realltime` smallint(6) NOT NULL DEFAULT '0',
  `closeip` text NOT NULL,
  `openip` text NOT NULL,
  `hopenip` text NOT NULL,
  `closewords` text NOT NULL,
  `closewordsf` text NOT NULL,
  `textpagelistnum` smallint(6) NOT NULL DEFAULT '0',
  `memberlistlevel` smallint(6) NOT NULL DEFAULT '0',
  `wapopen` tinyint(1) NOT NULL DEFAULT '0',
  `wapdefstyle` smallint(6) NOT NULL DEFAULT '0',
  `wapshowmid` varchar(255) NOT NULL DEFAULT '',
  `waplistnum` tinyint(4) NOT NULL DEFAULT '0',
  `wapsubtitle` tinyint(4) NOT NULL DEFAULT '0',
  `wapshowdate` varchar(50) NOT NULL DEFAULT '',
  `wapchar` tinyint(1) NOT NULL DEFAULT '0',
  `ebakcanlistdb` tinyint(1) NOT NULL DEFAULT '0',
  `paymoneytofen` int(11) NOT NULL DEFAULT '0',
  `payminmoney` int(11) NOT NULL DEFAULT '0',
  `keytog` tinyint(1) NOT NULL DEFAULT '0',
  `keyrnd` varchar(60) NOT NULL DEFAULT '',
  `keytime` int(11) NOT NULL DEFAULT '0',
  `regkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `opengetdown` tinyint(1) NOT NULL DEFAULT '0',
  `gbkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `fbkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `newaddinfotime` smallint(6) NOT NULL DEFAULT '0',
  `classnavline` smallint(6) NOT NULL DEFAULT '0',
  `classnavfh` varchar(120) NOT NULL DEFAULT '',
  `adminstyle` text NOT NULL,
  `sitekey` varchar(255) NOT NULL DEFAULT '',
  `siteintro` text NOT NULL,
  `docnewsnum` int(11) NOT NULL DEFAULT '0',
  `openschall` tinyint(1) NOT NULL DEFAULT '0',
  `schallfield` tinyint(1) NOT NULL DEFAULT '0',
  `schallminlen` tinyint(4) NOT NULL DEFAULT '0',
  `schallmaxlen` tinyint(4) NOT NULL DEFAULT '0',
  `schallnotcid` text NOT NULL,
  `schallnum` smallint(6) NOT NULL DEFAULT '0',
  `schallpagenum` smallint(6) NOT NULL DEFAULT '0',
  `dtcanbq` tinyint(1) NOT NULL DEFAULT '0',
  `dtcachetime` int(11) NOT NULL DEFAULT '0',
  `regretime` smallint(6) NOT NULL DEFAULT '0',
  `regclosewords` text NOT NULL,
  `regemailonly` tinyint(1) NOT NULL DEFAULT '0',
  `repkeynum` smallint(6) NOT NULL DEFAULT '0',
  `getpasstime` int(11) NOT NULL DEFAULT '0',
  `acttime` int(11) NOT NULL DEFAULT '0',
  `regacttype` tinyint(1) NOT NULL DEFAULT '0',
  `acttext` text NOT NULL,
  `getpasstext` text NOT NULL,
  `acttitle` varchar(120) NOT NULL DEFAULT '',
  `getpasstitle` varchar(120) NOT NULL DEFAULT '',
  `opengetpass` tinyint(1) NOT NULL DEFAULT '0',
  `hlistinfonum` int(11) NOT NULL DEFAULT '0',
  `qlistinfonum` int(11) NOT NULL DEFAULT '0',
  `dtncanbq` tinyint(1) NOT NULL DEFAULT '0',
  `dtncachetime` int(11) NOT NULL DEFAULT '0',
  `readdinfotime` smallint(6) NOT NULL DEFAULT '0',
  `qeditinfotime` int(11) NOT NULL DEFAULT '0',
  `ftpssl` tinyint(1) NOT NULL DEFAULT '0',
  `ftppasv` tinyint(1) NOT NULL DEFAULT '0',
  `ftpouttime` smallint(6) NOT NULL DEFAULT '0',
  `onclicktype` tinyint(1) NOT NULL DEFAULT '0',
  `onclickfilesize` int(11) NOT NULL DEFAULT '0',
  `onclickfiletime` int(11) NOT NULL DEFAULT '0',
  `schalltime` smallint(6) NOT NULL DEFAULT '0',
  `defprinttempid` smallint(6) NOT NULL DEFAULT '0',
  `opentags` tinyint(1) NOT NULL DEFAULT '0',
  `tagstempid` smallint(6) NOT NULL DEFAULT '0',
  `usetags` text NOT NULL,
  `chtags` text NOT NULL,
  `tagslistnum` smallint(6) NOT NULL DEFAULT '0',
  `closeqdt` tinyint(1) NOT NULL DEFAULT '0',
  `settop` tinyint(1) NOT NULL DEFAULT '0',
  `qlistinfomod` tinyint(1) NOT NULL DEFAULT '0',
  `gb_num` tinyint(4) NOT NULL DEFAULT '0',
  `member_num` tinyint(4) NOT NULL DEFAULT '0',
  `space_num` tinyint(4) NOT NULL DEFAULT '0',
  `opendoip` text NOT NULL,
  `closedoip` text NOT NULL,
  `doiptype` varchar(255) NOT NULL DEFAULT '',
  `filelday` int(11) NOT NULL DEFAULT '0',
  `infolday` int(11) NOT NULL DEFAULT '0',
  `baktempnum` tinyint(4) NOT NULL DEFAULT '0',
  `dorepkey` tinyint(1) NOT NULL DEFAULT '0',
  `dorepword` tinyint(1) NOT NULL DEFAULT '0',
  `onclickrnd` varchar(20) NOT NULL DEFAULT '',
  `indexpagedt` tinyint(1) NOT NULL DEFAULT '0',
  `keybgcolor` varchar(8) NOT NULL DEFAULT '',
  `keyfontcolor` varchar(8) NOT NULL DEFAULT '',
  `keydistcolor` varchar(8) NOT NULL DEFAULT '',
  `indexpageid` smallint(6) NOT NULL DEFAULT '0',
  `closeqdtmsg` varchar(255) NOT NULL DEFAULT '',
  `openfileserver` tinyint(1) NOT NULL DEFAULT '0',
  `closemods` varchar(255) NOT NULL DEFAULT '',
  `fieldandtop` tinyint(1) NOT NULL DEFAULT '0',
  `fieldandclosetb` text NOT NULL,
  `filedatatbs` text NOT NULL,
  `filedeftb` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closelisttemp` varchar(255) NOT NULL DEFAULT '',
  `chclasscolor` varchar(8) NOT NULL DEFAULT '',
  `timeclose` varchar(255) NOT NULL DEFAULT '',
  `timeclosedo` varchar(255) NOT NULL DEFAULT '',
  `ipaddinfonum` int(10) unsigned NOT NULL DEFAULT '0',
  `ipaddinfotime` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rewriteinfo` varchar(120) NOT NULL DEFAULT '',
  `rewriteclass` varchar(120) NOT NULL DEFAULT '',
  `rewriteinfotype` varchar(120) NOT NULL DEFAULT '',
  `rewritetags` varchar(120) NOT NULL DEFAULT '',
  `closehmenu` varchar(80) NOT NULL DEFAULT '',
  `indexaddpage` tinyint(1) NOT NULL DEFAULT '0',
  `rewritepl` varchar(150) NOT NULL DEFAULT '',
  `modmemberedittran` tinyint(1) NOT NULL DEFAULT '0',
  `modinfoedittran` tinyint(1) NOT NULL DEFAULT '0',
  `php_adminouttime` int(11) NOT NULL DEFAULT '0',
  `httptype` tinyint(1) NOT NULL DEFAULT '0',
  `qinfoaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `bakescapetype` tinyint(1) NOT NULL DEFAULT '0',
  `hkeytime` int(11) NOT NULL DEFAULT '0',
  `hkeyrnd` varchar(60) NOT NULL DEFAULT '',
  `mhavedatedo` tinyint(1) NOT NULL DEFAULT '0',
  `reportkey` tinyint(1) NOT NULL DEFAULT '0',
  `wapchstyle` tinyint(1) NOT NULL DEFAULT '0',
  `usetotalnum` tinyint(1) NOT NULL DEFAULT '0',
  `spacegids` varchar(255) NOT NULL DEFAULT '',
  `candocodetag` tinyint(1) NOT NULL DEFAULT '0',
  `openern` varchar(255) NOT NULL DEFAULT '',
  `ernurl` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `swtx_enewspublic`
--

INSERT INTO `swtx_enewspublic` (`id`, `newsurl`, `sitename`, `email`, `filetype`, `filesize`, `hotnum`, `newnum`, `relistnum`, `renewsnum`, `min_keyboard`, `max_keyboard`, `search_num`, `search_pagenum`, `newslink`, `checked`, `searchtime`, `loginnum`, `logintime`, `addnews_ok`, `register_ok`, `indextype`, `goodlencord`, `goodtype`, `goodnum`, `searchtype`, `exittime`, `smalltextlen`, `defaultgroupid`, `fileurl`, `phpmode`, `ftphost`, `ftpport`, `ftpusername`, `ftppassword`, `ftppath`, `ftpmode`, `install`, `hotplnum`, `softversion`, `lctime`, `dorepnum`, `loadtempnum`, `firstnum`, `bakdbpath`, `bakdbzip`, `downpass`, `min_userlen`, `max_userlen`, `min_passlen`, `max_passlen`, `filechmod`, `tid`, `tbname`, `loginkey_ok`, `limittype`, `redodown`, `candocode`, `opennotcj`, `reuserpagenum`, `revotejsnum`, `readjsnum`, `qaddtran`, `qaddtransize`, `ebakthisdb`, `delnewsnum`, `markpos`, `markimg`, `marktext`, `markfontsize`, `markfontcolor`, `markfont`, `adminloginkey`, `php_outtime`, `listpagefun`, `textpagefun`, `adfile`, `notsaveurl`, `jstempid`, `rssnum`, `rsssub`, `savetxtf`, `dorepdlevelnum`, `listpagelistfun`, `listpagelistnum`, `infolinknum`, `searchgroupid`, `opencopytext`, `reuserjsnum`, `reuserlistnum`, `opentitleurl`, `qaddtranimgtype`, `qaddtranfile`, `qaddtranfilesize`, `qaddtranfiletype`, `sendmailtype`, `smtphost`, `fromemail`, `loginemail`, `emailusername`, `emailpassword`, `smtpport`, `emailname`, `deftempid`, `feedbacktfile`, `feedbackfilesize`, `feedbackfiletype`, `searchtempvar`, `showinfolevel`, `navfh`, `spicwidth`, `spicheight`, `spickill`, `jpgquality`, `markpct`, `redoview`, `reggetfen`, `regbooktime`, `revotetime`, `nreclass`, `nreinfo`, `nrejs`, `fpath`, `filepath`, `openmembertranimg`, `memberimgsize`, `memberimgtype`, `openmembertranfile`, `memberfilesize`, `memberfiletype`, `nottobq`, `defspacestyleid`, `canposturl`, `openspace`, `defadminstyle`, `realltime`, `closeip`, `openip`, `hopenip`, `closewords`, `closewordsf`, `textpagelistnum`, `memberlistlevel`, `wapopen`, `wapdefstyle`, `wapshowmid`, `waplistnum`, `wapsubtitle`, `wapshowdate`, `wapchar`, `ebakcanlistdb`, `paymoneytofen`, `payminmoney`, `keytog`, `keyrnd`, `keytime`, `regkey_ok`, `opengetdown`, `gbkey_ok`, `fbkey_ok`, `newaddinfotime`, `classnavline`, `classnavfh`, `adminstyle`, `sitekey`, `siteintro`, `docnewsnum`, `openschall`, `schallfield`, `schallminlen`, `schallmaxlen`, `schallnotcid`, `schallnum`, `schallpagenum`, `dtcanbq`, `dtcachetime`, `regretime`, `regclosewords`, `regemailonly`, `repkeynum`, `getpasstime`, `acttime`, `regacttype`, `acttext`, `getpasstext`, `acttitle`, `getpasstitle`, `opengetpass`, `hlistinfonum`, `qlistinfonum`, `dtncanbq`, `dtncachetime`, `readdinfotime`, `qeditinfotime`, `ftpssl`, `ftppasv`, `ftpouttime`, `onclicktype`, `onclickfilesize`, `onclickfiletime`, `schalltime`, `defprinttempid`, `opentags`, `tagstempid`, `usetags`, `chtags`, `tagslistnum`, `closeqdt`, `settop`, `qlistinfomod`, `gb_num`, `member_num`, `space_num`, `opendoip`, `closedoip`, `doiptype`, `filelday`, `infolday`, `baktempnum`, `dorepkey`, `dorepword`, `onclickrnd`, `indexpagedt`, `keybgcolor`, `keyfontcolor`, `keydistcolor`, `indexpageid`, `closeqdtmsg`, `openfileserver`, `closemods`, `fieldandtop`, `fieldandclosetb`, `filedatatbs`, `filedeftb`, `closelisttemp`, `chclasscolor`, `timeclose`, `timeclosedo`, `ipaddinfonum`, `ipaddinfotime`, `rewriteinfo`, `rewriteclass`, `rewriteinfotype`, `rewritetags`, `closehmenu`, `indexaddpage`, `rewritepl`, `modmemberedittran`, `modinfoedittran`, `php_adminouttime`, `httptype`, `qinfoaddfen`, `bakescapetype`, `hkeytime`, `hkeyrnd`, `mhavedatedo`, `reportkey`, `wapchstyle`, `usetotalnum`, `spacegids`, `candocodetag`, `openern`, `ernurl`) VALUES
(1, '/', '舜王通信', 'admin@shunking.cn', '|.png|.gif|.jpg|.swf|.rar|.zip|.mp3|.wmv|.txt|.doc|', 20480, 10, 10, 8, 100, 2, 20, 20, 10, 0, 0, 30, 5, 60, 1, 0, '.html', 0, '', 10, '.html', 40, 160, 1, '/d/file/', 0, '', '21', '', '', '', 0, 0, 10, '7.5,1502985610', 1222406370, 300, 50, 10, 'bdata', 'zip', 'xBj7IO8yaZeyxtaY319v', 3, 20, 6, 20, 1, 1, 'news', 0, 0, 1, 1, 0, 50, 100, 100, 1, 50, 1, 300, 5, '../data/mark/maskdef.gif', '', '5', '', '../data/mark/cour.ttf', 1, 0, 'sys_ShowListPage', 'sys_ShowTextPage', 'thea', '', 1, 50, 300, ',', 300, 'sys_ShowListMorePage', 10, 100, 0, 0, 100, 8, 1, '|.gif|.jpg|', 1, 500, '|.zip|.rar|', 1, 'smtp.163.com', 'ecms@163.com', 1, 'ecms', 'ecms', '25', '帝国CMS', 0, 1, 500, '|.zip|.rar|', 1, 2, '>', 105, 118, 1, 80, 65, 24, 0, 30, 30, ',3,', ',3,', ',3,', 2, '', 1, 50, '|.gif|.jpg|', 1, 500, '|.zip|.rar|', ',', 1, '', 1, 1, 0, '', '', '', '', '', 6, 2, 0, 1, '', 10, 30, 'm-d', 2, 0, 10, 1, 2, 'Ixw7VlNHzcEXNNHbKSMYHsenz1z3d2Hu', 900, 0, 0, 0, 0, 0, 20, '&nbsp;|&nbsp;', ',1,2,', '', '', 300, 0, 1, 3, 20, ',,', 20, 10, 1, 43200, 0, '', 1, 0, 72, 720, 0, '[!--username--] ，\r\n这封信是由 [!--sitename--] 发送的。\r\n\r\n您收到这封邮件，是因为在我们网站的新用户注册 Email 使用\r\n了您的地址。如果您并没有访问过我们的网站，或没有进行上述操作，请忽\r\n略这封邮件。您不需要退订或进行其他进一步的操作。\r\n\r\n----------------------------------------------------------------------\r\n帐号激活说明\r\n----------------------------------------------------------------------\r\n\r\n您是我们网站的新用户，注册 Email 时使用了本地址，我们需\r\n要对您的地址有效性进行验证以避免垃圾邮件或地址被滥用。\r\n\r\n您只需点击下面的链接即可激活您的帐号：\r\n\r\n[!--pageurl--]\r\n\r\n(如果上面不是链接形式，请将地址手工粘贴到浏览器地址栏再访问)\r\n\r\n感谢您的访问，祝您使用愉快！\r\n\r\n\r\n\r\n此致\r\n\r\n[!--sitename--] 管理团队.\r\n[!--news.url--]', '[!--username--] ，\r\n这封信是由 [!--sitename--] 发送的。\r\n\r\n您收到这封邮件，是因为在我们的网站上这个邮箱地址被登记为用户邮箱，\r\n且该用户请求使用 Email 密码重置功能所致。\r\n\r\n----------------------------------------------------------------------\r\n重要！\r\n----------------------------------------------------------------------\r\n\r\n如果您没有提交密码重置的请求或不是我们网站的注册用户，请立即忽略\r\n并删除这封邮件。只在您确认需要重置密码的情况下，才继续阅读下面的\r\n内容。\r\n\r\n----------------------------------------------------------------------\r\n密码重置说明\r\n----------------------------------------------------------------------\r\n\r\n您只需在提交请求后的三天之内，通过点击下面的链接重置您的密码：\r\n\r\n[!--pageurl--]\r\n\r\n(如果上面不是链接形式，请将地址手工粘贴到浏览器地址栏再访问)\r\n\r\n上面的页面打开后，输入新的密码后提交，之后您即可使用新的密码登录\r\n网站了。您可以在用户控制面板中随时修改您的密码。\r\n\r\n\r\n\r\n此致\r\n\r\n[!--sitename--] 管理团队.\r\n[!--news.url--]', '[[!--sitename--]] Email 地址验证', '[[!--sitename--]] 取回密码说明', 0, 30, 25, 1, 43200, 60, 0, 0, 0, 0, 0, 10, 60, 0, 1, 1, 1, ',1,2,3,4,5,6,7,8,', '', 25, 0, 0, 0, 20, 20, 25, '', '', '', 0, 0, 3, 0, 0, '', 0, '', '', '', 0, '', 0, ',error,gb,fb,', 0, '', ',1,', 1, '', '99C4E3', '', '', 0, 0, '', '', '', '', '', 0, '', 0, 0, 1000, 0, 0, 1, 30, '9a2hs35s6gDDUSXhtK2QLGpHwqWutmlLxOJq', 0, 0, 0, 0, '', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewspublicadd`
--

CREATE TABLE IF NOT EXISTS `swtx_enewspublicadd` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `ctimeopen` tinyint(1) NOT NULL DEFAULT '0',
  `ctimelast` int(10) unsigned NOT NULL DEFAULT '0',
  `ctimeindex` int(11) NOT NULL DEFAULT '0',
  `ctimeclass` int(11) NOT NULL DEFAULT '0',
  `ctimelist` int(11) NOT NULL DEFAULT '0',
  `ctimetext` int(11) NOT NULL DEFAULT '0',
  `ctimett` int(11) NOT NULL DEFAULT '0',
  `ctimetags` int(11) NOT NULL DEFAULT '0',
  `ctimegids` varchar(255) NOT NULL DEFAULT '',
  `ctimecids` varchar(255) NOT NULL DEFAULT '',
  `ctimernd` varchar(60) NOT NULL DEFAULT '',
  `ctimeaddre` tinyint(4) NOT NULL DEFAULT '0',
  `ctimeqaddre` tinyint(4) NOT NULL DEFAULT '0',
  `autodoopen` tinyint(1) NOT NULL DEFAULT '0',
  `autodouser` varchar(30) NOT NULL DEFAULT '',
  `autodopass` varchar(32) NOT NULL DEFAULT '',
  `autodosalt` varchar(20) NOT NULL DEFAULT '',
  `autodoshowkey` tinyint(1) NOT NULL DEFAULT '0',
  `autodotime` int(11) NOT NULL DEFAULT '0',
  `autodoline` int(11) NOT NULL DEFAULT '0',
  `autodovar` varchar(20) NOT NULL DEFAULT '',
  `autodoval` varchar(60) NOT NULL DEFAULT '',
  `autodoshow` tinyint(1) NOT NULL DEFAULT '0',
  `autodofile` tinyint(1) NOT NULL DEFAULT '0',
  `autodopostpass` varchar(120) NOT NULL DEFAULT '',
  `autodoss` tinyint(1) NOT NULL DEFAULT '0',
  `autodoaction` varchar(200) NOT NULL DEFAULT '',
  `autodock` tinyint(1) NOT NULL DEFAULT '0',
  `digglevel` int(11) NOT NULL DEFAULT '0',
  `diggcmids` varchar(255) NOT NULL DEFAULT '',
  `toqjf` text NOT NULL,
  `qtoqjf` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `swtx_enewspublicadd`
--

INSERT INTO `swtx_enewspublicadd` (`id`, `ctimeopen`, `ctimelast`, `ctimeindex`, `ctimeclass`, `ctimelist`, `ctimetext`, `ctimett`, `ctimetags`, `ctimegids`, `ctimecids`, `ctimernd`, `ctimeaddre`, `ctimeqaddre`, `autodoopen`, `autodouser`, `autodopass`, `autodosalt`, `autodoshowkey`, `autodotime`, `autodoline`, `autodovar`, `autodoval`, `autodoshow`, `autodofile`, `autodopostpass`, `autodoss`, `autodoaction`, `autodock`, `digglevel`, `diggcmids`, `toqjf`, `qtoqjf`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 'DoZvKuRmlSuIrIJ8hCkkhvbi3cbGtXr3o6dNobpLBh', 0, 0, 0, '', '', '', 0, 100, 12, '', '', 1, 0, '8fLAJHpsAGyhoKWHHnLA7Htq9U42UnAzaIRuURA1xvbxQ6LPUy8U9hT26wTV', 0, ',emp,', 0, 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewspublic_fc`
--

CREATE TABLE IF NOT EXISTS `swtx_enewspublic_fc` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `fclastindex` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `swtx_enewspublic_fc`
--

INSERT INTO `swtx_enewspublic_fc` (`id`, `fclastindex`) VALUES
(1, 1600855576);

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewspublic_up`
--

CREATE TABLE IF NOT EXISTS `swtx_enewspublic_up` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `lasttimeinfo` int(10) unsigned NOT NULL DEFAULT '0',
  `lasttimepl` int(10) unsigned NOT NULL DEFAULT '0',
  `lastnuminfo` int(10) unsigned NOT NULL DEFAULT '0',
  `lastnumpl` int(10) unsigned NOT NULL DEFAULT '0',
  `lastnuminfotb` text NOT NULL,
  `lastnumpltb` text NOT NULL,
  `todaytimeinfo` int(10) unsigned NOT NULL DEFAULT '0',
  `todaytimepl` int(10) unsigned NOT NULL DEFAULT '0',
  `todaynuminfo` int(10) unsigned NOT NULL DEFAULT '0',
  `yesterdaynuminfo` int(10) unsigned NOT NULL DEFAULT '0',
  `todaynumpl` int(10) unsigned NOT NULL DEFAULT '0',
  `yesterdaynumpl` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `swtx_enewspublic_up`
--

INSERT INTO `swtx_enewspublic_up` (`id`, `lasttimeinfo`, `lasttimepl`, `lastnuminfo`, `lastnumpl`, `lastnuminfotb`, `lastnumpltb`, `todaytimeinfo`, `todaytimepl`, `todaynuminfo`, `yesterdaynuminfo`, `todaynumpl`, `yesterdaynumpl`) VALUES
(1, 1355124469, 1355124476, 9, 0, '|1,9|', '', 1600854176, 1600854176, 9, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewspubtemp`
--

CREATE TABLE IF NOT EXISTS `swtx_enewspubtemp` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `indextemp` mediumtext NOT NULL,
  `cptemp` mediumtext NOT NULL,
  `searchtemp` mediumtext NOT NULL,
  `searchjstemp` mediumtext NOT NULL,
  `searchjstemp1` mediumtext NOT NULL,
  `otherlinktemp` mediumtext NOT NULL,
  `downsofttemp` text NOT NULL,
  `onlinemovietemp` text NOT NULL,
  `listpagetemp` text NOT NULL,
  `gbooktemp` mediumtext NOT NULL,
  `loginiframe` mediumtext NOT NULL,
  `otherlinktempsub` tinyint(4) NOT NULL DEFAULT '0',
  `otherlinktempdate` varchar(20) NOT NULL DEFAULT '',
  `loginjstemp` mediumtext NOT NULL,
  `downpagetemp` mediumtext NOT NULL,
  `pljstemp` mediumtext NOT NULL,
  `schalltemp` mediumtext NOT NULL,
  `schallsubnum` smallint(6) NOT NULL DEFAULT '0',
  `schalldate` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `swtx_enewspubtemp`
--

INSERT INTO `swtx_enewspubtemp` (`id`, `indextemp`, `cptemp`, `searchtemp`, `searchjstemp`, `searchjstemp1`, `otherlinktemp`, `downsofttemp`, `onlinemovietemp`, `listpagetemp`, `gbooktemp`, `loginiframe`, `otherlinktempsub`, `otherlinktempdate`, `loginjstemp`, `downpagetemp`, `pljstemp`, `schalltemp`, `schallsubnum`, `schalldate`) VALUES
(1, '<!doctype html>\r\n<html lang=\\"zh-cn\\">\r\n<head>\r\n<meta charset=\\"UTF-8\\">\r\n<meta name=\\"viewport\\" content=\\"width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\\">\r\n<meta http-equiv=\\"X-UA-Compatible\\" content=\\"ie=edge\\">\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=UTF-8\\" />\r\n<script>if(navigator.userAgent.toLocaleLowerCase().indexOf(\\"baidu\\") == -1){document.title =\\"「舜王通信」- 成都舜王科技有限公司综合业务部\\"}</script>  \r\n<title>成都400电话_成都400电话申请办理_成都办理400电话_成都400电话申请_成都400电话办理 - 舜王通信 - 成都舜王科技有限公司综合业务部</title>\r\n<meta name=\\"keywords\\" content=\\"成都400电话,成都400电话申请办理,成都办理400电话,成都400电话申请,成都400电话办理,舜王通信,成都舜王科技有限公司综合业务部\\" />\r\n<meta name=\\"description\\" content=\\"成都本地400电话办理服务中心,专为成都本地企业提供400电话办理,申请,资费,号码,业务等相关资讯及办理,舜王通信提供专业、实惠、快速的服务。如需办理400电话或资讯业务,请拨打400-028-1238\\" />\r\n<link rel=\\"stylesheet\\" href=\\"style/css/index.css\\">\r\n<link rel=\\"stylesheet\\" href=\\"style/css/bottom.css\\">\r\n<style>\r\n.slideBox {\r\n	height: 400px;\r\n	width: 100%;\r\n	overflow: hidden;\r\n	position: relative;\r\n}\r\n.slideBox .hd {\r\n	height: 15px;\r\n	overflow: hidden;\r\n	position: absolute;\r\n	left: 50%;\r\n	margin-left: -30px;\r\n	bottom: 10px;\r\n	z-index: 1;\r\n}\r\n.slideBox .hd ul {\r\n	overflow: hidden;\r\n	zoom: 1;\r\n	float: left;\r\n}\r\n.slideBox .hd ul li {\r\n	float: left;\r\n	margin-right: 4px;\r\n	width: 8px;\r\n	height: 8px;\r\n	line-height: 14px;\r\n	text-align: center;\r\n	background: #fff;\r\n	cursor: pointer;\r\n	border-radius: 50%\r\n}\r\n.slideBox .hd ul li.on {\r\n	background: #317ee7;\r\n	color: #fff;\r\n}\r\n.slideBox .bd {\r\n	position: relative;\r\n	height: 100%;\r\n	z-index: 0;\r\n}\r\n.slideBox .bd .banner {\r\n	zoom: 1;\r\n	vertical-align: middle;\r\n}\r\n</style>\r\n</head>\r\n<body data-index=\\"0\\">\r\n<!--head B-->\r\n<div class=\\"head\\">\r\n  <div class=\\"wrap cf\\">\r\n<h1>舜王通信400</h1>\r\n<div id=\\"logo\\" class=\\"logo fl\\"> <a href=\\"/\\"> <img src=\\"style/images/logo.png\\" alt=\\"成都400电话\\" width=\\"178\\" height=\\"50\\"> </a> </div>\r\n<div class=\\"fl slogan\\"><img src=\\"style/images/lg2.png\\" alt=\\"成都400电话\\" width=\\"275\\" height=\\"59\\"> </div>\r\n<div class=\\"fr callMe cf\\">\r\n  <div class=\\"fl icon-phone\\"></div>\r\n  <div class=\\"fl hotline\\">\r\n<p class=\\"hotline-title\\">全国400服务热线</p>\r\n<p class=\\"hotline-num\\">400-028-1238</p>\r\n  </div>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--head E--> \r\n<!--nav B-->\r\n<div class=\\"nav\\">\r\n  <div class=\\"wrap\\"> <a > <span>首页</span>\r\n<div class=\\"bg-block\\"></div>\r\n</a> <a href=\\"./understand400-jiazhi.html\\"> <span>400的价值</span>\r\n<div class=\\"bg-block\\"></div>\r\n</a> <a href=\\"./allfunction.html\\"> <span>实用功能</span>\r\n<div class=\\"bg-block\\"></div>\r\n</a> <a href=\\"Customercase.html\\"> <span>选号指南</span>\r\n<div class=\\"bg-block\\"></div>\r\n</a> <a class=\\"hot\\" href=\\"./158.html\\"> <span>热销套餐</span>\r\n<div class=\\"bg-block\\"></div>\r\n</a> <a href=\\"./list.html\\"> <span>成功案例</span>\r\n<div class=\\"bg-block\\"></div>\r\n</a> <a href=\\"./aboutus.html\\"> <span>关于我们</span> \r\n<div class=\\"bg-block\\"></div>\r\n</a> </div>\r\n</div>\r\n<!--nav E--> \r\n<!--banner-->\r\n<div class=\\"slideBox\\">\r\n  <div class=\\"hd\\">\r\n<ul>\r\n  <li></li>\r\n  <li></li>\r\n  <li></li>\r\n  <li></li>\r\n  <li></li>\r\n</ul>\r\n  </div>\r\n  <div class=\\"bd\\">\r\n<div class=\\"banner-box banner-kf\\" data-agl-cvt=\\"1\\">\r\n  <div class=\\"banner banner1\\"></div>\r\n  <div class=\\"banner banner2\\"></div>\r\n  <div class=\\"banner banner3\\"></div>\r\n  <div class=\\"banner banner4\\"></div>\r\n  <div class=\\"banner banner5\\"></div>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--新年视频--> \r\n<!--<div class=\\"new-year\\">\r\n<div class=\\"new-year-video\\" id=\\"new-year-video\\">\r\n   <div id=\\"new-year-video-btn\\"></div>\r\n</div>\r\n</div>-->\r\n<!--400 核心 A-->\r\n<div class=\\"wrap telephone\\">\r\n  <h2 class=\\"tit\\">舜王通信·秒杀号码</h2>\r\n  <ul>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-8894</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-9114</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-633-9505</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-0014</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-2238</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-4004</h4>\r\n      <h5><span>限时价:<em>70元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-7774</h4>\r\n      <h5><span>限时价:<em>70元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-7747</h4>\r\n      <h5><span>限时价:<em>70元/月</em></span></h5>\r\n    </a></li>\r\n\r\n    <li><a href=\\"#\\">\r\n      <h4>400-8899-840</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-8800-486</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-8800-487</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-0808-141</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n\r\n    <li><a href=\\"#\\">\r\n      <h4>400-0808-747</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-9939-114</h4>\r\n      <h5><span>限时价:<em>30元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-844-0516</h4>\r\n      <h5><span>限时价:<em>30元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-9944-909</h4>\r\n      <h5><span>限时价:<em>99元/月</em></span></h5>\r\n    </a></li>\r\n\r\n    <li><a href=\\"#\\">\r\n      <h4>400-627-9979</h4>\r\n      <h5><span>限时价:<em>99元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-644-8848</h4>\r\n      <h5><span>限时价:<em>80元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-993-8848</h4>\r\n      <h5><span>限时价:<em>99元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-843-8858</h4>\r\n      <h5><span>限时价:<em>99元/月</em></span></h5>\r\n    </a></li>\r\n\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-9999</h4>\r\n      <h5><span>限时价:<em>8W元/年</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-9444</h4>\r\n      <h5><span>限时价:<em>1W元/年</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-4400</h4>\r\n      <h5><span>限时价:<em>1W元/年</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-4444</h4>\r\n      <h5><span>限时价:<em>8W元/年</em></span></h5>\r\n    </a></li>\r\n\r\n  </ul>\r\n</div>\r\n\r\n<div style=\\"text-align:center; margin-top:30px;\\">\r\n<img src=\\"/style/css/img/small-2.jpg\\" />\r\n</div>\r\n\r\n\r\n<!--400 核心 B-->\r\n<div class=\\"core wrap\\">\r\n  <h2 class=\\"tit\\">400电话·核心价值</h2>\r\n  <div class=\\"core-box cf\\"> \r\n<!--提升企业形象，增加广告回报-->\r\n<div class=\\"item fl\\">\r\n  <h4>提升企业形象，增加广告回报</h4>\r\n  <div class=\\"img\\"> <img src=\\"style/images/jz1.png\\" alt=\\"解决接听来电占线难题\\" width=355 height=175> </div>\r\n  <p>同样款式，同样价格，您选谁？</p>\r\n</div>\r\n<!--解决来电占线难题-->\r\n<div class=\\"item fr\\">\r\n  <h4>解决来电占线难题</h4>\r\n  <div class=\\"img\\"> <img src=\\"style/images/jz2.png\\" alt=\\"广告效果提升30%\\" width=285 height=175> </div>\r\n  <p>多用户同时拨打400，可实现同时接听。</p>\r\n</div>\r\n  </div>\r\n  <div class=\\"core-box cf\\"> \r\n<!--让客户服务更规范-->\r\n<div class=\\"item fl\\">\r\n  <h4>让客户服务更规范</h4>\r\n  <div class=\\"img\\"> <img src=\\"style/images/jz3.png\\" alt=\\"让客户服务更规范\\" width=414 height=170> </div>\r\n  <p>专业系统提示音，让企业形象立即提升，<br>\r\n通话录音，更能免除服务纠纷。</p>\r\n</div>\r\n<!--搬家不换好、客户不流失-->\r\n<div class=\\"item fr\\">\r\n  <h4>轻松应对员工离职，搬家不换号</h4>\r\n  <div class=\\"img\\"> <img src=\\"style/images/jz4.png\\" alt=\\"搬家不换号，客户不流失\\" width=298 height=167> </div>\r\n  <p>当企业搬迁或员工离职，只需变更400下<br>\r\n绑定的座机或手机号码即可，客户永不流失。</p>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--400 核心 E--> \r\n<!--关于我们 B-->\r\n<div class=\\"wrap needSkt\\">\r\n  <h2 class=\\"tit\\">舜王通信·业务优势</h2>\r\n  <div class=\\"need-group cf\\">\r\n<div class=\\"item item1\\">\r\n  <h4>十年企业 更有保障</h4>\r\n  <p>每个来电都是商机，让十年企业<br>\r\n为您护航，更安心。</p>\r\n</div>\r\n<div class=\\"item item2\\">\r\n  <h4>号源全  价格优</h4>\r\n  <p>可提供4000、4001、4006、4007、4008、<br>\r\n4009全号段号源。套餐性价比高。</p>\r\n</div>\r\n<div class=\\"item item3 mr0\\">\r\n  <h4>接通速度快30%</h4>\r\n  <p>百人研发与支撑团队，平台先进稳定，<br>\r\n为您不错失一个商机保驾护航。</p>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--关于我们 E--> \r\n<!--选号先看号段 B-->\r\n<div class=\\"wrap skt-how\\">\r\n  <h2 class=\\"tit\\">舜王通信·覆盖号段</h2>\r\n  <div class=\\"how-tems cf\\"> \r\n<!--电信-->\r\n<div class=\\"tem fl\\">\r\n  <div class=\\"dx tag\\"></div>\r\n  <p><span>号段：</span><span class=\\"317ee7\\">4008、4009</span></p>\r\n  <p class=\\"317ee7\\"><span>基础电路提供：</span><span class=\\"fno\\">中国电信</span></p>\r\n  <p><span>优点：</span><span class=\\"fno\\">接通快、稳定，追求品质用户优选</span></p>\r\n  <p><span>增值功能与技术支撑：</span><span class=\\"fno\\">舜王通信</span></p>\r\n  <p><span>用户选择率：</span><span class=\\"fno\\">约50%</span></p>\r\n  <div class=\\"fl needNum kf\\"  data-agl-cvt=\\"1\\">索取电信400号码</div>\r\n</div>\r\n<!--移动-->\r\n<div class=\\"tem fl mgrl28\\">\r\n  <div class=\\"yd tag\\"></div>\r\n  <p><span>号段：</span><span class=\\"317ee7\\">4001、4007</span></p>\r\n  <p class=\\"317ee7\\"><span>基础电路提供：</span><span class=\\"fno\\">中国移动</span></p>\r\n  <p><span>优点：</span><span class=\\"fno\\">移动网络强，手机接听用户优选</span></p>\r\n  <p><span>增值功能与技术支撑：</span><span class=\\"fno\\">舜王通信</span></p>\r\n  <p><span>用户选择率：</span><span class=\\"fno\\">约25%</span></p>\r\n  <div class=\\"fl needNum kf\\"  data-agl-cvt=\\"1\\">索取移动400号码</div>\r\n</div>\r\n<!--联通-->\r\n<div class=\\"tem fl\\">\r\n  <div class=\\"lt tag\\"></div>\r\n  <p><span>号段：</span><span class=\\"317ee7\\">4000、4006</span></p>\r\n  <p class=\\"317ee7\\"><span>基础电路提供：</span><span class=\\"fno\\">中国联通</span></p>\r\n  <p><span>优点：</span><span class=\\"fno\\">价格便宜，小企业优选</span></p>\r\n  <p><span>增值功能与技术支撑：</span><span class=\\"fno\\">舜王通信</span></p>\r\n  <p><span>用户选择率：</span><span class=\\"fno\\">约25%</span></p>\r\n  <div class=\\"fl needNum kf\\"  data-agl-cvt=\\"1\\">索取联通400号码</div>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--选号先看号段 B--> \r\n<!--选号秘籍 B-->\r\n<div class=\\"wrap miji\\">\r\n  <h2 class=\\"tit\\">选号秘籍</h2>\r\n  <div class=\\"miji-group cf\\">\r\n<div class=\\"item item1 cf\\">\r\n  <div class=\\"idx idx1\\"></div>\r\n  <div class=\\"tex\\">\r\n<div class=\\"tit\\">看号段</div>\r\n<p>4008/4009&nbsp;&nbsp;&nbsp;4001/4007&nbsp;&nbsp;&nbsp;4000/4006<br>\r\n  中国电信&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中国移动&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中国联通</p>\r\n  </div>\r\n</div>\r\n<div class=\\"item item2 cf\\">\r\n  <div class=\\"idx idx2\\"></div>\r\n  <div class=\\"tex\\">\r\n<div class=\\"tit\\">看组合</div>\r\n<p>组合越有规律，越易记，<br>\r\n  形象越好，价格越高。</p>\r\n  </div>\r\n</div>\r\n<div class=\\"item item3 cf\\">\r\n  <div class=\\"idx idx3\\"></div>\r\n  <div class=\\"tex\\">\r\n<div class=\\"tit\\">看数字</div>\r\n<p>8、9、6数字，更符合客户认知习惯，<br>\r\n  客户选择较多。 </p>\r\n  </div>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--选号秘籍 E--> \r\n<!--精选号码推荐B-->\r\n<div class=\\"wrap Diamonds\\">\r\n  <h2 class=\\"tit\\">精选号码推荐</h2>\r\n  <div class=\\"cf tc-show \\"> \r\n<!--皇冠靓号-->\r\n<div class=\\"tc-show-item fl\\">\r\n  <div class=\\"img\\"> <img src=\\"style/images/jx1.png\\"> </div>\r\n  <div class=\\"flag\\">皇冠靓号</div>\r\n  <div class=\\"gp\\">组合规律</div>\r\n  <div class=\\"rule\\"> AAAAAA、AAAAA、ABCDE、AAABBB </div>\r\n  <div class=\\"Example-num\\">\r\n<p>示例号码</p>\r\n<div class=\\"num-group cf\\">\r\n  <div class=\\"n1 fl\\">\r\n<div>400*-333-333</div>\r\n<div>400-*6-56789</div>\r\n<div>400-*6-98765</div>\r\n<div>400*-999-000</div>\r\n  </div>\r\n  <div class=\\"n2 fr\\">\r\n<div>400-*9-88888</div>\r\n<div>400-*5-12345</div>\r\n<div>400*-888-777</div>\r\n<div>400*-888-000</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"tc-btn kf\\"  data-agl-cvt=\\"1\\"> 好号码抢先预占 </div>\r\n</div>\r\n<!--钻石靓号-->\r\n<div class=\\"tc-show-item fl m-RL-16\\">\r\n  <div class=\\"img\\"> <img src=\\"style/images/jx2.png\\"> </div>\r\n  <div class=\\"flag\\">钻石靓号</div>\r\n  <div class=\\"gp\\">组合规律</div>\r\n  <div class=\\"rule\\"> AAAA、ABCD、AABBCC、ABCABC </div>\r\n  <div class=\\"Example-num\\">\r\n<p>示例号码</p>\r\n<div class=\\"num-group cf\\">\r\n  <div class=\\"n1 fl\\">\r\n<div>400-*61-9999</div>\r\n<div>400-*60-6789</div>\r\n<div>400*-589-589</div>\r\n<div>400*-00-11-88</div>\r\n  </div>\r\n  <div class=\\"n2 fr\\">\r\n<div>400-*80-8888</div>\r\n<div>400-*68-5678</div>\r\n<div>400*-658-658</div>\r\n<div>400*-00-66-00</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"tc-btn kf\\"  data-agl-cvt=\\"1\\"> 好号码抢先预占 </div>\r\n</div>\r\n<!--五星靓号-->\r\n<div class=\\"tc-show-item fl\\">\r\n  <div class=\\"img\\"> <img src=\\"style/images/jx3.png\\"> </div>\r\n  <div class=\\"flag\\">五星靓号</div>\r\n  <div class=\\"gp\\">组合规律</div>\r\n  <div class=\\"rule\\"> AABB、ABBB、ABAB、ABBA </div>\r\n  <div class=\\"Example-num\\">\r\n<p>示例号码</p>\r\n<div class=\\"num-group cf\\">\r\n  <div class=\\"n1 fl\\">\r\n<div>400-*18-5588</div>\r\n<div>400-*97-1777</div>\r\n<div>400-*27-9898</div>\r\n<div>400-*68-9119</div>\r\n  </div>\r\n  <div class=\\"n2 fr\\">\r\n<div>400-*65-6699</div>\r\n<div>400-*80-7888</div>\r\n<div>400-*18-6868</div>\r\n<div>400-*91-6996</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"tc-btn kf\\"  data-agl-cvt=\\"1\\"> 好号码抢先预占 </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"free2\\">\r\n<div class=\\"form-box form-box-css f_l clearfix\\" data-title=\\"400.com-申请好号码免费试用\\">\r\n  <input class=\\"name-vo-sub2 _183\\" maxlength=\\"5\\" type=\\"text\\" value=\\"您的姓名\\">\r\n  <input class=\\"phone-vo-sub2 _183\\" maxlength=\\"11\\" type=\\"text\\" value=\\"手机号码\\">\r\n  <input class=\\"inputcode-vo-sub2 _164\\" maxlength=\\"4\\" id=\\"inputcode-vo-sub2\\" type=\\"text\\" value=\\"验证码\\">\r\n  <div id=\\"code-vo-sub2\\"  class=\\"code-vo-sub2 fl\\" ></div>\r\n  <input class=\\"btn btn-vo-sub2\\" type=\\"button\\" value=\\"立即提交申请\\"  data-agl-cvt=\\"5\\">\r\n</div>\r\n  </div>\r\n</div>\r\n<!--精选号码推荐E--> \r\n\r\n\r\n\r\n<div style=\\"text-align:center; margin-top:20px;\\">\r\n<img src=\\"/style/css/img/small-2.jpg\\" />\r\n</div>\r\n\r\n\r\n\r\n\r\n<!--首页400套餐 B-->\r\n<div class=\\"wrap\\">\r\n  <h2 class=\\"tit\\">精选400套餐</h2>\r\n  <div class=\\"cf tc-show \\"> \r\n<!--198 套餐-->\r\n<div class=\\"tc-show-item fl\\">\r\n  <div class=\\"tc-log tc-log-1\\"></div>\r\n  <div class=\\"tc-name cf\\"> <span class=\\"jg _168 \\"></span> <span class=\\"dw tc-hot\\">元/月（合约3年）</span> </div>\r\n  <div class=\\"tc-fl cf\\">\r\n<div class=\\"tc-1 cf fl\\">\r\n  <div class=\\"tc-icon fl\\"></div>\r\n  <div class=\\"tc-sm fl\\">\r\n<div class=\\"prow\\">送3项</div>\r\n<div class=\\"zz\\">增值功能</div>\r\n  </div>\r\n</div>\r\n<div class=\\"tc-2 cf fl\\">\r\n  <div class=\\"tc-icon fl\\"></div>\r\n  <div class=\\"tc-sm fl\\">\r\n<div class=\\"prow\\">送5000元</div>\r\n<div class=\\"zz\\">400话费</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"Example-num\\">\r\n<p>示例号码</p>\r\n<!--168套餐-->\r\n<div class=\\"num-group cf\\">\r\n  <div class=\\"n1 fl\\">\r\n<div>400-*66-5188</div>\r\n<div>400-*68-5558</div>\r\n<div>400-*60-1110</div>\r\n  </div>\r\n  <div class=\\"n2 fr\\">\r\n<div>400-*77-6066</div>\r\n<div>400-*80-5880</div>\r\n<div>400*-996-880</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"tc-btn kf\\"  data-agl-cvt=\\"1\\"> 获取更多好号码 </div>\r\n</div>\r\n<!--598套餐-->\r\n<div class=\\"tc-show-item fl m-RL-16\\">\r\n  <div class=\\"tc-log tc-log-2\\"></div>\r\n  <div class=\\"tc-name\\"> <span class=\\"jg _598 \\"></span><!--598--> \r\n<span class=\\"dw tc-hot\\">元/月（合约3年）</span> </div>\r\n  <div class=\\"tc-fl cf\\">\r\n<div class=\\"tc-1 cf fl\\">\r\n  <div class=\\"tc-icon fl\\"></div>\r\n  <div class=\\"tc-sm fl\\">\r\n<div class=\\"prow\\">送5项</div>\r\n<div class=\\"zz\\">增值功能</div>\r\n  </div>\r\n</div>\r\n<div class=\\"tc-2 cf fl\\">\r\n  <div class=\\"tc-icon fl\\"></div>\r\n  <div class=\\"tc-sm fl\\">\r\n<div class=\\"prow\\">送20000元</div>\r\n<div class=\\"zz\\">400话费</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"Example-num\\">\r\n<p>示例号码</p>\r\n<div class=\\"num-group cf\\">\r\n  <div class=\\"n1 fl\\">\r\n<div>400-*60-8000</div>\r\n<div>400-*78-1777</div>\r\n<div>400-*69-6688</div>\r\n  </div>\r\n  <div class=\\"n2 fr\\">\r\n<div>400-*19-7799</div>\r\n<div>400*-666-788</div>\r\n<div>400*-688-699</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"tc-btn kf\\"  data-agl-cvt=\\"1\\"> 获取更多好号码 </div>\r\n</div>\r\n<!--988 套餐-->\r\n<div class=\\"tc-show-item fl\\">\r\n  <div class=\\"tc-log tc-log-3\\"></div>\r\n  <div class=\\"tc-name\\"> <span class=\\"jg _998 \\"></span> <span class=\\"dw tc-hot\\">元/月起（合约3年）</span> </div>\r\n  <div class=\\"tc-fl cf\\">\r\n<div class=\\"tc-1 cf fl\\">\r\n  <div class=\\"tc-icon fl\\"></div>\r\n  <div class=\\"tc-sm fl\\">\r\n<div class=\\"prow\\">送6项</div>\r\n<div class=\\"zz\\">增值功能</div>\r\n  </div>\r\n</div>\r\n<div class=\\"tc-2 cf fl\\">\r\n  <div class=\\"tc-icon fl\\"></div>\r\n  <div class=\\"tc-sm fl\\">\r\n<div class=\\"prow\\">送20000元</div>\r\n<div class=\\"zz\\">400话费</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"Example-num\\">\r\n<p>示例号码</p>\r\n<div class=\\"num-group cf\\">\r\n  <div class=\\"n1 fl\\">\r\n<div>400-*18-6888</div>\r\n<div>400-*60-1888</div>\r\n<div>400-*58-6999</div>\r\n  </div>\r\n  <div class=\\"n2 fr\\">\r\n<div>400-*60-6999</div>\r\n<div>400-*58-5666</div>\r\n<div>400-*98-5666</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"tc-btn kf\\"  data-agl-cvt=\\"1\\"> 获取更多好号码 </div>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--首页400套餐 E--> \r\n<!--400增值功能 B-->\r\n<div class=\\"zzPrower wrap\\">\r\n  <h2 class=\\"tit\\">舜王通信400增值功能</h2>\r\n  <p class=\\"sm-tit\\"> <a href=\\"./allfunction.html\\">了解更多实用功能></a> </p>\r\n  <div class=\\"prower-group cf\\">\r\n<div class=\\"item\\">\r\n  <div class=\\"tit\\">\r\n<div class=\\"icon icon1\\"></div>\r\n来电欢迎词 </div>\r\n  <p class=\\"des\\">企业的有声名片，用个性语音代替单调铃声，在等待接通时间里，向客户传达企业真实信息，增加信任。</p>\r\n  <p class=\\"xzl\\">用户选择率</p>\r\n  <div class=\\"bfb\\">100%</div>\r\n  <div class=\\"btn kf\\"  data-agl-cvt=\\"1\\">立即体验</div>\r\n</div>\r\n<div class=\\"item\\">\r\n  <div class=\\"tit\\">\r\n<div class=\\"icon icon2\\"></div>\r\n一号多线 </div>\r\n  <p class=\\"des\\">一个400号码可以绑定多部手机、座机，可供多客户同时打入，系统自动选择空闲线路接入，不错失商机。</p>\r\n  <p class=\\"xzl\\">用户选择率</p>\r\n  <div class=\\"bfb\\">100%</div>\r\n  <div class=\\"btn kf\\"  data-agl-cvt=\\"1\\">立即体验</div>\r\n</div>\r\n<div class=\\"item\\">\r\n  <div class=\\"tit\\">\r\n<div class=\\"icon icon3\\"></div>\r\n通话录音 </div>\r\n  <p class=\\"des\\">每一个400电话来电通话全程录音，帮助企业监督客服服务质量，也为处理客户纠纷、投诉提供证据。</p>\r\n  <p class=\\"xzl\\">用户选择率</p>\r\n  <div class=\\"bfb\\">90%</div>\r\n  <div class=\\"btn kf\\"  data-agl-cvt=\\"1\\">立即体验</div>\r\n</div>\r\n<div class=\\"item mr0\\">\r\n  <div class=\\"tit\\">\r\n<div class=\\"icon icon4\\"></div>\r\nIVR智能语音导航 </div>\r\n  <p class=\\"des\\">根据客户拨打400来电的按键选择，自动为客户提供相应服务支持，提高服务效率。</p>\r\n  <p class=\\"xzl\\">用户选择率</p>\r\n  <div class=\\"bfb\\">80%</div>\r\n  <div class=\\"btn kf\\"  data-agl-cvt=\\"1\\">立即体验</div>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--400增值功能 E--> \r\n<!--400电话办理流程 B-->\r\n<div class=\\"wrap process\\">\r\n  <h2 class=\\"tit\\">400电话办理流程</h2>\r\n  <div class=\\"process-group\\">\r\n<div class=\\"item\\">\r\n  <div class=\\"idx idx1\\"></div>\r\n  <div class=\\"tex\\">\r\n<div class=\\"tit\\">选号码、选功能、选套餐</div>\r\n<p>我们提供更丰富号源、更高性价比套餐。</p>\r\n  </div>\r\n</div>\r\n<div class=\\"item\\">\r\n  <div class=\\"idx idx2\\"></div>\r\n  <div class=\\"tex\\">\r\n<div class=\\"tit\\">签约付款，锁定号码</div>\r\n<p>签订正式合同并付款即可锁定号码。</p>\r\n  </div>\r\n</div>\r\n<div class=\\"item\\">\r\n  <div class=\\"idx idx3\\"></div>\r\n  <div class=\\"tex\\">\r\n<div class=\\"tit\\">提交实名认证材料</div>\r\n<p>做好实名认证，长期使用更有保障。</p>\r\n  </div>\r\n</div>\r\n<div class=\\"item\\">\r\n  <div class=\\"idx idx4\\"></div>\r\n  <div class=\\"tex\\">\r\n<div class=\\"tit\\">开通服务</div>\r\n<p>开通服务只是开始，长期技术支撑更关键。</p>\r\n  </div>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--400电话办理流程 E-->\r\n<div class=\\"wrap small-banner small-banner-2 kf\\"  data-agl-cvt=\\"1\\"></div>\r\n\r\n<!-- bottom -->\r\n<div class=\\"bottom\\">\r\n  <div class=\\"bt1\\">\r\n    <p>舜王通信·新闻中心</p>\r\n  </div>\r\n\r\n  <div class=\\"bt2\\">\r\n    <div class=\\"box1 f\\">\r\n      <div class=\\"top\\">公司新闻</div>\r\n      <div class=\\"center\\">\r\n        <img src=\\"./style/css/img/ct-img.jpg\\" alt=\\"\\">\r\n        <ul>\r\n[e:loop={4,9,0,0}]\r\n<li><a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" target=\\"_blank\\"><?=esub($bqr[title],40)?></a> </li>\r\n[/e:loop]\r\n        </ul>\r\n      </div>\r\n      <div class=\\"btm\\">\r\n        <a href=\\"/news/gsxw/\\">查看更多新资讯</a>\r\n      </div>\r\n    </div>\r\n    <div class=\\"box2 f\\">\r\n      <div class=\\"top\\">行业动态</div>\r\n      <div class=\\"center\\">\r\n        <img src=\\"./style/css/img/ct-img.jpg\\" alt=\\"\\">\r\n        <ul>\r\n[e:loop={4,9,0,0}]\r\n<li><a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" target=\\"_blank\\"><?=esub($bqr[title],40)?></a> </li>\r\n[/e:loop]\r\n        </ul>\r\n      </div>\r\n      <div class=\\"btm\\">\r\n        <a href=\\"/news/hydt/\\">查看更多新资讯</a>\r\n      </div>\r\n    </div>\r\n    <div class=\\"box3 f\\">\r\n      <div class=\\"top\\">常见问题</div>\r\n      <div class=\\"center\\">\r\n        <img src=\\"./style/css/img/ct-img.jpg\\" alt=\\"\\">\r\n        <ul>\r\n[e:loop={4,9,0,0}]\r\n<li><a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" target=\\"_blank\\"><?=esub($bqr[title],40)?></a> </li>\r\n[/e:loop]\r\n        </ul>\r\n      </div>\r\n      <div class=\\"btm\\">\r\n        <a href=\\"/news/cjwt/\\">查看更多新资讯</a>\r\n      </div>\r\n    </div>\r\n  </div>\r\n\r\n  <div class=\\"bt3\\">\r\n      <div class=\\"sp1\\">\r\n        <span>标签直达:</span>\r\n        <a href=\\"/\\">成都400电话</a>\r\n        <a href=\\"/\\">成都400电话办理</a>\r\n        <a href=\\"/\\">成都400电话申请</a>\r\n        <a href=\\"/\\">成都企业400电话</a>\r\n        <a href=\\"/\\">成都办400电话</a>\r\n        <a href=\\"/\\">成都400电话安装</a>\r\n      </div>\r\n      <div class=\\"sp2\\">\r\n        <span>友情链接:</span>\r\n        <a href=\\"https://www.shunking.cn/\\" target=\\"_blank\\">舜王科技</a>\r\n        <a href=\\"http://www.xzhywl.cn/\\" target=\\"_blank\\">鸿扬网络</a>\r\n        <a href=\\"https://www.swcy.shunking.cn/\\" target=\\"_blank\\">舜王彩印</a>\r\n        <a href=\\"/\\" target=\\"_blank\\">舜王通信</a>\r\n        <a href=\\"https://www.site.shunking.cn/\\" target=\\"_blank\\">舜王建站</a>\r\n      </div>\r\n  </div>\r\n</div>\r\n<!-- bottom -->\r\n<!--footer B-->\r\n<div class=\\"foot\\">\r\n    <div class=\\"wrap cf\\">\r\n      <div class=\\"fl flink\\">\r\n        <div class=\\"jumpUrl cf\\"> <a href=\\"./Customercase.html\\">选号指南</a><span>|</span> <a href=\\"./allfunction.html\\">实用功能</a><span>|</span> <a href=\\"./changjianwenti.html\\">常见问题</a><span>|</span> <a href=\\"./Payment.html\\">付款方式</a><span>|</span> <a href=\\"./aboutus.html#conectUs\\">联系我们</a><span>|</span> <a href=\\"./complaint.html\\">投诉建议</a> </div>\r\n        <div class=\\"company-message\\">\r\n          <div class=\\"c c1\\">成都舜王科技有限公司 版权所有 Copyright © 2004-<script>var y = new Date();document.write(y.getFullYear());</script>&nbsp;舜王通信  <a target=\\"_blank\\" href=\\"http://www.beian.miit.gov.cn\\">蜀ICP备16023211号</a></div>\r\n          <div class=\\"cf c c2\\">\r\n            <p class=\\"fl\\">增值电信业务运营牌照 川B2-20240767号</p>\r\n            <div class=\\"fl box-font-0\\"> <a target=\\"_blank\\" class=\\"b1\\" href=\\"#\\"></a> <a target=\\"_blank\\" href=\\"http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=51010802000011\\" class=\\"b2\\"></a> </div>\r\n            <p class=\\"fl\\">川公网安备 51010802000011号</p>\r\n          </div>\r\n        </div>\r\n      </div>\r\n</div>\r\n      <div class=\\"fr sun-line\\" style=\\"margin-top:-95px;position:relative;right:25%\\">\r\n        <p> <span class=\\"p1\\">全国400咨询办理热线：</span> <span class=\\"p2\\">400-028-1238</span> </p>\r\n        <p> <span class=\\"p1\\">全国400售后支撑专线：</span> <span class=\\"p2\\">028-84721238</span> </p>\r\n      </div>\r\n      <a class=\\"ts2\\" href=\\"./complaint.html\\">\r\n        <div class=\\"icon\\"></div>\r\n      投诉建议\r\n      </a> \r\n  </div>\r\n</div>\r\n<!--footer E--> \r\n<!--返回顶部-->\r\n<div class=\\"goTo\\"></div>\r\n<!--返回顶部--> \r\n<script src=\\"style/js/jquery.min.js\\"></script> \r\n<script src=\\"style/js/jquery.SuperSlide.2.1.1.js\\"></script> \r\n<script src=\\"style/js/index.js\\"></script> \r\n<script>\r\njQuery(\\".slideBox\\").slide({mainCell:\\".bd .banner-box\\",autoPlay:true});\r\n</script> \r\n<!--cnzz--> \r\n</body>\r\n</html>', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.dtheader--] \r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>现在的位置：[!--newsnav--]\r\n</td>\r\n</tr>\r\n</table>\r\n      <table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n        <tr> \r\n          <td width=\\"300\\" valign=\\"top\\"> \r\n		  <?php\r\n		  $lguserid=intval(getcvar(\\''mluserid\\''));//登陆用户ID\r\n		  $lgusername=RepPostVar(getcvar(\\''mlusername\\''));//登陆用户\r\n		  $lggroupid=intval(getcvar(\\''mlgroupid\\''));//会员组ID\r\n		  if($lggroupid)	//登陆会员显示菜单\r\n		  {\r\n		  ?>\r\n            <table width=\\"100%\\" border=\\"0\\" cellpadding=\\"3\\" cellspacing=\\"1\\" class=\\"tableborder\\">\r\n              <tr class=\\"header\\"> \r\n                <td height=\\"20\\" bgcolor=\\"#FFFFFF\\"> <div align=\\"center\\"><strong><a href=\\"[!--news.url--]e/member/cp/\\">功能菜单</a></strong></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/EditInfo/\\">修改资料</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/my/\\">帐号状态</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/msg/\\">站内信息</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/mspace/SetSpace.php\\">空间设置</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/DoInfo/\\">管理信息</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/fava/\\">收藏夹</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/payapi/\\">在线支付</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/friend/\\">我的好友</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/buybak/\\">消费记录</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/buygroup/\\">在线充值</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/card/\\">点卡充值</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"#ecms\\" onclick=\\"window.open(\\''[!--news.url--]e/ShopSys/buycar/\\'',\\''\\'',\\''width=680,height=500,scrollbars=yes,resizable=yes\\'');\\">我的购物车</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/ShopSys/ListDd/\\">我的订单</a></div></td>\r\n              </tr>\r\n			  <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/login/\\">重新登陆</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/doaction.php?enews=exit\\" onclick=\\"return confirm(\\''确认要退出?\\'');\\">退出登陆</a></div></td>\r\n              </tr>\r\n            </table>\r\n			<?php\r\n			}\r\n			else	//游客显示菜单\r\n			{\r\n			?>  \r\n            <table width=\\"100%\\" border=\\"0\\" cellpadding=\\"3\\" cellspacing=\\"1\\" class=\\"tableborder\\">\r\n              <tr class=\\"header\\"> \r\n                <td height=\\"20\\" bgcolor=\\"#FFFFFF\\"> <div align=\\"center\\"><strong><a href=\\"[!--news.url--]e/member/cp/\\">功能菜单</a></strong></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/login/\\">会员登陆</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/member/register/\\">注册帐号</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"[!--news.url--]e/DoInfo/\\">发布投稿</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\"25\\" bgcolor=\\"#FFFFFF\\" onmouseout=\\"this.style.backgroundColor=\\''#ffffff\\''\\" onmouseover=\\"this.style.backgroundColor=\\''#EBF3FC\\''\\"><div align=\\"center\\"><a href=\\"#ecms\\" onclick=\\"window.open(\\''[!--news.url--]e/ShopSys/buycar/\\'',\\''\\'',\\''width=680,height=500,scrollbars=yes,resizable=yes\\'');\\">我的购物车</a></div></td>\r\n              </tr>\r\n            </table>\r\n			<?php\r\n			}\r\n			?>\r\n			</td>\r\n          <td width=\\"85%\\" valign=\\"top\\">[!--empirenews.template--]</td>\r\n        </tr>\r\n      </table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>高级搜索 - Powered by EmpireCMS</title>\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n<script src=\\"[!--news.url--]e/data/images/setday.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.dtheader--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n				<tr>\r\n					<td>现在的位置：[!--url--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n						<tr>\r\n							<td><form action=\\''[!--news.url--]e/search/index.php\\'' method=\\"post\\" name=\\"search_news\\" id=\\"search_news\\">\r\n									<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\r\n										<tr>\r\n											<td width=\\"54%\\"><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"6\\" cellspacing=\\"0\\">\r\n													<tr>\r\n														<td bgcolor=\\"#F4F4F4\\"><strong>搜索范围</strong></td>\r\n													</tr>\r\n											</table></td>\r\n											<td width=\\"46%\\"><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"6\\" cellspacing=\\"0\\">\r\n													<tr>\r\n														<td bgcolor=\\"#F4F4F4\\"><strong>搜索栏目</strong></td>\r\n													</tr>\r\n											</table></td>\r\n										</tr>\r\n										<tr>\r\n											<td valign=\\"top\\"><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"6\\" cellspacing=\\"0\\">\r\n													<tr>\r\n														<td><input type=\\"radio\\" name=\\"show\\" value=\\"title\\" checked=\\"checked\\" />\r\n															标题\r\n															<input type=\\"radio\\" name=\\"show\\" value=\\"smalltext\\" />\r\n															简介\r\n															<input type=\\"radio\\" name=\\"show\\" value=\\"newstext\\" />\r\n															内容\r\n															<input type=\\"radio\\" name=\\"show\\" value=\\"writer\\" />\r\n															作者\r\n															<input name=\\"show\\" type=\\"radio\\" value=\\"title,smalltext,newstext,writer\\" />\r\n															不限</td>\r\n													</tr>\r\n												</table>\r\n													<br />\r\n													<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"6\\" cellspacing=\\"0\\">\r\n														<tr bgcolor=\\"#F4F4F4\\">\r\n															<td><strong>时间限制</strong><font color=\\"#666666\\">(0000-00-00为不限制)</font></td>\r\n														</tr>\r\n														<tr>\r\n															<td height=\\"30\\" valign=\\"top\\">从\r\n																<input name=\\"starttime\\" type=\\"text\\" value=\\"0000-00-00\\" size=\\"12\\" onclick=\\"setday(this)\\" />\r\n																到\r\n																<input name=\\"endtime\\" type=\\"text\\" value=\\"0000-00-00\\" size=\\"12\\" onclick=\\"setday(this)\\" />\r\n																之间的数据</td>\r\n														</tr>\r\n														<tr>\r\n															<td bgcolor=\\"#F4F4F4\\"><strong>价格限制</strong><font color=\\"#666666\\">(商城模型中有效,0为不限制)</font></td>\r\n														</tr>\r\n														<tr>\r\n															<td>从\r\n																<input name=\\"startprice\\" type=\\"text\\" id=\\"startprice\\" value=\\"0\\" size=\\"6\\" />\r\n																到\r\n																<input name=\\"endprice\\" type=\\"text\\" id=\\"endprice\\" value=\\"0\\" size=\\"6\\" />\r\n																元之间</td>\r\n														</tr>\r\n												</table></td>\r\n											<td valign=\\"top\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"6\\" cellpadding=\\"0\\">\r\n													<tr>\r\n														<td><select name=\\"classid\\" size=\\"8\\" id=\\"select2\\" style=\\"width: 100%;height:112px\\">\r\n																<option value=\\"0\\" selected=\\"selected\\">所有栏目</option>\r\n															[!--class--]\r\n          \r\n														</select></td>\r\n													</tr>\r\n												</table>\r\n													<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"6\\" cellspacing=\\"0\\">\r\n														<tr>\r\n															<td bgcolor=\\"#F4F4F4\\"><strong>结果显示</strong></td>\r\n														</tr>\r\n														<tr>\r\n															<td height=\\"30\\"><select name=\\"orderby\\" id=\\"select4\\">\r\n																	<option value=\\"\\">按发布日期</option>\r\n																	<option value=\\"id\\">信息ID</option>\r\n																	<option value=\\"plnum\\">评论数</option>\r\n																	<option value=\\"onclick\\">人气</option>\r\n																	<option value=\\"totaldown\\">下载数</option>\r\n																</select>\r\n																	<select name=\\"myorder\\" id=\\"select5\\">\r\n																		<option value=\\"0\\">倒序排列</option>\r\n																		<option value=\\"1\\">顺序排列</option>\r\n																	</select>\r\n															</td>\r\n														</tr>\r\n												</table></td>\r\n										</tr>\r\n									</table>\r\n								<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"0\\">\r\n										<tr>\r\n											<td>关键字：\r\n												<input name=\\"keyboard\\" type=\\"text\\" id=\\"keyboard2\\" size=\\"60\\" />\r\n													<input type=\\"submit\\" name=\\"Submit22\\" value=\\"搜索\\" />\r\n											</td>\r\n										</tr>\r\n									</table>\r\n							</form></td>\r\n						</tr>\r\n					</table></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '<table border=0 cellpadding=3 cellspacing=1><form name=search_js1 method=post action=''[!--news.url--]e/search/index.php'' onsubmit=''return search_check(document.search_js1);''><tr><td><div align=center>搜索: <select name=show><option value=title>标题</option><option value=smalltext>简介</option><option value=newstext>内容</option><option value=writer>作者</option><option value=title,smalltext,newstext,writer>搜索全部</option></select><select name=classid><option value=0>所有栏目</option>[!--class--]</select><input name=keyboard type=text size=13><input type=submit name=Submit value=搜索></div></td></tr></form></table>', '<table width=99% border=0 cellpadding=3 cellspacing=1><form name=search_js2 method=post action=''[!--news.url--]e/search/index.php'' onsubmit=''return search_check(document.search_js2);''><tr><td height=25><div align=center>关键字: <input name=keyboard type=text size=13></div></td></tr><tr><td><div align=center>范围: <select name=show><option value=title>标题</option><option value=smalltext>简介</option><option value=newstext>内容</option><option value=writer>作者</option><option value=title,smalltext,newstext,writer>搜索全部</option></select></div></td></tr><tr><td><div align=center>栏目:<select name=classid><option value=0>所有栏目</option>[!--class--]</select></div></td></tr><tr><td><div align=center><input type=submit name=Submit value=搜索></div></td></tr></form></table>', '[!--empirenews.listtemp--]<li><a href="[!--titleurl--]" title="[!--oldtitle--]">[!--title--]</a></li>[!--empirenews.listtemp--]', '[ <a href=\\"#ecms\\" onclick=\\"window.open(\\''[!--down.url--]\\'',\\''\\'',\\''width=300,height=300,resizable=yes\\'');\\">[!--down.name--]</a> ]', '[ <a href=\\"#ecms\\" onclick=\\"window.open(\\''[!--down.url--]\\'',\\''\\'',\\''width=300,height=300,resizable=yes\\'');\\">[!--down.name--]</a> ]', '页次：[!--thispage--]/[!--pagenum--]&nbsp;每页[!--lencord--]&nbsp;总数[!--num--]&nbsp;&nbsp;&nbsp;&nbsp;[!--pagelink--]&nbsp;&nbsp;&nbsp;&nbsp;转到:[!--options--]', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>留言板 - Powered by EmpireCMS</title>\r\n<meta name=\\"keywords\\" content=\\"[!--bname--]\\" />\r\n<meta name=\\"description\\" content=\\"[!--bname--]\\" />\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.dtheader--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr valign=\\"top\\">\r\n<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n<tr>\r\n<td>现在的位置：<a href=../../../>首页</a>&nbsp;>&nbsp;[!--bname--]\r\n</td>\r\n</tr>\r\n</table><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n	<tr>\r\n		<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"3\\" cellspacing=\\"2\\">\r\n			<tr>\r\n				<td align=\\"center\\" bgcolor=\\"#E1EFFB\\"><strong>[!--bname--]</strong></td>\r\n			</tr>\r\n			<tr>\r\n				<td align=\\"left\\" valign=\\"top\\"><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"0\\" bgcolor=\\"#FFFFFF\\">\r\n						<tr>\r\n							<td height=\\"100%\\" valign=\\"top\\" bgcolor=\\"#FFFFFF\\"> [!--empirenews.listtemp--]\r\n								<table width=\\"92%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"4\\" cellspacing=\\"1\\" bgcolor=\\"#F4F9FD\\" class=\\"tableborder\\">\r\n										<tr class=\\"header\\">\r\n											<td width=\\"55%\\" height=\\"23\\">发布者: [!--name--] </td>\r\n											<td width=\\"45%\\">发布时间: [!--lytime--] </td>\r\n										</tr>\r\n										<tr bgcolor=\\"#FFFFFF\\">\r\n											<td height=\\"23\\" colspan=\\"2\\"><table border=\\"0\\" width=\\"100%\\" cellspacing=\\"1\\" cellpadding=\\"8\\" bgcolor=\\''#cccccc\\''>\r\n													<tr>\r\n														<td width=\\''100%\\'' bgcolor=\\''#FFFFFF\\'' style=\\''word-break:break-all\\''> [!--lytext--] </td>\r\n													</tr>\r\n												</table>\r\n												[!--start.regbook--]\r\n												<table width=\\"100%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\">\r\n													<tr>\r\n														<td><img src=\\"../../data/images/regb.gif\\" width=\\"18\\" height=\\"18\\" /><strong><font color=\\"#FF0000\\">回复:</font></strong> [!--retext--] </td>\r\n													</tr>\r\n												</table>\r\n												[!--end.regbook--] </td>\r\n										</tr>\r\n									</table>\r\n								<br />\r\n								[!--empirenews.listtemp--]\r\n								<table width=\\"92%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"4\\" cellspacing=\\"1\\">\r\n									<tr>\r\n										<td>分页: [!--listpage--]</td>\r\n									</tr>\r\n								</table>\r\n								<form action=\\"../../enews/index.php\\" method=\\"post\\" name=\\"form1\\" id=\\"form1\\">\r\n									<table width=\\"92%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"4\\" cellspacing=\\"1\\"class=\\"tableborder\\">\r\n										<tr class=\\"header\\">\r\n											<td colspan=\\"2\\" bgcolor=\\"#F4F9FD\\"><strong>请您留言:</strong></td>\r\n										</tr>\r\n										<tr bgcolor=\\"#FFFFFF\\">\r\n											<td width=\\"20%\\">姓名:</td>\r\n											<td width=\\"722\\" height=\\"23\\"><input name=\\"name\\" type=\\"text\\" id=\\"name\\" />\r\n												*</td>\r\n										</tr>\r\n										<tr bgcolor=\\"#FFFFFF\\">\r\n											<td>联系邮箱:</td>\r\n											<td height=\\"23\\"><input name=\\"email\\" type=\\"text\\" id=\\"email\\" />\r\n												*</td>\r\n										</tr>\r\n										<tr bgcolor=\\"#FFFFFF\\">\r\n											<td>联系电话:</td>\r\n											<td height=\\"23\\"><input name=\\"mycall\\" type=\\"text\\" id=\\"mycall\\" /></td>\r\n										</tr>\r\n										<tr bgcolor=\\"#FFFFFF\\">\r\n											<td>留言内容(*):</td>\r\n											<td height=\\"23\\"><textarea name=\\"lytext\\" cols=\\"60\\" rows=\\"12\\" id=\\"lytext\\"></textarea></td>\r\n										</tr>\r\n										<tr bgcolor=\\"#FFFFFF\\">\r\n											<td height=\\"23\\">&nbsp;</td>\r\n											<td height=\\"23\\"><input type=\\"submit\\" name=\\"Submit3\\" value=\\"提交\\" />\r\n											<input type=\\"reset\\" name=\\"Submit22\\" value=\\"重置\\" />\r\n											<input name=\\"enews\\" type=\\"hidden\\" id=\\"enews\\" value=\\"AddGbook\\" /></td>\r\n										</tr>\r\n									</table>\r\n								</form></td>\r\n						</tr>\r\n				</table></td>\r\n			</tr>\r\n		</table></td>\r\n	</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', '<html>\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\">\r\n<title>登陆</title>\r\n<LINK href=\\"../../data/images/qcss.css\\" rel=stylesheet>\r\n</head>\r\n<body bgcolor=\\"#ededed\\" topmargin=\\"0\\">\r\n<table border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" width=\\"100%\\">\r\n  <form name=login method=post action=\\"../../member/doaction.php\\">\r\n    <input type=hidden name=enews value=login>\r\n    <input type=hidden name=prtype value=1>\r\n    <tr> \r\n      <td height=\\"23\\" align=\\"center\\">\r\n      <div align=\\"left\\">\r\n      用户名：<input name=\\"username\\" type=\\"text\\" size=\\"8\\">&nbsp;\r\n      密码：<input name=\\"password\\" type=\\"password\\" size=\\"8\\">\r\n      <select name=\\"lifetime\\" id=\\"lifetime\\">\r\n         <option value=\\"0\\">不保存</option>\r\n         <option value=\\"3600\\">一小时</option>\r\n         <option value=\\"86400\\">一天</option>\r\n         <option value=\\"2592000\\">一个月</option>\r\n         <option value=\\"315360000\\">永久</option>\r\n      </select>&nbsp;\r\n      <input type=\\"submit\\" name=\\"Submit\\" value=\\"登陆\\">&nbsp;\r\n      <input type=\\"button\\" name=\\"Submit2\\" value=\\"注册\\" onclick=\\"window.open(\\''../register/\\'');\\">\r\n      </div>\r\n      </td>\r\n    </tr>\r\n  </form>\r\n</table>\r\n</body>\r\n</html>\r\n[!--empirenews.template--]\r\n<html>\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\">\r\n<title>登陆</title>\r\n<LINK href=\\"../../data/images/qcss.css\\" rel=stylesheet>\r\n</head>\r\n<body bgcolor=\\"#ededed\\" topmargin=\\"0\\">\r\n<table border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" width=\\"100%\\">\r\n    <tr>\r\n	<td height=\\"23\\" align=\\"center\\">\r\n	<div align=\\"left\\">\r\n		&raquo;&nbsp;<font color=red><b>[!--username--]</b></font>&nbsp;&nbsp;<a href=\\"../my/\\" target=\\"_parent\\">[!--groupname--]</a>&nbsp;[!--havemsg--]&nbsp;<a href=\\"[!--news.url--]e/space/?userid=[!--userid--]\\" target=_blank>我的空间</a>&nbsp;&nbsp;<a href=\\"../msg/\\" target=_blank>短信息</a>&nbsp;&nbsp;<a href=\\"../fava/\\" target=_blank>收藏夹</a>&nbsp;&nbsp;<a href=\\"../cp/\\" target=\\"_parent\\">控制面板</a>&nbsp;&nbsp;<a href=\\"../../member/doaction.php?enews=exit&prtype=9\\" onclick=\\"return confirm(\\''确认要退出?\\'');\\">退出</a> \r\n	</div>\r\n	</td>\r\n    </tr>\r\n</table>\r\n</body>\r\n</html>', 50, 'Y-m-d H:i:s', '<form name=login method=post action=\\"[!--news.url--]e/member/doaction.php\\">\r\n    <input type=hidden name=enews value=login>\r\n    <input type=hidden name=ecmsfrom value=9>\r\n    用户名：<input name=\\"username\\" type=\\"text\\" class=\\"inputText\\" size=\\"16\\" />&nbsp;\r\n    密码：<input name=\\"password\\" type=\\"password\\" class=\\"inputText\\" size=\\"16\\" />&nbsp;\r\n    <input type=\\"submit\\" name=\\"Submit\\" value=\\"登陆\\" class=\\"inputSub\\" />&nbsp;\r\n    <input type=\\"button\\" name=\\"Submit2\\" value=\\"注册\\" class=\\"inputSub\\" onclick=\\"window.open(\\''[!--news.url--]e/member/register/\\'');\\" />\r\n</form>\r\n[!--empirenews.template--]\r\n&raquo;&nbsp;<font color=red><b>[!--username--]</b></font>&nbsp;&nbsp;<a href=\\"[!--news.url--]e/member/my/\\" target=\\"_parent\\">[!--groupname--]</a>&nbsp;[!--havemsg--]&nbsp;<a href=\\"[!--news.url--]e/space/?userid=[!--userid--]\\" target=_blank>我的空间</a>&nbsp;&nbsp;<a href=\\"[!--news.url--]e/member/msg/\\" target=_blank>短信息</a>&nbsp;&nbsp;<a href=\\"[!--news.url--]e/member/fava/\\" target=_blank>收藏夹</a>&nbsp;&nbsp;<a href=\\"[!--news.url--]e/member/cp/\\" target=\\"_parent\\">控制面板</a>&nbsp;&nbsp;<a href=\\"[!--news.url--]e/member/doaction.php?enews=exit&ecmsfrom=9\\" onclick=\\"return confirm(\\''确认要退出?\\'');\\">退出</a>', '<html>\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\">\r\n<title>[!--pagetitle--]</title>\r\n<meta name=\\"keywords\\" content=\\"[!--pagekey--]\\">\r\n<meta name=\\"description\\" content=\\"[!--pagedes--]\\">\r\n<link href=\\"../../data/images/qcss.css\\" rel=\\"stylesheet\\" type=\\"text/css\\">\r\n</head>\r\n<body>\r\n<br>\r\n<br>\r\n<br>\r\n<br>\r\n<table align=\\"center\\" width=\\"100%\\">\r\n  <tr> \r\n    <td height=\\"32\\" align=center>\r\n	<a href=\\"[!--down.url--]\\" title=\\"[!--title--] －[!--down.name--]\\">\r\n	<img src=\\"../../data/images/download.jpg\\" border=0>\r\n	</a>\r\n	</td>\r\n  </tr>\r\n  <tr> \r\n    <td align=center>(点击下载)</td>\r\n  </tr>\r\n</table>\r\n<br>\r\n</body>\r\n</html>', '[!--empirenews.listtemp--] \r\n      <table width=\\"100%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"3\\" cellspacing=\\"1\\" style=\\"word-break:break-all; word-wrap:break-all;\\">\r\n        <tr> \r\n          <td height=\\"30\\"><span class=\\"name\\">本站网友 [!--username--]</span> <font color=\\"#666666\\">ip:[!--plip--]</font></td>\r\n          <td><div align=\\"right\\"><font color=\\"#666666\\">[!--pltime--] 发表</font></div></td>\r\n        </tr>\r\n        <tr valign=\\"top\\"> \r\n          <td height=\\"50\\" colspan=\\"2\\" class=\\"text\\">[!--pltext--]</td>\r\n        </tr>\r\n        <tr> \r\n          <td height=\\"30\\">&nbsp;</td>\r\n          <td><div align=\\"right\\" class=\\"re\\"> \r\n              <a href=\\"JavaScript:makeRequest(\\''[!--news.url--]e/pl/doaction.php?enews=DoForPl&plid=[!--plid--]&classid=[!--classid--]&id=[!--id--]&dopl=1&doajax=1&ajaxarea=zcpldiv[!--plid--]\\'',\\''EchoReturnedText\\'',\\''GET\\'',\\''\\'');\\">支持</a>[<span id=\\"zcpldiv[!--plid--]\\">[!--zcnum--]</span>]&nbsp; \r\n              <a href=\\"JavaScript:makeRequest(\\''[!--news.url--]e/pl/doaction.php?enews=DoForPl&plid=[!--plid--]&classid=[!--classid--]&id=[!--id--]&dopl=0&doajax=1&ajaxarea=fdpldiv[!--plid--]\\'',\\''EchoReturnedText\\'',\\''GET\\'',\\''\\'');\\">反对</a>[<span id=\\"fdpldiv[!--plid--]\\">[!--fdnum--]</span>]\r\n            </div></td>\r\n        </tr>\r\n      </table>\r\n      <table width=\\"100%\\" border=\\"0\\" cellspacing=\\"1\\" cellpadding=\\"3\\">\r\n        <tr>\r\n          <td background=\\"[!--news.url--]skin/default/images/plhrbg.gif\\"></td>\r\n        </tr>\r\n      </table>\r\n[!--empirenews.listtemp--]', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>搜索 - Powered by EmpireCMS</title>\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n<style type=\\"text/css\\">\r\n<!--\r\n.r {\r\ndisplay:inline;\r\nfont-weight:normal;\r\nmargin:0;\r\nfont-size:16px;\r\nmargin-top:10px;\r\n}\r\n.a{color:green}\r\n.fl{color:#77c}\r\n-->\r\n</style>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.dtheader--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n				<tr>\r\n					<td>现在的位置：<a href=\\"[!--news.url--]\\">首页</a>&nbsp;>&nbsp;搜索</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><form action=\\''index.php\\'' method=\\"GET\\" name=\\"search_news\\" id=\\"search_news\\">\r\n							<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"6\\" cellpadding=\\"0\\">\r\n								<tr>\r\n									<td height=\\"32\\">关键字：\r\n										<input name=\\"keyboard\\" type=\\"text\\" id=\\"keyboard\\" value=\\"[!--keyboard--]\\" size=\\"42\\" />\r\n                    <select name=\\"field\\" id=\\"field\\">\r\n                      <option value=\\"1\\">全文</option>\r\n                      <option value=\\"2\\">标题</option>\r\n                      <option value=\\"3\\">内容</option>\r\n                    </select> \r\n                    <input type=\\"submit\\" name=\\"Submit22\\" value=\\"搜索\\" />\r\n                    <font color=\\"#666666\\">(多个关键字请用&quot;空格&quot;隔开)</font> </td>\r\n								</tr>\r\n							</table>\r\n						</form>\r\n						<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"6\\">\r\n							<tr>\r\n								<td>系统搜索到约有<strong>[!--num--]</strong>项符合<strong>[!--keyboard--]</strong>的查询结果</td>\r\n							</tr>\r\n						</table>\r\n						[!--empirenews.listtemp--]\r\n						<h2 class=\\"r\\"><span>[!--no.num--].</span> <a class=\\"l\\" href=\\"[!--titleurl--]\\" target=\\"_blank\\">[!--title--]</a></h2>\r\n						<table width=\\"80%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n							<tbody>\r\n							<tr>\r\n								<td>[!--smalltext--]</td>\r\n							</tr>\r\n							<tr>\r\n								<td><span class=\\"a\\">[!--titleurl--] - [!--newstime--]</span></td>\r\n							</tr>\r\n							<tr>\r\n								<td>&nbsp;</td>\r\n							</tr>\r\n							</tbody>\r\n						</table>\r\n						[!--empirenews.listtemp--]\r\n						<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"list_page\\">\r\n							<tr>\r\n								<td>[!--listpage--]</td>\r\n							</tr>\r\n						</table></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 120, 'Y-m-d H:i:s');

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewspubvar`
--

CREATE TABLE IF NOT EXISTS `swtx_enewspubvar` (
  `varid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `myvar` varchar(60) NOT NULL DEFAULT '',
  `varname` varchar(20) NOT NULL DEFAULT '',
  `varvalue` text NOT NULL,
  `varsay` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tocache` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`varid`),
  UNIQUE KEY `varname` (`varname`),
  KEY `classid` (`classid`),
  KEY `tocache` (`tocache`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewspubvarclass`
--

CREATE TABLE IF NOT EXISTS `swtx_enewspubvarclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  `classsay` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsqmsg`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsqmsg` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL DEFAULT '',
  `msgtext` text NOT NULL,
  `haveread` tinyint(1) NOT NULL DEFAULT '0',
  `msgtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `to_username` varchar(30) NOT NULL DEFAULT '',
  `from_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `from_username` varchar(30) NOT NULL DEFAULT '',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `issys` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`),
  KEY `to_username` (`to_username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewssearch`
--

CREATE TABLE IF NOT EXISTS `swtx_enewssearch` (
  `searchid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `keyboard` varchar(255) NOT NULL DEFAULT '',
  `searchtime` int(10) unsigned NOT NULL DEFAULT '0',
  `searchclass` varchar(255) NOT NULL DEFAULT '',
  `result_num` int(10) unsigned NOT NULL DEFAULT '0',
  `searchip` varchar(20) NOT NULL DEFAULT '',
  `classid` varchar(255) NOT NULL DEFAULT '',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `orderby` varchar(30) NOT NULL DEFAULT '0',
  `myorder` tinyint(1) NOT NULL DEFAULT '0',
  `checkpass` varchar(32) NOT NULL DEFAULT '',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `iskey` tinyint(1) NOT NULL DEFAULT '0',
  `andsql` text NOT NULL,
  `trueclassid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`searchid`),
  KEY `checkpass` (`checkpass`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewssearchall`
--

CREATE TABLE IF NOT EXISTS `swtx_enewssearchall` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` text NOT NULL,
  `infotime` int(10) unsigned NOT NULL DEFAULT '0',
  `infotext` mediumtext NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `id` (`id`,`classid`,`infotime`),
  FULLTEXT KEY `title` (`title`,`infotext`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewssearchall_load`
--

CREATE TABLE IF NOT EXISTS `swtx_enewssearchall_load` (
  `lid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `titlefield` varchar(30) NOT NULL DEFAULT '',
  `infotextfield` varchar(30) NOT NULL DEFAULT '',
  `smalltextfield` varchar(30) NOT NULL DEFAULT '',
  `loadnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewssearchtemp`
--

CREATE TABLE IF NOT EXISTS `swtx_enewssearchtemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `subnews` smallint(6) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `listvar` text NOT NULL,
  `rownum` smallint(6) NOT NULL DEFAULT '0',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `subtitle` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `docode` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `swtx_enewssearchtemp`
--

INSERT INTO `swtx_enewssearchtemp` (`tempid`, `tempname`, `temptext`, `subnews`, `isdefault`, `listvar`, `rownum`, `modid`, `showdate`, `subtitle`, `classid`, `docode`) VALUES
(1, '默认搜索模板', '<!DOCTYPE html PUBLIC \\"-//W3C//DTD XHTML 1.0 Transitional//EN\\" \\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\">\r\n<html xmlns=\\"http://www.w3.org/1999/xhtml\\">\r\n<head>\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=utf-8\\" />\r\n<title>[!--keyboard--] 搜索结果 - Powered by EmpireCMS</title>\r\n<link href=\\"[!--news.url--]skin/default/css/style.css\\" rel=\\"stylesheet\\" type=\\"text/css\\" />\r\n<script type=\\"text/javascript\\" src=\\"[!--news.url--]skin/default/js/tabs.js\\"></script>\r\n<style type=\\"text/css\\">\r\n<!--\r\n.r {\r\ndisplay:inline;\r\nfont-weight:normal;\r\nmargin:0;\r\nfont-size:16px;\r\nmargin-top:10px;\r\n}\r\n.a{color:green}\r\n.fl{color:#77c}\r\n-->\r\n</style>\r\n</head>\r\n<body class=\\"listpage\\">\r\n[!--temp.dtheader--]\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n	<tr valign=\\"top\\">\r\n		<td class=\\"list_content\\"><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"position\\">\r\n				<tr>\r\n					<td>现在的位置：<a href=\\"[!--news.url--]\\" class=\\"classlinkclass\\">首页</a>&nbsp;>&nbsp;<a href=\\"[!--news.url--]search/\\" class=\\"classlinkclass\\">高级搜索</a>&nbsp;>&nbsp;搜索结果</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"box\\">\r\n				<tr>\r\n					<td><form action=\\''../../search/index.php\\'' method=\\"post\\" name=\\"search_news\\" id=\\"search_news\\">\r\n							<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"6\\" cellpadding=\\"0\\">\r\n								<input type=\\"hidden\\" name=\\"show\\" value=\\"title\\" />\r\n								<tr>\r\n									<td height=\\"32\\">关键字：\r\n										<input name=\\"keyboard\\" type=\\"text\\" id=\\"keyboard\\" value=\\"[!--keyboard--]\\" size=\\"42\\" />\r\n										<input type=\\"submit\\" name=\\"Submit22\\" value=\\"搜索\\" />\r\n										&nbsp;\r\n										<input type=\\"button\\" name=\\"Submit\\" value=\\"高级搜索\\" onclick=\\"self.location.href=\\''../../../search/\\''\\" />\r\n										(多个关键字请用&quot;空格&quot;隔开) </td>\r\n								</tr>\r\n							</table>\r\n						</form>\r\n						<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"6\\">\r\n							<tr>\r\n								<td>系统搜索到约有<strong>[!--ecms.num--]</strong>项符合<strong>[!--keyboard--]</strong>的查询结果</td>\r\n							</tr>\r\n						</table>\r\n						[!--empirenews.listtemp--]\r\n						<!--list.var1-->\r\n						[!--empirenews.listtemp--]\r\n						<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"list_page\\">\r\n							<tr>\r\n								<td>[!--show.page--]</td>\r\n							</tr>\r\n						</table></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>', 180, 1, '<h2 class=\\"r\\"><span>[!--no.num--].</span> <a class=\\"l\\" href=\\"[!--titleurl--]\\" target=\\"_blank\\">[!--title--]</a></h2>\r\n<table width=\\"80%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n	<tbody>\r\n		<tr>\r\n			<td>[!--smalltext--]</td>\r\n		</tr>\r\n		<tr>\r\n			<td><span class=\\"a\\">[!--titleurl--] - [!--newstime--]</span> - <a class=\\"fl\\" href=\\"[!--this.classlink--]\\" target=\\"_blank\\">[!--this.classname--]</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 1, 'Y-m-d', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewssearchtempclass`
--

CREATE TABLE IF NOT EXISTS `swtx_enewssearchtempclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsshopdd`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsshopdd` (
  `ddid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ddno` varchar(30) NOT NULL DEFAULT '',
  `ddtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `outproduct` tinyint(1) NOT NULL DEFAULT '0',
  `haveprice` tinyint(1) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `oicq` varchar(25) NOT NULL DEFAULT '',
  `msn` varchar(120) NOT NULL DEFAULT '',
  `email` varchar(120) NOT NULL DEFAULT '',
  `mycall` varchar(30) NOT NULL DEFAULT '',
  `phone` varchar(30) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zip` varchar(8) NOT NULL DEFAULT '',
  `psid` smallint(6) NOT NULL DEFAULT '0',
  `psname` varchar(60) NOT NULL DEFAULT '',
  `pstotal` float(11,2) NOT NULL DEFAULT '0.00',
  `alltotal` float(11,2) NOT NULL DEFAULT '0.00',
  `payfsid` smallint(6) NOT NULL DEFAULT '0',
  `payfsname` varchar(60) NOT NULL DEFAULT '',
  `payby` tinyint(4) NOT NULL DEFAULT '0',
  `alltotalfen` float(11,2) NOT NULL DEFAULT '0.00',
  `fp` tinyint(1) NOT NULL DEFAULT '0',
  `fptt` varchar(255) NOT NULL DEFAULT '',
  `fptotal` float(11,2) NOT NULL DEFAULT '0.00',
  `fpname` varchar(50) NOT NULL DEFAULT '',
  `userip` varchar(20) NOT NULL DEFAULT '',
  `signbuild` varchar(100) NOT NULL DEFAULT '',
  `besttime` varchar(120) NOT NULL DEFAULT '',
  `pretotal` float(11,2) NOT NULL DEFAULT '0.00',
  `ddtruetime` int(10) unsigned NOT NULL DEFAULT '0',
  `havecutnum` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ddid`),
  KEY `ddno` (`ddno`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsshopdd_add`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsshopdd_add` (
  `ddid` int(10) unsigned NOT NULL DEFAULT '0',
  `buycar` mediumtext NOT NULL,
  `bz` text NOT NULL,
  `retext` text NOT NULL,
  PRIMARY KEY (`ddid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsshoppayfs`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsshoppayfs` (
  `payid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `payname` varchar(60) NOT NULL DEFAULT '',
  `payurl` varchar(255) NOT NULL DEFAULT '',
  `paysay` text NOT NULL,
  `userpay` tinyint(1) NOT NULL DEFAULT '0',
  `userfen` tinyint(1) NOT NULL DEFAULT '0',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`payid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `swtx_enewsshoppayfs`
--

INSERT INTO `swtx_enewsshoppayfs` (`payid`, `payname`, `payurl`, `paysay`, `userpay`, `userfen`, `isclose`, `isdefault`) VALUES
(1, '邮政汇款', '', '邮政汇款地址:******', 0, 0, 0, 0),
(2, '银行转帐', '', '银行转帐帐号:******', 0, 0, 0, 0),
(3, '网银支付', '/e/payapi/ShopPay.php?paytype=alipay', '<p>网银支付</p>', 0, 0, 0, 1),
(4, '预付款支付', '', '预付款支付', 1, 0, 0, 0),
(5, '货到付款(或上门收款)', '', '货到付款(或上门收款)说明', 0, 0, 0, 0),
(6, '点数购买', '', '点数购买', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsshopps`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsshopps` (
  `pid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pname` varchar(60) NOT NULL DEFAULT '',
  `price` float(11,2) NOT NULL DEFAULT '0.00',
  `otherprice` text NOT NULL,
  `psay` text NOT NULL,
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `swtx_enewsshopps`
--

INSERT INTO `swtx_enewsshopps` (`pid`, `pname`, `price`, `otherprice`, `psay`, `isclose`, `isdefault`) VALUES
(1, '送货上门', 10.00, '', '送货上门', 0, 0),
(2, '特快专递（EMS）', 25.00, '', '特快专递（EMS）', 0, 0),
(3, '普通邮递', 5.00, '', '普通邮递', 0, 1),
(4, '邮局快邮', 12.00, '', '邮局快邮', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsshop_address`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsshop_address` (
  `addressid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `addressname` char(50) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `truename` char(20) NOT NULL DEFAULT '',
  `oicq` char(20) NOT NULL DEFAULT '',
  `msn` char(60) NOT NULL DEFAULT '',
  `email` char(60) NOT NULL DEFAULT '',
  `address` char(255) NOT NULL DEFAULT '',
  `zip` char(8) NOT NULL DEFAULT '',
  `mycall` char(30) NOT NULL DEFAULT '',
  `phone` char(30) NOT NULL DEFAULT '',
  `signbuild` char(100) NOT NULL DEFAULT '',
  `besttime` char(120) NOT NULL DEFAULT '',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`addressid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsshop_ddlog`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsshop_ddlog` (
  `logid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ddid` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ecms` varchar(30) NOT NULL DEFAULT '',
  `bz` varchar(255) NOT NULL DEFAULT '',
  `addbz` varchar(255) NOT NULL DEFAULT '',
  `logtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`logid`),
  KEY `ddid` (`ddid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsshop_precode`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsshop_precode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `prename` varchar(30) NOT NULL DEFAULT '',
  `precode` varchar(36) NOT NULL DEFAULT '',
  `premoney` int(10) unsigned NOT NULL DEFAULT '0',
  `pretype` tinyint(1) NOT NULL DEFAULT '0',
  `reuse` tinyint(1) NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `groupid` varchar(255) NOT NULL DEFAULT '',
  `classid` text NOT NULL,
  `musttotal` int(10) unsigned NOT NULL DEFAULT '0',
  `usenum` int(11) NOT NULL DEFAULT '0',
  `haveusenum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `precode` (`precode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsshop_set`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsshop_set` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `shopddgroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `buycarnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `havefp` tinyint(1) NOT NULL DEFAULT '0',
  `fpnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fpname` text NOT NULL,
  `ddmust` text NOT NULL,
  `haveatt` tinyint(1) NOT NULL DEFAULT '0',
  `shoptbs` varchar(255) NOT NULL DEFAULT '',
  `buystep` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `shoppsmust` tinyint(1) NOT NULL DEFAULT '0',
  `shoppayfsmust` tinyint(1) NOT NULL DEFAULT '0',
  `dddeltime` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cutnumtype` tinyint(1) NOT NULL DEFAULT '0',
  `cutnumtime` int(10) unsigned NOT NULL DEFAULT '0',
  `freepstotal` int(10) unsigned NOT NULL DEFAULT '0',
  `singlenum` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `swtx_enewsshop_set`
--

INSERT INTO `swtx_enewsshop_set` (`id`, `shopddgroupid`, `buycarnum`, `havefp`, `fpnum`, `fpname`, `ddmust`, `haveatt`, `shoptbs`, `buystep`, `shoppsmust`, `shoppayfsmust`, `dddeltime`, `cutnumtype`, `cutnumtime`, `freepstotal`, `singlenum`) VALUES
(1, 0, 0, 0, 10, '商品名称\r\n办公用品\r\n日用品', ',truename,mycall,address,', 0, ',shop,', 0, 1, 1, 0, 0, 120, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewssp`
--

CREATE TABLE IF NOT EXISTS `swtx_enewssp` (
  `spid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spname` varchar(30) NOT NULL DEFAULT '',
  `varname` varchar(30) NOT NULL DEFAULT '',
  `sppic` varchar(255) NOT NULL DEFAULT '',
  `spsay` varchar(255) NOT NULL DEFAULT '',
  `sptype` tinyint(1) NOT NULL DEFAULT '0',
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `maxnum` int(11) NOT NULL DEFAULT '0',
  `sptime` int(10) unsigned NOT NULL DEFAULT '0',
  `groupid` text NOT NULL,
  `userclass` text NOT NULL,
  `username` text NOT NULL,
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `cladd` tinyint(1) NOT NULL DEFAULT '0',
  `refile` tinyint(1) NOT NULL DEFAULT '0',
  `spfile` varchar(255) NOT NULL DEFAULT '',
  `spfileline` smallint(6) NOT NULL DEFAULT '0',
  `spfilesub` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`spid`),
  UNIQUE KEY `varname` (`varname`),
  KEY `refile` (`refile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsspacestyle`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsspacestyle` (
  `styleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `stylename` varchar(30) NOT NULL DEFAULT '',
  `stylepic` varchar(255) NOT NULL DEFAULT '',
  `stylesay` varchar(255) NOT NULL DEFAULT '',
  `stylepath` varchar(30) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `membergroup` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`styleid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `swtx_enewsspacestyle`
--

INSERT INTO `swtx_enewsspacestyle` (`styleid`, `stylename`, `stylepic`, `stylesay`, `stylepath`, `isdefault`, `membergroup`) VALUES
(1, '默认个人空间模板', '', '默认个人空间模板', 'default', 1, ',1,2,'),
(2, '默认企业空间模板', '', '默认企业空间模板', 'comdefault', 0, ',3,4,');

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsspclass`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsspclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  `classsay` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewssp_1`
--

CREATE TABLE IF NOT EXISTS `swtx_enewssp_1` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `titlepic` varchar(200) NOT NULL DEFAULT '',
  `bigpic` varchar(200) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `smalltext` varchar(255) NOT NULL DEFAULT '',
  `titlefont` varchar(20) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepre` varchar(30) NOT NULL DEFAULT '',
  `titlenext` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`sid`),
  KEY `spid` (`spid`),
  KEY `newstime` (`newstime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewssp_2`
--

CREATE TABLE IF NOT EXISTS `swtx_enewssp_2` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spid` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`),
  KEY `spid` (`spid`),
  KEY `newstime` (`newstime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewssp_3`
--

CREATE TABLE IF NOT EXISTS `swtx_enewssp_3` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spid` int(10) unsigned NOT NULL DEFAULT '0',
  `sptext` mediumtext NOT NULL,
  PRIMARY KEY (`sid`),
  UNIQUE KEY `spid` (`spid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewssp_3_bak`
--

CREATE TABLE IF NOT EXISTS `swtx_enewssp_3_bak` (
  `bid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `spid` int(10) unsigned NOT NULL DEFAULT '0',
  `sptext` mediumtext NOT NULL,
  `lastuser` varchar(30) NOT NULL DEFAULT '',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bid`),
  KEY `sid` (`sid`),
  KEY `spid` (`spid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewssql`
--

CREATE TABLE IF NOT EXISTS `swtx_enewssql` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sqlname` varchar(60) NOT NULL DEFAULT '',
  `sqltext` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewstable`
--

CREATE TABLE IF NOT EXISTS `swtx_enewstable` (
  `tid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `tname` varchar(60) NOT NULL DEFAULT '',
  `tsay` text NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `datatbs` text NOT NULL,
  `deftb` varchar(6) NOT NULL DEFAULT '',
  `yhid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `intb` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `swtx_enewstable`
--

INSERT INTO `swtx_enewstable` (`tid`, `tbname`, `tname`, `tsay`, `isdefault`, `datatbs`, `deftb`, `yhid`, `mid`, `intb`) VALUES
(1, 'news', '新闻系统数据表', '新闻系统数据表', 1, ',1,', '1', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewstags`
--

CREATE TABLE IF NOT EXISTS `swtx_enewstags` (
  `tagid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tagname` char(20) NOT NULL DEFAULT '',
  `num` int(10) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tagtitle` char(60) NOT NULL DEFAULT '',
  `tagkey` char(100) NOT NULL DEFAULT '',
  `tagdes` char(255) NOT NULL DEFAULT '',
  `fclast` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tagid`),
  UNIQUE KEY `tagname` (`tagname`),
  KEY `isgood` (`isgood`),
  KEY `cid` (`cid`),
  KEY `num` (`num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewstagsclass`
--

CREATE TABLE IF NOT EXISTS `swtx_enewstagsclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewstagsdata`
--

CREATE TABLE IF NOT EXISTS `swtx_enewstagsdata` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tagid` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`),
  KEY `tagid` (`tagid`),
  KEY `classid` (`classid`),
  KEY `id` (`id`),
  KEY `newstime` (`newstime`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewstask`
--

CREATE TABLE IF NOT EXISTS `swtx_enewstask` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `taskname` varchar(60) NOT NULL DEFAULT '',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `isopen` tinyint(1) NOT NULL DEFAULT '0',
  `filename` varchar(60) NOT NULL DEFAULT '',
  `lastdo` int(10) unsigned NOT NULL DEFAULT '0',
  `doweek` char(1) NOT NULL DEFAULT '0',
  `doday` char(2) NOT NULL DEFAULT '0',
  `dohour` char(2) NOT NULL DEFAULT '0',
  `dominute` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewstempbak`
--

CREATE TABLE IF NOT EXISTS `swtx_enewstempbak` (
  `bid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `subnews` smallint(6) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `listvar` text NOT NULL,
  `rownum` smallint(6) NOT NULL DEFAULT '0',
  `modid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `subtitle` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `docode` tinyint(1) NOT NULL DEFAULT '0',
  `baktime` int(10) unsigned NOT NULL DEFAULT '0',
  `temptype` varchar(30) NOT NULL DEFAULT '',
  `gid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lastuser` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`bid`),
  KEY `tempid` (`tempid`),
  KEY `temptype` (`temptype`),
  KEY `gid` (`gid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `swtx_enewstempbak`
--

INSERT INTO `swtx_enewstempbak` (`bid`, `tempid`, `tempname`, `temptext`, `subnews`, `isdefault`, `listvar`, `rownum`, `modid`, `showdate`, `subtitle`, `classid`, `docode`, `baktime`, `temptype`, `gid`, `lastuser`) VALUES
(1, 1, '', '<!doctype html>\r\n<html lang=\\"zh-cn\\">\r\n<head>\r\n<meta charset=\\"UTF-8\\">\r\n<meta name=\\"viewport\\" content=\\"width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\\">\r\n<meta http-equiv=\\"X-UA-Compatible\\" content=\\"ie=edge\\">\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=UTF-8\\" />\r\n<script>if(navigator.userAgent.toLocaleLowerCase().indexOf(\\"baidu\\") == -1){document.title =\\"「舜王通信」- 成都舜王科技有限公司综合业务部\\"}</script>  \r\n<title>成都400电话_成都400电话申请办理_成都办理400电话_成都400电话申请_成都400电话办理 - 舜王通信 - 成都舜王科技有限公司综合业务部</title>\r\n<meta name=\\"keywords\\" content=\\"成都400电话,成都400电话申请办理,成都办理400电话,成都400电话申请,成都400电话办理,舜王通信,成都舜王科技有限公司综合业务部\\" />\r\n<meta name=\\"description\\" content=\\"成都本地400电话办理服务中心,专为成都本地企业提供400电话办理,申请,资费,号码,业务等相关资讯及办理,舜王通信提供专业、实惠、快速的服务。如需办理400电话或资讯业务,请拨打400-028-1238\\" />\r\n<link rel=\\"stylesheet\\" href=\\"style/css/index.css\\">\r\n<link rel=\\"stylesheet\\" href=\\"style/css/bottom.css\\">\r\n<style>\r\n.slideBox {\r\n	height: 400px;\r\n	width: 100%;\r\n	overflow: hidden;\r\n	position: relative;\r\n}\r\n.slideBox .hd {\r\n	height: 15px;\r\n	overflow: hidden;\r\n	position: absolute;\r\n	left: 50%;\r\n	margin-left: -30px;\r\n	bottom: 10px;\r\n	z-index: 1;\r\n}\r\n.slideBox .hd ul {\r\n	overflow: hidden;\r\n	zoom: 1;\r\n	float: left;\r\n}\r\n.slideBox .hd ul li {\r\n	float: left;\r\n	margin-right: 4px;\r\n	width: 8px;\r\n	height: 8px;\r\n	line-height: 14px;\r\n	text-align: center;\r\n	background: #fff;\r\n	cursor: pointer;\r\n	border-radius: 50%\r\n}\r\n.slideBox .hd ul li.on {\r\n	background: #317ee7;\r\n	color: #fff;\r\n}\r\n.slideBox .bd {\r\n	position: relative;\r\n	height: 100%;\r\n	z-index: 0;\r\n}\r\n.slideBox .bd .banner {\r\n	zoom: 1;\r\n	vertical-align: middle;\r\n}\r\n</style>\r\n</head>\r\n<body data-index=\\"0\\">\r\n<!--head B-->\r\n<div class=\\"head\\">\r\n  <div class=\\"wrap cf\\">\r\n<h1>舜王通信400</h1>\r\n<div id=\\"logo\\" class=\\"logo fl\\"> <a href=\\"/\\"> <img src=\\"style/images/logo.png\\" alt=\\"成都400电话\\" width=\\"178\\" height=\\"50\\"> </a> </div>\r\n<div class=\\"fl slogan\\"><img src=\\"style/images/lg2.png\\" alt=\\"成都400电话\\" width=\\"275\\" height=\\"59\\"> </div>\r\n<div class=\\"fr callMe cf\\">\r\n  <div class=\\"fl icon-phone\\"></div>\r\n  <div class=\\"fl hotline\\">\r\n<p class=\\"hotline-title\\">全国400服务热线</p>\r\n<p class=\\"hotline-num\\">400-028-1238</p>\r\n  </div>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--head E--> \r\n<!--nav B-->\r\n<div class=\\"nav\\">\r\n  <div class=\\"wrap\\"> <a > <span>首页</span>\r\n<div class=\\"bg-block\\"></div>\r\n</a> <a href=\\"./understand400-jiazhi.html\\"> <span>400的价值</span>\r\n<div class=\\"bg-block\\"></div>\r\n</a> <a href=\\"./allfunction.html\\"> <span>实用功能</span>\r\n<div class=\\"bg-block\\"></div>\r\n</a> <a href=\\"Customercase.html\\"> <span>选号指南</span>\r\n<div class=\\"bg-block\\"></div>\r\n</a> <a class=\\"hot\\" href=\\"./158.html\\"> <span>热销套餐</span>\r\n<div class=\\"bg-block\\"></div>\r\n</a> <a href=\\"./list.html\\"> <span>成功案例</span>\r\n<div class=\\"bg-block\\"></div>\r\n</a> <a href=\\"./aboutus.html\\"> <span>关于我们</span> \r\n<div class=\\"bg-block\\"></div>\r\n</a> </div>\r\n</div>\r\n<!--nav E--> \r\n<!--banner-->\r\n<div class=\\"slideBox\\">\r\n  <div class=\\"hd\\">\r\n<ul>\r\n  <li></li>\r\n  <li></li>\r\n  <li></li>\r\n  <li></li>\r\n  <li></li>\r\n</ul>\r\n  </div>\r\n  <div class=\\"bd\\">\r\n<div class=\\"banner-box banner-kf\\" data-agl-cvt=\\"1\\">\r\n  <div class=\\"banner banner1\\"></div>\r\n  <div class=\\"banner banner2\\"></div>\r\n  <div class=\\"banner banner3\\"></div>\r\n  <div class=\\"banner banner4\\"></div>\r\n  <div class=\\"banner banner5\\"></div>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--新年视频--> \r\n<!--<div class=\\"new-year\\">\r\n<div class=\\"new-year-video\\" id=\\"new-year-video\\">\r\n   <div id=\\"new-year-video-btn\\"></div>\r\n</div>\r\n</div>-->\r\n<!--400 核心 A-->\r\n<div class=\\"wrap telephone\\">\r\n  <h2 class=\\"tit\\">舜王通信·秒杀号码</h2>\r\n  <ul>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-8894</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-9114</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-633-9505</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-0014</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-2238</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-4004</h4>\r\n      <h5><span>限时价:<em>70元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-7774</h4>\r\n      <h5><span>限时价:<em>70元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-7747</h4>\r\n      <h5><span>限时价:<em>70元/月</em></span></h5>\r\n    </a></li>\r\n\r\n    <li><a href=\\"#\\">\r\n      <h4>400-8899-840</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-8800-486</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-8800-487</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-0808-141</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n\r\n    <li><a href=\\"#\\">\r\n      <h4>400-0808-747</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-9939-114</h4>\r\n      <h5><span>限时价:<em>30元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-844-0516</h4>\r\n      <h5><span>限时价:<em>30元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-9944-909</h4>\r\n      <h5><span>限时价:<em>99元/月</em></span></h5>\r\n    </a></li>\r\n\r\n    <li><a href=\\"#\\">\r\n      <h4>400-627-9979</h4>\r\n      <h5><span>限时价:<em>99元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-644-8848</h4>\r\n      <h5><span>限时价:<em>80元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-993-8848</h4>\r\n      <h5><span>限时价:<em>99元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-843-8858</h4>\r\n      <h5><span>限时价:<em>99元/月</em></span></h5>\r\n    </a></li>\r\n\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-9999</h4>\r\n      <h5><span>限时价:<em>8W元/年</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-9444</h4>\r\n      <h5><span>限时价:<em>1W元/年</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-4400</h4>\r\n      <h5><span>限时价:<em>1W元/年</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-4444</h4>\r\n      <h5><span>限时价:<em>8W元/年</em></span></h5>\r\n    </a></li>\r\n\r\n  </ul>\r\n</div>\r\n\r\n<div style=\\"text-align:center; margin-top:30px;\\">\r\n<img src=\\"/style/css/img/small-2.jpg\\" />\r\n</div>\r\n\r\n\r\n<!--400 核心 B-->\r\n<div class=\\"core wrap\\">\r\n  <h2 class=\\"tit\\">400电话·核心价值</h2>\r\n  <div class=\\"core-box cf\\"> \r\n<!--提升企业形象，增加广告回报-->\r\n<div class=\\"item fl\\">\r\n  <h4>提升企业形象，增加广告回报</h4>\r\n  <div class=\\"img\\"> <img src=\\"style/images/jz1.png\\" alt=\\"解决接听来电占线难题\\" width=355 height=175> </div>\r\n  <p>同样款式，同样价格，您选谁？</p>\r\n</div>\r\n<!--解决来电占线难题-->\r\n<div class=\\"item fr\\">\r\n  <h4>解决来电占线难题</h4>\r\n  <div class=\\"img\\"> <img src=\\"style/images/jz2.png\\" alt=\\"广告效果提升30%\\" width=285 height=175> </div>\r\n  <p>多用户同时拨打400，可实现同时接听。</p>\r\n</div>\r\n  </div>\r\n  <div class=\\"core-box cf\\"> \r\n<!--让客户服务更规范-->\r\n<div class=\\"item fl\\">\r\n  <h4>让客户服务更规范</h4>\r\n  <div class=\\"img\\"> <img src=\\"style/images/jz3.png\\" alt=\\"让客户服务更规范\\" width=414 height=170> </div>\r\n  <p>专业系统提示音，让企业形象立即提升，<br>\r\n通话录音，更能免除服务纠纷。</p>\r\n</div>\r\n<!--搬家不换好、客户不流失-->\r\n<div class=\\"item fr\\">\r\n  <h4>轻松应对员工离职，搬家不换号</h4>\r\n  <div class=\\"img\\"> <img src=\\"style/images/jz4.png\\" alt=\\"搬家不换号，客户不流失\\" width=298 height=167> </div>\r\n  <p>当企业搬迁或员工离职，只需变更400下<br>\r\n绑定的座机或手机号码即可，客户永不流失。</p>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--400 核心 E--> \r\n<!--关于我们 B-->\r\n<div class=\\"wrap needSkt\\">\r\n  <h2 class=\\"tit\\">舜王通信·业务优势</h2>\r\n  <div class=\\"need-group cf\\">\r\n<div class=\\"item item1\\">\r\n  <h4>十年企业 更有保障</h4>\r\n  <p>每个来电都是商机，让十年企业<br>\r\n为您护航，更安心。</p>\r\n</div>\r\n<div class=\\"item item2\\">\r\n  <h4>号源全  价格优</h4>\r\n  <p>可提供4000、4001、4006、4007、4008、<br>\r\n4009全号段号源。套餐性价比高。</p>\r\n</div>\r\n<div class=\\"item item3 mr0\\">\r\n  <h4>接通速度快30%</h4>\r\n  <p>百人研发与支撑团队，平台先进稳定，<br>\r\n为您不错失一个商机保驾护航。</p>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--关于我们 E--> \r\n<!--选号先看号段 B-->\r\n<div class=\\"wrap skt-how\\">\r\n  <h2 class=\\"tit\\">舜王通信·覆盖号段</h2>\r\n  <div class=\\"how-tems cf\\"> \r\n<!--电信-->\r\n<div class=\\"tem fl\\">\r\n  <div class=\\"dx tag\\"></div>\r\n  <p><span>号段：</span><span class=\\"317ee7\\">4008、4009</span></p>\r\n  <p class=\\"317ee7\\"><span>基础电路提供：</span><span class=\\"fno\\">中国电信</span></p>\r\n  <p><span>优点：</span><span class=\\"fno\\">接通快、稳定，追求品质用户优选</span></p>\r\n  <p><span>增值功能与技术支撑：</span><span class=\\"fno\\">舜王通信</span></p>\r\n  <p><span>用户选择率：</span><span class=\\"fno\\">约50%</span></p>\r\n  <div class=\\"fl needNum kf\\"  data-agl-cvt=\\"1\\">索取电信400号码</div>\r\n</div>\r\n<!--移动-->\r\n<div class=\\"tem fl mgrl28\\">\r\n  <div class=\\"yd tag\\"></div>\r\n  <p><span>号段：</span><span class=\\"317ee7\\">4001、4007</span></p>\r\n  <p class=\\"317ee7\\"><span>基础电路提供：</span><span class=\\"fno\\">中国移动</span></p>\r\n  <p><span>优点：</span><span class=\\"fno\\">移动网络强，手机接听用户优选</span></p>\r\n  <p><span>增值功能与技术支撑：</span><span class=\\"fno\\">舜王通信</span></p>\r\n  <p><span>用户选择率：</span><span class=\\"fno\\">约25%</span></p>\r\n  <div class=\\"fl needNum kf\\"  data-agl-cvt=\\"1\\">索取移动400号码</div>\r\n</div>\r\n<!--联通-->\r\n<div class=\\"tem fl\\">\r\n  <div class=\\"lt tag\\"></div>\r\n  <p><span>号段：</span><span class=\\"317ee7\\">4000、4006</span></p>\r\n  <p class=\\"317ee7\\"><span>基础电路提供：</span><span class=\\"fno\\">中国联通</span></p>\r\n  <p><span>优点：</span><span class=\\"fno\\">价格便宜，小企业优选</span></p>\r\n  <p><span>增值功能与技术支撑：</span><span class=\\"fno\\">舜王通信</span></p>\r\n  <p><span>用户选择率：</span><span class=\\"fno\\">约25%</span></p>\r\n  <div class=\\"fl needNum kf\\"  data-agl-cvt=\\"1\\">索取联通400号码</div>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--选号先看号段 B--> \r\n<!--选号秘籍 B-->\r\n<div class=\\"wrap miji\\">\r\n  <h2 class=\\"tit\\">选号秘籍</h2>\r\n  <div class=\\"miji-group cf\\">\r\n<div class=\\"item item1 cf\\">\r\n  <div class=\\"idx idx1\\"></div>\r\n  <div class=\\"tex\\">\r\n<div class=\\"tit\\">看号段</div>\r\n<p>4008/4009&nbsp;&nbsp;&nbsp;4001/4007&nbsp;&nbsp;&nbsp;4000/4006<br>\r\n  中国电信&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中国移动&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中国联通</p>\r\n  </div>\r\n</div>\r\n<div class=\\"item item2 cf\\">\r\n  <div class=\\"idx idx2\\"></div>\r\n  <div class=\\"tex\\">\r\n<div class=\\"tit\\">看组合</div>\r\n<p>组合越有规律，越易记，<br>\r\n  形象越好，价格越高。</p>\r\n  </div>\r\n</div>\r\n<div class=\\"item item3 cf\\">\r\n  <div class=\\"idx idx3\\"></div>\r\n  <div class=\\"tex\\">\r\n<div class=\\"tit\\">看数字</div>\r\n<p>8、9、6数字，更符合客户认知习惯，<br>\r\n  客户选择较多。 </p>\r\n  </div>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--选号秘籍 E--> \r\n<!--精选号码推荐B-->\r\n<div class=\\"wrap Diamonds\\">\r\n  <h2 class=\\"tit\\">精选号码推荐</h2>\r\n  <div class=\\"cf tc-show \\"> \r\n<!--皇冠靓号-->\r\n<div class=\\"tc-show-item fl\\">\r\n  <div class=\\"img\\"> <img src=\\"style/images/jx1.png\\"> </div>\r\n  <div class=\\"flag\\">皇冠靓号</div>\r\n  <div class=\\"gp\\">组合规律</div>\r\n  <div class=\\"rule\\"> AAAAAA、AAAAA、ABCDE、AAABBB </div>\r\n  <div class=\\"Example-num\\">\r\n<p>示例号码</p>\r\n<div class=\\"num-group cf\\">\r\n  <div class=\\"n1 fl\\">\r\n<div>400*-333-333</div>\r\n<div>400-*6-56789</div>\r\n<div>400-*6-98765</div>\r\n<div>400*-999-000</div>\r\n  </div>\r\n  <div class=\\"n2 fr\\">\r\n<div>400-*9-88888</div>\r\n<div>400-*5-12345</div>\r\n<div>400*-888-777</div>\r\n<div>400*-888-000</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"tc-btn kf\\"  data-agl-cvt=\\"1\\"> 好号码抢先预占 </div>\r\n</div>\r\n<!--钻石靓号-->\r\n<div class=\\"tc-show-item fl m-RL-16\\">\r\n  <div class=\\"img\\"> <img src=\\"style/images/jx2.png\\"> </div>\r\n  <div class=\\"flag\\">钻石靓号</div>\r\n  <div class=\\"gp\\">组合规律</div>\r\n  <div class=\\"rule\\"> AAAA、ABCD、AABBCC、ABCABC </div>\r\n  <div class=\\"Example-num\\">\r\n<p>示例号码</p>\r\n<div class=\\"num-group cf\\">\r\n  <div class=\\"n1 fl\\">\r\n<div>400-*61-9999</div>\r\n<div>400-*60-6789</div>\r\n<div>400*-589-589</div>\r\n<div>400*-00-11-88</div>\r\n  </div>\r\n  <div class=\\"n2 fr\\">\r\n<div>400-*80-8888</div>\r\n<div>400-*68-5678</div>\r\n<div>400*-658-658</div>\r\n<div>400*-00-66-00</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"tc-btn kf\\"  data-agl-cvt=\\"1\\"> 好号码抢先预占 </div>\r\n</div>\r\n<!--五星靓号-->\r\n<div class=\\"tc-show-item fl\\">\r\n  <div class=\\"img\\"> <img src=\\"style/images/jx3.png\\"> </div>\r\n  <div class=\\"flag\\">五星靓号</div>\r\n  <div class=\\"gp\\">组合规律</div>\r\n  <div class=\\"rule\\"> AABB、ABBB、ABAB、ABBA </div>\r\n  <div class=\\"Example-num\\">\r\n<p>示例号码</p>\r\n<div class=\\"num-group cf\\">\r\n  <div class=\\"n1 fl\\">\r\n<div>400-*18-5588</div>\r\n<div>400-*97-1777</div>\r\n<div>400-*27-9898</div>\r\n<div>400-*68-9119</div>\r\n  </div>\r\n  <div class=\\"n2 fr\\">\r\n<div>400-*65-6699</div>\r\n<div>400-*80-7888</div>\r\n<div>400-*18-6868</div>\r\n<div>400-*91-6996</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"tc-btn kf\\"  data-agl-cvt=\\"1\\"> 好号码抢先预占 </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"free2\\">\r\n<div class=\\"form-box form-box-css f_l clearfix\\" data-title=\\"400.com-申请好号码免费试用\\">\r\n  <input class=\\"name-vo-sub2 _183\\" maxlength=\\"5\\" type=\\"text\\" value=\\"您的姓名\\">\r\n  <input class=\\"phone-vo-sub2 _183\\" maxlength=\\"11\\" type=\\"text\\" value=\\"手机号码\\">\r\n  <input class=\\"inputcode-vo-sub2 _164\\" maxlength=\\"4\\" id=\\"inputcode-vo-sub2\\" type=\\"text\\" value=\\"验证码\\">\r\n  <div id=\\"code-vo-sub2\\"  class=\\"code-vo-sub2 fl\\" ></div>\r\n  <input class=\\"btn btn-vo-sub2\\" type=\\"button\\" value=\\"立即提交申请\\"  data-agl-cvt=\\"5\\">\r\n</div>\r\n  </div>\r\n</div>\r\n<!--精选号码推荐E--> \r\n\r\n\r\n\r\n<div style=\\"text-align:center; margin-top:20px;\\">\r\n<img src=\\"/style/css/img/small-2.jpg\\" />\r\n</div>\r\n\r\n\r\n\r\n\r\n<!--首页400套餐 B-->\r\n<div class=\\"wrap\\">\r\n  <h2 class=\\"tit\\">精选400套餐</h2>\r\n  <div class=\\"cf tc-show \\"> \r\n<!--198 套餐-->\r\n<div class=\\"tc-show-item fl\\">\r\n  <div class=\\"tc-log tc-log-1\\"></div>\r\n  <div class=\\"tc-name cf\\"> <span class=\\"jg _168 \\"></span> <span class=\\"dw tc-hot\\">元/月（合约3年）</span> </div>\r\n  <div class=\\"tc-fl cf\\">\r\n<div class=\\"tc-1 cf fl\\">\r\n  <div class=\\"tc-icon fl\\"></div>\r\n  <div class=\\"tc-sm fl\\">\r\n<div class=\\"prow\\">送3项</div>\r\n<div class=\\"zz\\">增值功能</div>\r\n  </div>\r\n</div>\r\n<div class=\\"tc-2 cf fl\\">\r\n  <div class=\\"tc-icon fl\\"></div>\r\n  <div class=\\"tc-sm fl\\">\r\n<div class=\\"prow\\">送5000元</div>\r\n<div class=\\"zz\\">400话费</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"Example-num\\">\r\n<p>示例号码</p>\r\n<!--168套餐-->\r\n<div class=\\"num-group cf\\">\r\n  <div class=\\"n1 fl\\">\r\n<div>400-*66-5188</div>\r\n<div>400-*68-5558</div>\r\n<div>400-*60-1110</div>\r\n  </div>\r\n  <div class=\\"n2 fr\\">\r\n<div>400-*77-6066</div>\r\n<div>400-*80-5880</div>\r\n<div>400*-996-880</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"tc-btn kf\\"  data-agl-cvt=\\"1\\"> 获取更多好号码 </div>\r\n</div>\r\n<!--598套餐-->\r\n<div class=\\"tc-show-item fl m-RL-16\\">\r\n  <div class=\\"tc-log tc-log-2\\"></div>\r\n  <div class=\\"tc-name\\"> <span class=\\"jg _598 \\"></span><!--598--> \r\n<span class=\\"dw tc-hot\\">元/月（合约3年）</span> </div>\r\n  <div class=\\"tc-fl cf\\">\r\n<div class=\\"tc-1 cf fl\\">\r\n  <div class=\\"tc-icon fl\\"></div>\r\n  <div class=\\"tc-sm fl\\">\r\n<div class=\\"prow\\">送5项</div>\r\n<div class=\\"zz\\">增值功能</div>\r\n  </div>\r\n</div>\r\n<div class=\\"tc-2 cf fl\\">\r\n  <div class=\\"tc-icon fl\\"></div>\r\n  <div class=\\"tc-sm fl\\">\r\n<div class=\\"prow\\">送20000元</div>\r\n<div class=\\"zz\\">400话费</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"Example-num\\">\r\n<p>示例号码</p>\r\n<div class=\\"num-group cf\\">\r\n  <div class=\\"n1 fl\\">\r\n<div>400-*60-8000</div>\r\n<div>400-*78-1777</div>\r\n<div>400-*69-6688</div>\r\n  </div>\r\n  <div class=\\"n2 fr\\">\r\n<div>400-*19-7799</div>\r\n<div>400*-666-788</div>\r\n<div>400*-688-699</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"tc-btn kf\\"  data-agl-cvt=\\"1\\"> 获取更多好号码 </div>\r\n</div>\r\n<!--988 套餐-->\r\n<div class=\\"tc-show-item fl\\">\r\n  <div class=\\"tc-log tc-log-3\\"></div>\r\n  <div class=\\"tc-name\\"> <span class=\\"jg _998 \\"></span> <span class=\\"dw tc-hot\\">元/月起（合约3年）</span> </div>\r\n  <div class=\\"tc-fl cf\\">\r\n<div class=\\"tc-1 cf fl\\">\r\n  <div class=\\"tc-icon fl\\"></div>\r\n  <div class=\\"tc-sm fl\\">\r\n<div class=\\"prow\\">送6项</div>\r\n<div class=\\"zz\\">增值功能</div>\r\n  </div>\r\n</div>\r\n<div class=\\"tc-2 cf fl\\">\r\n  <div class=\\"tc-icon fl\\"></div>\r\n  <div class=\\"tc-sm fl\\">\r\n<div class=\\"prow\\">送20000元</div>\r\n<div class=\\"zz\\">400话费</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"Example-num\\">\r\n<p>示例号码</p>\r\n<div class=\\"num-group cf\\">\r\n  <div class=\\"n1 fl\\">\r\n<div>400-*18-6888</div>\r\n<div>400-*60-1888</div>\r\n<div>400-*58-6999</div>\r\n  </div>\r\n  <div class=\\"n2 fr\\">\r\n<div>400-*60-6999</div>\r\n<div>400-*58-5666</div>\r\n<div>400-*98-5666</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"tc-btn kf\\"  data-agl-cvt=\\"1\\"> 获取更多好号码 </div>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--首页400套餐 E--> \r\n<!--400增值功能 B-->\r\n<div class=\\"zzPrower wrap\\">\r\n  <h2 class=\\"tit\\">舜王通信400增值功能</h2>\r\n  <p class=\\"sm-tit\\"> <a href=\\"./allfunction.html\\">了解更多实用功能></a> </p>\r\n  <div class=\\"prower-group cf\\">\r\n<div class=\\"item\\">\r\n  <div class=\\"tit\\">\r\n<div class=\\"icon icon1\\"></div>\r\n来电欢迎词 </div>\r\n  <p class=\\"des\\">企业的有声名片，用个性语音代替单调铃声，在等待接通时间里，向客户传达企业真实信息，增加信任。</p>\r\n  <p class=\\"xzl\\">用户选择率</p>\r\n  <div class=\\"bfb\\">100%</div>\r\n  <div class=\\"btn kf\\"  data-agl-cvt=\\"1\\">立即体验</div>\r\n</div>\r\n<div class=\\"item\\">\r\n  <div class=\\"tit\\">\r\n<div class=\\"icon icon2\\"></div>\r\n一号多线 </div>\r\n  <p class=\\"des\\">一个400号码可以绑定多部手机、座机，可供多客户同时打入，系统自动选择空闲线路接入，不错失商机。</p>\r\n  <p class=\\"xzl\\">用户选择率</p>\r\n  <div class=\\"bfb\\">100%</div>\r\n  <div class=\\"btn kf\\"  data-agl-cvt=\\"1\\">立即体验</div>\r\n</div>\r\n<div class=\\"item\\">\r\n  <div class=\\"tit\\">\r\n<div class=\\"icon icon3\\"></div>\r\n通话录音 </div>\r\n  <p class=\\"des\\">每一个400电话来电通话全程录音，帮助企业监督客服服务质量，也为处理客户纠纷、投诉提供证据。</p>\r\n  <p class=\\"xzl\\">用户选择率</p>\r\n  <div class=\\"bfb\\">90%</div>\r\n  <div class=\\"btn kf\\"  data-agl-cvt=\\"1\\">立即体验</div>\r\n</div>\r\n<div class=\\"item mr0\\">\r\n  <div class=\\"tit\\">\r\n<div class=\\"icon icon4\\"></div>\r\nIVR智能语音导航 </div>\r\n  <p class=\\"des\\">根据客户拨打400来电的按键选择，自动为客户提供相应服务支持，提高服务效率。</p>\r\n  <p class=\\"xzl\\">用户选择率</p>\r\n  <div class=\\"bfb\\">80%</div>\r\n  <div class=\\"btn kf\\"  data-agl-cvt=\\"1\\">立即体验</div>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--400增值功能 E--> \r\n<!--400电话办理流程 B-->\r\n<div class=\\"wrap process\\">\r\n  <h2 class=\\"tit\\">400电话办理流程</h2>\r\n  <div class=\\"process-group\\">\r\n<div class=\\"item\\">\r\n  <div class=\\"idx idx1\\"></div>\r\n  <div class=\\"tex\\">\r\n<div class=\\"tit\\">选号码、选功能、选套餐</div>\r\n<p>我们提供更丰富号源、更高性价比套餐。</p>\r\n  </div>\r\n</div>\r\n<div class=\\"item\\">\r\n  <div class=\\"idx idx2\\"></div>\r\n  <div class=\\"tex\\">\r\n<div class=\\"tit\\">签约付款，锁定号码</div>\r\n<p>签订正式合同并付款即可锁定号码。</p>\r\n  </div>\r\n</div>\r\n<div class=\\"item\\">\r\n  <div class=\\"idx idx3\\"></div>\r\n  <div class=\\"tex\\">\r\n<div class=\\"tit\\">提交实名认证材料</div>\r\n<p>做好实名认证，长期使用更有保障。</p>\r\n  </div>\r\n</div>\r\n<div class=\\"item\\">\r\n  <div class=\\"idx idx4\\"></div>\r\n  <div class=\\"tex\\">\r\n<div class=\\"tit\\">开通服务</div>\r\n<p>开通服务只是开始，长期技术支撑更关键。</p>\r\n  </div>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--400电话办理流程 E-->\r\n<div class=\\"wrap small-banner small-banner-2 kf\\"  data-agl-cvt=\\"1\\"></div>\r\n\r\n<!-- bottom -->\r\n<div class=\\"bottom\\">\r\n  <div class=\\"bt1\\">\r\n    <p>舜王通信·新闻中心</p>\r\n  </div>\r\n\r\n  <div class=\\"bt2\\">\r\n    <div class=\\"box1 f\\">\r\n      <div class=\\"top\\">公司新闻</div>\r\n      <div class=\\"center\\">\r\n        <img src=\\"./style/css/img/ct-img.jpg\\" alt=\\"\\">\r\n        <ul>\r\n[e:loop={4,9,0,0}]\r\n<li><a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" target=\\"_blank\\"><?=$bqr[\\''title\\'']?></a> </li>\r\n[/e:loop]\r\n        </ul>\r\n      </div>\r\n      <div class=\\"btm\\">\r\n        <a href=\\"#\\">查看更多新资讯</a>\r\n      </div>\r\n    </div>\r\n    <div class=\\"box2 f\\">\r\n      <div class=\\"top\\">行业动态</div>\r\n      <div class=\\"center\\">\r\n        <img src=\\"./style/css/img/ct-img.jpg\\" alt=\\"\\">\r\n        <ul>\r\n          <li><a href=\\"#\\">怎么开通400电话？</a></li>\r\n          <li><a href=\\"#\\">400电话是如何计费的？</a></li>\r\n          <li><a href=\\"#\\">外地拨打400电话会收取漫游费吗？</a></li>\r\n          <li><a href=\\"#\\">办理400电话需要交哪些费用</a></li>\r\n          <li><a href=\\"#\\">申请需要什么资料</a></li>\r\n          <li><a href=\\"#\\">如何正确选择400电话套餐</a></li>\r\n          <li><a href=\\"#\\">如何正确选择400电话套餐</a></li>\r\n          <li><a href=\\"#\\">如何正确选择400电话套餐</a></li>    \r\n          <li><a href=\\"#\\">外地拨打400电话会收取漫游费吗？</a></li>\r\n        </ul>\r\n      </div>\r\n      <div class=\\"btm\\">\r\n        <a href=\\"#\\">查看更多新资讯</a>\r\n      </div>\r\n    </div>\r\n    <div class=\\"box3 f\\">\r\n      <div class=\\"top\\">常见问题</div>\r\n      <div class=\\"center\\">\r\n        <img src=\\"./style/css/img/ct-img.jpg\\" alt=\\"\\">\r\n        <ul>\r\n          <li><a href=\\"#\\">怎么开通400电话？</a></li>\r\n          <li><a href=\\"#\\">400电话是如何计费的？</a></li>\r\n          <li><a href=\\"#\\">外地拨打400电话会收取漫游费吗？</a></li>\r\n          <li><a href=\\"#\\">办理400电话需要交哪些费用</a></li>\r\n          <li><a href=\\"#\\">申请需要什么资料</a></li>\r\n          <li><a href=\\"#\\">如何正确选择400电话套餐</a></li>\r\n          <li><a href=\\"#\\">如何正确选择400电话套餐</a></li>\r\n          <li><a href=\\"#\\">如何正确选择400电话套餐</a></li>      \r\n          <li><a href=\\"#\\">外地拨打400电话会收取漫游费吗？</a></li>\r\n        </ul>\r\n      </div>\r\n      <div class=\\"btm\\">\r\n        <a href=\\"#\\">查看更多新资讯</a>\r\n      </div>\r\n    </div>\r\n  </div>\r\n\r\n  <div class=\\"bt3\\">\r\n      <div class=\\"sp1\\">\r\n        <span>标签直达:</span>\r\n        <a href=\\"/\\">成都400电话</a>\r\n        <a href=\\"/\\">成都400电话办理</a>\r\n        <a href=\\"/\\">成都400电话申请</a>\r\n        <a href=\\"/\\">成都企业400电话</a>\r\n        <a href=\\"/\\">成都办400电话</a>\r\n        <a href=\\"/\\">成都400电话安装</a>\r\n      </div>\r\n      <div class=\\"sp2\\">\r\n        <span>友情链接:</span>\r\n        <a href=\\"https://www.shunking.cn/\\" target=\\"_blank\\">舜王科技</a>\r\n        <a href=\\"http://www.xzhywl.cn/\\" target=\\"_blank\\">鸿扬网络</a>\r\n        <a href=\\"https://www.swcy.shunking.cn/\\" target=\\"_blank\\">舜王彩印</a>\r\n        <a href=\\"/\\" target=\\"_blank\\">舜王通信</a>\r\n        <a href=\\"https://www.site.shunking.cn/\\" target=\\"_blank\\">舜王建站</a>\r\n      </div>\r\n  </div>\r\n</div>\r\n<!-- bottom -->\r\n<!--footer B-->\r\n<div class=\\"foot\\">\r\n    <div class=\\"wrap cf\\">\r\n      <div class=\\"fl flink\\">\r\n        <div class=\\"jumpUrl cf\\"> <a href=\\"./Customercase.html\\">选号指南</a><span>|</span> <a href=\\"./allfunction.html\\">实用功能</a><span>|</span> <a href=\\"./changjianwenti.html\\">常见问题</a><span>|</span> <a href=\\"./Payment.html\\">付款方式</a><span>|</span> <a href=\\"./aboutus.html#conectUs\\">联系我们</a><span>|</span> <a href=\\"./complaint.html\\">投诉建议</a> </div>\r\n        <div class=\\"company-message\\">\r\n          <div class=\\"c c1\\">成都舜王科技有限公司 版权所有 Copyright © 2004-<script>var y = new Date();document.write(y.getFullYear());</script>&nbsp;舜王通信  <a target=\\"_blank\\" href=\\"http://www.beian.miit.gov.cn\\">蜀ICP备16023211号</a></div>\r\n          <div class=\\"cf c c2\\">\r\n            <p class=\\"fl\\">增值电信业务运营牌照 川B2-20240767号</p>\r\n            <div class=\\"fl box-font-0\\"> <a target=\\"_blank\\" class=\\"b1\\" href=\\"#\\"></a> <a target=\\"_blank\\" href=\\"http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=51010802000011\\" class=\\"b2\\"></a> </div>\r\n            <p class=\\"fl\\">川公网安备 51010802000011号</p>\r\n          </div>\r\n        </div>\r\n      </div>\r\n</div>\r\n      <div class=\\"fr sun-line\\" style=\\"margin-top:-95px;position:relative;right:25%\\">\r\n        <p> <span class=\\"p1\\">全国400咨询办理热线：</span> <span class=\\"p2\\">400-028-1238</span> </p>\r\n        <p> <span class=\\"p1\\">全国400售后支撑专线：</span> <span class=\\"p2\\">028-84721238</span> </p>\r\n      </div>\r\n      <a class=\\"ts2\\" href=\\"./complaint.html\\">\r\n        <div class=\\"icon\\"></div>\r\n      投诉建议\r\n      </a> \r\n  </div>\r\n</div>\r\n<!--footer E--> \r\n<!--返回顶部-->\r\n<div class=\\"goTo\\"></div>\r\n<!--返回顶部--> \r\n<script src=\\"style/js/jquery.min.js\\"></script> \r\n<script src=\\"style/js/jquery.SuperSlide.2.1.1.js\\"></script> \r\n<script src=\\"style/js/index.js\\"></script> \r\n<script>\r\njQuery(\\".slideBox\\").slide({mainCell:\\".bd .banner-box\\",autoPlay:true});\r\n</script> \r\n<!--cnzz--> \r\n</body>\r\n</html>', 0, 0, '', 0, 0, '', 0, 0, 0, 1600854961, 'pubindextemp', 1, 'admin');
INSERT INTO `swtx_enewstempbak` (`bid`, `tempid`, `tempname`, `temptext`, `subnews`, `isdefault`, `listvar`, `rownum`, `modid`, `showdate`, `subtitle`, `classid`, `docode`, `baktime`, `temptype`, `gid`, `lastuser`) VALUES
(2, 1, '', '<!doctype html>\r\n<html lang=\\"zh-cn\\">\r\n<head>\r\n<meta charset=\\"UTF-8\\">\r\n<meta name=\\"viewport\\" content=\\"width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\\">\r\n<meta http-equiv=\\"X-UA-Compatible\\" content=\\"ie=edge\\">\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=UTF-8\\" />\r\n<script>if(navigator.userAgent.toLocaleLowerCase().indexOf(\\"baidu\\") == -1){document.title =\\"「舜王通信」- 成都舜王科技有限公司综合业务部\\"}</script>  \r\n<title>成都400电话_成都400电话申请办理_成都办理400电话_成都400电话申请_成都400电话办理 - 舜王通信 - 成都舜王科技有限公司综合业务部</title>\r\n<meta name=\\"keywords\\" content=\\"成都400电话,成都400电话申请办理,成都办理400电话,成都400电话申请,成都400电话办理,舜王通信,成都舜王科技有限公司综合业务部\\" />\r\n<meta name=\\"description\\" content=\\"成都本地400电话办理服务中心,专为成都本地企业提供400电话办理,申请,资费,号码,业务等相关资讯及办理,舜王通信提供专业、实惠、快速的服务。如需办理400电话或资讯业务,请拨打400-028-1238\\" />\r\n<link rel=\\"stylesheet\\" href=\\"style/css/index.css\\">\r\n<link rel=\\"stylesheet\\" href=\\"style/css/bottom.css\\">\r\n<style>\r\n.slideBox {\r\n	height: 400px;\r\n	width: 100%;\r\n	overflow: hidden;\r\n	position: relative;\r\n}\r\n.slideBox .hd {\r\n	height: 15px;\r\n	overflow: hidden;\r\n	position: absolute;\r\n	left: 50%;\r\n	margin-left: -30px;\r\n	bottom: 10px;\r\n	z-index: 1;\r\n}\r\n.slideBox .hd ul {\r\n	overflow: hidden;\r\n	zoom: 1;\r\n	float: left;\r\n}\r\n.slideBox .hd ul li {\r\n	float: left;\r\n	margin-right: 4px;\r\n	width: 8px;\r\n	height: 8px;\r\n	line-height: 14px;\r\n	text-align: center;\r\n	background: #fff;\r\n	cursor: pointer;\r\n	border-radius: 50%\r\n}\r\n.slideBox .hd ul li.on {\r\n	background: #317ee7;\r\n	color: #fff;\r\n}\r\n.slideBox .bd {\r\n	position: relative;\r\n	height: 100%;\r\n	z-index: 0;\r\n}\r\n.slideBox .bd .banner {\r\n	zoom: 1;\r\n	vertical-align: middle;\r\n}\r\n</style>\r\n</head>\r\n<body data-index=\\"0\\">\r\n<!--head B-->\r\n<div class=\\"head\\">\r\n  <div class=\\"wrap cf\\">\r\n<h1>舜王通信400</h1>\r\n<div id=\\"logo\\" class=\\"logo fl\\"> <a href=\\"/\\"> <img src=\\"style/images/logo.png\\" alt=\\"成都400电话\\" width=\\"178\\" height=\\"50\\"> </a> </div>\r\n<div class=\\"fl slogan\\"><img src=\\"style/images/lg2.png\\" alt=\\"成都400电话\\" width=\\"275\\" height=\\"59\\"> </div>\r\n<div class=\\"fr callMe cf\\">\r\n  <div class=\\"fl icon-phone\\"></div>\r\n  <div class=\\"fl hotline\\">\r\n<p class=\\"hotline-title\\">全国400服务热线</p>\r\n<p class=\\"hotline-num\\">400-028-1238</p>\r\n  </div>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--head E--> \r\n<!--nav B-->\r\n<div class=\\"nav\\">\r\n  <div class=\\"wrap\\"> <a > <span>首页</span>\r\n<div class=\\"bg-block\\"></div>\r\n</a> <a href=\\"./understand400-jiazhi.html\\"> <span>400的价值</span>\r\n<div class=\\"bg-block\\"></div>\r\n</a> <a href=\\"./allfunction.html\\"> <span>实用功能</span>\r\n<div class=\\"bg-block\\"></div>\r\n</a> <a href=\\"Customercase.html\\"> <span>选号指南</span>\r\n<div class=\\"bg-block\\"></div>\r\n</a> <a class=\\"hot\\" href=\\"./158.html\\"> <span>热销套餐</span>\r\n<div class=\\"bg-block\\"></div>\r\n</a> <a href=\\"./list.html\\"> <span>成功案例</span>\r\n<div class=\\"bg-block\\"></div>\r\n</a> <a href=\\"./aboutus.html\\"> <span>关于我们</span> \r\n<div class=\\"bg-block\\"></div>\r\n</a> </div>\r\n</div>\r\n<!--nav E--> \r\n<!--banner-->\r\n<div class=\\"slideBox\\">\r\n  <div class=\\"hd\\">\r\n<ul>\r\n  <li></li>\r\n  <li></li>\r\n  <li></li>\r\n  <li></li>\r\n  <li></li>\r\n</ul>\r\n  </div>\r\n  <div class=\\"bd\\">\r\n<div class=\\"banner-box banner-kf\\" data-agl-cvt=\\"1\\">\r\n  <div class=\\"banner banner1\\"></div>\r\n  <div class=\\"banner banner2\\"></div>\r\n  <div class=\\"banner banner3\\"></div>\r\n  <div class=\\"banner banner4\\"></div>\r\n  <div class=\\"banner banner5\\"></div>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--新年视频--> \r\n<!--<div class=\\"new-year\\">\r\n<div class=\\"new-year-video\\" id=\\"new-year-video\\">\r\n   <div id=\\"new-year-video-btn\\"></div>\r\n</div>\r\n</div>-->\r\n<!--400 核心 A-->\r\n<div class=\\"wrap telephone\\">\r\n  <h2 class=\\"tit\\">舜王通信·秒杀号码</h2>\r\n  <ul>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-8894</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-9114</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-633-9505</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-0014</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-2238</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-4004</h4>\r\n      <h5><span>限时价:<em>70元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-7774</h4>\r\n      <h5><span>限时价:<em>70元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-7747</h4>\r\n      <h5><span>限时价:<em>70元/月</em></span></h5>\r\n    </a></li>\r\n\r\n    <li><a href=\\"#\\">\r\n      <h4>400-8899-840</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-8800-486</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-8800-487</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-0808-141</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n\r\n    <li><a href=\\"#\\">\r\n      <h4>400-0808-747</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-9939-114</h4>\r\n      <h5><span>限时价:<em>30元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-844-0516</h4>\r\n      <h5><span>限时价:<em>30元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-9944-909</h4>\r\n      <h5><span>限时价:<em>99元/月</em></span></h5>\r\n    </a></li>\r\n\r\n    <li><a href=\\"#\\">\r\n      <h4>400-627-9979</h4>\r\n      <h5><span>限时价:<em>99元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-644-8848</h4>\r\n      <h5><span>限时价:<em>80元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-993-8848</h4>\r\n      <h5><span>限时价:<em>99元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-843-8858</h4>\r\n      <h5><span>限时价:<em>99元/月</em></span></h5>\r\n    </a></li>\r\n\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-9999</h4>\r\n      <h5><span>限时价:<em>8W元/年</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-9444</h4>\r\n      <h5><span>限时价:<em>1W元/年</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-4400</h4>\r\n      <h5><span>限时价:<em>1W元/年</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-4444</h4>\r\n      <h5><span>限时价:<em>8W元/年</em></span></h5>\r\n    </a></li>\r\n\r\n  </ul>\r\n</div>\r\n\r\n<div style=\\"text-align:center; margin-top:30px;\\">\r\n<img src=\\"/style/css/img/small-2.jpg\\" />\r\n</div>\r\n\r\n\r\n<!--400 核心 B-->\r\n<div class=\\"core wrap\\">\r\n  <h2 class=\\"tit\\">400电话·核心价值</h2>\r\n  <div class=\\"core-box cf\\"> \r\n<!--提升企业形象，增加广告回报-->\r\n<div class=\\"item fl\\">\r\n  <h4>提升企业形象，增加广告回报</h4>\r\n  <div class=\\"img\\"> <img src=\\"style/images/jz1.png\\" alt=\\"解决接听来电占线难题\\" width=355 height=175> </div>\r\n  <p>同样款式，同样价格，您选谁？</p>\r\n</div>\r\n<!--解决来电占线难题-->\r\n<div class=\\"item fr\\">\r\n  <h4>解决来电占线难题</h4>\r\n  <div class=\\"img\\"> <img src=\\"style/images/jz2.png\\" alt=\\"广告效果提升30%\\" width=285 height=175> </div>\r\n  <p>多用户同时拨打400，可实现同时接听。</p>\r\n</div>\r\n  </div>\r\n  <div class=\\"core-box cf\\"> \r\n<!--让客户服务更规范-->\r\n<div class=\\"item fl\\">\r\n  <h4>让客户服务更规范</h4>\r\n  <div class=\\"img\\"> <img src=\\"style/images/jz3.png\\" alt=\\"让客户服务更规范\\" width=414 height=170> </div>\r\n  <p>专业系统提示音，让企业形象立即提升，<br>\r\n通话录音，更能免除服务纠纷。</p>\r\n</div>\r\n<!--搬家不换好、客户不流失-->\r\n<div class=\\"item fr\\">\r\n  <h4>轻松应对员工离职，搬家不换号</h4>\r\n  <div class=\\"img\\"> <img src=\\"style/images/jz4.png\\" alt=\\"搬家不换号，客户不流失\\" width=298 height=167> </div>\r\n  <p>当企业搬迁或员工离职，只需变更400下<br>\r\n绑定的座机或手机号码即可，客户永不流失。</p>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--400 核心 E--> \r\n<!--关于我们 B-->\r\n<div class=\\"wrap needSkt\\">\r\n  <h2 class=\\"tit\\">舜王通信·业务优势</h2>\r\n  <div class=\\"need-group cf\\">\r\n<div class=\\"item item1\\">\r\n  <h4>十年企业 更有保障</h4>\r\n  <p>每个来电都是商机，让十年企业<br>\r\n为您护航，更安心。</p>\r\n</div>\r\n<div class=\\"item item2\\">\r\n  <h4>号源全  价格优</h4>\r\n  <p>可提供4000、4001、4006、4007、4008、<br>\r\n4009全号段号源。套餐性价比高。</p>\r\n</div>\r\n<div class=\\"item item3 mr0\\">\r\n  <h4>接通速度快30%</h4>\r\n  <p>百人研发与支撑团队，平台先进稳定，<br>\r\n为您不错失一个商机保驾护航。</p>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--关于我们 E--> \r\n<!--选号先看号段 B-->\r\n<div class=\\"wrap skt-how\\">\r\n  <h2 class=\\"tit\\">舜王通信·覆盖号段</h2>\r\n  <div class=\\"how-tems cf\\"> \r\n<!--电信-->\r\n<div class=\\"tem fl\\">\r\n  <div class=\\"dx tag\\"></div>\r\n  <p><span>号段：</span><span class=\\"317ee7\\">4008、4009</span></p>\r\n  <p class=\\"317ee7\\"><span>基础电路提供：</span><span class=\\"fno\\">中国电信</span></p>\r\n  <p><span>优点：</span><span class=\\"fno\\">接通快、稳定，追求品质用户优选</span></p>\r\n  <p><span>增值功能与技术支撑：</span><span class=\\"fno\\">舜王通信</span></p>\r\n  <p><span>用户选择率：</span><span class=\\"fno\\">约50%</span></p>\r\n  <div class=\\"fl needNum kf\\"  data-agl-cvt=\\"1\\">索取电信400号码</div>\r\n</div>\r\n<!--移动-->\r\n<div class=\\"tem fl mgrl28\\">\r\n  <div class=\\"yd tag\\"></div>\r\n  <p><span>号段：</span><span class=\\"317ee7\\">4001、4007</span></p>\r\n  <p class=\\"317ee7\\"><span>基础电路提供：</span><span class=\\"fno\\">中国移动</span></p>\r\n  <p><span>优点：</span><span class=\\"fno\\">移动网络强，手机接听用户优选</span></p>\r\n  <p><span>增值功能与技术支撑：</span><span class=\\"fno\\">舜王通信</span></p>\r\n  <p><span>用户选择率：</span><span class=\\"fno\\">约25%</span></p>\r\n  <div class=\\"fl needNum kf\\"  data-agl-cvt=\\"1\\">索取移动400号码</div>\r\n</div>\r\n<!--联通-->\r\n<div class=\\"tem fl\\">\r\n  <div class=\\"lt tag\\"></div>\r\n  <p><span>号段：</span><span class=\\"317ee7\\">4000、4006</span></p>\r\n  <p class=\\"317ee7\\"><span>基础电路提供：</span><span class=\\"fno\\">中国联通</span></p>\r\n  <p><span>优点：</span><span class=\\"fno\\">价格便宜，小企业优选</span></p>\r\n  <p><span>增值功能与技术支撑：</span><span class=\\"fno\\">舜王通信</span></p>\r\n  <p><span>用户选择率：</span><span class=\\"fno\\">约25%</span></p>\r\n  <div class=\\"fl needNum kf\\"  data-agl-cvt=\\"1\\">索取联通400号码</div>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--选号先看号段 B--> \r\n<!--选号秘籍 B-->\r\n<div class=\\"wrap miji\\">\r\n  <h2 class=\\"tit\\">选号秘籍</h2>\r\n  <div class=\\"miji-group cf\\">\r\n<div class=\\"item item1 cf\\">\r\n  <div class=\\"idx idx1\\"></div>\r\n  <div class=\\"tex\\">\r\n<div class=\\"tit\\">看号段</div>\r\n<p>4008/4009&nbsp;&nbsp;&nbsp;4001/4007&nbsp;&nbsp;&nbsp;4000/4006<br>\r\n  中国电信&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中国移动&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中国联通</p>\r\n  </div>\r\n</div>\r\n<div class=\\"item item2 cf\\">\r\n  <div class=\\"idx idx2\\"></div>\r\n  <div class=\\"tex\\">\r\n<div class=\\"tit\\">看组合</div>\r\n<p>组合越有规律，越易记，<br>\r\n  形象越好，价格越高。</p>\r\n  </div>\r\n</div>\r\n<div class=\\"item item3 cf\\">\r\n  <div class=\\"idx idx3\\"></div>\r\n  <div class=\\"tex\\">\r\n<div class=\\"tit\\">看数字</div>\r\n<p>8、9、6数字，更符合客户认知习惯，<br>\r\n  客户选择较多。 </p>\r\n  </div>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--选号秘籍 E--> \r\n<!--精选号码推荐B-->\r\n<div class=\\"wrap Diamonds\\">\r\n  <h2 class=\\"tit\\">精选号码推荐</h2>\r\n  <div class=\\"cf tc-show \\"> \r\n<!--皇冠靓号-->\r\n<div class=\\"tc-show-item fl\\">\r\n  <div class=\\"img\\"> <img src=\\"style/images/jx1.png\\"> </div>\r\n  <div class=\\"flag\\">皇冠靓号</div>\r\n  <div class=\\"gp\\">组合规律</div>\r\n  <div class=\\"rule\\"> AAAAAA、AAAAA、ABCDE、AAABBB </div>\r\n  <div class=\\"Example-num\\">\r\n<p>示例号码</p>\r\n<div class=\\"num-group cf\\">\r\n  <div class=\\"n1 fl\\">\r\n<div>400*-333-333</div>\r\n<div>400-*6-56789</div>\r\n<div>400-*6-98765</div>\r\n<div>400*-999-000</div>\r\n  </div>\r\n  <div class=\\"n2 fr\\">\r\n<div>400-*9-88888</div>\r\n<div>400-*5-12345</div>\r\n<div>400*-888-777</div>\r\n<div>400*-888-000</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"tc-btn kf\\"  data-agl-cvt=\\"1\\"> 好号码抢先预占 </div>\r\n</div>\r\n<!--钻石靓号-->\r\n<div class=\\"tc-show-item fl m-RL-16\\">\r\n  <div class=\\"img\\"> <img src=\\"style/images/jx2.png\\"> </div>\r\n  <div class=\\"flag\\">钻石靓号</div>\r\n  <div class=\\"gp\\">组合规律</div>\r\n  <div class=\\"rule\\"> AAAA、ABCD、AABBCC、ABCABC </div>\r\n  <div class=\\"Example-num\\">\r\n<p>示例号码</p>\r\n<div class=\\"num-group cf\\">\r\n  <div class=\\"n1 fl\\">\r\n<div>400-*61-9999</div>\r\n<div>400-*60-6789</div>\r\n<div>400*-589-589</div>\r\n<div>400*-00-11-88</div>\r\n  </div>\r\n  <div class=\\"n2 fr\\">\r\n<div>400-*80-8888</div>\r\n<div>400-*68-5678</div>\r\n<div>400*-658-658</div>\r\n<div>400*-00-66-00</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"tc-btn kf\\"  data-agl-cvt=\\"1\\"> 好号码抢先预占 </div>\r\n</div>\r\n<!--五星靓号-->\r\n<div class=\\"tc-show-item fl\\">\r\n  <div class=\\"img\\"> <img src=\\"style/images/jx3.png\\"> </div>\r\n  <div class=\\"flag\\">五星靓号</div>\r\n  <div class=\\"gp\\">组合规律</div>\r\n  <div class=\\"rule\\"> AABB、ABBB、ABAB、ABBA </div>\r\n  <div class=\\"Example-num\\">\r\n<p>示例号码</p>\r\n<div class=\\"num-group cf\\">\r\n  <div class=\\"n1 fl\\">\r\n<div>400-*18-5588</div>\r\n<div>400-*97-1777</div>\r\n<div>400-*27-9898</div>\r\n<div>400-*68-9119</div>\r\n  </div>\r\n  <div class=\\"n2 fr\\">\r\n<div>400-*65-6699</div>\r\n<div>400-*80-7888</div>\r\n<div>400-*18-6868</div>\r\n<div>400-*91-6996</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"tc-btn kf\\"  data-agl-cvt=\\"1\\"> 好号码抢先预占 </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"free2\\">\r\n<div class=\\"form-box form-box-css f_l clearfix\\" data-title=\\"400.com-申请好号码免费试用\\">\r\n  <input class=\\"name-vo-sub2 _183\\" maxlength=\\"5\\" type=\\"text\\" value=\\"您的姓名\\">\r\n  <input class=\\"phone-vo-sub2 _183\\" maxlength=\\"11\\" type=\\"text\\" value=\\"手机号码\\">\r\n  <input class=\\"inputcode-vo-sub2 _164\\" maxlength=\\"4\\" id=\\"inputcode-vo-sub2\\" type=\\"text\\" value=\\"验证码\\">\r\n  <div id=\\"code-vo-sub2\\"  class=\\"code-vo-sub2 fl\\" ></div>\r\n  <input class=\\"btn btn-vo-sub2\\" type=\\"button\\" value=\\"立即提交申请\\"  data-agl-cvt=\\"5\\">\r\n</div>\r\n  </div>\r\n</div>\r\n<!--精选号码推荐E--> \r\n\r\n\r\n\r\n<div style=\\"text-align:center; margin-top:20px;\\">\r\n<img src=\\"/style/css/img/small-2.jpg\\" />\r\n</div>\r\n\r\n\r\n\r\n\r\n<!--首页400套餐 B-->\r\n<div class=\\"wrap\\">\r\n  <h2 class=\\"tit\\">精选400套餐</h2>\r\n  <div class=\\"cf tc-show \\"> \r\n<!--198 套餐-->\r\n<div class=\\"tc-show-item fl\\">\r\n  <div class=\\"tc-log tc-log-1\\"></div>\r\n  <div class=\\"tc-name cf\\"> <span class=\\"jg _168 \\"></span> <span class=\\"dw tc-hot\\">元/月（合约3年）</span> </div>\r\n  <div class=\\"tc-fl cf\\">\r\n<div class=\\"tc-1 cf fl\\">\r\n  <div class=\\"tc-icon fl\\"></div>\r\n  <div class=\\"tc-sm fl\\">\r\n<div class=\\"prow\\">送3项</div>\r\n<div class=\\"zz\\">增值功能</div>\r\n  </div>\r\n</div>\r\n<div class=\\"tc-2 cf fl\\">\r\n  <div class=\\"tc-icon fl\\"></div>\r\n  <div class=\\"tc-sm fl\\">\r\n<div class=\\"prow\\">送5000元</div>\r\n<div class=\\"zz\\">400话费</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"Example-num\\">\r\n<p>示例号码</p>\r\n<!--168套餐-->\r\n<div class=\\"num-group cf\\">\r\n  <div class=\\"n1 fl\\">\r\n<div>400-*66-5188</div>\r\n<div>400-*68-5558</div>\r\n<div>400-*60-1110</div>\r\n  </div>\r\n  <div class=\\"n2 fr\\">\r\n<div>400-*77-6066</div>\r\n<div>400-*80-5880</div>\r\n<div>400*-996-880</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"tc-btn kf\\"  data-agl-cvt=\\"1\\"> 获取更多好号码 </div>\r\n</div>\r\n<!--598套餐-->\r\n<div class=\\"tc-show-item fl m-RL-16\\">\r\n  <div class=\\"tc-log tc-log-2\\"></div>\r\n  <div class=\\"tc-name\\"> <span class=\\"jg _598 \\"></span><!--598--> \r\n<span class=\\"dw tc-hot\\">元/月（合约3年）</span> </div>\r\n  <div class=\\"tc-fl cf\\">\r\n<div class=\\"tc-1 cf fl\\">\r\n  <div class=\\"tc-icon fl\\"></div>\r\n  <div class=\\"tc-sm fl\\">\r\n<div class=\\"prow\\">送5项</div>\r\n<div class=\\"zz\\">增值功能</div>\r\n  </div>\r\n</div>\r\n<div class=\\"tc-2 cf fl\\">\r\n  <div class=\\"tc-icon fl\\"></div>\r\n  <div class=\\"tc-sm fl\\">\r\n<div class=\\"prow\\">送20000元</div>\r\n<div class=\\"zz\\">400话费</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"Example-num\\">\r\n<p>示例号码</p>\r\n<div class=\\"num-group cf\\">\r\n  <div class=\\"n1 fl\\">\r\n<div>400-*60-8000</div>\r\n<div>400-*78-1777</div>\r\n<div>400-*69-6688</div>\r\n  </div>\r\n  <div class=\\"n2 fr\\">\r\n<div>400-*19-7799</div>\r\n<div>400*-666-788</div>\r\n<div>400*-688-699</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"tc-btn kf\\"  data-agl-cvt=\\"1\\"> 获取更多好号码 </div>\r\n</div>\r\n<!--988 套餐-->\r\n<div class=\\"tc-show-item fl\\">\r\n  <div class=\\"tc-log tc-log-3\\"></div>\r\n  <div class=\\"tc-name\\"> <span class=\\"jg _998 \\"></span> <span class=\\"dw tc-hot\\">元/月起（合约3年）</span> </div>\r\n  <div class=\\"tc-fl cf\\">\r\n<div class=\\"tc-1 cf fl\\">\r\n  <div class=\\"tc-icon fl\\"></div>\r\n  <div class=\\"tc-sm fl\\">\r\n<div class=\\"prow\\">送6项</div>\r\n<div class=\\"zz\\">增值功能</div>\r\n  </div>\r\n</div>\r\n<div class=\\"tc-2 cf fl\\">\r\n  <div class=\\"tc-icon fl\\"></div>\r\n  <div class=\\"tc-sm fl\\">\r\n<div class=\\"prow\\">送20000元</div>\r\n<div class=\\"zz\\">400话费</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"Example-num\\">\r\n<p>示例号码</p>\r\n<div class=\\"num-group cf\\">\r\n  <div class=\\"n1 fl\\">\r\n<div>400-*18-6888</div>\r\n<div>400-*60-1888</div>\r\n<div>400-*58-6999</div>\r\n  </div>\r\n  <div class=\\"n2 fr\\">\r\n<div>400-*60-6999</div>\r\n<div>400-*58-5666</div>\r\n<div>400-*98-5666</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"tc-btn kf\\"  data-agl-cvt=\\"1\\"> 获取更多好号码 </div>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--首页400套餐 E--> \r\n<!--400增值功能 B-->\r\n<div class=\\"zzPrower wrap\\">\r\n  <h2 class=\\"tit\\">舜王通信400增值功能</h2>\r\n  <p class=\\"sm-tit\\"> <a href=\\"./allfunction.html\\">了解更多实用功能></a> </p>\r\n  <div class=\\"prower-group cf\\">\r\n<div class=\\"item\\">\r\n  <div class=\\"tit\\">\r\n<div class=\\"icon icon1\\"></div>\r\n来电欢迎词 </div>\r\n  <p class=\\"des\\">企业的有声名片，用个性语音代替单调铃声，在等待接通时间里，向客户传达企业真实信息，增加信任。</p>\r\n  <p class=\\"xzl\\">用户选择率</p>\r\n  <div class=\\"bfb\\">100%</div>\r\n  <div class=\\"btn kf\\"  data-agl-cvt=\\"1\\">立即体验</div>\r\n</div>\r\n<div class=\\"item\\">\r\n  <div class=\\"tit\\">\r\n<div class=\\"icon icon2\\"></div>\r\n一号多线 </div>\r\n  <p class=\\"des\\">一个400号码可以绑定多部手机、座机，可供多客户同时打入，系统自动选择空闲线路接入，不错失商机。</p>\r\n  <p class=\\"xzl\\">用户选择率</p>\r\n  <div class=\\"bfb\\">100%</div>\r\n  <div class=\\"btn kf\\"  data-agl-cvt=\\"1\\">立即体验</div>\r\n</div>\r\n<div class=\\"item\\">\r\n  <div class=\\"tit\\">\r\n<div class=\\"icon icon3\\"></div>\r\n通话录音 </div>\r\n  <p class=\\"des\\">每一个400电话来电通话全程录音，帮助企业监督客服服务质量，也为处理客户纠纷、投诉提供证据。</p>\r\n  <p class=\\"xzl\\">用户选择率</p>\r\n  <div class=\\"bfb\\">90%</div>\r\n  <div class=\\"btn kf\\"  data-agl-cvt=\\"1\\">立即体验</div>\r\n</div>\r\n<div class=\\"item mr0\\">\r\n  <div class=\\"tit\\">\r\n<div class=\\"icon icon4\\"></div>\r\nIVR智能语音导航 </div>\r\n  <p class=\\"des\\">根据客户拨打400来电的按键选择，自动为客户提供相应服务支持，提高服务效率。</p>\r\n  <p class=\\"xzl\\">用户选择率</p>\r\n  <div class=\\"bfb\\">80%</div>\r\n  <div class=\\"btn kf\\"  data-agl-cvt=\\"1\\">立即体验</div>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--400增值功能 E--> \r\n<!--400电话办理流程 B-->\r\n<div class=\\"wrap process\\">\r\n  <h2 class=\\"tit\\">400电话办理流程</h2>\r\n  <div class=\\"process-group\\">\r\n<div class=\\"item\\">\r\n  <div class=\\"idx idx1\\"></div>\r\n  <div class=\\"tex\\">\r\n<div class=\\"tit\\">选号码、选功能、选套餐</div>\r\n<p>我们提供更丰富号源、更高性价比套餐。</p>\r\n  </div>\r\n</div>\r\n<div class=\\"item\\">\r\n  <div class=\\"idx idx2\\"></div>\r\n  <div class=\\"tex\\">\r\n<div class=\\"tit\\">签约付款，锁定号码</div>\r\n<p>签订正式合同并付款即可锁定号码。</p>\r\n  </div>\r\n</div>\r\n<div class=\\"item\\">\r\n  <div class=\\"idx idx3\\"></div>\r\n  <div class=\\"tex\\">\r\n<div class=\\"tit\\">提交实名认证材料</div>\r\n<p>做好实名认证，长期使用更有保障。</p>\r\n  </div>\r\n</div>\r\n<div class=\\"item\\">\r\n  <div class=\\"idx idx4\\"></div>\r\n  <div class=\\"tex\\">\r\n<div class=\\"tit\\">开通服务</div>\r\n<p>开通服务只是开始，长期技术支撑更关键。</p>\r\n  </div>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--400电话办理流程 E-->\r\n<div class=\\"wrap small-banner small-banner-2 kf\\"  data-agl-cvt=\\"1\\"></div>\r\n\r\n<!-- bottom -->\r\n<div class=\\"bottom\\">\r\n  <div class=\\"bt1\\">\r\n    <p>舜王通信·新闻中心</p>\r\n  </div>\r\n\r\n  <div class=\\"bt2\\">\r\n    <div class=\\"box1 f\\">\r\n      <div class=\\"top\\">公司新闻</div>\r\n      <div class=\\"center\\">\r\n        <img src=\\"./style/css/img/ct-img.jpg\\" alt=\\"\\">\r\n        <ul>\r\n[e:loop={4,9,0,0}]\r\n<li><a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" target=\\"_blank\\"><?=esub($bqr[title],40)?></a> </li>\r\n[/e:loop]\r\n        </ul>\r\n      </div>\r\n      <div class=\\"btm\\">\r\n        <a href=\\"#\\">查看更多新资讯</a>\r\n      </div>\r\n    </div>\r\n    <div class=\\"box2 f\\">\r\n      <div class=\\"top\\">行业动态</div>\r\n      <div class=\\"center\\">\r\n        <img src=\\"./style/css/img/ct-img.jpg\\" alt=\\"\\">\r\n        <ul>\r\n          <li><a href=\\"#\\">怎么开通400电话？</a></li>\r\n          <li><a href=\\"#\\">400电话是如何计费的？</a></li>\r\n          <li><a href=\\"#\\">外地拨打400电话会收取漫游费吗？</a></li>\r\n          <li><a href=\\"#\\">办理400电话需要交哪些费用</a></li>\r\n          <li><a href=\\"#\\">申请需要什么资料</a></li>\r\n          <li><a href=\\"#\\">如何正确选择400电话套餐</a></li>\r\n          <li><a href=\\"#\\">如何正确选择400电话套餐</a></li>\r\n          <li><a href=\\"#\\">如何正确选择400电话套餐</a></li>    \r\n          <li><a href=\\"#\\">外地拨打400电话会收取漫游费吗？</a></li>\r\n        </ul>\r\n      </div>\r\n      <div class=\\"btm\\">\r\n        <a href=\\"#\\">查看更多新资讯</a>\r\n      </div>\r\n    </div>\r\n    <div class=\\"box3 f\\">\r\n      <div class=\\"top\\">常见问题</div>\r\n      <div class=\\"center\\">\r\n        <img src=\\"./style/css/img/ct-img.jpg\\" alt=\\"\\">\r\n        <ul>\r\n          <li><a href=\\"#\\">怎么开通400电话？</a></li>\r\n          <li><a href=\\"#\\">400电话是如何计费的？</a></li>\r\n          <li><a href=\\"#\\">外地拨打400电话会收取漫游费吗？</a></li>\r\n          <li><a href=\\"#\\">办理400电话需要交哪些费用</a></li>\r\n          <li><a href=\\"#\\">申请需要什么资料</a></li>\r\n          <li><a href=\\"#\\">如何正确选择400电话套餐</a></li>\r\n          <li><a href=\\"#\\">如何正确选择400电话套餐</a></li>\r\n          <li><a href=\\"#\\">如何正确选择400电话套餐</a></li>      \r\n          <li><a href=\\"#\\">外地拨打400电话会收取漫游费吗？</a></li>\r\n        </ul>\r\n      </div>\r\n      <div class=\\"btm\\">\r\n        <a href=\\"#\\">查看更多新资讯</a>\r\n      </div>\r\n    </div>\r\n  </div>\r\n\r\n  <div class=\\"bt3\\">\r\n      <div class=\\"sp1\\">\r\n        <span>标签直达:</span>\r\n        <a href=\\"/\\">成都400电话</a>\r\n        <a href=\\"/\\">成都400电话办理</a>\r\n        <a href=\\"/\\">成都400电话申请</a>\r\n        <a href=\\"/\\">成都企业400电话</a>\r\n        <a href=\\"/\\">成都办400电话</a>\r\n        <a href=\\"/\\">成都400电话安装</a>\r\n      </div>\r\n      <div class=\\"sp2\\">\r\n        <span>友情链接:</span>\r\n        <a href=\\"https://www.shunking.cn/\\" target=\\"_blank\\">舜王科技</a>\r\n        <a href=\\"http://www.xzhywl.cn/\\" target=\\"_blank\\">鸿扬网络</a>\r\n        <a href=\\"https://www.swcy.shunking.cn/\\" target=\\"_blank\\">舜王彩印</a>\r\n        <a href=\\"/\\" target=\\"_blank\\">舜王通信</a>\r\n        <a href=\\"https://www.site.shunking.cn/\\" target=\\"_blank\\">舜王建站</a>\r\n      </div>\r\n  </div>\r\n</div>\r\n<!-- bottom -->\r\n<!--footer B-->\r\n<div class=\\"foot\\">\r\n    <div class=\\"wrap cf\\">\r\n      <div class=\\"fl flink\\">\r\n        <div class=\\"jumpUrl cf\\"> <a href=\\"./Customercase.html\\">选号指南</a><span>|</span> <a href=\\"./allfunction.html\\">实用功能</a><span>|</span> <a href=\\"./changjianwenti.html\\">常见问题</a><span>|</span> <a href=\\"./Payment.html\\">付款方式</a><span>|</span> <a href=\\"./aboutus.html#conectUs\\">联系我们</a><span>|</span> <a href=\\"./complaint.html\\">投诉建议</a> </div>\r\n        <div class=\\"company-message\\">\r\n          <div class=\\"c c1\\">成都舜王科技有限公司 版权所有 Copyright © 2004-<script>var y = new Date();document.write(y.getFullYear());</script>&nbsp;舜王通信  <a target=\\"_blank\\" href=\\"http://www.beian.miit.gov.cn\\">蜀ICP备16023211号</a></div>\r\n          <div class=\\"cf c c2\\">\r\n            <p class=\\"fl\\">增值电信业务运营牌照 川B2-20240767号</p>\r\n            <div class=\\"fl box-font-0\\"> <a target=\\"_blank\\" class=\\"b1\\" href=\\"#\\"></a> <a target=\\"_blank\\" href=\\"http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=51010802000011\\" class=\\"b2\\"></a> </div>\r\n            <p class=\\"fl\\">川公网安备 51010802000011号</p>\r\n          </div>\r\n        </div>\r\n      </div>\r\n</div>\r\n      <div class=\\"fr sun-line\\" style=\\"margin-top:-95px;position:relative;right:25%\\">\r\n        <p> <span class=\\"p1\\">全国400咨询办理热线：</span> <span class=\\"p2\\">400-028-1238</span> </p>\r\n        <p> <span class=\\"p1\\">全国400售后支撑专线：</span> <span class=\\"p2\\">028-84721238</span> </p>\r\n      </div>\r\n      <a class=\\"ts2\\" href=\\"./complaint.html\\">\r\n        <div class=\\"icon\\"></div>\r\n      投诉建议\r\n      </a> \r\n  </div>\r\n</div>\r\n<!--footer E--> \r\n<!--返回顶部-->\r\n<div class=\\"goTo\\"></div>\r\n<!--返回顶部--> \r\n<script src=\\"style/js/jquery.min.js\\"></script> \r\n<script src=\\"style/js/jquery.SuperSlide.2.1.1.js\\"></script> \r\n<script src=\\"style/js/index.js\\"></script> \r\n<script>\r\njQuery(\\".slideBox\\").slide({mainCell:\\".bd .banner-box\\",autoPlay:true});\r\n</script> \r\n<!--cnzz--> \r\n</body>\r\n</html>', 0, 0, '', 0, 0, '', 0, 0, 0, 1600855092, 'pubindextemp', 1, 'admin');
INSERT INTO `swtx_enewstempbak` (`bid`, `tempid`, `tempname`, `temptext`, `subnews`, `isdefault`, `listvar`, `rownum`, `modid`, `showdate`, `subtitle`, `classid`, `docode`, `baktime`, `temptype`, `gid`, `lastuser`) VALUES
(3, 1, '', '<!doctype html>\r\n<html lang=\\"zh-cn\\">\r\n<head>\r\n<meta charset=\\"UTF-8\\">\r\n<meta name=\\"viewport\\" content=\\"width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\\">\r\n<meta http-equiv=\\"X-UA-Compatible\\" content=\\"ie=edge\\">\r\n<meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=UTF-8\\" />\r\n<script>if(navigator.userAgent.toLocaleLowerCase().indexOf(\\"baidu\\") == -1){document.title =\\"「舜王通信」- 成都舜王科技有限公司综合业务部\\"}</script>  \r\n<title>成都400电话_成都400电话申请办理_成都办理400电话_成都400电话申请_成都400电话办理 - 舜王通信 - 成都舜王科技有限公司综合业务部</title>\r\n<meta name=\\"keywords\\" content=\\"成都400电话,成都400电话申请办理,成都办理400电话,成都400电话申请,成都400电话办理,舜王通信,成都舜王科技有限公司综合业务部\\" />\r\n<meta name=\\"description\\" content=\\"成都本地400电话办理服务中心,专为成都本地企业提供400电话办理,申请,资费,号码,业务等相关资讯及办理,舜王通信提供专业、实惠、快速的服务。如需办理400电话或资讯业务,请拨打400-028-1238\\" />\r\n<link rel=\\"stylesheet\\" href=\\"style/css/index.css\\">\r\n<link rel=\\"stylesheet\\" href=\\"style/css/bottom.css\\">\r\n<style>\r\n.slideBox {\r\n	height: 400px;\r\n	width: 100%;\r\n	overflow: hidden;\r\n	position: relative;\r\n}\r\n.slideBox .hd {\r\n	height: 15px;\r\n	overflow: hidden;\r\n	position: absolute;\r\n	left: 50%;\r\n	margin-left: -30px;\r\n	bottom: 10px;\r\n	z-index: 1;\r\n}\r\n.slideBox .hd ul {\r\n	overflow: hidden;\r\n	zoom: 1;\r\n	float: left;\r\n}\r\n.slideBox .hd ul li {\r\n	float: left;\r\n	margin-right: 4px;\r\n	width: 8px;\r\n	height: 8px;\r\n	line-height: 14px;\r\n	text-align: center;\r\n	background: #fff;\r\n	cursor: pointer;\r\n	border-radius: 50%\r\n}\r\n.slideBox .hd ul li.on {\r\n	background: #317ee7;\r\n	color: #fff;\r\n}\r\n.slideBox .bd {\r\n	position: relative;\r\n	height: 100%;\r\n	z-index: 0;\r\n}\r\n.slideBox .bd .banner {\r\n	zoom: 1;\r\n	vertical-align: middle;\r\n}\r\n</style>\r\n</head>\r\n<body data-index=\\"0\\">\r\n<!--head B-->\r\n<div class=\\"head\\">\r\n  <div class=\\"wrap cf\\">\r\n<h1>舜王通信400</h1>\r\n<div id=\\"logo\\" class=\\"logo fl\\"> <a href=\\"/\\"> <img src=\\"style/images/logo.png\\" alt=\\"成都400电话\\" width=\\"178\\" height=\\"50\\"> </a> </div>\r\n<div class=\\"fl slogan\\"><img src=\\"style/images/lg2.png\\" alt=\\"成都400电话\\" width=\\"275\\" height=\\"59\\"> </div>\r\n<div class=\\"fr callMe cf\\">\r\n  <div class=\\"fl icon-phone\\"></div>\r\n  <div class=\\"fl hotline\\">\r\n<p class=\\"hotline-title\\">全国400服务热线</p>\r\n<p class=\\"hotline-num\\">400-028-1238</p>\r\n  </div>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--head E--> \r\n<!--nav B-->\r\n<div class=\\"nav\\">\r\n  <div class=\\"wrap\\"> <a > <span>首页</span>\r\n<div class=\\"bg-block\\"></div>\r\n</a> <a href=\\"./understand400-jiazhi.html\\"> <span>400的价值</span>\r\n<div class=\\"bg-block\\"></div>\r\n</a> <a href=\\"./allfunction.html\\"> <span>实用功能</span>\r\n<div class=\\"bg-block\\"></div>\r\n</a> <a href=\\"Customercase.html\\"> <span>选号指南</span>\r\n<div class=\\"bg-block\\"></div>\r\n</a> <a class=\\"hot\\" href=\\"./158.html\\"> <span>热销套餐</span>\r\n<div class=\\"bg-block\\"></div>\r\n</a> <a href=\\"./list.html\\"> <span>成功案例</span>\r\n<div class=\\"bg-block\\"></div>\r\n</a> <a href=\\"./aboutus.html\\"> <span>关于我们</span> \r\n<div class=\\"bg-block\\"></div>\r\n</a> </div>\r\n</div>\r\n<!--nav E--> \r\n<!--banner-->\r\n<div class=\\"slideBox\\">\r\n  <div class=\\"hd\\">\r\n<ul>\r\n  <li></li>\r\n  <li></li>\r\n  <li></li>\r\n  <li></li>\r\n  <li></li>\r\n</ul>\r\n  </div>\r\n  <div class=\\"bd\\">\r\n<div class=\\"banner-box banner-kf\\" data-agl-cvt=\\"1\\">\r\n  <div class=\\"banner banner1\\"></div>\r\n  <div class=\\"banner banner2\\"></div>\r\n  <div class=\\"banner banner3\\"></div>\r\n  <div class=\\"banner banner4\\"></div>\r\n  <div class=\\"banner banner5\\"></div>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--新年视频--> \r\n<!--<div class=\\"new-year\\">\r\n<div class=\\"new-year-video\\" id=\\"new-year-video\\">\r\n   <div id=\\"new-year-video-btn\\"></div>\r\n</div>\r\n</div>-->\r\n<!--400 核心 A-->\r\n<div class=\\"wrap telephone\\">\r\n  <h2 class=\\"tit\\">舜王通信·秒杀号码</h2>\r\n  <ul>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-8894</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-9114</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-633-9505</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-0014</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-2238</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-4004</h4>\r\n      <h5><span>限时价:<em>70元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-7774</h4>\r\n      <h5><span>限时价:<em>70元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-7747</h4>\r\n      <h5><span>限时价:<em>70元/月</em></span></h5>\r\n    </a></li>\r\n\r\n    <li><a href=\\"#\\">\r\n      <h4>400-8899-840</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-8800-486</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-8800-487</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-0808-141</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n\r\n    <li><a href=\\"#\\">\r\n      <h4>400-0808-747</h4>\r\n      <h5><span>限时价:<em>50元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-9939-114</h4>\r\n      <h5><span>限时价:<em>30元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-844-0516</h4>\r\n      <h5><span>限时价:<em>30元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-9944-909</h4>\r\n      <h5><span>限时价:<em>99元/月</em></span></h5>\r\n    </a></li>\r\n\r\n    <li><a href=\\"#\\">\r\n      <h4>400-627-9979</h4>\r\n      <h5><span>限时价:<em>99元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-644-8848</h4>\r\n      <h5><span>限时价:<em>80元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-993-8848</h4>\r\n      <h5><span>限时价:<em>99元/月</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-843-8858</h4>\r\n      <h5><span>限时价:<em>99元/月</em></span></h5>\r\n    </a></li>\r\n\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-9999</h4>\r\n      <h5><span>限时价:<em>8W元/年</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-9444</h4>\r\n      <h5><span>限时价:<em>1W元/年</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-4400</h4>\r\n      <h5><span>限时价:<em>1W元/年</em></span></h5>\r\n    </a></li>\r\n    <li><a href=\\"#\\">\r\n      <h4>400-028-4444</h4>\r\n      <h5><span>限时价:<em>8W元/年</em></span></h5>\r\n    </a></li>\r\n\r\n  </ul>\r\n</div>\r\n\r\n<div style=\\"text-align:center; margin-top:30px;\\">\r\n<img src=\\"/style/css/img/small-2.jpg\\" />\r\n</div>\r\n\r\n\r\n<!--400 核心 B-->\r\n<div class=\\"core wrap\\">\r\n  <h2 class=\\"tit\\">400电话·核心价值</h2>\r\n  <div class=\\"core-box cf\\"> \r\n<!--提升企业形象，增加广告回报-->\r\n<div class=\\"item fl\\">\r\n  <h4>提升企业形象，增加广告回报</h4>\r\n  <div class=\\"img\\"> <img src=\\"style/images/jz1.png\\" alt=\\"解决接听来电占线难题\\" width=355 height=175> </div>\r\n  <p>同样款式，同样价格，您选谁？</p>\r\n</div>\r\n<!--解决来电占线难题-->\r\n<div class=\\"item fr\\">\r\n  <h4>解决来电占线难题</h4>\r\n  <div class=\\"img\\"> <img src=\\"style/images/jz2.png\\" alt=\\"广告效果提升30%\\" width=285 height=175> </div>\r\n  <p>多用户同时拨打400，可实现同时接听。</p>\r\n</div>\r\n  </div>\r\n  <div class=\\"core-box cf\\"> \r\n<!--让客户服务更规范-->\r\n<div class=\\"item fl\\">\r\n  <h4>让客户服务更规范</h4>\r\n  <div class=\\"img\\"> <img src=\\"style/images/jz3.png\\" alt=\\"让客户服务更规范\\" width=414 height=170> </div>\r\n  <p>专业系统提示音，让企业形象立即提升，<br>\r\n通话录音，更能免除服务纠纷。</p>\r\n</div>\r\n<!--搬家不换好、客户不流失-->\r\n<div class=\\"item fr\\">\r\n  <h4>轻松应对员工离职，搬家不换号</h4>\r\n  <div class=\\"img\\"> <img src=\\"style/images/jz4.png\\" alt=\\"搬家不换号，客户不流失\\" width=298 height=167> </div>\r\n  <p>当企业搬迁或员工离职，只需变更400下<br>\r\n绑定的座机或手机号码即可，客户永不流失。</p>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--400 核心 E--> \r\n<!--关于我们 B-->\r\n<div class=\\"wrap needSkt\\">\r\n  <h2 class=\\"tit\\">舜王通信·业务优势</h2>\r\n  <div class=\\"need-group cf\\">\r\n<div class=\\"item item1\\">\r\n  <h4>十年企业 更有保障</h4>\r\n  <p>每个来电都是商机，让十年企业<br>\r\n为您护航，更安心。</p>\r\n</div>\r\n<div class=\\"item item2\\">\r\n  <h4>号源全  价格优</h4>\r\n  <p>可提供4000、4001、4006、4007、4008、<br>\r\n4009全号段号源。套餐性价比高。</p>\r\n</div>\r\n<div class=\\"item item3 mr0\\">\r\n  <h4>接通速度快30%</h4>\r\n  <p>百人研发与支撑团队，平台先进稳定，<br>\r\n为您不错失一个商机保驾护航。</p>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--关于我们 E--> \r\n<!--选号先看号段 B-->\r\n<div class=\\"wrap skt-how\\">\r\n  <h2 class=\\"tit\\">舜王通信·覆盖号段</h2>\r\n  <div class=\\"how-tems cf\\"> \r\n<!--电信-->\r\n<div class=\\"tem fl\\">\r\n  <div class=\\"dx tag\\"></div>\r\n  <p><span>号段：</span><span class=\\"317ee7\\">4008、4009</span></p>\r\n  <p class=\\"317ee7\\"><span>基础电路提供：</span><span class=\\"fno\\">中国电信</span></p>\r\n  <p><span>优点：</span><span class=\\"fno\\">接通快、稳定，追求品质用户优选</span></p>\r\n  <p><span>增值功能与技术支撑：</span><span class=\\"fno\\">舜王通信</span></p>\r\n  <p><span>用户选择率：</span><span class=\\"fno\\">约50%</span></p>\r\n  <div class=\\"fl needNum kf\\"  data-agl-cvt=\\"1\\">索取电信400号码</div>\r\n</div>\r\n<!--移动-->\r\n<div class=\\"tem fl mgrl28\\">\r\n  <div class=\\"yd tag\\"></div>\r\n  <p><span>号段：</span><span class=\\"317ee7\\">4001、4007</span></p>\r\n  <p class=\\"317ee7\\"><span>基础电路提供：</span><span class=\\"fno\\">中国移动</span></p>\r\n  <p><span>优点：</span><span class=\\"fno\\">移动网络强，手机接听用户优选</span></p>\r\n  <p><span>增值功能与技术支撑：</span><span class=\\"fno\\">舜王通信</span></p>\r\n  <p><span>用户选择率：</span><span class=\\"fno\\">约25%</span></p>\r\n  <div class=\\"fl needNum kf\\"  data-agl-cvt=\\"1\\">索取移动400号码</div>\r\n</div>\r\n<!--联通-->\r\n<div class=\\"tem fl\\">\r\n  <div class=\\"lt tag\\"></div>\r\n  <p><span>号段：</span><span class=\\"317ee7\\">4000、4006</span></p>\r\n  <p class=\\"317ee7\\"><span>基础电路提供：</span><span class=\\"fno\\">中国联通</span></p>\r\n  <p><span>优点：</span><span class=\\"fno\\">价格便宜，小企业优选</span></p>\r\n  <p><span>增值功能与技术支撑：</span><span class=\\"fno\\">舜王通信</span></p>\r\n  <p><span>用户选择率：</span><span class=\\"fno\\">约25%</span></p>\r\n  <div class=\\"fl needNum kf\\"  data-agl-cvt=\\"1\\">索取联通400号码</div>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--选号先看号段 B--> \r\n<!--选号秘籍 B-->\r\n<div class=\\"wrap miji\\">\r\n  <h2 class=\\"tit\\">选号秘籍</h2>\r\n  <div class=\\"miji-group cf\\">\r\n<div class=\\"item item1 cf\\">\r\n  <div class=\\"idx idx1\\"></div>\r\n  <div class=\\"tex\\">\r\n<div class=\\"tit\\">看号段</div>\r\n<p>4008/4009&nbsp;&nbsp;&nbsp;4001/4007&nbsp;&nbsp;&nbsp;4000/4006<br>\r\n  中国电信&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中国移动&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中国联通</p>\r\n  </div>\r\n</div>\r\n<div class=\\"item item2 cf\\">\r\n  <div class=\\"idx idx2\\"></div>\r\n  <div class=\\"tex\\">\r\n<div class=\\"tit\\">看组合</div>\r\n<p>组合越有规律，越易记，<br>\r\n  形象越好，价格越高。</p>\r\n  </div>\r\n</div>\r\n<div class=\\"item item3 cf\\">\r\n  <div class=\\"idx idx3\\"></div>\r\n  <div class=\\"tex\\">\r\n<div class=\\"tit\\">看数字</div>\r\n<p>8、9、6数字，更符合客户认知习惯，<br>\r\n  客户选择较多。 </p>\r\n  </div>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--选号秘籍 E--> \r\n<!--精选号码推荐B-->\r\n<div class=\\"wrap Diamonds\\">\r\n  <h2 class=\\"tit\\">精选号码推荐</h2>\r\n  <div class=\\"cf tc-show \\"> \r\n<!--皇冠靓号-->\r\n<div class=\\"tc-show-item fl\\">\r\n  <div class=\\"img\\"> <img src=\\"style/images/jx1.png\\"> </div>\r\n  <div class=\\"flag\\">皇冠靓号</div>\r\n  <div class=\\"gp\\">组合规律</div>\r\n  <div class=\\"rule\\"> AAAAAA、AAAAA、ABCDE、AAABBB </div>\r\n  <div class=\\"Example-num\\">\r\n<p>示例号码</p>\r\n<div class=\\"num-group cf\\">\r\n  <div class=\\"n1 fl\\">\r\n<div>400*-333-333</div>\r\n<div>400-*6-56789</div>\r\n<div>400-*6-98765</div>\r\n<div>400*-999-000</div>\r\n  </div>\r\n  <div class=\\"n2 fr\\">\r\n<div>400-*9-88888</div>\r\n<div>400-*5-12345</div>\r\n<div>400*-888-777</div>\r\n<div>400*-888-000</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"tc-btn kf\\"  data-agl-cvt=\\"1\\"> 好号码抢先预占 </div>\r\n</div>\r\n<!--钻石靓号-->\r\n<div class=\\"tc-show-item fl m-RL-16\\">\r\n  <div class=\\"img\\"> <img src=\\"style/images/jx2.png\\"> </div>\r\n  <div class=\\"flag\\">钻石靓号</div>\r\n  <div class=\\"gp\\">组合规律</div>\r\n  <div class=\\"rule\\"> AAAA、ABCD、AABBCC、ABCABC </div>\r\n  <div class=\\"Example-num\\">\r\n<p>示例号码</p>\r\n<div class=\\"num-group cf\\">\r\n  <div class=\\"n1 fl\\">\r\n<div>400-*61-9999</div>\r\n<div>400-*60-6789</div>\r\n<div>400*-589-589</div>\r\n<div>400*-00-11-88</div>\r\n  </div>\r\n  <div class=\\"n2 fr\\">\r\n<div>400-*80-8888</div>\r\n<div>400-*68-5678</div>\r\n<div>400*-658-658</div>\r\n<div>400*-00-66-00</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"tc-btn kf\\"  data-agl-cvt=\\"1\\"> 好号码抢先预占 </div>\r\n</div>\r\n<!--五星靓号-->\r\n<div class=\\"tc-show-item fl\\">\r\n  <div class=\\"img\\"> <img src=\\"style/images/jx3.png\\"> </div>\r\n  <div class=\\"flag\\">五星靓号</div>\r\n  <div class=\\"gp\\">组合规律</div>\r\n  <div class=\\"rule\\"> AABB、ABBB、ABAB、ABBA </div>\r\n  <div class=\\"Example-num\\">\r\n<p>示例号码</p>\r\n<div class=\\"num-group cf\\">\r\n  <div class=\\"n1 fl\\">\r\n<div>400-*18-5588</div>\r\n<div>400-*97-1777</div>\r\n<div>400-*27-9898</div>\r\n<div>400-*68-9119</div>\r\n  </div>\r\n  <div class=\\"n2 fr\\">\r\n<div>400-*65-6699</div>\r\n<div>400-*80-7888</div>\r\n<div>400-*18-6868</div>\r\n<div>400-*91-6996</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"tc-btn kf\\"  data-agl-cvt=\\"1\\"> 好号码抢先预占 </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"free2\\">\r\n<div class=\\"form-box form-box-css f_l clearfix\\" data-title=\\"400.com-申请好号码免费试用\\">\r\n  <input class=\\"name-vo-sub2 _183\\" maxlength=\\"5\\" type=\\"text\\" value=\\"您的姓名\\">\r\n  <input class=\\"phone-vo-sub2 _183\\" maxlength=\\"11\\" type=\\"text\\" value=\\"手机号码\\">\r\n  <input class=\\"inputcode-vo-sub2 _164\\" maxlength=\\"4\\" id=\\"inputcode-vo-sub2\\" type=\\"text\\" value=\\"验证码\\">\r\n  <div id=\\"code-vo-sub2\\"  class=\\"code-vo-sub2 fl\\" ></div>\r\n  <input class=\\"btn btn-vo-sub2\\" type=\\"button\\" value=\\"立即提交申请\\"  data-agl-cvt=\\"5\\">\r\n</div>\r\n  </div>\r\n</div>\r\n<!--精选号码推荐E--> \r\n\r\n\r\n\r\n<div style=\\"text-align:center; margin-top:20px;\\">\r\n<img src=\\"/style/css/img/small-2.jpg\\" />\r\n</div>\r\n\r\n\r\n\r\n\r\n<!--首页400套餐 B-->\r\n<div class=\\"wrap\\">\r\n  <h2 class=\\"tit\\">精选400套餐</h2>\r\n  <div class=\\"cf tc-show \\"> \r\n<!--198 套餐-->\r\n<div class=\\"tc-show-item fl\\">\r\n  <div class=\\"tc-log tc-log-1\\"></div>\r\n  <div class=\\"tc-name cf\\"> <span class=\\"jg _168 \\"></span> <span class=\\"dw tc-hot\\">元/月（合约3年）</span> </div>\r\n  <div class=\\"tc-fl cf\\">\r\n<div class=\\"tc-1 cf fl\\">\r\n  <div class=\\"tc-icon fl\\"></div>\r\n  <div class=\\"tc-sm fl\\">\r\n<div class=\\"prow\\">送3项</div>\r\n<div class=\\"zz\\">增值功能</div>\r\n  </div>\r\n</div>\r\n<div class=\\"tc-2 cf fl\\">\r\n  <div class=\\"tc-icon fl\\"></div>\r\n  <div class=\\"tc-sm fl\\">\r\n<div class=\\"prow\\">送5000元</div>\r\n<div class=\\"zz\\">400话费</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"Example-num\\">\r\n<p>示例号码</p>\r\n<!--168套餐-->\r\n<div class=\\"num-group cf\\">\r\n  <div class=\\"n1 fl\\">\r\n<div>400-*66-5188</div>\r\n<div>400-*68-5558</div>\r\n<div>400-*60-1110</div>\r\n  </div>\r\n  <div class=\\"n2 fr\\">\r\n<div>400-*77-6066</div>\r\n<div>400-*80-5880</div>\r\n<div>400*-996-880</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"tc-btn kf\\"  data-agl-cvt=\\"1\\"> 获取更多好号码 </div>\r\n</div>\r\n<!--598套餐-->\r\n<div class=\\"tc-show-item fl m-RL-16\\">\r\n  <div class=\\"tc-log tc-log-2\\"></div>\r\n  <div class=\\"tc-name\\"> <span class=\\"jg _598 \\"></span><!--598--> \r\n<span class=\\"dw tc-hot\\">元/月（合约3年）</span> </div>\r\n  <div class=\\"tc-fl cf\\">\r\n<div class=\\"tc-1 cf fl\\">\r\n  <div class=\\"tc-icon fl\\"></div>\r\n  <div class=\\"tc-sm fl\\">\r\n<div class=\\"prow\\">送5项</div>\r\n<div class=\\"zz\\">增值功能</div>\r\n  </div>\r\n</div>\r\n<div class=\\"tc-2 cf fl\\">\r\n  <div class=\\"tc-icon fl\\"></div>\r\n  <div class=\\"tc-sm fl\\">\r\n<div class=\\"prow\\">送20000元</div>\r\n<div class=\\"zz\\">400话费</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"Example-num\\">\r\n<p>示例号码</p>\r\n<div class=\\"num-group cf\\">\r\n  <div class=\\"n1 fl\\">\r\n<div>400-*60-8000</div>\r\n<div>400-*78-1777</div>\r\n<div>400-*69-6688</div>\r\n  </div>\r\n  <div class=\\"n2 fr\\">\r\n<div>400-*19-7799</div>\r\n<div>400*-666-788</div>\r\n<div>400*-688-699</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"tc-btn kf\\"  data-agl-cvt=\\"1\\"> 获取更多好号码 </div>\r\n</div>\r\n<!--988 套餐-->\r\n<div class=\\"tc-show-item fl\\">\r\n  <div class=\\"tc-log tc-log-3\\"></div>\r\n  <div class=\\"tc-name\\"> <span class=\\"jg _998 \\"></span> <span class=\\"dw tc-hot\\">元/月起（合约3年）</span> </div>\r\n  <div class=\\"tc-fl cf\\">\r\n<div class=\\"tc-1 cf fl\\">\r\n  <div class=\\"tc-icon fl\\"></div>\r\n  <div class=\\"tc-sm fl\\">\r\n<div class=\\"prow\\">送6项</div>\r\n<div class=\\"zz\\">增值功能</div>\r\n  </div>\r\n</div>\r\n<div class=\\"tc-2 cf fl\\">\r\n  <div class=\\"tc-icon fl\\"></div>\r\n  <div class=\\"tc-sm fl\\">\r\n<div class=\\"prow\\">送20000元</div>\r\n<div class=\\"zz\\">400话费</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"Example-num\\">\r\n<p>示例号码</p>\r\n<div class=\\"num-group cf\\">\r\n  <div class=\\"n1 fl\\">\r\n<div>400-*18-6888</div>\r\n<div>400-*60-1888</div>\r\n<div>400-*58-6999</div>\r\n  </div>\r\n  <div class=\\"n2 fr\\">\r\n<div>400-*60-6999</div>\r\n<div>400-*58-5666</div>\r\n<div>400-*98-5666</div>\r\n  </div>\r\n</div>\r\n  </div>\r\n  <div class=\\"tc-btn kf\\"  data-agl-cvt=\\"1\\"> 获取更多好号码 </div>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--首页400套餐 E--> \r\n<!--400增值功能 B-->\r\n<div class=\\"zzPrower wrap\\">\r\n  <h2 class=\\"tit\\">舜王通信400增值功能</h2>\r\n  <p class=\\"sm-tit\\"> <a href=\\"./allfunction.html\\">了解更多实用功能></a> </p>\r\n  <div class=\\"prower-group cf\\">\r\n<div class=\\"item\\">\r\n  <div class=\\"tit\\">\r\n<div class=\\"icon icon1\\"></div>\r\n来电欢迎词 </div>\r\n  <p class=\\"des\\">企业的有声名片，用个性语音代替单调铃声，在等待接通时间里，向客户传达企业真实信息，增加信任。</p>\r\n  <p class=\\"xzl\\">用户选择率</p>\r\n  <div class=\\"bfb\\">100%</div>\r\n  <div class=\\"btn kf\\"  data-agl-cvt=\\"1\\">立即体验</div>\r\n</div>\r\n<div class=\\"item\\">\r\n  <div class=\\"tit\\">\r\n<div class=\\"icon icon2\\"></div>\r\n一号多线 </div>\r\n  <p class=\\"des\\">一个400号码可以绑定多部手机、座机，可供多客户同时打入，系统自动选择空闲线路接入，不错失商机。</p>\r\n  <p class=\\"xzl\\">用户选择率</p>\r\n  <div class=\\"bfb\\">100%</div>\r\n  <div class=\\"btn kf\\"  data-agl-cvt=\\"1\\">立即体验</div>\r\n</div>\r\n<div class=\\"item\\">\r\n  <div class=\\"tit\\">\r\n<div class=\\"icon icon3\\"></div>\r\n通话录音 </div>\r\n  <p class=\\"des\\">每一个400电话来电通话全程录音，帮助企业监督客服服务质量，也为处理客户纠纷、投诉提供证据。</p>\r\n  <p class=\\"xzl\\">用户选择率</p>\r\n  <div class=\\"bfb\\">90%</div>\r\n  <div class=\\"btn kf\\"  data-agl-cvt=\\"1\\">立即体验</div>\r\n</div>\r\n<div class=\\"item mr0\\">\r\n  <div class=\\"tit\\">\r\n<div class=\\"icon icon4\\"></div>\r\nIVR智能语音导航 </div>\r\n  <p class=\\"des\\">根据客户拨打400来电的按键选择，自动为客户提供相应服务支持，提高服务效率。</p>\r\n  <p class=\\"xzl\\">用户选择率</p>\r\n  <div class=\\"bfb\\">80%</div>\r\n  <div class=\\"btn kf\\"  data-agl-cvt=\\"1\\">立即体验</div>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--400增值功能 E--> \r\n<!--400电话办理流程 B-->\r\n<div class=\\"wrap process\\">\r\n  <h2 class=\\"tit\\">400电话办理流程</h2>\r\n  <div class=\\"process-group\\">\r\n<div class=\\"item\\">\r\n  <div class=\\"idx idx1\\"></div>\r\n  <div class=\\"tex\\">\r\n<div class=\\"tit\\">选号码、选功能、选套餐</div>\r\n<p>我们提供更丰富号源、更高性价比套餐。</p>\r\n  </div>\r\n</div>\r\n<div class=\\"item\\">\r\n  <div class=\\"idx idx2\\"></div>\r\n  <div class=\\"tex\\">\r\n<div class=\\"tit\\">签约付款，锁定号码</div>\r\n<p>签订正式合同并付款即可锁定号码。</p>\r\n  </div>\r\n</div>\r\n<div class=\\"item\\">\r\n  <div class=\\"idx idx3\\"></div>\r\n  <div class=\\"tex\\">\r\n<div class=\\"tit\\">提交实名认证材料</div>\r\n<p>做好实名认证，长期使用更有保障。</p>\r\n  </div>\r\n</div>\r\n<div class=\\"item\\">\r\n  <div class=\\"idx idx4\\"></div>\r\n  <div class=\\"tex\\">\r\n<div class=\\"tit\\">开通服务</div>\r\n<p>开通服务只是开始，长期技术支撑更关键。</p>\r\n  </div>\r\n</div>\r\n  </div>\r\n</div>\r\n<!--400电话办理流程 E-->\r\n<div class=\\"wrap small-banner small-banner-2 kf\\"  data-agl-cvt=\\"1\\"></div>\r\n\r\n<!-- bottom -->\r\n<div class=\\"bottom\\">\r\n  <div class=\\"bt1\\">\r\n    <p>舜王通信·新闻中心</p>\r\n  </div>\r\n\r\n  <div class=\\"bt2\\">\r\n    <div class=\\"box1 f\\">\r\n      <div class=\\"top\\">公司新闻</div>\r\n      <div class=\\"center\\">\r\n        <img src=\\"./style/css/img/ct-img.jpg\\" alt=\\"\\">\r\n        <ul>\r\n[e:loop={4,9,0,0}]\r\n<li><a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" target=\\"_blank\\"><?=esub($bqr[title],40)?></a> </li>\r\n[/e:loop]\r\n        </ul>\r\n      </div>\r\n      <div class=\\"btm\\">\r\n        <a href=\\"/news/gsxw/\\">查看更多新资讯</a>\r\n      </div>\r\n    </div>\r\n    <div class=\\"box2 f\\">\r\n      <div class=\\"top\\">行业动态</div>\r\n      <div class=\\"center\\">\r\n        <img src=\\"./style/css/img/ct-img.jpg\\" alt=\\"\\">\r\n        <ul>\r\n[e:loop={4,9,0,0}]\r\n<li><a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" target=\\"_blank\\"><?=esub($bqr[title],40)?></a> </li>\r\n[/e:loop]\r\n        </ul>\r\n      </div>\r\n      <div class=\\"btm\\">\r\n        <a href=\\"/news/hydt/\\">查看更多新资讯</a>\r\n      </div>\r\n    </div>\r\n    <div class=\\"box3 f\\">\r\n      <div class=\\"top\\">常见问题</div>\r\n      <div class=\\"center\\">\r\n        <img src=\\"./style/css/img/ct-img.jpg\\" alt=\\"\\">\r\n        <ul>\r\n[e:loop={4,9,0,0}]\r\n<li><a href=\\"<?=$bqsr[\\''titleurl\\'']?>\\" target=\\"_blank\\"><?=esub($bqr[title],40)?></a> </li>\r\n[/e:loop]\r\n        </ul>\r\n      </div>\r\n      <div class=\\"btm\\">\r\n        <a href=\\"/news/cjwt/\\">查看更多新资讯</a>\r\n      </div>\r\n    </div>\r\n  </div>\r\n\r\n  <div class=\\"bt3\\">\r\n      <div class=\\"sp1\\">\r\n        <span>标签直达:</span>\r\n        <a href=\\"/\\">成都400电话</a>\r\n        <a href=\\"/\\">成都400电话办理</a>\r\n        <a href=\\"/\\">成都400电话申请</a>\r\n        <a href=\\"/\\">成都企业400电话</a>\r\n        <a href=\\"/\\">成都办400电话</a>\r\n        <a href=\\"/\\">成都400电话安装</a>\r\n      </div>\r\n      <div class=\\"sp2\\">\r\n        <span>友情链接:</span>\r\n        <a href=\\"https://www.shunking.cn/\\" target=\\"_blank\\">舜王科技</a>\r\n        <a href=\\"http://www.xzhywl.cn/\\" target=\\"_blank\\">鸿扬网络</a>\r\n        <a href=\\"https://www.swcy.shunking.cn/\\" target=\\"_blank\\">舜王彩印</a>\r\n        <a href=\\"/\\" target=\\"_blank\\">舜王通信</a>\r\n        <a href=\\"https://www.site.shunking.cn/\\" target=\\"_blank\\">舜王建站</a>\r\n      </div>\r\n  </div>\r\n</div>\r\n<!-- bottom -->\r\n<!--footer B-->\r\n<div class=\\"foot\\">\r\n    <div class=\\"wrap cf\\">\r\n      <div class=\\"fl flink\\">\r\n        <div class=\\"jumpUrl cf\\"> <a href=\\"./Customercase.html\\">选号指南</a><span>|</span> <a href=\\"./allfunction.html\\">实用功能</a><span>|</span> <a href=\\"./changjianwenti.html\\">常见问题</a><span>|</span> <a href=\\"./Payment.html\\">付款方式</a><span>|</span> <a href=\\"./aboutus.html#conectUs\\">联系我们</a><span>|</span> <a href=\\"./complaint.html\\">投诉建议</a> </div>\r\n        <div class=\\"company-message\\">\r\n          <div class=\\"c c1\\">成都舜王科技有限公司 版权所有 Copyright © 2004-<script>var y = new Date();document.write(y.getFullYear());</script>&nbsp;舜王通信  <a target=\\"_blank\\" href=\\"http://www.beian.miit.gov.cn\\">蜀ICP备16023211号</a></div>\r\n          <div class=\\"cf c c2\\">\r\n            <p class=\\"fl\\">增值电信业务运营牌照 川B2-20240767号</p>\r\n            <div class=\\"fl box-font-0\\"> <a target=\\"_blank\\" class=\\"b1\\" href=\\"#\\"></a> <a target=\\"_blank\\" href=\\"http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=51010802000011\\" class=\\"b2\\"></a> </div>\r\n            <p class=\\"fl\\">川公网安备 51010802000011号</p>\r\n          </div>\r\n        </div>\r\n      </div>\r\n</div>\r\n      <div class=\\"fr sun-line\\" style=\\"margin-top:-95px;position:relative;right:25%\\">\r\n        <p> <span class=\\"p1\\">全国400咨询办理热线：</span> <span class=\\"p2\\">400-028-1238</span> </p>\r\n        <p> <span class=\\"p1\\">全国400售后支撑专线：</span> <span class=\\"p2\\">028-84721238</span> </p>\r\n      </div>\r\n      <a class=\\"ts2\\" href=\\"./complaint.html\\">\r\n        <div class=\\"icon\\"></div>\r\n      投诉建议\r\n      </a> \r\n  </div>\r\n</div>\r\n<!--footer E--> \r\n<!--返回顶部-->\r\n<div class=\\"goTo\\"></div>\r\n<!--返回顶部--> \r\n<script src=\\"style/js/jquery.min.js\\"></script> \r\n<script src=\\"style/js/jquery.SuperSlide.2.1.1.js\\"></script> \r\n<script src=\\"style/js/index.js\\"></script> \r\n<script>\r\njQuery(\\".slideBox\\").slide({mainCell:\\".bd .banner-box\\",autoPlay:true});\r\n</script> \r\n<!--cnzz--> \r\n</body>\r\n</html>', 0, 0, '', 0, 0, '', 0, 0, 0, 1600855576, 'pubindextemp', 1, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewstempdt`
--

CREATE TABLE IF NOT EXISTS `swtx_enewstempdt` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempvar` char(30) NOT NULL DEFAULT '',
  `tempname` char(30) NOT NULL DEFAULT '',
  `tempsay` char(255) NOT NULL DEFAULT '',
  `tempfile` char(200) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `temptype` char(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`tempid`),
  UNIQUE KEY `tempvar` (`tempvar`),
  KEY `temptype` (`temptype`),
  KEY `myorder` (`myorder`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `swtx_enewstempdt`
--

INSERT INTO `swtx_enewstempdt` (`tempid`, `tempvar`, `tempname`, `tempsay`, `tempfile`, `myorder`, `temptype`) VALUES
(1, 'header', '主界面头部', '主界面头部', 'e/template/incfile/header.php', 0, 'incfile'),
(2, 'footer', '主界面尾部', '主界面尾部', 'e/template/incfile/footer.php', 0, 'incfile'),
(3, 'qDoInfo', '管理投稿首页', '管理投稿首页', 'e/template/DoInfo/DoInfo.php', 0, 'doinfo'),
(4, 'qChangeClass', '投稿选择栏目页', '投稿选择栏目页', 'e/template/DoInfo/ChangeClass.php', 0, 'doinfo'),
(5, 'qDoInfoTran', '发布投稿上传附件页面', '发布投稿上传附件页面', 'e/template/DoInfo/tran.php', 0, 'doinfo'),
(6, 'qAddInfo', '发布投稿页', '发布投稿页', 'e/template/DoInfo/AddInfo.php', 0, 'doinfo'),
(7, 'qListInfo', '默认管理投稿列表页', '默认管理投稿列表页', 'e/data/html/list/qlistinfo.php', 0, 'doinfo'),
(8, 'report', '提交错误报告页面', '提交错误报告页面', 'e/template/public/report.php', 0, 'pubtemp'),
(9, 'payapi', '在线支付页面', '在线支付页面', 'e/template/payapi/payapi.php', 0, 'pubtemp'),
(10, 'infovote', '信息投票页面', '信息投票页面', 'e/template/public/vote.php', 0, 'pubtemp'),
(11, 'vote', '投票插件页面', '投票插件页面', 'e/template/tool/vote.php', 0, 'pubtemp'),
(12, 'ShopBurcar', '购物车页面', '购物车页面', 'e/template/ShopSys/buycar.php', 0, 'shopsys'),
(13, 'ShopOrder', '提交订单页面', '提交订单页面', 'e/template/ShopSys/order.php', 0, 'shopsys'),
(14, 'ShopSubmitOrder', '确认提交订单页面', '确认提交订单页面', 'e/template/ShopSys/SubmitOrder.php', 0, 'shopsys'),
(15, 'ShopListDd', '订单列表页面', '订单列表页面', 'e/template/ShopSys/ListDd.php', 0, 'shopsys'),
(16, 'ShopShowDd', '订单详细页面', '订单详细页面', 'e/template/ShopSys/ShowDd.php', 0, 'shopsys'),
(17, 'ShopBurcarForm', '购物车-加入表单模板', '购物车-加入表单模板', 'e/template/ShopSys/buycar/buycar_form.php', 0, 'shopsys'),
(18, 'ShopBurcarOrder', '购物车-确认订单模板', '购物车-确认订单模板', 'e/template/ShopSys/buycar/buycar_order.php', 0, 'shopsys'),
(19, 'ShopBurcarShowdd', '购物车-显示订单模板', '购物车-显示订单模板', 'e/template/ShopSys/buycar/buycar_showdd.php', 0, 'shopsys'),
(20, 'ShopAddAddress', '增加配送地址页面', '增加配送地址页面', 'e/template/ShopSys/AddAddress.php', 0, 'shopsys'),
(21, 'ShopListAddress', '管理配送地址页面', '管理配送地址页面', 'e/template/ShopSys/ListAddress.php', 0, 'shopsys'),
(22, 'MemberReg', '会员注册页面', '会员注册页面', 'e/template/member/register.php', 0, 'member'),
(23, 'MemberChangeReg', '选择注册类型页面', '选择注册类型页面', 'e/template/member/ChangeRegister.php', 0, 'member'),
(24, 'MemberRegsend', '重发注册激活邮件页面', '重发注册激活邮件页面', 'e/template/member/regsend.php', 0, 'member'),
(25, 'MemberLogin', '会员登录页面', '会员登录页面', 'e/template/member/login.php', 0, 'member'),
(26, 'MemberLoginopen', '会员登录弹出页面', '会员登录弹出页面', 'e/template/member/loginopen.php', 0, 'member'),
(27, 'MemberEditinfo', '修改会员信息页面', '修改会员信息页面', 'e/template/member/EditInfo.php', 0, 'member'),
(28, 'MemberEditsafeinfo', '修改会员安全信息页面', '修改会员安全信息页面', 'e/template/member/EditSafeInfo.php', 0, 'member'),
(29, 'MemberGetPassword', '取回密码页面', '取回密码页面', 'e/template/member/GetPassword.php', 0, 'member'),
(30, 'MemberGetResetPass', '取回密码重置页面', '取回密码重置页面', 'e/template/member/getpass.php', 0, 'member'),
(31, 'MemberCp', '会员中心首页', '会员中心首页', 'e/template/member/cp.php', 0, 'member'),
(32, 'MemberMy', '会员状态页面', '会员状态页面', 'e/template/member/my.php', 0, 'member'),
(33, 'MemberShowInfo', '查看会员信息页面', '查看会员信息页面', 'e/template/member/ShowInfo.php', 0, 'member'),
(34, 'MemberList1', '默认会员列表页面', '默认会员列表页面', 'e/template/member/memberlist/1.php', 0, 'member'),
(35, 'MemberAddMsg', '发送站内消息页面', '发送站内消息页面', 'e/template/member/AddMsg.php', 0, 'membermsg'),
(36, 'MemberMsg', '站内消息列表页面', '站内消息列表页面', 'e/template/member/msg.php', 0, 'membermsg'),
(37, 'MemberViewMsg', '查看站内消息页面', '查看站内消息页面', 'e/template/member/ViewMsg.php', 0, 'membermsg'),
(38, 'MemberAddFriend', '增加好友页面', '增加好友页面', 'e/template/member/AddFriend.php', 0, 'memberfriend'),
(39, 'MemberFriend', '好友列表页面', '好友列表页面', 'e/template/member/friend.php', 0, 'memberfriend'),
(40, 'MemberFriendClass', '好友分类页面', '好友分类页面', 'e/template/member/FriendClass.php', 0, 'memberfriend'),
(41, 'MemberChangeFriend', '选择好友页面', '选择好友页面', 'e/template/member/ChangeFriend.php', 0, 'memberfriend'),
(42, 'MemberAddFava', '增加收藏信息页面', '增加收藏信息页面', 'e/template/member/AddFava.php', 0, 'memberfav'),
(43, 'MemberFava', '管理收藏页面', '管理收藏页面', 'e/template/member/fava.php', 0, 'memberfav'),
(44, 'MemberFavaClass', '管理收藏分类页面', '管理收藏分类页面', 'e/template/member/FavaClass.php', 0, 'memberfav'),
(45, 'MemberBuybak', '充值记录页面', '充值记录页面', 'e/template/member/buybak.php', 0, 'memberother'),
(46, 'MemberDownbak', '下载记录页面', '下载记录页面', 'e/template/member/downbak.php', 0, 'memberother'),
(47, 'MemberBuygroup', '购买会员类型页面', '购买会员类型页面', 'e/template/member/buygroup.php', 0, 'memberother'),
(48, 'MemberCard', '点卡充值页面', '点卡充值页面', 'e/template/member/card.php', 0, 'memberother'),
(49, 'MemberChangeStyle', '选择会员空间风格页面', '选择会员空间风格页面', 'e/template/member/mspace/ChangeStyle.php', 0, 'memberspace'),
(50, 'MemberSetSpace', '设置会员空间页面', '设置会员空间页面', 'e/template/member/mspace/SetSpace.php', 0, 'memberspace'),
(51, 'MemberFeedback', '管理会员空间反馈页面', '管理会员空间反馈页面', 'e/template/member/mspace/feedback.php', 0, 'memberspace'),
(52, 'MemberShowFeedback', '查看会员空间反馈页面', '查看会员空间反馈页面', 'e/template/member/mspace/ShowFeedback.php', 0, 'memberspace'),
(53, 'MemberGbook', '管理会员空间留言页面', '管理会员空间留言页面', 'e/template/member/mspace/gbook.php', 0, 'memberspace'),
(54, 'MemberReGbook', '回复会员空间留言页面', '回复会员空间留言页面', 'e/template/member/mspace/ReGbook.php', 0, 'memberspace'),
(55, 'MemberConnectListBind', '登录绑定管理页面', '登录绑定管理页面', 'e/template/memberconnect/ListBind.php', 0, 'memberconnect'),
(56, 'MemberConnectTobind', '绑定登录帐号页面', '绑定登录帐号页面', 'e/template/memberconnect/tobind.php', 0, 'memberconnect'),
(57, 'InfoViewLevel', '信息权限提示页面', '查看信息权限提示页面', 'e/template/public/checklevel/info1.php', 0, 'pubtemp');

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewstempgroup`
--

CREATE TABLE IF NOT EXISTS `swtx_enewstempgroup` (
  `gid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `gname` varchar(60) NOT NULL DEFAULT '',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `swtx_enewstempgroup`
--

INSERT INTO `swtx_enewstempgroup` (`gid`, `gname`, `isdefault`) VALUES
(1, '默认模板组', 1);

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewstempvar`
--

CREATE TABLE IF NOT EXISTS `swtx_enewstempvar` (
  `varid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `myvar` varchar(60) NOT NULL DEFAULT '',
  `varname` varchar(60) NOT NULL DEFAULT '',
  `varvalue` mediumtext NOT NULL,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`varid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `swtx_enewstempvar`
--

INSERT INTO `swtx_enewstempvar` (`varid`, `myvar`, `varname`, `varvalue`, `classid`, `isclose`, `myorder`) VALUES
(1, 'header', '页面头部', '<!-- 页头 -->\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"top\\">\r\n<tr>\r\n<td>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\r\n<tr>\r\n<td width=\\"63%\\"> \r\n<!-- 登录 -->\r\n<script>\r\ndocument.write(\\''<script src=\\"[!--news.url--]e/member/login/loginjs.php?t=\\''+Math.random()+\\''\\"><\\''+\\''/script>\\'');\r\n</script>\r\n</td>\r\n<td align=\\"right\\">\r\n<a onclick=\\"window.external.addFavorite(location.href,document.title)\\" href=\\"#ecms\\">加入收藏</a> | <a onclick=\\"this.style.behavior=\\''url(#default#homepage)\\'';this.setHomePage(\\''[!--news.url--]\\'')\\" href=\\"#ecms\\">设为首页</a> | <a href=\\"[!--news.url--]e/member/cp/\\">会员中心</a> | <a href=\\"[!--news.url--]e/DoInfo/\\">我要投稿</a> | <a href=\\"[!--news.url--]e/web/?type=rss2&classid=[!--self.classid--]\\" target=\\"_blank\\">RSS<img src=\\"[!--news.url--]skin/default/images/rss.gif\\" border=\\"0\\" hspace=\\"2\\" /></a>\r\n</td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"10\\">\r\n<tr valign=\\"middle\\">\r\n<td width=\\"240\\" align=\\"center\\"><a href=\\"[!--news.url--]\\"><img src=\\"[!--news.url--]skin/default/images/logo.gif\\" width=\\"200\\" height=\\"65\\" border=\\"0\\" /></a></td>\r\n<td align=\\"center\\"><a href=\\"http://www.phome.net/OpenSource/\\" target=\\"_blank\\"><img src=\\"[!--news.url--]skin/default/images/opensource.gif\\" width=\\"100%\\" height=\\"70\\" border=\\"0\\" /></a></td>\r\n</tr>\r\n</table>\r\n<!-- 导航tab选项卡 -->\r\n<table width=\\"920\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"nav\\">\r\n  <tr> \r\n    <td class=\\"nav_global\\"><ul>\r\n        <li class=\\"curr\\" id=\\"tabnav_btn_0\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]\\">首页</a></li>\r\n        [showclasstemp]\\''0\\'',12,0,0[/showclasstemp] </ul></td>\r\n  </tr>\r\n</table>', 0, 0, 1),
(2, 'footer', '页面尾部', '<!-- 页脚 -->\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\">\r\n<tr>\r\n<td align=\\"center\\" class=\\"search\\">\r\n<form action=\\"[!--news.url--]e/search/index.php\\" method=\\"post\\" name=\\"searchform\\" id=\\"searchform\\">\r\n<table border=\\"0\\" cellspacing=\\"6\\" cellpadding=\\"0\\">\r\n<tr>\r\n<td><strong>站内搜索：</strong>\r\n<input name=\\"keyboard\\" type=\\"text\\" size=\\"32\\" id=\\"keyboard\\" class=\\"inputText\\" />\r\n<input type=\\"hidden\\" name=\\"show\\" value=\\"title\\" />\r\n<input type=\\"hidden\\" name=\\"tempid\\" value=\\"1\\" />\r\n<select name=\\"tbname\\">\r\n<option value=\\"news\\">新闻</option>\r\n<option value=\\"download\\">下载</option>\r\n<option value=\\"photo\\">图库</option>\r\n<option value=\\"flash\\">FLASH</option>\r\n<option value=\\"movie\\">电影</option>\r\n<option value=\\"shop\\">商品</option>\r\n<option value=\\"article\\">文章</option>\r\n<option value=\\"info\\">分类信息</option>\r\n</select>\r\n</td>\r\n<td><input type=\\"image\\" class=\\"inputSub\\" src=\\"[!--news.url--]skin/default/images/search.gif\\" />\r\n</td>\r\n<td><a href=\\"[!--news.url--]search/\\" target=\\"_blank\\">高级搜索</a></td>\r\n</tr>\r\n</table>\r\n</form>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n	<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"4\\" class=\\"copyright\\">\r\n        <tr> \r\n          <td align=\\"center\\"><a href=\\"[!--news.url--]\\">网站首页</a> | <a href=\\"#\\">关于我们</a> \r\n            | <a href=\\"#\\">服务条款</a> | <a href=\\"#\\">广告服务</a> | <a href=\\"#\\">联系我们</a> \r\n            | <a href=\\"#\\">网站地图</a> | <a href=\\"#\\">免责声明</a> | <a href=\\"[!--news.url--]e/wap/\\" target=\\"_blank\\">WAP</a></td>\r\n        </tr>\r\n        <tr> \r\n          <td align=\\"center\\">Powered by <strong><a href=\\"http://www.phome.net\\" target=\\"_blank\\">EmpireCMS</a></strong> \r\n            <strong><font color=\\"#FF9900\\">7.5</font></strong>&nbsp; &copy; 2002-2018 \r\n            <a href=\\"http://www.digod.com\\" target=\\"_blank\\">EmpireSoft Inc.</a></td>\r\n        </tr>\r\n	</table>\r\n</td>\r\n</tr>\r\n</table>', 0, 0, 0),
(3, 'dtheader', '动态页面头部', '<!-- 页头 -->\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" class=\\"top\\">\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\">\r\n<tr>\r\n<td width=\\"63%\\">\r\n<!-- 登录 -->\r\n<script>\r\ndocument.write(\\''<script src=\\"[!--news.url--]e/member/login/loginjs.php?t=\\''+Math.random()+\\''\\"><\\''+\\''/script>\\'');\r\n</script>\r\n</td>\r\n<td align=\\"right\\">\r\n<a onclick=\\"window.external.addFavorite(location.href,document.title)\\" href=\\"#ecms\\">加入收藏</a> | <a onclick=\\"this.style.behavior=\\''url(#default#homepage)\\'';this.setHomePage(\\''[!--news.url--]\\'')\\" href=\\"#ecms\\">设为首页</a> | <a href=\\"[!--news.url--]e/member/cp/\\">会员中心</a> | <a href=\\"[!--news.url--]e/DoInfo/\\">我要投稿</a> | <a href=\\"[!--news.url--]e/web/?type=rss2\\" target=\\"_blank\\">RSS<img src=\\"[!--news.url--]skin/default/images/rss.gif\\" border=\\"0\\" hspace=\\"2\\" /></a>\r\n</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"10\\">\r\n<tr valign=\\"middle\\">\r\n<td width=\\"240\\" align=\\"center\\"><a href=\\"[!--news.url--]\\"><img src=\\"[!--news.url--]skin/default/images/logo.gif\\" width=\\"200\\" height=\\"65\\" border=\\"0\\" /></a></td>\r\n<td align=\\"center\\"><a href=\\"http://www.phome.net/OpenSource/\\" target=\\"_blank\\"><img src=\\"[!--news.url--]skin/default/images/opensource.gif\\" width=\\"100%\\" height=\\"70\\" border=\\"0\\" /></a></td>\r\n</tr>\r\n</table>\r\n<!-- 导航tab选项卡 -->\r\n<table width=\\"920\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"nav\\">\r\n  <tr> \r\n    <td class=\\"nav_global\\"><ul>\r\n        <li class=\\"curr\\" id=\\"tabnav_btn_0\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]\\">首页</a></li>\r\n        <li id=\\"tabnav_btn_1\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]news/\\">新闻中心</a></li>\r\n        <li id=\\"tabnav_btn_2\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]download/\\">下载中心</a></li>\r\n        <li id=\\"tabnav_btn_3\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]movie/\\">影视频道</a></li>\r\n        <li id=\\"tabnav_btn_4\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]shop/\\">网上商城</a></li>\r\n        <li id=\\"tabnav_btn_5\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]flash/\\">FLASH频道</a></li>\r\n        <li id=\\"tabnav_btn_6\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]photo/\\">图片频道</a></li>\r\n        <li id=\\"tabnav_btn_7\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]article/\\">文章中心</a></li>\r\n        <li id=\\"tabnav_btn_8\\" onmouseover=\\"tabit(this)\\"><a href=\\"[!--news.url--]info/\\">分类信息</a></li>\r\n      </ul></td>\r\n  </tr>\r\n</table>', 0, 0, 0),
(4, 'infoarea', '分类信息区域导航', '<table width=\\"96%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"4\\">\r\n	<tr>\r\n		<td width=\\"33%\\"><img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=东城区\\">东城区</a></td>\r\n		<td width=\\"33%\\"><img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=西城区\\">西城区</a></td>\r\n		<td width=\\"33%\\"><img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=通州区\\">通州区</a></td>\r\n	</tr>\r\n	<tr>\r\n		<td><img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=崇文区\\">崇文区</a></td>\r\n		<td><img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=宣武区\\">宣武区</a></td>\r\n		<td><img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=大兴区\\">大兴区</a></td>\r\n	</tr>\r\n	<tr>\r\n		<td><img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" /><a href=\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=朝阳区\\">&nbsp;朝阳区</a></td>\r\n		<td><img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=海淀区\\">海淀区</a></td>\r\n		<td><img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=昌平区\\">昌平区</a></td>\r\n	</tr>\r\n	<tr>\r\n		<td><img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=丰台区\\">丰台区</a></td>\r\n		<td><img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=石景山区\\">石景山区</a></td>\r\n		<td><img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=其它\\">其它</a></td>\r\n	</tr>\r\n</table>', 0, 0, 0),
(5, 'infoclassnav', '分类信息分类导航', '<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"0\\">\r\n  <tr>\r\n    <td bgcolor=\\"#EEF1F4\\">&nbsp;<img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo/?classid=10\\"><strong>房屋信息</strong></a></td>\r\n  </tr> \r\n</table>\r\n<table width=\\"96%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"4\\">\r\n  <tr>\r\n    <td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=11\\">房屋求租</a></td>\r\n    <td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=12\\">房屋出租</a></td>\r\n  		<td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=15\\">办公用房</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td><a href=\\"[!--news.url--]e/action/ListInfo/?classid=13\\">房屋求购</a></td>\r\n    <td><a href=\\"[!--news.url--]e/action/ListInfo/?classid=14\\">房屋出售</a></td>\r\n  		<td><a href=\\"[!--news.url--]e/action/ListInfo/?classid=16\\">旺铺门面</a></td>\r\n  </tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"4\\" bgcolor=\\"#EEF1F4\\">\r\n  <tr>\r\n    <td>&nbsp;<img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo/?classid=17\\"><strong>跳蚤市场</strong></a></td>\r\n  </tr>\r\n</table>\r\n<table width=\\"96%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"4\\">\r\n  <tr>\r\n    <td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=18\\">电脑配件</a></td>\r\n    <td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=19\\">电器数码</a></td>\r\n  		<td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=21\\">居家用品</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td><a href=\\"[!--news.url--]e/action/ListInfo/?classid=20\\">通讯产品</a></td>\r\n    <td><a href=\\"[!--news.url--]e/action/ListInfo/?classid=21\\"></a></td>\r\n  		<td>&nbsp;</td>\r\n  </tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"0\\" bgcolor=\\"#EEF1F4\\">\r\n  <tr>\r\n    <td>&nbsp;<img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo/?classid=22\\"><strong>同城生活</strong></a></td>\r\n  </tr>\r\n</table>\r\n<table width=\\"96%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"4\\">\r\n  <tr>\r\n    <td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=23\\">本地新闻</a></td>\r\n    <td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=24\\">购物打折</a></td>\r\n  		<td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=26\\">便民告示</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td><a href=\\"[!--news.url--]e/action/ListInfo/?classid=25\\">旅游活动</a></td>\r\n    <td>&nbsp;</td>\r\n  		<td>&nbsp;</td>\r\n  </tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"4\\" cellspacing=\\"0\\" bgcolor=\\"#EEF1F4\\">\r\n  <tr>\r\n    <td>&nbsp;<img src=\\"[!--news.url--]e/data/images/msgnav.gif\\" width=\\"5\\" height=\\"5\\" />&nbsp;<a href=\\"[!--news.url--]e/action/ListInfo/?classid=27\\"><strong>求职招聘</strong></a></td>\r\n  </tr>\r\n</table>\r\n<table width=\\"96%\\" border=\\"0\\" align=\\"center\\" cellpadding=\\"0\\" cellspacing=\\"4\\">\r\n  <tr>\r\n    <td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=28\\">工程技术</a></td>\r\n    <td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=29\\">财务会计</a></td>\r\n  		<td width=\\"33%\\"><a href=\\"[!--news.url--]e/action/ListInfo/?classid=31\\">经营管理</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td><a href=\\"[!--news.url--]e/action/ListInfo/?classid=30\\">餐饮行业</a></td>\r\n    <td><a href=\\"[!--news.url--]e/action/ListInfo/?classid=31\\"></a></td>\r\n  		<td>&nbsp;</td>\r\n  </tr>\r\n</table>', 0, 0, 0),
(7, 'pl', '评论表单', '<script>\r\n		  function CheckPl(obj)\r\n		  {\r\n		  if(obj.saytext.value==\\"\\")\r\n		  {\r\n		  alert(\\"您没什么话要说吗？\\");\r\n		  obj.saytext.focus();\r\n		  return false;\r\n		  }\r\n		  return true;\r\n		  }\r\n		  </script><form action=\\"[!--news.url--]e/pl/doaction.php\\" method=\\"post\\" name=\\"saypl\\" id=\\"saypl\\" onsubmit=\\"return CheckPl(document.saypl)\\">\r\n<table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" id=\\"plpost\\">\r\n\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"0\\" class=\\"title\\">\r\n<tr>\r\n<td><strong>发表评论</strong></td>\r\n<td align=\\"right\\"><a href=\\"[!--news.url--]e/pl/?classid=[!--classid--]&amp;id=[!--id--]\\">共有<span><script type=\\"text/javascript\\" src=\\"[!--news.url--]e/public/ViewClick/?classid=[!--classid--]&id=[!--id--]&down=2\\"></script></span>条评论</a></td>\r\n</tr>\r\n</table>\r\n<table width=\\"100%\\" border=\\"0\\" cellspacing=\\"10\\" cellpadding=\\"0\\">\r\n<tr>\r\n<td><table width=\\"100%\\" border=\\"0\\" cellpadding=\\"0\\" cellspacing=\\"2\\">\r\n<tr>\r\n<td width=\\"56%\\" align=\\"left\\">用户名:\r\n<input name=\\"username\\" type=\\"text\\" class=\\"inputText\\" id=\\"username\\" value=\\"\\" size=\\"16\\" /></td>\r\n<td width=\\"44%\\" align=\\"left\\">密码:\r\n<input name=\\"password\\" type=\\"password\\" class=\\"inputText\\" id=\\"password\\" value=\\"\\" size=\\"16\\" /></td>\r\n</tr>\r\n<tr>\r\n<td align=\\"left\\">验证码:\r\n<input name=\\"key\\" type=\\"text\\" class=\\"inputText\\" size=\\"10\\" />\r\n<img src=\\"[!--news.url--]e/ShowKey/?v=pl\\" align=\\"absmiddle\\" name=\\"plKeyImg\\" id=\\"plKeyImg\\" onclick=\\"plKeyImg.src=\\''[!--news.url--]e/ShowKey/?v=pl&t=\\''+Math.random()\\" title=\\"看不清楚,点击刷新\\" /> </td>\r\n<td align=\\"left\\"><input name=\\"nomember\\" type=\\"checkbox\\" id=\\"nomember\\" value=\\"1\\" checked=\\"checked\\" />\r\n匿名发表</td>\r\n</tr>\r\n</table>\r\n<textarea name=\\"saytext\\" rows=\\"6\\" id=\\"saytext\\"></textarea><input name=\\"imageField\\" type=\\"image\\" src=\\"[!--news.url--]e/data/images/postpl.gif\\"/>\r\n<input name=\\"id\\" type=\\"hidden\\" id=\\"id\\" value=\\"[!--id--]\\" />\r\n<input name=\\"classid\\" type=\\"hidden\\" id=\\"classid\\" value=\\"[!--classid--]\\" />\r\n<input name=\\"enews\\" type=\\"hidden\\" id=\\"enews\\" value=\\"AddPl\\" />\r\n<input name=\\"repid\\" type=\\"hidden\\" id=\\"repid\\" value=\\"0\\" />\r\n<input type=\\"hidden\\" name=\\"ecmsfrom\\" value=\\"[!--titleurl--]\\"></td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</table></form>', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewstempvarclass`
--

CREATE TABLE IF NOT EXISTS `swtx_enewstempvarclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewstogzts`
--

CREATE TABLE IF NOT EXISTS `swtx_enewstogzts` (
  `togid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyboard` varchar(255) NOT NULL DEFAULT '',
  `searchf` varchar(255) NOT NULL DEFAULT '',
  `query` text NOT NULL,
  `specialsearch` varchar(255) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `retype` tinyint(1) NOT NULL DEFAULT '0',
  `startday` varchar(20) NOT NULL DEFAULT '',
  `endday` varchar(20) NOT NULL DEFAULT '',
  `startid` int(10) unsigned NOT NULL DEFAULT '0',
  `endid` int(10) unsigned NOT NULL DEFAULT '0',
  `pline` int(11) NOT NULL DEFAULT '0',
  `doecmszt` tinyint(1) NOT NULL DEFAULT '0',
  `togztname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`togid`),
  KEY `togztname` (`togztname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsuser`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsuser` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `rnd` varchar(20) NOT NULL DEFAULT '',
  `adminclass` mediumtext NOT NULL,
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `styleid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `filelevel` tinyint(1) NOT NULL DEFAULT '0',
  `salt` varchar(8) NOT NULL DEFAULT '',
  `loginnum` int(10) unsigned NOT NULL DEFAULT '0',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(20) NOT NULL DEFAULT '',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(120) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pretime` int(10) unsigned NOT NULL DEFAULT '0',
  `preip` varchar(20) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `addip` varchar(20) NOT NULL DEFAULT '',
  `userprikey` varchar(50) NOT NULL DEFAULT '',
  `salt2` varchar(20) NOT NULL DEFAULT '',
  `lastipport` varchar(6) NOT NULL DEFAULT '',
  `preipport` varchar(6) NOT NULL DEFAULT '',
  `addipport` varchar(6) NOT NULL DEFAULT '',
  `uprnd` varchar(32) NOT NULL DEFAULT '',
  `wname` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(20) NOT NULL DEFAULT '',
  `wxno` varchar(80) NOT NULL DEFAULT '',
  `qq` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `swtx_enewsuser`
--

INSERT INTO `swtx_enewsuser` (`userid`, `username`, `password`, `rnd`, `adminclass`, `groupid`, `checked`, `styleid`, `filelevel`, `salt`, `loginnum`, `lasttime`, `lastip`, `truename`, `email`, `classid`, `pretime`, `preip`, `addtime`, `addip`, `userprikey`, `salt2`, `lastipport`, `preipport`, `addipport`, `uprnd`, `wname`, `tel`, `wxno`, `qq`) VALUES
(1, 'admin', '3103decf8e25d84201e4d7d02c5bd44e', 'gHkUXoJAzJR1XJJlYR7d', '', 1, 0, 1, 0, 'efMY8Xmv', 1, 1600853469, '127.0.0.1', '', '', 0, 0, '', 1600853463, '127.0.0.1', 'Z8FJDOcWGwehxrfnsnORYSNt4Bac7a2HYVzZt5EKZhBhufjx', 'cEaisHFEN05PSpuVJPU7', '60400', '60400', '60400', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsuseradd`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsuseradd` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `equestion` tinyint(4) NOT NULL DEFAULT '0',
  `eanswer` varchar(32) NOT NULL DEFAULT '',
  `openip` text NOT NULL,
  `certkey` varchar(60) NOT NULL DEFAULT '',
  `certtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `swtx_enewsuseradd`
--

INSERT INTO `swtx_enewsuseradd` (`userid`, `equestion`, `eanswer`, `openip`, `certkey`, `certtime`) VALUES
(1, 0, '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsuserclass`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsuserclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsuserjs`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsuserjs` (
  `jsid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `jsname` varchar(60) NOT NULL DEFAULT '',
  `jssql` text NOT NULL,
  `jstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `jsfilename` varchar(120) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsuserjsclass`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsuserjsclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsuserlist`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsuserlist` (
  `listid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `listname` varchar(60) NOT NULL DEFAULT '',
  `pagetitle` varchar(120) NOT NULL DEFAULT '',
  `filepath` varchar(120) NOT NULL DEFAULT '',
  `filetype` varchar(12) NOT NULL DEFAULT '',
  `totalsql` text NOT NULL,
  `listsql` text NOT NULL,
  `maxnum` int(11) NOT NULL DEFAULT '0',
  `lencord` int(11) NOT NULL DEFAULT '0',
  `listtempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pagekeywords` varchar(255) NOT NULL DEFAULT '',
  `pagedescription` varchar(255) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`listid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsuserlistclass`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsuserlistclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsuserloginck`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsuserloginck` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `andauth` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `swtx_enewsuserloginck`
--

INSERT INTO `swtx_enewsuserloginck` (`userid`, `andauth`) VALUES
(1, '37d6abf73e2d8ce557f4c9bdbd546280');

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsvg`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsvg` (
  `vgid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `gname` char(60) NOT NULL DEFAULT '',
  `gids` char(255) NOT NULL DEFAULT '',
  `ingids` char(255) NOT NULL DEFAULT '',
  `agids` char(255) NOT NULL DEFAULT '',
  `mlist` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vgid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsvglist`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsvglist` (
  `vgid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `outtime` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `vgid` (`vgid`),
  KEY `userid` (`userid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsvote`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsvote` (
  `voteid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `votenum` int(10) unsigned NOT NULL DEFAULT '0',
  `voteip` mediumtext NOT NULL,
  `votetext` text NOT NULL,
  `voteclass` tinyint(1) NOT NULL DEFAULT '0',
  `doip` tinyint(1) NOT NULL DEFAULT '0',
  `votetime` int(10) unsigned NOT NULL DEFAULT '0',
  `dotime` date NOT NULL DEFAULT '0000-00-00',
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`voteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsvotemod`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsvotemod` (
  `voteid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `votetext` text NOT NULL,
  `voteclass` tinyint(1) NOT NULL DEFAULT '0',
  `doip` tinyint(1) NOT NULL DEFAULT '0',
  `dotime` date NOT NULL DEFAULT '0000-00-00',
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `votenum` int(10) unsigned NOT NULL DEFAULT '0',
  `ysvotename` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`voteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsvotetemp`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsvotetemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `swtx_enewsvotetemp`
--

INSERT INTO `swtx_enewsvotetemp` (`tempid`, `tempname`, `temptext`) VALUES
(1, '默认投票模板', '<table width=100% border=0 align=center cellpadding=3 cellspacing=0><form name=enewsvote method=POST action=''[!--vote.action--]'' target=_blank><tr><td><strong>[!--title--]</strong></td></tr><input type=hidden name=voteid value=''[!--voteid--]''><input type=hidden name=enews value=AddVote>\r\n[!--empirenews.listtemp--]\r\n<tr><td>[!--vote.box--]&nbsp;[!--vote.name--]</td></tr>\r\n[!--empirenews.listtemp--]\r\n<tr><td align=center><input type=submit name=submit value=投票>&nbsp;&nbsp;<input type=button name=button value=查看结果 onclick=javascript:window.open(''[!--vote.view--]'','''',''width=[!--width--],height=[!--height--],scrollbars=yes'');></td></tr></form></table>'),
(2, '默认信息投票模板', '<table width=\\''100%\\'' border=0 align=center cellpadding=3 cellspacing=0><form name=enewsvote method=POST action=\\''[!--news.url--]e/enews/index.php\\'' target=_blank><tr><td><strong>[!--title--]</strong></td></tr><input type=hidden name=id value=\\''[!--id--]\\''><input type=hidden name=classid value=\\''[!--classid--]\\''><input type=hidden name=enews value=AddInfoVote>\r\n[!--empirenews.listtemp--]\r\n<tr><td>[!--vote.box--]&nbsp;[!--vote.name--]</td></tr>\r\n[!--empirenews.listtemp--]\r\n<tr><td align=center><input type=submit name=submit value=投票>&nbsp;&nbsp;<input type=button name=button value=查看结果 onclick=javascript:window.open(\\''[!--news.url--]e/public/vote/?classid=[!--classid--]&id=[!--id--]\\'',\\''\\'',\\''width=[!--width--],height=[!--height--],scrollbars=yes\\'');></td></tr></form></table>');

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewswapstyle`
--

CREATE TABLE IF NOT EXISTS `swtx_enewswapstyle` (
  `styleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `stylename` varchar(60) NOT NULL DEFAULT '',
  `path` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`styleid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `swtx_enewswapstyle`
--

INSERT INTO `swtx_enewswapstyle` (`styleid`, `stylename`, `path`) VALUES
(1, '新闻模板', 1),
(2, '分类信息模板', 2);

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewswfinfo`
--

CREATE TABLE IF NOT EXISTS `swtx_enewswfinfo` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `wfid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  `groupid` text NOT NULL,
  `userclass` text NOT NULL,
  `username` text NOT NULL,
  `checknum` tinyint(4) NOT NULL DEFAULT '0',
  `tstatus` varchar(30) NOT NULL DEFAULT '0',
  `checktno` tinyint(4) NOT NULL DEFAULT '0',
  KEY `id` (`id`,`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewswfinfolog`
--

CREATE TABLE IF NOT EXISTS `swtx_enewswfinfolog` (
  `logid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `wfid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `checktime` int(10) unsigned NOT NULL DEFAULT '0',
  `checktext` text NOT NULL,
  `checknum` tinyint(4) NOT NULL DEFAULT '0',
  `checktype` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`logid`),
  KEY `id` (`id`,`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewswords`
--

CREATE TABLE IF NOT EXISTS `swtx_enewswords` (
  `wordid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `oldword` varchar(255) NOT NULL DEFAULT '',
  `newword` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`wordid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsworkflow`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsworkflow` (
  `wfid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `wfname` varchar(60) NOT NULL DEFAULT '',
  `wftext` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `adduser` varchar(30) NOT NULL DEFAULT '',
  `canedit` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsworkflowitem`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsworkflowitem` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wfid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tname` varchar(60) NOT NULL DEFAULT '',
  `tno` int(11) NOT NULL DEFAULT '0',
  `ttext` varchar(255) NOT NULL DEFAULT '',
  `groupid` text NOT NULL,
  `userclass` text NOT NULL,
  `username` text NOT NULL,
  `lztype` tinyint(1) NOT NULL DEFAULT '0',
  `tbdo` int(10) unsigned NOT NULL DEFAULT '0',
  `tddo` int(10) unsigned NOT NULL DEFAULT '0',
  `tstatus` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`tid`),
  KEY `wfid` (`wfid`),
  KEY `tno` (`tno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewswriter`
--

CREATE TABLE IF NOT EXISTS `swtx_enewswriter` (
  `wid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `writer` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`wid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsyh`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsyh` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `yhname` varchar(30) NOT NULL DEFAULT '',
  `yhtext` varchar(255) NOT NULL DEFAULT '',
  `hlist` int(11) NOT NULL DEFAULT '0',
  `qlist` int(11) NOT NULL DEFAULT '0',
  `bqnew` int(11) NOT NULL DEFAULT '0',
  `bqhot` int(11) NOT NULL DEFAULT '0',
  `bqpl` int(11) NOT NULL DEFAULT '0',
  `bqgood` int(11) NOT NULL DEFAULT '0',
  `bqfirst` int(11) NOT NULL DEFAULT '0',
  `bqdown` int(11) NOT NULL DEFAULT '0',
  `otherlink` int(11) NOT NULL DEFAULT '0',
  `qmlist` int(11) NOT NULL DEFAULT '0',
  `dobq` tinyint(1) NOT NULL DEFAULT '0',
  `dojs` tinyint(1) NOT NULL DEFAULT '0',
  `dosbq` tinyint(1) NOT NULL DEFAULT '0',
  `rehtml` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewszt`
--

CREATE TABLE IF NOT EXISTS `swtx_enewszt` (
  `ztid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `ztname` varchar(60) NOT NULL DEFAULT '',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `ztnum` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `listtempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ztpath` varchar(255) NOT NULL DEFAULT '',
  `zttype` varchar(10) NOT NULL DEFAULT '',
  `zturl` varchar(200) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `islist` tinyint(1) NOT NULL DEFAULT '0',
  `maxnum` int(11) NOT NULL DEFAULT '0',
  `reorder` varchar(50) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `ztimg` varchar(255) NOT NULL DEFAULT '',
  `zcid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `showzt` tinyint(1) NOT NULL DEFAULT '0',
  `ztpagekey` varchar(255) NOT NULL DEFAULT '',
  `classtempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `usezt` tinyint(1) NOT NULL DEFAULT '0',
  `yhid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `checkpl` tinyint(1) NOT NULL DEFAULT '0',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `usernames` varchar(255) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `pltempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ztid`),
  KEY `classid` (`classid`),
  KEY `zcid` (`zcid`),
  KEY `usezt` (`usezt`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsztadd`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsztadd` (
  `ztid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classtext` mediumtext NOT NULL,
  PRIMARY KEY (`ztid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsztclass`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsztclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsztf`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsztf` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fhtml` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `fvalue` text NOT NULL,
  `fformsize` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewsztinfo`
--

CREATE TABLE IF NOT EXISTS `swtx_enewsztinfo` (
  `zid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ztid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`zid`),
  KEY `ztid` (`ztid`),
  KEY `cid` (`cid`),
  KEY `classid` (`classid`),
  KEY `id` (`id`),
  KEY `newstime` (`newstime`),
  KEY `mid` (`mid`),
  KEY `isgood` (`isgood`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewszttype`
--

CREATE TABLE IF NOT EXISTS `swtx_enewszttype` (
  `cid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ztid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cname` varchar(20) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `islist` tinyint(1) NOT NULL DEFAULT '0',
  `listtempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `maxnum` int(10) unsigned NOT NULL DEFAULT '0',
  `tnum` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reorder` varchar(50) NOT NULL DEFAULT '',
  `ttype` varchar(10) NOT NULL DEFAULT '',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `tfile` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`cid`),
  KEY `ztid` (`ztid`),
  KEY `myorder` (`myorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swtx_enewszttypeadd`
--

CREATE TABLE IF NOT EXISTS `swtx_enewszttypeadd` (
  `cid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `classtext` mediumtext NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
