/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50602
Source Host           : 127.0.0.1:3306
Source Database       : gcms

Target Server Type    : MYSQL
Target Server Version : 50602
File Encoding         : 65001

Date: 2013-10-01 22:50:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `api_key`
-- ----------------------------
DROP TABLE IF EXISTS `api_key`;
CREATE TABLE `api_key` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of api_key
-- ----------------------------

-- ----------------------------
-- Table structure for `api_log`
-- ----------------------------
DROP TABLE IF EXISTS `api_log`;
CREATE TABLE `api_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `date_log` datetime DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL,
  `authorized` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of api_log
-- ----------------------------

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id_article` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `author` varchar(55) DEFAULT NULL,
  `updater` varchar(55) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_on` datetime NOT NULL,
  `publish_off` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL,
  `logical_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `indexed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `id_category` int(11) unsigned DEFAULT NULL,
  `comment_allow` char(1) DEFAULT '0',
  `comment_autovalid` char(1) DEFAULT '0',
  `comment_expire` datetime DEFAULT NULL,
  `flag` smallint(1) DEFAULT '0',
  `has_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_article`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '404', 'demo', 'demo', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-10 09:18:48', '0000-00-00 00:00:00', '0', null, '0', '0', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `article` VALUES ('4', 'welcome-to-ionize', 'demo', 'demo', '2012-11-17 12:48:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-11-20 17:05:20', '0000-00-00 00:00:00', '0', null, '0', '0', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `article` VALUES ('5', 'article-1', 'demo', 'demo', '2012-11-17 13:58:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 15:47:36', '0000-00-00 00:00:00', '1', null, '0', '0', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `article` VALUES ('6', 'article-2', 'demo', 'demo', '2012-11-17 13:58:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 15:47:57', '0000-00-00 00:00:00', '1', null, '0', '0', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `article` VALUES ('7', 'article-3', 'demo', 'demo', '2012-11-17 13:59:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 15:52:39', '0000-00-00 00:00:00', '1', null, '0', '0', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `article` VALUES ('8', 'article-4', 'demo', 'demo', '2012-11-17 13:59:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 15:52:46', '0000-00-00 00:00:00', '1', null, '0', '0', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `article` VALUES ('9', 'article-5', 'demo', 'demo', '2012-11-17 14:10:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 15:52:52', '0000-00-00 00:00:00', '1', null, '0', '0', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `article` VALUES ('10', 'article-6', 'demo', 'demo', '2012-11-17 14:17:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 15:52:58', '0000-00-00 00:00:00', '1', null, '0', '0', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `article` VALUES ('11', 'easy-edition', 'demo', 'demo', '2012-11-21 10:44:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-11-21 10:44:50', '0000-00-00 00:00:00', '0', null, '0', '0', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `article` VALUES ('12', 'multilingual', 'demo', 'demo', '2012-11-21 10:46:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-11-21 10:46:28', '0000-00-00 00:00:00', '0', null, '0', '0', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `article` VALUES ('13', 'userfriendly', 'demo', 'demo', '2012-11-21 10:46:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-11-21 10:46:50', '0000-00-00 00:00:00', '0', null, '0', '0', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `article` VALUES ('14', 'template-system', 'demo', 'demo', '2012-11-21 10:47:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-06 11:20:03', '0000-00-00 00:00:00', '0', null, '0', '0', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `article` VALUES ('15', 'about-us', 'demo', 'demo', '2012-11-21 11:42:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-27 01:15:33', '0000-00-00 00:00:00', '0', null, '0', '0', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `article` VALUES ('16', 'footer-resources', 'demo', 'demo', '2012-11-21 11:52:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 16:33:05', '0000-00-00 00:00:00', '0', null, '0', '0', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `article` VALUES ('17', 'service-1', 'demo', 'demo', '2012-12-06 14:34:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-27 01:15:00', '0000-00-00 00:00:00', '0', null, '0', '0', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `article` VALUES ('18', 'service-2', 'demo', 'demo', '2012-12-06 14:38:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 17:00:37', '0000-00-00 00:00:00', '0', null, '0', '0', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `article` VALUES ('19', 'service-3', 'demo', 'demo', '2012-12-06 14:38:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 17:00:47', '0000-00-00 00:00:00', '0', null, '0', '0', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `article` VALUES ('20', 'service-4', 'demo', 'demo', '2012-12-06 14:39:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 17:00:54', '0000-00-00 00:00:00', '0', null, '0', '0', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `article` VALUES ('24', 'contact-informations', 'demo', 'demo', '2012-12-07 10:01:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 14:39:02', '0000-00-00 00:00:00', '0', null, '0', '0', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `article` VALUES ('26', 'our-location', 'demo', 'demo', '2012-12-07 10:07:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 20:04:28', '0000-00-00 00:00:00', '0', null, '0', '0', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `article` VALUES ('27', 'whats-ionize', 'demo', 'demo', '2012-12-21 16:27:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 16:27:54', '0000-00-00 00:00:00', '0', null, '0', '0', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `article` VALUES ('28', 'can-i-help', 'demo', 'demo', '2012-12-21 16:30:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 16:30:10', '0000-00-00 00:00:00', '0', null, '0', '0', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `article` VALUES ('29', 'send-us-a-message', 'demo', 'demo', '2012-12-21 17:04:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 17:04:43', '0000-00-00 00:00:00', '0', null, '0', '0', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `article` VALUES ('30', 'not-logged-in', 'demo', 'demo', '2012-12-22 10:54:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-22 10:54:43', '0000-00-00 00:00:00', '0', null, '0', '0', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `article` VALUES ('31', 'hello', 'demo', 'demo', '2012-12-22 11:15:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-22 11:42:04', '0000-00-00 00:00:00', '0', null, '0', '0', '0000-00-00 00:00:00', '0', '1');

-- ----------------------------
-- Table structure for `article_category`
-- ----------------------------
DROP TABLE IF EXISTS `article_category`;
CREATE TABLE `article_category` (
  `id_article` int(11) unsigned NOT NULL,
  `id_category` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_category
-- ----------------------------
INSERT INTO `article_category` VALUES ('4', '1');
INSERT INTO `article_category` VALUES ('5', '1');
INSERT INTO `article_category` VALUES ('5', '2');
INSERT INTO `article_category` VALUES ('6', '2');

-- ----------------------------
-- Table structure for `article_comment`
-- ----------------------------
DROP TABLE IF EXISTS `article_comment`;
CREATE TABLE `article_comment` (
  `id_article_comment` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_article` int(11) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `content` text,
  `ip` varchar(40) DEFAULT NULL,
  `status` tinyint(3) unsigned DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `admin` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'If comment comes from admin, set to 1',
  PRIMARY KEY (`id_article_comment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `article_lang`
-- ----------------------------
DROP TABLE IF EXISTS `article_lang`;
CREATE TABLE `article_lang` (
  `id_article` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(3) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `content` longtext,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `online` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_article`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_lang
-- ----------------------------
INSERT INTO `article_lang` VALUES ('1', 'en', '404', 'Can\'t find requested page', '', '', '<p>Maecenas massa. varius non accumsan nec, commodo vitae felis! Quisque luctus, lorem vel elementum aliquam, lorem nulla dignissim velit, id placerat libero ipsum eget sapien. Cras erat risus, pellentesque ut auctor quis, fringilla vel elit. Cras nisl dolor, vulputate eget molestie ut, sollicitudin non dui.</p><h4>Reasons</h4><ul><li>Lorem ipsum dolor sit amet</li><li>Consectetur adipiscing elit</li><li>Nulla volutpat aliquam velit<ul><li>Phasellus iaculis neque</li><li>Purus sodales ultricies</li><li>Vestibulum laoreet porttitor sem</li><li>Ac tristique libero volutpat at</li></ul></li><li>Faucibus porta lacus fringilla vel</li></ul>', '', '', '1');
INSERT INTO `article_lang` VALUES ('4', 'en', 'the-power-of-php', 'The power of PHP', '', '', '<p>The Ionize CMS uses CodeIgniter, a powerful and lightweight PHP framework. For CodeIgniter developpers, starting developping on Ionize will be really easy as building a CI application !</p>', '', '', '1');
INSERT INTO `article_lang` VALUES ('5', 'en', 'article-1', 'One blog post', '', '', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam. est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p><p>Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>', '', '', '1');
INSERT INTO `article_lang` VALUES ('6', 'en', 'article-2', 'Another blog post', '', '', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam. est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p><p>Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>', '', '', '1');
INSERT INTO `article_lang` VALUES ('7', 'en', 'article-3', 'We got something...', '', '', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam. est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p><p>Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>', '', '', '1');
INSERT INTO `article_lang` VALUES ('8', 'en', 'article-4', 'Say it differently', '', '', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam. est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p><p>Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>', '', '', '1');
INSERT INTO `article_lang` VALUES ('9', 'en', 'article-5', '10 incredible items !', '', '', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam. est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p><p>Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>', '', '', '1');
INSERT INTO `article_lang` VALUES ('10', 'en', 'article-6', 'Send mail to your friends !', '', '', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam. est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p><p>Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>', '', '', '1');
INSERT INTO `article_lang` VALUES ('11', 'en', 'easy-edition', 'Easy edition', '', '', '<p>Copy / paste content from any word processing software. Inline links are automatically converted to hyperlinks. Emails are safely encoded to avoid spam.</p>', null, null, '1');
INSERT INTO `article_lang` VALUES ('12', 'en', 'multilingual', 'Multilingual', '', '', '<p>You can create as much languages as you need for your website. Every content can be translated : posts, static elements in templates, media data, etc.</p>', null, null, '1');
INSERT INTO `article_lang` VALUES ('13', 'en', 'userfriendly', 'Userfriendly', '', '', '<p>Your website structure is logical. Managing elements such as pages, articles or medias is easily done by drag\'n\'drop!</p>', null, null, '1');
INSERT INTO `article_lang` VALUES ('14', 'en', 'template-system', 'Template System', '', '', '<p>Each page or article can have a dedicated template, templates can be embeded in each others. The tag language of Ionize is simple and fully documented.</p>', '', '', '1');
INSERT INTO `article_lang` VALUES ('15', 'en', 'about-us-1', 'About Us', '', '', '<p>Duis diam tortor, suscipit sed varius id, dictum interdum tortor. Vivamus vel sapien vitae metus aliquet vehicula. Cras nec odio a dui sagittis semper? Nullam non luctus nisl. Cras ante ante, elementum a porta sit amet, aliquet in felis. Cras dictum metus non felis fermentum in mattis nisl dignissim. Suspendisse suscipit diam id ipsum elementum sed commodo massa ullamcorper. Curabitur tincidunt enim at ipsum aliquam a sagittis eros vulputate. Etiam elementum gravida ipsum eget congue. Pellentesque tempus facilisis odio, at porta nibh pulvinar vel.</p><p>Donec rutrum lectus eget enim aliquet in sollicitudin elit vestibulum. Sed iaculis mi quis ipsum congue elementum. Proin turpis urna, rutrum id vehicula et, cursus vel purus. Proin tincidunt, odio sed congue ultricies. Risus erat rhoncus leo, in fringilla elit libero vel metus. Sed adipiscing, orci vitae iaculis laoreet, ante nibh facilisis sem, ac pulvinar nunc risus sit amet nisl.</p>', '', '', '1');
INSERT INTO `article_lang` VALUES ('16', 'en', 'footer-resources', 'Online resources', '', '', '<p><strong>Community</strong> : Ionize\'s forum<br /><strong>Project hosting</strong> : Ionize on github</p><p><strong>Last version</strong> : Download Ionize</p><p><strong>Contact</strong> : team@ionizecms.com</p>', '', '', '1');
INSERT INTO `article_lang` VALUES ('17', 'en', 'some-of-our-services', 'What we do for you', '', '', '<p>Suspendisse nec erat lacus? Morbi pharetra elit ac nibh ornare a vulputate urna dictum?</p><p>Vestibulum eu justo sit amet nulla adipiscing imperdiet. Nullam venenatis tortor nec mauris viverra at rutrum lacus ultricies. Sed condimentum aliquet congue! Aenean sed justo sapien.</p><p>Fusce ut turpis mauris. Phasellus ac felis arcu, semper rhoncus nisi? Quisque tortor nisl; convallis et varius vel, ullamcorper sit amet neque. Sed semper aliquam rutrum.</p><p>Phasellus ac nisl et quam laoreet interdum ultrices vel dui. Mauris et urna sed tortor molestie blandit quis vel sapien. Cras tempus sollicitudin magna eu faucibus. Nulla dapibus pharetra dapibus.</p>', '', '', '1');
INSERT INTO `article_lang` VALUES ('18', 'en', 'service-1', 'Service 1', '', '', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit Nulla volutpat aliquam velit</p><p>Phasellus iaculis neque purus sodales ultricies vestibulum laoreet porttitor sem ac tristique libero volutpat at</p><p>Faucibus porta lacus fringilla vel.</p>', '', '', '1');
INSERT INTO `article_lang` VALUES ('19', 'en', 'service-2', 'Service 2', '', '', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit Nulla volutpat aliquam velit</p><p>Phasellus iaculis neque purus sodales ultricies vestibulum laoreet porttitor sem ac tristique libero volutpat at</p><p>Faucibus porta lacus fringilla vel.</p>', '', '', '1');
INSERT INTO `article_lang` VALUES ('20', 'en', 'service-3', 'Service 3', '', '', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit Nulla volutpat aliquam velit</p><p>Phasellus iaculis neque purus sodales ultricies vestibulum laoreet porttitor sem ac tristique libero volutpat at</p><p>Faucibus porta lacus fringilla vel.</p>', '', '', '1');
INSERT INTO `article_lang` VALUES ('24', 'en', 'contact-informations', 'Contact Informations', '', '', '<p><strong>Ionize CMS</strong><br /> 123 Flower street,<br /> 75005 Paris, France</p><p><strong>Tel</strong> : +33 012345678<strong><br />Email : </strong>team@ionizecms.com</p>', '', '', '1');
INSERT INTO `article_lang` VALUES ('26', 'en', 'our-location', 'Our location', '', '', '<p><iframe width=\"100%\" height=\"250\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" src=\"https://maps.google.fr/maps?f=q&amp;source=s_q&amp;hl=fr&amp;geocode=&amp;aq=&amp;sll=48.876161,2.377124&amp;sspn=0.007296,0.018175&amp;gl=fr&amp;g=villa+Marcel+Lods&amp;ie=UTF8&amp;hq=&amp;ll=48.876161,2.377124&amp;spn=0.001824,0.004544&amp;t=m&amp;z=16&amp;output=embed\"></iframe></p>', '', '', '1');
INSERT INTO `article_lang` VALUES ('27', 'en', 'whats-ionize', 'What\'s Ionize ?', '', '', '<p>Ionize is an Open Source content management system created by webdesigners for webdesigners.</p><p>Originally <a title=\"Ionize\'s development agence internet\" href=\"http://www.ionizecms.com/en/about\">created by Partikule and Toopixel</a> for their clients, Ionize is today an OpenSource project, so everybody can build easy to maintain websites.</p>', null, null, '1');
INSERT INTO `article_lang` VALUES ('28', 'en', 'can-i-help', 'Can I help ?', '', '', '<p>Because talent is nothing without involvement, we are looking for motivated coders and webdesigners to join the project team.</p><p>You have a module idea ?<br />You want to make some improvement ?<br />You wants to get involved in a promising CMS ?</p>', '', '', '1');
INSERT INTO `article_lang` VALUES ('29', 'en', 'send-us-a-message', 'Send us a message !', '', '', '', null, null, '1');
INSERT INTO `article_lang` VALUES ('30', 'en', 'not-logged-in', 'Not logged in', '', '', '', null, null, '1');
INSERT INTO `article_lang` VALUES ('31', 'en', 'hello', 'Hello', '', '', '<p>Welcome to your account management page.</p>', '', '', '1');

-- ----------------------------
-- Table structure for `article_media`
-- ----------------------------
DROP TABLE IF EXISTS `article_media`;
CREATE TABLE `article_media` (
  `id_article` int(11) unsigned NOT NULL DEFAULT '0',
  `id_media` int(11) unsigned NOT NULL DEFAULT '0',
  `online` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) unsigned DEFAULT '9999',
  `url` varchar(255) DEFAULT NULL,
  `lang_display` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id_article`,`id_media`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_media
-- ----------------------------
INSERT INTO `article_media` VALUES ('4', '3', '1', '1', null, null);
INSERT INTO `article_media` VALUES ('5', '6', '1', '2', null, null);
INSERT INTO `article_media` VALUES ('5', '7', '1', '3', null, null);
INSERT INTO `article_media` VALUES ('5', '8', '1', '1', null, null);
INSERT INTO `article_media` VALUES ('6', '5', '1', '1', null, null);
INSERT INTO `article_media` VALUES ('7', '7', '1', '1', null, null);
INSERT INTO `article_media` VALUES ('8', '3', '1', '1', null, null);
INSERT INTO `article_media` VALUES ('9', '8', '1', '1', null, null);
INSERT INTO `article_media` VALUES ('10', '4', '1', '1', null, null);
INSERT INTO `article_media` VALUES ('15', '5', '1', '2', null, null);
INSERT INTO `article_media` VALUES ('17', '3', '1', '1', null, null);

-- ----------------------------
-- Table structure for `article_tag`
-- ----------------------------
DROP TABLE IF EXISTS `article_tag`;
CREATE TABLE `article_tag` (
  `id_article` int(11) unsigned NOT NULL,
  `id_tag` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_article`,`id_tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_tag
-- ----------------------------
INSERT INTO `article_tag` VALUES ('5', '1');
INSERT INTO `article_tag` VALUES ('5', '3');
INSERT INTO `article_tag` VALUES ('6', '2');
INSERT INTO `article_tag` VALUES ('6', '4');
INSERT INTO `article_tag` VALUES ('7', '1');
INSERT INTO `article_tag` VALUES ('8', '4');
INSERT INTO `article_tag` VALUES ('9', '4');
INSERT INTO `article_tag` VALUES ('10', '1');
INSERT INTO `article_tag` VALUES ('14', '0');

-- ----------------------------
-- Table structure for `article_type`
-- ----------------------------
DROP TABLE IF EXISTS `article_type`;
CREATE TABLE `article_type` (
  `id_type` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `ordering` int(11) DEFAULT '0',
  `description` text NOT NULL,
  `type_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_type
-- ----------------------------
INSERT INTO `article_type` VALUES ('4', 'bloc', '0', '', '5');
INSERT INTO `article_type` VALUES ('5', 'not-logged-in', '0', '', '1');
INSERT INTO `article_type` VALUES ('6', 'logged-in', '0', '', '4');

-- ----------------------------
-- Table structure for `captcha`
-- ----------------------------
DROP TABLE IF EXISTS `captcha`;
CREATE TABLE `captcha` (
  `id_captcha` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` varchar(255) NOT NULL DEFAULT '',
  `lang` varchar(3) NOT NULL DEFAULT '',
  `hash` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_captcha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of captcha
-- ----------------------------

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id_category` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `ordering` int(11) DEFAULT '0',
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', 'ionize', '0');
INSERT INTO `category` VALUES ('2', 'website', '0');

-- ----------------------------
-- Table structure for `category_lang`
-- ----------------------------
DROP TABLE IF EXISTS `category_lang`;
CREATE TABLE `category_lang` (
  `id_category` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` char(3) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  PRIMARY KEY (`id_category`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category_lang
-- ----------------------------
INSERT INTO `category_lang` VALUES ('1', 'en', 'Ionize CMS', '', '');
INSERT INTO `category_lang` VALUES ('2', 'en', 'Website', '', '');

-- ----------------------------
-- Table structure for `element`
-- ----------------------------
DROP TABLE IF EXISTS `element`;
CREATE TABLE `element` (
  `id_element` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_element_definition` int(11) unsigned NOT NULL,
  `parent` varchar(50) NOT NULL,
  `id_parent` int(11) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_element`),
  KEY `idx_element_id_element_definition` (`id_element_definition`),
  KEY `idx_element_id_parent` (`id_parent`),
  KEY `idx_element_parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of element
-- ----------------------------

-- ----------------------------
-- Table structure for `element_definition`
-- ----------------------------
DROP TABLE IF EXISTS `element_definition`;
CREATE TABLE `element_definition` (
  `id_element_definition` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text,
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_element_definition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of element_definition
-- ----------------------------

-- ----------------------------
-- Table structure for `element_definition_lang`
-- ----------------------------
DROP TABLE IF EXISTS `element_definition_lang`;
CREATE TABLE `element_definition_lang` (
  `id_element_definition` int(11) unsigned NOT NULL,
  `lang` varchar(3) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_element_definition`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of element_definition_lang
-- ----------------------------

-- ----------------------------
-- Table structure for `event_log`
-- ----------------------------
DROP TABLE IF EXISTS `event_log`;
CREATE TABLE `event_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(50) DEFAULT NULL,
  `message` text,
  `id_user` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_log
-- ----------------------------

-- ----------------------------
-- Table structure for `extend_field`
-- ----------------------------
DROP TABLE IF EXISTS `extend_field`;
CREATE TABLE `extend_field` (
  `id_extend_field` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(1) NOT NULL,
  `description` varchar(255) DEFAULT '',
  `parent` varchar(50) NOT NULL,
  `ordering` int(11) DEFAULT '0',
  `translated` char(1) DEFAULT '0',
  `value` text,
  `default_value` varchar(255) DEFAULT NULL,
  `global` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `parents` varchar(300) NOT NULL DEFAULT '',
  `id_element_definition` int(11) unsigned NOT NULL DEFAULT '0',
  `block` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_extend_field`),
  KEY `idx_extend_field_parent` (`parent`),
  KEY `idx_extend_field_id_element_definition` (`id_element_definition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of extend_field
-- ----------------------------

-- ----------------------------
-- Table structure for `extend_fields`
-- ----------------------------
DROP TABLE IF EXISTS `extend_fields`;
CREATE TABLE `extend_fields` (
  `id_extend_fields` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_extend_field` int(11) unsigned NOT NULL,
  `parent` varchar(50) NOT NULL DEFAULT '',
  `id_parent` int(11) unsigned NOT NULL,
  `lang` char(3) NOT NULL DEFAULT '',
  `content` text,
  `ordering` int(11) unsigned NOT NULL DEFAULT '0',
  `id_element` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_extend_fields`),
  KEY `idx_extend_fields_id_parent` (`id_parent`),
  KEY `idx_extend_fields_lang` (`lang`),
  KEY `idx_extend_fields_id_extend_field` (`id_extend_field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of extend_fields
-- ----------------------------

-- ----------------------------
-- Table structure for `extend_field_lang`
-- ----------------------------
DROP TABLE IF EXISTS `extend_field_lang`;
CREATE TABLE `extend_field_lang` (
  `id_extend_field` int(11) unsigned NOT NULL,
  `lang` char(3) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_extend_field`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of extend_field_lang
-- ----------------------------

-- ----------------------------
-- Table structure for `ion_sessions`
-- ----------------------------
DROP TABLE IF EXISTS `ion_sessions`;
CREATE TABLE `ion_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(50) DEFAULT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ion_sessions
-- ----------------------------

-- ----------------------------
-- Table structure for `lang`
-- ----------------------------
DROP TABLE IF EXISTS `lang`;
CREATE TABLE `lang` (
  `lang` varchar(3) NOT NULL DEFAULT '',
  `name` varchar(40) DEFAULT NULL,
  `online` char(1) DEFAULT '0',
  `def` char(1) DEFAULT '0',
  `ordering` int(11) DEFAULT NULL,
  `direction` smallint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lang
-- ----------------------------
INSERT INTO `lang` VALUES ('en', 'english', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for `login_tracker`
-- ----------------------------
DROP TABLE IF EXISTS `login_tracker`;
CREATE TABLE `login_tracker` (
  `ip_address` varchar(32) NOT NULL,
  `first_time` int(11) unsigned NOT NULL,
  `failures` tinyint(2) unsigned DEFAULT NULL,
  PRIMARY KEY (`ip_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_tracker
-- ----------------------------

-- ----------------------------
-- Table structure for `media`
-- ----------------------------
DROP TABLE IF EXISTS `media`;
CREATE TABLE `media` (
  `id_media` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL DEFAULT '',
  `file_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'file_name',
  `path` varchar(500) NOT NULL COMMENT 'Complete path to the medium, including media file name, excluding host name',
  `base_path` varchar(500) NOT NULL COMMENT 'medium folder base path, excluding host name',
  `copyright` varchar(128) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL COMMENT 'Medium date',
  `link` varchar(255) DEFAULT NULL COMMENT 'Link to a resource, attached to this medium',
  `square_crop` enum('tl','m','br') NOT NULL DEFAULT 'm',
  PRIMARY KEY (`id_media`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of media
-- ----------------------------
INSERT INTO `media` VALUES ('3', 'picture', 'screenshot_ionize_dashboard.jpg', 'files/screenshot_ionize_dashboard.jpg', 'files/', null, null, '0000-00-00 00:00:00', null, 'm');
INSERT INTO `media` VALUES ('4', 'picture', 'IMG_8359.jpg', 'files/pictures/IMG_8359.jpg', 'files/pictures/', '', null, '0000-00-00 00:00:00', '', 'm');
INSERT INTO `media` VALUES ('5', 'picture', 'IMG_8447.jpg', 'files/pictures/IMG_8447.jpg', 'files/pictures/', '', null, '0000-00-00 00:00:00', '', 'm');
INSERT INTO `media` VALUES ('6', 'picture', 'IMG_8632.jpg', 'files/pictures/IMG_8632.jpg', 'files/pictures/', '', null, '0000-00-00 00:00:00', '', 'm');
INSERT INTO `media` VALUES ('7', 'picture', 'IMG_8645.jpg', 'files/pictures/IMG_8645.jpg', 'files/pictures/', '', null, '0000-00-00 00:00:00', '', 'm');
INSERT INTO `media` VALUES ('8', 'picture', 'IMG_8963.jpg', 'files/pictures/IMG_8963.jpg', 'files/pictures/', null, null, '0000-00-00 00:00:00', null, 'm');
INSERT INTO `media` VALUES ('9', 'picture', 'wall_e_headphones_vignette.jpg', 'files/wall_e_headphones_vignette.jpg', 'files/', null, null, '0000-00-00 00:00:00', null, 'm');
INSERT INTO `media` VALUES ('10', 'picture', 'ionize_article_095.jpg', 'files/ionize/ionize_article_095.jpg', 'files/ionize/', '', null, '0000-00-00 00:00:00', '', 'm');
INSERT INTO `media` VALUES ('11', 'picture', 'ionize_dashboard_095.jpg', 'files/ionize/ionize_dashboard_095.jpg', 'files/ionize/', '', null, '0000-00-00 00:00:00', '', 'm');
INSERT INTO `media` VALUES ('12', 'picture', 'ionize_languages_095.jpg', 'files/ionize/ionize_languages_095.jpg', 'files/ionize/', '', null, '0000-00-00 00:00:00', '', 'm');
INSERT INTO `media` VALUES ('13', 'picture', 'ionize_login_window_095.jpg', 'files/ionize/ionize_login_window_095.jpg', 'files/ionize/', '', null, '0000-00-00 00:00:00', '', 'm');
INSERT INTO `media` VALUES ('14', 'picture', 'ionize_multiple_windows_095.jpg', 'files/ionize/ionize_multiple_windows_095.jpg', 'files/ionize/', '', null, '0000-00-00 00:00:00', '', 'm');
INSERT INTO `media` VALUES ('15', 'picture', 'ionize_option_panel_095.jpg', 'files/ionize/ionize_option_panel_095.jpg', 'files/ionize/', '', null, '0000-00-00 00:00:00', '', 'm');
INSERT INTO `media` VALUES ('16', 'picture', 'ionize_page_edit_095.jpg', 'files/ionize/ionize_page_edit_095.jpg', 'files/ionize/', '', null, '0000-00-00 00:00:00', '', 'm');
INSERT INTO `media` VALUES ('17', 'picture', 'ionize_picture_data_095.jpg', 'files/ionize/ionize_picture_data_095.jpg', 'files/ionize/', '', null, '0000-00-00 00:00:00', '', 'm');

-- ----------------------------
-- Table structure for `media_lang`
-- ----------------------------
DROP TABLE IF EXISTS `media_lang`;
CREATE TABLE `media_lang` (
  `lang` varchar(3) NOT NULL DEFAULT '',
  `id_media` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `alt` varchar(500) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id_media`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of media_lang
-- ----------------------------
INSERT INTO `media_lang` VALUES ('en', '4', 'Mingun', 'Alot of young munks live in a monastery next to the Hsinbyume pagoda', 'Alot of young munks live in a monastery next to the Hsinbyume pagoda');
INSERT INTO `media_lang` VALUES ('en', '5', 'Mandalay', 'One working day in the historical capital of Burma.', 'One working day in the historical capital of Burma.');
INSERT INTO `media_lang` VALUES ('en', '6', 'Monywa, Burma', 'In the mountain of Monywa, more than two thousand caves were built in honor of Budha.', 'In the mountain of Monywa, more than two thousand caves were built in honor of Budha.');
INSERT INTO `media_lang` VALUES ('en', '7', 'Monywa wall paints', 'These 17th century wall painting are very well preserved because the caves were forgivven for centuries.', 'These 17th centruey wall painting are very well preserved because the caves were forgivven for centuries.');
INSERT INTO `media_lang` VALUES ('en', '10', 'Edit Article', '', 'With Ionize CMS, edit instantly your content in all languages');
INSERT INTO `media_lang` VALUES ('en', '11', 'Dashboard', '', 'Ionize CMS dashboard gives an overview of the last actions on your website');
INSERT INTO `media_lang` VALUES ('en', '12', 'Nativelly Multilingual', '', 'Every language can be setup by the user !');
INSERT INTO `media_lang` VALUES ('en', '13', 'Login Screen Ionize CMS', '', 'Ionize login of the Admin Panel');
INSERT INTO `media_lang` VALUES ('en', '14', 'Windowed Workspace', '', 'Make work easier !');
INSERT INTO `media_lang` VALUES ('en', '15', 'So Friendly !', '', 'Every component in Ionize CMS is userfriendly');
INSERT INTO `media_lang` VALUES ('en', '16', '', '', '');
INSERT INTO `media_lang` VALUES ('en', '17', '', '', '');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `ordering` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_menu`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', 'main', 'Main menu', null);
INSERT INTO `menu` VALUES ('2', 'system', 'System menu', null);

-- ----------------------------
-- Table structure for `module`
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module` (
  `id_module` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `with_admin` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `version` varchar(10) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id_module`),
  KEY `i_module_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module
-- ----------------------------

-- ----------------------------
-- Table structure for `module_setting`
-- ----------------------------
DROP TABLE IF EXISTS `module_setting`;
CREATE TABLE `module_setting` (
  `id_module_setting` int(11) NOT NULL AUTO_INCREMENT,
  `id_module` int(11) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT 'Setting name',
  `content` varchar(255) NOT NULL COMMENT 'Setting content',
  `lang` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_module_setting`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module_setting
-- ----------------------------

-- ----------------------------
-- Table structure for `note`
-- ----------------------------
DROP TABLE IF EXISTS `note`;
CREATE TABLE `note` (
  `id_note` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `type` varchar(10) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id_note`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of note
-- ----------------------------

-- ----------------------------
-- Table structure for `page`
-- ----------------------------
DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` (
  `id_page` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) unsigned NOT NULL DEFAULT '0',
  `id_menu` int(11) unsigned NOT NULL DEFAULT '0',
  `id_type` smallint(2) NOT NULL DEFAULT '0',
  `id_subnav` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `ordering` int(11) unsigned DEFAULT '0',
  `level` int(11) unsigned NOT NULL DEFAULT '0',
  `online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` tinyint(1) NOT NULL DEFAULT '0',
  `author` varchar(55) DEFAULT NULL,
  `updater` varchar(55) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_off` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logical_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `appears` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `has_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `view` varchar(50) DEFAULT NULL COMMENT 'Page view',
  `view_single` varchar(50) DEFAULT NULL COMMENT 'Single Article Page view',
  `article_list_view` varchar(50) DEFAULT NULL COMMENT 'Article list view for each article linked to this page',
  `article_view` varchar(50) DEFAULT NULL COMMENT 'Article detail view for each article linked to this page',
  `article_order` varchar(50) NOT NULL DEFAULT 'ordering' COMMENT 'Article order in this page. Can be "ordering", "date"',
  `article_order_direction` varchar(50) NOT NULL DEFAULT 'ASC',
  `link` varchar(255) DEFAULT '' COMMENT 'Link to internal / external resource',
  `link_type` varchar(25) DEFAULT NULL COMMENT '''page'', ''article'' or NULL',
  `link_id` varchar(20) NOT NULL DEFAULT '',
  `pagination` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Pagination use ?',
  `priority` int(1) unsigned NOT NULL DEFAULT '5' COMMENT 'Page priority',
  `used_by_module` tinyint(1) unsigned DEFAULT NULL,
  `deny_code` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id_page`),
  KEY `idx_page_id_parent` (`id_parent`),
  KEY `idx_page_level` (`level`),
  KEY `idx_page_menu` (`id_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of page
-- ----------------------------
INSERT INTO `page` VALUES ('1', '0', '2', '0', '0', '404', '0', '0', '1', '0', 'demo', 'demo', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 14:42:05', '0000-00-00 00:00:00', '0', '1', '', '', '', '', 'ordering', 'ASC', '', null, '', '0', '5', '0', null);
INSERT INTO `page` VALUES ('2', '0', '1', '0', '0', 'welcome', '1', '0', '1', '1', 'demo', 'demo', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-23 01:05:34', '0000-00-00 00:00:00', '1', '1', 'page_home', '', '', '', 'ordering', 'ASC', '', null, '', '0', '5', '0', null);
INSERT INTO `page` VALUES ('3', '0', '1', '0', '0', 'about-ionize-cms', '5', '0', '1', '0', 'demo', 'demo', '2012-11-17 09:42:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-06 16:27:42', '0000-00-00 00:00:00', '1', '1', 'pages/page_standard', 'pages/page_standard', null, '', 'ordering', 'ASC', '', null, '', '0', '5', '0', null);
INSERT INTO `page` VALUES ('4', '0', '1', '0', '0', 'contact', '6', '0', '1', '0', 'demo', 'demo', '2012-11-17 09:42:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 14:34:59', '0000-00-00 00:00:00', '1', '1', 'page_contact', '', '', '', 'ordering', 'ASC', '', null, '', '0', '5', '0', null);
INSERT INTO `page` VALUES ('6', '0', '1', '0', '0', 'blog', '2', '0', '1', '0', 'demo', 'demo', '2012-11-17 13:57:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 14:07:43', '0000-00-00 00:00:00', '1', '1', 'page_blog', 'page_blog_post', '', '', 'ordering', 'ASC', '', null, '', '3', '5', '0', null);
INSERT INTO `page` VALUES ('8', '0', '1', '0', '0', 'services', '4', '0', '1', '0', 'demo', 'demo', '2012-11-20 22:12:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 16:53:44', '0000-00-00 00:00:00', '1', '1', '', '', '', '', 'ordering', 'ASC', '', null, '', '0', '5', '0', null);
INSERT INTO `page` VALUES ('9', '0', '2', '0', '0', 'footer', '1', '0', '1', '0', 'demo', 'demo', '2012-11-21 11:52:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-11-21 11:52:30', '0000-00-00 00:00:00', '0', '1', '', '', null, '', 'ordering', 'ASC', '', null, '', '0', '5', '0', null);
INSERT INTO `page` VALUES ('10', '0', '1', '0', '0', 'my-account', '7', '0', '1', '0', 'demo', 'demo', '2012-12-21 20:11:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-22 10:53:57', '0000-00-00 00:00:00', '1', '1', 'page_my_account', '', null, '', 'ordering', 'ASC', '', null, '', '0', '5', '0', null);

-- ----------------------------
-- Table structure for `page_article`
-- ----------------------------
DROP TABLE IF EXISTS `page_article`;
CREATE TABLE `page_article` (
  `id_page` int(11) unsigned NOT NULL,
  `id_article` int(11) unsigned NOT NULL,
  `online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `view` varchar(50) DEFAULT NULL,
  `ordering` int(11) DEFAULT '0',
  `id_type` int(11) unsigned DEFAULT NULL,
  `link_type` varchar(25) NOT NULL DEFAULT '',
  `link_id` varchar(20) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `main_parent` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_page`,`id_article`),
  KEY `idx_page_article_id_type` (`id_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of page_article
-- ----------------------------
INSERT INTO `page_article` VALUES ('1', '1', '1', null, '0', null, '', '', '', '1');
INSERT INTO `page_article` VALUES ('2', '11', '1', null, '4', '0', '', '', '', '1');
INSERT INTO `page_article` VALUES ('2', '12', '1', null, '3', '0', '', '', '', '1');
INSERT INTO `page_article` VALUES ('2', '13', '1', null, '2', '0', '', '', '', '1');
INSERT INTO `page_article` VALUES ('2', '14', '1', null, '1', '0', '', '', '', '1');
INSERT INTO `page_article` VALUES ('3', '15', '1', null, '1', null, '', '', '', '1');
INSERT INTO `page_article` VALUES ('4', '24', '1', null, '2', '4', '', '', '', '1');
INSERT INTO `page_article` VALUES ('4', '26', '1', null, '3', '4', '', '', '', '1');
INSERT INTO `page_article` VALUES ('4', '29', '1', null, '1', null, '', '', '', '1');
INSERT INTO `page_article` VALUES ('6', '5', '1', null, '1', null, '', '', '', '1');
INSERT INTO `page_article` VALUES ('6', '6', '1', null, '2', null, '', '', '', '1');
INSERT INTO `page_article` VALUES ('6', '7', '1', null, '3', null, '', '', '', '1');
INSERT INTO `page_article` VALUES ('6', '8', '1', null, '4', null, '', '', '', '1');
INSERT INTO `page_article` VALUES ('6', '9', '1', null, '5', null, '', '', '', '1');
INSERT INTO `page_article` VALUES ('6', '10', '1', null, '6', '0', '', '', '', '1');
INSERT INTO `page_article` VALUES ('8', '17', '1', null, '1', null, '', '', '', '1');
INSERT INTO `page_article` VALUES ('8', '18', '1', null, '2', '4', '', '', '', '1');
INSERT INTO `page_article` VALUES ('8', '19', '1', null, '3', '4', '', '', '', '1');
INSERT INTO `page_article` VALUES ('8', '20', '1', null, '4', '4', '', '', '', '1');
INSERT INTO `page_article` VALUES ('9', '16', '1', null, '3', null, '', '', '', '1');
INSERT INTO `page_article` VALUES ('9', '27', '1', null, '1', null, '', '', '', '1');
INSERT INTO `page_article` VALUES ('9', '28', '1', null, '2', null, '', '', '', '1');
INSERT INTO `page_article` VALUES ('10', '30', '1', null, '2', '5', '', '', '', '1');
INSERT INTO `page_article` VALUES ('10', '31', '1', null, '1', '6', '', '', '', '1');

-- ----------------------------
-- Table structure for `page_lang`
-- ----------------------------
DROP TABLE IF EXISTS `page_lang`;
CREATE TABLE `page_lang` (
  `lang` varchar(3) NOT NULL DEFAULT '',
  `id_page` int(11) unsigned NOT NULL DEFAULT '0',
  `url` varchar(100) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `subnav_title` varchar(255) NOT NULL DEFAULT '',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `online` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_page`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of page_lang
-- ----------------------------
INSERT INTO `page_lang` VALUES ('en', '1', '404', '', '404', 'Can\'t find requested page !', '', '', '', '', '', '1');
INSERT INTO `page_lang` VALUES ('en', '2', 'home', '', 'Ionize CMS', 'the most professional friendly CMS ever made.', 'Home', '', 'Welcome To Ionize CMS', '', '', '1');
INSERT INTO `page_lang` VALUES ('en', '3', 'about-ionize-cms', '', 'About Us', 'Some info about us !', '', '', '', '', '', '1');
INSERT INTO `page_lang` VALUES ('en', '4', 'contact', '', 'Contact', 'Find us, send us one message', '', '', '', '', '', '1');
INSERT INTO `page_lang` VALUES ('en', '6', 'blog', '', 'Blog', 'Interesting stories ', '', '', '', '', '', '1');
INSERT INTO `page_lang` VALUES ('en', '8', 'services', '', 'Services', 'The very great services we can provide to make you happy', '', '', '', '', '', '1');
INSERT INTO `page_lang` VALUES ('en', '9', 'footer', '', 'Footer', '', '', '', '', '', '', '1');
INSERT INTO `page_lang` VALUES ('en', '10', 'my-account', '', 'My account', '', '', '', '', '', '', '1');

-- ----------------------------
-- Table structure for `page_media`
-- ----------------------------
DROP TABLE IF EXISTS `page_media`;
CREATE TABLE `page_media` (
  `id_page` int(11) unsigned NOT NULL DEFAULT '0',
  `id_media` int(11) unsigned NOT NULL DEFAULT '0',
  `online` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) unsigned DEFAULT '9999',
  `lang_display` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id_page`,`id_media`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of page_media
-- ----------------------------
INSERT INTO `page_media` VALUES ('2', '4', '1', '13', null);
INSERT INTO `page_media` VALUES ('2', '5', '1', '10', null);
INSERT INTO `page_media` VALUES ('2', '6', '1', '1', null);
INSERT INTO `page_media` VALUES ('2', '7', '1', '11', null);
INSERT INTO `page_media` VALUES ('2', '8', '1', '12', null);

-- ----------------------------
-- Table structure for `page_role`
-- ----------------------------
DROP TABLE IF EXISTS `page_role`;
CREATE TABLE `page_role` (
  `id_page` int(11) unsigned NOT NULL DEFAULT '0',
  `ig_group` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_page`,`ig_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of page_role
-- ----------------------------

-- ----------------------------
-- Table structure for `resource`
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id_resource` int(11) NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) unsigned DEFAULT '0',
  `resource` varchar(255) NOT NULL DEFAULT '',
  `actions` varchar(500) DEFAULT '',
  `title` varchar(255) DEFAULT '',
  `description` varchar(1000) DEFAULT '',
  PRIMARY KEY (`id_resource`),
  UNIQUE KEY `resource_key` (`resource`)
) ENGINE=InnoDB AUTO_INCREMENT=304 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES ('1', null, 'admin', '', 'Backend login', 'Connect to ionize backend');
INSERT INTO `resource` VALUES ('10', null, 'admin/menu', 'create,edit,delete', 'Menu', 'Menus');
INSERT INTO `resource` VALUES ('11', '10', 'admin/menu/permissions/backend', '', 'Permissions', 'Menu > Backend Permissions');
INSERT INTO `resource` VALUES ('20', null, 'admin/translations', '', 'Translations', 'Translations');
INSERT INTO `resource` VALUES ('30', null, 'admin/filemanager', 'upload,rename,delete,move', 'Filemanager', 'FileManager');
INSERT INTO `resource` VALUES ('35', null, 'admin/medialist', '', 'MediaList', 'MediaList');
INSERT INTO `resource` VALUES ('40', null, 'admin/page', 'create,edit,delete', 'Page', 'Page');
INSERT INTO `resource` VALUES ('41', '40', 'admin/page/article', 'add', 'Article', 'Page > Article');
INSERT INTO `resource` VALUES ('42', '40', 'admin/page/element', 'add', 'Content Element', 'Page > Content Element');
INSERT INTO `resource` VALUES ('50', '40', 'admin/page/media', '', 'Media', 'Page > Media');
INSERT INTO `resource` VALUES ('51', '50', 'admin/page/media/picture', 'link,unlink, edit', 'Pictures', 'Page > Media > Pictures');
INSERT INTO `resource` VALUES ('52', '50', 'admin/page/media/video', 'link,unlink, edit', 'Videos', 'Page > Media > Videos');
INSERT INTO `resource` VALUES ('53', '50', 'admin/page/media/music', 'link,unlink, edit', 'Music', 'Page > Media > Music');
INSERT INTO `resource` VALUES ('54', '50', 'admin/page/media/file', 'link,unlink, edit', 'Files', 'Page > Media > Files');
INSERT INTO `resource` VALUES ('60', '40', 'admin/page/permissions', '', 'Permission', 'Page > Permission');
INSERT INTO `resource` VALUES ('61', '60', 'admin/page/permissions/backend', '', 'Backend', 'Page > Permission > Backend');
INSERT INTO `resource` VALUES ('62', '60', 'admin/page/permissions/frontend', '', 'Frontend', 'Page > Permission > Frontend');
INSERT INTO `resource` VALUES ('70', null, 'admin/article', 'create,edit,delete,move,copy,duplicate', 'Article', 'Article');
INSERT INTO `resource` VALUES ('80', '70', 'admin/article/media', '', 'Media', 'Article > Media');
INSERT INTO `resource` VALUES ('81', '80', 'admin/article/media/picture', 'link,unlink, edit', 'Pictures', 'Article > Media > Pictures');
INSERT INTO `resource` VALUES ('82', '80', 'admin/article/media/video', 'link,unlink,edit', 'Videos', 'Article > Media > Videos');
INSERT INTO `resource` VALUES ('83', '80', 'admin/article/media/music', 'link,unlink,edit', 'Music', 'Article > Media > Music');
INSERT INTO `resource` VALUES ('84', '80', 'admin/article/media/file', 'link,unlink,edit', 'Files', 'Article > Media > Files');
INSERT INTO `resource` VALUES ('85', '70', 'admin/article/element', 'add', 'Content Element', 'Article > Content Element');
INSERT INTO `resource` VALUES ('86', '70', 'admin/article/category', '', 'Manage categories', 'Article > Categories');
INSERT INTO `resource` VALUES ('90', '70', 'admin/article/permissions', '', 'Permission', 'Article > Permission');
INSERT INTO `resource` VALUES ('91', '90', 'admin/article/permissions/backend', '', 'Backend', 'Article > Permission > Backend');
INSERT INTO `resource` VALUES ('92', '90', 'admin/article/permissions/frontend', '', 'Frontend', 'Article > Permission > Frontend');
INSERT INTO `resource` VALUES ('93', '70', 'admin/article/tag', '', 'Manage tags', 'Article > Tags');
INSERT INTO `resource` VALUES ('100', null, 'admin/tree', '', 'Tree', '');
INSERT INTO `resource` VALUES ('101', '100', 'admin/tree/menu', 'add_page,edit', 'Menus', '');
INSERT INTO `resource` VALUES ('102', '100', 'admin/tree/page', 'status,add_page,add_article,order', 'Pages', '');
INSERT INTO `resource` VALUES ('103', '100', 'admin/tree/article', 'unlink,status,move,copy,order', 'Articles', '');
INSERT INTO `resource` VALUES ('120', null, 'admin/article/type', 'create,edit,delete', 'Article Type', 'Article types');
INSERT INTO `resource` VALUES ('150', null, 'admin/modules', 'install', 'Modules', 'Modules');
INSERT INTO `resource` VALUES ('151', '150', 'admin/modules/permissions', '', 'Set Permissions', 'Modules > Permissions');
INSERT INTO `resource` VALUES ('180', null, 'admin/element', 'create,edit,delete', 'Content Element', 'Content Elements');
INSERT INTO `resource` VALUES ('210', null, 'admin/extend', 'create,edit,delete', 'Extend Fields', 'Extend Fields');
INSERT INTO `resource` VALUES ('240', null, 'admin/tools', '', 'Tools', 'Tools');
INSERT INTO `resource` VALUES ('241', '240', 'admin/tools/google_analytics', '', 'Google Analytics', 'Tools > Google Analytics');
INSERT INTO `resource` VALUES ('250', '240', 'admin/tools/system', '', 'System Diagnosis', 'Tools > System');
INSERT INTO `resource` VALUES ('251', '250', 'admin/tools/system/information', '', 'Information', 'Tools > System > Information');
INSERT INTO `resource` VALUES ('252', '250', 'admin/tools/system/repair', '', 'Repair tools', 'Tools > System > Repair');
INSERT INTO `resource` VALUES ('253', '250', 'admin/tools/system/report', '', 'Reports', 'Tools > System > Reports');
INSERT INTO `resource` VALUES ('270', null, 'admin/settings', '', 'Settings', 'Settings');
INSERT INTO `resource` VALUES ('271', '270', 'admin/settings/ionize', '', 'Ionize UI', 'Settings > UI Settings');
INSERT INTO `resource` VALUES ('272', '270', 'admin/settings/languages', '', 'Languages Management', 'Settings > Languages');
INSERT INTO `resource` VALUES ('273', '270', 'admin/settings/themes', 'edit', 'Themes', 'Settings > Themes');
INSERT INTO `resource` VALUES ('274', '270', 'admin/settings/website', '', 'Website settings', 'Settings > Website');
INSERT INTO `resource` VALUES ('275', '270', 'admin/settings/technical', '', 'Technical settings', 'Settings > Technical');
INSERT INTO `resource` VALUES ('300', null, 'admin/users_roles', '', 'Users / Roles', 'Users / Roles');
INSERT INTO `resource` VALUES ('301', '300', 'admin/user', 'create,edit,delete', 'Users', 'Users');
INSERT INTO `resource` VALUES ('302', '300', 'admin/role', 'create,edit,delete', 'Roles', 'Roles');
INSERT INTO `resource` VALUES ('303', '302', 'admin/role/permissions', '', 'Set Permissions', 'See Role\'s permissions');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id_role` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `role_level` int(11) DEFAULT NULL,
  `role_code` varchar(25) NOT NULL,
  `role_name` varchar(100) NOT NULL,
  `role_description` tinytext,
  PRIMARY KEY (`id_role`),
  UNIQUE KEY `role_code` (`role_code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '10000', 'super-admin', 'Super Admin', '');
INSERT INTO `role` VALUES ('2', '5000', 'admin', 'Admin', '');
INSERT INTO `role` VALUES ('3', '1000', 'editor', 'Editor', '');
INSERT INTO `role` VALUES ('4', '100', 'user', 'User', '');
INSERT INTO `role` VALUES ('5', '50', 'pending', 'Pending', '');
INSERT INTO `role` VALUES ('6', '10', 'guest', 'Guest', '');
INSERT INTO `role` VALUES ('7', '-10', 'banned', 'Banned', '');
INSERT INTO `role` VALUES ('8', '-100', 'deactivated', 'Deactivated', '');

-- ----------------------------
-- Table structure for `rule`
-- ----------------------------
DROP TABLE IF EXISTS `rule`;
CREATE TABLE `rule` (
  `id_role` int(11) NOT NULL,
  `resource` varchar(100) NOT NULL DEFAULT '',
  `actions` varchar(100) NOT NULL DEFAULT '',
  `permission` smallint(1) DEFAULT NULL,
  `id_element` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_role`,`resource`,`actions`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rule
-- ----------------------------
INSERT INTO `rule` VALUES ('1', 'all', '', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin', '', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/article', 'create,edit,delete,move,copy,duplicate', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/article/category', '', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/article/element', 'add', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/article/media', '', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/article/media/file', 'link,unlink,edit', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/article/media/music', 'link,unlink,edit', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/article/media/picture', 'link,unlink,edit', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/article/media/video', 'link,unlink,edit', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/article/permissions', '', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/article/permissions/backend', '', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/article/permissions/frontend', '', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/article/tag', '', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/article/type', 'create,edit,delete', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/element', 'create,edit,delete', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/extend', 'create,edit,delete', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/filemanager', 'upload,rename,delete,move', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/menu', 'create,edit,delete', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/modules', 'install', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/modules/permissions', '', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/page', 'create,edit,delete', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/page/article', 'add', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/page/element', 'add', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/page/media', '', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/page/media/file', 'link,unlink,edit', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/page/media/music', 'link,unlink,edit', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/page/media/picture', 'link,unlink,edit', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/page/media/video', 'link,unlink,edit', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/page/permissions', '', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/page/permissions/backend', '', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/page/permissions/frontend', '', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/role', 'create,edit,delete', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/role/permissions', '', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/settings', '', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/settings/ionize', '', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/settings/languages', '', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/settings/website', '', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/tools', '', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/tools/google_analytics', '', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/tools/system', '', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/tools/system/information', '', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/tools/system/repair', '', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/tools/system/report', '', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/translations', '', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/tree', '', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/tree/article', 'unlink,status,move,copy,order', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/tree/menu', 'add_page,edit', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/tree/page', 'status,add_page,add_article,order', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/user', 'create,edit,delete', '1', null);
INSERT INTO `rule` VALUES ('2', 'admin/users_roles', '', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin', '', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/article', 'create,edit,delete,move,copy,duplicate', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/article/category', '', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/article/element', 'add', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/article/media', '', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/article/media/picture', 'unlink', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/article/media/video', 'unlink,edit', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/article/permissions', '', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/article/permissions/backend', '', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/article/permissions/frontend', '', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/article/tag', '', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/filemanager', 'upload,rename,delete,move', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/menu', 'create,edit,delete', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/modules', '', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/page', 'create,edit,delete', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/page/article', 'add', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/page/element', 'add', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/page/media', '', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/page/media/file', 'link,unlink,edit', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/page/media/music', 'link,unlink,edit', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/page/media/picture', 'link,unlink,edit', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/page/media/video', 'link,unlink,edit', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/page/permissions', '', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/page/permissions/backend', '', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/page/permissions/frontend', '', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/settings', '', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/settings/ionize', '', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/settings/languages', '', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/settings/website', '', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/tools', '', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/tools/google_analytics', '', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/tools/system', '', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/tools/system/information', '', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/tools/system/report', '', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/translations', '', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/tree', '', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/tree/article', 'unlink,status,move,copy,order', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/tree/menu', 'add_page,edit', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/tree/page', 'status,add_page,add_article,order', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/user', 'create,edit,delete', '1', null);
INSERT INTO `rule` VALUES ('3', 'admin/users_roles', '', '1', null);

-- ----------------------------
-- Table structure for `setting`
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id_setting` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `lang` varchar(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_setting`),
  UNIQUE KEY `idx_unq_setting` (`name`,`lang`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of setting
-- ----------------------------
INSERT INTO `setting` VALUES ('1', 'website_email', '', '');
INSERT INTO `setting` VALUES ('2', 'files_path', 'files', '');
INSERT INTO `setting` VALUES ('3', 'theme', 'foundation', '');
INSERT INTO `setting` VALUES ('4', 'theme_admin', 'admin', '');
INSERT INTO `setting` VALUES ('5', 'google_analytics', '', '');
INSERT INTO `setting` VALUES ('7', 'show_help_tips', '1', '');
INSERT INTO `setting` VALUES ('8', 'display_connected_label', '1', '');
INSERT INTO `setting` VALUES ('9', 'display_dashboard_shortcuts', '1', '');
INSERT INTO `setting` VALUES ('10', 'display_dashboard_modules', '1', '');
INSERT INTO `setting` VALUES ('11', 'display_dashboard_users', '1', '');
INSERT INTO `setting` VALUES ('12', 'display_dashboard_content', '1', '');
INSERT INTO `setting` VALUES ('13', 'texteditor', 'tinymce', '');
INSERT INTO `setting` VALUES ('14', 'media_thumb_size', '120', '');
INSERT INTO `setting` VALUES ('15', 'tinybuttons1', 'pdw_toggle,|,bold,italic,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,formatselect,|,bullist,numlist,|,link,unlink,image,|,spellchecker', '');
INSERT INTO `setting` VALUES ('16', 'tinybuttons2', 'fullscreen, undo,redo,|,pastetext,selectall,removeformat,|,media,charmap,hr,blockquote,|,template,|,codemirror', '');
INSERT INTO `setting` VALUES ('17', 'tinybuttons3', 'tablecontrols', '');
INSERT INTO `setting` VALUES ('18', 'smalltinybuttons1', 'bold,italic,|,bullist,numlist,|,link,unlink,image,|,nonbreaking', '');
INSERT INTO `setting` VALUES ('19', 'smalltinybuttons2', '', '');
INSERT INTO `setting` VALUES ('20', 'smalltinybuttons3', '', '');
INSERT INTO `setting` VALUES ('21', 'displayed_admin_languages', 'en', '');
INSERT INTO `setting` VALUES ('22', 'date_format', '%Y.%m.%d', '');
INSERT INTO `setting` VALUES ('23', 'force_lang_urls', '0', '');
INSERT INTO `setting` VALUES ('24', 'tinyblockformats', 'p,h2,h3,h4,h5,pre,div', '');
INSERT INTO `setting` VALUES ('25', 'article_allowed_tags', 'h2,h3,h4,h5,h6,em,img,iframe,table,object,thead,tbody,tfoot,tr,th,td,param,embed,map,p,a,ul,ol,li,br,b,strong', '');
INSERT INTO `setting` VALUES ('26', 'filemanager_file_types', 'gif,jpe,jpeg,jpg,png,flv,mpeg,mpg,mp3,pdf', '');
INSERT INTO `setting` VALUES ('28', 'ionize_version', '1.0.0', '');
INSERT INTO `setting` VALUES ('29', 'upload_autostart', '1', '');
INSERT INTO `setting` VALUES ('30', 'resize_on_upload', '1', '');
INSERT INTO `setting` VALUES ('31', 'picture_max_width', '1200', '');
INSERT INTO `setting` VALUES ('32', 'picture_max_height', '1200', '');
INSERT INTO `setting` VALUES ('33', 'upload_mode', '', '');
INSERT INTO `setting` VALUES ('34', 'no_source_picture', 'default.png', '');
INSERT INTO `setting` VALUES ('35', 'enable_backend_tracker', '0', '');
INSERT INTO `setting` VALUES ('42', 'filemanager', 'mootools-filemanager', '');
INSERT INTO `setting` VALUES ('45', 'cache', '0', '');
INSERT INTO `setting` VALUES ('46', 'cache_time', '150', '');

-- ----------------------------
-- Table structure for `tag`
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id_tag` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_tag`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES ('1', 'Content Management');
INSERT INTO `tag` VALUES ('2', 'development');
INSERT INTO `tag` VALUES ('3', 'company');
INSERT INTO `tag` VALUES ('4', 'services');

-- ----------------------------
-- Table structure for `tracker`
-- ----------------------------
DROP TABLE IF EXISTS `tracker`;
CREATE TABLE `tracker` (
  `id_user` int(11) unsigned NOT NULL,
  `ip_address` varchar(32) DEFAULT NULL,
  `element` varchar(50) DEFAULT NULL,
  `id_element` int(11) DEFAULT NULL,
  `last_time` datetime DEFAULT NULL,
  `elements` varchar(3000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tracker
-- ----------------------------

-- ----------------------------
-- Table structure for `type`
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id_type` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `parent` char(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(3000) DEFAULT NULL,
  `ordering` smallint(6) NOT NULL,
  `view` varchar(50) DEFAULT NULL COMMENT 'view',
  `flag` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------

-- ----------------------------
-- Table structure for `url`
-- ----------------------------
DROP TABLE IF EXISTS `url`;
CREATE TABLE `url` (
  `id_url` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_entity` int(11) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `canonical` smallint(1) NOT NULL DEFAULT '0',
  `active` smallint(1) NOT NULL DEFAULT '0',
  `lang` varchar(3) NOT NULL,
  `path` varchar(255) NOT NULL DEFAULT '',
  `path_ids` varchar(50) DEFAULT NULL,
  `full_path_ids` varchar(50) DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  PRIMARY KEY (`id_url`),
  KEY `idx_url_type` (`type`),
  KEY `idx_url_active` (`active`),
  KEY `idx_url_lang` (`lang`)
) ENGINE=InnoDB AUTO_INCREMENT=633 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of url
-- ----------------------------
INSERT INTO `url` VALUES ('596', '4', 'article', '1', '1', 'en', 'home/the-power-of-php', '2/4', '2/4', '2012-12-23 01:05:34');
INSERT INTO `url` VALUES ('601', '1', 'page', '1', '1', 'en', '404', '1', '1', '2012-12-28 19:56:07');
INSERT INTO `url` VALUES ('602', '1', 'article', '1', '1', 'en', '404/404', '1/1', '1/1', '2012-12-28 19:56:07');
INSERT INTO `url` VALUES ('603', '2', 'page', '1', '1', 'en', 'home', '2', '2', '2012-12-28 19:56:07');
INSERT INTO `url` VALUES ('604', '11', 'article', '1', '1', 'en', 'home/easy-edition', '2/11', '2/11', '2012-12-28 19:56:07');
INSERT INTO `url` VALUES ('605', '12', 'article', '1', '1', 'en', 'home/multilingual', '2/12', '2/12', '2012-12-28 19:56:07');
INSERT INTO `url` VALUES ('606', '13', 'article', '1', '1', 'en', 'home/userfriendly', '2/13', '2/13', '2012-12-28 19:56:07');
INSERT INTO `url` VALUES ('607', '14', 'article', '1', '1', 'en', 'home/template-system', '2/14', '2/14', '2012-12-28 19:56:07');
INSERT INTO `url` VALUES ('608', '3', 'page', '1', '1', 'en', 'about-ionize-cms', '3', '3', '2012-12-28 19:56:07');
INSERT INTO `url` VALUES ('609', '15', 'article', '1', '1', 'en', 'about-ionize-cms/about-us-1', '3/15', '3/15', '2012-12-28 19:56:07');
INSERT INTO `url` VALUES ('610', '4', 'page', '1', '1', 'en', 'contact', '4', '4', '2012-12-28 19:56:07');
INSERT INTO `url` VALUES ('611', '24', 'article', '1', '1', 'en', 'contact/contact-informations', '4/24', '4/24', '2012-12-28 19:56:07');
INSERT INTO `url` VALUES ('612', '26', 'article', '1', '1', 'en', 'contact/our-location', '4/26', '4/26', '2012-12-28 19:56:07');
INSERT INTO `url` VALUES ('613', '29', 'article', '1', '1', 'en', 'contact/send-us-a-message', '4/29', '4/29', '2012-12-28 19:56:07');
INSERT INTO `url` VALUES ('614', '6', 'page', '1', '1', 'en', 'blog', '6', '6', '2012-12-28 19:56:07');
INSERT INTO `url` VALUES ('615', '5', 'article', '1', '1', 'en', 'blog/article-1', '6/5', '6/5', '2012-12-28 19:56:07');
INSERT INTO `url` VALUES ('616', '6', 'article', '1', '1', 'en', 'blog/article-2', '6/6', '6/6', '2012-12-28 19:56:07');
INSERT INTO `url` VALUES ('617', '7', 'article', '1', '1', 'en', 'blog/article-3', '6/7', '6/7', '2012-12-28 19:56:07');
INSERT INTO `url` VALUES ('618', '8', 'article', '1', '1', 'en', 'blog/article-4', '6/8', '6/8', '2012-12-28 19:56:07');
INSERT INTO `url` VALUES ('619', '9', 'article', '1', '1', 'en', 'blog/article-5', '6/9', '6/9', '2012-12-28 19:56:07');
INSERT INTO `url` VALUES ('620', '10', 'article', '1', '1', 'en', 'blog/article-6', '6/10', '6/10', '2012-12-28 19:56:07');
INSERT INTO `url` VALUES ('621', '8', 'page', '1', '1', 'en', 'services', '8', '8', '2012-12-28 19:56:07');
INSERT INTO `url` VALUES ('622', '17', 'article', '1', '1', 'en', 'services/some-of-our-services', '8/17', '8/17', '2012-12-28 19:56:07');
INSERT INTO `url` VALUES ('623', '18', 'article', '1', '1', 'en', 'services/service-1', '8/18', '8/18', '2012-12-28 19:56:07');
INSERT INTO `url` VALUES ('624', '19', 'article', '1', '1', 'en', 'services/service-2', '8/19', '8/19', '2012-12-28 19:56:07');
INSERT INTO `url` VALUES ('625', '20', 'article', '1', '1', 'en', 'services/service-3', '8/20', '8/20', '2012-12-28 19:56:07');
INSERT INTO `url` VALUES ('626', '9', 'page', '1', '1', 'en', 'footer', '9', '9', '2012-12-28 19:56:07');
INSERT INTO `url` VALUES ('627', '16', 'article', '1', '1', 'en', 'footer/footer-resources', '9/16', '9/16', '2012-12-28 19:56:07');
INSERT INTO `url` VALUES ('628', '27', 'article', '1', '1', 'en', 'footer/whats-ionize', '9/27', '9/27', '2012-12-28 19:56:07');
INSERT INTO `url` VALUES ('629', '28', 'article', '1', '1', 'en', 'footer/can-i-help', '9/28', '9/28', '2012-12-28 19:56:07');
INSERT INTO `url` VALUES ('630', '10', 'page', '1', '1', 'en', 'my-account', '10', '10', '2012-12-28 19:56:07');
INSERT INTO `url` VALUES ('631', '30', 'article', '1', '1', 'en', 'my-account/not-logged-in', '10/30', '10/30', '2012-12-28 19:56:07');
INSERT INTO `url` VALUES ('632', '31', 'article', '1', '1', 'en', 'my-account/hello', '10/31', '10/31', '2012-12-28 19:56:07');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id_user` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_role` smallint(4) unsigned NOT NULL,
  `join_date` timestamp NULL DEFAULT NULL,
  `last_visit` timestamp NULL DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `screen_name` varchar(50) DEFAULT NULL,
  `firstname` varchar(100) NOT NULL DEFAULT '',
  `lastname` varchar(100) DEFAULT NULL,
  `birthdate` datetime DEFAULT NULL,
  `gender` smallint(1) DEFAULT NULL COMMENT '1: Male, 2 : Female',
  `password` varchar(255) NOT NULL,
  `email` varchar(120) NOT NULL,
  `salt` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `username` (`username`),
  KEY `id_role` (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1', '2013-09-29 09:26:15', '2013-10-01 22:40:32', 'admin', 'gosschan', '', null, null, null, '46IO0wNQOlkcT77ELHOYcg==', 'goss@lunluoren.com', 'b218036a33375d71');
