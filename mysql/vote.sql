-- Adminer 4.2.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `y_access`;
CREATE TABLE `y_access` (
  `nodes` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `y_admin`;
CREATE TABLE `y_admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `is_publish` int(1) DEFAULT '0',
  `create_time` int(11) unsigned DEFAULT '0',
  `update_time` int(11) unsigned DEFAULT '0',
  `last_login_time` int(11) unsigned DEFAULT '0',
  `login_count` int(11) unsigned DEFAULT '0',
  `username` varchar(50) DEFAULT '',
  `realname` varchar(50) DEFAULT '',
  `password` varchar(32) DEFAULT '',
  `last_login_ip` varchar(40) DEFAULT NULL,
  `email` varchar(50) DEFAULT '',
  `remark` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_admin` (`id`, `is_publish`, `create_time`, `update_time`, `last_login_time`, `login_count`, `username`, `realname`, `password`, `last_login_ip`, `email`, `remark`) VALUES
(2,	1,	1346841710,	1346841710,	1466205830,	413,	'admin',	'管理员',	'21232f297a57a5a743894a0e4a801fc3',	'127.0.0.1',	'',	'备注信息');

DROP TABLE IF EXISTS `y_advert`;
CREATE TABLE `y_advert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) unsigned DEFAULT NULL,
  `is_publish` int(1) DEFAULT '0',
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `ordernum` int(11) DEFAULT '999',
  `type` int(1) DEFAULT NULL,
  `begin_time` int(11) DEFAULT NULL,
  `end_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `hardware` varchar(255) NOT NULL DEFAULT 'pc',
  `lang` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `flash_img2` varchar(255) DEFAULT NULL,
  `flash_img1` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `net_image` varchar(255) DEFAULT NULL,
  `flash` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `code` text,
  `target` varchar(10) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `content` text,
  `my_id` int(11) NOT NULL,
  `is_top` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_advert` (`id`, `category_id`, `is_publish`, `width`, `height`, `ordernum`, `type`, `begin_time`, `end_time`, `update_time`, `create_time`, `hardware`, `lang`, `title`, `flash_img2`, `flash_img1`, `image`, `net_image`, `flash`, `url`, `code`, `target`, `tag`, `content`, `my_id`, `is_top`) VALUES
(1,	1168,	1,	NULL,	NULL,	999,	2,	1378108563,	1378108563,	1378108563,	1378108563,	'pc',	'zh-cn',	'1',	NULL,	NULL,	'522444930cab2.jpg',	'',	NULL,	'',	'',	'_top',	NULL,	'',	0,	0),
(2,	1168,	1,	NULL,	NULL,	999,	2,	1378108552,	1378108552,	1378108552,	1378108552,	'pc',	'zh-cn',	'2',	NULL,	NULL,	'52244487aff28.jpg',	'',	NULL,	'',	'',	'_top',	NULL,	'',	0,	0),
(3,	1168,	1,	NULL,	NULL,	999,	2,	1378108543,	1378108543,	1378108543,	1378108543,	'pc',	'zh-cn',	'3',	NULL,	NULL,	'5224447ec7420.jpg',	'',	NULL,	'',	'',	'_top',	NULL,	'',	0,	0),
(4,	1168,	1,	NULL,	NULL,	999,	2,	1379325161,	1379325161,	1379325161,	1379325161,	'pc',	'zh-cn',	'04',	NULL,	NULL,	'5236d4e8d0d30.jpg',	'',	NULL,	'',	'',	'_top',	NULL,	'',	0,	0);

DROP TABLE IF EXISTS `y_category`;
CREATE TABLE `y_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0',
  `is_publish` int(1) DEFAULT '1',
  `is_default` int(1) NOT NULL DEFAULT '0',
  `is_nav` int(1) NOT NULL DEFAULT '0',
  `is_comment` int(1) DEFAULT '0',
  `is_delete` int(1) DEFAULT '1',
  `is_fixed` int(1) DEFAULT '0',
  `ordernum` int(11) DEFAULT '50',
  `list_count` int(11) DEFAULT '1',
  `hardware` varchar(255) NOT NULL DEFAULT 'pc',
  `lang` varchar(10) NOT NULL,
  `levels` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '无标题',
  `image` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `module` varchar(255) NOT NULL,
  `color` varchar(10) NOT NULL,
  `burl` varchar(255) NOT NULL,
  `furl` varchar(255) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `tpl_one` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `my_id` int(11) NOT NULL,
  `is_mobile` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_category` (`id`, `pid`, `is_publish`, `is_default`, `is_nav`, `is_comment`, `is_delete`, `is_fixed`, `ordernum`, `list_count`, `hardware`, `lang`, `levels`, `title`, `image`, `alias`, `module`, `color`, `burl`, `furl`, `tag`, `tpl_one`, `description`, `my_id`, `is_mobile`) VALUES
(1511,	1505,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-cn',	'12|1505',	'蒲记装修',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1512,	1505,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-cn',	'12|1505',	'蒲记VI',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1513,	1505,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-cn',	'12|1505',	'蒲记指导店',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1516,	20,	1,	0,	0,	0,	1,	0,	49,	1,	'pc',	'zh-cn',	'12|20',	'港式经典',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(36,	12,	1,	0,	1,	0,	0,	1,	14,	1,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u6295\\u7968\\u4ecb\\u7ecd\"}}',	'',	'About',	'About',	'',	'',	'',	'',	'auto',	'',	36,	0),
(34,	30000,	0,	0,	0,	0,	0,	1,	46,	0,	'pc',	'zh-cn',	'12|30',	'邮箱设置',	'',	'Email',	'',	'',	'',	'',	'',	'',	'',	34000,	0),
(205,	27,	1,	0,	0,	0,	0,	0,	30,	2,	'pc',	'zh-cn',	'12|27',	'人才招聘',	'',	'Job/index',	'',	'',	'',	'',	'',	'list',	'',	205,	0),
(469,	22,	1,	0,	0,	0,	0,	0,	31,	6,	'pc',	'zh-cn',	'12|22',	'添加网点',	'',	'Market/index',	'',	'',	'',	'',	'',	'list',	'',	469,	1),
(1507,	1504,	1,	0,	0,	0,	1,	0,	29,	1,	'pc',	'zh-cn',	'12|1504',	'加盟流程',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1508,	1504,	1,	0,	0,	0,	1,	0,	28,	1,	'pc',	'zh-cn',	'12|1504',	'加盟方案',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(220,	21,	1,	0,	0,	0,	0,	0,	30,	-6,	'pc',	'zh-cn',	'12|21',	'回复留言',	'',	'Guestbook/view',	'',	'',	'',	'',	'',	'list',	'',	220,	1),
(499,	497,	1,	0,	0,	0,	0,	1,	3,	0,	'pc',	'zh-cn',	'12|19|497',	'置顶',	'',	'news_istop',	'',	'',	'',	'',	'',	'list',	'',	499,	0),
(498,	497,	1,	0,	0,	0,	0,	1,	4,	0,	'pc',	'zh-cn',	'12|19|497',	'首页',	'',	'news_ishome',	'',	'',	'',	'',	'',	'list',	'',	498,	0),
(22,	12,	0,	0,	0,	0,	0,	1,	11,	31,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u670d\\u52a1\\u7f51\\u70b9\"}}',	'',	'Market',	'Market',	'',	'',	'',	'',	'auto',	'',	22,	1),
(1509,	1504,	1,	0,	0,	0,	1,	0,	27,	1,	'pc',	'zh-cn',	'12|1504',	'加盟支持',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1510,	1505,	1,	0,	0,	0,	1,	0,	31,	1,	'pc',	'zh-cn',	'12|1505',	'蒲记门店',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(467,	25,	1,	0,	0,	0,	0,	1,	30,	0,	'pc',	'zh-cn',	'12|25',	'加盟申请',	'',	'Join/apply',	'',	'',	'',	'',	'',	'list',	'',	467,	0),
(12,	0,	1,	0,	0,	0,	0,	1,	50,	127,	'pc',	'zh-cn',	'',	'网站后台',	'',	'Module',	'',	'',	'',	'',	'',	'auto',	'',	12,	1),
(500,	497,	1,	0,	0,	0,	0,	1,	2,	0,	'pc',	'zh-cn',	'12|19|497',	'已发布',	'',	'news_ispublish1',	'',	'',	'',	'',	'',	'list',	'',	500,	0),
(501,	497,	1,	0,	0,	0,	0,	1,	1,	0,	'pc',	'zh-cn',	'12|19|497',	'未发布',	'',	'news_ispublish0',	'',	'',	'',	'',	'',	'list',	'',	501,	0),
(1211,	23,	1,	0,	0,	0,	1,	0,	30,	4,	'mobile',	'zh-cn',	'12|23',	'首页多图片切换',	'',	'adv/m_list',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(513,	512,	1,	0,	0,	0,	0,	1,	3,	0,	'pc',	'zh-cn',	'12|20|512',	'置顶',	'',	'goods_istop',	'',	'',	'',	'',	'',	'list',	'',	513,	0),
(514,	512,	1,	0,	0,	0,	0,	1,	4,	0,	'pc',	'zh-cn',	'12|20|512',	'首页',	'',	'goods_ishome',	'',	'',	'',	'',	'',	'list',	'',	514,	0),
(515,	512,	1,	0,	0,	0,	0,	1,	2,	0,	'pc',	'zh-cn',	'12|20|512',	'已发布',	'',	'goods_ispublish1',	'',	'',	'',	'',	'',	'list',	'',	515,	0),
(516,	512,	1,	0,	0,	0,	0,	1,	1,	0,	'pc',	'zh-cn',	'12|20|512',	'未发布',	'',	'goods_ispublish0',	'',	'',	'',	'',	'',	'list',	'',	516,	0),
(11,	0,	1,	0,	0,	0,	0,	0,	50,	0,	'pc',	'zh-cn',	'',	'多语言',	'',	'Lang',	'',	'',	'',	'',	'',	'auto',	'',	11,	0),
(26,	12,	0,	0,	0,	0,	0,	1,	0,	1,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u4e0b\\u8f7d\\u6587\\u4ef6\"}}',	'',	'Download',	'Download',	'',	'',	'',	'',	'auto',	'',	26,	1),
(37,	12,	0,	0,	0,	0,	0,	1,	0,	21,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u89c6\\u9891\\u7ba1\\u7406\"}}',	'',	'Video',	'Video',	'',	'',	'',	'',	'auto',	'',	37,	1),
(1503,	28,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'zh-cn',	'12|28',	'分公司',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(775,	35,	1,	0,	0,	0,	0,	1,	4,	0,	'pc',	'zh-cn',	'12|30|35',	'手机主题',	'',	'MobileTheme',	'',	'',	'Mobile/index',	'',	'',	'list',	'',	775,	0),
(749,	35,	1,	0,	0,	0,	0,	1,	1,	8,	'pc',	'zh-cn',	'12|30|35',	'联系方式',	'',	'MobileContact',	'',	'',	'Mobile/index',	'',	'',	'list',	'',	749,	0),
(750,	35,	1,	0,	0,	0,	0,	1,	5,	0,	'pc',	'zh-cn',	'12|30|35',	'基本信息',	'',	'MobileBase',	'',	'',	'Mobile/index',	'',	'',	'list',	'',	750,	0),
(751,	35,	1,	0,	0,	0,	0,	1,	2,	0,	'pc',	'zh-cn',	'12|30|35',	'移动SEO设置',	'',	'MobileSEO',	'',	'',	'Mobile/index',	'',	'',	'list',	'',	751,	0),
(774,	35,	1,	0,	0,	0,	0,	1,	3,	0,	'pc',	'zh-cn',	'12|30|35',	'多域名绑定',	'',	'MobileDomain',	'',	'',	'Mobile/index',	'',	'',	'list',	'',	774,	0),
(781,	4,	0,	1,	0,	0,	0,	1,	29,	0,	'mobile',	'zh-cn',	'4',	'简体',	'',	'zh-cn',	'',	'',	'',	'',	'',	'',	'',	781,	0),
(615,	469,	1,	0,	0,	0,	1,	0,	30,	10,	'pc',	'zh-cn',	'12|22|469',	'广东',	'512ade93dfa5a.jpg',	'Guangdong',	'',	'',	'',	'',	'',	'list',	'',	615,	0),
(618,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'青海',	'',	'Qinghai',	'',	'',	'',	'',	'',	'list',	'',	618,	1),
(619,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'甘肃',	'',	'Gansu',	'',	'',	'',	'',	'',	'list',	'',	619,	1),
(620,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'内蒙古',	'',	'InnerMongolia',	'',	'',	'',	'',	'',	'list',	'',	620,	1),
(621,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'宁夏',	'',	'Ningxia',	'',	'',	'',	'',	'',	'list',	'',	621,	1),
(622,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'陕西',	'',	'Shanxi',	'',	'',	'',	'',	'',	'list',	'',	622,	0),
(623,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'山西',	'',	'Shanxi2',	'',	'',	'',	'',	'',	'list',	'',	623,	0),
(624,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'河北',	'',	'Hebei',	'',	'',	'',	'',	'',	'list',	'',	624,	0),
(625,	469,	1,	0,	0,	0,	1,	0,	30,	4,	'pc',	'zh-cn',	'12|22|469',	'北京',	'',	'Beijing',	'',	'',	'',	'',	'',	'list',	'',	625,	0),
(626,	469,	1,	0,	0,	0,	1,	0,	30,	3,	'pc',	'zh-cn',	'12|22|469',	'天津',	'',	'Tianjin',	'',	'',	'',	'',	'',	'list',	'',	626,	0),
(627,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'辽宁',	'',	'Liaoning',	'',	'',	'',	'',	'',	'list',	'',	627,	0),
(628,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'吉林',	'',	'Jilin',	'',	'',	'',	'',	'',	'list',	'',	628,	0),
(629,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'黑龙江',	'',	'Heilongjiang',	'',	'',	'',	'',	'',	'list',	'',	629,	0),
(630,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'山东',	'',	'Shandong',	'',	'',	'',	'',	'',	'list',	'',	630,	0),
(631,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'河南',	'',	'Henan',	'',	'',	'',	'',	'',	'list',	'',	631,	0),
(632,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'云南',	'',	'Yunnan',	'',	'',	'',	'',	'',	'list',	'',	632,	0),
(633,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'广西',	'',	'Guangxi',	'',	'',	'',	'',	'',	'list',	'',	633,	0),
(634,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'海南',	'',	'Hainan',	'',	'',	'',	'',	'',	'list',	'',	634,	0),
(635,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'湖南',	'',	'Hunan',	'',	'',	'',	'',	'',	'list',	'',	635,	0),
(636,	469,	1,	0,	0,	0,	1,	0,	30,	3,	'pc',	'zh-cn',	'12|22|469',	'重庆',	'',	'Chongqing',	'',	'',	'',	'',	'',	'list',	'',	636,	0),
(637,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'安徽',	'',	'Anhui',	'',	'',	'',	'',	'',	'list',	'',	637,	0),
(638,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'江苏',	'',	'Jiangsu',	'',	'',	'',	'',	'',	'list',	'',	638,	0),
(639,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'上海',	'',	'Shanghai',	'',	'',	'',	'',	'',	'list',	'',	639,	0),
(640,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'台湾',	'',	'Taiwan',	'',	'',	'',	'',	'',	'list',	'',	640,	0),
(641,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'贵州',	'',	'Guizhou',	'',	'',	'',	'',	'',	'list',	'',	641,	0),
(642,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'湖北',	'',	'Hubei',	'',	'',	'',	'',	'',	'list',	'',	642,	0),
(643,	469,	1,	0,	0,	0,	1,	0,	30,	3,	'pc',	'zh-cn',	'12|22|469',	'四川',	'',	'Sichuan',	'',	'',	'',	'',	'',	'list',	'',	643,	0),
(644,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'福建',	'',	'Fujian',	'',	'',	'',	'',	'',	'list',	'',	644,	0),
(645,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'江西',	'',	'Jiangxi',	'',	'',	'',	'',	'',	'list',	'',	645,	0),
(17,	3,	1,	1,	0,	0,	0,	1,	29,	0,	'pc',	'zh-cn',	'3',	'简体',	'',	'zh-cn',	'',	'',	'',	'',	'',	'',	'',	17,	0),
(18,	3,	0,	0,	0,	0,	0,	1,	27,	0,	'pc',	'en-us',	'3',	'英文',	'',	'en-us',	'',	'',	'',	'',	'',	'',	'',	18,	0),
(428,	3,	0,	0,	0,	0,	0,	1,	28,	0,	'pc',	'zh-tw',	'3',	'繁体',	'',	'zh-tw',	'',	'',	'',	'',	'',	'',	'',	428,	0),
(429,	3,	0,	0,	0,	0,	0,	1,	26,	0,	'pc',	'ja-jp',	'3',	'日文',	'',	'ja-jp',	'',	'',	'',	'',	'',	'',	'',	429,	0),
(430,	3,	0,	0,	0,	0,	0,	1,	25,	0,	'pc',	'ko-kr',	'3',	'韩文',	'',	'ko-kr',	'',	'',	'',	'',	'',	'',	'',	430,	0),
(1191,	37,	1,	0,	0,	0,	1,	0,	30,	2,	'pc',	'zh-cn',	'12|37',	'视频列表',	'',	'Video/Index',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1168,	23,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|23',	'首页多图片切换',	'',	'index/adList',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1207,	19,	1,	0,	0,	0,	1,	0,	30,	3,	'mobile',	'zh-cn',	'12|19',	'最新活动',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1169,	24,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|24',	'客服列表',	'',	'Link/info',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1171,	36,	0,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|36',	'蒲记前景',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1175,	19,	1,	0,	0,	0,	1,	0,	30,	-4,	'pc',	'zh-cn',	'12|19',	'公司动态',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1176,	19,	1,	0,	0,	0,	1,	0,	30,	2,	'pc',	'zh-cn',	'12|19',	'媒体报道',	'',	'News/company',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1506,	1504,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-cn',	'12|1504',	'加盟条件',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1198,	36,	1,	0,	0,	0,	1,	0,	30,	0,	'mobile',	'zh-cn',	'12|36',	'公司简介',	'',	'About/introduction',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1238,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'zh-cn',	'12|36',	'经营理念',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1208,	19,	1,	0,	0,	0,	1,	0,	30,	3,	'mobile',	'zh-cn',	'12|19',	'公司新闻',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1209,	19,	1,	0,	0,	0,	1,	0,	30,	10,	'mobile',	'zh-cn',	'12|19',	'行业资讯',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1212,	22,	1,	0,	0,	0,	1,	0,	30,	25,	'mobile',	'zh-cn',	'12|22',	'添加网点',	'',	'Market/index',	'',	'',	'',	'',	'',	'auto',	'',	0,	0),
(1213,	1212,	1,	0,	0,	0,	1,	0,	30,	6,	'mobile',	'zh-cn',	'12|22|1212',	'广州分公司',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1214,	1212,	1,	0,	0,	0,	1,	0,	30,	6,	'mobile',	'zh-cn',	'12|22|1212',	'东莞分公司',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1215,	1212,	1,	0,	0,	0,	1,	0,	30,	5,	'mobile',	'zh-cn',	'12|22|1212',	'北京分公司',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1217,	27,	1,	0,	0,	0,	1,	0,	30,	7,	'mobile',	'zh-cn',	'12|27',	'人才招聘',	'',	'Job/index',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1218,	37,	1,	0,	0,	0,	1,	0,	30,	0,	'mobile',	'zh-cn',	'12|37',	'视频列表',	'',	'Video/Index',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1223,	21,	1,	0,	0,	0,	1,	0,	30,	-2,	'mobile',	'zh-cn',	'12|21',	'回复留言',	'',	'Guestbook/view',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1225,	1223,	1,	0,	0,	0,	1,	0,	30,	-3,	'mobile',	'zh-cn',	'12|21|1223',	'反馈',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1226,	1223,	1,	0,	0,	0,	1,	0,	30,	0,	'mobile',	'zh-cn',	'12|21|1223',	'建议',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1227,	1223,	1,	0,	0,	0,	1,	0,	30,	0,	'mobile',	'zh-cn',	'12|21|1223',	'咨询',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1253,	20,	1,	0,	0,	0,	1,	0,	30,	6,	'mobile',	'zh-cn',	'12|20',	'LED筒灯',	'',	'',	'',	'',	'',	'',	'',	'list',	'LED筒灯',	0,	0),
(1232,	25,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|25',	'加盟信息',	'',	'Join/index',	'',	'',	'',	'',	'',	'auto',	'',	0,	0),
(1233,	1232,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|25|1232',	'加盟支持',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1234,	1232,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|25|1232',	'加盟优势',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1235,	1232,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|25|1232',	'投资前景',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1515,	20,	1,	0,	0,	0,	1,	0,	50,	1,	'pc',	'zh-cn',	'12|20',	'白雪系列',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1237,	23,	1,	0,	0,	0,	1,	0,	30,	3,	'mobile',	'zh-cn',	'12|23',	'首页列表图片',	'',	'indexad/list',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1239,	1212,	1,	0,	0,	0,	1,	0,	30,	4,	'mobile',	'zh-cn',	'12|22|1212',	'深圳分公司',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1261,	36,	1,	0,	0,	0,	1,	0,	30,	0,	'mobile',	'zh-cn',	'12|36',	'荣誉资质',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1242,	28,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|28',	'电子地图',	'',	'Contact/map',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1251,	20,	1,	0,	0,	0,	1,	0,	30,	8,	'mobile',	'zh-cn',	'12|20',	'LED球泡灯',	'',	'',	'',	'',	'',	'',	'',	'list',	'LED球泡灯',	0,	0),
(1249,	20,	1,	0,	0,	0,	1,	0,	30,	4,	'mobile',	'zh-cn',	'12|20',	'LED日光管',	'',	'',	'',	'',	'',	'',	'',	'list',	'LED日光管',	0,	0),
(1255,	20,	1,	0,	0,	0,	1,	0,	30,	0,	'mobile',	'zh-cn',	'12|20',	'LED天花灯',	'',	'',	'',	'',	'',	'',	'',	'list',	'LED天花灯',	0,	0),
(1257,	20,	1,	0,	0,	0,	1,	0,	30,	0,	'mobile',	'zh-cn',	'12|20',	'LED豆胆灯',	'',	'',	'',	'',	'',	'',	'',	'list',	'LED豆胆灯',	0,	0),
(25,	12,	0,	0,	0,	0,	0,	1,	0,	0,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u5728\\u7ebf\\u52a0\\u76df\"},\"zh-tw\":{\"title\":\"\\u5728\\u7dda\\u52a0\\u76df\"},\"en-us\":{\"title\":\"Joinin\"},\"ja-jp\":{\"title\":\"\\u30aa\\u30f3\\u30e9\\u30a4\\u30f3\\u306e\\u52a0\\u76df\"},\"ko-kr\":{\"title\":\"\\uc628\\ub77c\\uc778 \\uc5d0 \\uc785\\ub2e8\"}}',	'',	'Joinin',	'Joinin',	'',	'',	'',	'',	'auto',	'',	25,	1),
(1262,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'新疆',	'',	'Xinjiang',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1263,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'西藏',	'',	'Tibet',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1264,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'浙江',	'',	'Zhejiang',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1,	0,	1,	0,	0,	0,	0,	0,	0,	0,	'',	'',	'',	'终端',	'',	'Hardware',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(3,	1,	1,	0,	0,	0,	0,	0,	0,	0,	'',	'',	'',	'电脑版',	'',	'pc',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(4,	1,	1,	0,	0,	0,	0,	0,	0,	0,	'',	'',	'',	'手机版',	'',	'mobile',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(27,	12,	0,	0,	0,	0,	0,	1,	10,	9,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u4eba\\u624d\\u62db\\u8058\"}}',	'',	'Job',	'Job',	'',	'',	'',	'',	'auto',	'',	27,	1),
(29,	12,	0,	0,	0,	0,	1,	0,	7,	1,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u4f01\\u4e1a\\u5fae\\u535a\"}}',	'',	'Weibo',	'About',	'',	'System/index/cid/tertiarycode',	'',	'',	'auto',	'',	0,	0),
(1391,	4,	0,	0,	0,	0,	1,	0,	28,	1,	'mobile',	'zh-tw',	'4',	'繁体',	'',	'zh-tw',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1392,	4,	0,	0,	0,	0,	1,	0,	27,	1,	'mobile',	'en-us',	'4',	'英文',	'',	'en-us',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1393,	4,	0,	0,	0,	0,	1,	0,	26,	1,	'mobile',	'ja-jp',	'4',	'日文',	'',	'ja-jp',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1394,	4,	0,	0,	0,	0,	1,	0,	25,	1,	'mobile',	'ko-kr',	'4',	'韩文',	'',	'ko-kr',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1395,	28,	1,	0,	0,	0,	1,	0,	31,	1,	'pc',	'zh-cn',	'12|28',	'联系方式',	'',	'Contact/mode',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1397,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'en-us',	'12|36',	'Company',	'',	'About/indexInfo',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1398,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'en-us',	'12|36',	'Honors',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1399,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'en-us',	'12|19',	'Company News',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1400,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'en-us',	'12|19',	'Industry News',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1401,	20,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'en-us',	'12|20',	'Category1',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1402,	20,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'en-us',	'12|20',	'Category2',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1403,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-tw',	'12|36',	'公司簡介',	'',	'About/indexInfo',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1404,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-tw',	'12|36',	'經營理念',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1405,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-tw',	'12|36',	'榮譽資質',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1406,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-tw',	'12|19',	'最新活動',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1407,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-tw',	'12|19',	'公司新聞',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1408,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-tw',	'12|19',	'公司新聞',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1409,	20,	1,	0,	0,	0,	1,	0,	50,	1,	'pc',	'zh-tw',	'12|20',	'LED筒燈',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1410,	0,	1,	0,	0,	0,	1,	0,	50,	1,	'pc',	'',	'',	'无标题',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1411,	20,	1,	0,	0,	0,	1,	0,	50,	1,	'pc',	'zh-tw',	'12|20',	'LED球泡燈',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1412,	20,	1,	0,	0,	0,	1,	0,	50,	1,	'pc',	'zh-tw',	'12|20',	'LED日光管',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1413,	20,	1,	0,	0,	0,	1,	0,	50,	1,	'pc',	'zh-tw',	'12|20',	'LED天花燈',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1414,	20,	1,	0,	0,	0,	1,	0,	50,	1,	'pc',	'zh-tw',	'12|20',	'LED豆膽燈',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1415,	28,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-tw',	'12|28',	'電子地圖',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1416,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ja-jp',	'12|36',	'会社の概要',	'',	'About/indexInfo',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1417,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ja-jp',	'12|36',	'ビジネス哲学',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1418,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ja-jp',	'12|36',	'優等',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1419,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ja-jp',	'12|19',	'活動',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1420,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ja-jp',	'12|19',	'企業ニュース',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1421,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ja-jp',	'12|19',	'ニュース',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1422,	20,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ja-jp',	'12|20',	'製品カテゴリ',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1423,	20,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ja-jp',	'12|20',	'製品カテゴリ',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1424,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-tw',	'12|23',	'首頁多圖片切換',	'',	'index/adList',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1425,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-tw',	'12|23',	'內頁圖片廣告',	'',	'Inside/ad',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1426,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'en-us',	'12|23',	'home banner ',	'',	'index/adList',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1427,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'en-us',	'12|23',	'page ads',	'',	'Inside/ad',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1428,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ja-jp',	'12|23',	'ホーム広告',	'',	'index/adList',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1429,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ja-jp',	'12|23',	'広告のページの中の',	'',	'Inside/ad',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1430,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ko-kr',	'12|23',	'홈 스위치',	'',	'index/adList',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1431,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ko-kr',	'12|23',	'광고 페이지 내에',	'',	'Inside/ad',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1432,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ko-kr',	'12|36',	'회사 소개',	'',	'About/indexInfo',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1433,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ko-kr',	'12|36',	'경영 철학',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1434,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ko-kr',	'12|36',	'영예',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1435,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ko-kr',	'12|19',	'회사 소개',	'',	'News/company',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1436,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ko-kr',	'12|19',	'경영 철학',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1437,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ko-kr',	'12|19',	'영예',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1438,	27,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'en-us',	'12|27',	'Job',	'',	'Job/index',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1439,	27,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ko-kr',	'12|27',	'신병 모집',	'',	'Job/index',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1440,	27,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ja-jp',	'12|27',	'募集',	'',	'Job/index',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1441,	27,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-tw',	'12|27',	'人才招聘',	'',	'Job/index',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1442,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'zh-tw',	'12|23',	'首頁多圖片切換',	'',	'adv/m_list',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1443,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'zh-tw',	'12|23',	'首頁列表圖片',	'',	'indexad/list',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1444,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'en-us',	'12|23',	'home banner',	'',	'adv/m_list',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1445,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'en-us',	'12|23',	'Page ads',	'',	'indexad/list',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1446,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ja-jp',	'12|23',	'ホーム広告',	'',	'adv/m_list',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1447,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ja-jp',	'12|23',	'広告のページの中の',	'',	'indexad/list',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1448,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ko-kr',	'12|23',	'광고 페이지 내에',	'',	'indexad/list',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1449,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ko-kr',	'12|23',	'홈 스위치',	'',	'adv/m_list',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1450,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'zh-tw',	'12|36',	'公司簡介',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1451,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'zh-tw',	'12|36',	'經營理念',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1452,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'zh-tw',	'12|36',	'榮譽資質',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1453,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'en-us',	'12|36',	'Company',	'',	'About/introduction',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1454,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'en-us',	'12|36',	'Honors',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1455,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ja-jp',	'12|36',	'会社の概要',	'',	'About/introduction',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1456,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ja-jp',	'12|36',	'ビジネス哲学',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1457,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ko-kr',	'12|36',	'회사 소개',	'',	'About/introduction',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1458,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ko-kr',	'12|36',	'경영 철학',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1459,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ko-kr',	'12|36',	'영예',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1460,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'zh-tw',	'12|19',	'最新活動',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1461,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'zh-tw',	'12|19',	'公司新聞',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1462,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'zh-tw',	'12|19',	'公司新聞',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1463,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'en-us',	'12|19',	'Company News',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1464,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'en-us',	'12|19',	' Industry News',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1465,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ja-jp',	'12|19',	'活動',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1466,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ja-jp',	'12|19',	'企業ニュース',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1467,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ja-jp',	'12|19',	'ニュース',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1468,	20,	1,	0,	0,	0,	1,	0,	50,	1,	'mobile',	'zh-tw',	'12|20',	'LED筒燈',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1469,	20,	1,	0,	0,	0,	1,	0,	50,	1,	'mobile',	'zh-tw',	'12|20',	'LED球泡燈',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1470,	20,	1,	0,	0,	0,	1,	0,	50,	1,	'mobile',	'zh-tw',	'12|20',	'LED日光管',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1471,	20,	1,	0,	0,	0,	1,	0,	50,	1,	'mobile',	'zh-tw',	'12|20',	'LED天花燈',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1472,	20,	1,	0,	0,	0,	1,	0,	50,	1,	'mobile',	'zh-tw',	'12|20',	'LED豆膽燈',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1473,	20,	1,	0,	0,	0,	1,	0,	50,	1,	'mobile',	'en-us',	'12|20',	' Category1',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1474,	20,	1,	0,	0,	0,	1,	0,	50,	1,	'mobile',	'en-us',	'12|20',	'Category2',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1475,	20,	1,	0,	0,	0,	1,	0,	50,	1,	'mobile',	'ja-jp',	'12|20',	'製品カテゴリ',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1476,	20,	1,	0,	0,	0,	1,	0,	50,	1,	'mobile',	'ja-jp',	'12|20',	' 製品カテゴリ',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1477,	20,	1,	0,	0,	0,	1,	0,	50,	1,	'mobile',	'ko-kr',	'12|20',	'LED 전구',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1478,	20,	1,	0,	0,	0,	1,	0,	50,	1,	'mobile',	'ko-kr',	'12|20',	'LED 형광등',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1479,	20,	1,	0,	0,	0,	1,	0,	50,	1,	'mobile',	'ko-kr',	'12|20',	'LED 천장',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1480,	27,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'zh-tw',	'12|27',	'人才招聘',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1481,	27,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'en-us',	'12|27',	'Job',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1482,	27,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ja-jp',	'12|27',	'募集',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1483,	27,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ko-kr',	'12|27',	'신병 모집',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1490,	20,	1,	0,	0,	0,	1,	0,	50,	1,	'pc',	'ko-kr',	'12|20',	'LED 전구',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1491,	22,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ja-jp',	'12|22',	'ブランチ',	'',	'Market/index',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1492,	22,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ko-kr',	'12|22',	'지사',	'',	'Market/index',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1493,	22,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'en-us',	'12|22',	'Branch',	'',	'Market/index',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1495,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ko-kr',	'12|19',	'활동',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1498,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ko-kr',	'12|19',	'기업 뉴스',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1497,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ko-kr',	'12|19',	'뉴스',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1517,	20,	1,	0,	0,	0,	1,	0,	48,	1,	'pc',	'zh-cn',	'12|20',	'糕点系列',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1518,	20,	1,	0,	0,	0,	1,	0,	47,	1,	'pc',	'zh-cn',	'12|20',	'冷热炖品系列',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1519,	20,	1,	0,	0,	0,	1,	0,	46,	1,	'pc',	'zh-cn',	'12|20',	'凉粉系列',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1520,	20,	1,	0,	0,	0,	1,	0,	45,	1,	'pc',	'zh-cn',	'12|20',	'汤丸系列(热)',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1521,	20,	1,	0,	0,	0,	1,	0,	44,	1,	'pc',	'zh-cn',	'12|20',	'西米系列',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1522,	20,	1,	0,	0,	0,	1,	0,	43,	1,	'pc',	'zh-cn',	'12|20',	'小丸子系列',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1523,	20,	1,	0,	0,	0,	1,	0,	42,	1,	'pc',	'zh-cn',	'12|20',	'雪山系列',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1524,	20,	1,	0,	0,	0,	1,	0,	41,	1,	'pc',	'zh-cn',	'12|20',	'饮品系列',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1525,	20,	1,	0,	0,	0,	1,	0,	40,	1,	'pc',	'zh-cn',	'12|20',	'中式精选搭配',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1526,	20,	1,	0,	0,	0,	1,	0,	39,	1,	'pc',	'zh-cn',	'12|20',	'中式糖水(冷热)',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1527,	20,	1,	0,	0,	0,	1,	0,	51,	1,	'pc',	'zh-cn',	'12|20',	'蒲记新品',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1528,	36,	1,	0,	0,	0,	1,	0,	31,	1,	'pc',	'zh-cn',	'12|36',	'投票介绍',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1531,	1530,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-cn',	'12|1530',	'投票作品',	'',	'',	'',	'',	'__APP__/Admin/Vote/index',	'',	'',	'list',	'',	0,	0);

DROP TABLE IF EXISTS `y_city`;
CREATE TABLE `y_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_city` (`id`, `title`) VALUES
(1,	'广州'),
(2,	'香港'),
(3,	'其他');

DROP TABLE IF EXISTS `y_comment`;
CREATE TABLE `y_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `create_time` int(11) DEFAULT NULL,
  `reply` text,
  `reply_time` int(11) DEFAULT NULL,
  `my_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `y_group`;
CREATE TABLE `y_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_group` (`id`, `title`) VALUES
(1,	'A组(小学1-3年级)'),
(2,	'B组(小学4-6年级)');

DROP TABLE IF EXISTS `y_news`;
CREATE TABLE `y_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) unsigned NOT NULL,
  `is_publish` int(1) DEFAULT '0',
  `is_comment` int(1) DEFAULT '0',
  `is_top` int(1) DEFAULT '0',
  `is_home` int(1) DEFAULT '0',
  `click_count` int(11) DEFAULT '1',
  `ordernum` int(11) DEFAULT '999',
  `update_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `hardware` varchar(255) NOT NULL DEFAULT 'pc',
  `lang` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_keywords` varchar(255) DEFAULT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `content` text,
  `my_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_news` (`id`, `category_id`, `is_publish`, `is_comment`, `is_top`, `is_home`, `click_count`, `ordernum`, `update_time`, `create_time`, `hardware`, `lang`, `title`, `tag`, `image`, `author`, `source`, `summary`, `seo_title`, `seo_keywords`, `seo_description`, `content`, `my_id`) VALUES
(1,	1528,	1,	0,	0,	0,	1,	999,	1466206799,	1466206799,	'pc',	'zh-cn',	'投票介绍',	NULL,	NULL,	NULL,	NULL,	'',	'',	'',	'',	'&lt;p&gt;&lt;span style=&quot;color: rgb(0, 130, 0); font-family: 宋体, Verdana, Arial, Helvetica, sans-serif; font-size: 12px;  background-color: rgb(254, 254, 254);&quot;&gt;投票介绍&lt;/span&gt;&lt;/p&gt;',	NULL);

DROP TABLE IF EXISTS `y_system`;
CREATE TABLE `y_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(255) DEFAULT NULL,
  `hardware` varchar(255) NOT NULL DEFAULT 'pc',
  `lang` varchar(255) DEFAULT NULL,
  `linkman` varchar(255) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `app_logo` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `copyright` varchar(50) DEFAULT NULL,
  `credible` varchar(255) DEFAULT NULL,
  `icpnumber` varchar(255) DEFAULT NULL,
  `seo_title` varchar(100) DEFAULT NULL,
  `seo_keywords` varchar(255) DEFAULT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `email_smtp_host` varchar(20) DEFAULT NULL,
  `email_smtp_port` varchar(10) DEFAULT NULL,
  `email_username` varchar(20) DEFAULT NULL,
  `email_password` varchar(20) DEFAULT NULL,
  `email_subject` varchar(255) DEFAULT NULL,
  `email_address` varchar(50) DEFAULT NULL,
  `email_auto` varchar(50) DEFAULT NULL,
  `is_twoCode` int(11) DEFAULT '1',
  `my_id` int(11) DEFAULT NULL,
  `sina_wb_url` varchar(255) DEFAULT NULL,
  `qq_wb_url` varchar(255) DEFAULT NULL,
  `weibo_type` int(11) DEFAULT NULL,
  `is_share` int(11) DEFAULT NULL,
  `share_plug` text,
  `weibo_plug` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_system` (`id`, `theme`, `hardware`, `lang`, `linkman`, `company`, `telephone`, `fax`, `postcode`, `address`, `image`, `app_logo`, `email`, `website`, `domain`, `copyright`, `credible`, `icpnumber`, `seo_title`, `seo_keywords`, `seo_description`, `email_smtp_host`, `email_smtp_port`, `email_username`, `email_password`, `email_subject`, `email_address`, `email_auto`, `is_twoCode`, `my_id`, `sina_wb_url`, `qq_wb_url`, `weibo_type`, `is_share`, `share_plug`, `weibo_plug`) VALUES
(1,	NULL,	'pc',	'zh-cn',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'',	'',	'',	'',	'',	'',	'',	'',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL);

DROP TABLE IF EXISTS `y_type`;
CREATE TABLE `y_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_type` (`id`, `title`) VALUES
(1,	'书法'),
(2,	'中国画'),
(3,	'其他画种');

DROP TABLE IF EXISTS `y_vote`;
CREATE TABLE `y_vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vid` int(11) NOT NULL COMMENT '投票的id',
  `phone` varchar(255) NOT NULL COMMENT '手机号码',
  `ip` varchar(255) NOT NULL COMMENT '客户IP地址防止刷',
  `addTime` int(11) NOT NULL COMMENT '记录时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_vote` (`id`, `vid`, `phone`, `ip`, `addTime`) VALUES
(1,	3,	'13660236632',	'127.0.0.1',	1466180685);

DROP TABLE IF EXISTS `y_vote_option`;
CREATE TABLE `y_vote_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group` int(11) NOT NULL COMMENT '选择的组',
  `type` int(11) NOT NULL COMMENT '类型',
  `title` varchar(255) NOT NULL COMMENT '作品名称',
  `name` varchar(255) NOT NULL COMMENT '作者名称',
  `age` int(11) NOT NULL COMMENT '年龄',
  `city` int(11) NOT NULL,
  `teacher` varchar(255) NOT NULL COMMENT '指导老师',
  `entry_mame` varchar(255) NOT NULL COMMENT '参赛单位名称',
  `guardian` varchar(255) NOT NULL COMMENT '作者监护人',
  `relation` varchar(255) NOT NULL COMMENT '与作者关系',
  `phone` varchar(255) NOT NULL COMMENT '联系电话',
  `address` text NOT NULL COMMENT '联系地址',
  `email` varchar(255) NOT NULL COMMENT '监护人邮箱',
  `author_avatar` varchar(255) NOT NULL COMMENT '作者头像',
  `works_2` varchar(255) NOT NULL COMMENT '作品2',
  `works_2_w` varchar(255) NOT NULL,
  `works_2_h` varchar(255) NOT NULL,
  `works_1` varchar(255) NOT NULL COMMENT '作品1',
  `works_1_w` varchar(255) NOT NULL,
  `works_1_h` varchar(255) NOT NULL,
  `vote_num` int(11) NOT NULL DEFAULT '0' COMMENT '投票记录',
  `addTime` int(11) NOT NULL COMMENT '添加的时间',
  `isFinalist` int(11) NOT NULL DEFAULT '0' COMMENT '是否入围',
  `isAwards` int(11) NOT NULL DEFAULT '0' COMMENT '是否获奖',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_vote_option` (`id`, `group`, `type`, `title`, `name`, `age`, `city`, `teacher`, `entry_mame`, `guardian`, `relation`, `phone`, `address`, `email`, `author_avatar`, `works_2`, `works_2_w`, `works_2_h`, `works_1`, `works_1_w`, `works_1_h`, `vote_num`, `addTime`, `isFinalist`, `isAwards`) VALUES
(3,	2,	1,	'作品名称r',	'作者名称',	88,	2,	'指导老师',	'参赛单位名称',	'作者监护人',	'与作者关系',	'13660263365',	'地址',	'8888@qq.com',	'20160617/1466156944.png',	'20160617/1466156956.png',	'777',	'6666',	'20160617/1466156947.png',	'888',	'999',	6,	1466158540,	0,	0),
(4,	2,	1,	'作品名称r',	'作者名称',	88,	2,	'指导老师',	'参赛单位名称',	'作者监护人',	'与作者关系',	'13660263362',	'地址',	'8888@qq.com',	'20160617/1466156944.png',	'20160617/1466156956.png',	'777',	'6666',	'20160617/1466156947.png',	'888',	'999',	4,	1466158746,	0,	0),
(5,	1,	1,	'作品名称',	'作者名称',	88,	2,	'指导老师',	'单位名称',	'监护人',	'父子',	'13662256652',	'广东',	'88881@qq.com',	'20160617/1466178209.png',	'',	'',	'',	'20160617/1466178230.png',	'888',	'999',	4,	1466178276,	1,	0);

-- 2016-06-18 00:40:51
