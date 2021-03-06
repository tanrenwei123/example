/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : root

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-12-07 09:31:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `met_admin_array`
-- ----------------------------
DROP TABLE IF EXISTS `met_admin_array`;
CREATE TABLE `met_admin_array` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `array_name` varchar(255) NOT NULL,
  `admin_type` text NOT NULL,
  `admin_ok` int(11) NOT NULL DEFAULT '0',
  `admin_op` varchar(20) DEFAULT 'metinfo',
  `admin_issueok` int(11) NOT NULL DEFAULT '0',
  `admin_group` int(11) NOT NULL,
  `user_webpower` int(11) NOT NULL,
  `array_type` int(11) DEFAULT NULL,
  `lang` varchar(50) DEFAULT NULL,
  `langok` varchar(255) DEFAULT 'metinfo',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_admin_array
-- ----------------------------
INSERT INTO `met_admin_array` VALUES ('3', '管理员', 'metinfo', '1', 'metinfo', '0', '10000', '256', '2', 'metinfo', 'metinfo');
INSERT INTO `met_admin_array` VALUES ('1', '普通会员', '', '0', '', '0', '0', '1', '1', 'cn', '');
INSERT INTO `met_admin_array` VALUES ('2', '代理商', '', '0', '', '0', '0', '2', '1', 'cn', '');

-- ----------------------------
-- Table structure for `met_admin_column`
-- ----------------------------
DROP TABLE IF EXISTS `met_admin_column`;
CREATE TABLE `met_admin_column` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `bigclass` int(11) NOT NULL,
  `field` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `list_order` int(11) DEFAULT '0',
  `icon` varchar(255) DEFAULT NULL,
  `info` text NOT NULL,
  `display` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_admin_column
-- ----------------------------
INSERT INTO `met_admin_column` VALUES ('5', 'lang_unitytxt_39', '', '0', '0', '1', '7', '<i class=\"fa fa-sliders\"></i>', '', '1');
INSERT INTO `met_admin_column` VALUES ('73', 'lang_member', 'index.php?n=user&c=admin_user&a=doindex', '72', '1601', '2', '1', '<i class=\"fa fa-users\"></i>', '', '1');
INSERT INTO `met_admin_column` VALUES ('2', 'lang_content', '', '0', '0', '1', '1', '', '', '1');
INSERT INTO `met_admin_column` VALUES ('3', 'lang_marketing', '', '0', '0', '1', '2', '<i class=\"fa fa-money\"></i>', '', '1');
INSERT INTO `met_admin_column` VALUES ('4', 'lang_application', '', '0', '0', '1', '4', '', '', '1');
INSERT INTO `met_admin_column` VALUES ('74', 'lang_safety', '', '0', '0', '1', '6', '<i class=\"fa fa-shield\"></i>', '', '1');
INSERT INTO `met_admin_column` VALUES ('10', 'lang_language', 'system/lang/lang.php', '5', '1002', '2', '3', '<i class=\"fa fa-language\"></i>', '', '1');
INSERT INTO `met_admin_column` VALUES ('11', 'lang_indexpic', 'system/img.php', '5', '1003', '2', '4', '<i class=\"fa fa-picture-o\"></i>', '', '1');
INSERT INTO `met_admin_column` VALUES ('12', 'lang_safety_efficiency', 'system/safe.php', '74', '1004', '2', '1', '<i class=\"fa fa-shield\"></i>', '', '1');
INSERT INTO `met_admin_column` VALUES ('13', 'lang_data_processing', 'system/database/index.php', '74', '1005', '2', '2', '<i class=\"fa fa-database\"></i>', '', '1');
INSERT INTO `met_admin_column` VALUES ('57', 'lang_upfiletips7', 'index.php?n=webset&c=webset&a=doindex', '5', '1007', '2', '0', '<i class=\"fa fa-newspaper-o\"></i>', '', '1');
INSERT INTO `met_admin_column` VALUES ('18', 'lang_computer', 'index.php?n=theme&c=theme&a=doindex', '69', '1101', '2', '1', '<i class=\"fa fa-desktop\"></i>', '', '1');
INSERT INTO `met_admin_column` VALUES ('25', 'lang_htmColumn', 'column/index.php', '5', '1201', '2', '2', '<i class=\"fa fa-sitemap\"></i>', '', '1');
INSERT INTO `met_admin_column` VALUES ('29', 'lang_administration', 'content/content.php', '2', '1301', '2', '2', '<i class=\"fa fa-th-large\"></i>', '', '1');
INSERT INTO `met_admin_column` VALUES ('71', 'lang_customers', 'interface/online/index.php', '3', '1106', '2', '2', '<i class=\"fa fa-comments-o\"></i>', '', '1');
INSERT INTO `met_admin_column` VALUES ('70', 'lang_adminmobile', 'index.php?n=theme&c=theme&a=doindex&mobile=1', '69', '1102', '2', '2', '<i class=\"fa fa-mobile\"></i>', '', '1');
INSERT INTO `met_admin_column` VALUES ('69', 'lang_appearance', '', '0', '0', '1', '3', '<i class=\"fa fa-tachometer\"></i>', '', '1');
INSERT INTO `met_admin_column` VALUES ('34', 'lang_indexwebcount', 'app/stat/index.php', '3', '1401', '2', '1', '<i class=\"fa fa-line-chart\"></i>', '', '1');
INSERT INTO `met_admin_column` VALUES ('37', 'lang_seo', 'index.php?n=seo&c=seo&a=doindex', '3', '1404', '2', '3', '<i class=\"fa fa-check\"></i>', '', '1');
INSERT INTO `met_admin_column` VALUES ('39', 'lang_indexlink', 'seo/link/index.php', '3', '1406', '2', '4', '<i class=\"fa fa-link\"></i>', '', '1');
INSERT INTO `met_admin_column` VALUES ('40', 'lang_smsfuc', 'app/sms/sms.php', '44', '1503', '3', '3', 'sms.png', 'lang_dlapptips12', '0');
INSERT INTO `met_admin_column` VALUES ('42', 'lang_webnanny', 'app/nurse/index.php', '44', '1504', '3', '4', 'nurse.png', 'lang_dlapptips13', '0');
INSERT INTO `met_admin_column` VALUES ('43', 'lang_indexPhysical', 'app/physical/index.php', '44', '1501', '3', '7', 'physical.png', 'lang_dlapptips17', '1');
INSERT INTO `met_admin_column` VALUES ('44', 'lang_myapp', 'index.php?n=myapp&c=myapp&&a=doindex', '4', '1505', '2', '1', '<i class=\"fa fa-paper-plane\"></i>', '', '1');
INSERT INTO `met_admin_column` VALUES ('47', 'lang_managertyp2', 'admin/index.php', '72', '1603', '2', '2', '<i class=\"fa fa-users\"></i>', '', '1');
INSERT INTO `met_admin_column` VALUES ('68', 'lang_release', 'index.php?n=content&c=content&a=doadd', '2', '1301', '2', '1', '<i class=\"fa fa-plus\"></i>', '', '1');
INSERT INTO `met_admin_column` VALUES ('72', 'lang_the_user', '', '0', '0', '1', '5', '<i class=\"fa fa-user\"></i>', '', '1');
INSERT INTO `met_admin_column` VALUES ('75', 'lang_checkupdate', 'index.php?n=about&c=about&a=doindex', '5', '1104', '2', '5', '<i class=\"fa fa-info-circle\"></i>', '', '1');
INSERT INTO `met_admin_column` VALUES ('65', 'lang_dlapptips2', 'index.php?n=appstore&c=appstore&a=doindex', '4', '1507', '2', '9999', '<i class=\"fa fa-cube\"></i>', '', '1');
INSERT INTO `met_admin_column` VALUES ('77', 'lang_mobile_edition', 'app/wap/wap.php', '5', '1103', '2', '1', '<i class=\"fa fa-mobile\"></i>', '', '1');

-- ----------------------------
-- Table structure for `met_admin_table`
-- ----------------------------
DROP TABLE IF EXISTS `met_admin_table`;
CREATE TABLE `met_admin_table` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `admin_type` text NOT NULL,
  `admin_id` char(20) NOT NULL,
  `admin_pass` char(64) DEFAULT NULL,
  `admin_name` varchar(30) NOT NULL,
  `admin_sex` tinyint(1) NOT NULL DEFAULT '1',
  `admin_tel` varchar(20) DEFAULT NULL,
  `admin_mobile` varchar(20) DEFAULT NULL,
  `admin_email` varchar(150) DEFAULT NULL,
  `admin_qq` varchar(12) NOT NULL,
  `admin_msn` varchar(40) NOT NULL,
  `admin_taobao` varchar(40) NOT NULL,
  `admin_introduction` text,
  `admin_login` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_modify_ip` varchar(20) DEFAULT NULL,
  `admin_modify_date` datetime DEFAULT NULL,
  `admin_register_date` datetime DEFAULT NULL,
  `admin_approval_date` datetime DEFAULT NULL,
  `admin_ok` int(11) NOT NULL DEFAULT '0',
  `admin_op` varchar(20) DEFAULT 'metinfo',
  `admin_issueok` int(11) NOT NULL DEFAULT '0',
  `admin_group` int(11) NOT NULL,
  `companyname` varchar(255) DEFAULT NULL,
  `companyaddress` varchar(255) DEFAULT NULL,
  `companyfax` varchar(255) DEFAULT NULL,
  `usertype` int(11) DEFAULT '0',
  `checkid` int(1) DEFAULT '0',
  `companycode` varchar(50) DEFAULT NULL,
  `companywebsite` varchar(50) DEFAULT NULL,
  `cookie` text NOT NULL,
  `admin_shortcut` text NOT NULL,
  `lang` varchar(50) DEFAULT NULL,
  `content_type` tinyint(4) DEFAULT NULL,
  `langok` varchar(255) DEFAULT 'metinfo',
  PRIMARY KEY (`id`),
  KEY `admin_id` (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_admin_table
-- ----------------------------
INSERT INTO `met_admin_table` VALUES ('1', 'metinfo', 'admin', '21232f297a57a5a743894a0e4a801fc3', '', '1', null, '13530960821', '981869782@qq.com', '', '', '', '创始人', '9', '160.19.50.68', '2017-12-07 09:30:28', '2017-11-01 06:25:19', null, '1', 'metinfo', '0', '10000', null, null, null, '3', '0', null, null, '{\"metinfo_admin_name\":\"admin\",\"metinfo_admin_pass\":\"21232f297a57a5a743894a0e4a801fc3\",\"metinfo_admin_id\":\"1\",\"metinfo_admin_type\":\"3\",\"metinfo_admin_pop\":\"metinfo\",\"metinfo_admin_time\":1512610228,\"metinfo_admin_lang\":\"metinfo\",\"metinfo_admin_shortcut\":[{\"name\":\"lang_skinbaseset\",\"url\":\"system/basic.php?anyid=9&lang=cn\",\"bigclass\":\"1\",\"field\":\"s1001\",\"type\":\"2\",\"list_order\":\"10\",\"protect\":\"1\",\"hidden\":\"0\",\"lang\":\"lang_skinbaseset\"},{\"name\":\"lang_indexcolumn\",\"url\":\"column/index.php?anyid=25&lang=cn\",\"bigclass\":\"1\",\"field\":\"s1201\",\"type\":\"2\",\"list_order\":\"0\",\"protect\":\"1\",\"hidden\":\"0\",\"lang\":\"lang_indexcolumn\"},{\"name\":\"lang_unitytxt_75\",\"url\":\"interface/skin_editor.php?anyid=18&lang=cn\",\"bigclass\":\"1\",\"field\":\"s1101\",\"type\":\"2\",\"list_order\":\"0\",\"protect\":\"1\",\"hidden\":\"0\",\"lang\":\"lang_unitytxt_75\"},{\"name\":\"lang_tmptips\",\"url\":\"interface/info.php?anyid=24&lang=cn\",\"bigclass\":\"1\",\"field\":\"\",\"type\":\"2\",\"list_order\":\"0\",\"protect\":\"1\",\"hidden\":\"0\",\"lang\":\"lang_tmptips\"},{\"name\":\"lang_mod2add\",\"url\":\"content/article/content.php?action=add&lang=cn&anyid=29\",\"bigclass\":\"1\",\"field\":\"\",\"type\":\"2\",\"list_order\":\"0\",\"protect\":\"0\",\"hidden\":\"0\",\"lang\":\"lang_mod2add\"},{\"name\":\"lang_mod3add\",\"url\":\"content/product/content.php?action=add&lang=cn&anyid=29\",\"bigclass\":\"1\",\"field\":\"\",\"type\":2,\"list_order\":\"0\",\"protect\":0}],\"languser\":\"cn\",\"time\":1512610248,\"metinfo_member_type\":256}', '[{\"name\":\"lang_skinbaseset\",\"url\":\"system/basic.php?anyid=9&lang=cn\",\"bigclass\":\"1\",\"field\":\"s1001\",\"type\":\"2\",\"list_order\":\"10\",\"protect\":\"1\",\"hidden\":\"0\",\"lang\":\"lang_skinbaseset\"},{\"name\":\"lang_indexcolumn\",\"url\":\"column/index.php?anyid=25&lang=cn\",\"bigclass\":\"1\",\"field\":\"s1201\",\"type\":\"2\",\"list_order\":\"0\",\"protect\":\"1\",\"hidden\":\"0\",\"lang\":\"lang_indexcolumn\"},{\"name\":\"lang_unitytxt_75\",\"url\":\"interface/skin_editor.php?anyid=18&lang=cn\",\"bigclass\":\"1\",\"field\":\"s1101\",\"type\":\"2\",\"list_order\":\"0\",\"protect\":\"1\",\"hidden\":\"0\",\"lang\":\"lang_unitytxt_75\"},{\"name\":\"lang_tmptips\",\"url\":\"interface/info.php?anyid=24&lang=cn\",\"bigclass\":\"1\",\"field\":\"\",\"type\":\"2\",\"list_order\":\"0\",\"protect\":\"1\",\"hidden\":\"0\",\"lang\":\"lang_tmptips\"},{\"name\":\"lang_mod2add\",\"url\":\"content/article/content.php?action=add&lang=cn&anyid=29\",\"bigclass\":\"1\",\"field\":\"\",\"type\":\"2\",\"list_order\":\"0\",\"protect\":\"0\",\"hidden\":\"0\",\"lang\":\"lang_mod2add\"},{\"name\":\"lang_mod3add\",\"url\":\"content/product/content.php?action=add&lang=cn&anyid=29\",\"bigclass\":\"1\",\"field\":\"\",\"type\":2,\"list_order\":\"0\",\"protect\":0}]', null, '1', 'metinfo');

-- ----------------------------
-- Table structure for `met_app`
-- ----------------------------
DROP TABLE IF EXISTS `met_app`;
CREATE TABLE `met_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no` varchar(10) NOT NULL,
  `ver` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `file` varchar(255) NOT NULL,
  `download` tinyint(1) NOT NULL,
  `power` int(11) NOT NULL,
  `sys` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `site` varchar(255) NOT NULL,
  `url` tinytext NOT NULL,
  `info` text NOT NULL,
  `addtime` int(11) NOT NULL,
  `updatetime` int(11) NOT NULL,
  `display` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_app
-- ----------------------------
INSERT INTO `met_app` VALUES ('2', '2', '1.0', '地址栏图标', 'ico', '0', '0', '5.0 Beta', '5.jpg', '0', '', '能够上传制作好的ICO小图标，该图标会显示在浏览器顶部的左上角。', '0', '0', '1');
INSERT INTO `met_app` VALUES ('3', '3', '1.0', '分享按钮', 'share', '0', '0', '5.0 Beta', '6.jpg', '2', '/app/share/share.php', '常常看到一些页面有分享按钮，此应用就可以设置分享按钮，或者自定义分享按钮代码。', '0', '0', '1');
INSERT INTO `met_app` VALUES ('4', '4', '1.0', '内容批量替换器', 'replace', '0', '0', '5.0 Beta', '8.jpg', '0', '', '能够批量替换内容文字、超链接、图片路径，如公司地址、电话、某个链接地址变更，逐个修改效率太低，此应用是很好的解决办法。', '0', '0', '1');
INSERT INTO `met_app` VALUES ('5', '5', '1.1', '在线订购', 'shop', '0', '1', '5.1.2', '9.jpg', '2-3-4', '/app/shop/2.php-/app/shop/3.php-/app/shop/4.php', '可以为产品内容页增加立即购买按钮并支持在线购买产品，有购物车功能和顺畅的购买流程，网站后台可以查看会员下的订单、财务流水，也可以根据需求设置在线订购的部分功能，目前只支持支付宝即时到帐接口且只支持中文（多语言在线订购功能后续升级包会推出）。', '0', '0', '1');
INSERT INTO `met_app` VALUES ('6', '6', '1.0', '站内广告', 'advs', '0', '1', '5.1.6', 'advs.png', '2', '/app/advs/advs.php', '目前支持三种广告方式：对联广告、通栏广告（页面顶部展开后隐藏或悬浮页面中间）、右下角广告（支持自定义HTML）。能够将广告投放在指定栏目页面中，可以设置广告开始日期和结束日期（结束后不再展示），可以设置广告在页面出现后展示时长（超过时间自动消失）等。', '1368489600', '1368489600', '1');
INSERT INTO `met_app` VALUES ('7', '7', '1.0', 'robots在线修改器', 'robots', '0', '0', '5.0 Beta', 'robots.png', '', '', '网站通过robots协议告诉搜索引擎哪些页面可以抓取，哪些页面不能抓取。此工具用来在线修改robots。', '0', '0', '1');
INSERT INTO `met_app` VALUES ('8', '8', '1.12', '手机版（商业版）', 'wap', '0', '1', '5.2.9', 'wap.png', '1-2', '/app/wap/wapjs.php-/app/wap/menu_map.php', '用于网站在移动终端展示的功能', '1389002714', '1410307200', '1');
INSERT INTO `met_app` VALUES ('9', '9', '1.01', '微信公众号管理系统', 'weixin', '0', '0', '5.2.3', 'weixin.jpg', '1', '/app/weixin/is_weixin.php', '自定义菜单、微官网、智能回复...移动网络营销必备！企业网络营销不仅仅是在电脑上，手机市场更需要争夺。', '1395044072', '1395044072', '1');
INSERT INTO `met_app` VALUES ('10', '10', '1.01', '360安全检测', '360', '0', '0', '5.2.5', '360.jpg', '1', '/app/360/360wed.php', '由360安装中心提供的网站安全应用，拥有防护黑客攻击与后门木马查杀两大功能。', '0', '0', '1');

-- ----------------------------
-- Table structure for `met_applist`
-- ----------------------------
DROP TABLE IF EXISTS `met_applist`;
CREATE TABLE `met_applist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no` int(11) NOT NULL,
  `ver` varchar(50) NOT NULL,
  `m_name` varchar(50) NOT NULL,
  `m_class` varchar(50) NOT NULL,
  `m_action` varchar(50) NOT NULL,
  `appname` varchar(50) NOT NULL,
  `info` text NOT NULL,
  `addtime` int(11) NOT NULL,
  `updatetime` int(11) NOT NULL,
  `target` int(11) NOT NULL DEFAULT '0',
  `display` int(11) NOT NULL DEFAULT '1',
  `depend` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_applist
-- ----------------------------
INSERT INTO `met_applist` VALUES ('1', '0', '1.0', 'ueditor', 'index', 'doindex', '百度编辑器', '编辑器', '0', '0', '0', '0', '');
INSERT INTO `met_applist` VALUES ('2', '10070', '1.0', 'met_sms', 'index', 'doindex', '短信功能', '短信接口', '0', '0', '0', '1', '');
INSERT INTO `met_applist` VALUES ('3', '10012', '1.4', 'temtool', 'temtool', 'dotemlist', '模板制作助手', '模板制作必备工具！能够在线配置自定义标签，实现灵活且体验好的模板。能够在线添加自己制作的模板（除应用市场获取外唯一添加模板的渠道）。能够提供模板制作相关资源、指引甚至培训。', '0', '1511148760', '0', '1', null);

-- ----------------------------
-- Table structure for `met_app_plugin`
-- ----------------------------
DROP TABLE IF EXISTS `met_app_plugin`;
CREATE TABLE `met_app_plugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_order` int(11) NOT NULL,
  `no` int(11) NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `m_action` varchar(255) NOT NULL,
  `effect` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_app_plugin
-- ----------------------------

-- ----------------------------
-- Table structure for `met_column`
-- ----------------------------
DROP TABLE IF EXISTS `met_column`;
CREATE TABLE `met_column` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `foldername` varchar(50) DEFAULT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `bigclass` int(11) DEFAULT '0',
  `samefile` int(11) NOT NULL DEFAULT '0',
  `module` int(11) DEFAULT NULL,
  `no_order` int(11) DEFAULT NULL,
  `wap_ok` int(1) DEFAULT '0',
  `wap_nav_ok` int(11) NOT NULL DEFAULT '0',
  `if_in` int(1) DEFAULT '0',
  `nav` int(1) DEFAULT '0',
  `ctitle` varchar(200) DEFAULT NULL,
  `keywords` varchar(200) DEFAULT NULL,
  `content` longtext,
  `description` text,
  `list_order` int(11) DEFAULT '0',
  `new_windows` varchar(50) DEFAULT NULL,
  `classtype` int(11) DEFAULT '1',
  `out_url` varchar(200) DEFAULT NULL,
  `index_num` int(11) DEFAULT '0',
  `access` int(11) DEFAULT '0',
  `indeximg` varchar(255) DEFAULT NULL,
  `columnimg` varchar(255) DEFAULT NULL,
  `isshow` int(11) DEFAULT '1',
  `lang` varchar(50) DEFAULT NULL,
  `namemark` varchar(255) DEFAULT NULL,
  `releclass` int(11) DEFAULT '0',
  `display` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_column
-- ----------------------------

-- ----------------------------
-- Table structure for `met_config`
-- ----------------------------
DROP TABLE IF EXISTS `met_config`;
CREATE TABLE `met_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `mobile_value` text NOT NULL,
  `columnid` int(11) NOT NULL,
  `flashid` int(11) NOT NULL,
  `lang` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4419 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_config
-- ----------------------------
INSERT INTO `met_config` VALUES ('1', 'met_nurse_link_tel', '', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('2', 'met_nurse_link', '0', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('3', 'metcms_v', '5.3.19', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('4', 'met_nurse_job_tel', '', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('5', 'met_nurse_job', '0', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('6', 'met_nurse_massge_tel', '', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('7', 'met_nurse_massge', '0', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('8', 'met_nurse_feed_tel', '', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('9', 'met_nurse_feed', '0', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('10', 'met_nurse_member_tel', '', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('11', 'met_nurse_member', '0', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('12', 'met_nurse_monitor_tel', '', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('13', 'met_nurse_monitor_timeb', '23', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('14', 'met_nurse_monitor_timea', '0', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('15', 'met_apptime', '1373858456', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('16', 'met_nurse_monitor_weeka', '1', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('17', 'met_nurse_monitor_fre', '1', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('18', 'met_nurse_monitor', '0', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('19', 'met_host', 'api.metinfo.cn', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('20', 'met_nurse_stat', '0', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('21', 'met_nurse_stat_tel', '', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('22', 'met_nurse_max', '10', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('24', 'met_adminfile', 'f73aGia43t+7H55rD3PqM9dtC7zpQpqLBgiAtX8j50OasdpfEJh2', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('25', 'met_ch_lang', '1', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('26', 'met_stat_max', '10000', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('27', 'met_stat_cr5', '2', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('28', 'met_stat_cr4', '3', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('29', 'met_stat_cr3', '3', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('30', 'met_stat_cr1', '0', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('31', 'met_stat_cr2', '3', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('32', 'met_stat', '1', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('33', 'met_ch_mark', 'cn', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('34', 'met_lang_editor', '', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('35', 'met_lang_mark', '1', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('566', 'met_agents_web_site', '', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('37', 'met_admin_type_ok', '0', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('38', 'met_admin_type', 'cn', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('39', 'met_sitemap_lang', '1', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('40', 'met_sitemap_not2', '1', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('41', 'met_sitemap_not1', '0', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('42', 'met_sitemap_txt', '0', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('43', 'met_sitemap_xml', '1', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('44', 'met_index_type', 'cn', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('45', 'met_nurse_monitor_weekb', '1', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('46', 'physical_time', '2013-12-26 17:23:41', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('47', 'physical_admin', '0', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('48', 'physical_backup', '0', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('49', 'physical_update', '528', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('50', 'physical_seo', '1|1|1|', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('51', 'physical_static', '1', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('52', 'physical_unread', '0|3|0', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('53', 'physical_spam', '1', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('54', 'physical_member', '1', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('55', 'physical_web', '0', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('56', 'physical_file', '2|include/common.inc.php|,2|include/global/pseudo.php|,2|include/global/showmod.php|,2|include/global.func.php|,2|include/head.php|,1|install_bak/index.php|,1|install_bak/js/IE6-png.js|,1|install_bak/js/install.js|,1|lang/google_lang.php|,2|lang/lang.php|,2|lang/lang_en.php|,1|lang.php|,2|member/captcha.class.php|,2|member/save.php|,1|power.php|,1|public/js/mobile.js|,2|public/php/metlabel.inc.php|,2|wap/index.php|,2|admin/admin/save.php|,2|admin/app/dlapp/delapp.php|,2|admin/app/sms/sms.php|,1|admin/app/wap/content.php|,1|admin/app/wap/flash.php|,1|admin/app/wap/flashadd.php|,1|admin/app/wap/flashdelete.php|,1|admin/app/wap/flashedit.php|,1|admin/app/wap/flashsave.php|,1|admin/app/wap/index.php|,1|admin/app/wap/list.php|,1|admin/app/wap/map.php|,1|admin/app/wap/setflash.php|,1|admin/app/wap/skin_editor.php|,1|admin/app/wap/skin_manager.php|,2|admin/app/wap/wap.php|,2|admin/column/copycolumn.php|,2|admin/content/content.php|,2|admin/include/captcha.class.php|,2|admin/include/global.func.php|,2|admin/include/lang.php|,2|admin/include/metlist.php|,2|admin/include/return.php|,2|admin/interface/skin.php|,2|admin/interface/skin_editor.php|,2|admin/interface/skin_manager.php|,2|admin/seo/htm.php|,2|admin/system/lang/lang.php|,2|admin/system/olupdate.php|,2|admin/system/shortcut.php|,2|admin/system/shortcut_editor.php|,2|admin/system/sysadmin.php|,2|admin/system/universal.php|,2|admin/templates/met/admin/admin.html|,2|admin/templates/met/admin/admin_editor.html|,2|admin/templates/met/app/dlapp/dlapp.html|,2|admin/templates/met/app/dlapp/index.html|,2|admin/templates/met/app/sms/sms.html|,1|admin/templates/met/app/wap/content.html|,1|admin/templates/met/app/wap/flash.html|,1|admin/templates/met/app/wap/flashadd.html|,1|admin/templates/met/app/wap/flashedit.html|,1|admin/templates/met/app/wap/index.html|,1|admin/templates/met/app/wap/list.html|,1|admin/templates/met/app/wap/map.html|,1|admin/templates/met/app/wap/setflash.html|,1|admin/templates/met/app/wap/skin.html|,1|admin/templates/met/app/wap/skin_editor.html|,1|admin/templates/met/app/wap/top.html|,2|admin/templates/met/app/wap/wap.html|,2|admin/templates/met/content/article/article.html|,2|admin/templates/met/content/content.html|,2|admin/templates/met/content/download/download.html|,2|admin/templates/met/content/img/img.html|,2|admin/templates/met/content/product/product.html|,2|admin/templates/met/head.html|,2|admin/templates/met/images/js/iframes.js|,2|admin/templates/met/images/js/metinfo.js|,2|admin/templates/met/index.html|,2|admin/templates/met/interface/online/online.html|,2|admin/templates/met/interface/set_skin.html|,2|admin/templates/met/interface/skin.html|,2|admin/templates/met/interface/skin_editor.html|,2|admin/templates/met/seo/htm.html|,2|admin/templates/met/system/database/filedown.html|,2|admin/templates/met/system/set_safe.html|,2|admin/templates/met/system/shortcut.html|,2|admin/templates/met/system/shortcut_editor.html|,2|admin/templates/met/system/sysadmin.html|,2|admin/templates/met/system/universal.html|,2|admin/templates/met/system/uploadfile.html|,1|public/ui/mobile/addlink.html|,1|public/ui/mobile/ajax/download.html|,1|public/ui/mobile/ajax/img.html|,1|public/ui/mobile/ajax/job.html|,1|public/ui/mobile/ajax/member/cv.html|,1|public/ui/mobile/ajax/member/feedback.html|,1|public/ui/mobile/ajax/member/message.html|,1|public/ui/mobile/ajax/message.html|,1|public/ui/mobile/ajax/news.html|,1|public/ui/mobile/ajax/product.html|,1|public/ui/mobile/ajax/seach.html|,1|public/ui/mobile/cv.html|,1|public/ui/mobile/download.html|,1|public/ui/mobile/feedback.html|,1|public/ui/mobile/gap.html|,1|public/ui/mobile/img.html|,1|public/ui/mobile/job.html|,1|public/ui/mobile/link_index.html|,1|public/ui/mobile/member/basic.html|,1|public/ui/mobile/member/cv.html|,1|public/ui/mobile/member/cv_detail.html|,1|public/ui/mobile/member/editor.html|,1|public/ui/mobile/member/feedback.html|,1|public/ui/mobile/member/feedback_detail.html|,1|public/ui/mobile/member/getpassword.html|,1|public/ui/mobile/member/login.html|,1|public/ui/mobile/member/message.html|,1|public/ui/mobile/member/message_detail.html|,1|public/ui/mobile/member/register.html|,1|public/ui/mobile/member.html|,1|public/ui/mobile/message_index.html|,1|public/ui/mobile/news.html|,1|public/ui/mobile/product.html|,1|public/ui/mobile/search.html|,1|public/ui/mobile/show.html|,1|public/ui/mobile/showdownload.html|,1|public/ui/mobile/showimg.html|,1|public/ui/mobile/showjob.html|,1|public/ui/mobile/shownews.html|,1|public/ui/mobile/showproduct.html|,1|public/ui/mobile/sitemap.html|,2|wap/templates/met/head.html|', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('57', 'physical_fingerprint', '3|install_bak/index.php|,3|install_bak/js/IE6-png.js|,3|install_bak/js/install.js|,3|lang/google_lang.php|,3|public/js/mobile.js|,3|templates/leadway/addlink.php|,3|templates/leadway/config.php|,3|templates/leadway/config02.php|,3|templates/leadway/cv.php|,3|templates/leadway/database.inc.php|,3|templates/leadway/download.php|,3|templates/leadway/feedback.php|,3|templates/leadway/foot.php|,3|templates/leadway/head.php|,3|templates/leadway/head03.php|,3|templates/leadway/images/js/cn.index.js|,3|templates/leadway/images/js/fixPNG.js|,3|templates/leadway/images/js/fun.inc.js|,3|templates/leadway/images/js/fun.inc01.js|,3|templates/leadway/images/js/image.js|,3|templates/leadway/images/js/indexx.js|,3|templates/leadway/images/js/jquery.slider.min.js|,3|templates/leadway/img.php|,3|templates/leadway/index.php|,3|templates/leadway/info.html|,3|templates/leadway/job.php|,3|templates/leadway/link_index.php|,3|templates/leadway/login.php|,3|templates/leadway/member.php|,3|templates/leadway/message.php|,3|templates/leadway/message_index.php|,3|templates/leadway/metinfo.inc.php|,3|templates/leadway/news.php|,3|templates/leadway/otherinfo.inc.php|,3|templates/leadway/product.php|,3|templates/leadway/register.php|,3|templates/leadway/search.php|,3|templates/leadway/show.php|,3|templates/leadway/showdownload.php|,3|templates/leadway/showimg.php|,3|templates/leadway/showjob.php|,3|templates/leadway/shownews.php|,3|templates/leadway/showproduct.php|,3|templates/leadway/sidebar.php|,3|templates/leadway/sidebar02.php|,3|templates/leadway/sitemap.php|,3|templates/wap001/block/about.html|,3|templates/wap001/block/imgtxt.html|,3|templates/wap001/block/imgtxtshow.html|,3|templates/wap001/block/map.html|,3|templates/wap001/block/newslist.html|,3|templates/wap001/config.html|,3|templates/wap001/foot.html|,3|templates/wap001/head.html|,3|templates/wap001/images/css/css.inc.php|,3|templates/wap001/images/gmu/js/core/event.js|,3|templates/wap001/images/gmu/js/core/gmu.js|,3|templates/wap001/images/gmu/js/core/widget.js|,3|templates/wap001/images/gmu/js/extend/detect.js|,3|templates/wap001/images/gmu/js/extend/event.ortchange.js|,3|templates/wap001/images/gmu/js/extend/event.scrollStop.js|,3|templates/wap001/images/gmu/js/extend/fix.js|,3|templates/wap001/images/gmu/js/extend/highlight.js|,3|templates/wap001/images/gmu/js/extend/imglazyload.js|,3|templates/wap001/images/gmu/js/extend/iscroll.js|,3|templates/wap001/images/gmu/js/extend/matchMedia.js|,3|templates/wap001/images/gmu/js/extend/offset.js|,3|templates/wap001/images/gmu/js/extend/parseTpl.js|,3|templates/wap001/images/gmu/js/extend/position.js|,3|templates/wap001/images/gmu/js/extend/support.js|,3|templates/wap001/images/gmu/js/extend/throttle.js|,3|templates/wap001/images/gmu/js/extend/touch.js|,3|templates/wap001/images/gmu/js/widget/add2desktop/add2desktop.js|,3|templates/wap001/images/gmu/js/widget/button/$input.js|,3|templates/wap001/images/gmu/js/widget/button/button.js|,3|templates/wap001/images/gmu/js/widget/calendar/$picker.js|,3|templates/wap001/images/gmu/js/widget/calendar/calendar.js|,3|templates/wap001/images/gmu/js/widget/dialog/$position.js|,3|templates/wap001/images/gmu/js/widget/dialog/dialog.js|,3|templates/wap001/images/gmu/js/widget/dropmenu/dropmenu.js|,3|templates/wap001/images/gmu/js/widget/dropmenu/horizontal.js|,3|templates/wap001/images/gmu/js/widget/dropmenu/placement.js|,3|templates/wap001/images/gmu/js/widget/gotop/$iscroll.js|,3|templates/wap001/images/gmu/js/widget/gotop/gotop.js|,3|templates/wap001/images/gmu/js/widget/historylist/historylist.js|,3|templates/wap001/images/gmu/js/widget/navigator/$scrollable.js|,3|templates/wap001/images/gmu/js/widget/navigator/evenness.js|,3|templates/wap001/images/gmu/js/widget/navigator/navigator.js|,3|templates/wap001/images/gmu/js/widget/navigator/scrolltonext.js|,3|templates/wap001/images/gmu/js/widget/panel/panel.js|,3|templates/wap001/images/gmu/js/widget/popover/arrow.js|,3|templates/wap001/images/gmu/js/widget/popover/collision.js|,3|templates/wap001/images/gmu/js/widget/popover/dismissible.js|,3|templates/wap001/images/gmu/js/widget/popover/placement.js|,3|templates/wap001/images/gmu/js/widget/popover/popover.js|,3|templates/wap001/images/gmu/js/widget/progressbar/progressbar.js|,3|templates/wap001/images/gmu/js/widget/refresh/$iOS5.js|,3|templates/wap001/images/gmu/js/widget/refresh/$iscroll.js|,3|templates/wap001/images/gmu/js/widget/refresh/$lite.js|,3|templates/wap001/images/gmu/js/widget/refresh/refresh.js|,3|templates/wap001/images/gmu/js/widget/slider/$autoplay.js|,3|templates/wap001/images/gmu/js/widget/slider/$dynamic.js|,3|templates/wap001/images/gmu/js/widget/slider/$lazyloadimg.js|,3|templates/wap001/images/gmu/js/widget/slider/$multiview.js|,3|templates/wap001/images/gmu/js/widget/slider/$touch.js|,3|templates/wap001/images/gmu/js/widget/slider/arrow.js|,3|templates/wap001/images/gmu/js/widget/slider/dots.js|,3|templates/wap001/images/gmu/js/widget/slider/imgzoom.js|,3|templates/wap001/images/gmu/js/widget/slider/slider.js|,3|templates/wap001/images/gmu/js/widget/suggestion/$iscroll.js|,3|templates/wap001/images/gmu/js/widget/suggestion/$posadapt.js|,3|templates/wap001/images/gmu/js/widget/suggestion/$quickdelete.js|,3|templates/wap001/images/gmu/js/widget/suggestion/compatdata.js|,3|templates/wap001/images/gmu/js/widget/suggestion/renderlist.js|,3|templates/wap001/images/gmu/js/widget/suggestion/sendrequest.js|,3|templates/wap001/images/gmu/js/widget/suggestion/suggestion.js|,3|templates/wap001/images/gmu/js/widget/tabs/$ajax.js|,3|templates/wap001/images/gmu/js/widget/tabs/$swipe.js|,3|templates/wap001/images/gmu/js/widget/tabs/tabs.js|,3|templates/wap001/images/gmu/js/widget/toolbar/$position.js|,3|templates/wap001/images/gmu/js/widget/toolbar/toolbar.js|,3|templates/wap001/images/gmu/js/zepto.js|,3|templates/wap001/images/js/fun.inc.js|,3|templates/wap001/images/js/met_Verification.js|,3|templates/wap001/index.html|,3|templates/wap001/metinfo.inc.php|,3|templates/wap001/mtop.html|,3|templates/wap001/otherinfo.inc.php|,3|templates/wap001/sidebar.html|,3|templates/wap001/top.html|,3|templates/yongtai/config.php|,3|templates/yongtai/foot.php|,3|templates/yongtai/head.php|,3|templates/yongtai/images/js/fun.inc.js|,3|templates/yongtai/images/js/lavaLamp/flash.js|,3|templates/yongtai/images/js/lavaLamp/jquery-1.1.3.1.min.js|,3|templates/yongtai/images/js/lavaLamp/jquery.easing.min.js|,3|templates/yongtai/images/js/lavaLamp/jquery.lavalamp.js|,3|templates/yongtai/images/js/lavaLamp/jquery.lavalamp.min.js|,3|templates/yongtai/img.php|,3|templates/yongtai/index.php|,3|templates/yongtai/metinfo.inc.php|,3|templates/yongtai/otherinfo.inc.php|,3|templates/yongtai/product.php|,3|templates/yongtai/showproduct.php|,3|templates/yongtai/sidebar.php|,3|admin/app/wap/content.php|,3|admin/app/wap/flash.php|,3|admin/app/wap/flashadd.php|,3|admin/app/wap/flashdelete.php|,3|admin/app/wap/flashedit.php|,3|admin/app/wap/flashsave.php|,3|admin/app/wap/index.php|,3|admin/app/wap/list.php|,3|admin/app/wap/map.php|,3|admin/app/wap/setflash.php|,3|admin/app/wap/skin_editor.php|,3|admin/app/wap/skin_manager.php|,3|admin/templates/met/app/wap/content.html|,3|admin/templates/met/app/wap/flash.html|,3|admin/templates/met/app/wap/flashadd.html|,3|admin/templates/met/app/wap/flashedit.html|,3|admin/templates/met/app/wap/index.html|,3|admin/templates/met/app/wap/list.html|,3|admin/templates/met/app/wap/map.html|,3|admin/templates/met/app/wap/setflash.html|,3|admin/templates/met/app/wap/skin.html|,3|admin/templates/met/app/wap/skin_editor.html|,3|admin/templates/met/app/wap/top.html|,2|config/config_safe.php|,1|cx.php|,1|file.php|,2|include/common.inc.php|,2|include/global/pseudo.php|,2|include/global/showmod.php|,2|include/global.func.php|,2|include/head.php|,2|include/lang.php|,1|install/index.php|,1|install/js/IE6-png.js|,1|install/js/install.js|,1|install/lang_cn_520.php|,1|install/lang_en_520.php|,1|install/phpinfo.php|,2|lang/lang.php|,1|lang/lang_cn.php|,2|lang/lang_en.php|,1|lang/lang_insert.php|,2|lang.php|,2|member/captcha.class.php|,2|member/save.php|,2|power.php|,2|public/php/metlabel.inc.php|,2|wap/index.php|,2|templates/default/config.html|,2|templates/default/index.html|,2|templates/default/metinfo.inc.php|,2|admin/admin/add.php|,2|admin/admin/save.php|,2|admin/app/dlapp/delapp.php|,2|admin/app/physical/physical.fun.php|,2|admin/app/physical/trust.php|,2|admin/app/sms/sms.php|,2|admin/app/wap/wap.php|,2|admin/column/copycolumn.php|,2|admin/content/content.php|,2|admin/include/captcha.class.php|,2|admin/include/global.func.php|,2|admin/include/lang.php|,2|admin/include/metlist.php|,2|admin/include/return.php|,2|admin/interface/flash/flash.php|,2|admin/interface/flash/flashdelete.php|,2|admin/interface/flash/flashsave.php|,2|admin/interface/flash/setflash.php|,2|admin/interface/skin.php|,2|admin/interface/skin_editor.php|,2|admin/interface/skin_manager.php|,2|admin/seo/htm.php|,2|admin/system/database/recovery.php|,2|admin/system/lang/lang.php|,2|admin/system/olupdate.php|,2|admin/system/shortcut.php|,2|admin/system/shortcut_editor.php|,2|admin/system/sysadmin.php|,2|admin/system/universal.php|,2|admin/templates/met/admin/admin.html|,2|admin/templates/met/admin/admin_add.html|,2|admin/templates/met/admin/admin_editor.html|,2|admin/templates/met/app/dlapp/dlapp.html|,2|admin/templates/met/app/dlapp/index.html|,2|admin/templates/met/app/sms/sms.html|,2|admin/templates/met/app/wap/wap.html|,2|admin/templates/met/content/article/article.html|,2|admin/templates/met/content/content.html|,2|admin/templates/met/content/download/download.html|,2|admin/templates/met/content/img/img.html|,2|admin/templates/met/content/product/product.html|,2|admin/templates/met/head.html|,2|admin/templates/met/images/js/iframes.js|,2|admin/templates/met/images/js/metinfo.js|,2|admin/templates/met/index.html|,2|admin/templates/met/interface/flash/flash.html|,2|admin/templates/met/interface/flash/flashadd.html|,2|admin/templates/met/interface/flash/flashedit.html|,2|admin/templates/met/interface/flash/setflash.html|,1|admin/templates/met/interface/flash/top.html|,2|admin/templates/met/interface/online/online.html|,2|admin/templates/met/interface/set_skin.html|,2|admin/templates/met/interface/skin.html|,2|admin/templates/met/interface/skin_editor.html|,1|admin/templates/met/interface/skin_top.html|,2|admin/templates/met/metlangs.html|,2|admin/templates/met/seo/htm.html|,2|admin/templates/met/seo/sitemap.html|,2|admin/templates/met/system/database/filedown.html|,2|admin/templates/met/system/set_safe.html|,2|admin/templates/met/system/shortcut.html|,2|admin/templates/met/system/shortcut_editor.html|,2|admin/templates/met/system/sysadmin.html|,2|admin/templates/met/system/universal.html|,2|admin/templates/met/system/uploadfile.html|', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('58', 'physical_function', '1', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('59', 'met_member_force', 'wpybcsn', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('61', 'met_nurse_sendtime', '10', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('62', 'met_recycle', '1', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('534', 'met_tablename', 'admin_array|admin_table|app|admin_column|column|config|cv|download|feedback|flash|flist|img|job|label|lang|language|link|list|message|news|online|otherinfo|parameter|plist|product|skin_table|sms|visit_day|visit_detail|visit_summary|mlist|ifcolumn|ifcolumn_addfile|ifmember_left|applist|app_plugin|wapmenu|infoprompt|templates|user|user_group|user_list|user_other', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('539', 'met_smsprice', '0.1', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('540', 'met_agents_logo_login', 'templates/met/images/login-logo.png', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('541', 'met_agents_logo_index', 'templates/met/images/logoen.gif', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('542', 'met_agents_copyright_foot', 'Powered by <b><a href=http://www.11158.com.cn target=_blank>WeiWo $metcms_v</a></b> &copy;2008-$m_now_year &nbsp;<a href=http://www.11158.com.cn target=_blank>WeiWo Inc.</a>', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('543', 'met_agents_type', '0', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('554', 'met_agents_code', '', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('555', 'met_agents_backup', '153a58e7', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('556', 'met_agents_sms', '1', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('557', 'met_agents_app', '1', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('558', 'met_agents_img', 'public/images/metinfo.gif', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('561', 'met_newcmsv', '', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('562', 'met_patch', '3', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('564', 'met_app_sysver', '|5.0 Beta|5.0|5.0.1|5.0.2|5.0.3|5.0.4|5.1.0|5.1.1|5.1.2|5.1.3|5.1.4|5.1.5|5.1.6|5.1.7|5.2.0|5.2.1|5.2.2|5.2.3|5.2.4|5.2.5|5.2.6', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('565', 'met_app_info', '0|1373858456', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('544', 'met_agents_thanks', '感谢使用 Metinfo', '', '0', '0', 'cn-metinfo');
INSERT INTO `met_config` VALUES ('545', 'met_agents_depict_login', '打造具有营销价值的企业网站', '', '0', '0', 'cn-metinfo');
INSERT INTO `met_config` VALUES ('546', 'met_agents_name', 'Metinfo企业网站管理系统', '', '0', '0', 'cn-metinfo');
INSERT INTO `met_config` VALUES ('547', 'met_agents_copyright', '长沙米拓信息技术有限公司（MetInfo Inc.）', '', '0', '0', 'cn-metinfo');
INSERT INTO `met_config` VALUES ('548', 'met_agents_about', '关于我们', '', '0', '0', 'cn-metinfo');
INSERT INTO `met_config` VALUES ('549', 'met_agents_thanks', 'thanks use Metinfo', '', '0', '0', 'en-metinfo');
INSERT INTO `met_config` VALUES ('550', 'met_agents_depict_login', 'Metinfo Build marketing value corporate website', '', '0', '0', 'en-metinfo');
INSERT INTO `met_config` VALUES ('551', 'met_agents_name', 'Metinfo CMS', '', '0', '0', 'en-metinfo');
INSERT INTO `met_config` VALUES ('552', 'met_agents_copyright', 'China Changsha MetInfo Information Co., Ltd.', '', '0', '0', 'en-metinfo');
INSERT INTO `met_config` VALUES ('553', 'met_agents_about', 'About Us', '', '0', '0', 'en-metinfo');
INSERT INTO `met_config` VALUES ('4369', 'met_secret_key', 'Y3SNJMNMLICRYLO6PHFEHRH7', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('4370', 'met_host_new', 'app.metinfo.cn', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('4371', 'met_editor', 'ueditor', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('4372', 'met_sms_url', 'https://appv2.metinfo.cn/sms', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('4373', 'met_sms_token', '', '', '0', '0', 'metinfo');
INSERT INTO `met_config` VALUES ('63', 'wap_product_imgx', '240', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('64', 'wap_job_list', '5', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('65', 'wap_img_list', '5', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('66', 'wap_download_list', '5', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('67', 'wap_product_list', '5', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('68', 'wap_news_list', '5', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('69', 'met_wap_img', '../upload/201207/1342516476.jpg', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('70', 'met_wap_logo', '../upload/201207/1342516579.png', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('71', 'met_wap_url', '', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('72', 'met_wap_tpb', '0', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('73', 'met_wap_tpa', '1', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('74', 'met_wap_ok', '0', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('75', 'met_waplink', '1', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('76', 'met_wap', '1', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('77', 'wap_product_imgy', '200', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('78', 'wap_img_imgx', '240', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('79', 'wap_img_imgy', '200', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('80', 'wap_title', '企业网站触屏版', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('81', 'wap_description', '', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('82', 'wap_footertext', '', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('83', 'met_weburl', 'http://localhost/weiwo2/', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('84', 'met_webname', '', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('85', 'met_logo', '../upload/201207/1342516529.png', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('86', 'met_skin_user', 'metx5', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('87', 'met_big_wate', '0', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('88', 'met_thumb_wate', '0', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('89', 'met_wate_class', '1', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('90', 'met_wate_img', '', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('91', 'met_wate_bigimg', '', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('92', 'met_thumb_kind', '3', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('93', 'met_text_wate', 'MetInfo', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('94', 'met_text_size', '10', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('95', 'met_text_bigsize', '35', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('96', 'met_text_fonts', '../include/fonts/arial.ttf', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('97', 'met_text_color', '#000000', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('98', 'met_text_angle', '0', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('99', 'met_watermark', '0', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('100', 'met_img_style', '1', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('101', 'met_img_x', '150', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('102', 'met_img_y', '150', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('103', 'met_newsimg_x', '90', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('104', 'met_newsimg_y', '90', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('105', 'met_productimg_x', '213', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('106', 'met_productimg_y', '160', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('107', 'met_imgs_x', '190', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('108', 'met_imgs_y', '150', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('109', 'met_keywords', '', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('110', 'met_description', '网站描述，一般显示在搜索引擎搜索结果中的描述文字，用于介绍网站，吸引浏览者点击。', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('111', 'met_title_type', '2', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('112', 'met_seo', '<p>后台-营销-SEO-头部优化文字处修改</p>', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('113', 'met_tools_ok', '1', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('114', 'met_alt', '图片关键词', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('115', 'met_atitle', '链接关键词', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('116', 'met_linkname', '某某公司网站', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('117', 'met_online_type', '4', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('118', 'met_footright', '我的网站 版权所有 2008-2014 湘ICP备8888888', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('119', 'met_footaddress', '本页面内容为网站演示数据，前台页面内容都可以在后台修改。', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('120', 'met_foottel', '', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('121', 'met_footother', '', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('122', 'met_foottext', '', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('123', 'met_footstat', '', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('124', 'met_product_list', '6', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('125', 'met_news_list', '8', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('126', 'met_download_list', '8', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('127', 'met_img_list', '6', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('128', 'met_job_list', '3', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('129', 'met_message_list', '10', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('130', 'met_search_list', '10', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('131', 'met_fd_fromname', '米拓信息', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('132', 'met_fd_smtp', '61.152.188.131', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('133', 'met_fd_usename', 'test@mail.metinfo.cn', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('134', 'met_fd_password', 'passwordhidden', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('135', 'met_skin_css', 'metinfo.css', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('136', 'met_autothumb_ok', '1', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('137', 'met_member_use', '1', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('138', 'met_member_register', '1', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('139', 'met_newsdays', '3', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('140', 'met_hot', '100', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('141', 'met_listtime', 'Y-m-d', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('142', 'met_contenttime', 'Y-m-d H:i:s', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('143', 'met_member_vecan', '4', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('144', 'met_membercontrol', '欢迎注册为【米拓信息】www.metinfo.cn会员，会员激活后您可以享受更多的专业服务！', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('145', 'met_pseudo', '0', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('146', 'met_online_skin', '1', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('147', 'met_online_color', '4', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('148', 'met_qq_type', '3', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('149', 'met_msn_type', '1', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('150', 'met_taobao_type', '2', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('151', 'met_alibaba_type', '10', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('152', 'met_skype_type', '11', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('153', 'met_onlinetel', '<p>企业应用-在线客服中修改</p>', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('154', 'met_addlinkopen', '1', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('155', 'met_pageskin', '8', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('156', 'met_indexskin', '', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('157', 'met_urlblank', '0', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('158', 'met_pnorder', '0', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('159', 'met_hitsok', '', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('160', 'met_product_page', '0', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('161', 'met_img_page', '0', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('162', 'met_product_detail', '1', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('163', 'met_img_detail', '1', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('164', 'met_productdetail_x', '400', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('165', 'met_productdetail_y', '300', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('166', 'met_imgdetail_x', '900', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('167', 'met_imgdetail_y', '500', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('168', 'met_onlineright_top', '110', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('169', 'met_onlineright_right', '10', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('170', 'met_onlineleft_top', '110', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('171', 'met_onlineleft_left', '10', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('172', 'met_onlinenameok', '', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('173', 'met_file_format', 'rar|zip|sql|doc|pdf|jpg|xls|png|gif|mp3|jpeg|bmp|swf|flv|ico', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('174', 'met_file_maxsize', '8', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('175', 'met_memberlogin_code', '1', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('176', 'met_login_code', '0', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('177', 'met_webhtm', '0', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('178', 'met_htmtype', 'html', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('179', 'met_htmpagename', '2', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('180', 'met_listhtmltype', '1', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('181', 'met_htmlistname', '1', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('182', 'met_htmway', '0', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('183', 'index_news_no', '10', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('184', 'index_product_no', '10', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('185', 'index_download_no', '10', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('186', 'index_img_no', '2', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('187', 'index_job_no', '10', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('188', 'index_link_ok', '1', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('189', 'index_link_img', '9999', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('190', 'index_link_text', '9999', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('191', 'met_pageclick', '1', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('192', 'met_pagetime', '1', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('193', 'met_pageprint', '1', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('194', 'met_pageclose', '1', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('195', 'met_deleteimg', '0', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('196', 'met_columnshow', '0', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('197', 'met_kzqie', '1', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('198', 'met_cv_time', '120', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('199', 'met_cv_word', '', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('200', 'met_cv_type', '1', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('201', 'met_cv_image', '32', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('202', 'met_cv_emtype', '0', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('203', 'met_cv_to', '', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('204', 'met_tools_code', '<div class=\"bdsharebuttonbox\"><a href=\"#\" class=\"bds_more\" data-cmd=\"more\"></a><a href=\"#\" class=\"bds_qzone\" data-cmd=\"qzone\" title=\"分享到QQ空间\"></a><a href=\"#\" class=\"bds_tsina\" data-cmd=\"tsina\" title=\"分享到新浪微博\"></a><a href=\"#\" class=\"bds_tqq\" data-cmd=\"tqq\" title=\"分享到腾讯微博\"></a><a href=\"#\" class=\"bds_renren\" data-cmd=\"renren\" title=\"分享到人人网\"></a><a href=\"#\" class=\"bds_weixin\" data-cmd=\"weixin\" title=\"分享到微信\"></a></div><script>window._bd_share_config={\"common\":{\"bdSnsKey\":{},\"bdText\":\"\",\"bdMini\":\"2\",\"bdMiniList\":false,\"bdPic\":\"\",\"bdStyle\":\"1\",\"bdSize\":\"16\"},\"share\":{}};with(document)0[(getElementsByTagName(\"head\")[0]||body).appendChild(createElement(\"script\")).src=\"http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=\"+~(-new Date()/36e5)];</script>', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('524', 'met_cv_back', '0', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('525', 'met_cv_title', '', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('526', 'met_cv_content', '', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('527', 'met_cv_email', '24', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('533', 'index_hadd_ok', '1', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('535', 'met_hometitle', '', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('537', 'met_img_rename', '1', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('559', 'met_index_content', '<div><img alt=\"\" src=\"http://localhost/weiwo2/upload/images/20120716_094159.jpg\" style=\"line-height: 2; margin: 8px; width: 196px; float: left; height: 209px;\" /></div><div style=\"padding-top:10px;\"><span style=\"font-size:14px;\"><strong>关于&ldquo;为合作伙伴创造价值&rdquo;</strong></span></div><div>米拓信息认为客户、供应商、公司股东、公司员工等一切和自身有合作关系的单位和个人都是自己的合作伙伴，并只有通过努力为合作伙伴创造价值，才能体现自身的价值并获得发展和成功。</div><div>&nbsp;</div><div><span style=\"font-size:14px;\"><strong>关于&ldquo;诚实、宽容、创新、服务&rdquo;</strong></span></div><div><span style=\"font-size:12px;\">米拓信息认为诚信是一切合作的基础，宽容是解决问题的前提，创新是发展事业的利器，服务是创造价值的根本。</span></div><div>&nbsp;</div>', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('567', 'wap_skin_user', 'metx5_mobile', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('568', 'wap_search_list', '5', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('569', 'wap_message_list', '5', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('570', 'wap_index_content', '<img alt=\"\" src=\"http://localhost/weiwo2/upload/images/20131228_183101.jpg\" style=\"width: 150px; height: 100px; float: left; margin-left: 8px; margin-right: 8px;\" />米拓信息认为客户、供应商、公司股东、公司员工等一切和自身有合作关系的单位和个人都是自己的合作伙伴，并只有通过努力为合作伙伴创造价值，才能体现自身的价值并获得发展和成功。', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('571', 'wap_skin_css', 'blue.css', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('572', 'met_fd_port', '25', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('573', 'met_fd_way', 'tls', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('574', 'met_headstat', '', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('575', 'met_automatic_upgrade', '1', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('576', 'met_sitemap_auto', '1', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('577', 'met_maplng', '112.947724', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('578', 'met_maplat', '28.147538', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('579', 'met_mapzoom', '15', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('580', 'met_maptitle', '演示公司名称', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('581', 'met_mapcontents', '地址：长沙市岳麓区南二环一段518号阳光100国际新城3-17栋803#<br/>电话：0000-88888888 0000-8888888', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('597', 'wap_dimensional_size', '200', '0', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('599', 'met_dimensional_logo', '', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('875', 'met_menu_ok', '1', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('876', 'met_menu_oks', '1', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('877', 'met_menu_rgb', '#e9280c', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('878', 'met_menu_bg', '', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('879', 'met_menu_textbg', '#ffffff', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('880', 'met_wapshowtype', '0', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('883', 'met_bannerpagetype', '0', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('884', 'met_theme_preview', '', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('901', 'met_productTabname', '详细信息', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('902', 'met_productTabname_1', '选项卡二', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('903', 'met_productTabname_2', '选项卡三', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('904', 'met_productTabname_3', '选项卡四', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('905', 'met_productTabname_4', '选项卡五', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('906', 'met_productTabok', '1', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('915', 'met_htmlurl', '0', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('4367', 'wap_footertext_tel', '0000-88888', '0', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('637', 'met_message_fd_class', '115', '', '25', '0', 'cn');
INSERT INTO `met_config` VALUES ('639', 'met_message_fd_email', '117', '', '25', '0', 'cn');
INSERT INTO `met_config` VALUES ('641', 'met_message_fd_sms', '116', '', '25', '0', 'cn');
INSERT INTO `met_config` VALUES ('643', 'met_message_fd_content', '119', '', '25', '0', 'cn');
INSERT INTO `met_config` VALUES ('4374', 'met_weibo_appkey', '', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('4375', 'met_weibo_appsecret', '', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('4376', 'met_qq_appid', '', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('4377', 'met_qq_appsecret', '', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('4378', 'met_weixin_open', '0', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('4379', 'met_weibo_open', '0', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('4380', 'met_qq_open', '0', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('4399', 'met_weixin_gz_appid', '', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('4400', 'met_weixin_gz_appsecret', '', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('4401', 'met_member_bgcolor', '', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('4402', 'met_member_bgimage', '', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('4411', 'met_member_email_reg_title', '{webname} 会员中心 注册验证', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('4412', 'met_member_email_reg_content', '<div style=\"width:500px;margin:20px auto;\"><div class=\"header clearfix\" style=\"font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; line-height: 23.7999992370605px; background-color: rgb(255, 255, 255);\"><a href=\"{weburl}\"><strong style=\"outline: none; cursor: pointer; color: rgb(30, 84, 148);\">{webname} 会员中心</strong></a></div><p>&nbsp;</p><div class=\"content\" style=\"font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; line-height: 23.7999992370605px; border: 1px solid rgb(233, 233, 233); margin: 2px 0px 0px; padding: 30px; background: none 0px 0px repeat scroll rgb(255, 255, 255);\"><p style=\"line-height: 23.7999992370605px;\">您好：</p><p style=\"line-height: 23.7999992370605px;\">这是您在 {webname} 会员中心 上的重要邮件, 功能是进行&nbsp;会员中心 注册验证, 请点击下面的连接完成验证</p><p style=\"line-height: 23.7999992370605px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(221, 221, 221); margin-top: 15px; margin-bottom: 25px; padding: 15px;\">请点击链接继续：{opurl}</p><p style=\"line-height: 23.7999992370605px;\">&nbsp;</p><p class=\"footer\" style=\"line-height: 23.7999992370605px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(221, 221, 221); padding-top: 6px; margin-top: 25px; color: rgb(131, 131, 131);\">请勿回复本邮件, 此邮箱未受监控, 您不会得到任何回复。<br/><br/><a href=\"{weburl}\"><strong style=\"outline: none; cursor: pointer; color: rgb(30, 84, 148);\">{webname}会员中心</strong></a></p></div></div>', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('4413', 'met_member_email_password_title', '{webname} 会员中心 密码找回', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('4414', 'met_member_email_password_content', '<div style=\"width:500px;margin:20px auto;\"><div class=\"header clearfix\" style=\"font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; line-height: 23.7999992370605px; background-color: rgb(255, 255, 255);\"><a href=\"{weburl}\"><strong style=\"outline: none; cursor: pointer; color: rgb(30, 84, 148);\">{webname} 会员中心</strong></a></div><p>&nbsp;</p><div class=\"content\" style=\"font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; line-height: 23.7999992370605px; border: 1px solid rgb(233, 233, 233); margin: 2px 0px 0px; padding: 30px; background: none 0px 0px repeat scroll rgb(255, 255, 255);\"><p style=\"line-height: 23.7999992370605px;\">您好：</p><p style=\"line-height: 23.7999992370605px;\">这是您在 {webname} 会员中心 上的重要邮件, 功能是进行&nbsp;会员中心 密码找回, 请点击下面的连接完成验证</p><p style=\"line-height: 23.7999992370605px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(221, 221, 221); margin-top: 15px; margin-bottom: 25px; padding: 15px;\">请点击链接继续：{opurl}</p><p style=\"line-height: 23.7999992370605px;\">&nbsp;</p><p class=\"footer\" style=\"line-height: 23.7999992370605px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(221, 221, 221); padding-top: 6px; margin-top: 25px; color: rgb(131, 131, 131);\">请勿回复本邮件, 此邮箱未受监控, 您不会得到任何回复。<br/><br/><a href=\"{weburl}\"><strong style=\"outline: none; cursor: pointer; color: rgb(30, 84, 148);\">{webname}会员中心</strong></a></p></div></div>', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('4415', 'met_member_email_safety_title', '{webname} 会员中心 修改绑定邮箱', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('4416', 'met_member_email_safety_content', '<div style=\"width:500px;margin:20px auto;\"><div class=\"header clearfix\" style=\"font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; line-height: 23.7999992370605px; background-color: rgb(255, 255, 255);\"><a href=\"{weburl}\"><strong style=\"outline: none; cursor: pointer; color: rgb(30, 84, 148);\">{webname} 会员中心</strong></a></div><p>&nbsp;</p><div class=\"content\" style=\"font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; line-height: 23.7999992370605px; border: 1px solid rgb(233, 233, 233); margin: 2px 0px 0px; padding: 30px; background: none 0px 0px repeat scroll rgb(255, 255, 255);\"><p style=\"line-height: 23.7999992370605px;\">您好：</p><p style=\"line-height: 23.7999992370605px;\">这是您在 {webname} 会员中心 上的重要邮件, 功能是进行&nbsp;会员中心 绑定邮箱修改, 请点击下面的连接完成验证</p><p style=\"line-height: 23.7999992370605px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(221, 221, 221); margin-top: 15px; margin-bottom: 25px; padding: 15px;\">请点击链接继续：{opurl}</p><p style=\"line-height: 23.7999992370605px;\">&nbsp;</p><p class=\"footer\" style=\"line-height: 23.7999992370605px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(221, 221, 221); padding-top: 6px; margin-top: 25px; color: rgb(131, 131,131);\">请勿回复本邮件,此邮箱未受监控,您不会得到任何回复。<br/><br/><a href=\"{weburl}\"><strong style=\"outline: none; cursor: pointer; color: rgb(30, 84, 148);\">{webname}会员中心</strong></a></p></div></div>', '', '0', '0', 'cn');
INSERT INTO `met_config` VALUES ('4417', 'flash_10000', '1|0|0|1', '', '0', '10000', 'cn');
INSERT INTO `met_config` VALUES ('4418', 'flash_10001', '1||600|', '', '0', '10001', 'cn');

-- ----------------------------
-- Table structure for `met_cv`
-- ----------------------------
DROP TABLE IF EXISTS `met_cv`;
CREATE TABLE `met_cv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addtime` datetime DEFAULT NULL,
  `readok` int(11) DEFAULT '0',
  `customerid` varchar(50) DEFAULT '0',
  `jobid` int(11) NOT NULL DEFAULT '0',
  `lang` varchar(50) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_cv
-- ----------------------------

-- ----------------------------
-- Table structure for `met_download`
-- ----------------------------
DROP TABLE IF EXISTS `met_download`;
CREATE TABLE `met_download` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `ctitle` varchar(200) DEFAULT NULL,
  `keywords` varchar(200) DEFAULT NULL,
  `description` text,
  `content` longtext,
  `class1` int(11) DEFAULT '0',
  `class2` int(11) DEFAULT '0',
  `class3` int(11) DEFAULT '0',
  `no_order` int(11) DEFAULT '0',
  `new_ok` int(1) DEFAULT '0',
  `wap_ok` int(1) DEFAULT '0',
  `downloadurl` varchar(255) DEFAULT NULL,
  `filesize` varchar(100) DEFAULT NULL,
  `com_ok` int(1) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `updatetime` datetime DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `issue` varchar(100) DEFAULT '',
  `access` int(11) DEFAULT '0',
  `top_ok` int(1) DEFAULT '0',
  `downloadaccess` int(11) DEFAULT '0',
  `filename` varchar(255) DEFAULT NULL,
  `lang` varchar(50) DEFAULT NULL,
  `recycle` int(11) NOT NULL DEFAULT '0',
  `displaytype` int(11) NOT NULL DEFAULT '1',
  `tag` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_download
-- ----------------------------

-- ----------------------------
-- Table structure for `met_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `met_feedback`;
CREATE TABLE `met_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class1` int(11) DEFAULT '0',
  `fdtitle` varchar(255) DEFAULT NULL,
  `fromurl` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `readok` int(11) DEFAULT '0',
  `useinfo` text,
  `customerid` varchar(30) DEFAULT '0',
  `lang` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for `met_flash`
-- ----------------------------
DROP TABLE IF EXISTS `met_flash`;
CREATE TABLE `met_flash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` text,
  `img_title` varchar(255) DEFAULT NULL,
  `img_path` varchar(255) DEFAULT NULL,
  `img_link` varchar(255) DEFAULT NULL,
  `flash_path` varchar(255) DEFAULT NULL,
  `flash_back` varchar(255) DEFAULT NULL,
  `no_order` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `wap_ok` int(11) NOT NULL DEFAULT '0',
  `img_title_color` varchar(100) NOT NULL DEFAULT '',
  `img_des` varchar(100) NOT NULL DEFAULT '',
  `img_des_color` varchar(100) NOT NULL DEFAULT '',
  `img_text_position` varchar(100) NOT NULL DEFAULT '',
  `lang` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_flash
-- ----------------------------
INSERT INTO `met_flash` VALUES ('1', ',10001,', '', '../upload/201711/1509518500.jpg', '', null, null, '0', null, null, '0', '', '', '', '', 'cn');
INSERT INTO `met_flash` VALUES ('2', ',10001,', '', '../upload/201711/1509517817.jpg', '', null, null, '1', null, null, '0', '', '', '', '', 'cn');

-- ----------------------------
-- Table structure for `met_flist`
-- ----------------------------
DROP TABLE IF EXISTS `met_flist`;
CREATE TABLE `met_flist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `listid` int(11) DEFAULT NULL,
  `paraid` int(11) DEFAULT NULL,
  `info` text,
  `lang` varchar(50) DEFAULT NULL,
  `module` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_flist
-- ----------------------------

-- ----------------------------
-- Table structure for `met_ifcolumn`
-- ----------------------------
DROP TABLE IF EXISTS `met_ifcolumn`;
CREATE TABLE `met_ifcolumn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `appname` varchar(50) NOT NULL COMMENT '应用名称',
  `addfile` tinyint(1) NOT NULL DEFAULT '1',
  `memberleft` tinyint(1) NOT NULL DEFAULT '0',
  `uniqueness` tinyint(1) NOT NULL DEFAULT '0',
  `fixed_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_ifcolumn
-- ----------------------------

-- ----------------------------
-- Table structure for `met_ifcolumn_addfile`
-- ----------------------------
DROP TABLE IF EXISTS `met_ifcolumn_addfile`;
CREATE TABLE `met_ifcolumn_addfile` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `no` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `m_module` varchar(255) NOT NULL,
  `m_class` varchar(255) NOT NULL,
  `m_action` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_ifcolumn_addfile
-- ----------------------------

-- ----------------------------
-- Table structure for `met_ifmember_left`
-- ----------------------------
DROP TABLE IF EXISTS `met_ifmember_left`;
CREATE TABLE `met_ifmember_left` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `no` int(11) NOT NULL,
  `columnid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `foldername` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_ifmember_left
-- ----------------------------

-- ----------------------------
-- Table structure for `met_img`
-- ----------------------------
DROP TABLE IF EXISTS `met_img`;
CREATE TABLE `met_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `ctitle` varchar(200) DEFAULT NULL,
  `keywords` varchar(200) DEFAULT NULL,
  `description` text,
  `content` longtext,
  `class1` int(11) DEFAULT '0',
  `class2` int(11) DEFAULT '0',
  `class3` int(11) DEFAULT '0',
  `no_order` int(11) DEFAULT '0',
  `wap_ok` int(1) DEFAULT '0',
  `new_ok` int(1) DEFAULT '0',
  `imgurl` varchar(255) DEFAULT NULL,
  `imgurls` varchar(255) DEFAULT NULL,
  `displayimg` text,
  `com_ok` int(1) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `updatetime` datetime DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `issue` varchar(100) DEFAULT '',
  `access` int(11) DEFAULT '0',
  `top_ok` int(1) DEFAULT '0',
  `filename` varchar(255) DEFAULT NULL,
  `lang` varchar(50) DEFAULT NULL,
  `content1` text,
  `content2` text,
  `content3` text,
  `content4` text,
  `contentinfo` varchar(255) DEFAULT NULL,
  `contentinfo1` varchar(255) DEFAULT NULL,
  `contentinfo2` varchar(255) DEFAULT NULL,
  `contentinfo3` varchar(255) DEFAULT NULL,
  `contentinfo4` varchar(255) DEFAULT NULL,
  `recycle` int(11) NOT NULL DEFAULT '0',
  `displaytype` int(11) NOT NULL DEFAULT '1',
  `tag` text NOT NULL,
  `links` varchar(200) DEFAULT NULL,
  `imgsize` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_img
-- ----------------------------

-- ----------------------------
-- Table structure for `met_infoprompt`
-- ----------------------------
DROP TABLE IF EXISTS `met_infoprompt`;
CREATE TABLE `met_infoprompt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL,
  `newstitle` varchar(120) NOT NULL,
  `content` text NOT NULL,
  `url` varchar(200) NOT NULL,
  `member` varchar(50) NOT NULL,
  `type` varchar(35) NOT NULL,
  `time` int(11) NOT NULL,
  `see_ok` int(11) NOT NULL DEFAULT '0',
  `lang` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_infoprompt
-- ----------------------------

-- ----------------------------
-- Table structure for `met_job`
-- ----------------------------
DROP TABLE IF EXISTS `met_job`;
CREATE TABLE `met_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(200) DEFAULT NULL,
  `count` int(11) DEFAULT '0',
  `place` varchar(200) DEFAULT NULL,
  `deal` varchar(200) DEFAULT NULL,
  `addtime` date DEFAULT NULL,
  `useful_life` int(11) DEFAULT NULL,
  `content` longtext,
  `access` int(11) DEFAULT '0',
  `no_order` int(11) DEFAULT '0',
  `wap_ok` int(1) DEFAULT '0',
  `top_ok` int(1) DEFAULT '0',
  `email` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `lang` varchar(50) DEFAULT NULL,
  `displaytype` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_job
-- ----------------------------

-- ----------------------------
-- Table structure for `met_label`
-- ----------------------------
DROP TABLE IF EXISTS `met_label`;
CREATE TABLE `met_label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oldwords` varchar(255) DEFAULT NULL,
  `newwords` varchar(255) DEFAULT NULL,
  `newtitle` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `num` int(11) NOT NULL DEFAULT '99',
  `lang` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_label
-- ----------------------------

-- ----------------------------
-- Table structure for `met_lang`
-- ----------------------------
DROP TABLE IF EXISTS `met_lang`;
CREATE TABLE `met_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `useok` int(1) NOT NULL,
  `no_order` int(11) NOT NULL,
  `mark` varchar(50) NOT NULL,
  `synchronous` varchar(50) NOT NULL,
  `flag` varchar(100) NOT NULL,
  `link` varchar(255) NOT NULL,
  `newwindows` int(1) NOT NULL,
  `met_webhtm` int(1) NOT NULL,
  `met_htmtype` varchar(50) NOT NULL,
  `met_weburl` varchar(255) NOT NULL,
  `lang` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_lang
-- ----------------------------
INSERT INTO `met_lang` VALUES ('2', 'English', '1', '2', 'en', 'en', '', '', '0', '0', '', '', 'metinfo');
INSERT INTO `met_lang` VALUES ('1', '简体中文', '1', '1', 'cn', 'cn', '', '', '0', '0', '', '', 'metinfo');
INSERT INTO `met_lang` VALUES ('5', '繁體中文', '1', '3', 'tc', 'tc', '', '', '0', '0', '', '', 'metinfo');
INSERT INTO `met_lang` VALUES ('3', '简体中文', '1', '1', 'cn', 'cn', 'cn.gif', '', '0', '0', 'html', 'http://localhost/weiwo2/', 'cn');

-- ----------------------------
-- Table structure for `met_language`
-- ----------------------------
DROP TABLE IF EXISTS `met_language`;
CREATE TABLE `met_language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `site` tinyint(1) NOT NULL,
  `no_order` int(11) NOT NULL DEFAULT '0',
  `array` int(11) NOT NULL,
  `app` int(11) NOT NULL,
  `lang` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36292 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_language
-- ----------------------------
INSERT INTO `met_language` VALUES ('3715', 'system', '系统参数', '0', '1', '0', '0', 'cn');
INSERT INTO `met_language` VALUES ('3716', 'sunday', '星期日', '0', '1', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3717', 'monday', '星期一', '0', '2', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3718', 'tuesday', '星期二', '0', '3', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3719', 'wednesday', '星期三', '0', '4', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3720', 'thursday', '星期四', '0', '5', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3721', 'friday', '星期五', '0', '6', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3722', 'saturday', '星期六', '0', '7', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3723', 'now', '今天是', '0', '8', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3724', 'year', '年', '0', '9', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3725', 'month', '月', '0', '10', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3726', 'day', '日', '0', '11', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3727', 'sethomepage', '设为首页', '0', '12', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3728', 'bookmark', '收藏本站', '0', '13', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3729', 'chchinese', '繁体中文', '0', '14', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3730', 'searchall', '整站搜索', '0', '15', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3731', 'search', '搜索', '0', '16', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3732', 'home', '网站首页', '0', '17', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3733', 'error', '读取数据错误', '0', '18', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3734', 'success', '操作成功!', '0', '19', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3735', 'Info1', '企业网站管理系统', '0', '20', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3736', 'Info2', '企业建站程序', '0', '21', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3737', 'Info3', '企业网站建设', '0', '22', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3738', 'Colunm', '栏目名称', '0', '23', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3739', 'Title', '标题', '0', '24', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3740', 'Content', '内容', '0', '25', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3741', 'Hits', '点击次数', '0', '26', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3742', 'UpdateTime', '更新时间', '0', '27', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3743', 'Detail', '查看详细', '0', '28', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3744', 'Close', '关闭', '0', '29', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3745', 'Online', '在线交流', '0', '30', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3746', 'Online_tips', '点击可隐藏', '0', '31', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3747', 'Noinfo', '没有了', '0', '32', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3748', 'Buy', '购买反馈', '0', '33', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3749', 'ProductTitle', '产品名称', '0', '34', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3750', 'ImgTitle', '图片名称', '0', '35', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3751', 'BigPicture', '查看大图', '0', '36', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3752', 'ProductSearch', '产品搜索', '0', '37', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3753', 'Nolimit', '不限', '0', '38', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3754', 'imgSearch', '图片搜索', '0', '39', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3755', 'displayimg', '展示图片', '0', '40', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3756', 'defualt', '默认', '0', '41', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('3757', 'logininformation', '登录信息提示', '0', '2', '0', '0', 'cn');
INSERT INTO `met_language` VALUES ('3758', 'membercode', '验证码错误！', '0', '1', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('3759', 'membernameno', '会员账号不存在！', '0', '2', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('3760', 'memberpassno', '密码错误！', '0', '3', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('3761', 'access', '您没有阅读该信息的权限！', '0', '4', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('3762', 'login', '登录', '0', '5', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('3763', 'register', '注册', '0', '6', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('3764', 'downloadaccess', '您没有下载此文件的权限！', '0', '7', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('3765', 'paging', '分页', '0', '3', '0', '0', 'cn');
INSERT INTO `met_language` VALUES ('3766', 'PageTotal', '共', '0', '1', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('3767', 'Page', '页', '0', '2', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('3768', 'PageLocation', '当前第', '0', '3', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('3769', 'PageHome', '首页', '0', '4', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('3770', 'PageEnd', '末页', '0', '5', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('3771', 'PagePre', '上一页', '0', '6', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('3772', 'PageNext', '下一页', '0', '7', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('3773', 'PageGo', '转至第', '0', '8', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('3774', 'Previous', '上一条', '0', '9', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('3775', 'Next', '下一条', '0', '10', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('3776', 'Total', '条记录', '0', '11', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('3777', 'Pagenum', '页次', '0', '12', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('3778', 'Pagenum1', '第', '0', '13', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('3779', 'Pagenum2', '页', '0', '14', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('3780', 'membership', '会员信息', '0', '4', '0', '0', 'cn');
INSERT INTO `met_language` VALUES ('3781', 'memberclose', '会员功能尚未开启！', '0', '1', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3782', 'memberLogin', '会员登录', '0', '2', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3783', 'memberRegisterName', '请输入用户名', '0', '3', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3784', 'memberPassword', '请输入密码', '0', '4', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3785', 'memberCookie', '请先开启浏览器的COOKIE功能！', '0', '5', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3786', 'memberName', '会员名', '0', '6', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3787', 'memberPs', '密 码', '0', '7', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3788', 'memberImgCode', '验证码', '0', '8', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3789', 'memberTip1', '看不清？点击更换验证码', '0', '9', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3790', 'memberTip2', '记住我的登录信息', '0', '10', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3791', 'memberGo', '登录', '0', '11', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3792', 'memberRegister', '立即注册', '0', '12', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3793', 'memberReset', '重填', '0', '13', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3794', 'memberForget', '忘记密码？', '0', '14', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3795', 'memberIndex1', '用户管理中心', '0', '15', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3796', 'memberIndex2', '欢迎您！', '0', '16', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3797', 'memberIndex3', '会员中心', '0', '17', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3798', 'memberIndex4', '修改基本信息', '0', '18', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3799', 'memberIndex5', '管理反馈信息', '0', '19', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3800', 'memberIndex6', '管理留言信息', '0', '20', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3801', 'memberIndex7', '管理简历信息', '0', '21', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3802', 'memberIndex8', '会员控制面板', '0', '22', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3803', 'memberIndex9', '个人信息', '0', '23', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3804', 'memberIndex10', '退出登录', '0', '24', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3805', 'memberIndex11', '共', '0', '25', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3806', 'memberIndex12', '条信息', '0', '26', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3807', 'memberIndex13', '已读', '0', '27', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3808', 'memberIndex14', '未读', '0', '28', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3809', 'memberIndex15', '简历投递管理', '0', '29', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3810', 'memberIndex16', '会员公告', '0', '30', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3811', 'memberbasicTitle', '查看基本信息', '0', '31', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3812', 'memberbasicUserName', '用户名', '0', '32', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3813', 'memberbasicReadlName', '姓名', '0', '33', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3814', 'memberbasicSex', '性别', '0', '34', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3815', 'memberbasicMan', '男', '0', '35', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3816', 'memberbasicWoman', '女', '0', '36', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3817', 'memberbasicTel', '联系电话', '0', '37', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3818', 'memberbasicCell', '手机', '0', '38', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3819', 'memberbasicTaoBao', '淘宝', '0', '39', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3820', 'memberbasicLoginNum', '登录次数', '0', '40', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3821', 'memberbasicLastLogin', '最后登录时间', '0', '41', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3822', 'memberbasicLastIP', '最后登录IP', '0', '42', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3823', 'memberbasicRegisterTime', '帐号注册时间', '0', '43', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3824', 'memberbasicIntro', '会员简介', '0', '44', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3825', 'memberbasicCompanyName', '公司名称', '0', '45', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3826', 'memberbasicCompanyFax', '公司传真', '0', '46', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3827', 'memberbasicCompanyCode', '公司邮政编码', '0', '47', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3828', 'memberbasicCompanyAddress', '公司联系地址', '0', '48', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3829', 'memberbasicCompanyWebsite', '公司网址', '0', '49', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3830', 'memberbasicType', '会员类型', '0', '50', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3831', 'memberbasicType1', '普通会员', '0', '51', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3832', 'memberbasicType2', '代理商', '0', '52', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3833', 'memberbasicType3', '管理员', '0', '53', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3834', 'membereditorPs', '登录密码', '0', '54', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3835', 'membereditorPs1', '密码确认', '0', '55', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3836', 'membereditorTip', '不修改请留空', '0', '56', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3837', 'membereditorTip1', '用于找回密码', '0', '57', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3838', 'memberReg', '会员注册', '0', '58', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3839', 'memberEdit', '编辑', '0', '59', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3840', 'memberDetail', '查看', '0', '60', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3841', 'memberShowAll', '查看全部', '0', '61', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3842', 'memberFeedbackName', '反馈信息标题', '0', '62', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3843', 'memberAddTime', '提交时间', '0', '63', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3844', 'memberOperate', '操作', '0', '64', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3845', 'memberFile', '已上传的附件', '0', '65', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3846', 'memberinfo', '留言内容', '0', '66', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3847', 'memberReply', '是否回复', '0', '67', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3848', 'memberContent', '留言内容', '0', '68', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3849', 'messageeditorName', '姓名', '0', '69', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3850', 'messageeditorTel', '电话', '0', '70', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3851', 'messageeditorContact', '其他联系方式', '0', '71', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3852', 'messageeditorContent', '留言内容', '0', '72', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3853', 'messageeditorTime', '留言提交时间', '0', '73', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3854', 'messageeditorReply', '管理员回复留言', '0', '74', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3855', 'cvTip4', '职位已经被删除', '0', '75', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3856', 'memberPosition', '应聘职位', '0', '76', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3857', 'memberModifyCV', '修改简历', '0', '77', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3858', 'memberModifyMS', '修改留言', '0', '78', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3859', 'memberModifyFD', '修改反馈', '0', '79', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3860', 'memberShowFD', '查看反馈', '0', '80', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3861', 'memberShowMS', '查看留言', '0', '81', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3862', 'memberShowCV', '查看简历', '0', '82', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3863', 'getNotice', '会员找回密码', '0', '83', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3864', 'NewPassJS', '新密码', '0', '84', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3865', 'NewPassJS1', '再输入一次', '0', '85', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3866', 'NewPassJS2', '两次输入密码不一致', '0', '86', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3867', 'NoidJS', '没有此用户', '0', '87', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3868', 'NoidJS1', '没有此用户或邮箱地址不正确', '0', '88', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3869', 'getTip1', '您的密码重置请求已经得到验证。请点击以下链接输入您的新密码：', '0', '89', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3870', 'getTip2', '取回密码的方法已经通过 Email 发送到您的信箱中。请在 3 天之内到网站修改您的密码。', '0', '90', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3871', 'getTip3', '您提交的找回密码邮件发送失败！请联系网站管理员！。', '0', '91', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3872', 'getTip4', '请输入下面的信息，以帮助您快速找回密码。', '0', '92', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3873', 'getTip5', '密码找回', '0', '93', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3874', 'getTip6', '无法调用Jmail组件', '0', '94', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3875', 'getTip7', '请输入新密码，以后请牢记您的密码。', '0', '95', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3876', 'getTip8', '该链接已失效！', '0', '96', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3877', 'getOK', '发送成功', '0', '97', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3878', 'getFail', '发送失败', '0', '98', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3879', 'membernodo', '该用户尚未激活，请即时与管理员联系!', '0', '99', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3880', 'hello', '您好！', '0', '100', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('3881', 'fileupload', '文件上传', '0', '5', '0', '0', 'cn');
INSERT INTO `met_language` VALUES ('3882', 'fileOK', '文件上传成功', '0', '1', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('3883', 'fileError1', '上传的文件超过了 php.ini 中 upload_max_filesize 选项限制的值。', '0', '2', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('3884', 'fileError2', '上传文件的大小超过了 HTML 表单中 MAX_FILE_SIZE 选项指定的值。', '0', '3', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('3885', 'fileError3', '文件只有部分被上传。', '0', '4', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('3886', 'fileError4', '没有文件被上传。', '0', '5', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('3887', 'jstip', 'js提示', '0', '6', '0', '0', 'cn');
INSERT INTO `met_language` VALUES ('3888', 'js1', '操作失败！', '0', '1', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('3889', 'js2', '管理员身份登录！', '0', '2', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('3890', 'js3', '抱歉，注册功能暂时关闭！', '0', '3', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('3891', 'js4', '无法激活此用户,请与管理员联系！', '0', '4', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('3892', 'js5', '已成功激活,请登录！', '0', '5', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('3893', 'js6', '用户名输入有误!', '0', '6', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('3894', 'js7', '用户名不能小于3位', '0', '7', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('3895', 'js8', '密码应大于等于6位！', '0', '8', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('3896', 'js9', '请再次输入用户密码！', '0', '9', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('3897', 'js10', '两次密码输入不一致', '0', '10', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('3898', 'js11', '请输入公司名称！', '0', '11', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('3899', 'js12', '请输入您的Email！', '0', '12', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('3900', 'js13', 'Email地址不正确！', '0', '13', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('3901', 'js14', '请输入验证码！', '0', '14', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('3902', 'js15', '此用户名已经被使用', '0', '15', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('3903', 'js16', '会员激活', '0', '16', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('3904', 'js17', '会员激活方式：', '0', '17', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('3905', 'js18', '请您点击', '0', '18', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('3906', 'js19', '完成会员账号激活！', '0', '19', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('3907', 'js20', '激活邮件已发生到您注册的邮箱中，请即时激活您的会员身份!', '0', '20', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('3908', 'js21', '操作成功!', '0', '21', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('3909', 'js22', '指定的路径不可写，或者没有此路径!', '0', '22', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('3910', 'js23', '文件格式不允许上传。', '0', '23', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('3911', 'js24', '管理员已阅读，没有权限修改！', '0', '24', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('3912', 'js25', '注册成功，待管理审核即可登录控制面板！', '0', '25', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('3913', 'other', '其他', '0', '7', '0', '0', 'cn');
INSERT INTO `met_language` VALUES ('3914', 'YES', '是', '0', '1', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3915', 'NO', '否', '0', '2', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3916', 'Article', '相关文章', '0', '3', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3917', 'Printing', '打印此页', '0', '4', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3918', 'Times', '次', '0', '5', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3919', 'Feedback', '购买反馈', '0', '6', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3920', 'FileSize', '文件大小', '0', '7', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3921', 'Download', '点击下载', '0', '8', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3922', 'Position', '招聘职位', '0', '9', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3923', 'PersonNumber', '招聘人数', '0', '10', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3924', 'WorkPlace', '工作地点', '0', '11', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3925', 'AddDate', '发布日期', '0', '12', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3926', 'Deal', '工资待遇', '0', '13', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3927', 'Validity', '有效期', '0', '14', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3928', 'JobDescription', '职位描述', '0', '15', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3929', 'Submit', '提交信息', '0', '16', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3930', 'Reset', '重新填写', '0', '17', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3931', 'AdvancedSearch', '高级搜索', '0', '18', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3932', 'Keywords', '关键字', '0', '19', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3933', 'AllBigclass', '所有一级栏目', '0', '20', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3934', 'AllSmallclass', '所有二级栏目', '0', '21', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3935', 'AllThirdclass', '所有三级栏目', '0', '22', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3936', 'And', '和', '0', '23', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3937', 'Info4', '请先做好本站链接再申请，谢谢合作！', '0', '24', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3938', 'OurWebName', '本站名称', '0', '25', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3939', 'OurWebUrl', '本站地址', '0', '26', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3940', 'OurWebLOGO', '本站LOGO', '0', '27', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3941', 'OurWebKeywords', '本站关键词', '0', '28', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3942', 'YourWebName', '网站名称', '0', '29', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3943', 'YourWebUrl', '网站地址', '0', '30', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3944', 'YourWebLOGO', '网站LOGO', '0', '31', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3945', 'YourWebKeywords', '网站关键词', '0', '32', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3946', 'LinkType', '链接类型', '0', '33', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3947', 'TextLink', '文字链接', '0', '34', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3948', 'PictureLink', '图片链接', '0', '35', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3949', 'Contact', '联系方式', '0', '36', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3950', 'ApplyLink', '申请友情链接', '0', '37', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3951', 'ApplyLinkNO', '没有开启友情链接申请', '0', '38', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3952', 'SubmitInfo', '提交留言', '0', '39', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3953', 'Publish', '发表于', '0', '40', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3954', 'SubmitContent', '留言内容', '0', '41', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3955', 'Reply', '管理员回复', '0', '42', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3956', 'ReadInfo', '查看留言', '0', '43', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3957', 'Name', '姓名', '0', '44', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3958', 'Phone', '电话', '0', '45', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3959', 'Email', 'Email', '0', '46', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3960', 'OtherContact', '其他联系方式', '0', '47', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3961', 'Info5', '如QQ、MSN等', '0', '48', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3962', 'Feedback1', '请不要在', '0', '49', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3963', 'Feedback2', '秒内重复提交信息，谢谢合作！', '0', '50', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3964', 'Feedback3', '反馈信息中不能包含', '0', '51', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3965', 'Feedback5', '反馈已经被关闭', '0', '52', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3966', 'FeedbackProduct', '反馈产品', '0', '53', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3967', 'IP', '来源IP', '0', '54', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3968', 'AddTime', '提交时间', '0', '55', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3969', 'SourcePage', '来源页面', '0', '56', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3970', 'Feedback4', '反馈信息已成功提交，谢谢！', '0', '57', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3971', 'Choice', '请选择', '0', '58', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3972', 'Empty', '不能为空', '0', '59', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3973', 'LinkInfo1', '您的网站已成功提交，谢谢！', '0', '60', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3974', 'LinkInfo2', '网站名称不能为空', '0', '61', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3975', 'LinkInfo3', '网站地址不能为空', '0', '62', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3976', 'MessageInfo1', '在线留言', '0', '63', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3977', 'MessageInfo2', '您的留言已成功提交，谢谢！', '0', '64', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3978', 'MessageInfo3', '姓名不能为空', '0', '65', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3979', 'MessageInfo4', '留言信息不能为空', '0', '66', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3980', 'MessageInfo5', '浏览器不支持此功能，请手动设置！', '0', '67', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3981', 'messageadd', '提交留言', '0', '68', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3982', 'messageview', '查看留言', '0', '69', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3983', 'SearchInfo', '在线搜索', '0', '70', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3984', 'SearchInfo1', '请输入搜索关键词！', '0', '71', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3985', 'SearchInfo2', '全站搜索', '0', '72', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3986', 'SearchInfo3', '没有含有', '0', '73', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3987', 'SearchInfo4', '的信息内容', '0', '74', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3988', 'Job1', '不限', '0', '75', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3989', 'Job2', '天', '0', '76', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3990', 'several', '若干', '0', '77', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3991', 'cvtitle', '在线应聘', '0', '78', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3992', 'cv', '查看简历', '0', '79', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3993', 'cv2', '申请贵公司', '0', '80', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3994', 'feedbackonline', '在线反馈', '0', '81', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3995', 'messageonline', '在线留言', '0', '82', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3996', 'htmcreate', '生成', '0', '83', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3997', 'htmsuccess', '成功!', '0', '84', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3998', 'htmpermission', '没有权限！', '0', '85', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('3999', 'metwapok', '没有开启WAP功能！', '0', '86', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('4000', 'wap', '手机版', '0', '87', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('4001', 'smstips66', '余额不足', '0', '88', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('4002', 'smstips67', '短信内容太长，最多350个字', '0', '89', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('4003', 'smstips68', '手机号码太多，最多800个号码', '0', '90', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('4004', 'smstips69', '号码不符合规则', '0', '91', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('4005', 'smstips70', '发送成功(有延迟)', '0', '92', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('4006', 'smstips71', '异常操作，余额不足', '0', '93', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('4007', 'smstips72', '余额不足', '0', '94', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('4008', 'smstips73', '短信内容和手机号码不能为空', '0', '95', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('4009', 'smstips74', '发送密码错误', '0', '96', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('4010', 'smstips75', '网站无法访问', '0', '97', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('4011', 'smstips76', '服务器无响应', '0', '98', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('4012', 'detailtxt', '详细描述', '0', '99', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('4013', 'showdownload1', '更新时间', '0', '100', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('4014', 'showdownload2', '文件下载', '0', '101', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('4015', 'showdownload3', '点击下载', '0', '102', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('4317', 'initext1', '立即搜索', '0', '42', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('4318', 'saechplaceholder', '请输入关键词', '0', '43', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('4319', 'drxtop', '顶', '0', '44', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('4320', 'drxhot', '热', '0', '45', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('4321', 'drxnew', '新', '0', '46', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('4322', 'colmnmore', '更多分类', '0', '47', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('4323', 'fliptext1', '查看更多', '0', '48', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('4324', 'fliptext2', '加载中...', '0', '49', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('4325', 'downloadtext1', '下载', '0', '50', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('4326', 'downloadtext2', '次访问', '0', '51', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('4327', 'jobtext1', '人', '0', '52', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('4328', 'foottext1', '电话', '0', '53', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('4329', 'foottext2', '地图', '0', '54', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('4330', 'foottext3', '留言', '0', '55', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('4331', 'foottext4', '首页', '0', '56', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('4332', 'foottext5', '电脑版', '0', '57', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('4333', 'foottext6', '触屏版', '0', '58', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('4334', 'navtext1', '导航栏目', '0', '59', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('4335', 'nettext2', '文章内容', '0', '60', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('4336', 'nettext3', '产品详情', '0', '61', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('4337', 'nettext4', '资料详情', '0', '62', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('4338', 'nettext5', '图片详情', '0', '63', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('4339', 'nettext6', '职位详情', '0', '64', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('4340', 'nettext9', '申请友情链接', '0', '65', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('4365', 'tagweb', '标签', '0', '66', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35716', 'formerror1', '请填写此字段。', '0', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35717', 'formerror2', '请从这些选项中选择一个。', '0', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35718', 'formerror3', '请输入正确的手机号码。', '0', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35719', 'formerror4', '请输入正确的Email地址。', '0', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35720', 'formerror5', '两次输入的密码不一致，请重新输入。', '0', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35721', 'formerror6', '请输入至少&metinfo&个字符。', '0', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35722', 'formerror7', '输入不能超过&metinfo&个字符。', '0', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35723', 'formerror8', '输入的字符数必须在&metinfo&之间。', '0', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35824', 'read', '阅读', '0', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35825', 'switching_category', '切换类目', '0', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35724', 'js46', '不能重复', '0', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('36035', 'emailcheck', '邮箱验证', '0', '102', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36036', 'emailchecktips1', '感谢您的注册！激活链接已经发送到您的邮箱', '0', '103', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36037', 'emailchecktips2', '点击邮件里的链接即可激活账户', '0', '104', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36038', 'emailchecktips3', '还没收到确认邮件？', '0', '105', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36039', 'emailchecktips4', '尝试到广告邮件、垃圾邮件目录里找找看', '0', '106', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36040', 'emailchecktips5', '再次发送确认邮件', '0', '107', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36041', 'accsafe', '账号安全', '0', '108', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36042', 'resend', '重发', '0', '109', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36043', 'getmemberImgCode', '获取验证码', '0', '110', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36044', 'teluse', '手机号已被注册', '0', '111', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36045', 'telok', '请输入正确的手机号码', '0', '112', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36046', 'password', '密码', '0', '113', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36047', 'userhave', '用户名已存在', '0', '114', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36048', 'emailhave', '邮箱已被注册', '0', '115', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36049', 'memberemail', '邮箱', '0', '116', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36050', 'memberMoreInfo', '更多资料', '0', '117', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36051', 'select', '选择', '0', '118', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36052', 'acchave', '已有账号？', '0', '119', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36053', 'accpassword', '帐号密码', '0', '120', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36054', 'accsaftips1', '用于保护帐号信息和登录安全', '0', '121', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36055', 'modify', '修改', '0', '122', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36056', 'accemail', '邮箱绑定', '0', '123', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36057', 'accsaftips2', '邮箱绑定可以用于登录帐号，重置密码或其他安全验证', '0', '124', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36058', 'acctel', '手机绑定', '0', '125', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36059', 'accsaftips3', '手机绑定可以用于登录帐号，重置密码或其他安全验证', '0', '126', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36060', 'modifypassword', '密码修改', '0', '127', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36061', 'oldpassword', '原密码', '0', '128', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36062', 'newpassword', '新密码', '0', '129', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36063', 'confirm', '确定', '0', '130', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36064', 'cancel', '取消', '0', '131', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36065', 'emailaddress', '邮箱地址', '0', '132', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36066', 'emailuse', '邮箱已被绑定', '0', '133', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36067', 'telnum', '手机号码', '0', '134', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36068', 'teluse', '手机号码已被绑定', '0', '135', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36069', 'telok', '请输入正确的手机号码', '0', '136', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36070', 'modifyacctel', '修改手机绑定', '0', '137', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36071', 'modifyinfo', '保存资料', '0', '138', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36072', 'emailnow', '当前邮箱：', '0', '139', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36073', 'newemail', '新邮箱', '0', '140', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36074', 'submit', '提交', '0', '141', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36075', 'modifyaccemail', '修改绑定邮箱', '0', '142', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36076', 'resetpassword', '请重新设置密码', '0', '143', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36077', 'renewpassword', '重复密码', '0', '144', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36078', 'inputcode', '请输入验证码', '0', '145', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36079', 'next', '下一步', '0', '146', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36080', 'logintips', '用户名/邮箱/手机', '0', '147', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36081', 'otherlogin', '其它方式登录', '0', '148', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36082', 'logintips1', '没有账号？现在去注册', '0', '149', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36083', 'rehomepage', '返回首页', '0', '150', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36084', 'rememberImgCode', '重发验证码', '0', '150', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36085', 'relogin', '返回登录', '0', '151', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36086', 'getpasswordtips', '邮箱/手机', '0', '152', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36087', 'regclose', '注册功能已关闭', '0', '153', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36088', 'regfail', '注册失败', '0', '154', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36089', 'codetimeout', '验证码已超时', '0', '155', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36090', 'telcheckfail', '手机号码与短信验证号码不一致', '0', '156', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36091', 'regsuc', '注册成功！', '0', '157', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36092', 'activesuc', '激活成功', '0', '158', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36093', 'emailvildtips1', '验证信息错误', '0', '159', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36094', 'emailvildtips2', '验证信息错误或已超时', '0', '160', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36095', 'telreg', '手机号已被注册', '0', '161', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36096', 'Sendfrequent', '发送过于频繁，请稍后再试', '0', '162', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36097', 'emailsuc', '邮件发送成功！', '0', '163', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36098', 'emailfail', '邮件发送失败，请确认邮箱是否正确或联系网站管理人员解决。', '0', '164', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36099', 'modifysuc', '修改成功', '0', '165', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36100', 'binding', '绑定', '0', '166', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36101', 'notbound', '未绑定', '0', '167', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36102', 'accnotmodify', '帐号无法修改', '0', '168', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36103', 'emailsuclink', '邮件发送成功！请点击邮件里的验证链接完成操作！', '0', '169', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36104', 'bindingok', '绑定成功', '0', '170', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36105', 'opfail', '操作失败', '0', '171', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36106', 'modifypasswordsuc', '密码修改成功！', '0', '172', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36107', 'lodpasswordfail', '原密码错误', '0', '173', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36108', 'membererror1', '用户名或密码错误', '0', '174', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36109', 'membererror2', '请开启session！', '0', '175', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36110', 'membererror3', '授权失败', '0', '176', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36111', 'membererror4', '未知错误', '0', '177', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36112', 'emailsucpass', '密码找回邮件已经发送至您的邮箱，点击邮件里的链接即可重设密码。', '0', '178', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36113', 'emailvildtips3', '请输入正确的邮箱或手机号码', '0', '179', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36114', 'membererror5', '发送失败！错误码：', '0', '180', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36276', 'noempty', '此项不能为空', '0', '181', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36277', 'usernamecheck', '用户名必须在2-30个字符之间', '0', '182', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36278', 'passwordcheck', '密码必须在6-30个字符之间', '0', '183', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36279', 'passwordsame', '两次密码输入不一致', '0', '184', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36280', 'emailcheck', '请输入正确的Email地址', '0', '184', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('36291', 'memberhead', '头像', '0', '184', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('26272', 'unitytxt_74', '查看商业版WAP功能', '1', '438', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26271', 'unitytxt_73', '地图设置（用于设置wap页面底部固定功能）', '1', '437', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26270', 'unitytxt_72', '地图设置', '1', '436', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26269', 'unitytxt_71', '二维码', '1', '435', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26267', 'unitytxt_69', '安装、升级文件删除', '1', '433', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26268', 'unitytxt_70', '上传文件', '1', '434', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26266', 'unitytxt_68', '当创始人账号为admin时，您拥有一次机会，可以修改创始人名称。', '1', '432', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26265', 'unitytxt_67', '修改为', '1', '431', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26261', 'unitytxt_63', 'QQ支持', '1', '427', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26262', 'unitytxt_64', '论坛支持', '1', '428', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26263', 'unitytxt_65', '服务信息', '1', '429', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26264', 'unitytxt_66', '服务期限', '1', '430', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26260', 'unitytxt_62', '电话支持', '1', '426', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26259', 'unitytxt_61', '服务方式', '1', '425', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26257', 'unitytxt_59', '重新录入商业授权码', '1', '423', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26258', 'unitytxt_60', '享有服务', '1', '424', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26256', 'unitytxt_58', '到期日期', '1', '422', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26255', 'unitytxt_57', '授权日期', '1', '421', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26252', 'unitytxt_54', '授权域名', '1', '418', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26253', 'unitytxt_55', '网站名称', '1', '419', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26254', 'unitytxt_56', '授权类型', '1', '420', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26251', 'unitytxt_53', '请输入常用功能名称！', '1', '417', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26250', 'unitytxt_52', '请选择一个指向功能！', '1', '416', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26247', 'unitytxt_49', '选择指向功能', '1', '413', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26248', 'unitytxt_50', '常用功能名称', '1', '414', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26249', 'unitytxt_51', '直接下载压缩包会占用空间流量，如果空间限制流量，建议通过FTP下载。您确定要下载吗？', '1', '415', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26244', 'unitytxt_46', '其它页面细节设置', '1', '410', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26245', 'unitytxt_47', '了解商业授权', '1', '411', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26246', 'unitytxt_48', '前日', '1', '412', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26243', 'unitytxt_45', '显示产品分类列表（图片为该分类的栏目图片，在栏目设置中上传），点击对应的分类图片后进入该分类的产品缩略图列表。', '1', '409', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26241', 'unitytxt_43', '列表页展示方式', '1', '407', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26242', 'unitytxt_44', '直接显示产品缩略图列表，点击缩略图进入产品详情页。', '1', '408', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26237', 'unitytxt_39', '设置', '1', '403', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26238', 'unitytxt_40', '首页信息列表显示条数', '1', '404', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26239', 'unitytxt_41', '首页友情链接设置', '1', '405', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26240', 'unitytxt_42', '列表页每页显示条数', '1', '406', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26236', 'unitytxt_38', '代码会放在 &lt;/body&gt; 标签以上', '1', '402', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26235', 'unitytxt_37', '代码会放在 &lt;/head&gt; 标签以上', '1', '401', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26231', 'unitytxt_33', '权限设置', '1', '397', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26232', 'unitytxt_34', '资料文档上传', '1', '398', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26233', 'unitytxt_35', '回发邮件给此用户', '1', '399', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26234', 'unitytxt_36', '第三方代码（一般用于放置百度商桥代码、站长统计代码、谷歌翻译代码等）', '1', '400', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26228', 'unitytxt_30', '多栏目显示', '1', '394', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26229', 'unitytxt_31', '显示缩略图', '1', '395', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26230', 'unitytxt_32', '隐藏缩略图', '1', '396', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26226', 'unitytxt_28', '自定义时间参数', '1', '392', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26227', 'unitytxt_29', '请勾选要显示栏目', '1', '393', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26225', 'unitytxt_27', '每个栏目对应一个功能模块，请在栏目设置里查看所属模块。', '1', '391', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26222', 'unitytxt_24', 'Title设置', '1', '388', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26223', 'unitytxt_25', '关键词设置', '1', '389', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26224', 'unitytxt_26', '优化文字设置（可用于增加关键词密度）', '1', '390', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26221', 'unitytxt_23', '彻底解决静态页面经常需要手动生成的烦恼', '1', '387', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26220', 'unitytxt_22', '开启即可生效，无需生成。<br/>如服务器需要手动配置伪静态规则文件，请在右上角下载。', '1', '386', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26219', 'unitytxt_21', '您还没有下载任何应用功能', '1', '385', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26218', 'unitytxt_20', '已安装应用列表', '1', '384', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26217', 'unitytxt_19', '内置应用列表', '1', '383', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26213', 'unitytxt_15', '其它设置', '1', '379', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26214', 'unitytxt_16', '标准指纹文件', '1', '380', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26215', 'unitytxt_17', '指纹文件', '1', '381', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26216', 'unitytxt_18', '备份', '1', '382', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26211', 'unitytxt_13', '底部信息设置（显示在网站前台底部）', '1', '377', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26212', 'unitytxt_14', '样式设置', '1', '378', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26210', 'unitytxt_12', '至', '1', '376', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26208', 'unitytxt_10', '仅适用用于中文前台语言，浏览者可以在简繁体之间切换。', '1', '374', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26209', 'unitytxt_11', '密码修改（不修改请留空）', '1', '375', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26207', 'unitytxt_9', '同步参数', '1', '373', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26206', 'unitytxt_8', '该语言设置了独立域名，需要修改网站网址请在<font class=\'red\'>语言设置</font>中修改。', '1', '372', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26205', 'unitytxt_7', '备份包下载后建议及时删除备份文件，以免影响空间大小。', '1', '371', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26202', 'unitytxt_4', '功能相关', '1', '368', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26204', 'unitytxt_6', '版本不一致', '1', '370', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26203', 'unitytxt_5', '后台操作', '1', '369', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26200', 'unitytxt_2', '勾选则采用默认设置', '1', '366', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26201', 'unitytxt_3', '其它设置（用于不支持JS的移动终端展示，即免费版本的WAP前台页面）', '1', '367', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26196', 'ssl', 'SSL服务方式', '1', '362', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26197', 'tls', 'TLS服务方式', '1', '363', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26198', 'xtips', '小技巧：Ctrl + 回车键 可以快捷保存', '1', '364', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26199', 'unitytxt_1', '功能设置', '1', '365', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26195', 'loginOldwords', '此关键词已经被替换过!', '1', '361', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26194', 'loginSkin', '上传失败！此模板风格已经存在！', '1', '360', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26192', 'loginUserMudb1', '此用户名已经被使用', '1', '358', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26193', 'loginFail', '操作失败!', '1', '359', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26191', 'loginRegok', '<font color=green>恭喜你，可以注册</font>', '1', '357', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26190', 'loginUserMudb', '<font color=red>此用户名已经被使用</font>', '1', '356', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26188', 'loginIntput', '请输入登录帐号!', '1', '354', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26189', 'loginUserErr', '<font color=red>用户名格式错误</font>', '1', '355', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26187', 'reall', '批量还原后请手动生成列表静态页面', '1', '353', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26185', 'NewPassJS', '请您登录邮箱收取最新密码', '1', '351', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26186', 'delall', '批量删除后请手动生成二三级列表静态页面', '1', '352', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26182', 'deleteJS', '请先添加管理员再删除！', '1', '348', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26184', 'NoidJS1', '没有此用户或邮箱地址不正确', '1', '350', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26183', 'NoidJS', '没有此用户', '1', '349', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26179', 'jsx33', '展开高级选项', '1', '345', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26180', 'jsx34', '隐藏高级选项', '1', '346', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26181', 'jsx35', '上传临时文件夹(upload_tmp_dir)没有写权限,请联系空间商修改。', '1', '347', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26177', 'jsx31', '失败', '1', '343', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26178', 'jsx32', '登录超时，请重新登录！', '1', '344', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26176', 'jsx30', '静态页面名称与其它信息ID号冲突，请更换为字母+数字，不建议纯数字的静态页面名称', '1', '342', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26175', 'jsx29', '是否全部执行', '1', '341', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26173', 'jsx27', '静态页面名已存在', '1', '339', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26174', 'jsx28', '是否将选定内容放入回收站？', '1', '340', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26172', 'jsx26', '更新文件...', '1', '338', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26170', 'jsx24', '下载文件...', '1', '336', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26171', 'jsx25', '更新数据库...', '1', '337', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26169', 'jsx23', '开始升级，检测目录权限...', '1', '335', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26168', 'jsx22', '备份当前数据...', '1', '334', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26167', 'jsx21', '无法连接到服务器', '1', '333', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26166', 'jsx20', '正在检测...', '1', '332', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26165', 'jsx19', '测试失败！请检查帐号密码是否正确。', '1', '331', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26164', 'jsx18', '正在测试...', '1', '330', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26162', 'jsx16', '正在上传', '1', '328', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26163', 'jsx17', '上传成功！', '1', '329', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26161', 'jsx15', '上传', '1', '327', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26160', 'jsx14', '抱歉！该语言下没有同模块栏目存在，请先到对应语言添加栏目再操作！', '1', '326', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26159', 'jsx13', '不可同时操作。', '1', '325', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26157', 'jsx11', '正在获取信息...', '1', '323', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26158', 'jsx12', '该栏目下没有内容！', '1', '324', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26156', 'jsx10', '错误', '1', '322', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26155', 'jsx9', '错误：需要生成的静态页面路径不存在！', '1', '321', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26154', 'jsx8', '完成！', '1', '320', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26150', 'jsx4', '表单复制成功！', '1', '316', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26151', 'jsx5', '编辑器载入中...', '1', '317', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26152', 'jsx6', '成功', '1', '318', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26153', 'jsx7', '文件写入失败，可能没有写入的权限', '1', '319', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26148', 'jsx2', '请至少选一种语言！', '1', '314', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26149', 'jsx3', '请先选择需要复制的表单', '1', '315', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26147', 'jsx1', '载入中...', '1', '313', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26146', 'js70', '确定启用选中的模板吗？', '1', '312', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26145', 'js69', '确定启用选中的风格吗？', '1', '311', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26144', 'js68', '请选择zip格式文件', '1', '310', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26143', 'js67', '请至少选择一个所属栏目', '1', '309', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26142', 'js66', '确定要彻底清空所有回收站的内容？', '1', '308', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26140', 'js64', '是否还原所选内容', '1', '306', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26141', 'js65', '确定要还原所有回收站的内容？', '1', '307', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26138', 'js62', '您确定要移动所选吗？', '1', '304', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26139', 'js63', '确定清空', '1', '305', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26135', 'js59', '请填写目录名称', '1', '301', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26136', 'js60', '是否把选定内容放入回收站？', '1', '302', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26137', 'js61', '您确定要复制所选吗？', '1', '303', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26134', 'js58', '是否合并栏目？合并后该目录名称将被修改,点取消则保持原目录名称并进入下一步', '1', '300', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26133', 'js57', '您确认要移动该栏目吗？', '1', '299', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26130', 'js54', '正在生成静态页面...', '1', '296', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26131', 'js55', '返回', '1', '297', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26132', 'js56', '移动为一级栏目必须设置一个新的目录名称(目录名只能是数字或字母)', '1', '298', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26129', 'js53', '完成静态页面生成！', '1', '295', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26128', 'js52', '请命名栏目文件夹名称', '1', '294', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26127', 'js51', '请填写栏目名称', '1', '293', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26122', 'js46', '不能重复', '1', '288', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26123', 'js47', '正在删除静态页面...', '1', '289', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26126', 'js50', '该语言不存在相同模块的一级栏目', '1', '292', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26125', 'js49', '撤销', '1', '291', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26124', 'js48', '正在加载...', '1', '290', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26121', 'js45', '检测表单..', '1', '287', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26120', 'js44', 'Email地址不正确！', '1', '286', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26119', 'js43', '添加成功！是否继续添加信息？', '1', '285', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26115', 'js39', '请选择三级栏目', '1', '281', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26116', 'js40', '正在提交..', '1', '282', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26117', 'js41', '不能为空！', '1', '283', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26118', 'js42', '提交成功!', '1', '284', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26114', 'js38', '请选择二级栏目', '1', '280', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26113', 'js37', '请选择一级栏目', '1', '279', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26110', 'js34', '请先转移该栏目的三级栏目', '1', '276', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26112', 'js36', '请选择语言', '1', '278', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26111', 'js35', '上传临时文件夹（upload_tmp_dir）不可写或者域名/后台文件夹/include/uploadify.php没有访问权限。', '1', '277', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26109', 'js33', '静态页面名称不能为空', '1', '275', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26108', 'js32', '是否同时删除相关简历？', '1', '274', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26106', 'js30', '代理商', '1', '272', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26107', 'js31', '管理员', '1', '273', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26100', 'js24', '确定吗？', '1', '266', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26101', 'js25', '图片地址不能为空！', '1', '267', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26102', 'js26', 'Flash地址不能为空！', '1', '268', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26103', 'js27', '请填写地址！', '1', '269', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26104', 'js28', '不限', '1', '270', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26105', 'js29', '普通会员', '1', '271', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26099', 'js23', '没有选中的记录!', '1', '265', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26098', 'js22', '是否改变其状态?', '1', '264', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26097', 'js21', '设置已生效，是否删除所有已生成的静态页面？', '1', '263', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26096', 'js20', '网站地址不能为空', '1', '262', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26095', 'js19', '网站名称不能为空', '1', '261', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26093', 'js17', '招聘职位不能为空', '1', '259', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26094', 'js18', '原文字不能为空', '1', '260', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26091', 'js15', '请选择上传文件', '1', '257', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26092', 'js16', '下载地址不能为空', '1', '258', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26089', 'js13', '请输入标题', '1', '255', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26090', 'js14', '请选择二级及三级栏目', '1', '256', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26088', 'js12', '栏目文件夹名称不能为空', '1', '254', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26087', 'js11', '栏目名称不能为空', '1', '253', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26086', 'js10', '您的修改内容还没有保存，您确定离开吗？', '1', '252', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26085', 'js9', '模板文件夹不能为空', '1', '251', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26084', 'js8', '模板名称不能为空', '1', '250', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26082', 'js6', '两次输入的密码不一样', '1', '248', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26083', 'js7', '确定要删除选中的信息吗？一旦删除将不能恢复！', '1', '249', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26081', 'js5', 'email不能为空', '1', '247', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26080', 'js4', '登录密码不能为空', '1', '246', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26078', 'js2', '数据出错了', '1', '244', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26079', 'js3', '管理员帐号不能为空', '1', '245', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26077', 'js1', '请稍等,系统检测中....', '1', '243', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26076', 'dataerror', '数据错误', '1', '242', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26075', 'jsok', '操作成功', '1', '241', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26073', 'pages', '页', '1', '239', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26074', 'pageGo', '转到', '1', '240', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26071', 'delnow', '当前选中', '1', '237', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26072', 'marks', '：', '1', '238', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26070', 'displayimgTip', '展示图片', '1', '236', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26069', 'displayimg', '展示图片', '1', '235', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26067', 'Operating', '操作系统', '1', '233', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26068', 'noorderinfo', '排序越小越靠前', '1', '234', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26066', 'launched', '点击展开/隐藏侧栏', '1', '232', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26065', 'anonymity', '匿名', '1', '231', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26064', 'move', '转移', '1', '230', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26063', 'selectnow', '选择', '1', '229', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26062', 'detail', '查看详细', '1', '228', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26061', 'contentdetail', '详细内容', '1', '227', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26060', 'content', '内容', '1', '226', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26059', 'webaccess', '访问权限', '1', '225', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26058', 'descriptioninfo', '用于搜索引擎优化', '1', '224', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26057', 'keywordsinfo', '多个关键词请用\",\"隔开', '1', '223', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26056', 'keywords', '关键词', '1', '222', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26055', 'hits', '点击次数', '1', '221', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26054', 'addtime', '发布时间', '1', '220', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26053', 'updatetime', '更新时间', '1', '219', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26052', 'access3', '管理员', '1', '218', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26051', 'access2', '代理商', '1', '217', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26050', 'access1', '普通会员', '1', '216', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26049', 'access0', '不限', '1', '215', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26048', 'access', '权限', '1', '214', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26047', 'ordernumber', '数字越小排名越靠前', '1', '213', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26046', 'deleteselected', '删除', '1', '212', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26045', 'htmlok', '支持HTML语言', '1', '211', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26044', 'read', '已读', '1', '210', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26043', 'set', '参数配置', '1', '209', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26042', 'parameter', '参数', '1', '208', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26041', 'imagename', '请输入名称，留空将采用默认名称', '1', '207', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26040', 'search', '搜索', '1', '206', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26039', 'manager', '管理内容', '1', '205', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26038', 'newest', '最新', '1', '204', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26037', 'new', '最新信息', '1', '203', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26036', 'top', '置顶', '1', '202', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26035', 'wap', 'wap', '1', '201', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26034', 'recom', '推荐', '1', '200', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26033', 'images', '图片信息', '1', '199', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26032', 'image', '图片', '1', '198', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26031', 'title', '标题', '1', '197', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26030', 'description', '简短描述', '1', '196', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26029', '名称', '', '1', '195', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26028', 'order', 'No.', '1', '194', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26027', 'default', '默认', '1', '193', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26026', 'selected', '选择', '1', '192', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26025', 'selectall', '全选', '1', '191', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26024', 'item', '条', '1', '190', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26023', 'metinfo', 'MetInfo企业网站管理系统', '1', '189', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26022', 'no', '否', '1', '188', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26021', 'yes', '是', '1', '187', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26020', 'sort', '排序', '1', '186', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26019', 'type', '类型', '1', '185', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26018', 'close', '关闭', '1', '184', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26017', 'open', '开启', '1', '183', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26016', 'operate', '操作', '1', '182', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26015', 'preview', '预览', '1', '181', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26014', 'delete', '删除', '1', '180', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26013', 'modify', '修改', '1', '179', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26012', 'View', '查看', '1', '178', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26011', 'editor', '编辑', '1', '177', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26010', 'add', '添加', '1', '176', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26003', 'dataerr1', '失败！导入的数据与系统版本不一致！', '1', '169', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26004', 'fontfamily', '', '1', '170', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26005', 'Submit', '保存', '1', '171', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26006', 'Submitall', '提交', '1', '172', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26007', 'Reset', '重置', '1', '173', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26008', 'Copy', '复制', '1', '174', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26009', 'Copytitle', '复制至...', '1', '175', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26002', 'langadderr6', '远程下载语言包失败，已复制默认语言包。', '1', '168', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26000', 'langadderr4', '无法同步官网语言包，错误原因：', '1', '166', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26001', 'langadderr5', '您删除的是默认语言！请先设置一个其它语言为默认语言再操作！', '1', '167', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25997', 'langadderr1', '非法语言标识', '1', '163', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25998', 'langadderr2', '您现在在此语言进行操作！请到右上角切换到其它语言再删除！', '1', '164', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25999', 'langadderr3', '语言添加成功！在右上角的网站语言可以切换到新增的语言。', '1', '165', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25996', 'basictips7', '邮箱设置正确！', '1', '162', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25995', 'basictips6', '<b>解决办法：</b>请检查帐号密码和smtp是否有误或查看邮箱是否开启smtp服务。', '1', '161', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25994', 'basictips5', '<b>错误提示：</b>测试发送邮件失败！', '1', '160', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25992', 'basictips3', '邮件发送测试', '1', '158', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25993', 'basictips4', '收到邮件说明您网站的系统邮箱设置正确。', '1', '159', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25991', 'basictips2', '<b>解决办法：</b>联系空间商开启其中一个函数。', '1', '157', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25990', 'basictips1', '<b>错误提示：</b>pfsockopen和fsockopen函数被禁用！', '1', '156', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25988', 'updaterr22', '是否重试此步升级?点击‘取消’将会放弃此次升级！', '1', '154', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25989', 'updaterr23', 'API服务器验证失败，API服务器无法访问您的网站，请关闭网站引导页或暂时网站防护工具', '1', '155', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25987', 'updaterr21', '升级出现问题！', '1', '153', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25986', 'updaterr20', '链接不上服务器，无法完成商业会员验证！', '1', '152', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25984', 'updaterr18', 'cache文件不可写，无法完成权限验证!', '1', '150', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25985', 'updaterr19', '权限认证失败', '1', '151', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25983', 'updaterr17', '开始整站备份', '1', '149', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25982', 'updaterr16', '是否进行整站备份', '1', '148', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25981', 'updaterr15', '更新文件成功', '1', '147', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25980', 'updaterr14', '文件复制失败。错误原因：文件没有写权限', '1', '146', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25975', 'updaterr9', '下载文件中', '1', '141', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25976', 'updaterr10', '下载文件完成，开始更新', '1', '142', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25977', 'updaterr11', '数据库更新成功', '1', '143', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25978', 'updaterr12', '数据库更新失败。错误原因：', '1', '144', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25979', 'updaterr13', '数据库不需要更新', '1', '145', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25973', 'updaterr7', '文件权限检测正常', '1', '139', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25974', 'updaterr8', '更新文件列表下载失败', '1', '140', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25972', 'updaterr6', '以下文件不可写，请登陆FTP修改权限为777或联系空间商修改', '1', '138', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25968', 'updaterr2', '无法备份数据库', '1', '134', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25969', 'updaterr3', '无法备整站文件', '1', '135', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25970', 'updaterr4', '网站备份成功', '1', '136', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25971', 'updaterr5', '已备份', '1', '137', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25965', 'supportnot', '空间不支持在线更新，请联系空间商开启curl,fsockopen,pfsockopen函数其中之一', '1', '131', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25967', 'updaterr1', '文件备份失败，错误原因：文件没有可写权限', '1', '133', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25966', 'updownerrs', '文件下载失败，错误原因：', '1', '132', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25964', 'redownload', '重新下载', '1', '130', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25963', 'retested', '重新检测', '1', '129', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25962', 'cvinfo', '简历信息', '1', '128', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25961', 'Error', '错误', '1', '127', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25959', 'upfileFail10', '不支持imagejpeg函数', '1', '125', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25960', 'upfileFail11', '不支持imagepng函数', '1', '126', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25958', 'upfileFail9', '不支持imagegif函数', '1', '124', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25957', 'upfileFail8', '文件损坏,缩略图生成失败', '1', '123', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25956', 'upfileFail7', '不支持当前文件格式生成缩略图，请上传JPG,GIF,PNG图片', '1', '122', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25955', 'upfileFail6', '空间不支持GD库，无法生成缩略图', '1', '121', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25954', 'upfileFail5', 'bmp的格式无法自动生成缩图', '1', '120', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25953', 'upfileFail4', '创建目录失败', '1', '119', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25952', 'upfileNotice', '注意：', '1', '118', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25950', 'upfileOver4', 'upload文件夹没有写权限,请联系空间商修改。', '1', '116', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25951', 'upfileOver5', '上传临时文件夹(upload_tmp_dir)没有写权限,请联系空间商修改。', '1', '117', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25949', 'upfileOver3', '没有文件被上传。', '1', '115', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25948', 'upfileOver2', '文件只有部分被上传。', '1', '114', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25945', 'upfileOK', '文件上传成功', '1', '111', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25946', 'upfileOver', '上传的文件超过了 php.ini 中 upload_max_filesize 选项限制的值。', '1', '112', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25947', 'upfileOver1', '上传文件的大小超过了 HTML 表单中 MAX_FILE_SIZE 选项指定的值。', '1', '113', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25944', 'upfileTip3', '文件格式不允许上传。', '1', '110', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25943', 'upfileTip2', '文件名已经存在。', '1', '109', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25942', 'upfileTip1', '，不能上传。', '1', '108', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25941', 'upfileByte', '字节', '1', '107', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25935', 'upfileFail', '创建水印目录失败', '1', '101', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25936', 'upfileFail1', '创建缩图目录失败', '1', '102', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25937', 'upfileFail2', '创建图片目录失败', '1', '103', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25938', 'upfileFail3', '指定的路径不可写，或者没有此路径!', '1', '104', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25940', 'upfileMax', '大小超出系统限定值', '1', '106', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25939', 'upfileFile', '上传文件', '1', '105', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25933', 'funCreate', '生成文件', '1', '99', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25934', 'funjumpget', '如果您的浏览器没有自动跳转，请点击这里', '1', '100', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25932', 'funFile', '文件', '1', '98', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25931', 'funOK', '成功！', '1', '97', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25930', 'funFail', '失败！', '1', '96', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25929', 'funTip1', '不可写，请检查其属性后重试！', '1', '95', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25928', 'funNav4', '都显示', '1', '94', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25927', 'funNav3', '尾部导航条', '1', '93', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25926', 'funNav2', '头部主导航条', '1', '92', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25925', 'funNav1', '不显示', '1', '91', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25924', 'adminwenjian', '文件名称修改失败，你可以手动修改后台文件夹名称', '1', '90', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25923', 'indexmailset', '发件箱设置', '1', '89', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25922', 'indexthanks', '感谢使用', '1', '88', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25921', 'indexpeople', '的个人资料', '1', '87', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25920', 'indexnarrowver2', '切换到窄版', '1', '86', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25919', 'indexnarrowver1', '窄版', '1', '85', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25918', 'indexwidever2', '切换到宽版', '1', '84', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25917', 'indexwidever1', '宽版', '1', '83', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25916', 'indexperson', '个人资料', '1', '82', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25915', 'indexadminattay', '管理员组管理', '1', '81', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25914', 'indexadminname', '管理员管理', '1', '80', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25913', 'indexfeedbackm', '反馈信息管理', '1', '79', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25912', 'indexlink', '友情链接', '1', '78', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25911', 'indexwebcount', '访问统计', '1', '77', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25910', 'indexPhysical', '网站体检', '1', '76', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25909', 'indexwap', 'WAP功能（商业版）', '1', '75', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25908', 'indexhtm', '静态页面生成', '1', '74', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25907', 'indexhtmset', '静态页面', '1', '73', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25906', 'indexhot', '热门标签', '1', '72', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25905', 'indexseoset', 'SEO参数', '1', '71', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25904', 'indexcv', '简历参数配置', '1', '70', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25900', 'indexflashset', 'Banner设置', '1', '66', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25901', 'indexflash', 'Banner管理', '1', '67', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25902', 'indexonlineset', '在线客服', '1', '68', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25903', 'indexonline', '客服列表', '1', '69', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25899', 'indexhomeset', '首页设置', '1', '65', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25898', 'indexpic', '缩略图/水印', '1', '64', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25897', 'indexbbs', '技术支持', '1', '63', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25896', 'indexebook', '使用手册', '1', '62', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25893', 'indexupload', '上传文件管理', '1', '59', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25894', 'indexskinset', '模板配置教程', '1', '60', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25895', 'indexcode', '商业授权', '1', '61', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25892', 'indexsafe', '网站安全', '1', '58', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25891', 'indexdataback', '数据备份', '1', '57', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25890', 'indexotherinfo', '其他内容', '1', '56', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25889', 'indexfoot', '底部信息', '1', '55', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25888', 'indexlang', '语言设置', '1', '54', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25887', 'indexbasicinfo', '基本设置', '1', '53', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25885', 'indexloginout', '退出', '1', '51', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25886', 'indexsysteminfo', '系统信息', '1', '52', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25883', 'indexhome', '网站首页', '1', '49', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25884', 'indexadmin', '常用功能', '1', '50', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25882', 'indexwelcom', '您好', '1', '48', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25881', 'indexuser', '用户管理', '1', '47', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25879', 'indexseo', '优化推广', '1', '45', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25880', 'indexapp', '企业应用', '1', '46', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25878', 'indexcontent', '内容管理', '1', '44', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25877', 'indexcolumn', '栏目设置', '1', '43', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25876', 'indexskin', '界面风格', '1', '42', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25875', 'indexbasic', '网站设置', '1', '41', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25874', 'loginalllang', '你没有管理此种语言内容的权限，请联系管理员开通', '1', '40', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25873', 'loginall', '你没有添加、修改、删除信息的权限，请联系管理员开通', '1', '39', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25872', 'loginedit', '你没有修改信息的权限，请联系管理员开通', '1', '38', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25871', 'loginadd', '你没有添加信息的权限，请联系管理员开通', '1', '37', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25870', 'logindelete', '你没有删除信息的权限，请联系管理员开通', '1', '36', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25869', 'loginpass', '用户名或密码错误', '1', '35', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25868', 'loginname', '用户名或密码错误', '1', '34', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25867', 'logincodeerror', '验证码错误', '1', '33', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25866', 'loginconfirm', '登录', '1', '32', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25865', 'loginforget', '忘记密码?', '1', '31', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25864', 'logincodechange', '点击刷新验证码', '1', '30', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25861', 'loginusename', '用户名', '1', '27', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25862', 'loginpassword', '密码', '1', '28', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25863', 'logincode', '验证码', '1', '29', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25860', 'loginlanguage', '后台语言', '1', '26', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25859', 'loginmetinfo', '打造具有营销价值的企业网站', '1', '25', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25858', 'loginadmin', '管理员登录', '1', '24', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25855', 'logintitle', '后台登录', '1', '21', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25856', 'loginid', '用户名不能为空', '1', '22', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25857', 'loginps', '密码不能为空', '1', '23', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25854', 'myapp', '我的应用', '1', '20', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25853', 'webnanny', '网站保姆', '1', '19', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25852', 'smsfuc', '短信功能', '1', '18', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25851', 'recycle', '内容回收站', '1', '17', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25849', 'field', '字段', '1', '15', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25850', 'bulkopr', '批量操作', '1', '16', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25848', 'contsting', '内容页设置', '1', '14', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25844', 'managertyp5', '自定义', '1', '10', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25847', 'pagesting', '列表页设置', '1', '13', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25846', 'Universal', '通用设置', '1', '12', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25845', 'temstyle', '模板管理', '1', '11', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25843', 'managertyp4', '内容管理员', '1', '9', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25841', 'managertyp2', '管理员', '1', '7', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25842', 'managertyp3', '优化推广员', '1', '8', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25840', 'managertyp1', '创始人', '1', '6', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25839', 'uplaoderr3', '请上传sql后缀文件或zip后缀文件！', '1', '5', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25836', 'filenomor', '文件未上传或不存在', '1', '2', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25837', 'uplaoderr1', '上传失败！', '1', '3', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25838', 'uplaoderr2', '请上传zip文件！', '1', '4', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25835', 'clickview', '点击查看', '1', '1', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('25834', 'otherfields', '其它字段', '1', '8', '0', '0', 'cn');
INSERT INTO `met_language` VALUES ('25833', 'modifyadminidtips', '当创始人账号为admin时，您拥有一次机会，可以修改创始人名称。', '1', '109', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25832', 'modifyadminidto', '修改为', '1', '108', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25831', 'modifyadminid', '修改用户名', '1', '107', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25829', 'membertips1', '注册时间', '1', '105', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25830', 'memberdelactive', '清空未激活会员', '1', '106', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25827', 'memberaddarray', '添加会员组', '1', '103', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25828', 'memberaddarraytips1', '值越大，阅读权限越大。', '1', '104', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25826', 'memberall', '显示所有', '1', '102', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25822', 'memberjstxt5', '阅读权限必须是1~255之间任意整数', '1', '98', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25824', 'memberarayname', '会员组名', '1', '100', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25825', 'memberpermission', '阅读权限', '1', '101', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25823', 'memberwebpower', '阅读权限不能重复', '1', '99', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25818', 'memberjstxt1', '请输入确认密码！', '1', '94', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25821', 'memberjstxt4', '会员组名称不能为空', '1', '97', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25820', 'memberjstxt3', '两次密码输入不一致！', '1', '96', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25819', 'memberjstxt2', '请输入登录密码！', '1', '95', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25817', 'membereditorTitle', '修改会员信息', '1', '93', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25816', 'memberCheck', '是否激活', '1', '92', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25815', 'memberCompanyWebsite', '公司网址', '1', '91', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25814', 'memberCompanyAddress', '公司联系地址', '1', '90', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25813', 'memberCompanyCode', '公司邮政编码', '1', '89', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25812', 'memberCompanyFax', '公司传真', '1', '88', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25811', 'memberCompanyName', '公司名称', '1', '87', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25810', 'memberIntro', '会员简介', '1', '86', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25804', 'memberSex', '性别', '1', '80', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25805', 'memberMan', '先生', '1', '81', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25806', 'memberWoman', '女士', '1', '82', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25807', 'memberTel', '联系电话', '1', '83', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25808', 'memberCell', '手机', '1', '84', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25809', 'memberTaoBao', '淘宝', '1', '85', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25803', 'memberPs1', '密码确认', '1', '79', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25802', 'memberTip', '不修改请留空', '1', '78', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25801', 'memberPs', '登录密码', '1', '77', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25800', 'memberName', '姓名', '1', '76', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25799', 'memberSearch', '用户名查询', '1', '75', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25797', 'memberFD', '反馈', '1', '73', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25798', 'memberCV', '简历', '1', '74', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25796', 'memberMessage', '留言', '1', '72', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25795', 'memberDetail', '详细', '1', '71', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25794', 'memberLastLogin', '最后登录时间', '1', '70', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25792', 'memberActive', '激活', '1', '68', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25793', 'memberNum', '登录次数', '1', '69', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25791', 'memberEmail', '邮箱地址', '1', '67', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25790', 'memberUserName', '用户名', '1', '66', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25789', 'memberSelectType', '选择类型', '1', '65', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25788', 'memberType', '会员类型', '1', '64', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25787', 'memberalllang', '所有语言中的会员', '1', '63', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25786', 'memberAdd', '添加会员', '1', '62', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25784', 'memberChecked', '已激活', '1', '60', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25785', 'memberUnChecked', '未激活', '1', '61', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25783', 'memberarrayManage', '会员组管理', '1', '59', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25782', 'memberManage', '会员管理', '1', '58', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25781', 'memberforceinfo', '使用带密钥的地址便可以浏览所有信息，如：', '1', '57', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25780', 'memberforce', '强制浏览密钥', '1', '56', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25779', 'membercontrol', '会员控制面板公告', '1', '55', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25778', 'memberregisteremail', '注册激活邮件', '1', '54', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25777', 'memberloginok4', '开启但需要管理员后台验证', '1', '53', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25776', 'memberloginok3', '开启但需要邮件验证', '1', '52', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25775', 'memberlogin', '会员注册', '1', '51', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25773', 'memberuse', '会员功能', '1', '49', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25774', 'memberuseok2', '开启会员功能', '1', '50', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25771', 'hello', '您好！', '1', '47', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25772', 'memberset', '会员功能配置', '1', '48', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25769', 'getTip5', '找回密码', '1', '45', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25770', 'getOK', '发送成功', '1', '46', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25768', 'getTip4', '您提交的找回密码未能成功！可能是邮箱服务器设置不正确，请通过其它方式找回密码', '1', '44', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25767', 'getTip3', '创建新密码链接的电子邮件已经发送到您的邮箱，请尽快修改您的密码。', '1', '43', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25766', 'getTip2', '感谢您对MetInfo的支持与厚爱，希望MetInfo能为您的网站创造价值！', '1', '42', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25765', 'getTip1', '您的密码重置请求已经得到验证。请点击以下链接输入您的新密码：', '1', '41', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25764', 'getNotice', '管理员密码找回', '1', '40', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25763', 'adminpassTitle', '修改个人信息', '1', '39', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25762', 'adminBackup', '返回', '1', '38', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25761', 'adminSelectAll', '全部选择', '1', '37', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25759', 'adminOperate4', '删除信息', '1', '35', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25760', 'adminColumn', '栏目权限', '1', '36', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25758', 'adminOperate3', '修改信息', '1', '34', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25756', 'adminOperate1', '完全控制', '1', '32', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25757', 'adminOperate2', '添加信息', '1', '33', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25753', 'adminPower', '信息权限', '1', '29', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25754', 'adminTip2', '只允许查看自己发表的信息', '1', '30', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25755', 'adminOperate', '操作权限', '1', '31', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25752', 'adminlang', '全选', '1', '28', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25750', 'adminTaoBao', '淘宝', '1', '26', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25751', 'adminIntro', '管理员简介', '1', '27', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25747', 'adminMan', '先生', '1', '23', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25748', 'adminWoman', '女士', '1', '24', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25749', 'adminTip1', '用于取回账号密码', '1', '25', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25746', 'adminSex', '性别', '1', '22', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25745', 'adminpassword1', '密码确认', '1', '21', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25744', 'adminpassword', '登录密码', '1', '20', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25742', 'adminLastLogin', '最后登录时间', '1', '18', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25743', 'adminLastIP', '最后登录IP', '1', '19', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25736', 'metadmin', '管理员', '1', '12', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25737', 'adminusername', '用户名', '1', '13', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25738', 'adminname', '姓名', '1', '14', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25739', 'admintel', '电话', '1', '15', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25740', 'adminmobile', '手机', '1', '16', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25741', 'adminLoginNum', '登录次数', '1', '17', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25735', 'admintips7', '管理员权限设置', '1', '11', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25729', 'adminjurisd', '语言权限', '1', '5', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25730', 'admintips1', '所有语言', '1', '6', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25731', 'admintips2', '至少选择一个', '1', '7', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25732', 'admintips3', '取消之后其他用户新增的网站栏目该用户将没有管理权限', '1', '8', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25734', 'admintips5', '用户组', '1', '10', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25733', 'admintips4', '新增栏目权限', '1', '9', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25727', 'webcompre', '整站压缩包', '1', '3', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25728', 'admininfo', '管理员基本信息', '1', '4', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25726', 'uploadfile', '上传文件夹', '1', '2', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25724', 'usermanagement', '用户管理', '1', '7', '0', '0', 'cn');
INSERT INTO `met_language` VALUES ('25725', 'database', '数据库', '1', '1', '7', '0', 'cn');
INSERT INTO `met_language` VALUES ('25723', 'map_contents', '公司地址', '1', '357', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25721', 'map_input', '输入地址查询', '1', '355', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25722', 'map_title', '公司名称', '1', '356', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25720', 'smstips89', '获取短信密钥失败，无法连接服务器！', '1', '354', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25713', 'nursetips39', '友链提醒', '1', '347', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25714', 'nursetips40', '每日提醒次数', '1', '348', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25715', 'nursetips41', '次', '1', '349', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25716', 'nursetips42', '达到上限后将停止短信提醒', '1', '350', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25717', 'smstips86', '数据已经更新，3秒后刷新后台！', '1', '351', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25718', 'smstips87', '获取短信密钥中，请勿刷新页面！', '1', '352', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25719', 'smstips88', '获取短信密钥成功', '1', '353', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25711', 'nursetips37', '简历提醒', '1', '345', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25712', 'nursetips38', '每当有访客提交友情链接申请，系统将会发送一条含对方网址和网站名称的短信到您的手机', '1', '346', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25709', 'nursetips35', '留言提醒', '1', '343', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25710', 'nursetips36', '每当有访客提交简历，系统将会发送一条含投递职位和应聘者姓名的短信到您的手机', '1', '344', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25707', 'nursetips33', '反馈提醒', '1', '341', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25708', 'nursetips34', '每当有访客提交留言，系统将会发送一条含留言内容(前10个字符)的短信到您的手机', '1', '342', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25706', 'nursetips32', '每当有访客提交反馈信息，系统会发送一条含反馈标题的短信到您的手机', '1', '340', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25705', 'nursetips31', '注册提醒', '1', '339', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25704', 'nursetips30', '每当有访客注册会员，系统会发送一条短信到您的手机', '1', '338', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25703', 'nursetips29x', '只在指定时间段内监测', '1', '337', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25702', 'nursetips29', '只在指定星期段内随机时间段监测', '1', '336', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25701', 'nursetips28', '星期日', '1', '335', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25700', 'nursetips27x', '星期日', '1', '334', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25696', 'nursetips24', '星期三', '1', '330', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25697', 'nursetips25', '星期四', '1', '331', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25698', 'nursetips26', '星期五', '1', '332', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25699', 'nursetips27', '星期六', '1', '333', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25695', 'nursetips23', '星期二', '1', '329', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25691', 'nursetips19', '指定时间段监测一次', '1', '325', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25692', 'nursetips20', '时间段', '1', '326', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25693', 'nursetips21', '每月随机时间段检测', '1', '327', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25694', 'nursetips22', '星期一', '1', '328', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25684', 'nursetips12', '访问监测', '1', '318', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25685', 'nursetips13', '监测网址', '1', '319', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25686', 'nursetips14', '监测频率', '1', '320', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25687', 'nursetips15', '每小时一次', '1', '321', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25688', 'nursetips16', '每天一次', '1', '322', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25689', 'nursetips17', '每周一次', '1', '323', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25690', 'nursetips18', '每月一次', '1', '324', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25682', 'nursetips10', '接收短信提醒的手机号码，多个请换行', '1', '316', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25683', 'nursetips11', '指定时间监测您网站能否正常访问，如不能正常访问，则发送一条监测报告到您的手机', '1', '317', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25680', 'nursetips8', '报告发送时间', '1', '314', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25681', 'nursetips9', '接收号码', '1', '315', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25679', 'nursetips7', '请确认网址！在系统设置-基本信息-网站地址修改', '1', '313', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25677', 'nursetips5', '流量统计报告', '1', '311', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25678', 'nursetips6', '统计网址', '1', '312', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25675', 'nursetips3', '访客操作提醒', '1', '309', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25676', 'nursetips4', '每天指定时间发送昨日的流量统计报告到您的手机', '1', '310', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25674', 'nursetips2', '访问故障监测', '1', '308', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25673', 'nursetips1', '流量统计保告', '1', '307', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25671', 'dlapptips17', '可进行网站体检、查杀木马、文件校对，建议定期使用', '1', '305', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25672', 'dlapptips18', '可以管理注册的会员、设置会员组以及阅读权限、其它相关设置等', '1', '306', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25669', 'dlapptips15', '原版本名为在线交流，漂浮的在线即时交流工具，可添加QQ、旺旺、MSN、SKYPE等', '1', '303', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25670', 'dlapptips16', '可以管理后台上传的文件', '1', '304', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25668', 'dlapptips14', '原为FLASH设置，可用于上传或设置网站页面的大图轮播（一般位于导航下方）', '1', '302', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25667', 'dlapptips13', '用于监听网站状态，可以利用短信功能将网站实时状况发送到指定手机号码', '1', '301', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25666', 'dlapptips12', '可以用于批量发送、查看发送记录、流水账，以及充值短信费用', '1', '300', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25660', 'dlapptips6', '卸载', '1', '294', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25661', 'dlapptips7', '尊敬的', '1', '295', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25662', 'dlapptips8', '您当前为：', '1', '296', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25663', 'dlapptips9', '用户使用', '1', '297', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25664', 'dlapptips10', '仅限', '1', '298', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25665', 'dlapptips11', '用于网站在移动终端展示的功能<br/>商业版WAP功能更全面，页面展示更绚丽。<a href=\"http://www.metinfo.cn/web/wap.htm\" target=\"_blank\" class=\"red\">详情请看</a>', '1', '299', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25656', 'dlapptips2', '应用商店', '1', '290', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25657', 'dlapptips3', '说明：', '1', '291', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25658', 'dlapptips4', '版本：', '1', '292', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25659', 'dlapptips5', '打开', '1', '293', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25653', 'mobiletips6', '查看图片', '1', '287', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25654', 'mobiletips7', '次', '1', '288', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25655', 'dlapptips1', '已安装应用', '1', '289', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25652', 'mobiletips5', '没有添加相关模块的栏目', '1', '286', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25649', 'mobiletips2', '没有开启或添加相关功能版块', '1', '283', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25650', 'mobiletips3', '文章发布', '1', '284', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25651', 'mobiletips4', '请填写标题', '1', '285', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25648', 'mobiletips1', '您的浏览器没有开启javascript支持，开启后才能进行相应的后台操作。', '1', '282', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25644', 'waptips6', '隐藏', '1', '278', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25645', 'waptips7', '开启静态页面仅智能机支持自动跳转，建议使用伪静态', '1', '279', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25647', 'waptips9', '为空将显示网站LOGO', '1', '281', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25646', 'waptips8', '指定域名', '1', '280', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25643', 'waptips5', '显示', '1', '277', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25641', 'waptips3', '为空将显示网站首页标题', '1', '275', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25642', 'waptips4', '为空将显示网站简短描述', '1', '276', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25639', 'waptips1', 'Wap设置', '1', '273', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25640', 'waptips2', '设置Wap内容页展示图片尺寸', '1', '274', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25638', 'smstips95', '错误原因：', '1', '272', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25637', 'smstips94', '当前短信发送价格和服务器设定价格不一致，点击<a href=\'\'>此处</a>刷新页面，重新获取发送价格', '1', '271', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25635', 'smstips92', '联系', '1', '269', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25636', 'smstips93', '开通', '1', '270', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25634', 'smstips91', '及时查收余额', '1', '268', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25632', 'smstips84', '立即兑换', '1', '266', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25633', 'smstips90', '请注册充值后，', '1', '267', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25631', 'smstips83', '优惠劵使用说明', '1', '265', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25630', 'smstips82', '使用成功', '1', '264', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25629', 'smstips81', '超过使用时间', '1', '263', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25628', 'smstips80', '此劵已经使用', '1', '262', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25627', 'smstips79', '无此优惠劵', '1', '261', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25626', 'smstips78', '优惠劵', '1', '260', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25625', 'smstips85', '从官网获取数据中，请误刷新页面', '1', '259', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25623', 'smstips76', '服务器无响应', '1', '257', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25624', 'smstips77', '无法连接短信发送服务器，请网站体检！', '1', '258', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25621', 'smstips74', '发送密码错误', '1', '255', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25622', 'smstips75', '网站无法访问', '1', '256', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25620', 'smstips73', '短信内容和手机号码不能为空', '1', '254', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25619', 'smstips72', '余额不足', '1', '253', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25618', 'smstips71', '异常操作，余额不足', '1', '252', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25617', 'smstips70', '发送成功(有延迟)', '1', '251', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25616', 'smstips69', '号码不符合规则', '1', '250', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25615', 'smstips68', '手机号码太多，最多800个号码', '1', '249', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25614', 'smstips67', '短信内容太长，最多350个字', '1', '248', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25613', 'smstips66', '余额不足', '1', '247', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25612', 'smstips65', '操作', '1', '246', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25611', 'smstips64', '状态', '1', '245', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25610', 'smstips63', '对方号码', '1', '244', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25609', 'smstips62', '短信内容', '1', '243', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25608', 'smstips61', '密码找回', '1', '242', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25607', 'smstips60', '访客操作提醒', '1', '241', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25602', 'smstips55', '发送时间', '1', '236', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25606', 'smstips59', '访问故障监测', '1', '240', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25604', 'smstips57', '批量发送', '1', '238', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25605', 'smstips58', '流量统计报告', '1', '239', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25603', 'smstips56', '发送类型', '1', '237', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25599', 'smstips52', '正在发送...', '1', '233', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25600', 'smstips53', '您确定清空所有发送记录吗？', '1', '234', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25601', 'smstips54', '短信内容或手机号码', '1', '235', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25591', 'smstips44', '修改发送密码', '1', '225', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25592', 'smstips45', '费用预计', '1', '226', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25593', 'smstips46', '元每条，共发送', '1', '227', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25594', 'smstips47', '条', '1', '228', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25595', 'smstips48', '发送', '1', '229', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25596', 'smstips49', '发送成功后需等待片刻才能收到短信', '1', '230', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25597', 'smstips50', '正在获取...', '1', '231', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25598', 'smstips51', '暂无', '1', '232', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25590', 'smstips43', '发送密码', '1', '224', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25588', 'smstips41', '获取已激活会员手机号码', '1', '222', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25589', 'smstips42', '去除重复号码', '1', '223', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25587', 'smstips40', '个号码', '1', '221', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25583', 'smstips36', '个字', '1', '217', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25584', 'smstips37', '共', '1', '218', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25585', 'smstips38', '条短信', '1', '219', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25586', 'smstips39', '请填写接收短信的手机号码<br/>多个手机号码请换行<br/>一次不超过800个手机号码<br/>当前共', '1', '220', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25580', 'smstips33', '短信内容', '1', '214', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25581', 'smstips34', '中文/英文第一条66个字，第二条起64个字<br/>超过字数算将切分为多条短信', '1', '215', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25582', 'smstips35', '当前字数：', '1', '216', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25579', 'smstips32', '建议在短信结尾加上如 【某某公司】 的字样（两边的框也需要），否则有可能接收不到。', '1', '213', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25578', 'smstips31', '短信内容有非法关键词可能会被拦截，费用无法退回，所以建议先给2、3个手机号码试发一次。', '1', '212', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25577', 'smstips29', '至少6位', '1', '211', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25576', 'smstips28', '新发送密码', '1', '210', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25569', 'smstips21', '发生金额', '1', '203', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25574', 'smstips26', '服务密码', '1', '208', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25575', 'smstips27', '服务密码是第一次充值时由系统自动生成并发送到您邮箱的不可更改密码', '1', '209', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25573', 'smstips25', '修改服务密码', '1', '207', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25571', 'smstips23', '操作事由', '1', '205', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25572', 'smstips24', '操作时间', '1', '206', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25570', 'smstips22', '账户余额', '1', '204', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25566', 'smstips18', '操作类型', '1', '200', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25567', 'smstips19', '充值', '1', '201', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25568', 'smstips20', '扣款', '1', '202', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25564', 'smstips16', '财务流水记录在官方服务器上，不影响您网站数据库大小，会保存最近30天的财务记录。', '1', '198', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25565', 'smstips17', '序列', '1', '199', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25563', 'smstips15', '短信资费说明', '1', '197', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25562', 'smstips14', '充值成功后款项无法退还，请谨慎充值！', '1', '196', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25561', 'smstips13', '首次充值请确定基本设置的网址为您的域名，当前为：', '1', '195', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25560', 'smstips12', '注意事项', '1', '194', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25559', 'smstips11', '立即充值', '1', '193', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25557', 'smstips9', '元', '1', '191', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25558', 'smstips10', '首次充值成功将会发送服务密码到您的邮箱，服务密码很重要，请妥善保管！', '1', '192', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25556', 'smstips8', '充值金额', '1', '190', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25553', 'smstips5', '在线短信充值', '1', '187', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25554', 'smstips6', '当前余额', '1', '188', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25555', 'smstips7', '付款方式', '1', '189', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25548', 'physicaltips41', '对比结果', '1', '182', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25549', 'smstips1', '批量发送', '1', '183', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25550', 'smstips2', '发送记录', '1', '184', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25551', 'smstips3', '财务流水', '1', '185', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25552', 'smstips4', '在线充值', '1', '186', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25546', 'physicaltips39', '处不一致', '1', '180', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25547', 'physicaltips40', '返回', '1', '181', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25544', 'physicaltips37', '正在对比...', '1', '178', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25545', 'physicaltips38', '查看上次对比结果', '1', '179', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25543', 'physicaltips36', '立即对比', '1', '177', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25542', 'physicaltips35', '文件校对：网站所有文件与上次备份指纹进行比对，找出缺失或可疑文件，需手动登录FTP修复。<br/>网站升级，应用和模板的下载删除，会改变指纹，建议这些操作之前指纹对比，操作之后备份指纹。', '1', '176', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25541', 'physicaltips34', '立即备份指纹', '1', '175', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25540', 'physicaltips33', '正在备份...', '1', '174', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25539', 'physicaltips32', '备份指纹：记录网站所有文件及文件大小', '1', '173', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25538', 'physicaltips31', '扫描结果', '1', '172', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25537', 'physicaltips30', '重新扫描', '1', '171', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25536', 'physicaltips29', '个', '1', '170', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25531', 'physicaltips24', '立即扫描', '1', '165', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25532', 'physicaltips25', '查看上次扫描结果', '1', '166', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25533', 'physicaltips26', '可疑文件', '1', '167', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25534', 'physicaltips27', '个，非法后缀文件', '1', '168', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25535', 'physicaltips28', '个，非系统文件夹', '1', '169', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25530', 'physicaltips23', '能够扫描到网站目录下存在的可疑文件，建议定期扫描', '1', '164', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25529', 'physicaltips22', '安全项目', '1', '163', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25527', 'physicaltips20', '优化项目', '1', '161', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25528', 'physicaltips21', '推荐修复这些项目', '1', '162', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25526', 'physicaltips19', '这些项目可能会导致网站无法正常访问，请尽快修复', '1', '160', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25525', 'physicaltips18', '危险项目', '1', '159', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25524', 'physicaltips17', '分', '1', '158', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25523', 'physicaltips16', '重新体检', '1', '157', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25522', 'physicaltips15', '体检时间', '1', '156', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25521', 'physicaltips14', '体检得分', '1', '155', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25520', 'physicaltips13', '立即体检', '1', '154', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25518', 'physicaltips11', '项有问题', '1', '152', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25519', 'physicaltips12', '建议每周定期体检可以发现您网站存在的细节问题，并保护您的网站安全。', '1', '153', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25516', 'physicaltips9', '项，', '1', '150', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25517', 'physicaltips10', '其中', '1', '151', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25515', 'physicaltips8', '共扫描了', '1', '149', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25514', 'physicaltips7', '分，', '1', '148', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25513', 'physicaltips6', '上次网站体检得分', '1', '147', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25512', 'physicaltips5', '上次体检时间', '1', '146', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25511', 'physicaltips4', '文件校对', '1', '145', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25510', 'physicaltips3', '查杀木马', '1', '144', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25509', 'physicaltips2', '网站体检', '1', '143', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25508', 'physicaltips1', '正在扫描...', '1', '142', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25507', 'statbrowser7', '搜狗浏览器', '1', '141', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25506', 'statbrowser6', '谷歌浏览器', '1', '140', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25505', 'statbrowser5', '世界之窗浏览器', '1', '139', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25504', 'statbrowser4', 'TT浏览器', '1', '138', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25500', 'statother', '其他', '1', '134', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25501', 'statbrowser1', '360安全浏览器', '1', '135', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25502', 'statbrowser2', '傲游浏览器', '1', '136', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25503', 'statbrowser3', 'QQ浏览器', '1', '137', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25499', 'statvisitors', '独立访客', '1', '133', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25498', 'statip', 'IP', '1', '132', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25496', 'week7', '日', '1', '130', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25497', 'statpv', 'PV', '1', '131', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25495', 'week6', '六', '1', '129', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25494', 'week5', '五', '1', '128', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25493', 'week4', '四', '1', '127', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25491', 'week2', '二', '1', '125', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25492', 'week3', '三', '1', '126', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25489', 'stat_cr0', '从不清空', '1', '123', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25490', 'week1', '一', '1', '124', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25488', 'stat_cr4', '保留近一年', '1', '122', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25487', 'stat_cr3', '保留近一个月', '1', '121', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25483', 'sms3', 'cache文件夹没有写权限，商业会员短信发送价格获取失败！', '1', '117', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25485', 'stat_cr1', '仅保留当天', '1', '119', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25486', 'stat_cr2', '保留近七天', '1', '120', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25484', 'statweb', '直接输入网址', '1', '118', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25481', 'sms1', '短信内容和手机号码不能为空', '1', '115', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25482', 'sms2', '操作失败，可能是输入的信息有误！', '1', '116', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25475', 'physicalfingerprint1', '指纹文件', '1', '109', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25476', 'physicalfingerprint2', '并非指纹文件', '1', '110', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25477', 'physicalfingerprint3', '文件大小与指纹文件不一致', '1', '111', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25478', 'smschargeback', '扣款', '1', '112', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25479', 'smsrecharge', '充值', '1', '113', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25480', 'smsreonlinecharge', '在线短信充值', '1', '114', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25471', 'physicalfunction6', '全部删除', '1', '105', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25474', 'physicalfingerprintno', '指纹文件不存在', '1', '108', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25473', 'physicalfingerprintok', '指纹比对完全一致', '1', '107', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25472', 'physicalfunctionok', '扫描已完成，未发现木马及其它安全威胁。', '1', '106', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25470', 'physicalfunction5', '非本系统文件夹，如果不是您安装的其他程序，请删除', '1', '104', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25469', 'physicalfunction4', '文件夹', '1', '103', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25468', 'physicalfunction3', '非法后缀', '1', '102', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25467', 'physicalfunction2', '含有危险函数', '1', '101', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25465', 'physicalfiletime6', '年前', '1', '99', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25466', 'physicalfunction1', '可疑文件', '1', '100', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25464', 'physicalfiletime5', '个月前', '1', '98', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25461', 'physicalfiletime2', '小时前', '1', '95', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25462', 'physicalfiletime3', '天前', '1', '96', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25463', 'physicalfiletime4', '周前', '1', '97', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25460', 'physicalfiletime1', '分钟前', '1', '94', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25459', 'physicalfileno', '没有进行过网站体检，建议立即体检', '1', '93', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25458', 'physicalfile10', '文件大小与系统标准文件不一致', '1', '92', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25457', 'physicalfile9', '重新生成', '1', '91', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25450', 'physicalfile2', '未发现风险', '1', '84', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25451', 'physicalfile3', '系统文件', '1', '85', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25452', 'physicalfile4', '配置文件', '1', '86', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25453', 'physicalfile5', '丢失', '1', '87', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25454', 'physicalfile6', '文件大小与系统标准文件不一致', '1', '88', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25455', 'physicalfile7', '重新下载', '1', '89', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25456', 'physicalfile8', '请恢复备份', '1', '90', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25449', 'physicalfile1', '无法连接服务器获取系统标准文件', '1', '83', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25447', 'physicalweb1', '网站网址与当前访问网址不一致', '1', '81', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25448', 'physicalfile', '关键文件检测', '1', '82', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25446', 'physicalweb', '网站地址设置', '1', '80', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25445', 'physicalmember2', '名', '1', '79', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25441', 'physicalspam', '垃圾信息', '1', '75', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25442', 'physicalspam1', '回收站有未清理数据', '1', '76', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25443', 'physicalmember', '待审核会员', '1', '77', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25444', 'physicalmember1', '有未审核会员：', '1', '78', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25440', 'physicalunread3', '简历', '1', '74', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25439', 'physicalunread2', '留言信息', '1', '73', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25437', 'physicalunread', '未读信息', '1', '71', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25438', 'physicalunread1', '反馈信息', '1', '72', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25436', 'physicalstatic1', '静态页面和伪静态被同时开启，将导致页面无法访问', '1', '70', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25434', 'physicalseo4', '已设置', '1', '68', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25435', 'physicalstatic', '静态页面设置', '1', '69', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25433', 'physicalseo3', '网站描述未设置', '1', '67', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25429', 'physicalupdate3', '请尽快更新网站内容', '1', '63', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25430', 'physicalseo', 'SEO优化设置', '1', '64', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25431', 'physicalseo1', '网站关键词未设置', '1', '65', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25432', 'physicalseo2', '网站关键词中有全角逗号[，]建议使用半角逗号[,]或竖线[|]作为分隔符', '1', '66', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25428', 'physicalupdate2', '建议每周更新内容', '1', '62', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25427', 'physicalupdate1', '上次更新时间：', '1', '61', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25426', 'physicalupdate', '网站内容更新', '1', '60', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25425', 'physicalbackup4', '天前，建议每月至少备份一次', '1', '59', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25423', 'physicalbackup1', '没有检测到数据备份文件，建议定期备份网站数据。', '1', '57', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25424', 'physicalbackup2', '上次备份时间：', '1', '58', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25422', 'physicalbackup', '网站数据备份', '1', '56', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25421', 'physicaladmin2', '已修改', '1', '55', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25420', 'physicaladmin1', '后台目录名称未修改，建议修改', '1', '54', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25419', 'physicaladmin', '后台目录名称', '1', '53', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25418', 'physicalnoneed', '无需处理', '1', '52', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25417', 'physicalok', '正常', '1', '51', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25416', 'physicalupdatesuc', '更新成功', '1', '50', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25413', 'physicaldelok', '删除成功', '1', '47', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25414', 'physicaldelno', '找不到文件,文件删除失败.', '1', '48', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25415', 'physicalgenok', '生成成功', '1', '49', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25412', 'nursenomoney', '余额不足，请充值后再提交！', '1', '46', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25411', 'appdl4', '以上版本系统支持', '1', '45', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25409', 'appdl2', '已安装', '1', '43', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25410', 'appdl3', '此应用需要', '1', '44', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25408', 'appdl1', '应用安装完成后请到我的应用中使用', '1', '42', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25407', 'appuninstall', '卸载成功', '1', '41', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25400', 'usertype2', '商业授权', '1', '34', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25401', 'usertype3', '普通商业授权', '1', '35', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25402', 'usertype4', '高级商业授权', '1', '36', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25403', 'hosterror', '连接服务器失败，请稍后再试', '1', '37', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25404', 'appinstall', '安装', '1', '38', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25405', 'appreinstall', '重新安装', '1', '39', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25406', 'appupgrade', '升级', '1', '40', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25399', 'usertype1', '免费', '1', '33', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25396', 'csvexplain2', '1.请不要修改文件名。', '1', '30', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25397', 'csvexplain3', '2.详细内容字段支持HTML代码。', '1', '31', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25398', 'csvexplain4', '3.选择项字段请填写选项内容。', '1', '32', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25395', 'csvexplain1', '说明文档', '1', '29', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25394', 'csverror2', '上传内容的静态页面名称与已有内容相同。出错行：', '1', '28', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25392', 'csvnodata', '没有数据', '1', '26', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25393', 'csverror1', '上传文件中存在相同的静态页面名称。出错行：', '1', '27', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25390', 'listno', '该栏目下没有内容', '1', '24', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25387', 'wapdimensionaltips', '请上传小于300K的图片，图片过大可能无法正常生成！<br />不需要在二维码上显示LOGO，请留空。', '1', '21', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25391', 'csvnocolumn', '没有找到对应栏目，请不要修改文件名', '1', '25', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25388', 'wapdimensionaldo', '生成', '1', '22', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25389', 'contentuppage', '操作成功，跳到下一页', '1', '23', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25386', 'wapdimensionalsize', '尺寸', '1', '20', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25385', 'wapdimensionaltitle', '二维码生成（手机扫描二维码即可访问手机版网站）', '1', '19', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25383', 'wapdescription', '简短描述', '1', '17', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25384', 'wapfoottext', '底部文字', '1', '18', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25382', 'wapindextitle', '页面标题(title)', '1', '16', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25381', 'waptiao', '条', '1', '15', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25379', 'waplist', '各模块列表显示数量', '1', '13', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25380', 'waplistauk', '显示全部', '1', '14', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25378', 'waplistaud', '需要审核', '1', '12', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25376', 'waplistshow', '内容显示', '1', '10', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25377', 'wapinfo7', '设置为需审核后，后台添加的内容需勾选允许显示在WAP才会正常在WAP前台显示', '1', '11', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25373', 'wapinfo4', '如wap.metinfo.cn(请先做好域名解析和绑定)', '1', '7', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25375', 'wapinfo6', '考虑到手机屏宽，图片宽度240px(像素)比较适合', '1', '9', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25374', 'wapshowimg', '展示图片', '1', '8', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25367', 'waptype', 'Wap功能', '1', '1', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25368', 'waplang', '显示链接', '1', '2', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25369', 'wapsetlang', '网站首页语言切换位置会显示WAP文字链接', '1', '3', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25370', 'wapfang', '自动跳转', '1', '4', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25371', 'wapgeturl', '手机访问自动跳转', '1', '5', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25372', 'wapinfo3', '指定域名跳转', '1', '6', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('25366', 'enterpriseapp', '企业应用', '1', '6', '0', '0', 'cn');
INSERT INTO `met_language` VALUES ('25365', 'otherinfocache2', 'cache文件没有写权限，更新内容前台无法正常显示！', '1', '209', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25364', 'otherinfocache1', '请重新生成静态页面，并刷新页面，修改内容才可以正常显示！', '1', '208', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25363', 'modulemanagement8', '反馈系统', '1', '207', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25362', 'modulemanagement7', '留言系统', '1', '206', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25361', 'modulemanagement6', '招聘模块', '1', '205', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25360', 'modulemanagement5', '图片模块', '1', '204', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25358', 'modulemanagement3', '产品模块', '1', '202', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25359', 'modulemanagement4', '下载模块', '1', '203', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25356', 'modulemanagement1', '简介模块', '1', '200', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25357', 'modulemanagement2', '文章模块', '1', '201', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25351', 'dltips7', '下载超时', '1', '195', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25352', 'columnarrangement1', '展示方式：', '1', '196', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25353', 'columnarrangement2', '切换为', '1', '197', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25354', 'columnarrangement3', '按模块分类', '1', '198', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25355', 'columnarrangement4', '按栏目分类', '1', '199', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25350', 'dltips6', '远程服务器请求错误', '1', '194', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25349', 'dltips5', '您所请求的文件不存在', '1', '193', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25348', 'dltips4', '请升级程序', '1', '192', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25347', 'dltips3', '您没有权限下载此文件', '1', '191', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25346', 'dltips2', '文件下载失败，请检查本地目录权限和空间大小', '1', '190', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25345', 'dltips1', '无法连接上远程服务器，请检查网络', '1', '189', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25344', 'seotips25', '立即打包并下载', '1', '188', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25343', 'seotips24', '注意！您同时开启了静态页面和伪静态，请关闭其中一种，否则会导致网站无法正常访问。', '1', '187', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25338', 'seotips18', '过滤外部模块', '1', '182', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25339', 'seotips19', '网站语言范围', '1', '183', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25340', 'seotips20', '当前语言', '1', '184', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25341', 'seotips21', '仅生成勾选语言的网站地图', '1', '185', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25342', 'seotips22', '并生成', '1', '186', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25337', 'seotips17', '过滤不显示在前台的栏目', '1', '181', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25335', 'seotips15_3', '适合雅虎，', '1', '179', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25336', 'seotips16', '过滤栏目及内容', '1', '180', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25333', 'seotips15_1', '便于访客查看网站内容，可以在栏目设置中添加模块为‘网站地图’的栏目。', '1', '177', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25334', 'seotips15_2', '适合谷歌和百度，', '1', '178', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25332', 'seotips15', '地图网址', '1', '176', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25322', 'seotips6', '首页', '1', '166', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25323', 'seotips7', '如', '1', '167', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25324', 'seotips8', '静态页面名称或ID', '1', '168', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25325', 'seotips9', '内容页', '1', '169', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25326', 'seotips10', '是否删除伪静态配置文件？如有其它语言开启伪静态功能请不要删除。', '1', '170', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25331', 'seotips14_1', '怎样提交给搜索引擎？', '1', '175', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25330', 'seotips14', '网站地图（Sitemap）有助于加快网站被搜索引擎收录', '1', '174', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25329', 'seotips13', '更换静态化方式将重新生成所有静态页面，确定吗！', '1', '173', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25328', 'seotips12', '是否立即生成所有静态页面？', '1', '172', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25327', 'seotips11', '是否删除所有已生成的静态页面？', '1', '171', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25321', 'seotips5', 'URL构成方式(伪静态的URL构成暂不支持更改)', '1', '165', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25320', 'seotips4', '伪静态', '1', '164', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25319', 'seotips3', '静态页面生成', '1', '163', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25318', 'seotips2', '静态页面设置', '1', '162', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25317', 'seotips1', '多个关键词请用竖线 | 隔开，建议3到4个关键词。', '1', '161', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25315', 'statips62', '来访次数', '1', '159', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25316', 'statips63', '访问次数', '1', '160', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25313', 'statips60', '来路域名', '1', '157', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25314', 'statips61', '来路URL', '1', '158', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25312', 'statips59', '来路页面', '1', '156', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25310', 'statips57', '每日访问最大值', '1', '154', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25311', 'statips58', '为防止恶意攻击，超出后不再记录来访信息', '1', '155', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25309', 'statips56', '安全设置', '1', '153', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25308', 'statips55', '清空今日以前的所有数据', '1', '152', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25307', 'statips54', '清空所有数据', '1', '151', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25306', 'statips53', '一键清空所有统计数据', '1', '150', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25305', 'statips52', '清空统计数据', '1', '149', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25304', 'statips51', '一键清空', '1', '148', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25303', 'statips50', '程序每日会清空设置时间前的统计数据，保存即生效。', '1', '147', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25302', 'statips49', '清空方式（统计数据会占用数据库大小）', '1', '146', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25301', 'statips48', '关闭后不再记录来访信息', '1', '145', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25300', 'statips47', '访问统计功能', '1', '144', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25299', 'statips46', '24小时流量趋势', '1', '143', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25298', 'statips45', '历史累计', '1', '142', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25297', 'statips44', '历史最高', '1', '141', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25296', 'statips43', '每日平均', '1', '140', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25294', 'statips41', '按IP查看', '1', '138', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25295', 'statips42', '访问量概况', '1', '139', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25293', 'statips40', '按独立访客查看', '1', '137', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25291', 'statips38', '小时段分布', '1', '135', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25292', 'statips39', '按PV查看', '1', '136', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25290', 'statips37', '日访问量分布', '1', '134', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25289', 'statips36', '星期', '1', '133', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25288', 'statips35', '日期', '1', '132', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25287', 'statips34', '日访问量概况', '1', '131', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25286', 'statips33', '搜索次数', '1', '130', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25285', 'statips32', '搜索引擎', '1', '129', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25284', 'statips31', '受访', '1', '128', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25283', 'statips30', '来路', '1', '127', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25277', 'statips23', '所属语言', '1', '121', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25278', 'statips25', '域名', '1', '122', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25279', 'statips26', '直接输入网址或书签', '1', '123', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25282', 'statips29', '浏览器', '1', '126', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25281', 'statips28', '地区-网络', '1', '125', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25280', 'statips27', '时间', '1', '124', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25276', 'statips22', '人均浏览次数', '1', '120', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25275', 'statips21', '独立访客', '1', '119', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25274', 'statips20', '浏览次数', '1', '118', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25273', 'statips19', '页面名称', '1', '117', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25272', 'statips18', '排名', '1', '116', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25271', 'statips17', '从', '1', '115', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25269', 'statips14', '本月', '1', '113', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25270', 'statips15', '选择日期', '1', '114', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25268', 'statips13', '最近30天', '1', '112', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25267', 'statips12', '最近7天', '1', '111', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25266', 'statips11', '昨日', '1', '110', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25265', 'statips10', '今日', '1', '109', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25264', 'statips9', '受访语言', '1', '108', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25263', 'statips8', '受访域名', '1', '107', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25260', 'statips5', '来路分析', '1', '104', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25261', 'statips6', '访问明细', '1', '105', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25262', 'statips7', '受访页面', '1', '106', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25254', 'enginetype7', '有道', '1', '98', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25255', 'enginetype8', '360搜索', '1', '99', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25256', 'statips1', '统计概况', '1', '100', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25257', 'statips2', '统计设置', '1', '101', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25259', 'statips4', '受访分析', '1', '103', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25258', 'statips3', '搜索引擎', '1', '102', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25253', 'enginetype6', '搜狗', '1', '97', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25252', 'enginetype5', '必应', '1', '96', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25251', 'enginetype4', '雅虎', '1', '95', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25247', 'linkRecommend', '推荐站点', '1', '91', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25248', 'enginetype1', '谷歌', '1', '92', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25249', 'enginetype2', '百度', '1', '93', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25250', 'enginetype3', '搜搜', '1', '94', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25246', 'linkPass', '审核通过', '1', '90', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25243', 'linkLOGO', '网站LOGO', '1', '87', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25244', 'linkcontact', '联系方式', '1', '88', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25245', 'linktip1', '数字越大排序越靠前', '1', '89', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25242', 'linkUrl', '网站地址', '1', '86', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25241', 'linkTip2', '请输入网站标题关键字', '1', '85', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25239', 'linkKeys', '网站关键词', '1', '83', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25240', 'linkCheck', '审核', '1', '84', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25238', 'linkName', '网站标题', '1', '82', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25236', 'linkType4', '文字链接', '1', '80', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25237', 'linkType5', 'LOGO链接', '1', '81', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25235', 'linkType3', '全部链接', '1', '79', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25233', 'linkType1', '未审核链接', '1', '77', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25234', 'linkType2', '推荐链接', '1', '78', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25230', 'htmnoopen', '没有开启静态页面', '1', '74', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25231', 'linkType', '链接类型', '1', '75', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25232', 'linkTypenonull', '请选择链接类型', '1', '76', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25229', 'htmdabaoinfo2', '<span style=\"float:right;\">打包成一个独立的静态站点，能够独立访问</span>全站静态打包', '1', '73', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25228', 'htmdabao', '全站静态打包', '1', '72', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25227', 'rewriteruledownload2', 'MetInfo伪静态规则', '1', '71', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25226', 'rewriteruledownload1', '下载伪静态规则', '1', '70', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25225', 'rewritefinfo3', '请先关闭伪静态功能，伪静态和静态页面只能采用一种。', '1', '69', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25223', 'rewritefaq', '什么是伪静态？有何作用？', '1', '67', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25224', 'rewritefinfo2', '请先关闭静态页面功能，伪静态和静态页面只能采用一种。', '1', '68', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25219', 'htmCreateAll', '生成所有页面', '1', '63', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25220', 'htmcreateallinfo', '请谨慎使用，非常消耗系统资源！', '1', '64', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25221', 'rewrite', '伪静态(URL Rewrite)', '1', '65', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25222', 'rewriteok', '需要空间支持：URL Rewrite模块（URL重写）', '1', '66', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25217', 'htmsitemap', '网站地图', '1', '61', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25218', 'htmsitemap1', '生成网站地图', '1', '62', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25215', 'htmAll', '所有页面', '1', '59', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25216', 'htmlogin', '会员模块', '1', '60', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25213', 'htmTip1', '生成内容页面', '1', '57', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25214', 'htmTip2', '生成列表页面', '1', '58', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25212', 'htmColumn', '栏目', '1', '56', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25211', 'htmCreateHome', '生成网站首页', '1', '55', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25210', 'htmHome', '网站首页', '1', '54', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25207', 'sethtmsitemap', '网站地图生成设置', '1', '51', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25208', 'sethtmsitemap1', 'HTML网站地图', '1', '52', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25209', 'sethtmsitemap4', 'xml网站地图', '1', '53', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25203', 'sethtmlist', '列表页面名称', '1', '47', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25204', 'sethtmlist1', '默认文件名+class+页码（如product_1_1)', '1', '48', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25205', 'sethtmlist2', '所在文件夹名称+class+页码（如software_1_1)', '1', '49', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25206', 'sethtmpage4', '<span style=\"float:right;\">不建议频繁更换，以确保SEO效果（修改后请重新生成所有静态页面）</span>静态页面名称规则', '1', '50', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25199', 'sethtmpage3', '所在文件夹名称+ID（如product10)', '1', '43', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25200', 'setlisthtmltype', '列表页面类型', '1', '44', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25201', 'setlisthtmltype1', '显示所有栏目id（如product_1_2_3）', '1', '45', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25202', 'setlisthtmltype2', '只显示本栏目id（如product_1）', '1', '46', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25198', 'sethtmpage2', '年月日+ID（如2009081510)', '1', '42', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25197', 'sethtmpage1', '默认文件名+ID（如showproduct10)', '1', '41', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25196', 'sethtmpage', '内容页面名称', '1', '40', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25195', 'sethtmtype', '静态页面类型', '1', '39', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25194', 'sethtmway3', '仅内容管理相关操作能自动生成，其它后台设置修改后如前台无改变需要手动生成', '1', '38', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25193', 'sethtmway2', '手动生成', '1', '37', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25191', 'sethtmway', '生成方式', '1', '35', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25192', 'sethtmway1', '内容信息变动时自动生成', '1', '36', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25190', 'setbasicTip4', '首次开启请点击“静态页面生成”生成全部页面', '1', '34', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25187', 'sethtmok', '静态页面开启', '1', '31', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25188', 'sethtmall', '全站静态化', '1', '32', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25189', 'setbasicTip3', '首页、内容页面静态化', '1', '33', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25183', 'labelUrl', '链接地址', '1', '27', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25184', 'labelAdd', '添加新标签', '1', '28', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25185', 'labelnonull', '原文字不能为空', '1', '29', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25186', 'htm', '静态页面已成功生成', '1', '30', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25182', 'labelNewtitle', 'Title', '1', '26', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25178', 'setseojiathis', '社会化分享按钮', '1', '22', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25179', 'labelnum', '替换次数', '1', '23', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25180', 'labelOld', '原文字', '1', '24', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25181', 'labelNew', '替换为', '1', '25', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25177', 'setseoTip14', '内页的标题(title)构成方式，您也可以在编辑/添加内容时自定义对应页面的标题(title)。', '1', '21', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25176', 'setseotitletype4', '内容标题+网站关键词+网站名称', '1', '20', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25175', 'setseotitletype3', '内容标题+网站关键词', '1', '19', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25174', 'setseotitletype2', '内容标题+网站名称', '1', '18', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25172', 'setseotitletype', '内页标题（title）', '1', '16', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25173', 'setseotitletype1', '内容标题', '1', '17', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25170', 'setseodopen', '当前窗口打开', '1', '14', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25171', 'setseonewopen', '新窗口打开', '1', '15', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25169', 'setseotype', '页面链接', '1', '13', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25167', 'setseoFoot', '网站底部优化字', '1', '11', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25168', 'setseoTip13', '显示在前台友情链接申请页面中', '1', '12', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25166', 'setseoFriendLink', '友情链接本站名称', '1', '10', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25165', 'setseoTip9', '鼠标移至超链接显示的文字', '1', '9', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25164', 'setseoTip8', '超链接默认Title', '1', '8', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25163', 'setseoTip7', '鼠标移至图片显示的文字', '1', '7', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25162', 'setseoTip6', '图片默认ALT', '1', '6', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25161', 'setseoTip4', '头部优化文字', '1', '5', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25160', 'setseoTip10', '留空则采用网站关键词+网站名称的构成方式', '1', '4', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25158', 'setseoKey', '网站关键词', '1', '2', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25159', 'setseohomeKey', '首页标题（title）', '1', '3', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25156', 'optimizationpromotion', '优化推广', '1', '5', '0', '0', 'cn');
INSERT INTO `met_language` VALUES ('25157', 'setseoTip1', '多个关键词请用“|”或“，”隔开。', '1', '1', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('25151', 'batchtips43', '上传已经添加好内容的CSV文件', '1', '172', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25152', 'batchtips44', '批量上传', '1', '173', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25153', 'batchtips45', '请直接上传CSV文件', '1', '174', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25154', 'batchtips46', '进度', '1', '175', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25155', 'setheadstat', '顶部代码', '1', '176', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25150', 'batchtips42', '第二步：', '1', '171', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25149', 'batchtips41', '可以用WPS或office打开', '1', '170', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25147', 'batchtips39', '请先生成标准文件，填好标准文件后再导入', '1', '168', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25148', 'batchtips40', '生成CSV文件', '1', '169', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25146', 'batchtips38', '选择栏目', '1', '167', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25144', 'batchtips36', '第一步：', '1', '165', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25145', 'batchtips37', '请选择一个栏目，在生成的文件里添加内容', '1', '166', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25143', 'batchtips35', '请选择需要批量添加内容的栏目', '1', '164', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25142', 'batchtips34', '忽略', '1', '163', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25140', 'batchtips32', '地址', '1', '161', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25141', 'batchtips33', '上传此页', '1', '162', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25139', 'batchtips31', '更改', '1', '160', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25138', 'batchtips30', '图片文件不存在', '1', '159', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25137', 'batchtips29', '查看当前图片', '1', '158', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25135', 'batchtips27', '大图/缩略图地址', '1', '156', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25136', 'batchtips28', '上传图片地址：', '1', '157', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25132', 'batchtips24', '批量图片/文件上传', '1', '153', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25133', 'batchtips25', '批量编辑', '1', '154', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25134', 'batchtips26', '图片上传出错，请重新上传下列图片，或忽略', '1', '155', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25129', 'batchtips21', '增加', '1', '150', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25130', 'batchtips22', '保存并跳到下一页', '1', '151', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25131', 'batchtips23', '图片名称', '1', '152', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25128', 'batchtips20', '暂无图片', '1', '149', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25125', 'batchtips17', '信息标题', '1', '146', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25126', 'batchtips18', '信息图片', '1', '147', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25127', 'batchtips19', '更新图片', '1', '148', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25124', 'batchtips16', '总共', '1', '145', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25123', 'batchtips15', '条', '1', '144', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25122', 'batchtips14', '到', '1', '143', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25121', 'batchtips13', '当前显示', '1', '142', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25120', 'batchtips12', '下一步', '1', '141', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25119', 'batchtips11', '可以在系统配置-图片设置中修改缩略图设置', '1', '140', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25118', 'batchtips10', '生成缩略图', '1', '139', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25117', 'batchtips9', '缩略图操作', '1', '138', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25116', 'batchtips8', '可以在系统配置-图片设置中修改水印设置，单独上传的缩略图无法批量添加水印', '1', '137', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25115', 'batchtips7', '添加水印', '1', '136', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25114', 'batchtips6', '水印操作', '1', '135', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25113', 'batchtips5', '目标栏目', '1', '134', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25111', 'batchtips3', '批量添加水印', '1', '132', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25112', 'batchtips4', '批量缩略图', '1', '133', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25108', 'eidtfed', '查看反馈', '1', '129', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25109', 'batchtips1', '批量上传内容', '1', '130', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25110', 'batchtips2', '批量上传图片', '1', '131', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25103', 'recycledelall', '删除所有', '1', '124', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25104', 'recycleno', '没有开启回收站', '1', '125', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25105', 'eidtcont', '编辑内容', '1', '126', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25106', 'subpart', '下级栏目', '1', '127', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25107', 'eidtmsg', '查看留言', '1', '128', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25102', 'recyclereall', '还原所有', '1', '123', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25098', 'recycledownload', '下载模块', '1', '119', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25099', 'recycleimg', '图片模块', '1', '120', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25100', 'recycledietime', '删除时间', '1', '121', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25101', 'recyclere', '还原', '1', '122', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25096', 'recyclenew', '新闻模块', '1', '117', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25097', 'recycleproduct', '产品模块', '1', '118', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25095', 'recycletype', '模块类型', '1', '116', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25094', 'recycleall', '所有模块', '1', '115', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25093', 'recycleexplain1', '仅支持（新闻、产品、下载、图片）模块的内容。', '1', '114', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25092', 'messageeditor', '编辑留言', '1', '113', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25091', 'messagesubmit', '留言提交开启关闭', '1', '112', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25087', 'messageeditorContent', '留言内容', '1', '108', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25088', 'messageeditorReply', '回复留言', '1', '109', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25089', 'messageeditorCheck', '回复审核', '1', '110', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25090', 'messageeditorShow', '审核通过并在前台显示', '1', '111', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25085', 'messageTime', '提交时间', '1', '106', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25086', 'messageeditorContact', '其他联系方式', '1', '107', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25084', 'messageID', '留言者身份', '1', '105', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25083', 'messageReply', '审核', '1', '104', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25081', 'messageClass5', '已审核信息', '1', '102', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25082', 'messageTel', '电话', '1', '103', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25079', 'messageClass3', '已回复信息', '1', '100', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25080', 'messageClass4', '未审核信息', '1', '101', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25078', 'messageClass2', '未回复信息', '1', '99', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25077', 'messageClass1', '所有信息', '1', '98', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25076', 'messageClass', '留言信息分类', '1', '97', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25075', 'messageTitle', '留言信息管理', '1', '96', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('30428', 'messageVoice', '留言表单设置', '1', '443', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25074', 'messageincTip4', '是否将客户留言自动发生到指定邮箱', '1', '95', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25073', 'messageincSend', '是否发送邮件', '1', '94', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25072', 'messageincTip3', '客户留言后需要在后台回复审核才显示', '1', '93', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25071', 'messageincShow', '显示方式', '1', '92', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25069', 'feedbackauto', '邮件回复设置', '1', '90', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25070', 'messageincTitle', '留言系统设置', '1', '91', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25068', 'feedbackexplain1', '页面title名称，默认为该栏目名称', '1', '89', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25067', 'feedbacksubmit', '反馈提交开启关闭', '1', '88', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25066', 'feedbackview', '查看反馈信息', '1', '87', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25064', 'fdeditorFrom', '来源页面地址', '1', '85', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25065', 'fdeditorRecord', '编辑记录', '1', '86', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25062', 'fdeditorInterest', '感兴趣产品', '1', '83', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25063', 'fdeditorTime', '反馈提交时间', '1', '84', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25061', 'feedbackAccess0', '游客', '1', '82', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25059', 'feedbackTip4', '全部导出', '1', '80', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25060', 'feedbackExport', '导出', '1', '81', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25058', 'feedbackTip2', '导出EXCEL表', '1', '79', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25057', 'feedbackTime', '提交时间', '1', '78', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25056', 'feedbackID', '反馈者身份', '1', '77', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25055', 'feedbackShowAll', '查看全部', '1', '76', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25053', 'feedbackClass2', '未阅读信息', '1', '74', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25054', 'feedbackClass3', '已阅读信息', '1', '75', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25052', 'feedbackClass1', '所有信息', '1', '73', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25050', 'feedbackClass', '信息状态', '1', '71', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25051', 'feedbackClasp', '信息类别', '1', '72', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25047', 'fdincFeedbackTitle', '回复邮件标题', '1', '68', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25048', 'fdincAutoFbTitle', '自动回复邮件的标题', '1', '69', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25049', 'fdincAutoContent', '回复邮件内容', '1', '70', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25045', 'fdincEmailName', 'Email字段名', '1', '66', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25046', 'fdincTip11', '用于获取用户的邮箱地址，以便回复邮件。字段类型必须为“简短”', '1', '67', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25044', 'fdincTip10', '勾选后将自动向提交表单的用户回复邮件', '1', '65', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25043', 'fdincAuto', '邮件回复', '1', '64', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25042', 'fdincTip9', '多个邮箱请用\"|\"隔开', '1', '63', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25041', 'fdincAcceptMail', '反馈邮件接收邮箱', '1', '62', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25039', 'fdincTip7', '仅后台读取', '1', '60', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25040', 'fdincTip8', '发送邮件并写入数据', '1', '61', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25038', 'fdincAccept', '仅邮件接收', '1', '59', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25036', 'fdincTip6', '用于获取用户反馈的类型。字段类型必须为“下拉”', '1', '57', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25037', 'fdincAcceptType', '信息接收方式', '1', '58', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25035', 'fdincClassName', '信息分类字段名', '1', '56', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25034', 'fdincTip5', '多个字符请用\"|\"隔开', '1', '55', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25033', 'fdincSlash', '敏感字符过滤', '1', '54', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25032', 'fdincTip4', '秒，同一IP2次提交的最小间隔时间', '1', '53', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25030', 'fdincName', '反馈表单名称', '1', '51', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25031', 'fdincTime', '防刷新时间', '1', '52', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25028', 'jobsetname', '请选择字段名', '1', '49', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25029', 'fdincTitle', '反馈系统设置', '1', '50', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25027', 'jobmanagement', '招聘职位管理', '1', '48', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25026', 'jobtip9', '简历照片，以便在邮件中能看到应聘者上传的照片。', '1', '47', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25025', 'jobtip8', '图片字段名', '1', '46', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25024', 'jobtip5', '投递简历后系统会自动发送一封邮件到接收邮箱', '1', '45', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25023', 'cvset', '简历表单设置', '1', '44', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25022', 'cvmanagement', '简历信息管理', '1', '43', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25021', 'cvemail', '简历接受邮箱', '1', '42', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25020', 'cvwd', '未读', '1', '41', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25019', 'cvyd', '已读', '1', '40', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25018', 'cvall', '全部', '1', '39', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25017', 'cvsha', '筛选', '1', '38', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25016', 'cvincAcceptType', '简历接收方式', '1', '37', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25015', 'cvincAcceptMail', '简历接收邮箱', '1', '36', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25014', 'cvincTip5', '如设置为单独职位，将发送到给每个职位设置的邮箱地址', '1', '35', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25013', 'cvincTip4', '单独职位', '1', '34', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25012', 'cvincTip3', '统一设置', '1', '33', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25011', 'cvincTip2', '邮件接收方式', '1', '32', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25010', 'josAlways', '不限', '1', '31', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25009', 'cveditorTitle', '查看简历', '1', '30', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25008', 'cvTip4', '职位已经被删除', '1', '29', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25007', 'cvAddtime', '提交时间', '1', '28', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25006', 'cvName', '应聘者身份', '1', '27', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25005', 'cvPosition', '应聘职位', '1', '26', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25004', 'jobtip3', '天 （留空为不限）', '1', '25', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25002', 'jobnow', '今天是', '1', '23', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25003', 'jobtip2', '注意不要改变格式。', '1', '24', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25001', 'jobdeal', '工资待遇', '1', '22', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('24999', 'jobCV', '简历', '1', '20', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('25000', 'jobtip1', '人 （留空为不限）', '1', '21', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('24998', 'jobpublish', '发布日期', '1', '19', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('24997', 'joblife', '有效时间', '1', '18', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('24995', 'jobnum', '招聘人数', '1', '16', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('24996', 'jobaddress', '工作地点', '1', '17', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('24994', 'jobposition', '招聘职位', '1', '15', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('24993', 'setotherTip2', '该字段没有启用', '1', '14', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('24992', 'setotherTip1', '请根据‘模板配置导航’相关说明进行配置，如开启静态页面，修改后需要生成全部静态页面。', '1', '13', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('24991', 'setotherItemSet', '其他内容配置', '1', '12', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('24990', 'setfootstat', '底部代码', '1', '11', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('24989', 'setfootOther', '其他信息', '1', '10', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('24988', 'setfootContact', '联系方式', '1', '9', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('24987', 'setfootAddressCode', '地址邮编', '1', '8', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('24986', 'setfootVersion', '版权信息', '1', '7', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('24985', 'article6', '参数设置', '1', '6', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('24984', 'article5', '复制或移动后请手动生成相应栏目和内容静态页面', '1', '5', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('24981', 'article2', '图片(需模板支持)', '1', '2', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('24982', 'article3', 'wap显示', '1', '3', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('24983', 'article4', '排序数值越大越靠前', '1', '4', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('24979', 'contentmanagement', '内容管理', '1', '4', '0', '0', 'cn');
INSERT INTO `met_language` VALUES ('24980', 'article1', '可选属性', '1', '1', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('24978', 'mod8content', '查看反馈', '1', '152', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24977', 'mod7content', '查看留言', '1', '151', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24976', 'mod6content', '查看简历', '1', '150', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24974', 'mod4content', '管理下载', '1', '148', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24975', 'mod5content', '管理图片', '1', '149', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24973', 'mod3content', '管理产品', '1', '147', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24970', 'mod6add', '发布职位', '1', '144', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24971', 'mod1content', '管理简介', '1', '145', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24972', 'mod2content', '管理文章', '1', '146', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24968', 'mod4add', '添加下载', '1', '142', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24969', 'mod5add', '添加图片', '1', '143', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24967', 'mod3add', '添加产品', '1', '141', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24966', 'mod2add', '添加文章', '1', '140', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24965', 'copyotherlang5', '二级，三级栏目不能单独复制，请连同一级栏目一起复制，或提升为一级栏目', '1', '139', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24964', 'copyotherlang4', '栏目在复制语言中已经存在，请直接复制内容', '1', '138', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24962', 'copyotherlang2', '复制内容', '1', '136', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24963', 'copyotherlang3', '请选择语言！', '1', '137', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24960', 'ctitleinfo', '为空则使用SEO参数设置中设置的title构成方式', '1', '134', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24961', 'copyotherlang1', '复制到其他语言', '1', '135', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24958', 'listproductre', '关联产品', '1', '132', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24959', 'listproductreok', '不关联', '1', '133', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24949', 'parameter3', '文本', '1', '123', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24950', 'parameter4', '多选', '1', '124', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24951', 'parameter5', '附件', '1', '125', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24952', 'parameter6', '单选', '1', '126', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24953', 'allcategory', '所有栏目', '1', '127', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24954', 'parameterMust', '是否必填', '1', '128', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24955', 'parameternameexist', '菜单名称已经存在', '1', '129', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24956', 'listTitle', '设置选项', '1', '130', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24957', 'listAddList', '添加新选项', '1', '131', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24947', 'parameter1', '简短', '1', '121', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24948', 'parameter2', '下拉', '1', '122', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24946', 'parameteradd', '添加新字段', '1', '120', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24945', 'parametertype', '字段类型', '1', '119', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24944', 'columnmtitle', '页面Title', '1', '118', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24937', 'columnmfeedback3', '点击开始复制', '1', '111', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24938', 'columnmfeedback4', '开始复制', '1', '112', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24939', 'columnmfeedback5', '自定义表单设置', '1', '113', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24940', 'columnmfeedback6', '自定义反馈表单', '1', '114', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24941', 'columnmfeedback7', '设置反馈表单', '1', '115', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24942', 'columnmappend', '附加内容：', '1', '116', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24943', 'columnmore', '更多', '1', '117', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24936', 'columnmfeedback2', '请选择表单', '1', '110', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24935', 'columnmfeedback1', '复制表单', '1', '109', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24933', 'columnmwap', 'wap显示', '1', '107', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24934', 'columnmfeedback', '反馈表单设置', '1', '108', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24931', 'columnmnotallow', '不允许', '1', '105', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24932', 'columnmlink', '友情链接申请：', '1', '106', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24929', 'columnmeditor', '编辑栏目', '1', '103', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24930', 'columnmallow', '允许', '1', '104', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24927', 'columnmove4', '升为顶级栏目', '1', '101', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24928', 'columnmove5', '新建文件夹名', '1', '102', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24925', 'columnmove2', '至', '1', '99', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24926', 'columnmove3', '移动，下级栏目超过1和下级栏目有关联栏目的无法移动', '1', '100', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24923', 'columnmove', '移动栏目', '1', '97', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24924', 'columnmove1', '移动', '1', '98', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24922', 'columnexplain8', '附加内容会显示在此栏目下所有内容页最后，用于描述同样的内容。', '1', '96', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24920', 'columnexplain6', '将会复制所选的表单选项和表单设置', '1', '94', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24921', 'columnexplain7', '作用于该栏目在前台对应位置的显示', '1', '95', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24918', 'columnexplain4', '设置栏目链接是否在新窗口打开', '1', '92', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24919', 'columnexplain5', '关闭后访客无法提交友情链接申请', '1', '93', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24916', 'columnexplain2', '设置好选项后，在内容管理中可以直接选择对应选项。', '1', '90', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24917', 'columnexplain3', '参数一般用于展示信息的属性，如价格、型号等，设置后在添加内容的时候可以填写对应参数值。', '1', '91', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24915', 'columnexplain1', '关联后下面选项将显示对应产品栏目下的产品名称', '1', '89', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24914', 'columnerr8', '设置为不允许添加内容的栏目必须有子级栏目', '1', '88', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24913', 'columnerr7', '升为一级栏目', '1', '87', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24912', 'columnerr6', '此操作将会合并栏目,您确认要移动该栏目吗？', '1', '86', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24909', 'columnerr3', '每个语言网站下只能有一个', '1', '83', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24910', 'columnerr4', '目录名称已存在，可能已被使用', '1', '84', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24911', 'columnerr5', '您确认要移动该栏目吗？', '1', '85', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24908', 'columnerr2', '目录名称不能重名', '1', '82', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24907', 'columnerr1', '目录名只能是数字或字母', '1', '81', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24906', 'columntip14', '为空则使用静态页面设置中设置的URL构成方式，不要加html后缀，不支持特殊字符', '1', '80', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24905', 'columntip13', '复制反馈系统配置文件失败，请检测文件是否存在！', '1', '79', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24904', 'columntip12', '隐藏所有子栏目', '1', '78', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24903', 'columntip11', '展开所有子栏目', '1', '77', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24900', 'columnImg2', '栏目图片', '1', '74', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24901', 'columnshow', '添加内容', '1', '75', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24902', 'columntip8', '设置为不允许后栏目链接将跳转到第一个子级栏目', '1', '76', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24897', 'columnhref', '链接地址', '1', '71', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24898', 'columntip7', '链接到外部网站需要加http头。如：http://bbs.metinfo.cn/', '1', '72', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24899', 'columnImg1', '标识图片', '1', '73', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24896', 'columnSEO', '搜索引擎优化设置(seo)', '1', '70', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24895', 'columnhtmlname', '静态页面名称', '1', '69', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24894', 'columnaddOrder', '顺序', '1', '68', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24893', 'columnReverseSort', '倒序', '1', '67', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24892', 'columncontentorder', '列表页排序方式', '1', '66', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24891', 'columnOutLink', 'http://', '1', '65', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24889', 'columnnav4', '都显示', '1', '63', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24890', 'columnnewwindow', '新窗口打开', '1', '64', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24888', 'columnnav3', '尾部导航条', '1', '62', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24887', 'columnnav2', '头部主导航条', '1', '61', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24885', 'columntip1', '请参考', '1', '59', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24886', 'columnnav1', '不显示', '1', '60', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24878', 'columnmark1', '标识', '1', '52', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24879', 'columnctitle', '栏目标题(title)', '1', '53', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24880', 'columnPreName', '上级栏目名称', '1', '54', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24881', 'columnorder', '同级栏目排序', '1', '55', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24882', 'columnmark', '栏目标识', '1', '56', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24883', 'columnnew2', '添加子栏目', '1', '57', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24884', 'columnnew3', '添加三级栏目', '1', '58', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24877', 'columndocument', '目录名称', '1', '51', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24876', 'columnmodule', '所属模块', '1', '50', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24875', 'columnnav', '导航栏显示', '1', '49', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24874', 'columnnamemarkinfo', '其它设置（根据模板配置说明设置）', '1', '48', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24873', 'columnnamemark', '栏目修饰名称', '1', '47', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24871', 'contentinfo4', '拓展内容四', '1', '45', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24872', 'columnname', '栏目名称', '1', '46', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24870', 'contentinfo3', '拓展内容三', '1', '44', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24868', 'contentinfo1', '拓展内容一', '1', '42', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24869', 'contentinfo2', '拓展内容二', '1', '43', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24867', 'contentinfo', '详细内容', '1', '41', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24866', 'category', '所属栏目', '1', '40', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24865', 'editinfo', '修改内容', '1', '39', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24864', 'addinfo', '添加内容', '1', '38', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24863', 'downloadsize', '文件大小', '1', '37', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24859', 'modsearch', '请输入信息标题关键字', '1', '33', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24862', 'downloadurl', '下载地址', '1', '36', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24861', 'downloadaccess', '前台下载权限', '1', '35', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24860', 'modnull', '留空', '1', '34', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24858', 'modtimenow1', '注意不要改变格式。', '1', '32', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24857', 'modtimenow', '当前时间为：', '1', '31', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24856', 'modhits', '点击次数越多，热门信息中排名越靠前', '1', '30', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24855', 'modpublish', '发布人', '1', '29', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24854', 'modimgurls', '缩略图', '1', '28', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24853', 'modimgauto', '自动生成缩略图', '1', '27', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24852', 'modimgurl', '图片地址', '1', '26', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24851', 'wapcontentcom', '勾选则允许在wap页面中显示', '1', '25', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24850', 'modmodulewyok', '该模块已经被使用', '1', '24', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24849', 'modFilenameok', '静态页面名已存在', '1', '23', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24848', 'modFiledir', '创建文件夹失败', '1', '22', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24847', 'modClass3', '三级栏目', '1', '21', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24846', 'modClass2', '二级栏目', '1', '20', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24845', 'modClass1', '一级栏目', '1', '19', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24844', 'modOuturl', '链接地址不能为空', '1', '18', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24843', 'modModule', '栏目所属模块不能为空', '1', '17', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24842', 'modFoldername', '栏目文件夹不能为空', '1', '16', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24841', 'mod101', '图片列表', '1', '15', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24834', 'mod7', '留言系统', '1', '8', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24835', 'mod8', '反馈系统', '1', '9', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24836', 'mod9', '友情链接', '1', '10', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24837', 'mod10', '会员中心', '1', '11', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24838', 'mod11', '全站搜索', '1', '12', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24839', 'mod12', '网站地图', '1', '13', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24840', 'mod100', '产品列表', '1', '14', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('28258', 'unitytxt_52', 'Please select a point feature !', '1', '416', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28257', 'unitytxt_51', 'Direct Download compressed package will occupy space traffic flow if space limitations , we recommend downloading via FTP. Are you sure you want to download it?', '1', '415', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28256', 'unitytxt_50', 'Shortcut Navigation Name', '1', '414', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28255', 'unitytxt_49', 'select point function', '1', '413', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28254', 'unitytxt_48', 'Prev', '1', '412', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28253', 'unitytxt_47', 'Learn commercial license', '1', '411', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28252', 'unitytxt_46', 'Other pages detail settings', '1', '410', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28251', 'unitytxt_45', 'Display Products List ( Picture column for the classification of images uploaded in the column settings ) , click on the corresponding image classification category after entering the product thumbnail list .', '1', '409', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28250', 'unitytxt_44', 'Direct Show product thumbnail list , click on the thumbnail into the product details page .', '1', '408', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28248', 'unitytxt_42', 'list page displays the number of', '1', '406', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28249', 'unitytxt_43', 'list page shows the way', '1', '407', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28246', 'unitytxt_40', 'Home information list shows the number of', '1', '404', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28247', 'unitytxt_41', 'Home link set', '1', '405', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28245', 'unitytxt_39', 'Edit', '1', '403', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28244', 'unitytxt_38', 'code will be placed </ body> tag above', '1', '402', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28243', 'unitytxt_37', 'code will be placed </ head> tag above', '1', '401', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28242', 'unitytxt_36', 'third-party code (usually code for placing Baidu Bridge , webmaster statistical code , Google translated code, etc. )', '1', '400', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28241', 'unitytxt_35', 'return e-mail to this user', '1', '399', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28240', 'unitytxt_34', 'Data File Upload', '1', '398', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28239', 'unitytxt_33', 'Permissions set', '1', '397', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28238', 'unitytxt_32', 'Hide thumbnails', '1', '396', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28237', 'unitytxt_31', 'Show Thumbnails', '1', '395', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28236', 'unitytxt_30', 'multi- column display', '1', '394', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28235', 'unitytxt_29', 'Check to display part', '1', '393', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28234', 'unitytxt_28', 'Custom time parameter', '1', '392', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28232', 'unitytxt_26', 'Text optimization settings ( can be used to increase the keyword density )', '1', '390', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28233', 'unitytxt_27', 'Each column corresponds to a function module , see the section settings in the module belongs .', '1', '391', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28231', 'unitytxt_25', 'Keywords Set', '1', '389', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28230', 'unitytxt_24', 'Title Set', '1', '388', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28229', 'unitytxt_23', 'Static pages often need to solve the trouble of manually generated', '1', '387', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28227', 'unitytxt_21', 'You have not downloaded any applications', '1', '385', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28228', 'unitytxt_22', 'Open to take effect , without rendering. <br/> need to manually configure the server as a pseudo- static rules file, in the top right corner to download.', '1', '386', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28225', 'unitytxt_19', 'list of built-in applications', '1', '383', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28226', 'unitytxt_20', 'list of installed applications', '1', '384', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28222', 'unitytxt_16', 'Standard fingerprint file', '1', '380', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28223', 'unitytxt_17', 'fingerprint file', '1', '381', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28224', 'unitytxt_18', 'Backup', '1', '382', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28220', 'unitytxt_14', 'Style Settings', '1', '378', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28221', 'unitytxt_15', 'Other Settings', '1', '379', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28210', 'unitytxt_4', 'functionally related', '1', '368', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28211', 'unitytxt_5', 'background Operation', '1', '369', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28212', 'unitytxt_6', 'Version inconsistent', '1', '370', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28213', 'unitytxt_7', 'after backup package proposal promptly delete the backup files to download , to avoid affecting the size of the space .', '1', '371', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28214', 'unitytxt_8', 'The language setting up an independent domain name, you need to modify the website URL in <font class=\'red\'> modify language settings </ font> in.', '1', '372', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28215', 'unitytxt_9', 'Synchronization parameters', '1', '373', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28216', 'unitytxt_10', 'is only available for Chinese language foreground , the viewer can switch between Simplified and Traditional Chinese .', '1', '374', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28217', 'unitytxt_11', 'Password changes ( do not modify please leave blank )', '1', '375', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28218', 'unitytxt_12', 'to', '1', '376', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28219', 'unitytxt_13', 'at the bottom of the information set (shown in the foreground at the bottom of the website )', '1', '377', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('26274', 'unitytxt_76', '缩略图尺寸设置', '1', '440', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26275', 'unitytxt_77', '更新内容时候自动更新网站地图', '1', '441', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('26273', 'unitytxt_75', '模板设置', '1', '439', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('28209', 'unitytxt_3', 'other Settings ( JS not supported for the mobile terminal display , the free WAP version of the front page )', '1', '367', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28208', 'unitytxt_2', 'check the default settings', '1', '366', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28207', 'unitytxt_1', 'feature set', '1', '365', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28205', 'tls', 'TLS service delivery', '1', '363', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28206', 'xtips', 'Tips :! Ctrl + Enter key can quickly save', '1', '364', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28200', 'loginUserMudb1', 'this username is already in use', '1', '358', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28201', 'loginFail', 'operation failed !', '1', '359', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28202', 'loginSkin', 'Upload failed ! This template style already exists !', '1', '360', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28203', 'loginOldwords', 'This keyword has been replaced over the', '1', '361', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28197', 'loginUserErr', '<font color=red> user name wrong format </ font>', '1', '355', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28204', 'ssl', 'SSL service delivery', '1', '362', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28199', 'loginRegok', '<font color=green> Congratulations, you can sign up </ font>', '1', '357', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28198', 'loginUserMudb', '<font color = red> this username is already in use </ font>', '1', '356', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28194', 'delall', 'after bulk delete manually generate a list of static pages twenty-three', '1', '352', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28196', 'loginIntput', 'Please enter your login account !', '1', '354', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28195', 'reall', 'after the batch restored manually generate a list of static pages', '1', '353', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28193', 'NewPassJS', 'Please login password for the mailbox to receive the latest', '1', '351', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28190', 'deleteJS', 'You need to add an administrator and then delete !', '1', '348', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28191', 'NoidJS', 'No user', '1', '349', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28192', 'NoidJS1', 'No user or email address is incorrect', '1', '350', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28185', 'jsx31', 'failed', '1', '343', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28186', 'jsx32', 'Login timeout , please login again !', '1', '344', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28187', 'jsx33', 'Expand Advanced Options', '1', '345', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28188', 'jsx34', 'Hide Advanced Options', '1', '346', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28189', 'jsx35', 'Upload temporary folder (upload_tmp_dir) not have write permission , please contact the space business changes.', '1', '347', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28184', 'jsx30', 'static page name ID number conflicts with other information , please replace the letters + numbers do not recommend pure digital static page Name', '1', '342', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28181', 'jsx27', 'static page name already exists', '1', '339', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28182', 'jsx28', 'if the selected contents into the recycle bin ? Are all', '1', '340', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28183', 'jsx29', 'Run', '1', '341', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28178', 'jsx24', 'Download file ...', '1', '336', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28179', 'jsx25', 'update the database ...', '1', '337', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28180', 'jsx26', 'Update file ...', '1', '338', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28177', 'jsx23', 'start upgrading , testing directory permissions ...', '1', '335', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28176', 'jsx22', 'Backup current data ...', '1', '334', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28174', 'jsx20', 'Are detected ...', '1', '332', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28175', 'jsx21', 'Unable to connect to server', '1', '333', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28172', 'jsx18', 'Is testing ...', '1', '330', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28173', 'jsx19', 'test failed ! Please check the username and password are correct.', '1', '331', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28171', 'jsx17', 'Upload successful !', '1', '329', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28170', 'jsx16', 'being uploaded', '1', '328', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28169', 'jsx15', 'Upload', '1', '327', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28167', 'jsx13', 'Can not operate simultaneously.', '1', '325', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28168', 'jsx14', 'Sorry ! Under this language does not exist with the module column , please add a column to the corresponding language then operate !', '1', '326', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28163', 'jsx9', 'Error : you need to generate static pages path does not exist !', '1', '321', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28166', 'jsx12', 'no content under this section !', '1', '324', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28164', 'jsx10', 'Error', '1', '322', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28165', 'jsx11', 'is to get information ...', '1', '323', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28161', 'jsx7', 'file write failed , could not have written permission', '1', '319', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28162', 'jsx8', 'Done !', '1', '320', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28159', 'jsx5', 'Editor Loading ...', '1', '317', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28156', 'jsx2', 'Please choose at least one language !', '1', '314', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28160', 'jsx6', 'Success', '1', '318', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28157', 'jsx3', 'Please select copy form', '1', '315', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28158', 'jsx4', 'Forms replicate the success !', '1', '316', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28155', 'jsx1', 'Loading ...', '1', '313', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28154', 'js70', 'OK to enable the selected template it?', '1', '312', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28152', 'js68', 'Choose zip format file', '1', '310', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28153', 'js69', 'OK to enable the selected style it?', '1', '311', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28150', 'js66', 'OK to completely empty the contents of all the recycle bin ?', '1', '308', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28151', 'js67', 'Please select at least one column belongs', '1', '309', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28148', 'js64', 'whether to restore the selected content', '1', '306', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28149', 'js65', 'sure you want to restore the contents of all the recycle bin ?', '1', '307', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28147', 'js63', 'OK Empty', '1', '305', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28146', 'js62', 'Are you sure you want to move the selected it?', '1', '304', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28145', 'js61', 'Are you sure you want to copy the selected it?', '1', '303', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28144', 'js60', 'if the selection into the recycle bin ?', '1', '302', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28142', 'js58', 'Whether to merge part ? The directory name after the merger will be modified , click Cancel to keep the original name of the directory and then enter the next', '1', '300', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28143', 'js59', 'Please fill in the name of the directory', '1', '301', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28141', 'js57', 'You sure you want to move this column do ?', '1', '299', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28139', 'js55', 'Back', '1', '297', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28140', 'js56', 'must be set to move to a part of a new directory name ( directory name can be a number or letter )', '1', '298', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28130', 'js46', 'can not repeat', '1', '288', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28131', 'js47', 'Deleting a static page ...', '1', '289', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28132', 'js48', 'Loading ...', '1', '290', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28133', 'js49', 'Undo', '1', '291', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28134', 'js50', 'The language does not exist the same module a section', '1', '292', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28135', 'js51', 'Please fill column name', '1', '293', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28136', 'js52', 'Please name the folder name column', '1', '294', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28137', 'js53', 'completed static page generation !', '1', '295', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28138', 'js54', 'Is generating static pages ...', '1', '296', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28128', 'js44', 'Email address is incorrect !', '1', '286', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28129', 'js45', 'Detect form ..', '1', '287', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28127', 'js43', 'Added successfully ! Continue to add information ?', '1', '285', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28126', 'js42', 'Submitted successfully !', '1', '284', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28125', 'js41', 'can not be empty !', '1', '283', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28123', 'js39', 'select three columns', '1', '281', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28124', 'js40', 'being submitted ..', '1', '282', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28121', 'js37', 'Please select a section', '1', '279', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28122', 'js38', 'select two columns', '1', '280', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28120', 'js36', 'Select Language', '1', '278', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28119', 'js35', 'Upload temporary folder (upload_tmp_dir) can not write or domain / background folder / include / uploadify.php no access.', '1', '277', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28118', 'js34', 'Please transfer the part of the three columns', '1', '276', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28117', 'js33', 'Static page name can not be empty', '1', '275', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28112', 'js28', 'Limitation', '1', '270', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28113', 'js29', 'Standard', '1', '271', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28114', 'js30', 'Agents', '1', '272', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28115', 'js31', 'Administrator', '1', '273', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28116', 'js32', 'whether to delete the relevant resume ?', '1', '274', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28110', 'js26', 'Flash address can not be empty !', '1', '268', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28111', 'js27', 'Please fill in the address !', '1', '269', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28108', 'js24', 'Sure?', '1', '266', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28109', 'js25', 'Photo Address can not be empty !', '1', '267', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28106', 'js22', 'Whether to change its status ?', '1', '264', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28107', 'js23', 'No selected records !', '1', '265', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28105', 'js21', 'settings already in force , whether to delete all static pages have been generated ?', '1', '263', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28104', 'js20', 'Site address empty', '1', '262', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28102', 'js18', 'original text can not be empty', '1', '260', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28103', 'js19', 'domain name can not be empty', '1', '261', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28101', 'js17', 'Jobs can not be empty', '1', '259', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28099', 'js15', 'select Upload file', '1', '257', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28100', 'js16', 'download address can not be empty', '1', '258', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28098', 'js14', 'select two and three columns', '1', '256', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28097', 'js13', 'Please enter a title', '1', '255', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28095', 'js11', 'Column name can not be empty', '1', '253', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28096', 'js12', 'Local folder name can not be empty', '1', '254', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28093', 'js9', 'Templates folder can not be empty', '1', '251', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28094', 'js10', 'Your content has not been saved , you are sure to leave?', '1', '252', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28092', 'js8', 'Template name can not be empty', '1', '250', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28091', 'js7', 'sure you want to delete the selected information? Once deleted can not be recovered !', '1', '249', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28090', 'js6', 'two passwords are not the same as', '1', '248', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28088', 'js4', 'login password can not be empty', '1', '246', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28089', 'js5', 'email can not be empty', '1', '247', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28086', 'js2', 'Data wrong', '1', '244', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28087', 'js3', 'administrator account can not be empty', '1', '245', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28085', 'js1', 'Please wait , the system detects the ....', '1', '243', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28084', 'dataerror', 'Data error', '1', '242', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28083', 'jsok', 'successful operator', '1', '241', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28082', 'pageGo', 'to', '1', '240', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28079', 'delnow', 'current selected', '1', '237', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28080', 'marks', ':', '1', '238', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28081', 'pages', 'page', '1', '239', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28077', 'displayimg', 'show picture', '1', '235', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28078', 'displayimgTip', 'show picture', '1', '236', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28076', 'noorderinfo', 'Sort smaller the front', '1', '234', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28075', 'Operating', 'Operating Systems', '1', '233', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28073', 'anonymity', 'Anonymous', '1', '231', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28074', 'launched', 'click to expand / hide the sidebar', '1', '232', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28071', 'selectnow', 'select', '1', '229', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28072', 'move', 'Transfer', '1', '230', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28070', 'detail', 'View Details', '1', '228', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28068', 'content', 'content', '1', '226', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28069', 'contentdetail', 'Details', '1', '227', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28067', 'webaccess', 'access', '1', '225', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28065', 'keywordsinfo', 'multiple keywords please use \",\" separated', '1', '223', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28066', 'descriptioninfo', 'for search engine optimization', '1', '224', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28063', 'hits', 'Click Views', '1', '221', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28064', 'keywords', 'Keywords', '1', '222', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28062', 'addtime', 'Published', '1', '220', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28061', 'updatetime', 'Update', '1', '219', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28059', 'access2', 'agents', '1', '217', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28060', 'access3', 'administrator', '1', '218', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28057', 'access0', 'limitation', '1', '215', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28058', 'access1', 'Standard', '1', '216', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28056', 'access', 'Permissions', '1', '214', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28055', 'ordernumber', 'Digital smaller more high ranking', '1', '213', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28050', 'parameter', 'parameter', '1', '208', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28051', 'set', 'parameter configuration', '1', '209', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28052', 'read', 'read', '1', '210', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28053', 'htmlok', 'Support HTML language', '1', '211', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28054', 'deleteselected', 'Remove', '1', '212', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28043', 'wap', 'wap', '1', '201', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28044', 'top', 'Top', '1', '202', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28045', 'new', 'News', '1', '203', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28046', 'newest', 'New', '1', '204', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28047', 'manager', 'manage Content', '1', '205', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28048', 'search', 'Search', '1', '206', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28042', 'recom', 'Recommended', '1', '200', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28049', 'imagename', 'enter the name Leave blank to use the default name', '1', '207', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28040', 'image', 'Pictures', '1', '198', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28041', 'images', 'Photos', '1', '199', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28037', '名称', '', '1', '195', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28038', 'description', 'short description', '1', '196', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28039', 'title', 'title', '1', '197', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28036', 'order', 'No.', '1', '194', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28034', 'selected', 'select', '1', '192', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28035', 'default', 'default', '1', '193', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28032', 'item', 'of', '1', '190', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28033', 'selectall', 'Select All', '1', '191', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28031', 'metinfo', 'MetInfo enterprise website management system', '1', '189', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28027', 'type', 'Type', '1', '185', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28028', 'sort', 'Sort', '1', '186', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28029', 'yes', 'is', '1', '187', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28030', 'no', 'No', '1', '188', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28026', 'close', 'Close', '1', '184', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28025', 'open', 'Open', '1', '183', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28024', 'operate', 'operator', '1', '182', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28023', 'preview', 'Preview', '1', '181', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28022', 'delete', 'Remove', '1', '180', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28018', 'add', 'Add', '1', '176', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28019', 'editor', 'Edit', '1', '177', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28020', 'View', 'View', '1', '178', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28021', 'modify', 'Modify', '1', '179', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28016', 'Copy', 'Copy', '1', '174', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28017', 'Copytitle', 'Copy to ...', '1', '175', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28015', 'Reset', 'Reset', '1', '173', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28014', 'Submitall', 'Submit', '1', '172', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28013', 'Submit', 'Save', '1', '171', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28012', 'fontfamily', '', '1', '170', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28010', 'langadderr6', 'Remote download the language pack failed, copy the default language pack.', '1', '168', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28011', 'dataerr1', 'Failed ! Importing data is inconsistent with the system version !', '1', '169', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28009', 'langadderr5', 'you delete the default language ! Please set a default language other languages ​​and then operate !', '1', '167', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28008', 'langadderr4', 'Can not synchronize the official website of the language pack , the wrong reasons :', '1', '166', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28007', 'langadderr3', 'Language added successfully ! In the upper right corner of the site language can be switched to the new language.', '1', '165', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28006', 'langadderr2', 'You now operate in this language ! Go to the top right corner to switch to another language and then delete !', '1', '164', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28005', 'langadderr1', 'Illegal language identification', '1', '163', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28002', 'basictips5', '<b> error : </ b> Test Failed to send mail !', '1', '160', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28004', 'basictips7', 'E-mail settings are correct !', '1', '162', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28003', 'basictips6', '<b> Solution : </ b> Please check the account password and smtp is wrong or see if open smtp mail service .', '1', '161', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28001', 'basictips4', 'description of your site receives the message system mailbox set up correctly.', '1', '159', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28000', 'basictips3', 'Mail to send a test', '1', '158', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27999', 'basictips2', '<b> Solution : </ b> Contacts to open one of the space business functions.', '1', '157', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27998', 'basictips1', '<b> error : </ b> pfsockopen and fsockopen function is disabled !', '1', '156', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27997', 'updaterr23', 'API server authentication fails , API server can not access your site, or temporarily shut Guide Page Website Protection Tool', '1', '155', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27996', 'updaterr22', 'Whether to retry this step upgrade ? Click \' Cancel\' will abandon the upgrade !', '1', '154', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27995', 'updaterr21', 'Upgrade problem !', '1', '153', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27994', 'updaterr20', 'link is not on the server , you can not complete a business membership verification !', '1', '152', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27989', 'updaterr15', 'Update file successfully', '1', '147', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27990', 'updaterr16', 'whether to back up the entire station', '1', '148', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27993', 'updaterr19', 'permissions authentication failure', '1', '151', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27992', 'updaterr18', 'cache file is not writable, unable to complete the verification authority', '1', '150', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27991', 'updaterr17', 'to start the whole station backup', '1', '149', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27988', 'updaterr14', 'File copy failed. Cause: The file does not have write permission', '1', '146', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27987', 'updaterr13', 'no need to update the database', '1', '145', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27986', 'updaterr12', 'database update failed. Cause of error:', '1', '144', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27985', 'updaterr11', 'database updated successfully', '1', '143', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27984', 'updaterr10', 'download file is complete, start the update', '1', '142', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27983', 'updaterr9', 'download file', '1', '141', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27980', 'updaterr6', 'The following files do not write, please log in the FTP change permissions for 777 or contact space changes', '1', '138', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27982', 'updaterr8', 'Update file list download failed', '1', '140', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27981', 'updaterr7', 'file permissions detect normal', '1', '139', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27979', 'updaterr5', 'have backed', '1', '137', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27978', 'updaterr4', 'Site backup successful', '1', '136', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27976', 'updaterr2', 'unable to back up the database', '1', '134', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27977', 'updaterr3', 'unable to prepare The whole point file', '1', '135', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27975', 'updaterr1', 'File backup failed with error Cause: The file is not writable', '1', '133', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27974', 'updownerrs', 'File download failed with error Cause:', '1', '132', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27973', 'supportnot', 'space does not support online update , please contact the space business open curl, fsockopen one pfsockopen function where', '1', '131', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27972', 'redownload', 're-download', '1', '130', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27970', 'cvinfo', 'resume information', '1', '128', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27971', 'retested', 'retested', '1', '129', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27969', 'Error', 'error', '1', '127', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27968', 'upfileFail11', 'imagepng function is not supported', '1', '126', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27967', 'upfileFail10', 'does not support imagejpeg function', '1', '125', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27965', 'upfileFail8', 'file is corrupted, thumbnail generation fails', '1', '123', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27966', 'upfileFail9', 'does not support imagegif function', '1', '124', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27964', 'upfileFail7', 'is not supported The current file format generated thumbnails, please upload JPG, GIF, PNG image', '1', '122', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27963', 'upfileFail6', 'Space does not support the GD library , you can not generate thumbnails', '1', '121', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27962', 'upfileFail5', 'bmp format is not automatically generate thumbnails', '1', '120', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27961', 'upfileFail4', 'Failed to create directory', '1', '119', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27960', 'upfileNotice', 'Note:', '1', '118', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27959', 'upfileOver5', 'Upload temporary folder (upload_tmp_dir) not have write permission , please contact the space business changes.', '1', '117', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27958', 'upfileOver4', 'upload folder does not have write permission , please contact space business changes.', '1', '116', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27957', 'upfileOver3', 'No file was uploaded .', '1', '115', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27956', 'upfileOver2', 'File was only partially uploaded .', '1', '114', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27955', 'upfileOver1', 'Upload file size exceeds the value MAX_FILE_SIZE options specified in the HTML form .', '1', '113', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27954', 'upfileOver', 'file upload exceeds the value of the option in php.ini upload_max_filesize limits .', '1', '112', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27953', 'upfileOK', 'File uploaded successfully', '1', '111', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27949', 'upfileByte', 'bytes', '1', '107', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27950', 'upfileTip1', ', can not upload .', '1', '108', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27952', 'upfileTip3', 'File format does not allow uploads.', '1', '110', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27951', 'upfileTip2', 'Filename already exists.', '1', '109', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27944', 'upfileFail1', 'Failed to create thumbnail catalog', '1', '102', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27945', 'upfileFail2', 'create a picture directory failed', '1', '103', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27946', 'upfileFail3', 'the specified path can not write or do not have this path !', '1', '104', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27947', 'upfileFile', 'Upload file', '1', '105', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27948', 'upfileMax', 'size exceeds the system limit', '1', '106', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27943', 'upfileFail', 'Create watermark directory failed', '1', '101', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27939', 'funOK', 'Success !', '1', '97', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27940', 'funFile', 'File', '1', '98', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27941', 'funCreate', 'generated files', '1', '99', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27942', 'funjumpget', 'If your browser does not support frames , please click here', '1', '100', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27938', 'funFail', 'Failed !', '1', '96', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27934', 'funNav2', 'Main', '1', '92', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27935', 'funNav3', 'Times', '1', '93', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27936', 'funNav4', 'Are shown', '1', '94', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27937', 'funTip1', 'is not writable, please check the after the property retry !', '1', '95', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27932', 'adminwenjian', 'failed to modify the file name , you You can manually modify the background folder name', '1', '90', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27933', 'funNav1', 'No', '1', '91', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27931', 'indexmailset', 'Outbox settings', '1', '89', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27930', 'indexthanks', 'Thank you for using', '1', '88', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27929', 'indexpeople', 'profile', '1', '87', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27928', 'indexnarrowver2', 'Switch to narrow version', '1', '86', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27925', 'indexwidever1', 'wide', '1', '83', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27926', 'indexwidever2', 'Switch to wide version', '1', '84', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27927', 'indexnarrowver1', 'narrow version', '1', '85', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27923', 'indexadminattay', 'Administrators group management', '1', '81', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27924', 'indexperson', 'Profile', '1', '82', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27921', 'indexfeedbackm', 'Feedback management', '1', '79', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27922', 'indexadminname', 'Administrator', '1', '80', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27920', 'indexlink', 'Friendly Links', '1', '78', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27919', 'indexwebcount', 'Statistics', '1', '77', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27911', 'indexonline', 'Customer list', '1', '69', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27912', 'indexcv', 'resume configuration parameters', '1', '70', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27913', 'indexseoset', 'SEO Parameters', '1', '71', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27914', 'indexhot', 'Top Tags', '1', '72', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27915', 'indexhtmset', 'Static Page', '1', '73', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27916', 'indexhtm', 'static page generation', '1', '74', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27917', 'indexwap', 'Mobile version (Business version )', '1', '75', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27918', 'indexPhysical', 'website examination', '1', '76', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27909', 'indexflash', 'Banner management', '1', '67', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27910', 'indexonlineset', 'online Service', '1', '68', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27908', 'indexflashset', 'Banner set', '1', '66', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27906', 'indexpic', 'Picture Settings', '1', '64', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27907', 'indexhomeset', 'Home set', '1', '65', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27905', 'indexbbs', 'Technical support', '1', '63', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27904', 'indexebook', 'User Manual', '1', '62', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27902', 'indexskinset', 'template configuration tutorial', '1', '60', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27903', 'indexcode', 'commercial license', '1', '61', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27901', 'indexupload', 'Upload file Management', '1', '59', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27900', 'indexsafe', 'Site Security', '1', '58', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27899', 'indexdataback', 'Data Backup', '1', '57', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27896', 'indexlang', 'Language Settings', '1', '54', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27897', 'indexfoot', 'Bottom of the', '1', '55', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27898', 'indexotherinfo', 'Other Content', '1', '56', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27895', 'indexbasicinfo', 'basic Settings', '1', '53', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27894', 'indexsysteminfo', 'System', '1', '52', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27890', 'indexwelcom', 'Hello', '1', '48', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27891', 'indexhome', 'HOME', '1', '49', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27892', 'indexadmin', 'Common features', '1', '50', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27893', 'indexloginout', 'Exit', '1', '51', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27889', 'indexuser', 'User management', '1', '47', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27887', 'indexseo', 'Promotion', '1', '45', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27888', 'indexapp', 'Applications', '1', '46', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27882', 'loginalllang', 'you do not have permission to manage the content of such language , please contact the administrator opened', '1', '40', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27881', 'loginall', 'You do not have to add, modify, delete information rights Please contact the administrator to open', '1', '39', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27886', 'indexcontent', 'Content', '1', '44', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27885', 'indexcolumn', 'Columns', '1', '43', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27884', 'indexskin', 'interface style', '1', '42', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27883', 'indexbasic', 'Settings', '1', '41', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27880', 'loginedit', 'You do not have permission to modify information , please contact the administrator opened', '1', '38', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27876', 'loginname', 'user name or password error', '1', '34', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27877', 'loginpass', 'user name or password error', '1', '35', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27878', 'logindelete', 'You do not have permission to delete information , please contact the administrator open', '1', '36', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27879', 'loginadd', 'permissions you did not add information , please contact the administrator opened', '1', '37', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27873', 'loginforget', 'Lost your password?', '1', '31', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27874', 'loginconfirm', 'Login', '1', '32', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27875', 'logincodeerror', 'verify Code error', '1', '33', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27870', 'loginpassword', 'Password', '1', '28', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27871', 'logincode', 'verification code', '1', '29', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27872', 'logincodechange', 'Click to refresh code', '1', '30', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27868', 'loginlanguage', 'languages', '1', '26', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27869', 'loginusename', 'UserName', '1', '27', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27865', 'loginps', 'password can not be empty', '1', '23', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27866', 'loginadmin', 'Administrator Login', '1', '24', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27867', 'loginmetinfo', 'Metinfo Build marketing value corporate website', '1', '25', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27861', 'webnanny', 'website nanny', '1', '19', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27862', 'myapp', 'My application', '1', '20', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27863', 'logintitle', 'Manage', '1', '21', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27864', 'loginid', 'user name can not be empty', '1', '22', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27860', 'smsfuc', 'SMS function', '1', '18', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27859', 'recycle', 'Content Trash', '1', '17', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27858', 'bulkopr', 'Batch Operations', '1', '16', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27857', 'field', 'field', '1', '15', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27855', 'pagesting', 'list settings', '1', '13', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27856', 'contsting', 'Content page Settings', '1', '14', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27853', 'temstyle', 'Template Manager', '1', '11', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27854', 'Universal', 'General Set', '1', '12', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27852', 'managertyp5', 'Custom', '1', '10', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27851', 'managertyp4', 'Content Manager', '1', '9', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27847', 'uplaoderr3', 'Please upload files or zip suffix suffix sql file !', '1', '5', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27846', 'uplaoderr2', 'Please upload a zip file !', '1', '4', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27849', 'managertyp2', 'Administrator', '1', '7', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27850', 'managertyp3', 'optimization promoters', '1', '8', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27848', 'managertyp1', 'Founder', '1', '6', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27844', 'filenomor', 'file did not upload or does not exist', '1', '2', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27845', 'uplaoderr1', 'Upload failed !', '1', '3', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27841', 'modifyadminidtips', 'When the founder of the account when admin, you have a chance, you can modify the name of the founder .', '1', '109', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27843', 'clickview', 'Click here', '1', '1', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('27842', 'otherfields', 'Other field', '1', '8', '0', '0', 'en');
INSERT INTO `met_language` VALUES ('27835', 'memberaddarray', 'Add Member group', '1', '103', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27832', 'memberarayname', 'Members Group name', '1', '100', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27840', 'modifyadminidto', 'modified to', '1', '108', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27839', 'modifyadminid', 'Modify User Name', '1', '107', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27838', 'memberdelactive', 'Empty inactive members', '1', '106', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27837', 'membertips1', 'Registration Time', '1', '105', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27836', 'memberaddarraytips1', 'The larger the value , the greater the read permission .', '1', '104', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27834', 'memberall', 'Show All', '1', '102', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27833', 'memberpermission', 'Read permissions', '1', '101', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27830', 'memberjstxt5', 'Read permission must be any integer between 1 to 255', '1', '98', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27831', 'memberwebpower', 'Read permissions can not be repeated', '1', '99', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27829', 'memberjstxt4', 'Members Group name can not be empty', '1', '97', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27828', 'memberjstxt3', 'Enter the password twice inconsistent !', '1', '96', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27826', 'memberjstxt1', 'Please enter the confirmation code !', '1', '94', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27827', 'memberjstxt2', 'Please enter your login password !', '1', '95', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27825', 'membereditorTitle', 'modify membership information', '1', '93', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27824', 'memberCheck', 'is activated', '1', '92', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27823', 'memberCompanyWebsite', 'Website', '1', '91', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27820', 'memberCompanyFax', 'Fax', '1', '88', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27821', 'memberCompanyCode', 'Company Postcode', '1', '89', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27822', 'memberCompanyAddress', 'Company address', '1', '90', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27819', 'memberCompanyName', 'Company name', '1', '87', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27818', 'memberIntro', 'Member Profile', '1', '86', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27817', 'memberTaoBao', 'Taobao', '1', '85', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27816', 'memberCell', 'Phone', '1', '84', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27814', 'memberWoman', 'Women', '1', '82', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27815', 'memberTel', 'telephone', '1', '83', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27813', 'memberMan', 'Mr.', '1', '81', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27812', 'memberSex', 'sex', '1', '80', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27811', 'memberPs1', 'password confirmation', '1', '79', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27810', 'memberTip', 'Please do not modify blank', '1', '78', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27809', 'memberPs', 'password', '1', '77', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27808', 'memberName', 'Name', '1', '76', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27806', 'memberCV', 'CV', '1', '74', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27807', 'memberSearch', 'user name query', '1', '75', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27805', 'memberFD', 'Feedback', '1', '73', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27804', 'memberMessage', 'Message', '1', '72', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27803', 'memberDetail', 'more', '1', '71', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27802', 'memberLastLogin', 'Last login time', '1', '70', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27801', 'memberNum', 'logins', '1', '69', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27800', 'memberActive', 'Activate', '1', '68', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27799', 'memberEmail', 'E-mail address', '1', '67', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27798', 'memberUserName', 'user Name', '1', '66', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27797', 'memberSelectType', 'select the type', '1', '65', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27796', 'memberType', 'membership Type', '1', '64', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27794', 'memberAdd', 'Add Member', '1', '62', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27795', 'memberalllang', 'all languages ​​members', '1', '63', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27793', 'memberUnChecked', 'is not activated', '1', '61', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27786', 'memberregisteremail', 'Register activation email', '1', '54', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27787', 'membercontrol', 'Member control Panel announcement', '1', '55', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27783', 'memberlogin', 'Register', '1', '51', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27784', 'memberloginok3', 'open but requires e-mail verification', '1', '52', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27792', 'memberChecked', 'active', '1', '60', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27791', 'memberarrayManage', 'Member group Management', '1', '59', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27790', 'memberManage', 'Member Management', '1', '58', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27789', 'memberforceinfo', 'use with a key address will be able to browse all the information , such as:', '1', '57', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27788', 'memberforce', 'force the browser keys', '1', '56', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27782', 'memberuseok2', 'Open member function', '1', '50', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27785', 'memberloginok4', 'open but requires Administrator background verification', '1', '53', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27777', 'getTip5', 'Retrieve Password', '1', '45', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27778', 'getOK', 'sent successfully', '1', '46', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27781', 'memberuse', 'member function', '1', '49', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27780', 'memberset', 'Member function configuration', '1', '48', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27779', 'hello', 'Hello !', '1', '47', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27776', 'getTip4', 'Forget password you submitted failed ! E-mail server settings may be incorrect, other ways to retrieve the password', '1', '44', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27775', 'getTip3', 'E-mail a link to create a new password has been sent to your mailbox , please change your password as soon as possible .', '1', '43', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27774', 'getTip2', 'MetInfo thank you for your support and love , hope MetInfo can create value for your site !', '1', '42', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27770', 'adminBackup', 'back', '1', '38', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27771', 'adminpassTitle', 'Modify personal Information', '1', '39', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27772', 'getNotice', 'administrator password recovery', '1', '40', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27773', 'getTip1', 'your password reset request has been verified. Please click the link below to enter your new password :', '1', '41', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27769', 'adminSelectAll', 'select All', '1', '37', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27766', 'adminOperate3', 'modify information', '1', '34', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27768', 'adminColumn', 'Local authority', '1', '36', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27767', 'adminOperate4', 'Delete information', '1', '35', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27765', 'adminOperate2', 'add information', '1', '33', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27764', 'adminOperate1', 'full control', '1', '32', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27763', 'adminOperate', 'operating authority', '1', '31', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27762', 'adminTip2', 'is only allowed to view the information they published', '1', '30', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27759', 'adminIntro', 'Profile of', '1', '27', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27760', 'adminlang', 'Select All', '1', '28', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27761', 'adminPower', 'information Rights', '1', '29', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27758', 'adminTaoBao', 'Taobao', '1', '26', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27757', 'adminTip1', 'is used to retrieve the account password', '1', '25', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27756', 'adminWoman', 'Women', '1', '24', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27754', 'adminSex', 'sex', '1', '22', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27755', 'adminMan', 'Mr.', '1', '23', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27752', 'adminpassword', 'password', '1', '20', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27753', 'adminpassword1', 'password confirmation', '1', '21', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27751', 'adminLastIP', 'Last login IP', '1', '19', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27749', 'adminLoginNum', 'logins', '1', '17', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27750', 'adminLastLogin', 'Last login time', '1', '18', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27748', 'adminmobile', 'Phone', '1', '16', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27743', 'admintips7', 'administrator permissions', '1', '11', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27744', 'metadmin', 'administrator', '1', '12', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27745', 'adminusername', 'user name', '1', '13', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27746', 'adminname', 'name', '1', '14', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27747', 'admintel', 'Telephone', '1', '15', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27742', 'admintips5', 'user Group', '1', '10', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27741', 'admintips4', 'Add column permissions', '1', '9', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27739', 'admintips2', 'select at least one', '1', '7', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27740', 'admintips3', 'after the cancellation of other users of the new Local users without administrative privileges', '1', '8', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27738', 'admintips1', 'all languages ​​', '1', '6', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27737', 'adminjurisd', 'Language privileges', '1', '5', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27736', 'admininfo', 'administrator basics', '1', '4', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27735', 'webcompre', 'entire station archive', '1', '3', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27733', 'database', 'Database', '1', '1', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27734', 'uploadfile', 'upload folder', '1', '2', '7', '0', 'en');
INSERT INTO `met_language` VALUES ('27732', 'usermanagement', 'User Management', '1', '7', '0', '0', 'en');
INSERT INTO `met_language` VALUES ('27731', 'map_contents', 'Address', '1', '357', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27730', 'map_title', 'Company Name', '1', '356', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27729', 'map_input', 'Input Address Lookup', '1', '355', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27723', 'nursetips41', 'times', '1', '349', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27724', 'nursetips42', 'after the limit is reached stop SMS alert', '1', '350', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27728', 'smstips89', 'Get SMS key failed, could not connect to the server !', '1', '354', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27727', 'smstips88', 'Get SMS key success', '1', '353', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27726', 'smstips87', 'Get SMS key , do not refresh the page !', '1', '352', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27725', 'smstips86', 'Data has been updated after 3 seconds to refresh the background !', '1', '351', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27721', 'nursetips39', 'Friends of the chain to remind', '1', '347', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27722', 'nursetips40', 'daily reminder times', '1', '348', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27720', 'nursetips38', 'Whenever a visitor to submit an application Links the system will send a URL and site name with the other SMS to your phone', '1', '346', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27719', 'nursetips37', 'resume remind', '1', '345', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27718', 'nursetips36', 'Every time a visitor to submit a resume, system will send a text message containing the delivery position and the name of the applicant to your mobile phone', '1', '344', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27717', 'nursetips35', 'Message alert', '1', '343', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27716', 'nursetips34', 'whenever a visitor to submit comments system will send a message containing content ( the first 10 characters ) of text messages to your phone', '1', '342', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27715', 'nursetips33', 'Feedback remind', '1', '341', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27713', 'nursetips31', 'Registration reminder', '1', '339', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27714', 'nursetips32', 'whenever a visitor to submit feedback, the system will send a text message containing the title feedback to your phone', '1', '340', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27712', 'nursetips30', 'whenever a visitor a registered member, the system will send a text message to your phone', '1', '338', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27711', 'nursetips29x', 'only in the specified period of time to monitor', '1', '337', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27710', 'nursetips29', 'random only within the time period specified in paragraph week monitoring', '1', '336', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27709', 'nursetips28', 'Sunday', '1', '335', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27707', 'nursetips27', 'Saturday', '1', '333', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27708', 'nursetips27x', 'Sunday', '1', '334', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27706', 'nursetips26', 'Friday', '1', '332', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27704', 'nursetips24', 'Wednesday', '1', '330', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27705', 'nursetips25', 'Thursday', '1', '331', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27702', 'nursetips22', 'Monday', '1', '328', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27703', 'nursetips23', 'Tuesday', '1', '329', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27699', 'nursetips19', 'specified time period monitored once', '1', '325', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27700', 'nursetips20', 'time', '1', '326', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27701', 'nursetips21', 'monthly random time detection', '1', '327', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27693', 'nursetips13', 'Monitoring website', '1', '319', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27694', 'nursetips14', 'Monitoring frequency', '1', '320', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27695', 'nursetips15', 'hourly', '1', '321', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27696', 'nursetips16', 'once a day', '1', '322', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27697', 'nursetips17', 'weekly', '1', '323', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27698', 'nursetips18', 'once a month', '1', '324', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27692', 'nursetips12', 'access monitoring', '1', '318', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27691', 'nursetips11', 'specified period of time to monitor your can normal access to the site , if they can not normally access , send a monitoring report to your phone', '1', '317', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27690', 'nursetips10', 'mobile number to receive SMS alerts , please wrap multiple', '1', '316', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27689', 'nursetips9', 'receiving numbers', '1', '315', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27688', 'nursetips8', 'Report Time', '1', '314', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27687', 'nursetips7', 'Make sure that the URL ! In the System Settings - Basic information - website address changes', '1', '313', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27686', 'nursetips6', 'Statistics Website', '1', '312', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27685', 'nursetips5', 'traffic Statistics Report', '1', '311', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27684', 'nursetips4', 'specified time traffic statistics report yesterday sent to your phone every day', '1', '310', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27683', 'nursetips3', 'guest operating remind', '1', '309', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27682', 'nursetips2', 'Visit fault monitoring', '1', '308', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27681', 'nursetips1', 'traffic Statistics Report warranty', '1', '307', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27680', 'dlapptips18', 'can manage registered member, member of the group and read permissions settings , other settings such as', '1', '306', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27679', 'dlapptips17', 'site examination can be carried out , killing the Trojans, proofreading , recommend regular use of', '1', '305', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27678', 'dlapptips16', 'You can manage files uploaded background', '1', '304', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27677', 'dlapptips15', 'original version called online communication , online instant communication tools floating , you can add QQ, Want Want , MSN, SKYPE , etc.', '1', '303', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27676', 'dlapptips14', 'FLASH original set that can be used Figure carousel ( generally located below the navigation )', '1', '302', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27675', 'dlapptips13', 'for monitoring the state of the site , you can use text messaging feature to send real-time status of the site to the designated mobile phone number', '1', '301', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27670', 'dlapptips8', 'You are currently as follows:', '1', '296', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27671', 'dlapptips9', 'user', '1', '297', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27672', 'dlapptips10', 'only', '1', '298', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27673', 'dlapptips11', 'for the site in a mobile terminal display function<br/>Commercial version features a more comprehensive WAP page display more brilliant.<a href=\"http://www.metinfo.cn/web/wap.htm\" target=\"_blank\" class=\"red\">See details</a>', '1', '299', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27674', 'dlapptips12', 'can be used to send bulk , check to send records , running account , and upload web pages or set large prepaid SMS cost', '1', '300', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27664', 'dlapptips2', 'The app store', '1', '290', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27665', 'dlapptips3', 'Description :', '1', '291', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27666', 'dlapptips4', 'version:', '1', '292', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27667', 'dlapptips5', 'Open', '1', '293', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27668', 'dlapptips6', 'Uninstall', '1', '294', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27669', 'dlapptips7', 'Dear', '1', '295', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27662', 'mobiletips7', 'times', '1', '288', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27663', 'dlapptips1', 'Applications already installed', '1', '289', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27660', 'mobiletips5', 'did not add columns related modules', '1', '286', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27661', 'mobiletips6', 'View Picture', '1', '287', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27659', 'mobiletips4', 'Please fill in the title', '1', '285', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27658', 'mobiletips3', 'article published', '1', '284', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27657', 'mobiletips2', 'Not open or add related functions forum', '1', '283', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27656', 'mobiletips1', 'Your browser does not support javascript turned on in order to make the appropriate background operation after opening .', '1', '282', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27655', 'waptips9', 'is empty website will display LOGO', '1', '281', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27649', 'waptips3', 'empty title will be displayed HOME', '1', '275', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27650', 'waptips4', 'is empty will display a brief description of the site', '1', '276', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27651', 'waptips5', 'Display', '1', '277', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27652', 'waptips6', 'Hide', '1', '278', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27653', 'waptips7', 'Open intelligent machine supports only static pages automatically jump , we recommend using a pseudo- static', '1', '279', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27654', 'waptips8', 'specify the domain name', '1', '280', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27648', 'waptips2', 'Settings Wap content page showing the picture size', '1', '274', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27647', 'waptips1', 'Wap settings', '1', '273', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27646', 'smstips95', 'error Cause :', '1', '272', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27645', 'smstips94', 'current SMS server set prices and price inconsistencies , click <a href=\'\'> here </ a> to refresh the page , sending prices to reacquire', '1', '271', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27642', 'smstips91', 'after deposit', '1', '268', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27644', 'smstips93', 'open', '1', '270', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27643', 'smstips92', 'Contact', '1', '269', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27641', 'smstips90', 'Please check the balance', '1', '267', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27640', 'smstips84', 'Redeem', '1', '266', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27639', 'smstips83', 'coupon use', '1', '265', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27637', 'smstips81', 'over time', '1', '263', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27638', 'smstips82', 'Use success', '1', '264', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27636', 'smstips80', 'This coupon is already using the', '1', '262', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27635', 'smstips79', 'Found coupon', '1', '261', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27634', 'smstips78', 'coupon', '1', '260', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27633', 'smstips85', 'To get the data from the official website , please refresh the page by mistake', '1', '259', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27632', 'smstips77', 'unable to connect SMS server, site examination !', '1', '258', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27631', 'smstips76', 'server not responding', '1', '257', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27629', 'smstips74', 'Send password error', '1', '255', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27630', 'smstips75', 'Site inaccessible', '1', '256', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27628', 'smstips73', 'SMS content and mobile number can not be empty', '1', '254', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27626', 'smstips71', 'Exception operation , lack of balance', '1', '252', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27627', 'smstips72', 'insufficient balance', '1', '253', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27624', 'smstips69', 'number does not conform to the rules', '1', '250', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27625', 'smstips70', 'Send success ( delay )', '1', '251', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27623', 'smstips68', 'mobile number too , up to 800 numbers', '1', '249', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27622', 'smstips67', 'message content is too long , up to 350 characters', '1', '248', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27621', 'smstips66', 'insufficient balance', '1', '247', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27619', 'smstips64', 'state', '1', '245', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27620', 'smstips65', 'operator', '1', '246', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27618', 'smstips63', 'other numbers', '1', '244', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27614', 'smstips59', 'Visit fault monitoring', '1', '240', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27615', 'smstips60', 'guest operating remind', '1', '241', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27616', 'smstips61', 'Forgot Password', '1', '242', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27617', 'smstips62', 'message content', '1', '243', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27613', 'smstips58', 'Traffic Statistics Report', '1', '239', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27607', 'smstips52', 'sending ...', '1', '233', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27608', 'smstips53', 'are you sure you clear all the send records?', '1', '234', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27609', 'smstips54', 'Message content or mobile number', '1', '235', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27610', 'smstips55', 'Send Time', '1', '236', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27611', 'smstips56', 'Send Type', '1', '237', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27612', 'smstips57', 'Batch Send', '1', '238', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27602', 'smstips47', 'of', '1', '228', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27603', 'smstips48', 'Send', '1', '229', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27604', 'smstips49', 'after successfully transmitted to wait a moment to receive text messages', '1', '230', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27605', 'smstips50', 'Retrieving ...', '1', '231', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27606', 'smstips51', 'no', '1', '232', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27601', 'smstips46', 'yuan each , were sent', '1', '227', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27600', 'smstips45', 'Fees expected', '1', '226', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27599', 'smstips44', 'modify send password', '1', '225', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27598', 'smstips43', 'Send password', '1', '224', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27597', 'smstips42', 'removing duplicate numbers', '1', '223', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27596', 'smstips41', 'Get active member phone number', '1', '222', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27595', 'smstips40', 'numbers', '1', '221', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27593', 'smstips38', 'SMS', '1', '219', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27594', 'smstips39', 'Please fill in mobile number to receive text messages <br/> multiple phone numbers , please do not wrap <br/> once more than 800 phone number <br / > Current total', '1', '220', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27592', 'smstips37', 'of', '1', '218', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27591', 'smstips36', 'word', '1', '217', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27590', 'smstips35', 'Current Word Count :', '1', '216', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27589', 'smstips34', 'Chinese / English first 66 characters, and the second from 64 <br/> word count will exceed the number of words cut into a number of messages', '1', '215', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27588', 'smstips33', 'Message content', '1', '214', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27587', 'smstips32', 'Suggested in the message end with a certain company ] as [ the words ( both sides of the box is also needed ) , or they may not receive .', '1', '213', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27585', 'smstips29', 'at least 6', '1', '211', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27586', 'smstips31', 'message content may be intercepted illegally words , the cost can not be returned , it is recommended that give phone numbers 2,3 try hair again.', '1', '212', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27584', 'smstips28', 'send new password', '1', '210', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27582', 'smstips26', 'service password', '1', '208', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27583', 'smstips27', 'service password is automatically generated and sent when the first recharge sent to your mailbox by the system can not change your password', '1', '209', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27581', 'smstips25', 'Change service password', '1', '207', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27580', 'smstips24', 'operation time', '1', '206', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27579', 'smstips23', 'Operating grounds', '1', '205', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27578', 'smstips22', 'Account Balance', '1', '204', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27577', 'smstips21', 'occurs amount', '1', '203', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27573', 'smstips17', 'Sequence', '1', '199', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27574', 'smstips18', 'Operation Type', '1', '200', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27575', 'smstips19', 'recharge', '1', '201', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27576', 'smstips20', 'chargeback', '1', '202', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27572', 'smstips16', 'Financial flow recorded on the official servers , database size does not affect your site , it will save the last 30 days of the financial records.', '1', '198', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27571', 'smstips15', 'SMS tariff description', '1', '197', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27570', 'smstips14', 'payments can not be refunded after successful recharge , recharge caution !', '1', '196', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27567', 'smstips11', 'Now recharge', '1', '193', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27568', 'smstips12', 'Notes', '1', '194', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27569', 'smstips13', 'first recharge Make sure the basic settings for your domain URL , Current :', '1', '195', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27563', 'smstips7', 'payment', '1', '189', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27564', 'smstips8', 'recharge amount', '1', '190', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27565', 'smstips9', 'element', '1', '191', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27566', 'smstips10', 'first successful recharge service password will be sent to your mailbox , service password is very important, please keep !', '1', '192', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27552', 'physicaltips37', 'is contrast ...', '1', '178', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27553', 'physicaltips38', 'View Last comparative results', '1', '179', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27554', 'physicaltips39', 'inconsistencies', '1', '180', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27555', 'physicaltips40', 'Back', '1', '181', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27556', 'physicaltips41', 'comparative results', '1', '182', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27557', 'smstips1', 'Batch send', '1', '183', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27558', 'smstips2', 'Send records', '1', '184', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27559', 'smstips3', 'Financial water', '1', '185', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27560', 'smstips4', 'online recharge', '1', '186', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27561', 'smstips5', 'online SMS recharge', '1', '187', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27562', 'smstips6', 'current Balance', '1', '188', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27551', 'physicaltips36', 'Now contrast', '1', '177', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27550', 'physicaltips35', 'File check: site last backup of all files and compare fingerprints to identify missing or suspicious files , you need to manually log on FTP repair. <br/> website upgrade , delete downloaded applications and templates will change fingerprints, fingerprint comparison is recommended prior to these operations , the backup operation after a fingerprint .', '1', '176', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27548', 'physicaltips33', 'being backed up ...', '1', '174', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27549', 'physicaltips34', 'Backup fingerprints now', '1', '175', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27546', 'physicaltips31', 'scan results', '1', '172', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27547', 'physicaltips32', 'Backup fingerprint : All documents and records website file size', '1', '173', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27545', 'physicaltips30', 'Rescan', '1', '171', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27542', 'physicaltips27', 'an illegal file suffix', '1', '168', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27543', 'physicaltips28', 'a non- system folder', '1', '169', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27544', 'physicaltips29', 'a', '1', '170', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27541', 'physicaltips26', 'suspicious files', '1', '167', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27540', 'physicaltips25', 'View the last scan results', '1', '166', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27539', 'physicaltips24', 'scan Now', '1', '165', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27535', 'physicaltips20', 'as soon as possible to optimize the project', '1', '161', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27538', 'physicaltips23', 'able to scan suspicious files in the site directory exists , periodic scan', '1', '164', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27537', 'physicaltips22', 'security Project', '1', '163', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27536', 'physicaltips21', 'recommended fix these items', '1', '162', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27534', 'physicaltips19', 'these items may cause Web sites to visit , please fix', '1', '160', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27532', 'physicaltips17', 'of', '1', '158', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27533', 'physicaltips18', 'dangerous items', '1', '159', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27531', 'physicaltips16', 're- examination', '1', '157', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27528', 'physicaltips13', 'Immediate medical', '1', '154', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27529', 'physicaltips14', 'examination score', '1', '155', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27530', 'physicaltips15', 'examination time', '1', '156', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27526', 'physicaltips11', 'item in question', '1', '152', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27527', 'physicaltips12', 'recommended weekly regular medical examinations can be found in the details of your web presence and to protect the security of your website .', '1', '153', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27521', 'physicaltips6', 'Last site examination score', '1', '147', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27522', 'physicaltips7', 'points', '1', '148', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27523', 'physicaltips8', 'Total scan', '1', '149', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27524', 'physicaltips9', 'items', '1', '150', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27525', 'physicaltips10', 'where', '1', '151', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27520', 'physicaltips5', 'last examination time', '1', '146', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27519', 'physicaltips4', 'fingerprint comparison', '1', '145', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27515', 'statbrowser7', 'Sogou browser', '1', '141', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27516', 'physicaltips1', 'scanning ...', '1', '142', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27517', 'physicaltips2', 'website examination', '1', '143', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27518', 'physicaltips3', 'killing Trojan', '1', '144', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27514', 'statbrowser6', 'Google Chrome', '1', '140', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27513', 'statbrowser5', 'TheWorld Browser', '1', '139', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27512', 'statbrowser4', 'TT browser', '1', '138', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27510', 'statbrowser2', 'Maxthon Browser', '1', '136', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27511', 'statbrowser3', 'QQ browser', '1', '137', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27508', 'statother', 'Other', '1', '134', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27509', 'statbrowser1', '360 security browser', '1', '135', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27507', 'statvisitors', 'unique visitors', '1', '133', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27505', 'statpv', 'PV', '1', '131', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27506', 'statip', 'IP', '1', '132', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27503', 'week6', 'six', '1', '129', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27504', 'week7', 'day', '1', '130', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27502', 'week5', 'five', '1', '128', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27498', 'week1', 'a', '1', '124', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27499', 'week2', 'two', '1', '125', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27500', 'week3', 'three', '1', '126', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27501', 'week4', 'four', '1', '127', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27497', 'stat_cr0', 'Never Empty', '1', '123', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27495', 'stat_cr3', 'retained nearly a month', '1', '121', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27496', 'stat_cr4', 'reserved for nearly a year', '1', '122', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27494', 'stat_cr2', 'retained nearly seven', '1', '120', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27493', 'stat_cr1', 'retain only the day', '1', '119', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27492', 'statweb', 'Directly enter the URL', '1', '118', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27491', 'sms3', 'cache folder does not have write permission , commercial membership SMS price Get failed!', '1', '117', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27490', 'sms2', 'operation fails, the information may be entered incorrectly !', '1', '116', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27489', 'sms1', 'SMS content and mobile number can not be empty', '1', '115', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27488', 'smsreonlinecharge', 'online SMS recharge', '1', '114', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27487', 'smsrecharge', 'recharge', '1', '113', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27486', 'smschargeback', 'debit', '1', '112', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27485', 'physicalfingerprint3', 'file size is inconsistent with the fingerprint file', '1', '111', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27484', 'physicalfingerprint2', 'is not a fingerprint file', '1', '110', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27483', 'physicalfingerprint1', 'fingerprint file', '1', '109', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27476', 'physicalfunction3', 'illegal suffix', '1', '102', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27477', 'physicalfunction4', 'Folder', '1', '103', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27478', 'physicalfunction5', 'non- system folder, if you install other programs are not , delete', '1', '104', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27479', 'physicalfunction6', 'delete all', '1', '105', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27480', 'physicalfunctionok', 'scan is complete , did not find Trojans and other security threats.', '1', '106', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27481', 'physicalfingerprintok', 'Fingerprint matching exactly', '1', '107', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27482', 'physicalfingerprintno', 'fingerprint file does not exist', '1', '108', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27469', 'physicalfiletime2', 'hours ago', '1', '95', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27470', 'physicalfiletime3', 'days ago', '1', '96', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27471', 'physicalfiletime4', 'weeks ago', '1', '97', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27472', 'physicalfiletime5', 'months ago', '1', '98', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27473', 'physicalfiletime6', 'years', '1', '99', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27475', 'physicalfunction2', 'containing dangerous function', '1', '101', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27474', 'physicalfunction1', 'suspicious file', '1', '100', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27468', 'physicalfiletime1', 'minutes ago', '1', '94', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27467', 'physicalfileno', 'not conducted site examination , the proposed immediate medical', '1', '93', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27466', 'physicalfile10', 'file size is inconsistent with the standard file system', '1', '92', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27465', 'physicalfile9', 'regenerate', '1', '91', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27463', 'physicalfile7', 're-download', '1', '89', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27464', 'physicalfile8', 'Please restore the backup', '1', '90', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27462', 'physicalfile6', 'file size and standard file system inconsistency', '1', '88', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27461', 'physicalfile5', 'lost', '1', '87', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27460', 'physicalfile4', 'profiles', '1', '86', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27459', 'physicalfile3', 'system Files', '1', '85', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27458', 'physicalfile2', 'not found risk', '1', '84', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27456', 'physicalfile', 'key file detection', '1', '82', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27457', 'physicalfile1', 'Can not connect to the server to get a standard file system', '1', '83', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27454', 'physicalweb', 'Site address settings', '1', '80', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27455', 'physicalweb1', 'access Web site URL is inconsistent with current', '1', '81', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27451', 'physicalmember', 'pending membership', '1', '77', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27452', 'physicalmember1', 'have not audited Member :', '1', '78', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27453', 'physicalmember2', 'name', '1', '79', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27448', 'physicalunread3', 'CV', '1', '74', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27450', 'physicalspam1', 'Recycle Bin has uncleaned data', '1', '76', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27449', 'physicalspam', 'spam', '1', '75', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27447', 'physicalunread2', 'Message', '1', '73', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27446', 'physicalunread1', 'Feedback', '1', '72', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27445', 'physicalunread', 'unread messages', '1', '71', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27444', 'physicalstatic1', 'static and pseudo-static pages to be opened at the same time , the causes the page can not be accessed', '1', '70', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27443', 'physicalstatic', 'static page settings', '1', '69', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27442', 'physicalseo4', 'set', '1', '68', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27441', 'physicalseo3', 'Site description not set', '1', '67', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27440', 'physicalseo2', 'Site keywords have full-width comma [ , ] is recommended to use a comma [ , ] or vertical [ | ] as delimiters', '1', '66', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27438', 'physicalseo', 'SEO optimization settings', '1', '64', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27439', 'physicalseo1', 'website Keywords not set', '1', '65', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27437', 'physicalupdate3', 'Please update website content as soon as possible', '1', '63', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27436', 'physicalupdate2', 'recommended weekly updated content', '1', '62', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27435', 'physicalupdate1', 'Last updated :', '1', '61', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27434', 'physicalupdate', 'website content updates', '1', '60', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27433', 'physicalbackup4', 'days ago , it is recommended to back up at least once a month', '1', '59', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27431', 'physicalbackup1', 'not detected data backup file , we recommend regular backups of website data .', '1', '57', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27432', 'physicalbackup2', 'Last backup time :', '1', '58', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27430', 'physicalbackup', 'Site data Backup', '1', '56', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27424', 'physicalupdatesuc', 'updated successfully', '1', '50', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27425', 'physicalok', 'Normal', '1', '51', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27426', 'physicalnoneed', 'without treatment', '1', '52', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27427', 'physicaladmin', 'background directory name', '1', '53', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27428', 'physicaladmin1', 'background directory name unmodified , proposed changes', '1', '54', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27429', 'physicaladmin2', 'modified', '1', '55', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27423', 'physicalgenok', 'Generate success', '1', '49', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27421', 'physicaldelok', 'Deleted successfully', '1', '47', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27422', 'physicaldelno', 'can not find the file, delete failed .', '1', '48', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27419', 'appdl4', 'versions System support', '1', '45', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27420', 'nursenomoney', 'lack of balance , recharge then please submit !', '1', '46', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27417', 'appdl2', '', '1', '43', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27418', 'appdl3', 'this application requires an installed', '1', '44', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27413', 'appreinstall', 'reinstall', '1', '39', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27414', 'appupgrade', 'Upgrade', '1', '40', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27415', 'appuninstall', 'Uninstall success', '1', '41', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27416', 'appdl1', 'after the application is installed go to my application using the', '1', '42', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27412', 'appinstall', 'Installation', '1', '38', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27411', 'hosterror', 'connect to the server failed, please try again later', '1', '37', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27410', 'usertype4', 'Advanced commercial license', '1', '36', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27409', 'usertype3', 'ordinary commercial license', '1', '35', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27408', 'usertype2', 'commercial license', '1', '34', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27407', 'usertype1', 'Free', '1', '33', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27403', 'csvexplain1', 'documentation', '1', '29', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27404', 'csvexplain2', '1 , do not change the file name .', '1', '30', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27405', 'csvexplain3', '2 . Details field supports HTML code.', '1', '31', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27406', 'csvexplain4', '3 selection options field , please fill in the content .', '1', '32', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27402', 'csverror2', 'upload content static content pages have the same name . Error line:', '1', '28', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27401', 'csverror1', 'upload files still exist in the same page name . Error line:', '1', '27', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27400', 'csvnodata', 'No data', '1', '26', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27399', 'csvnocolumn', 'did not find the corresponding column, please do not change the file name', '1', '25', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27398', 'listno', 'No this column content', '1', '24', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27397', 'contentuppage', 'operation is successful , skip next', '1', '23', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27396', 'wapdimensionaldo', 'Generate', '1', '22', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27395', 'wapdimensionaltips', 'Please upload pictures of less than 300K , the picture may not generate too large ! <br /> not need to show LOGO on the two-dimensional code , please leave blank .', '1', '21', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27394', 'wapdimensionalsize', 'size', '1', '20', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27393', 'wapdimensionaltitle', 'dimensional code generation ( phone scan two-dimensional code to access mobile site )', '1', '19', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27392', 'wapfoottext', 'bottom text', '1', '18', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27391', 'wapdescription', 'short description', '1', '17', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27389', 'waptiao', 'of', '1', '15', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27390', 'wapindextitle', 'page title (title)', '1', '16', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27388', 'waplistauk', 'Show All', '1', '14', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27387', 'waplist', 'list shows the number of each module', '1', '13', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27386', 'waplistaud', 'WAP will be in the foreground to review', '1', '12', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27383', 'wapinfo6', 'considering the phone screen width , image width 240px ( pixels ) are more suitable for', '1', '9', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27384', 'waplistshow', 'Content display', '1', '10', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27385', 'wapinfo7', 'is set to the need to review, add the contents of the required background check allows the display to normal display  in WAP', '1', '11', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27382', 'wapshowimg', 'show picture', '1', '8', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27381', 'wapinfo4', 'as wap.metinfo.cn ( please do DNS and bind )', '1', '7', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27380', 'wapinfo3', 'specify the domain name to jump', '1', '6', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27378', 'wapfang', 'automatically jump', '1', '4', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27379', 'wapgeturl', 'Phone access automatically jump', '1', '5', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27377', 'wapsetlang', 'Home language switch position displays WAP text links', '1', '3', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27376', 'waplang', 'Show Link', '1', '2', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27375', 'waptype', 'Wap function', '1', '1', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('27374', 'enterpriseapp', 'Enterprise Applications', '1', '6', '0', '0', 'en');
INSERT INTO `met_language` VALUES ('27373', 'otherinfocache2', 'cache file does not have write permissions , update the foreground does not display properly !', '1', '209', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27372', 'otherinfocache1', 'please re- generate static pages , and refresh the page , you can only modify the content displayed properly !', '1', '208', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27370', 'modulemanagement7', 'Message system', '1', '206', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27371', 'modulemanagement8', 'Feedback System', '1', '207', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27368', 'modulemanagement5', 'image module', '1', '204', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27369', 'modulemanagement6', 'recruitment module', '1', '205', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27367', 'modulemanagement4', 'download module', '1', '203', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27366', 'modulemanagement3', 'product modules', '1', '202', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27363', 'columnarrangement4', 'column', '1', '199', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27364', 'modulemanagement1', 'Profile module', '1', '200', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27365', 'modulemanagement2', 'articles module', '1', '201', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27356', 'dltips4', 'Please upgrade program', '1', '192', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27357', 'dltips5', 'file you requested does not exist', '1', '193', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27358', 'dltips6', 'remote server requests error', '1', '194', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27359', 'dltips7', 'download timeout', '1', '195', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27360', 'columnarrangement1', 'Display:', '1', '196', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27361', 'columnarrangement2', 'switch to', '1', '197', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27362', 'columnarrangement3', 'module', '1', '198', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27354', 'dltips2', 'file download fails, check the local directory permissions and space', '1', '190', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27355', 'dltips3', 'You do not have permission to download this file', '1', '191', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27353', 'dltips1', 'Unable to connect to the remote server , check the network', '1', '189', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27352', 'seotips25', 'Packing and download', '1', '188', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27349', 'seotips21', 'generate only checked language site map', '1', '185', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27350', 'seotips22', 'and generate', '1', '186', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27351', 'seotips24', 'Note ! You open simultaneously static and pseudo-static pages , turn one , otherwise it will lead to Web sites to visit .', '1', '187', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27348', 'seotips20', 'Current language', '1', '184', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27346', 'seotips18', 'filter external modules', '1', '182', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27347', 'seotips19', 'site language range', '1', '183', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27345', 'seotips17', 'filter does not appear in the foreground column', '1', '181', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27340', 'seotips15', 'Map Website', '1', '176', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27341', 'seotips15_1', 'To facilitate visitors view your site content, can be added in the column setup module for \"site map\" section.', '1', '177', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27342', 'seotips15_2', 'Suitable for Google and baidu,', '1', '178', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27343', 'seotips15_3', 'suitable Yahoo,', '1', '179', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27344', 'seotips16', 'filter columns and content', '1', '180', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27339', 'seotips14_1', 'how to submit to search engines ?', '1', '175', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27338', 'seotips14', 'Site map (Sitemap) help accelerate website indexed by search engines', '1', '174', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27337', 'seotips13', 'Replace static mode will regenerate all the static page, make sure you !', '1', '173', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27335', 'seotips11', 'Delete all the static pages generated ?', '1', '171', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27336', 'seotips12', 'Is immediately generate all static pages ?', '1', '172', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27334', 'seotips10', 'delete pseudo- static configuration file ? For other languages ​​opens pseudo-static function , do not delete .', '1', '170', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27333', 'seotips9', 'content page', '1', '169', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27330', 'seotips6', 'Home', '1', '166', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27331', 'seotips7', 'as', '1', '167', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27332', 'seotips8', 'static page name or ID', '1', '168', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27329', 'seotips5', 'URL constitutes manner ( pseudo-static URL constitution does not support change )', '1', '165', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27328', 'seotips4', 'Pseudo-Static', '1', '164', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27327', 'seotips3', 'static page generation', '1', '163', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27326', 'seotips2', 'Static page settings', '1', '162', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27322', 'statips61', 'antecedents URL', '1', '158', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27323', 'statips62', 'visit Count', '1', '159', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27324', 'statips63', 'visits', '1', '160', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27325', 'seotips1', 'more keywords , please use the vertical bar | separated recommended 3-4 keywords.', '1', '161', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27321', 'statips60', 'antecedents domain', '1', '157', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27320', 'statips59', 'antecedents page', '1', '156', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27319', 'statips58', 'to prevent malicious attacks , no more records after visiting information beyond', '1', '155', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27318', 'statips57', 'daily visits max', '1', '154', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27317', 'statips56', 'security Settings', '1', '153', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27316', 'statips55', 'emptied today before all the data', '1', '152', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27315', 'statips54', 'clear all data', '1', '151', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27314', 'statips53', 'a button to clear all the statistics', '1', '150', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27312', 'statips51', 'Key emptied', '1', '148', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27313', 'statips52', 'Empty statistics', '1', '149', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27310', 'statips49', 'empty way ( statistical data will take up the database size )', '1', '146', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27311', 'statips50', 'program will clear the day before the set time statistics , save that effect.', '1', '147', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27309', 'statips48', 'after closing no record information visit', '1', '145', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27306', 'statips45', 'History accumulated', '1', '142', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27307', 'statips46', '24 hours traffic trends', '1', '143', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27308', 'statips47', 'access statistics', '1', '144', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27305', 'statips44', 'History highest', '1', '141', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27304', 'statips43', 'daily average', '1', '140', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27303', 'statips42', 'visits Overview', '1', '139', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27302', 'statips41', 'by IP View', '1', '138', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27300', 'statips39', 'by PV View', '1', '136', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27301', 'statips40', 'by independent visitors to view', '1', '137', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27299', 'statips38', 'little time distribution', '1', '135', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27297', 'statips36', 'Week', '1', '133', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27298', 'statips37', 'day visits distribution', '1', '134', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27295', 'statips34', 'Overview', '1', '131', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27296', 'statips35', 'Date', '1', '132', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27294', 'statips33', 'search frequency', '1', '130', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27293', 'statips32', 'Search engine', '1', '129', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27291', 'statips30', 'antecedents', '1', '127', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27292', 'statips31', 'respondents', '1', '128', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27290', 'statips29', 'Browser', '1', '126', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27289', 'statips28', 'Region - network', '1', '125', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27288', 'statips27', 'Time', '1', '124', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27286', 'statips25', 'domain', '1', '122', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27287', 'statips26', 'directly enter the URL or bookmark', '1', '123', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27284', 'statips22', 'capita Views', '1', '120', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27285', 'statips23', 'belongs language', '1', '121', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27283', 'statips21', 'unique visitors', '1', '119', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27279', 'statips17', 'from', '1', '115', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27280', 'statips18', 'rank', '1', '116', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27281', 'statips19', 'Page name', '1', '117', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27282', 'statips20', 'Views', '1', '118', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27278', 'statips15', 'select date', '1', '114', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27276', 'statips13', 'Last 30 days', '1', '112', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27277', 'statips14', 'month', '1', '113', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27274', 'statips11', 'yesterday', '1', '110', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27275', 'statips12', 'last 7 days', '1', '111', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27264', 'statips1', 'Overview', '1', '100', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27265', 'statips2', 'settings', '1', '101', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27266', 'statips3', 'Search engine', '1', '102', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27267', 'statips4', 'respondents', '1', '103', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27268', 'statips5', 'antecedents', '1', '104', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27269', 'statips6', 'Details', '1', '105', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27270', 'statips7', 'surveyed page', '1', '106', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27271', 'statips8', 'respondents domain', '1', '107', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27272', 'statips9', 'respondents Language', '1', '108', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27273', 'statips10', 'today', '1', '109', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27263', 'enginetype8', '360 Search', '1', '99', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27260', 'enginetype5', 'Bing', '1', '96', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27261', 'enginetype6', 'Sogou', '1', '97', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27262', 'enginetype7', 'Ethics', '1', '98', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27259', 'enginetype4', 'Yahoo', '1', '95', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27257', 'enginetype2', 'Baidu', '1', '93', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27258', 'enginetype3', 'Soso', '1', '94', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27254', 'linkPass', 'audit by', '1', '90', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27255', 'linkRecommend', 'Recommended Sites', '1', '91', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27256', 'enginetype1', 'Google', '1', '92', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27253', 'linktip1', 'The higher the number the more forward sort', '1', '89', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27252', 'linkcontact', 'Contact', '1', '88', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27251', 'linkLOGO', 'Site LOGO', '1', '87', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27250', 'linkUrl', 'website address', '1', '86', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27248', 'linkCheck', 'Review', '1', '84', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27249', 'linkTip2', 'please enter the website title keywords', '1', '85', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27247', 'linkKeys', 'website Keywords', '1', '83', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27246', 'linkName', 'website Title', '1', '82', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27245', 'linkType5', 'LOGO link', '1', '81', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27243', 'linkType3', 'all links', '1', '79', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27244', 'linkType4', 'text Link', '1', '80', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27242', 'linkType2', 'Recommended Links', '1', '78', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27241', 'linkType1', 'unaudited link', '1', '77', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27238', 'htmnoopen', 'not open the static page', '1', '74', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27239', 'linkType', 'link Type', '1', '75', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27240', 'linkTypenonull', 'Please select the type of link', '1', '76', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27236', 'htmdabao', 'full stop static packaging', '1', '72', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27237', 'htmdabaoinfo2', '<span style=\"float:right;\"> packaged into a separate static site , able to independently access </ span> full stop static packaging', '1', '73', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27235', 'rewriteruledownload2', 'MetInfo pseudo-static rules', '1', '71', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27234', 'rewriteruledownload1', 'Download pseudo-static rules', '1', '70', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27233', 'rewritefinfo3', 'Turn off the pseudo-static function , pseudo- static and can only use a static page .', '1', '69', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27232', 'rewritefinfo2', 'Turn off the static page feature, pseudo- static and can only use a static page .', '1', '68', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27231', 'rewritefaq', 'What is pseudo-static ? What is the role ?', '1', '67', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27230', 'rewriteok', 'Space is needed to support : URL Rewrite Module (URL rewriting )', '1', '66', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27229', 'rewrite', 'Pseudo-static (URL Rewrite)', '1', '65', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27228', 'htmcreateallinfo', 'use with caution , consuming system resources !', '1', '64', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27227', 'htmCreateAll', 'generate all the pages', '1', '63', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27226', 'htmsitemap1', 'Generate site Map', '1', '62', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27221', 'htmTip1', '-generated content pages', '1', '57', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27222', 'htmTip2', 'Generate list page', '1', '58', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27223', 'htmAll', 'all pages', '1', '59', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27224', 'htmlogin', 'Members modules', '1', '60', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27225', 'htmsitemap', 'Site Map', '1', '61', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27219', 'htmCreateHome', 'Generate Home', '1', '55', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27220', 'htmColumn', 'section', '1', '56', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27216', 'sethtmsitemap1', 'HTML site map', '1', '52', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27217', 'sethtmsitemap4', 'xml site map', '1', '53', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27218', 'htmHome', 'HOME', '1', '54', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27215', 'sethtmsitemap', 'Site Map Build Settings', '1', '51', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27214', 'sethtmpage4', '<span style=\"float:right;\"> not recommend frequent replacement to ensure that SEO results ( modified rebuild all static pages ) </ span> static page name rules', '1', '50', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27213', 'sethtmlist2', 'where the folder name + class + page number ( eg software_1_1)', '1', '49', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27212', 'sethtmlist1', 'default filename + class + page number ( eg product_1_1)', '1', '48', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27211', 'sethtmlist', 'list page name', '1', '47', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27210', 'setlisthtmltype2', 'show only the columns id ( eg product_1)', '1', '46', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27209', 'setlisthtmltype1', 'Show All fields id ( eg product_1_2_3)', '1', '45', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27208', 'setlisthtmltype', 'list of page types', '1', '44', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27207', 'sethtmpage3', 'where the folder name + ID ( eg product10)', '1', '43', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27206', 'sethtmpage2', 'date + ID ( eg 2009081510 )', '1', '42', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27205', 'sethtmpage1', 'default filename + ID ( such as showproduct10)', '1', '41', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27204', 'sethtmpage', 'Content page Name', '1', '40', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27203', 'sethtmtype', 'static page type', '1', '39', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27201', 'sethtmway2', 'manually generate', '1', '37', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27202', 'sethtmway3', 'only content Management operation can be automatically generated , modified as set backstage after the other without changing the need to manually generate foreground', '1', '38', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27200', 'sethtmway1', 'content information changes automatically generate', '1', '36', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27199', 'sethtmway', 'Generate way', '1', '35', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27198', 'setbasicTip4', 'is first turned on , please click the \"static page generation \" Generate All pages', '1', '34', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27196', 'sethtmall', 'full stop static', '1', '32', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27197', 'setbasicTip3', 'Home , static content page', '1', '33', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27195', 'sethtmok', 'static pages open', '1', '31', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27194', 'htm', 'static pages generated successfully', '1', '30', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27192', 'labelAdd', 'Add New tag', '1', '28', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27193', 'labelnonull', 'original text can not be empty', '1', '29', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27191', 'labelUrl', 'link address', '1', '27', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27189', 'labelNew', 'Replace', '1', '25', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27190', 'labelNewtitle', 'Title', '1', '26', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27188', 'labelOld', 'Original text', '1', '24', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27187', 'labelnum', 'Replace Occurrence', '1', '23', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27186', 'setseojiathis', 'Social sharing buttons', '1', '22', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27185', 'setseoTip14', 'title (title) pages constitute the way , you can also customize the corresponding page title (title) in the edit / when you add content.', '1', '21', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27184', 'setseotitletype4', 'Content Keywords + title + website domain name', '1', '20', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27183', 'setseotitletype3', 'site content Title + keyword', '1', '19', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27180', 'setseotitletype', 'in the page title (title)', '1', '16', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27181', 'setseotitletype1', 'content Title', '1', '17', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27182', 'setseotitletype2', 'content Subject + site name', '1', '18', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27179', 'setseonewopen', 'new window opens', '1', '15', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27177', 'setseotype', 'page link', '1', '13', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27178', 'setseodopen', 'current window open', '1', '14', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27175', 'setseoFoot', 'at the bottom of website optimization word', '1', '11', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27176', 'setseoTip13', 'Display application in the foreground links page', '1', '12', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27174', 'setseoFriendLink', 'links site name', '1', '10', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27172', 'setseoTip8', 'hyperlink default Title', '1', '8', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27173', 'setseoTip9', 'mouse over the hyperlink display text', '1', '9', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27171', 'setseoTip7', 'text mouse over the picture display', '1', '7', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27167', 'setseohomeKey', 'Home Title (title)', '1', '3', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27168', 'setseoTip10', 'empty site using keywords is constituted by Name + of', '1', '4', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27170', 'setseoTip6', 'picture default ALT', '1', '6', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27169', 'setseoTip4', 'head to optimize text', '1', '5', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27166', 'setseoKey', 'Website Keywords', '1', '2', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27165', 'setseoTip1', 'Multiple Please use the keyword \"|\" or \" , \" separated.', '1', '1', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('27163', 'setheadstat', 'top code', '1', '176', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27164', 'optimizationpromotion', 'optimization promotion', '1', '5', '0', '0', 'en');
INSERT INTO `met_language` VALUES ('27162', 'batchtips46', 'progress', '1', '175', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27161', 'batchtips45', 'please upload a CSV file', '1', '174', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27160', 'batchtips44', 'batch Upload', '1', '173', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27159', 'batchtips43', 'upload already adding good content CSV file', '1', '172', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27157', 'batchtips41', 'can be opened using WPS or office', '1', '170', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27158', 'batchtips42', 'Step two:', '1', '171', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27156', 'batchtips40', 'Generate CSV file', '1', '169', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27155', 'batchtips39', 'You need to generate a standard file , and then import the completed standard document', '1', '168', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27152', 'batchtips36', 'Step :', '1', '165', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27153', 'batchtips37', 'Please select a tab , add the contents of the generated file', '1', '166', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27154', 'batchtips38', 'select columns', '1', '167', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27150', 'batchtips34', 'ignore', '1', '163', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27151', 'batchtips35', 'Please select batch add content section', '1', '164', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27149', 'batchtips33', 'Add this page', '1', '162', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27148', 'batchtips32', 'address', '1', '161', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27146', 'batchtips30', 'image file does not exist', '1', '159', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27147', 'batchtips31', 'Change', '1', '160', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27145', 'batchtips29', 'See the current picture', '1', '158', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27143', 'batchtips27', 'larger image / thumbnail address', '1', '156', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27144', 'batchtips28', 'Upload pictures address:', '1', '157', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27141', 'batchtips25', 'Batch edit', '1', '154', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27142', 'batchtips26', 'image upload error , please re-upload these pictures, or ignore', '1', '155', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27138', 'batchtips22', 'Save and jump to the next', '1', '151', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27140', 'batchtips24', 'Batch picture / file Upload', '1', '153', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27139', 'batchtips23', 'image Name', '1', '152', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27136', 'batchtips20', 'no picture', '1', '149', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27137', 'batchtips21', 'Add', '1', '150', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27134', 'batchtips18', 'picture', '1', '147', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27135', 'batchtips19', 'Update pictures', '1', '148', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27132', 'batchtips16', 'total', '1', '145', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27133', 'batchtips17', 'Title', '1', '146', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27131', 'batchtips15', 'of', '1', '144', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27126', 'batchtips10', 'Generate shrink thumbnails', '1', '139', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27130', 'batchtips14', 'to', '1', '143', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27129', 'batchtips13', 'current display', '1', '142', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27128', 'batchtips12', 'Next', '1', '141', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27127', 'batchtips11', 'You can configure the system - picture settings to modify thumbnail settings', '1', '140', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27125', 'batchtips9', 'thumbnails operation', '1', '138', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27124', 'batchtips8', 'You can configure the system - the watermark image settings to modify settings alone can not upload batch add watermark thumbnails', '1', '137', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27123', 'batchtips7', 'Add watermark', '1', '136', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27122', 'batchtips6', 'watermark operation', '1', '135', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27120', 'batchtips4', 'Batch thumbnails', '1', '133', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27121', 'batchtips5', 'target column', '1', '134', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27117', 'batchtips1', 'Batch upload content', '1', '130', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27118', 'batchtips2', 'Batch upload pictures', '1', '131', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27119', 'batchtips3', 'Batch add watermark', '1', '132', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27115', 'eidtmsg', 'View Message', '1', '128', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27116', 'eidtfed', 'View Feedback', '1', '129', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27113', 'eidtcont', 'Edit content', '1', '126', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27114', 'subpart', 'lower part', '1', '127', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27112', 'recycleno', 'not open the Recycle Bin', '1', '125', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27111', 'recycledelall', 'Remove all', '1', '124', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27110', 'recyclereall', 'restore all', '1', '123', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27109', 'recyclere', 'restore', '1', '122', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27108', 'recycledietime', 'Remove time', '1', '121', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27107', 'recycleimg', 'Image module', '1', '120', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27104', 'recyclenew', 'news module', '1', '117', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27105', 'recycleproduct', 'product modules', '1', '118', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27106', 'recycledownload', 'download module', '1', '119', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27103', 'recycletype', 'Module Type', '1', '116', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27102', 'recycleall', 'All modules', '1', '115', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27101', 'recycleexplain1', 'only supports ( news , products, downloads , pictures ) module content.', '1', '114', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27100', 'messageeditor', 'Edit Message', '1', '113', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27099', 'messagesubmit', 'comments submitted Kai Close', '1', '112', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27097', 'messageeditorCheck', 'Reply audit', '1', '110', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27098', 'messageeditorShow', 'the audit by and displayed in the foreground', '1', '111', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27092', 'messageID', 'Message identity', '1', '105', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27093', 'messageTime', 'Submit time', '1', '106', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27094', 'messageeditorContact', 'other Contacts', '1', '107', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27095', 'messageeditorContent', 'content', '1', '108', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27096', 'messageeditorReply', 'Reply comments', '1', '109', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27089', 'messageClass5', 'audited information', '1', '102', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27090', 'messageTel', 'phone', '1', '103', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27091', 'messageReply', 'The audit', '1', '104', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27087', 'messageClass3', 'has returned information', '1', '100', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27088', 'messageClass4', 'unaudited information', '1', '101', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27086', 'messageClass2', 'No reply message', '1', '99', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27084', 'messageClass', 'Message classification', '1', '97', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27085', 'messageClass1', 'All information', '1', '98', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27083', 'messageTitle', 'Message management', '1', '96', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('30429', 'messageVoice', 'message form set', '1', '443', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27082', 'messageincTip4', 'whether Guestbook happen automatically to the specified mailbox', '1', '95', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27081', 'messageincSend', 'whether to send e-mail', '1', '94', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27080', 'messageincTip3', 'Feedback after the need to respond to the audit was displayed in the background', '1', '93', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27079', 'messageincShow', 'Display', '1', '92', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27078', 'messageincTitle', 'Message system Settings', '1', '91', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27077', 'feedbackauto', 'Mail Settings', '1', '90', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27076', 'feedbackexplain1', 'Page title name, the default name for the column', '1', '89', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27075', 'feedbacksubmit', 'submit feedback on off', '1', '88', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27073', 'fdeditorRecord', 'Edit record', '1', '86', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27074', 'feedbackview', 'View Feedback information', '1', '87', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27072', 'fdeditorFrom', 'Source page address', '1', '85', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27071', 'fdeditorTime', 'feedback submission time', '1', '84', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27070', 'fdeditorInterest', 'interested in the product', '1', '83', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27069', 'feedbackAccess0', 'visitors', '1', '82', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27068', 'feedbackExport', 'Export', '1', '81', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27067', 'feedbackTip4', 'export All', '1', '80', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27066', 'feedbackTip2', 'Export EXCEL table', '1', '79', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27065', 'feedbackTime', 'Submit time', '1', '78', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27064', 'feedbackID', 'Feedback identity', '1', '77', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27063', 'feedbackShowAll', 'View All', '1', '76', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27062', 'feedbackClass3', 'have read the information', '1', '75', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27050', 'fdincTip9', 'Please use multiple mailboxes \"|\" separated', '1', '63', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27059', 'feedbackClasp', 'Information category', '1', '72', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27060', 'feedbackClass1', 'All information', '1', '73', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27061', 'feedbackClass2', 'unread message', '1', '74', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27057', 'fdincAutoContent', 'reply message', '1', '70', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27058', 'feedbackClass', 'Information Status', '1', '71', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27055', 'fdincFeedbackTitle', 'Reply message headers', '1', '68', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27056', 'fdincAutoFbTitle', 'auto-reply message title', '1', '69', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27054', 'fdincTip11', 'Used to get the user is email address, in order to reply the mail.The field type must be a \"short\"', '1', '67', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27053', 'fdincEmailName', 'Email field names', '1', '66', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27052', 'fdincTip10', 'will automatically check the user submits the form to reply to a message', '1', '65', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27051', 'fdincAuto', 'E-mail reply', '1', '64', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27049', 'fdincAcceptMail', 'Feedback Mail to receive mail', '1', '62', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27048', 'fdincTip8', 'Send messages and write data', '1', '61', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27047', 'fdincTip7', 'only background reading', '1', '60', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27046', 'fdincAccept', 'only receive mail', '1', '59', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27045', 'fdincAcceptType', 'information receiving method', '1', '58', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27044', 'fdincTip6', 'Used to get the type of user feedback.The field type must be a \"Pull down\"', '1', '57', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27043', 'fdincClassName', 'information Classification field name', '1', '56', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27042', 'fdincTip5', 'multiple characters please use the \"|\" separated', '1', '55', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27041', 'fdincSlash', 'sensitive character filter', '1', '54', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27036', 'jobsetname', 'select the field name', '1', '49', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27037', 'fdincTitle', 'Feedback System Settings', '1', '50', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27038', 'fdincName', 'feedback form Name', '1', '51', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27039', 'fdincTime', 'Anti- refresh time', '1', '52', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27040', 'fdincTip4', 'seconds , the same IP2 the minimum interval between submission of', '1', '53', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27035', 'jobmanagement', 'Job Management', '1', '48', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27033', 'jobtip8', 'image field Name', '1', '46', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27034', 'jobtip9', 'Biography photos, so the message can be seen in the candidates to upload photos.', '1', '47', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27032', 'jobtip5', 'Resume after the system will automatically send an email to receive email', '1', '45', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27031', 'cvset', 'resume form set', '1', '44', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27030', 'cvmanagement', 'resume information management', '1', '43', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27029', 'cvemail', 'Biography accepting mail', '1', '42', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27028', 'cvwd', 'unread', '1', '41', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27027', 'cvyd', 'read', '1', '40', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27026', 'cvall', 'ALL', '1', '39', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27024', 'cvincAcceptType', 'resume receiving mode', '1', '37', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27025', 'cvsha', 'Filter', '1', '38', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27023', 'cvincAcceptMail', 'resume receiving mail', '1', '36', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27022', 'cvincTip5', 'If set to a separate post for each post will be sent to the set E-mail address', '1', '35', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27021', 'cvincTip4', 'separate posts', '1', '34', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27020', 'cvincTip3', 'unified set', '1', '33', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27019', 'cvincTip2', 'messages are received', '1', '32', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27017', 'cveditorTitle', 'View CV', '1', '30', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27018', 'josAlways', 'limitation', '1', '31', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27012', 'jobtip3', 'Days ( blank is not limited to )', '1', '25', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27013', 'cvPosition', 'Apply', '1', '26', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27014', 'cvName', 'Candidate status', '1', '27', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27015', 'cvAddtime', 'Submit time', '1', '28', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27016', 'cvTip4', 'post has been deleted', '1', '29', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27011', 'jobtip2', 'be careful not to change the format .', '1', '24', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27010', 'jobnow', 'today is', '1', '23', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27007', 'jobCV', 'Biography', '1', '20', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27008', 'jobtip1', 'people ( blank is not limited to )', '1', '21', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27009', 'jobdeal', 'salary', '1', '22', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27006', 'jobpublish', 'Release date', '1', '19', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27005', 'joblife', 'Effective Time', '1', '18', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27002', 'jobposition', 'Jobs', '1', '15', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27003', 'jobnum', 'Vacancies', '1', '16', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27004', 'jobaddress', 'Location', '1', '17', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27001', 'setotherTip2', 'This field is not enabled', '1', '14', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('27000', 'setotherTip1', 'according to \' template configuration navigation \' instructions to configure , such as opening a static page , all you need to generate static pages modified .', '1', '13', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('26999', 'setotherItemSet', 'other content configuration', '1', '12', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('26998', 'setfootstat', 'bottom of the code', '1', '11', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('26997', 'setfootOther', 'Additional information', '1', '10', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('26995', 'setfootAddressCode', 'address Postcode', '1', '8', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('26996', 'setfootContact', 'Contact', '1', '9', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('26994', 'setfootVersion', 'copyright information', '1', '7', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('26993', 'article6', 'Preferences', '1', '6', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('26992', 'article5', 'after you copy or move columns and manually generate the corresponding static page content', '1', '5', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('26991', 'article4', 'Sort greater the value the more forward', '1', '4', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('26990', 'article3', 'wap display', '1', '3', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('26989', 'article2', 'Picture ( required template support )', '1', '2', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('26988', 'article1', 'to Select properties', '1', '1', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('26986', 'mod8content', 'View Feedback', '1', '152', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26987', 'contentmanagement', 'Content management', '1', '4', '0', '0', 'en');
INSERT INTO `met_language` VALUES ('26985', 'mod7content', 'View Message', '1', '151', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26984', 'mod6content', 'View Profile', '1', '150', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26982', 'mod4content', 'Manage downloads', '1', '148', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26983', 'mod5content', 'picture', '1', '149', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26981', 'mod3content', 'management products', '1', '147', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26980', 'mod2content', 'management Articles', '1', '146', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26978', 'mod6add', 'post Jobs', '1', '144', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26979', 'mod1content', 'management Introduction', '1', '145', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26977', 'mod5add', 'Add Picture', '1', '143', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26974', 'mod2add', 'Add Articles', '1', '140', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26975', 'mod3add', 'Add Products', '1', '141', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26976', 'mod4add', 'Add Download', '1', '142', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26973', 'copyotherlang5', 'two , three columns alone can not copy , please send Bigclass copied , or upgrade to level section', '1', '139', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26969', 'copyotherlang1', 'copy to other languages ​​', '1', '135', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26970', 'copyotherlang2', 'copy the contents of', '1', '136', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26971', 'copyotherlang3', 'Please select a language !', '1', '137', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26972', 'copyotherlang4', 'Column in the replication language already exists, please copy the contents of', '1', '138', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26968', 'ctitleinfo', 'is empty then use SEO parameters set title constitutes a way', '1', '134', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26966', 'listproductre', 'related Products', '1', '132', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26967', 'listproductreok', 'is not associated with', '1', '133', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26965', 'listAddList', 'Add New options', '1', '131', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26964', 'listTitle', 'setting Options', '1', '130', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26963', 'parameternameexist', 'menu name already exists', '1', '129', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26962', 'parameterMust', 'Are required', '1', '128', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26960', 'parameter6', 'radio', '1', '126', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26961', 'allcategory', 'All sections', '1', '127', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26955', 'parameter1', 'brief', '1', '121', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26956', 'parameter2', 'drop', '1', '122', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26957', 'parameter3', 'Text', '1', '123', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26958', 'parameter4', 'multiple choice', '1', '124', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26959', 'parameter5', 'Accessories', '1', '125', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26954', 'parameteradd', 'Add New Field', '1', '120', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26953', 'parametertype', 'field Type', '1', '119', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26952', 'columnmtitle', 'Page Title', '1', '118', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26947', 'columnmfeedback5', 'Custom form Settings', '1', '113', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26951', 'columnmore', 'More', '1', '117', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26950', 'columnmappend', 'Additional content:', '1', '116', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26949', 'columnmfeedback7', 'set the feedback form', '1', '115', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26948', 'columnmfeedback6', 'Custom feedback form', '1', '114', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26946', 'columnmfeedback4', 'Start copy', '1', '112', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26945', 'columnmfeedback3', 'Click Start copy', '1', '111', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26944', 'columnmfeedback2', 'select form', '1', '110', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26943', 'columnmfeedback1', 'Copy form', '1', '109', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26942', 'columnmfeedback', 'Feedback Form set', '1', '108', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26941', 'columnmwap', 'wap display', '1', '107', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26940', 'columnmlink', 'links Application :', '1', '106', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26939', 'columnmnotallow', 'is not allowed', '1', '105', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26938', 'columnmallow', 'Allow', '1', '104', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26937', 'columnmeditor', 'Edit Fields', '1', '103', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26933', 'columnmove2', 'to', '1', '99', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26934', 'columnmove3', 'to move the lower part and the lower part there is more than one part of the association can not move', '1', '100', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26936', 'columnmove5', 'New Folder name', '1', '102', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26935', 'columnmove4', 'was promoted to the top part', '1', '101', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26932', 'columnmove1', 'Mobile', '1', '98', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26931', 'columnmove', 'Moving part', '1', '97', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26930', 'columnexplain8', 'Additional content will be displayed in this column last all content pages , used to describe the same content .', '1', '96', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26929', 'columnexplain7', 'acting on the column displays the corresponding position in the foreground', '1', '95', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26928', 'columnexplain6', 'will copy the selected form of options and settings form', '1', '94', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26927', 'columnexplain5', 'Visitors could not be submitted in a new window after closing Links Application', '1', '93', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26926', 'columnexplain4', 'Settings link columns are open', '1', '92', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26925', 'columnexplain3', 'Show parameter generally used to attribute information , such as price, type , etc., after setting the time to add content may fill in the corresponding parameter values.', '1', '91', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26924', 'columnexplain2', 'after setting the options, content management can directly select the corresponding option .', '1', '90', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26923', 'columnexplain1', 'related options will appear below the product name under the corresponding product part', '1', '89', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26922', 'columnerr8', 'is set to allow you to add content sections must have a child columns', '1', '88', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26921', 'columnerr7', 'promoted Bigclass', '1', '87', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26915', 'columnerr1', 'directory name can be a number or letter', '1', '81', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26916', 'columnerr2', 'directory name can not be re- name', '1', '82', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26917', 'columnerr3', 'under each language sites only have one', '1', '83', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26918', 'columnerr4', 'directory name already exists, may have been using the', '1', '84', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26919', 'columnerr5', 'you to confirm that you want to move this column ?', '1', '85', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26920', 'columnerr6', 'This operation will merge columns, you confirm that you want to move this column ? After the', '1', '86', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26914', 'columntip14', 'Is empty then use the URL way constitute a static page setup settings, do not add html suffix does not support special characters', '1', '80', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26912', 'columntip12', 'hide all sub-columns', '1', '78', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26913', 'columntip13', 'Copy feedback system configuration file failed , check the file exists !', '1', '79', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26911', 'columntip11', 'Expand All sub-columns', '1', '77', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26907', 'columnImg1', 'logo Pictures', '1', '73', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26908', 'columnImg2', 'Local Pictures', '1', '74', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26909', 'columnshow', 'add content', '1', '75', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26906', 'columntip7', 'Links to external sites need to add http headers. Such as : http://bbs.metinfo.cn/', '1', '72', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26910', 'columntip8', 'settings to not allow links to jump to the first part a sub -class section', '1', '76', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26897', 'columnnav4', 'show', '1', '63', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26898', 'columnnewwindow', 'new window opens', '1', '64', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26899', 'columnOutLink', 'http://', '1', '65', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26900', 'columncontentorder', 'list Sort by', '1', '66', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26901', 'columnReverseSort', 'DESC', '1', '67', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26902', 'columnaddOrder', 'order', '1', '68', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26903', 'columnhtmlname', 'static page name', '1', '69', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26904', 'columnSEO', 'Search engine optimization settings (seo)', '1', '70', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26905', 'columnhref', 'link address', '1', '71', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26896', 'columnnav3', 'tail navigation bar', '1', '62', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26895', 'columnnav2', 'head main navigation bar', '1', '61', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26894', 'columnnav1', 'No', '1', '60', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26892', 'columnnew3', 'add three columns', '1', '58', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26893', 'columntip1', 'Please refer to', '1', '59', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26891', 'columnnew2', 'Add sub-columns', '1', '57', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26890', 'columnmark', 'column identifies the', '1', '56', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26888', 'columnPreName', 'superiors column Name', '1', '54', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26889', 'columnorder', 'sibling column sorting', '1', '55', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26886', 'columnmark1', 'logo', '1', '52', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26887', 'columnctitle', 'section title (title)', '1', '53', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26885', 'columndocument', 'directory name', '1', '51', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26883', 'columnnav', 'navigation bar shows', '1', '49', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26884', 'columnmodule', 'belongs module', '1', '50', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26882', 'columnnamemarkinfo', 'other settings ( configuration instructions based on the template set )', '1', '48', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26879', 'contentinfo4', 'expand content four', '1', '45', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26880', 'columnname', 'column name', '1', '46', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26881', 'columnnamemark', 'column modifications name', '1', '47', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26876', 'contentinfo1', 'expand content a', '1', '42', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26877', 'contentinfo2', 'expand content two', '1', '43', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26878', 'contentinfo3', 'expand content three', '1', '44', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26874', 'category', 'belongs to part', '1', '40', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26875', 'contentinfo', 'Details', '1', '41', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26872', 'addinfo', 'add content', '1', '38', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26873', 'editinfo', 'modify the content', '1', '39', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26870', 'downloadurl', 'Download', '1', '36', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26871', 'downloadsize', 'file size', '1', '37', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26867', 'modsearch', 'Enter Title Keyword', '1', '33', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26868', 'modnull', 'blank', '1', '34', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26869', 'downloadaccess', 'Reception download permissions', '1', '35', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26865', 'modtimenow', 'current time:', '1', '31', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26866', 'modtimenow1', 'Be careful not to change format.', '1', '32', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26863', 'modpublish', 'posted by', '1', '29', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26864', 'modhits', 'the more clicks , the more popular the information in the front rank', '1', '30', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26862', 'modimgurls', 'thumbnails', '1', '28', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26856', 'modFiledir', 'link address can not be clip failure', '1', '22', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26857', 'modFilenameok', 'static page name already exists', '1', '23', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26860', 'modimgurl', 'Picture address', '1', '26', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26861', 'modimgauto', 'automatically generated thumbnails', '1', '27', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26859', 'wapcontentcom', 'check is allowed to display the wap page', '1', '25', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26858', 'modmodulewyok', 'this module has been using the', '1', '24', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26855', 'modClass3', 'create a file is empty', '1', '21', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26854', 'modClass2', 'Thirdclass', '1', '20', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26852', 'modOuturl', 'Bigclass', '1', '18', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26853', 'modClass1', 'two columns', '1', '19', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26849', 'mod101', 'image list', '1', '15', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26850', 'modFoldername', 'Local folders can not be empty', '1', '16', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26851', 'modModule', 'column belongs module can not be empty', '1', '17', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26847', 'mod12', 'Site Map', '1', '13', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26848', 'mod100', 'product list', '1', '14', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26846', 'mod11', 'site Search', '1', '12', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26845', 'mod10', 'Member', '1', '11', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26843', 'mod8', 'Feedback System', '1', '9', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26844', 'mod9', 'Friendly Links', '1', '10', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26842', 'mod7', 'Message system', '1', '8', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26840', 'mod5', 'Pictures', '1', '6', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26841', 'mod6', 'recruitment', '1', '7', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26839', 'mod4', 'download', '1', '5', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26836', 'mod1', 'Profile', '1', '2', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26837', 'mod2', 'articles', '1', '3', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26838', 'mod3', 'product', '1', '4', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26835', 'modout', 'External links', '1', '1', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('26829', 'onlineskype', 'SKYPE', '1', '124', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26830', 'skinerr1', 'If you have only one display pictures, set the style will not take effect', '1', '125', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26834', 'columnconfiguration', 'Local configuration', '1', '3', '0', '0', 'en');
INSERT INTO `met_language` VALUES ('26833', 'tmptips', 'Explanation', '1', '128', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26832', 'skinerr3', 'Please select', '1', '127', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26831', 'skinerr2', 'More templates', '1', '126', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26828', 'onliemsn', 'MSN', '1', '123', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26827', 'onlieqq', 'QQ', '1', '122', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26818', 'onlineskintype', 'floating style', '1', '113', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26819', 'onlineskin', 'style', '1', '114', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26820', 'onlineimg', 'icon', '1', '115', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26821', 'onlinetel', 'telephone or other description', '1', '116', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26822', 'onlinetel1', 'Support HTML language , you can add third-party code', '1', '117', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26823', 'indexonlieicon', 'Change Icon', '1', '118', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26824', 'indexonlieimg', 'select a picture style', '1', '119', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26825', 'indexonlieok', 'confirmed', '1', '120', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('24833', 'mod6', '招聘模块', '1', '7', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24830', 'mod3', '产品模块', '1', '4', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24831', 'mod4', '下载模块', '1', '5', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24832', 'mod5', '图片模块', '1', '6', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24829', 'mod2', '文章模块', '1', '3', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24828', 'mod1', '简介模块', '1', '2', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24827', 'modout', '外部模块', '1', '1', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('24825', 'tmptips', '模板配置说明', '1', '128', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24826', 'columnconfiguration', '栏目配置', '1', '3', '0', '0', 'cn');
INSERT INTO `met_language` VALUES ('24824', 'skinerr3', '请选择', '1', '127', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24821', 'onlineskype', 'SKYPE', '1', '124', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24822', 'skinerr1', '如果只有一张展示图片，设置样式将不会生效', '1', '125', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24823', 'skinerr2', '更多模板', '1', '126', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24820', 'onliemsn', 'MSN', '1', '123', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24819', 'onlieqq', 'QQ', '1', '122', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24818', 'indexonlieno', '取消', '1', '121', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24817', 'indexonlieok', '确认', '1', '120', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24816', 'indexonlieimg', '选择图片风格', '1', '119', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24814', 'onlinetel1', '支持HTML语言，可加入第三方代码', '1', '117', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24815', 'indexonlieicon', '更改图标', '1', '118', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24813', 'onlinetel', '电话或其他说明', '1', '116', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24811', 'onlineskin', '风格', '1', '114', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24812', 'onlineimg', '图标', '1', '115', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24810', 'onlineskintype', '漂浮风格', '1', '113', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24809', 'onlinegray', '灰色', '1', '112', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24808', 'onlinegreen', '绿色', '1', '111', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24806', 'onlinered', '淡红', '1', '109', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24807', 'onlinepurple', '紫色', '1', '110', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24805', 'onlineblue', '浅蓝', '1', '108', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24804', 'onlinealibaba', '阿里旺旺', '1', '107', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24803', 'onlinetaobao', '淘宝旺旺', '1', '106', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24802', 'onlineName', '客服名称', '1', '105', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24801', 'onlineAdd', '添加新客服', '1', '104', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24800', 'onlineTitle', '客服列表', '1', '103', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24798', 'setskinOnline8', '居右时滚动位置', '1', '101', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24799', 'setskinOnline9', '固定于页面右边', '1', '102', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24797', 'setskinOnline7', '距离浏览器右边', '1', '100', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24794', 'setskinOnline4', '居左时滚动位置', '1', '97', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24795', 'setskinOnline5', '距离浏览器左边', '1', '98', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24796', 'setskinOnline6', '距离浏览器顶部', '1', '99', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24793', 'setskinOnline3', '居右随屏幕滚动', '1', '96', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24789', 'indexflashaddflash', '添加Banner', '1', '92', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24790', 'setskinOnline', '在线交流方式', '1', '93', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24791', 'setskinOnline1', '固定于页面左边', '1', '94', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24792', 'setskinOnline2', '居左随屏幕滚动', '1', '95', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24788', 'indexflashaddimg', '添加图片', '1', '91', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24787', 'indexflashexplain9', '请在前面加 http://', '1', '90', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24786', 'indexflashexplain7', '对应栏目的Banner模式', '1', '89', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24785', 'indexflashexplain6', '暂时没有设置Banner的栏目，请设置后再编辑。', '1', '88', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24784', 'indexflashexplain5', '一般不用设置', '1', '87', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24782', 'indexflashexplain3', '对应栏目的Banner尺寸', '1', '85', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24783', 'indexflashexplain4', '图片轮播展示方式的1和3不支持PNG图片', '1', '86', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24781', 'indexflashexplain2', '跳转到Banner设置', '1', '84', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24780', 'indexflashexplain1', 'Banner一般位于网站导航下方，可以每个栏目显示不同的Banner，也可以统一设置', '1', '83', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24779', 'flashmodify1', '中修改', '1', '82', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24778', 'flashmodify', '请在', '1', '81', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24777', 'flashGlobal', '默认设置', '1', '80', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24774', 'flashMode2', 'Flash动画', '1', '77', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24775', 'flashMode3', '全部图片', '1', '78', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24776', 'flashHome', '网站首页', '1', '79', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24772', 'flashMode', '展示方式', '1', '75', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24773', 'flashMode1', '图片轮播', '1', '76', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24771', 'setflashcolumn', '应用栏目', '1', '74', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24770', 'setflashimgtext', '样式', '1', '73', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24769', 'setflashimg', '图片轮播样式', '1', '72', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24768', 'setflashset', 'FLASH 配置', '1', '71', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24765', 'setflashImgHref', '链接地址', '1', '68', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24766', 'setflashUrl', '图片/Flash地址', '1', '69', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24767', 'setflashBg', 'Flash背景', '1', '70', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24763', 'setflashHeight', '高', '1', '66', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24764', 'setflashImgUrl', '图片地址', '1', '67', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24762', 'setflashPixel', '像素', '1', '65', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24761', 'setflashWidth', '宽', '1', '64', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24760', 'setflashSize', 'Banner尺寸', '1', '63', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24756', 'indexsetskin', '首页风格', '1', '59', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24757', 'setflashBelong', '所属栏目', '1', '60', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24758', 'setflashName', '图片标题', '1', '61', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24759', 'setflashMode3', '单张图片', '1', '62', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24753', 'indexsetImgLink', '图片链接显示数', '1', '56', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24755', 'indexsetIntroduce', '首页简介内容', '1', '58', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24754', 'indexsetWordLink', '文字链接显示数', '1', '57', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24752', 'indexsetFriendly', '友情链接', '1', '55', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24749', 'printpage', '打印此页', '1', '52', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24750', 'closebutton', '关闭按钮', '1', '53', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24751', 'indexsetnum', '显示数', '1', '54', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24748', 'skinunder', '下', '1', '51', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24746', 'skinindexno', '隐藏', '1', '49', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24747', 'skinindexexplain1', '从4.0版本升级到5.0的用户，设置为隐藏后，如发现前台对应位置出现多余的竖线，请到官网重新下载对应模板。', '1', '50', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24745', 'skinindexok', '显示', '1', '48', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24744', 'skinindex', '设为首页和收藏本站', '1', '47', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24743', 'skinsetup', '模板设置', '1', '46', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24742', 'skinnumber', '编号', '1', '45', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24740', 'skinstyle', '风格', '1', '43', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24741', 'skindescription', '描述', '1', '44', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24737', 'skinusenow', '启用', '1', '40', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24738', 'skinused', '已启用', '1', '41', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24739', 'skininfo', '信息', '1', '42', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24736', 'skinuse', '立即启用', '1', '39', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24735', 'skinmore', '获取更多模板风格', '1', '38', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24734', 'skinexplain2', '前台将更换为该风格', '1', '37', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24731', 'skintemplatedescription', '模板描述', '1', '34', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24732', 'skinup', '模板上传', '1', '35', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24733', 'skinexplain1', '上传后记得点保存，仅支持zip格式', '1', '36', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24730', 'skintemplatename', '模板名称', '1', '33', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24729', 'skintypeset', '模板设置', '1', '32', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24728', 'skinbaseset', '基本设置', '1', '31', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24727', 'skinset', '参数设置', '1', '30', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24723', 'skinAddNew', '添加新模板', '1', '26', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24724', 'skinname', '风格名称', '1', '27', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24725', 'skinadd', '风格添加', '1', '28', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24726', 'skinaddinfo1', '浏览上传后会自动获取文件夹名称(手动上传需传至系统根目录下的templates文件夹中)', '1', '29', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24719', 'setequivalentcolumns', '当前栏目', '1', '22', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24722', 'skinIntroduce', '风格描述', '1', '25', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24721', 'skinDocument', '文件夹名称', '1', '24', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24720', 'setskincontentxian', '页脚显示', '1', '23', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24718', 'settopcolumns', '一级栏目', '1', '21', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24717', 'setpnorder', '上一条下一条翻页范围', '1', '20', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24716', 'infoNoTem', '该模板没有相关的配置说明！', '1', '19', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24715', 'setskinimgdetail', '展示图片风格', '1', '18', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24714', 'setskinproduct2', '显示当前栏目下级栏目列表', '1', '17', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24713', 'setskinproduct1', '显示栏目下所有信息列表', '1', '16', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24712', 'setskinpage', '翻页样式', '1', '15', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24711', 'setskindatecontent', '时间显示格式', '1', '14', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24710', 'setskindatelist', '时间显示格式', '1', '13', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24707', 'setskinhot1', '点击次数超过', '1', '10', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24709', 'setskinhot3', '（需要前台模板支持）', '1', '12', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24708', 'setskinhot2', '次被点击的信息显示', '1', '11', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24706', 'setskinhot', '热门信息', '1', '9', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24705', 'setskinnews3', '（需要前台模板支持）', '1', '8', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24700', 'setskinNumOfPage', '每页显示', '1', '3', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24701', 'setskinDefault', '默认风格', '1', '4', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24702', 'setskinnews', '最新信息', '1', '5', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24703', 'setskinnews1', '最近', '1', '6', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24704', 'setskinnews2', '天内发表的信息显示', '1', '7', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24698', 'setskinAdd', '添加模板', '1', '1', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24699', 'setskinListPage', '列表页', '1', '2', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('24697', 'interfacestyle', '界面风格', '1', '2', '0', '0', 'cn');
INSERT INTO `met_language` VALUES ('24696', 'langtips2', '点击切换到网站语言：', '1', '428', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24692', 'automatic_upgrade', '漏洞自动修复', '1', '424', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24693', 'authTip14', '服务器验证失败', '1', '425', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24694', 'shortcut', '设置常用功能', '1', '426', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24695', 'langtips1', '当前后台管理的网站语言：', '1', '427', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24690', 'setbasicTip13', '默认邮箱服务方式为TLS（咨询空间商获得）<br />如果使用TLS方式25端口无法发送邮件，请尝试使用SSL方式465端口发件', '1', '422', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24691', 'automatic_upgrade_mark', '开启后如果有漏洞补丁或BUG补丁发布，程序会自动下载并修复', '1', '423', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24688', 'setbasicSMTPWay', '发送方式', '1', '420', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24689', 'setbasicTip12', '用于邮件发送端口（咨询邮箱服务商获得，TLS一般为25，SSL一般为465）', '1', '421', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24686', 'about', '关于我们', '1', '418', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24687', 'setbasicSMTPPort', '发送端口', '1', '419', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24683', 'temexists2', '该风格正在被使用，请先切换至其它风格后再删除！', '1', '415', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24685', 'metadmintext1', '您修改了缩略图尺寸，为了防止以前上传的图片变形，请到内容管理-批量操作-批量缩略图，重新生成缩略图。', '1', '417', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24684', 'fileerr1', '打开配置文件失败！不存在该文件或者没有可写的权限', '1', '416', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24682', 'temexists1', '已经存在该风格', '1', '414', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24681', 'password30', '请确保后台邮箱服务器设置正确', '1', '413', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24680', 'password29', '用电子邮箱找回', '1', '412', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24679', 'password28', '短信资费说明', '1', '411', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24678', 'password27', '用手机号码找回', '1', '410', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24676', 'password25', '新密码：', '1', '408', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24677', 'password26', '再输入：', '1', '409', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24671', 'password20', '下一步', '1', '403', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24672', 'password21', '返回登录', '1', '404', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24673', 'password22', '手机号码', '1', '405', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24674', 'password23', '请输入校验码(6位数字)：', '1', '406', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24675', 'password24', '用户名：', '1', '407', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24668', 'password17', '校验码错误次数太多，请重新验证！', '1', '400', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24669', 'password18', '校验码错误，请重试！', '1', '401', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24670', 'password19', '数据错误，请重试！', '1', '402', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24667', 'password16', '验证成功！请设置您新的密码。', '1', '399', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24665', 'password14', '没有找到该用户的邮箱地址，请通过其它方式找回密码', '1', '397', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24666', 'password15', '请输入校验码', '1', '398', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24664', 'password13', '没有开启短信找回密码功能', '1', '396', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24663', 'password12', '经过网关时，网络通讯异常可能会造成短信丢失，或者您会延时收到短信，请您耐心等待一下或稍后再试一下。', '1', '395', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24662', 'password11', '请输入您手机接受到的短信校验码，然后点下一步。', '1', '394', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24661', 'password10', '序号', '1', '393', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24659', 'password8', '没有找到对应该手机的用户，请通过其它方式找回密码', '1', '391', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24660', 'password9', '您请求重新设置密码，效验码', '1', '392', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24658', 'password7', '没有找到该用户', '1', '390', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24657', 'password6', '没有找到该用户的手机号码，请通过其它方式找回密码', '1', '389', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24656', 'password5', '请输入您的用户名或电子邮箱地址：', '1', '388', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24655', 'password4', '请输入您的用户名或电子邮箱地址。您会收到一封包含创建新密码链接的电子邮件。', '1', '387', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24654', 'password3', '请输入您的用户名或手机号码：', '1', '386', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24653', 'password2', '请输入您的用户名或手机号码，然后点下一步，您会收到一个短信校验码。', '1', '385', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24652', 'password1', '请选择找回密码的方式：', '1', '384', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24651', 'lang64', '中文(简体)', '1', '383', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24649', 'lang62', '越南语', '1', '381', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24650', 'lang63', '中文(繁体)', '1', '382', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24648', 'lang61', '英语', '1', '380', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24647', 'lang60', '印尼语', '1', '379', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24646', 'lang59', '乌尔都语', '1', '378', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24645', 'lang58', '印度的泰米尔语', '1', '377', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24644', 'lang57', '印度的泰卢固语', '1', '376', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24643', 'lang56', '印度的卡纳达语', '1', '375', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24642', 'lang55', '印地语', '1', '374', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24641', 'lang54', '意第绪语', '1', '373', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24640', 'lang53', '意大利语', '1', '372', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24639', 'lang52', '亚美尼亚语', '1', '371', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24635', 'lang48', '希腊语', '1', '367', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24636', 'lang49', '西班牙的巴斯克语', '1', '368', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24637', 'lang50', '西班牙语', '1', '369', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24638', 'lang51', '匈牙利语', '1', '370', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24634', 'lang47', '希伯来语', '1', '366', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24633', 'lang46', '乌克兰语', '1', '365', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24632', 'lang45', '威尔士语', '1', '364', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24630', 'lang43', '泰语', '1', '362', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24631', 'lang44', '土耳其语', '1', '363', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24629', 'lang42', '斯瓦希里语', '1', '361', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24624', 'lang37', '日语', '1', '356', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24625', 'lang38', '瑞典语', '1', '357', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24626', 'lang39', '塞尔维亚语', '1', '358', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24627', 'lang40', '斯洛伐克语', '1', '359', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24628', 'lang41', '斯洛文尼亚语', '1', '360', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24623', 'lang36', '葡萄牙语', '1', '355', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24622', 'lang35', '挪威语', '1', '354', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24621', 'lang34', '孟加拉语', '1', '353', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24620', 'lang33', '马其顿语', '1', '352', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24619', 'lang32', '马来语', '1', '351', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24618', 'lang31', '马耳他语', '1', '350', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24617', 'lang30', '罗马尼亚语', '1', '349', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24616', 'lang29', '立陶宛语', '1', '348', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24615', 'lang28', '拉脱维亚语', '1', '347', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24614', 'lang27', '拉丁语', '1', '346', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24613', 'lang26', '克罗地亚语', '1', '345', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24612', 'lang25', '捷克语', '1', '344', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24611', 'lang24', '加泰罗尼亚语', '1', '343', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24610', 'lang23', '加利西亚语', '1', '342', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24609', 'lang22', '荷兰语', '1', '341', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24608', 'lang21', '韩语', '1', '340', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24607', 'lang20', '海地克里奥尔语', '1', '339', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24606', 'lang19', '古吉拉特语', '1', '338', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24605', 'lang18', '格鲁吉亚语', '1', '337', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24604', 'lang17', '芬兰语', '1', '336', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24603', 'lang16', '菲律宾语', '1', '335', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24601', 'lang14', '俄语', '1', '333', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24598', 'lang11', '布尔语(南非荷兰语)', '1', '330', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24602', 'lang15', '法语', '1', '334', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24599', 'lang12', '丹麦语', '1', '331', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24600', 'lang13', '德语', '1', '332', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24590', 'lang3', '阿塞拜疆语', '1', '322', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24591', 'lang4', '爱尔兰语', '1', '323', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24592', 'lang5', '爱沙尼亚语', '1', '324', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24593', 'lang6', '白俄罗斯语', '1', '325', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24594', 'lang7', '保加利亚语', '1', '326', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24595', 'lang8', '冰岛语', '1', '327', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24596', 'lang9', '波兰语', '1', '328', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24597', 'lang10', '波斯语', '1', '329', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24589', 'lang2', '阿拉伯语', '1', '321', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24588', 'lang1', '阿尔巴尼亚语', '1', '320', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24586', 'langselect', '选择语言', '1', '318', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24587', 'langselect1', '请选择语言', '1', '319', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24583', 'langadminadd', '后台语言添加', '1', '315', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24584', 'langwebmanage', '网站语言', '1', '316', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24585', 'langadminmanage', '后台语言', '1', '317', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24582', 'langwebadd', '网站语言添加', '1', '314', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24580', 'langexplain11', '同步官方语言包，将会覆盖当前语言数据，是否继续', '1', '312', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24581', 'langexplain12', '该语言已经被关闭，请开启后再设置默认语言。', '1', '313', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24579', 'langexplain10', '未指定同步语言！', '1', '311', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24577', 'langexplain8', '在线下载已翻译的语言包，本地语言则复制已添加语言的语言包', '1', '309', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24578', 'langexplain9', '不同步', '1', '310', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24576', 'langexplain7', '从服务器远程下载基础语言包，基础语言仅包含翻译过的前台部分文字信息。', '1', '308', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24575', 'langexplain6', '本地语言', '1', '307', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24574', 'langexplain5', '在线下载', '1', '306', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24573', 'langexplain4', '将复制已经有的语言的基础语言包，比如复制英文，则新语言的前台部分文字会是英文。', '1', '305', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24572', 'langexplain3', '基础语言包', '1', '304', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24571', 'langexplain2', '语言标识', '1', '303', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24570', 'langexplain1', '对应前台网站页面部分文字，注意不要加特殊符号，点击底部保存按钮后生效。(参数名：值)', '1', '302', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24569', 'upfiletips43', '检测更新', '1', '301', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24568', 'upfiletips42', '在线升级', '1', '300', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24567', 'upfiletips41', '环境', '1', '299', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24566', 'upfiletips40', '简称', '1', '298', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24558', 'upfiletips32', '交流论坛', '1', '290', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24559', 'upfiletips33', '专用主机', '1', '291', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24560', 'upfiletips34', '收费模板', '1', '292', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24561', 'upfiletips35', '商业授权', '1', '293', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24562', 'upfiletips36', '定制开发', '1', '294', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24563', 'upfiletips37', '新闻', '1', '295', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24564', 'upfiletips38', '服务器信息', '1', '296', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24565', 'upfiletips39', '程序名称', '1', '297', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24554', 'upfiletips28', '显示在需要支付一定的短信费用(可以在企业应用中在线充值)', '1', '286', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24557', 'upfiletips31', '服务与支持', '1', '289', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24556', 'upfiletips30', '访问概况', '1', '288', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24555', 'upfiletips29', '概况', '1', '287', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24553', 'upfiletips27', '短信密码找回', '1', '285', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24551', 'upfiletips25', '回收站', '1', '283', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24552', 'upfiletips26', '内容管理-回收站', '1', '284', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24550', 'upfiletips24', '前台的反馈、留言、友情链接和简历提交', '1', '282', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24546', 'upfiletips20', '拉伸', '1', '278', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24547', 'upfiletips21', '留白', '1', '279', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24548', 'upfiletips22', '裁减', '1', '280', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24549', 'upfiletips23', '生成方式', '1', '281', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24545', 'upfiletips19', '水印', '1', '277', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24544', 'upfiletips18', '缩略图', '1', '276', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24543', 'upfiletips17', '点击测试', '1', '275', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24542', 'upfiletips16', '发送测试', '1', '274', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24541', 'upfiletips15', '100字以内', '1', '273', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24540', 'upfiletips14', '网站描述', '1', '272', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24539', 'upfiletips13', '多个关键词请用竖线|隔开，建议3到4个关键词。', '1', '271', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24537', 'upfiletips11', '搜索引擎优化设置', '1', '269', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24538', 'upfiletips12', '网站关键词', '1', '270', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24536', 'upfiletips10', '建议填写检测到的网址：', '1', '268', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24532', 'upfiletips6', '录入', '1', '264', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24533', 'upfiletips7', '基本信息', '1', '265', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24534', 'upfiletips8', '邮箱设置', '1', '266', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24535', 'upfiletips9', '网站LOGO', '1', '267', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24531', 'upfiletips5', '商业授权查询', '1', '263', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24528', 'upfiletips2', '文件管理器', '1', '260', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24529', 'upfiletips3', '商业授权说明', '1', '261', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24530', 'upfiletips4', '商业授权录入', '1', '262', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24525', 'dataexplain11', '网站搬家', '1', '257', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24526', 'dataexplain12', '时需要用到整站压缩。', '1', '258', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24527', 'upfiletips1', '查看文件列表', '1', '259', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24523', 'dataexplain9', '上传文件夹一般不用备份', '1', '255', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24524', 'dataexplain10', '数据库备份', '1', '256', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24522', 'dataexplain8', '建议每月至少备份一次数据库', '1', '254', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24521', 'dataexplain7', '<span style=\"float:right;\">一般在搬家时用，占用较大空间</span>备份数据和文件（数据库、用户文件、程序文件）', '1', '253', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24520', 'dataexplain6', '<span style=\"float:right;\">一般不用备份，占用较大空间</span>备份用户上传的文件（图片、文档等）', '1', '252', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24519', 'dataexplain5', '<span style=\"float:right;\">建议每月备份，占用少量空间</span>备份数据（不含上传的文件）', '1', '251', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24518', 'dataexplain4', '正在备份，请耐心等待...', '1', '250', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24517', 'dataexplain3', '自定义备份数据', '1', '249', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24516', 'dataexplain2', '可以上传数据库备份文件，支持sql或zip', '1', '248', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24515', 'dataexplain1', '目前没有数据', '1', '247', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24513', 'databackup8', '压缩整站', '1', '245', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24514', 'databackup9', '暂时没有备份文件', '1', '246', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24512', 'databackup7', '全部备份', '1', '244', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24511', 'databackup6', '上传文件夹备份', '1', '243', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24507', 'databackup2', '恢复', '1', '239', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24508', 'databackup3', '下载', '1', '240', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24509', 'databackup4', '备份', '1', '241', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24510', 'databackup5', '自定义备份数据表', '1', '242', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24506', 'databackup1', '备份', '1', '238', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24501', 'setimgTopMid', '顶中', '1', '233', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24505', 'setimgmodule_tips', '缩略图一般显示在列表页或首页图片展示', '1', '237', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24504', 'setimgLeftMid', '左中', '1', '236', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24503', 'setimgLowMid', '底中', '1', '235', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24502', 'setimgRightMid', '右中', '1', '234', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24500', 'setimgLeftLow', '左下', '1', '232', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24499', 'setimgRightLow', '右下', '1', '231', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24498', 'setimgRightTop', '右上', '1', '230', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24497', 'setimgLeftTop', '左上', '1', '229', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24492', 'setimgGray2', '烟灰', '1', '224', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24493', 'setimgGray3', '深灰', '1', '225', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24494', 'setimgBlue2', '灰蓝', '1', '226', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24496', 'setimgMid', '中间', '1', '228', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24495', 'setimgPosition', '水印位置', '1', '227', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24491', 'setimgYellow2', '军黄', '1', '223', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24490', 'setimgYellow1', '桔黄', '1', '222', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24489', 'setimgRed5', '紫红', '1', '221', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24488', 'setimgRed4', '玫红', '1', '220', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24487', 'setimgRed3', '暗红', '1', '219', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24486', 'setimgBlue1', '淡蓝', '1', '218', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24485', 'setimgRed2', '砖红', '1', '217', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24484', 'setimgRed1', '综红', '1', '216', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24483', 'setimgGreen3', '翠绿', '1', '215', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24482', 'setimgGray1', '黄灰', '1', '214', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24471', 'setimgWhite', '白色', '1', '203', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24472', 'setimgBlack', '黑色', '1', '204', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24473', 'setimgRed', '红色', '1', '205', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24474', 'setimgYellow', '黄色', '1', '206', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24475', 'setimgGreen', '绿色', '1', '207', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24476', 'setimgOrange', '橙色', '1', '208', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24477', 'setimgPurple', '紫色', '1', '209', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24478', 'setimgBlue', '蓝色', '1', '210', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24479', 'setimgBrown', '褐色', '1', '211', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24480', 'setimgGreen1', '粉绿', '1', '212', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24481', 'setimgGreen2', '淡绿', '1', '213', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24470', 'setimgSelectColor', '选择颜色', '1', '202', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24467', 'setimgWordAngle', '水印文字角度', '1', '199', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24468', 'setimgTip5', '水平为0', '1', '200', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24469', 'setimgWordColor', '水印文字颜色', '1', '201', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24466', 'setimgTip4', '请将字体文件放到后台管理目录include/fonts/下', '1', '198', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24465', 'setimgWordFont', '水印文字字体', '1', '197', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24464', 'setimgWordSize2', '大图水印文字大小', '1', '196', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24461', 'setimgWord', '水印文字', '1', '193', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24462', 'setimgTip3', '不支持中文（中文水印需要下载中文字体才能支持）', '1', '194', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24463', 'setimgWordSize', '缩略图水印文字大小', '1', '195', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24457', 'setimgImgWatermark', '图片水印', '1', '189', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24458', 'setimgImg', '缩略图水印图片', '1', '190', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24459', 'setimgImg2', '大图水印图片', '1', '191', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24460', 'setimgTip2', '仅支持.gif|.png格式', '1', '192', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24455', 'setimgWatermarkType', '水印类型', '1', '187', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24456', 'setimgWordWatermark', '文字水印', '1', '188', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24454', 'setimgThumb', '缩略图片添加', '1', '186', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24452', 'setimgWatermark', '添加方式', '1', '184', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24453', 'setimgBigImg', '详细大图片添加', '1', '185', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24451', 'setimgrename2', '重命名文件名称有利于减少异常', '1', '183', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24449', 'setimgrename', '自动重命名', '1', '181', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24450', 'setimgrename1', '对上传的文件名自动进行重命名', '1', '182', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24445', 'setimgdeleteimg', '自动删除图片', '1', '177', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24446', 'setimgdeleteimg1', '开启后删除信息时将自动删除相应图片', '1', '178', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24448', 'setimgWaterok', '开启后添加大图时将自动生成缩略图', '1', '180', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24447', 'setimgWater', '自动生成', '1', '179', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24444', 'setimgHeight', '高', '1', '176', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24443', 'setimgPixel', '像素', '1', '175', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24442', 'setimgWidth', '宽', '1', '174', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24438', 'authTip12', '正在跳转....请稍后！', '1', '170', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24439', 'authTip13', '未购买商业授权', '1', '171', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24440', 'filemaxsize', '文件已超出网站限制的最大值', '1', '172', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24441', 'setimgSet', '网站图片设置', '1', '173', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24432', 'authTip6', '网站名称：', '1', '164', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24433', 'authTip7', '授权类型：', '1', '165', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24434', 'authTip8', '享有服务：', '1', '166', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24435', 'authTip9', '授权日期：', '1', '167', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24436', 'authTip10', '到期日期：', '1', '168', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24437', 'authTip11', '后台文件夹修改成功！', '1', '169', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24431', 'authTip5', '授权域名：', '1', '163', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24430', 'authTip4', '您使用的MetInfo企业网站管理系统为免费版，如您将其用于商业用途，请联系MetInfo官方进行授权，感谢您的使用！', '1', '162', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24429', 'authTip3', '您的域名没有经过MetInfo企业网站管理系统官方认证', '1', '161', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24428', 'authTip2', '您所输入的商业注册码与域名不匹配！', '1', '160', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24425', 'authDomain', '授权域名', '1', '157', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24426', 'authKey', '密钥', '1', '158', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24427', 'authAuthorizedCode', '授权码', '1', '159', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24423', 'authQuery', '域名授权查询', '1', '155', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24424', 'authSubmitQuery', '查询授权情况', '1', '156', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24417', 'authDetail', '查看详细', '1', '149', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24418', 'authGetLicense', '获取商业授权步骤', '1', '150', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24419', 'authGet1', '第一步、通过了解或试用后明确计划购买MetInfo企业网站系统商业授权', '1', '151', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24420', 'authGet2', '第二步、联系MetInfo或各地代理商获取最优化的授权方案，并缴纳费用', '1', '152', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24421', 'authGet3', '第三步、添加MetInfo技术支持QQ、MSN等，提交商业授权资料卡', '1', '153', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24422', 'authGet4', '第四步、使用官方提供的授权文件替换系统相关文件，并在此输入授权码和密钥', '1', '154', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24416', 'authDifferent4', '查看免费版与商业版的详细功能及服务对比', '1', '148', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24413', 'authDifferent1', '如您将程序用于商业用途，请购买商业授权，否则我们将保留追究法律责任的权利', '1', '145', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24415', 'authDifferent3', '免费版如去除【Powered by MetInfo】版权标识将不能正常运行！MetInfo官方并将追求相应的法律责任！', '1', '147', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24414', 'authDifferent2', '免费版仅限个人学习使用，功能没有任何限制，商业用户可以获取专业的技术支持服务', '1', '146', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24408', 'setfiletext2', '文件夹下共找到', '1', '140', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24409', 'setfiletext3', '个文件', '1', '141', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24410', 'setfiletext4', '文件夹及文件夹下的所有文件', '1', '142', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24411', 'authWelcome2', '买空间送授权促销活动', '1', '143', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24412', 'authDifferentLicense', '商业版和免费版区别', '1', '144', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24406', 'setfilenourl', '找不到相应的文件！', '1', '138', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24407', 'setfiletext1', 'upload为上传根目录，201103为以年月分类的图片文件夹，thumb为缩略图文件夹，watermark为水印大图文件夹', '1', '139', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24403', 'setfiletime', '上传时间', '1', '135', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24404', 'setfileview', '查看', '1', '136', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24399', 'setsafesq5text', '抱歉！该目录没有文件！', '1', '131', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('26826', 'indexonlieno', 'Cancel', '1', '121', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26816', 'onlinegreen', 'Green', '1', '111', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26817', 'onlinegray', 'gray', '1', '112', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26815', 'onlinepurple', 'purple', '1', '110', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26811', 'onlinetaobao', 'Messenger', '1', '106', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26812', 'onlinealibaba', 'Aliwangwang', '1', '107', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26813', 'onlineblue', 'blue', '1', '108', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26814', 'onlinered', 'pink', '1', '109', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26808', 'onlineTitle', 'Customer list', '1', '103', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26809', 'onlineAdd', 'Add New Customer', '1', '104', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26806', 'setskinOnline8', 'scroll position when the right home', '1', '101', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26810', 'onlineName', 'Customer name', '1', '105', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26807', 'setskinOnline9', 'fixed on the right side of the page', '1', '102', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26805', 'setskinOnline7', 'from the browser to the right', '1', '100', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26801', 'setskinOnline3', 'right home with the screen scrolling', '1', '96', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26802', 'setskinOnline4', 'scroll when left home position', '1', '97', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26803', 'setskinOnline5', 'from the browser to the left', '1', '98', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26804', 'setskinOnline6', 'from the top of the browser', '1', '99', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26800', 'setskinOnline2', 'left home with the screen scrolling', '1', '95', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26794', 'indexflashexplain7', 'Corresponding section of the Banner Mode', '1', '89', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26795', 'indexflashexplain9', 'please add in front http://', '1', '90', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26799', 'setskinOnline1', 'fixed on the left side of the page', '1', '94', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26798', 'setskinOnline', 'line of communication', '1', '93', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26797', 'indexflashaddflash', 'Add Banner', '1', '92', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26796', 'indexflashaddimg', 'Add Picture', '1', '91', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26789', 'indexflashexplain2', 'Jump to Banner set', '1', '84', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26790', 'indexflashexplain3', 'corresponding part of Banner size', '1', '85', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26791', 'indexflashexplain4', 'image carousel 1 and 3 display modes do not support PNG image', '1', '86', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26793', 'indexflashexplain6', 'no set Banner columns , set before editing.', '1', '88', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26792', 'indexflashexplain5', 'General not set', '1', '87', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26787', 'flashmodify1', 'the', '1', '82', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26788', 'indexflashexplain1', 'Banner generally located below the site navigation, you can display different each column Banner, you can set up a unified', '1', '83', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26784', 'flashHome', 'HOME', '1', '79', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26785', 'flashGlobal', 'default Settings', '1', '80', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26786', 'flashmodify', 'Please modify', '1', '81', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26783', 'flashMode3', 'All pictures', '1', '78', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26782', 'flashMode2', 'Flash animation', '1', '77', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26780', 'flashMode', 'show the way', '1', '75', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26781', 'flashMode1', 'image carousel', '1', '76', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26779', 'setflashcolumn', 'Applications section', '1', '74', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26778', 'setflashimgtext', 'Styles', '1', '73', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26777', 'setflashimg', 'image carousel style', '1', '72', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26776', 'setflashset', 'FLASH configuration', '1', '71', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26775', 'setflashBg', 'Flash background', '1', '70', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26774', 'setflashUrl', 'images / Flash address', '1', '69', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26773', 'setflashImgHref', 'link address', '1', '68', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26772', 'setflashImgUrl', 'Picture address', '1', '67', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26771', 'setflashHeight', 'High', '1', '66', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26770', 'setflashPixel', 'pixel', '1', '65', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26768', 'setflashSize', 'Banner size', '1', '63', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26769', 'setflashWidth', 'W', '1', '64', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26767', 'setflashMode3', 'single picture', '1', '62', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26765', 'setflashBelong', 'belongs to part', '1', '60', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26766', 'setflashName', 'image title', '1', '61', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26763', 'indexsetIntroduce', 'Home Introduction Contents', '1', '58', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26764', 'indexsetskin', 'Home style', '1', '59', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26762', 'indexsetWordLink', 'Text link display', '1', '57', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26761', 'indexsetImgLink', 'Picture Link Display', '1', '56', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26760', 'indexsetFriendly', 'Links', '1', '55', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26757', 'printpage', 'Print this page', '1', '52', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26758', 'closebutton', 'Close button', '1', '53', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26759', 'indexsetnum', 'Display', '1', '54', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26756', 'skinunder', 'Next', '1', '51', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26755', 'skinindexexplain1', '4.0 version upgrade to 5.0 users, after hiding from the set , as found from the reception appear superfluous vertical position , please go to the official website to re- download the corresponding template.', '1', '50', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26754', 'skinindexno', 'Hide', '1', '49', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26753', 'skinindexok', 'Display', '1', '48', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26752', 'skinindex', 'Home and Favorite', '1', '47', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26751', 'skinsetup', 'template Settings', '1', '46', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26748', 'skinstyle', 'style', '1', '43', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26749', 'skindescription', 'Description', '1', '44', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26750', 'skinnumber', 'NO', '1', '45', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26747', 'skininfo', 'information', '1', '42', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26744', 'skinuse', 'Enable now', '1', '39', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26745', 'skinusenow', 'Enable', '1', '40', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26746', 'skinused', 'Enabled', '1', '41', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26742', 'skinexplain2', 'Front for the replacement style', '1', '37', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26743', 'skinmore', 'for more template style', '1', '38', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26741', 'skinexplain1', 'Upload after the save point to remember , only supports zip format', '1', '36', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26739', 'skintemplatedescription', 'template Description', '1', '34', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26740', 'skinup', 'templates upload', '1', '35', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26736', 'skinbaseset', 'Basic Settings', '1', '31', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26737', 'skintypeset', 'template Settings', '1', '32', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26738', 'skintemplatename', 'template Name', '1', '33', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26735', 'skinset', 'Preferences', '1', '30', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26733', 'skinadd', 'style Add', '1', '28', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26734', 'skinaddinfo1', 'after the browser will automatically get uploaded templates folder name ( required spread manually upload folders under the root directory of the system in )', '1', '29', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26730', 'skinIntroduce', 'Style Description', '1', '25', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26731', 'skinAddNew', 'add new templates', '1', '26', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26732', 'skinname', 'style name', '1', '27', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26728', 'setskincontentxian', 'Footer Display', '1', '23', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26729', 'skinDocument', 'Folder Name', '1', '24', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26727', 'setequivalentcolumns', 'Current section', '1', '22', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26725', 'setpnorder', 'Under a flip on a range of', '1', '20', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26726', 'settopcolumns', 'a part', '1', '21', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26724', 'infoNoTem', 'the template is not relevant configuration Help !', '1', '19', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26723', 'setskinimgdetail', 'Show Picture style', '1', '18', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26719', 'setskindatecontent', 'time Display format', '1', '14', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26720', 'setskinpage', 'flip style', '1', '15', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26721', 'setskinproduct1', 'Display a list of all the information under section', '1', '16', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26722', 'setskinproduct2', 'lower part shows the current list of columns', '1', '17', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26718', 'setskindatelist', 'Time display Format', '1', '13', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26717', 'setskinhot3', '( requires foreground template support )', '1', '12', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26716', 'setskinhot2', 'times it has been clicked the information display', '1', '11', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26715', 'setskinhot1', 'more clicks than', '1', '10', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26712', 'setskinnews2', 'days Show', '1', '7', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26713', 'setskinnews3', '( requires foreground template support )', '1', '8', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26714', 'setskinhot', 'Hot information', '1', '9', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26711', 'setskinnews1', 'recently published', '1', '6', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26710', 'setskinnews', 'info latest news', '1', '5', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26709', 'setskinDefault', 'default Style', '1', '4', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26708', 'setskinNumOfPage', 'page display', '1', '3', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26707', 'setskinListPage', 'list', '1', '2', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26706', 'setskinAdd', 'add template', '1', '1', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('26705', 'interfacestyle', 'interface style', '1', '2', '0', '0', 'en');
INSERT INTO `met_language` VALUES ('26704', 'langtips2', 'click to switch to the language :', '1', '428', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26702', 'shortcut', 'Set common functions', '1', '426', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26703', 'langtips1', 'Current management website language :', '1', '427', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26701', 'authTip14', 'server validation failed', '1', '425', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26699', 'automatic_upgrade_mark', 'after opening if there is BUG patches or patch is released , the program will automatically download and fix', '1', '423', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26700', 'automatic_upgrade', 'automatically fix vulnerabilities', '1', '424', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26698', 'setbasicTip13', 'The default mail service mode to TLS (consulting space business get) <br /> If you are using TLS mode 25 port can not send mail, please try using SSL port 465 Outgoing way', '1', '422', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26697', 'setbasicTip12', 'for mail delivery port ( consulting mail service providers to obtain , TLS is 25 , SSL is 465)', '1', '421', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26693', 'metadmintext1', 'you modify the thumbnail size , in order to prevent deformation of the picture before uploading , please content management - bulk operations - batch thumbnails, re- generate thumbnails .', '1', '417', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26694', 'about', 'About Us', '1', '418', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26695', 'setbasicSMTPPort', 'Send port', '1', '419', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26696', 'setbasicSMTPWay', 'Send', '1', '420', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26692', 'fileerr1', 'To open the configuration file failed ! The document does not writable permissions or does not exist', '1', '416', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26691', 'temexists2', 'the style is being used , switch to another style then delete !', '1', '415', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26690', 'temexists1', 'already exists in the style', '1', '414', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26689', 'password30', 'Make sure that the mail server is set back right', '1', '413', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26681', 'password22', 'Mobile Number', '1', '405', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26682', 'password23', 'Please enter the verification code ( 6 digits ) :', '1', '406', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26683', 'password24', 'Username:', '1', '407', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26684', 'password25', 'new Password:', '1', '408', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26685', 'password26', 'then enter :', '1', '409', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26686', 'password27', 'using a mobile phone number to retrieve', '1', '410', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26687', 'password28', 'SMS tariff description', '1', '411', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26688', 'password29', 'by e -mail to retrieve', '1', '412', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26675', 'password16', 'authentication is successful ! Please set your new password.', '1', '399', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26676', 'password17', 'Checksum error too many times , please re- verify !', '1', '400', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26677', 'password18', 'Checksum error , please try again !', '1', '401', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26680', 'password21', 'Return to login', '1', '404', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26679', 'password20', 'Next', '1', '403', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26678', 'password19', 'Data error , please try again !', '1', '402', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26674', 'password15', 'Please enter the verification code', '1', '398', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26673', 'password14', 'did not find the user\'s e-mail address , please recover the password through other means', '1', '397', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26672', 'password13', 'Retrieve password feature is not turned on SMS', '1', '396', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26671', 'password12', 'Passes through the gateway, network communication error message may cause the loss , delay or you will receive a text message , please be patient or try again later .', '1', '395', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26666', 'password7', 'by other means that the user is not found', '1', '390', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26670', 'password11', 'enter your phone receives a text message checksum , and then click Next.', '1', '394', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26669', 'password10', 'nO', '1', '393', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26668', 'password9', 'retrieve your password reset request , tested code', '1', '392', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26667', 'password8', 'not found to be a user of the phone, through other ways , please password', '1', '391', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26665', 'password6', 'did not find the user\'s phone number, please Retrieve Password', '1', '389', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26664', 'password5', 'Please enter your username or e-mail address :', '1', '388', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26663', 'password4', 'Please enter your username or e -mail address. You will receive an email containing a link to create a new password by email.', '1', '387', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26662', 'password3', 'Please enter your user name or phone number :', '1', '386', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26661', 'password2', 'Please enter your user name or phone number, and then click Next, you will receive a text message checksum .', '1', '385', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26660', 'password1', 'Please select retrieve Password ways :', '1', '384', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26659', 'lang64', 'Chinese ( Simplified )', '1', '383', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26658', 'lang63', 'Chinese ( Traditional )', '1', '382', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26657', 'lang62', 'Vietnamese', '1', '381', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26652', 'lang57', 'India Telugu', '1', '376', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26653', 'lang58', 'Tamil India', '1', '377', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26654', 'lang59', 'Urdu', '1', '378', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26655', 'lang60', 'Indonesian', '1', '379', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26656', 'lang61', 'English', '1', '380', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26651', 'lang56', 'India Kannada', '1', '375', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26649', 'lang54', 'Yiddish', '1', '373', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26650', 'lang55', 'Hindi', '1', '374', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26646', 'lang51', 'Hungarian', '1', '370', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26647', 'lang52', 'Armenian', '1', '371', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26648', 'lang53', 'Italian', '1', '372', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26644', 'lang49', 'Spanish Basque', '1', '368', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26645', 'lang50', 'Spanish', '1', '369', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26640', 'lang45', 'Welsh', '1', '364', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26641', 'lang46', 'Ukrainian', '1', '365', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26642', 'lang47', 'Hebrew', '1', '366', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26643', 'lang48', 'Greek', '1', '367', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26639', 'lang44', 'Turkish', '1', '363', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26638', 'lang43', 'Thai', '1', '362', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26637', 'lang42', 'Swahili', '1', '361', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26631', 'lang36', 'Portuguese', '1', '355', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26632', 'lang37', 'Japanese', '1', '356', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26633', 'lang38', 'Swedish', '1', '357', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26634', 'lang39', 'Serbian', '1', '358', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26635', 'lang40', 'Slovak', '1', '359', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26636', 'lang41', 'Slovenian', '1', '360', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26628', 'lang33', 'Macedonian', '1', '352', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26629', 'lang34', 'Bengali', '1', '353', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26630', 'lang35', 'Norwegian', '1', '354', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26626', 'lang31', 'Maltese', '1', '350', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26627', 'lang32', 'Malay', '1', '351', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26622', 'lang27', 'latin', '1', '346', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26623', 'lang28', 'Latvian', '1', '347', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26624', 'lang29', 'Lithuanian', '1', '348', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26625', 'lang30', 'Romanian', '1', '349', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26621', 'lang26', 'Croatian', '1', '345', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26617', 'lang22', 'Dutch', '1', '341', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26618', 'lang23', 'Galician', '1', '342', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26619', 'lang24', 'Catalan', '1', '343', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26620', 'lang25', 'Czech', '1', '344', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26616', 'lang21', 'Korean', '1', '340', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26614', 'lang19', 'Gujarati', '1', '338', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26615', 'lang20', 'Haitian Creole', '1', '339', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26613', 'lang18', 'Georgian', '1', '337', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26612', 'lang17', 'Finnish', '1', '336', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26611', 'lang16', 'Filipino', '1', '335', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26609', 'lang14', 'russian', '1', '333', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26610', 'lang15', 'French', '1', '334', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26608', 'lang13', 'German', '1', '332', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26607', 'lang12', 'Danish', '1', '331', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26604', 'lang9', 'Polish', '1', '328', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26605', 'lang10', 'Bosnian', '1', '329', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26606', 'lang11', 'Boolean language ( Afrikaans )', '1', '330', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26600', 'lang5', 'Estonian', '1', '324', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26601', 'lang6', 'Belarusian', '1', '325', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26602', 'lang7', 'Bulgarian', '1', '326', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26603', 'lang8', 'Iceland language', '1', '327', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26597', 'lang2', 'Arabic', '1', '321', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26598', 'lang3', 'Azerbaijani', '1', '322', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26599', 'lang4', 'Irish', '1', '323', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26594', 'langselect', 'Select Language', '1', '318', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26595', 'langselect1', 'Select Language', '1', '319', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26596', 'lang1', 'Albanian', '1', '320', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26592', 'langwebmanage', 'Site Language', '1', '316', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26593', 'langadminmanage', 'Background Language', '1', '317', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26588', 'langexplain11', 'Sync official language packs will overwrite the current language data , whether to continue', '1', '312', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26590', 'langwebadd', 'Site language Add', '1', '314', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26591', 'langadminadd', 'Background language Add', '1', '315', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26589', 'langexplain12', 'The language has been shut down , turn and then set the default language.', '1', '313', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26586', 'langexplain9', 'unsynchronized', '1', '310', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26587', 'langexplain10', 'Sync language unspecified !', '1', '311', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26585', 'langexplain8', 'Online download translated language pack , then copy the local language has been added language language pack', '1', '309', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26583', 'langexplain6', 'Local Language', '1', '307', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26584', 'langexplain7', 'from a remote server to download the language pack basic , basic language contains front part of the text translated information only.', '1', '308', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26582', 'langexplain5', 'Online Download', '1', '306', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26581', 'langexplain4', 'to copy the language pack has been the basis of some languages, such as English copy , the reception part of the text will be a new language in English.', '1', '305', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26580', 'langexplain3', 'Basic Language Pack', '1', '304', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26579', 'langexplain2', 'Language logo', '1', '303', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26578', 'langexplain1', 'Front Web page corresponding part of the text , be careful not to add special symbol , click on the Save button at the bottom of the entry into force . ( Parameter name: value )', '1', '302', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26577', 'upfiletips43', 'check for updates', '1', '301', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26576', 'upfiletips42', 'online Upgrade', '1', '300', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26575', 'upfiletips41', 'Environment', '1', '299', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26574', 'upfiletips40', 'abbreviated', '1', '298', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26573', 'upfiletips39', 'program name', '1', '297', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26572', 'upfiletips38', 'server Information', '1', '296', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26571', 'upfiletips37', 'News', '1', '295', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26570', 'upfiletips36', 'custom Development', '1', '294', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26569', 'upfiletips35', 'commercial license', '1', '293', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26568', 'upfiletips34', 'Pay template', '1', '292', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26567', 'upfiletips33', 'dedicated Hosting', '1', '291', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26566', 'upfiletips32', 'Forum', '1', '290', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26565', 'upfiletips31', 'service and Support', '1', '289', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26564', 'upfiletips30', 'access Profile', '1', '288', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26563', 'upfiletips29', 'Overview', '1', '287', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26562', 'upfiletips28', 'is displayed in the message needs to pay a fee ( online recharge in enterprise applications )', '1', '286', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26561', 'upfiletips27', 'SMS password recovery', '1', '285', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26560', 'upfiletips26', 'content Management - Trash', '1', '284', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26559', 'upfiletips25', 'Trash', '1', '283', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26554', 'upfiletips20', 'drawing', '1', '278', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26555', 'upfiletips21', 'blank', '1', '279', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26556', 'upfiletips22', 'cut', '1', '280', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26557', 'upfiletips23', 'Generate way', '1', '281', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26558', 'upfiletips24', 'Feedback reception of messages , links and resume submission', '1', '282', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26546', 'upfiletips12', 'website Keywords', '1', '270', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26553', 'upfiletips19', 'Watermark', '1', '277', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26552', 'upfiletips18', 'Thumbnails', '1', '276', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26551', 'upfiletips17', 'Click Test', '1', '275', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26550', 'upfiletips16', 'Send test', '1', '274', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26549', 'upfiletips15', '100 words', '1', '273', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26548', 'upfiletips14', 'Within the website description', '1', '272', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26547', 'upfiletips13', 'more keywords , please use the vertical bar | separated recommended 3-4 keywords.', '1', '271', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26545', 'upfiletips11', 'SEO settings', '1', '269', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26544', 'upfiletips10', 'recommended to fill the detected URL:', '1', '268', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26543', 'upfiletips9', 'Site LOGO', '1', '267', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26542', 'upfiletips8', 'mailbox Settings', '1', '266', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26541', 'upfiletips7', 'basic Information', '1', '265', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26540', 'upfiletips6', 'Entry', '1', '264', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26531', 'dataexplain9', 'upload files generally do not have a backup folder', '1', '255', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26532', 'dataexplain10', 'database Backup', '1', '256', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26533', 'dataexplain11', 'website Movers', '1', '257', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26534', 'dataexplain12', 'when you need to use the whole point of compression.', '1', '258', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26535', 'upfiletips1', 'View File List', '1', '259', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26536', 'upfiletips2', 'File Manager', '1', '260', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26537', 'upfiletips3', 'Business License Information', '1', '261', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26538', 'upfiletips4', 'Business authorize entry', '1', '262', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26539', 'upfiletips5', 'commercial license inquiries', '1', '263', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26530', 'dataexplain8', 'recommended at least once a month to back up the database', '1', '254', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26528', 'dataexplain6', '<span style=\"float:right;\"> generally do not have a backup , occupy a larger space < file / span> backup users to upload (images, documents, etc. )', '1', '252', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26529', 'dataexplain7', '<span style = \"float: right; \"> typically used when moving , taking up more space </ span> backup data and files ( database, user files, program files )', '1', '253', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26525', 'dataexplain3', 'custom Backup data', '1', '249', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26526', 'dataexplain4', 'being backed up , please wait ...', '1', '250', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26527', 'dataexplain5', '<span style=\"float:right;\"> recommended monthly backups , take a small amount of space </ span> backup data ( not including file upload )', '1', '251', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26520', 'databackup7', 'Full backup', '1', '244', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26521', 'databackup8', 'compress the entire station', '1', '245', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26522', 'databackup9', 'no backup files', '1', '246', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26523', 'dataexplain1', 'There is no data', '1', '247', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26524', 'dataexplain2', 'database Backup files can be uploaded to support sql or zip', '1', '248', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26518', 'databackup5', 'Custom backup data sheet', '1', '242', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26519', 'databackup6', 'Upload folder Backup', '1', '243', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26517', 'databackup4', 'Backup', '1', '241', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26516', 'databackup3', 'Download', '1', '240', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26515', 'databackup2', 'resume', '1', '239', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26514', 'databackup1', 'Backup', '1', '238', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26513', 'setimgmodule_tips', 'thumbnails generally displayed in a list or Home page Photo Gallery', '1', '237', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26512', 'setimgLeftMid', 'left,', '1', '236', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26511', 'setimgLowMid', 'at the end of the', '1', '235', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26510', 'setimgRightMid', 'Right in the', '1', '234', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26509', 'setimgTopMid', 'top of the', '1', '233', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26507', 'setimgRightLow', 'right', '1', '231', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26508', 'setimgLeftLow', 'left', '1', '232', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26506', 'setimgRightTop', 'upper right', '1', '230', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26504', 'setimgMid', 'intermediate', '1', '228', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26505', 'setimgLeftTop', 'upper left', '1', '229', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26503', 'setimgPosition', 'watermark position', '1', '227', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26501', 'setimgGray3', 'dark gray', '1', '225', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26502', 'setimgBlue2', 'blue and gray', '1', '226', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26500', 'setimgGray2', 'ash', '1', '224', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26498', 'setimgYellow1', 'orange', '1', '222', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26499', 'setimgYellow2', 'Army Huang', '1', '223', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26497', 'setimgRed5', 'purple', '1', '221', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26496', 'setimgRed4', 'Rose', '1', '220', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26495', 'setimgRed3', 'dark', '1', '219', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26494', 'setimgBlue1', 'light blue', '1', '218', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26493', 'setimgRed2', 'brick red', '1', '217', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26492', 'setimgRed1', 'Comprehensive red', '1', '216', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26491', 'setimgGreen3', 'green', '1', '215', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26490', 'setimgGray1', 'yellow gray', '1', '214', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26489', 'setimgGreen2', 'light green', '1', '213', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26488', 'setimgGreen1', 'Fenlv', '1', '212', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26486', 'setimgBlue', 'blue', '1', '210', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26487', 'setimgBrown', 'brown', '1', '211', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26485', 'setimgPurple', 'purple', '1', '209', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26484', 'setimgOrange', 'orange', '1', '208', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26483', 'setimgGreen', 'Green', '1', '207', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26482', 'setimgYellow', 'yellow', '1', '206', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26481', 'setimgRed', 'red', '1', '205', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26480', 'setimgBlack', 'black', '1', '204', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26479', 'setimgWhite', 'white', '1', '203', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26478', 'setimgSelectColor', 'choose color', '1', '202', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26477', 'setimgWordColor', 'watermark text color', '1', '201', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26476', 'setimgTip5', 'level 0', '1', '200', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26475', 'setimgWordAngle', 'text watermark angle', '1', '199', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26473', 'setimgWordFont', 'watermark text font', '1', '197', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26474', 'setimgTip4', 'manage your font files into the directory include / fonts / down', '1', '198', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26472', 'setimgWordSize2', 'big picture watermark text Size', '1', '196', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26471', 'setimgWordSize', 'thumbnail watermark text size', '1', '195', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26467', 'setimgImg2', 'big Picture watermark pictures', '1', '191', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26468', 'setimgTip2', 'only support gif |.. png format', '1', '192', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26469', 'setimgWord', 'watermark text', '1', '193', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26470', 'setimgTip3', 'does not support Chinese ( Chinese watermark need to download Chinese fonts to support )', '1', '194', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26465', 'setimgImgWatermark', 'Picture watermark', '1', '189', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26466', 'setimgImg', 'thumbnails watermark image', '1', '190', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26460', 'setimgWatermark', 'Add method', '1', '184', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26461', 'setimgBigImg', 'more big picture added', '1', '185', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26462', 'setimgThumb', 'Add thumbnail sheet', '1', '186', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26463', 'setimgWatermarkType', 'watermark type', '1', '187', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26464', 'setimgWordWatermark', 'text watermark', '1', '188', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26457', 'setimgrename', 'automatic rename', '1', '181', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26458', 'setimgrename1', 'to automatically upload the file name the same name as the name of', '1', '182', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26459', 'setimgrename2', 'Rename the file name helps to reduce the abnormal', '1', '183', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26456', 'setimgWaterok', 'after opening will automatically generate thumbnails when you add a large image', '1', '180', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26455', 'setimgWater', 'automatic generation', '1', '179', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26454', 'setimgdeleteimg1', 'corresponding image will be automatically deleted when you delete the information after opening', '1', '178', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26453', 'setimgdeleteimg', 'Auto-delete pictures', '1', '177', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26452', 'setimgHeight', 'High', '1', '176', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26451', 'setimgPixel', 'Pixel', '1', '175', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26450', 'setimgWidth', 'W', '1', '174', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26449', 'setimgSet', 'Site Picture Settings', '1', '173', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26447', 'authTip13', 'Not buy a commercial license', '1', '171', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26444', 'authTip10', 'Expiry date:', '1', '168', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26445', 'authTip11', 'background folder successfully modified !', '1', '169', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26448', 'filemaxsize', 'file has exceeded the maximum limit website', '1', '172', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26446', 'authTip12', 'Is the jump .... Please wait !', '1', '170', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26443', 'authTip9', 'Authorization Date:', '1', '167', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26442', 'authTip8', 'enjoy the service :', '1', '166', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26441', 'authTip7', 'License Type:', '1', '165', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26440', 'authTip6', 'Site Name:', '1', '164', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26439', 'authTip5', 'Authorized Domain Name:', '1', '163', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26437', 'authTip3', 'Your domain name has not been officially MetInfo enterprise website management system certification', '1', '161', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26438', 'authTip4', 'MetInfo enterprise website management system you are using for the free version , if you use it for commercial purposes, please contact MetInfo official authorization , thank you for your use !', '1', '162', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26431', 'authQuery', 'domain authorization query', '1', '155', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26432', 'authSubmitQuery', 'check authorization', '1', '156', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26433', 'authDomain', 'authorized domain', '1', '157', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26434', 'authKey', 'key', '1', '158', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26435', 'authAuthorizedCode', 'authorization code', '1', '159', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26436', 'authTip2', 'Business registration code that you enter the domain name does not match !', '1', '160', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26430', 'authGet4', 'the fourth step , the use of official authority to replace system-related files and enter authorization code and key', '1', '154', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26429', 'authGet3', 'the third step is to add MetInfo technical support QQ, MSN , etc., submitted commercial license data card', '1', '153', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26428', 'authGet2', 'the second step, contact MetInfo or agents around to get the most optimal licensing program and pay the cost of', '1', '152', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26425', 'authDetail', 'View Details', '1', '149', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26426', 'authGetLicense', 'to get a commercial license step', '1', '150', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26427', 'authGet1', 'The first step , after a trial by a clear understanding or plan to purchase MetInfo enterprise website system commercial license', '1', '151', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26424', 'authDifferent4', 'View free version and a commercial version of a detailed comparison of features and services', '1', '148', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26421', 'authDifferent1', 'If you use the Program right to commercial use, please purchase a commercial license , otherwise we will retain legal liability', '1', '145', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26423', 'authDifferent3', 'Free version such as the removal ] [ Powered by MetInfo copyright logo will not run properly ! MetInfo official and pursue appropriate legal responsibility !', '1', '147', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26422', 'authDifferent2', 'free personal use only learning functions without any restrictions , business users can get professional technical support services', '1', '146', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26420', 'authDifferentLicense', 'Business Edition and free Edition difference', '1', '144', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26417', 'setfiletext3', 'files', '1', '141', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26418', 'setfiletext4', 'all folders and files under the folder', '1', '142', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26419', 'authWelcome2', 'buy space authorization to send promotional activities', '1', '143', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26416', 'setfiletext2', 'folder found', '1', '140', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26411', 'setfiletime', 'Update', '1', '135', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26412', 'setfileview', 'View', '1', '136', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26413', 'setfileno', 'No files in this folder !', '1', '137', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26414', 'setfilenourl', 'Can not find the appropriate file !', '1', '138', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26415', 'setfiletext1', 'upload to upload the root directory , 201103 years as to the classification of the Pictures folder , thumb folder as thumbnails , watermark watermark enlarge folder', '1', '139', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26409', 'setfiletype', 'Type', '1', '133', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26410', 'setfilesize', 'file size', '1', '134', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26402', 'setsafeadmin', 'Manage authentication code', '1', '126', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26403', 'setsafemember', 'Front submit verification code', '1', '127', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26401', 'setsafeupdate1', 'Delete can enhance the safety performance of the website', '1', '125', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26408', 'setfilename', 'File Name', '1', '132', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26407', 'setsafesq5text', 'Sorry ! The directory does not file !', '1', '131', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26406', 'setsafesq4text', 'directory', '1', '130', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26405', 'setsafesq3text', 'empty', '1', '129', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26404', 'setsafesq2text', 'click', '1', '128', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26399', 'setsafeinstall', 'Delete installation files', '1', '123', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26400', 'setsafeupdate', 'Remove the upgrade file', '1', '124', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26395', 'setsafeadminname1', 'safety recommendations :', '1', '119', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26396', 'setsafeadminname1a', 'Edit site background folder name ( default is admin);', '1', '120', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26398', 'setsafeadminname1c', 'only the founder can be modified , does not support the Chinese , the current background URL:', '1', '122', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26397', 'setsafeadminname1b', 'Delete section configuration management [ website ] part ;', '1', '121', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26392', 'lang_setdbArchiveNo', 'insufficient space to allocate memory resources , compression failure , please contact the space business to help compress ! ! !', '1', '116', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26394', 'setsafeadminname', 'Background Folder Name', '1', '118', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26393', 'setdbExtractOK', 'Decompression and recovery success', '1', '117', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26391', 'setdbArchiveOK', 'compression success', '1', '115', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26390', 'setdbNotExist', 'file does not exist', '1', '114', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26389', 'setdbDBRestoreOK', 'data recovery success', '1', '113', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26386', 'setdbDBFile', 'Database file', '1', '110', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26387', 'setdbImportOK', 'import was successful', '1', '111', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26388', 'setdbImportcen', ', is to restore the data ..', '1', '112', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26384', 'setdbWriteOK', 'write success !', '1', '108', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26385', 'setdbBackupOK', 'Database backup is complete !', '1', '109', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26382', 'setdbTip4', 'If the data file size exceeds the set point will be the new volume .', '1', '106', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('24405', 'setfileno', '此文件夹下没有文件！', '1', '137', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24402', 'setfilesize', '文件大小', '1', '134', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24401', 'setfiletype', '类型', '1', '133', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24400', 'setfilename', '文件名称', '1', '132', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24397', 'setsafesq3text', '清空', '1', '129', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24398', 'setsafesq4text', '目录', '1', '130', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24395', 'setsafemember', '前台提交验证码', '1', '127', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24396', 'setsafesq2text', '点击', '1', '128', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24394', 'setsafeadmin', '后台登录验证码', '1', '126', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24392', 'setsafeupdate', '删除升级文件', '1', '124', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24393', 'setsafeupdate1', '删除后可以增强网站的安全性能', '1', '125', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24391', 'setsafeinstall', '删除安装文件', '1', '123', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24388', 'setsafeadminname1a', '修改网站后台文件夹名称（默认为admin）;', '1', '120', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24389', 'setsafeadminname1b', '删除栏目配置中的【网站管理】栏目;', '1', '121', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24390', 'setsafeadminname1c', '仅创始人可修改，不支持中文，当前后台网址：', '1', '122', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24386', 'setsafeadminname', '后台文件夹名称', '1', '118', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24387', 'setsafeadminname1', '安全建议:', '1', '119', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24385', 'setdbExtractOK', '解压及恢复成功', '1', '117', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24384', 'lang_setdbArchiveNo', '空间分配内存资源不足，压缩失败，请联系空间商帮助压缩！！！', '1', '116', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24382', 'setdbNotExist', '文件不存在', '1', '114', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24383', 'setdbArchiveOK', '压缩成功', '1', '115', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24381', 'setdbDBRestoreOK', '数据恢复成功', '1', '113', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24380', 'setdbImportcen', '，正在恢复数据...', '1', '112', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24379', 'setdbImportOK', '导入成功', '1', '111', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24376', 'setdbWriteOK', '写入成功!', '1', '108', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24378', 'setdbDBFile', '数据库文件', '1', '110', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24377', 'setdbBackupOK', '数据库备份完毕!', '1', '109', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24375', 'setdbBackupFile', '备份文件', '1', '107', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24374', 'setdbTip4', '如果数据文件超出设置大小就会新建分卷。', '1', '106', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24372', 'setdbTip2', '数据无法备份到服务器!请检查', '1', '104', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24373', 'setdbTip3', '目录是否可写。', '1', '105', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24371', 'setdbSelectTable', '请选择要备份的数据表!', '1', '103', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24370', 'setdbDownload', '下载', '1', '102', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24369', 'setdbImportData', '导入', '1', '101', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24368', 'setdbLack', '缺少分卷', '1', '100', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24365', 'setdbFilesize', '文件大小', '1', '97', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24366', 'setdbTime', '备份时间', '1', '98', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24367', 'setdbNumber', '分卷数', '1', '99', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24364', 'setdbsysver', '系统版本', '1', '96', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24363', 'setdbFilename', '文件名', '1', '95', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24362', 'setdbStart', '开始备份数据', '1', '94', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24360', 'setdbAll', '共', '1', '92', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24361', 'setdbEveryoneSize', '分卷大小', '1', '93', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24358', 'setdbItems', '记录条数', '1', '90', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24359', 'setdbSize', '大小', '1', '91', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24357', 'setdbTable', '数据表', '1', '89', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24356', 'setdbImport', '导入备份数据', '1', '88', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24354', 'langshuom', '说明', '1', '86', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24355', 'setdbBackup', '数据与备份', '1', '87', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24353', 'langtype', '语言状态', '1', '85', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24351', 'langvalue', '值', '1', '83', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24352', 'langinfo', '注释', '1', '84', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24348', 'langnameorder', '不可以与其他语言排序重复', '1', '80', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24349', 'langnamerepeat', '语言标识不能重复', '1', '81', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24350', 'langone', '系统只有一种语言，不能被删除！', '1', '82', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24347', 'langclose2', '默认语言无法被关闭', '1', '79', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24346', 'langclose1', '只开启了一种语言，无法被关闭', '1', '78', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24345', 'langnamenull', '语言名称不能为空', '1', '77', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24342', 'langouturlinfo', '访问该域名程序将自动跳转到此语言（需先做好域名解析绑定），或者做外部链接用', '1', '74', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24344', 'langcopyfile', '复制文件失败，请检查文件是否存在', '1', '76', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24343', 'langnewwindows', '新窗口打开', '1', '75', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24341', 'langbasicinfo', '复制相应的后台语言文件', '1', '73', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24340', 'langbasic', '语言文件基于', '1', '72', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24339', 'langmarkinfo', '请用英文字母，如 cn ，不可以与其他语言标识重复', '1', '71', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24337', 'langurlinfo', '网站被访问时默认展示的网站语言', '1', '69', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24338', 'langorderinfo', '不可以重复', '1', '70', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24334', 'langadminyes', '管理员在登录前可以选择后台语言', '1', '66', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24335', 'langurl', '站群功能', '1', '67', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24336', 'langsw', '语言切换', '1', '68', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24331', 'langhome', '默认语言', '1', '63', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24332', 'langdefaultadmin', '后台默认语言', '1', '64', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24333', 'langadminok', '简繁切换', '1', '65', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24330', 'langchok', '一般以链接形式显示在前台右上角', '1', '62', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24329', 'langcnch', '简体中文或繁体中文语言标识', '1', '61', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24328', 'langch', '简繁体自动切换', '1', '60', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24327', 'langeadminditor', '后台语言参数', '1', '59', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24326', 'langwebeditor', '编辑参数', '1', '58', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24322', 'langmark', '语言标识', '1', '54', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24323', 'langouturl', '单独域名', '1', '55', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24324', 'langadmin', '后台语言', '1', '56', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24325', 'langpara', '参数修改', '1', '57', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24321', 'langflag', '国旗标志', '1', '53', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24320', 'langname', '语言名称', '1', '52', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24316', 'langtitle', '语言配置', '1', '48', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24319', 'langedit', '修改语言', '1', '51', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24318', 'langadd', '添加新语言', '1', '50', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24317', 'langweb', '网站语言', '1', '49', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24315', 'setbasicTip11', '用于发送邮件的邮箱密码', '1', '47', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24313', 'setbasicTip10', '如QQ邮箱为smtp.qq.com', '1', '45', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24314', 'setbasicSMTPPassword', '邮箱密码', '1', '46', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24312', 'setbasicSMTPServer', 'SMTP', '1', '44', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24311', 'setbasicTip8', '用于发送邮件的邮箱账号', '1', '43', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24310', 'setbasicEmailAccount', '邮箱账号', '1', '42', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24309', 'setbasicTip7', '所显示的发件人姓名', '1', '41', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24305', 'setbasictopic', '主题', '1', '37', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24306', 'setbasicmainbody', '正文', '1', '38', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24307', 'setbasicok', '发件成功', '1', '39', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24308', 'setbasicno', '发件失败', '1', '40', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24301', 'setbasicTip5', '多种格式请用“|”隔开', '1', '33', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24302', 'setbasicTip6', '发件箱设置（站内所有邮件均由此邮箱发送，如会员密码找回邮件等）', '1', '34', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24303', 'setbasicFromName', '发件人', '1', '35', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24304', 'setbasicToName', '收件人', '1', '36', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24300', 'setbasicEnableFormat', '允许上传的文件格式', '1', '32', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24299', 'setbasicUploadMax', '文件上传最大值', '1', '31', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24297', 'setbasicWebName', '网站名称', '1', '29', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24298', 'setbasicWebSite', '网站网址', '1', '30', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24294', 'metcmsnew1', '已是最新版本', '1', '26', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24295', 'metcmsnew2', '有新版本可以升级', '1', '27', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24296', 'setbasicWebInfoSet', '网站基本信息设置', '1', '28', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24291', 'metinfoversion', '系统版本', '1', '23', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24292', 'reserved', '版权所有', '1', '24', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24293', 'copyright', '长沙米拓信息技术有限公司（MetInfo Inc.）', '1', '25', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24290', 'sysadminlicense', '查看完整用户授权许可协议', '1', '22', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('26383', 'setdbBackupFile', 'Backup files', '1', '107', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26381', 'setdbTip3', 'directory is writable .', '1', '105', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26380', 'setdbTip2', 'Data can not be backed up to the server ! Please check', '1', '104', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26378', 'setdbDownload', 'Download', '1', '102', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26379', 'setdbSelectTable', 'select to backup data sheet !', '1', '103', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26377', 'setdbImportData', 'import', '1', '101', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26376', 'setdbLack', 'lack of volume', '1', '100', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26375', 'setdbNumber', 'sub- volumes', '1', '99', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26374', 'setdbTime', 'Backup time', '1', '98', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26373', 'setdbFilesize', 'file size', '1', '97', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26372', 'setdbsysver', 'system Version', '1', '96', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26369', 'setdbEveryoneSize', 'volume size', '1', '93', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26370', 'setdbStart', 'to start the backup data', '1', '94', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26371', 'setdbFilename', 'filename', '1', '95', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26366', 'setdbItems', 'number of records', '1', '90', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26367', 'setdbSize', 'size', '1', '91', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26368', 'setdbAll', 'of', '1', '92', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26365', 'setdbTable', 'Data Sheet', '1', '89', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26364', 'setdbImport', 'Import backup data', '1', '88', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26363', 'setdbBackup', 'Data Backup', '1', '87', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26359', 'langvalue', 'Value', '1', '83', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26360', 'langinfo', 'Notes', '1', '84', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26361', 'langtype', 'Language Status', '1', '85', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26362', 'langshuom', 'Help', '1', '86', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26357', 'langnamerepeat', 'Language logo not repeat', '1', '81', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26358', 'langone', 'System only one language , can not be deleted !', '1', '82', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26356', 'langnameorder', 'not duplicate other languages ​​Sort', '1', '80', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26355', 'langclose2', 'default language can not be turned off', '1', '79', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26354', 'langclose1', 'open only one language , can not be turned off', '1', '78', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26353', 'langnamenull', 'language name can not be empty', '1', '77', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26351', 'langnewwindows', 'Copy files using', '1', '75', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26352', 'langcopyfile', 'New window fails, check the file exists', '1', '76', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26349', 'langbasicinfo', 'Copy the appropriate language files background', '1', '73', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26350', 'langouturlinfo', 'to access the domain the program will automatically jump to this language ( DNS must first make binding ) , or make external links open', '1', '74', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26348', 'langbasic', 'language -based files', '1', '72', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26345', 'langurlinfo', 'Web site is accessed by default display language', '1', '69', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26346', 'langorderinfo', 'not repeat', '1', '70', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26347', 'langmarkinfo', 'Please use letters, such as cn, can not be repeated in other languages ​​logo', '1', '71', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26344', 'langsw', 'when language switching', '1', '68', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26343', 'langurl', 'station group function', '1', '67', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26342', 'langadminyes', 'administrator before you can log can select the background language', '1', '66', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26341', 'langadminok', 'Simplified switch', '1', '65', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26340', 'langdefaultadmin', 'background default language', '1', '64', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26339', 'langhome', 'default language', '1', '63', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26338', 'langchok', 'generally displayed as a link in the upper right foreground', '1', '62', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26336', 'langch', 'Simplified and Traditional automatically switch', '1', '60', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26337', 'langcnch', 'Simplified Chinese or Traditional Chinese language logo', '1', '61', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26334', 'langwebeditor', 'Edit parameters', '1', '58', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26335', 'langeadminditor', 'background language parameter', '1', '59', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26333', 'langpara', 'parameter modification', '1', '57', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26332', 'langadmin', 'background Language', '1', '56', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26331', 'langouturl', 'separate domain', '1', '55', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26330', 'langmark', 'Language logo', '1', '54', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26329', 'langflag', 'flag logo', '1', '53', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26328', 'langname', 'Language name', '1', '52', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26327', 'langedit', 'Change Language', '1', '51', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26326', 'langadd', 'add new languages ​​', '1', '50', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26325', 'langweb', 'site Language', '1', '49', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26324', 'langtitle', 'Language configuration', '1', '48', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26323', 'setbasicTip11', 'E-mail password for sending e-mail', '1', '47', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26322', 'setbasicSMTPPassword', 'E-mail password', '1', '46', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26321', 'setbasicTip10', 'such as QQ mailbox for smtp.qq.com', '1', '45', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26319', 'setbasicTip8', 'mail account used to send e-mail', '1', '43', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26320', 'setbasicSMTPServer', 'SMTP', '1', '44', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26317', 'setbasicTip7', 'displayed Name', '1', '41', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26318', 'setbasicEmailAccount', 'mail account', '1', '42', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26314', 'setbasicmainbody', 'Text', '1', '38', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26315', 'setbasicok', 'sent success', '1', '39', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26316', 'setbasicno', 'sent fail sender', '1', '40', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26313', 'setbasictopic', 'Themes', '1', '37', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26309', 'setbasicTip5', 'multiple formats , please use \"|\" separated', '1', '33', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26310', 'setbasicTip6', 'Outbox settings ( the station are thus all mail sent mail , as members of password recovery e-mail , etc.)', '1', '34', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26311', 'setbasicFromName', 'From', '1', '35', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26312', 'setbasicToName', 'recipient', '1', '36', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26305', 'setbasicWebName', 'site name', '1', '29', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26308', 'setbasicEnableFormat', 'allowed to upload the file format', '1', '32', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26307', 'setbasicUploadMax', 'file upload max', '1', '31', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26306', 'setbasicWebSite', 'website URL', '1', '30', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26303', 'metcmsnew2', 'A new version can upgrade', '1', '27', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26304', 'setbasicWebInfoSet', 'Site information set', '1', '28', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26302', 'metcmsnew1', 'Is up to date version', '1', '26', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26301', 'copyright', 'Long-Shami Extension Information Technology Co., Ltd. (MetInfo Inc.)', '1', '25', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26300', 'reserved', 'Copyright', '1', '24', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26299', 'metinfoversion', 'System version', '1', '23', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26298', 'sysadminlicense', 'View Full User License Agreement', '1', '22', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26297', 'sysadminAgreement3', 'Users without official authorization , any unpredictable consequences in the course of official does not assume any responsibility.', '1', '21', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26296', 'sysadminAgreement2', 'Without official authorization of users, make sure to keep the bottom of the site Powered by MetInfo words and links. <br/> official authorized only after removal of the front desk copyright information.', '1', '20', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26295', 'sysadminAgreement1', 'personal website permanently free and without restriction purposes. Before <br/> not commercial license MetInfo not be used for commercial purposes .', '1', '19', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26294', 'sysadminUseAgreement', 'use Agreement', '1', '18', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26293', 'sysadminHelp5', 'the fifth step in the optimization promotion : add website content in content management , information and other bottom', '1', '17', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26292', 'sysadminHelp4', 'step four : Set the static pages , SEO parameters and other information', '1', '16', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26290', 'sysadminHelp2', 'step Two : Choose a site template style interface style and set the parameters related to the style', '1', '14', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('24289', 'sysadminAgreement3', '未经官方授权的用户，在使用过程中出现任何不可预料的后果，官方不承担任何责任。', '1', '21', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24288', 'sysadminAgreement2', '未经官方授权的用户，请务必保留网站底部 Powered by MetInfo 的字样和链接。<br/>经过官方授权后方可去除前台版权信息。', '1', '20', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24286', 'sysadminUseAgreement', '使用协议', '1', '18', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24287', 'sysadminAgreement1', '个人网站永久免费且不限制用途。<br/>未获商业授权之前，不得将MetInfo用于商业用途。', '1', '19', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24284', 'sysadminHelp4', '第四步：在优化推广中设置静态页面、SEO参数及其他信息', '1', '16', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24285', 'sysadminHelp5', '第五步：在内容管理中添加网站内容、底部信息等', '1', '17', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24283', 'sysadminHelp3', '第三步：在栏目配置中设置网站导航栏目及相关参数', '1', '15', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24282', 'sysadminHelp2', '第二步：在界面风格中选择网站模板风格并设置相关风格参数', '1', '14', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24281', 'sysadminHelp1', '第一步：在系统设置中进行设置基本信息、语言设置、安全与效率等', '1', '13', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24280', 'sysadminHelp', '使用说明', '1', '12', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24278', 'sysadminDBVersion', 'Mysql版本', '1', '10', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24279', 'sysadminOfficialWebsite', '官方网站', '1', '11', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24277', 'sysadminLoginTime', '登录时间', '1', '9', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24276', 'sysadminLoginNum', '登录次数', '1', '8', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24274', 'sysadminUserInfo', '用户信息', '1', '6', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24275', 'sysadminUsername', '用户名', '1', '7', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24273', 'sysadminMember', '会员注册', '1', '5', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24272', 'sysadminFriendlyLink', '友情链接', '1', '4', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('26291', 'sysadminHelp3', 'third step : Set navigation in the column configuration topics and related parameters', '1', '15', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26289', 'sysadminHelp1', 'Step one: in the system settings set basic information, language settings , security and efficiency', '1', '13', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26288', 'sysadminHelp', 'instructions', '1', '12', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26287', 'sysadminOfficialWebsite', 'official Website', '1', '11', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26286', 'sysadminDBVersion', 'Mysql version', '1', '10', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26285', 'sysadminLoginTime', 'Login Time', '1', '9', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26284', 'sysadminLoginNum', 'logins', '1', '8', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26283', 'sysadminUsername', 'user Name', '1', '7', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26282', 'sysadminUserInfo', 'User Information', '1', '6', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26281', 'sysadminMember', 'Register', '1', '5', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26280', 'sysadminFriendlyLink', 'Links', '1', '4', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26278', 'sysadminFeedbackInfo', 'Feedback', '1', '2', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26279', 'sysadminLeaveMessage', 'Feedback', '1', '3', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26277', 'sysadminUnread', 'unread messages', '1', '1', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('26276', 'systemconfiguration', 'System Configuration', '1', '1', '0', '0', 'en');
INSERT INTO `met_language` VALUES ('24271', 'sysadminLeaveMessage', '在线留言', '1', '3', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24270', 'sysadminFeedbackInfo', '反馈信息', '1', '2', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24269', 'sysadminUnread', '未读信息', '1', '1', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('24268', 'systemconfiguration', '系统配置', '1', '1', '0', '0', 'cn');
INSERT INTO `met_language` VALUES ('28259', 'unitytxt_53', 'Enter the name of the shortcut navigate !', '1', '417', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28260', 'unitytxt_54', 'Authorized domain', '1', '418', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28261', 'unitytxt_55', 'Site Name', '1', '419', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28262', 'unitytxt_56', 'License Type', '1', '420', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28263', 'unitytxt_57', 'Authorization Date', '1', '421', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28264', 'unitytxt_58', 'expiration date', '1', '422', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28265', 'unitytxt_59', 're- entry commercial license code', '1', '423', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28266', 'unitytxt_60', 'enjoy services', '1', '424', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28267', 'unitytxt_61', 'service delivery', '1', '425', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28268', 'unitytxt_62', 'phone Support', '1', '426', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28269', 'unitytxt_63', 'QQ support', '1', '427', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28270', 'unitytxt_64', 'Forum support', '1', '428', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28271', 'unitytxt_65', 'Service information', '1', '429', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28272', 'unitytxt_66', 'service period', '1', '430', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28273', 'unitytxt_67', 'amended to', '1', '431', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28274', 'unitytxt_68', 'account for the time when the founder of the admin, you have a chance, you can modify the name of the founder .', '1', '432', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28275', 'unitytxt_69', 'Install , upgrade, delete files', '1', '433', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28276', 'unitytxt_70', 'Upload File', '1', '434', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28277', 'unitytxt_71', 'dimensional code', '1', '435', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28278', 'unitytxt_72', 'Map Settings', '1', '436', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28279', 'unitytxt_73', 'Map Settings ( bottom of the page for setting wap fixed function )', '1', '437', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28280', 'unitytxt_74', 'View Business Edition WAP function', '1', '438', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28281', 'unitytxt_75', 'Template Settings', '1', '439', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28282', 'unitytxt_76', 'Thumbnail size setting', '1', '440', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28283', 'unitytxt_77', 'Updates automatically when the update site map', '1', '441', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28284', 'proposal', '我要提建议', '1', '442', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('28285', 'proposal', 'I want to make suggestions', '1', '442', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('28286', 'onlinehelp', 'QQ未启用帮助文档：', '1', '104', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('28287', 'onlinehelp', 'QQ help documentation is not enabled:', '1', '104', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('28288', 'setbasicTip14', 'gmail邮箱需要空间支持SSL，请开启SSL，或换成其他邮箱！！！', '1', '429', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('28289', 'setbasicTip14', 'gmail mailbox space is needed to support SSL, please turn on SSL, or replaced by other mailbox! ! !', '1', '429', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('28290', 'setbasicTip15', '空间不支持SSL方式发送邮件，请开启SSL，或换成TLS方式！！！', '1', '430', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('28291', 'setbasicTip15', 'Space does not support SSL send messages, open SSL, TLS, or replaced by the way! ! !', '1', '430', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('28292', 'onlinehelp1', '添加的QQ需要到【shang.qq.com】登录后在【商家沟通组建—设置】开启QQ的在线状态，否则将显示“未启用”', '1', '105', '2', '0', 'cn');
INSERT INTO `met_language` VALUES ('28293', 'onlinehelp1', 'Add QQ need to login [shang.qq.com] [Business Communication in the formation - Setting] to open QQ online status, otherwise it will display \"is not enabled.\"', '1', '105', '2', '0', 'en');
INSERT INTO `met_language` VALUES ('28294', 'dlapptips19', '有新应用发布了！！！', '1', '358', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('28295', 'dlapptips19', 'There are new applications released! ! !', '1', '358', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('28296', 'dlapptips20', '有更新', '1', '359', '6', '0', 'cn');
INSERT INTO `met_language` VALUES ('28297', 'dlapptips20', 'Updates', '1', '359', '6', '0', 'en');
INSERT INTO `met_language` VALUES ('28298', 'feedbackautosms', '短信回复设置', '1', '177', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('28299', 'feedbackautosms', 'Reply to message settings', '1', '177', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('28300', 'fdincAutosms', '短信回复', '1', '178', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('28301', 'fdincAutosms', 'After submit sends a message to the user', '1', '178', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('28302', 'fdincAutoContentsms', '回复短信内容', '1', '179', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('28303', 'fdincAutoContentsms', 'Reply message', '1', '179', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('28305', 'fdincTipsms', '勾选后将自动向提交表单的用户回复短信，必须短信充值才能使用', '1', '180', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('28310', 'fdincTipsms', 'This will automatically to submit the form user reply by SMS, SMS can be used to recharge', '1', '180', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('28306', 'fdinctellsms', '联系电话字段名', '1', '181', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('28307', 'fdinctellsms', 'The phone field name', '1', '181', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('28308', 'fdinctells', '用于获取用户的联系电话，以便回复短信。字段类型必须为“简短”', '1', '182', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('28309', 'fdinctells', 'Used to retrieve the user is contact phone number, in order to reply messages.The field type must be a \"short\"', '1', '182', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('28311', 'hotsearches', '热门搜索', '1', '431', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('28312', 'hotsearches', 'hot searches', '1', '431', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('30335', 'searchresult', '搜索结果', '1', '432', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('30336', 'savenow', '后台所有语言均可修改', '1', '433', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('30337', 'onlineupdate', '在线升级', '1', '436', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('30338', 'updatenow', '立即升级', '1', '437', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('30339', 'updatelater', '稍后升级', '1', '438', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('30340', 'tag', 'Tag标签', '1', '434', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('30341', 'tagtips', '多个Tag标签请用“|”隔开', '1', '435', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('30342', 'displaytype', '前台显示', '1', '183', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('30343', 'checkupdate', '检测更新', '1', '439', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('30344', 'checkupdatetips', '对不起！您的权限不够，无法操作在线升级。', '1', '440', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('30345', 'searchresult', 'Search Results', '1', '432', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('30346', 'savenow', 'all admin language can modify', '1', '433', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('30347', 'onlineupdate', 'Online Upgrade ', '1', '436', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('30348', 'updatenow', 'Upgrade Now ', '1', '437', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('30349', 'updatelater', 'Upgrade Later ', '1', '438', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('30350', 'tag', 'Tag', '1', '434', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('30351', 'tagtips', 'Please use multiple tag \"|\" separated', '1', '435', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('30352', 'displaytype', 'Front display', '1', '183', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('30353', 'checkupdate', 'Check for updates', '1', '439', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('30354', 'checkupdatetips', 'Sorry. You have insufficient privileges, not the operation of online upgrade.', '1', '440', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('30365', 'memberInformation', '会员信息设置', '1', '67', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('30366', 'memberInformation', 'Membership information settings', '1', '67', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('30368', 'Previous_news', '上一篇', '0', '9', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('30369', 'Previous_news', 'Previous', '0', '9', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('30371', 'Next_news', '下一篇', '0', '10', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('30372', 'Next_news', 'Next', '0', '10', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('30377', 'tradewap', '手机版（商业版）', '1', '75', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('30378', 'tradewap', 'Mobile version（Commercial version）', '1', '75', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('30380', 'paraname', '名称', '1', '187', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('30381', 'paraname', 'name', '1', '187', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('30383', 'parazce', '注册信息', '1', '200', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('30384', 'parazce', 'Registration information', '1', '200', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('30386', 'parazce_explain', '注：当注册信息勾选了的字段才会在会员注册界面显示，没有勾选则只能在编辑会员信息界面中显示', '1', '201', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('30387', 'parazce_explain', 'Note: when the field will be registered information is checked in the member registration interface display, no check can only be displayed in the edit membership information interface', '1', '201', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('30389', 'message_name', '姓名字段名', '1', '240', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('30392', 'message_name1', '用于获取用户的姓名，字段类型必须为“简短”', '1', '241', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('30395', 'message_content', '留言内容字段名', '1', '242', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('30398', 'message_content1', '用于获取用户的留言内容，字段类型必须为“文本”', '1', '243', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('30413', 'message_AcceptMail', '留言邮件接收邮箱', '1', '244', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('30401', 'popular_explain', '当\"替换为\"的值为空时，则把\"原文字\"的值替换为空', '1', '25', '5', '0', 'cn');
INSERT INTO `met_language` VALUES ('30416', 'column_search', '栏目搜索', '1', '245', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('30419', 'column_searchname', '请输入栏目名称', '1', '246', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('30422', 'search_inthe', '正在搜索中', '1', '247', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('30425', 'search_Noresults', '抱歉，没有找到您要搜索的栏目', '1', '248', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('30404', 'membertips', '会员设置', '1', '244', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('30407', 'memberstyle', '会员组设置', '1', '245', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('30410', 'memberflashset', '会员功能设置', '1', '246', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('30431', 'cvall', '全部', '0', '39', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('30760', 'jsx36', '注意：zip格式不允许上传，请到网站安全里面添加zip上传格式', '1', '444', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('30763', 'jsx37', '注意：sql格式不允许上传，请到网站安全里面添加sql上传格式', '1', '445', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('30766', 'jsx38', '您没有完全控制权限，请联系管理员开通', '1', '446', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('30769', 'appmodule', '应用模块', '1', '1', '3', '0', 'cn');
INSERT INTO `met_language` VALUES ('30772', 'formerror1', '请填写此字段。', '1', '0', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('30775', 'formerror2', '请从这些选项中选择一个。', '1', '0', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('30778', 'formerror3', '请输入正确的手机号码。', '1', '0', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('30781', 'formerror4', '请输入正确的Email地址。', '1', '0', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('30784', 'formerror5', '两次输入的密码不一致，请重新输入。', '1', '0', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('30787', 'formerror6', '请输入至少&metinfo&个字符。', '1', '0', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('30790', 'formerror7', '输入不能超过&metinfo&个字符。', '1', '0', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('30793', 'formerror8', '输入的字符数必须在&metinfo&之间。', '1', '0', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('30796', 'smstips96', '其它', '1', '0', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('30799', 'smstips97', '用户通知', '1', '0', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('30802', 'js72', '是否导入管理员及会员信息，确定则当前的管理员及会员信息会被导入的数据替换，取消则管理员及会员还是当前的。', '1', '0', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('30805', 'upfileFail20', '删除缩略图缓存', '1', '0', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('31974', 'page_setup_details', '详情页设置', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31973', 'defined_separately', '（可以为每个栏目单独定义大图轮播）', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31972', 'click_here_settings', '点此进入自定义设置', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31971', 'consistent_home_page', '与首页一致', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31970', 'call_way', '调用方式', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31969', 'inside_larger', '内页大图轮播设置', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31968', 'sys_orange', '橘红', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31967', 'sys_cyan', '青色', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31966', 'style_Settings', '风格设置', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31965', 'sys_parameter315', '点此进入更多设置', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31964', 'add_them_picture', '添加轮播图片', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31963', 'title_link', '设置标题和链接', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31962', 'larger_wheel', '大图轮播设置', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31961', 'scroll_bar', '滚动条', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31960', 'complete_experience', '如需完整体验手机版，请用手机访问网站网址或扫描二维码浏览。', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31959', 'effect_should', '一切效果应以手机终端浏览为标准。', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31958', 'computer_browser', '电脑浏览器与手机浏览器部分效果渲染不同，因此在电脑上浏览手机版可能会出现细节不兼容现象。', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31957', 'save_Settings', '保存设置', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31956', 'trying_load', '正在努力加载', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31955', 'templates_choice', '模板选择', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31954', 'fixed_bottom', '底部固定菜单', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31953', 'All_empty_message', '清空全部消息', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31952', 'messages_restore', '确定要删除全部的消息吗？一旦删除将不能恢复！', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31951', 'enter_user', '请输入用户名', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31950', 'stations_recommended', '针对于还在使用纯静态页面的老站，新站不推荐。', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31949', 'static_page', '设置静态页面', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31948', 'pure_static_Settings', '针对于还在使用纯静态页面的用户，可以从下面进入设置。', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31947', 'sys_good', '优秀。', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31946', 'static_dynamic', '静态化并不比动态', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31945', 'development_engine', '静态化，对于发展至今的搜索引擎来说，', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31944', 'manually_static_rules2', '静态化，伪静态是推荐的做法，甚至可以不用', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31943', 'manually_static_rules1', '上面是伪静态相关的设置，如果非得', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31942', 'manually_static_rules', '部分空间需要手动设置伪静态规则文件', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31941', 'pseudo_static', '查看伪静态规则', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31940', 'pseudo_static', '伪静态规则', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31939', 'sys_end', '结尾。', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31938', 'and_to', '（网址），并且以', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31937', 'simplify_front_desk', '开启后能够简化前台网页', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31936', 'sys_static', '伪静态化', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31935', 'being_generated', '正在生成', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31934', 'anchor_text', '添加锚文本', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31933', 'applies_paper', '仅作用于前台页面中的内容文字，比如文章详情页内容文字。', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31932', 'everyone_see', '上线了，大家来看看！', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31931', 'build_site', '搭建的新网站', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31930', 'sys_use', '我用', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31929', 'more_applications', '更多应用', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31928', 'recommended', '推荐应用', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31927', 'Traffic_trends', '小时流量趋势', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31926', 'sys_nearly', '近', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31925', 'sys_views', '浏览次数', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31924', 'share_mood', '分享心情', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31923', 'publish_content', '发布内容', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31922', 'debug_appearance', '调试外观', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31921', 'configuration_section', '配置栏目', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31920', 'new_guidelines', '新手指引', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31919', 'release_to', '发布至', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31917', 'template_code1', '请输入模板编号', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31918', 'sys_cost', '费用', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31915', 'industry_segments', '行业细分', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31916', 'color_filter', '颜色筛选', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31914', 'industry_screening', '行业筛选', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31912', 'set_password', '第三步：设置支付密码', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31913', 'login_password', '位。付费购买应用时需要输入支付密码，请不要与登录密码一致。', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31911', 'services_future', '可用于找回密码以及获取应用市场未来提供的更多服务', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31910', 'personal_information', '第二步：设置个人信息', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31909', 'Repeat_password', '重复登陆密码', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31908', 'sys_password', '登陆密码', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31907', 'create_account', '第一步：创建账户', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31906', 'buy_time', '购买时间', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31905', 'please_click', '支付成功，请点击！！', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31904', 'payment_method', '请选择支付方式', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31903', 'sys_unionpay', '银联', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31902', 'enter_amount', '请输入充值金额', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31901', 'payment_amount', '支付金额', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31900', 'account_Settings', '账户设置', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31899', 'consumption_record', '消费记录', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31898', 'the_balance', '余额', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31897', 'website_manually', '登录成功后您的网站将永久自动登录此帐号，除非手动退出。', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31896', 'application_market', '登陆应用市场', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31895', 'installations', '安装量', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31894', 'permission_download', '无权限下载', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31893', 'goods_comment', '购买商品后才能评论', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31892', 'product_commented', '同一个产品最多评论3次', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31891', 'password_mistake', '支付密码错误', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31890', 'please_again', '请先登录应用商店；应用商店采用独立的账号体系，如没有注册账号请先操作注册！', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31889', 'have_bought', '已购买', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31888', 'download_application', '当前系统无法下载此应用，请升级系统', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31887', 'sys_evaluation', '评价成功！感谢您的评价！', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31885', 'downloads', '开始下载', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31886', 'click_rating', '请点击星形评分！', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31884', 'system_temporarily', '您的充值订单，系统暂未收到，请稍后查看财务记录，或联系官网客服人员。', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31883', 'prepaid_successfully', '充值成功', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31882', 'repeat_password', '重复支付密码', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31881', 'payment_password', '新支付密码', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31880', 'original_password1', '请输入原支付密码', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31879', 'original_password', '原支付密码', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31878', 'password_length', '密码长度', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31877', 'please_enter', '请输入新密码', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31876', 'login_password_new', '新登录密码', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31875', 'original_passwords1', '请输入原密码', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31874', 'original_passwords', '原登录密码', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31873', 'account_password', '请填写应用市场账户登录密码，而不是网站登录密码。', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31872', 'please_password', '请输入登录密码', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31871', 'login_password1', '您必须填写登录密码才能修改资料', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31870', 'popular_template', '热门模板', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31869', 'popular_application', '热门应用', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31868', 'sys_parameter218', '这里的数据由控件自动生成', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31867', 'number_installation', '安装次数', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31866', 'application_name', '应用名称', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31865', 'application_developers', '开发者应用', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31864', 'website_developers', '开发者网站', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31863', 'introduction_developers', '开发者简介', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31862', 'sys_head', '头像', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31861', 'name_developers', '开发者名称', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31860', 'dont_fill', '可不填', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31859', 'mouse_click_rating', '鼠标放到星形上点击评分', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31858', 'score', '评分', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31857', 'want_comment', '我要评论', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31856', 'next_page', '下一页', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31855', 'back', '上一页', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31854', 'running_environment', '运行环境', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31853', 'updated_date', '更新日期', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31852', 'online_presentation', '在线演示', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31851', 'screenshots', '截图', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31850', 'is_introduced', '介绍', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31849', 'comments', '评论', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31848', 'evaluation', '人评价）', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31847', 'total_of', '（共', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31846', 'password_input', '请输入支付密码', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31845', 'pay_password', '支付密码', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31844', 'temporary_access1', '请输入临时访问域名，必须是三级域名。', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31843', 'temporary_access', '临时访问域名', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31842', 'template_domain', '请输入模板绑定的一级域名', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31841', 'top_domain_names', '顶级域名', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31840', 'buy_template_must', '购买后程序将自动获取当前网站域名并进行绑定，以后此模板只能用于绑定域名下使用。', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31839', 'template_domain', '模板绑定域名说明', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31838', 'amount_of', '金额', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31837', 'purchase_program', '购买项目', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31836', 'success_payment', '支付成功后，请点击此链接跳转！！', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31835', 'pay_success', '支付成功', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31834', 'latest_version', '已是最新版', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31833', 'be_updated', '可更新至', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31832', 'special_thanks', '特别感谢', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31831', 'update_log', '更新日志', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31829', 'get_in', '获取中', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31830', 'current_version', '当前版本', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31827', 'official_information', '官方信息', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31828', 'program_information', '程序信息', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31826', 'recruitment_information', '招聘信息', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31825', 'system_maintenance', '系统维护中', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31824', 'permission_download', '没有权限下载', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31823', 'link_remote', '链接不上远程服务器', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31822', 'try_again', '重试', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31821', 'give_installation', '放弃安装', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31820', 'installation_errors', '安装时错误，可能由以下原因造成', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31819', 'installation_errors', '安装错误', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31818', 'configuratio_template', '配置模板', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31817', 'seconds_background', '秒好后刷新后台', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31816', 'installation_complete1', '安装完成，', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31815', 'installation_complete', '安装完成', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31814', 'installation', '安装中', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31813', 'possible_reasons', '可能原因', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31812', 'download_interrupt', '文件下载中断', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31811', 'write_permission', '文件没有写权限或其新建的子文件夹没有写权限', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31810', 'download', '下载中', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31809', 'following_documents', '下列文件没有修改权限，无法进行升级操作！', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31808', 'document_upgrade', '系统升级文档', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31807', 'file_permissions', '文件权限检测中', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31806', 'input_link_address', '请输入链接地址', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31805', 'enter_replacement', '请输入替换后的文字', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31803', 'modify_system_rules', '系统规则请勿修改', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31804', 'enter_original', '请输入原文字', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31802', 'displays_directory', '是否显示根目录下文件列表', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31801', 'anchor_text', '站内锚文本', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31800', 'yesterday', '昨天', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31799', 'today', '今天', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31798', 'please_select', '请选择栏目', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31797', 'log_successfully', '登陆成功', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31796', 'out_of_success', '退出成功', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31795', 'password_changing', '支付密码修改', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31794', 'login_password_changing', '登录密码修改', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31793', 'account_information', '账户信息设置', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31792', 'my_bill', '充值记录', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31791', 'fine', '精 选', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31790', 'form_controls1', '表格控件', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31789', 'form_controls', '表单控件', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31788', 'to_move', '移动到', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31787', 'copied_to', '复制到', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31786', 'keep_sorting', '保存排序', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31785', 'add_primary_columns', '添加一级栏目', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31784', 'path_variable', '为当前应用根目录，仅仅做为路径变量', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31783', 'bring_in_more', '还可以引入多个', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31782', 'time_Settings', '时间设置', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31781', 'support_special', '后缀，不支持特殊字符', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31780', 'dont_add', '构成方式，不要加', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31778', 'multiple_keywords', '可设置多个关键词', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31779', 'static_page_setup', '为空则使用静态页面设置中设置的', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31777', 'structure_mode', '构成方式', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31776', 'parameter_Settings', '参数设置中设置的', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31775', 'null_used', '为空则使用', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31774', 'title_cannot_empty!', '标题不能为空！', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31773', 'please_enter_title', '请输入文章标题', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31772', 'home_link_text', '首页链接文字', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31770', 'list_on_left', '列表页左侧标题', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31771', 'position_navigation', '位置导航前缀名称', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31769', 'title_words', '标题文字', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31768', 'search_placeholder', '头部搜索占位文本', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31767', 'below_recommended_Settings', '以下建议使用默认设置', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31766', 'image_module_explain', '图片模块列表页每行显示个数，请根据图片尺寸合理设置', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31765', 'product_module_explain', '产品模块列表页每行显示个数，请根据图片尺寸合理设置', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31764', 'number_line', '每行显示个数', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31763', 'adaptive', '自适应', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31762', 'inside_pages_subtopic', '内页左侧子栏目列表', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31761', 'hide_default', '默认隐藏所有', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31760', 'open_default', '默认展开所有', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31759', 'link_style_switch', '友情链接样式切换', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31758', 'image_style', '图片样式', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31757', 'text_style', '文字样式', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31756', 'please_cooperate', '请与缩略图大小配合设置，每行数量越多缩略图越小反之越大', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31755', 'page_scrolling_visual', '首页滚动图片可视数量', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31754', 'article_number_list', '文章列表显示数量', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31753', 'short_description_words', '简短描述字数', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31752', 'page_block', '首页区块', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31750', 'moves_right', '右移', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31751', 'title_words', '标题字数', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31749', 'move_down', '下移', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31748', 'commonly_Settings', '常用设置', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31747', 'links_corner_address', '标题及右上角链接地址', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31746', 'homepage_configuration', '首页快速配置', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31745', 'upload_component', '上传组件', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31744', 'radio_buttons', '单选按钮', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31743', 'multiline_text', '多行文本', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31742', 'partitions', '分区', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31741', 'delete_information', '您确定要删除该信息吗？删除之后无法再恢复。', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31740', 'page_for_details', '详情页', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31739', 'separated_vertical', '值，中间用竖线隔开。如', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31738', 'option', '选项文字', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31737', 'radio_set', '单选设置', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31736', 'click_button_effect', '点击页面底部的保存按钮才生效', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31735', 'label_function', '通过函数标签', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31734', 'information_columns4', '用户选中指定栏目并保存后，前台对应的变量可以得到相应的值。', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31733', 'module_identifier', '模块标识', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31732', 'value_structure', '值结构', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31731', 'information_columns3', '比如文章列表只能显示带信息列表的栏目。', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31730', 'information_columns2', '可以限制用户选择的栏目，以便于正确的引导用户设置模板。', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31729', 'information_columns1', '只能选择带信息列表的栏目（文章、产品、图片、下载、招聘）', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31728', 'only_choose_column', '只能选择一级栏目', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31727', 'optional_columns', '可选所有栏目', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31726', 'column_selection', '栏目选择', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31724', 'preservation_effect', '保存生效', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31725', 'clear_variables', '您确定要清空所有变量吗？', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31723', 'custom_tag', '增加自定义标签', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31721', 'current_template', '当前模板', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31722', 'variables_using_method', '变量使用方法', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31720', 'template_folder_under', '下的模板文件夹', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31719', 'delete_template', '此处删除模板并不会删除', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31717', 'preview', '预览图', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31718', 'template_code', '模板编号', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31716', 'template_Settings', '里，这样保存时才能载入模板设置。', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31715', 'site_directory', '网站根目录', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31714', 'modify_template', '如果是修改模板，请先将原模板放到', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31711', 'template_type', '模板类型', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31712', 'computer_template', '电脑模板', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31713', 'cell_template', '手机模板', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31710', 'need_manually_create', '需要手动建立模板文件夹', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31708', 'new_template', '新增模板', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31709', 'template_folder', '模板文件夹', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31707', 'default_values', '默认值', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31706', 'variable_name', '变量名称', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31705', 'Fill_option', '选项值”填入选项', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31704', 'press_option', '按“选项内容', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31703', 'setting_item12', '设置选项类型', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31702', 'setting_item1', '此设置将放到选中项的后一项', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31701', 'location_linkage', '位置联动', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31700', 'set_title', '设置标题', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31699', 'option_set', '选项设置', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31698', 'detail_page', '详细页', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31697', 'first', '首项', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31696', 'global', '全局', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31694', 'label', '标签', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31695', 'special', '特殊', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31693', 'slider', '滑块', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31692', 'color_picker', '颜色选择器', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31691', 'sys_editor', '编辑器', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31689', 'for', '为', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31690', 'down_program3', '三级栏目下拉，所有模块栏目', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31688', 'down_program2', '的三级栏目下拉', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31687', 'down_program1', '的一级栏目下拉', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31686', 'sys_parameter36', '小于', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31685', 'text_input', '文本输入框', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31684', 'sys_variables', '系统变量', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31683', 'short_text', '简短文本', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31681', 'class_Settings', '分类设置', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31682', 'block_set', '区块设置', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31680', 'title_bar', '标题栏', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31678', 'verify_password', '请重复输入密码', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31679', 'down_options', '下拉选项', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31677', 'Repeat_password', '重复密码', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31676', 'order_number', '订单号', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31675', 'for_details', '详情', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31674', 'template', '模板', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31673', 'application', '应用', '1', '0', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('31672', 'Prompt_domain', '请输入域名', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31671', 'Prompt_password', '请输入密码', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31670', 'Prompt_alipay', '请输入支付宝账号', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31669', 'alipay', '支付宝', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31668', 'account', '账号', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31667', 'Prompt_email', '请输入邮箱地址', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31666', 'mailbox', '邮箱', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31665', 'Prompt_mobile', '请输入手机号码', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31664', 'Prompt_cell', '请输入电话号码', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31663', 'female', '女', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31662', 'male', '男', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31661', 'Prompt_nickname', '请输入会员昵称', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31660', 'nickname', '昵称', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31659', 'Prompt_user', '请输入您的用户名', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31658', 'info_modification', '会员信息修改', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31657', 'balance', '余额', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31656', 'amount_operation', '操作金额', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31655', 'into_model', '入款', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31654', 'buy_records', '购买记录', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31653', 'info_editing', '信息编辑', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31652', 'loggedin', '您已登录！', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31651', 'registration', '注册', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31650', 'landing', '登陆', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31975', 'page_range', '翻页范围', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31976', 'designer_special', '如果模板设计师采用了特制的展示方式，则此处设置无效。', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31977', 'shuffling_closed', '大图轮播被关闭或设置成其它展示方式', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31978', 'click_enter', '点此进入更多设置', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31979', 'such_uploadfile', '（如上传swf文件）', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31980', 'recruitment_info', '能够影响文章、产品、图片、招聘模块信息列表，而并非所有链接。', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31981', 'sys_navigation', '导航：栏目设置中可以调整是否新窗口打开。', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31982', 'sys_navigation1', '此功能预览无法查看效果，需要保存后刷新前台页面才能体验。', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31983', 'sys_navigation2', '显示栏目列表时，图片需要在栏目设置中上传（栏目图片）。', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31984', 'more_options', '更多选项', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31985', 'suggested_size', '建议尺寸', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31986', 'current_input', '（当前已输入', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31987', 'sys_characters', '个字符）', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31988', 'settings_effect', '设置已生效', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31989', 'website_information', '网站信息', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31990', 'email_Settings', '邮件发送设置', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31991', 'third_party_ode', '第三方代码', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31992', 'technology_business', '无技术商业授权', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31993', 'purchase_in', '购买中', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31994', 'please_login', '请先登录！', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31995', 'server_failed', '链接远程服务器失败', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31996', 'permission_download', '无权限下载！！', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31997', 'Refresh_seconds', '秒后刷新页面', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31998', 'in_processing', '处理中', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('31999', 'sys_results', '项结果', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('32000', 'matching_results', '没有匹配结果', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('32001', 'Display_first', '显示第', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('32002', 'result_total', '项结果，共', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('32003', 'Results_filtering', '项结果过滤', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('32004', 'data_empty', '表中数据为空', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('32005', 'Of_load', '载入中', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('32006', 'on_page', '上页', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('32007', 'next_page', '下页', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('32008', 'at_page', '末页', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('32009', 'ascending_order', '以升序排列此列', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('32010', 'descending_order', '以降序排列此列', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('32011', 'background_page', '后台首页', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('32012', 'modify_information', '修改个人资料', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('32013', 'sys_select', '精  选', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('32014', 'should_used', '应  用', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('32015', 'sys_template', '模  板', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('32016', 'sys_purchase', '购买', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('32017', 'sys_payment', '支付', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('32018', 'extension_school', '米拓学院', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35680', 'the_bit', '位', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35681', 'the_server', '服务器', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35682', 'the_version', '版本', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35683', 'marketing', '营销', '1', '0', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('35684', 'safety_efficiency', '安全与效率', '1', '0', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('35685', 'data_processing', '备份与恢复', '1', '0', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('35686', 'computer', '电脑', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35687', 'appearance', '外观', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35688', 'seo_optimization', 'SEO优化', '1', '0', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('35689', 'the_user', '用户', '1', '0', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('35690', 'mobile_edition', '手机版', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35691', 'safety', '安全', '1', '0', '8', '0', 'cn');
INSERT INTO `met_language` VALUES ('35712', 'attention', '关注', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35713', 'author', '作者', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35747', 'news_prompt', '您有一条留言信息，请查收！', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35748', 'news_prompt1', '您有一条反馈信息，请查收！', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35749', 'sys_authorization', '获得商业授权才能够享受技术支持服务', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35750', 'sys_authorization1', '录入商业授权', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35751', 'sys_authorization2', '了解商业授权', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35760', 'detection', '检测中', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35761', 'recommended_tems', '推荐应用', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35762', 'more_tems', '更多模板', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35763', 'usernametips', '如果有官网或交流论坛帐号，请注册成一样，因为我们即将同步三个平台的帐号', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35776', 'authorization_level', '授权等级', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35777', 'technical_support', '获取技术支持', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35778', 'entry_authorization', '重新录入授权', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35779', 'title_description', '请输入Title描述', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35782', 'tab_settings', '产品模块选项卡设置', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35783', 'display_number', '选项卡显示数', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35784', 'corresponding_products', '选项卡内容请在内容管理对应产品中填写', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35785', 'tab_title1', '选项卡一标题', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35786', 'tab_title2', '选项卡二标题', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35787', 'tab_title3', '选项卡三标题', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35788', 'tab_title4', '选项卡四标题', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35789', 'tab_title5', '选项卡五标题', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35812', 'menu_settings', '底部固定菜单设置', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35813', 'settings_page', '点此进入设置页面', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35814', 'height_setting', '高度设置(宽度跟随界面宽度)', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35815', 'recommended_template', '推荐模板', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35820', 'download_prompt', '正在进行下载，请不要操作页面！', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35821', 'purchase_application', '购买的应用只能作用于当前的网站', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('30390', 'message_name', 'The name field name', '1', '240', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('30393', 'message_name1', 'To obtain the user name, field type must be a “short”', '1', '241', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('30396', 'message_content', 'The message content field name', '1', '242', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('30399', 'message_content1', 'For the message content for users, field type must be a “text”', '1', '243', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('30414', 'message_AcceptMail', 'Voice mail received mailbox', '1', '244', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('30402', 'popular_explain', 'When \"replaced\" is null, the \"original text\" replaces the value is null', '1', '25', '5', '0', 'en');
INSERT INTO `met_language` VALUES ('30417', 'column_search', 'Program search', '1', '245', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('30420', 'column_searchname', 'Please enter the name column', '1', '246', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('30423', 'search_inthe', 'Are the search', '1', '247', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('30426', 'search_Noresults', 'Sorry, you want to search column not found', '1', '248', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('30405', 'membertips', 'Membership settings', '1', '244', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('30408', 'memberstyle', 'Group members set', '1', '245', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('30411', 'memberflashset', 'Membership function', '1', '246', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('30432', 'cvall', 'ALL', '0', '39', '4', '0', 'en');
INSERT INTO `met_language` VALUES ('30761', 'jsx36', 'Note: zip format is not allowed to upload, please go to the site safety add upload zip format', '1', '444', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('30764', 'jsx37', 'Note: SQL formats are not allowed to upload, please go to the site safety add SQL upload format', '1', '445', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('30767', 'jsx38', 'You do not have full control permissions, please contact your administrator', '1', '446', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('30770', 'appmodule', 'Application module', '1', '1', '3', '0', 'en');
INSERT INTO `met_language` VALUES ('30773', 'formerror1', 'Please fill in this field.', '1', '0', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('30776', 'formerror2', 'Please choose one of these options.', '1', '0', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('30779', 'formerror3', 'Please enter the correct phone number.', '1', '0', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('30782', 'formerror4', 'Please enter the correct Email address.', '1', '0', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('30785', 'formerror5', 'Two input password, please enter again.', '1', '0', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('30788', 'formerror6', 'Please enter at least &metinfo& characters.', '1', '0', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('30791', 'formerror7', 'Enter no more than &metinfo& characters.', '1', '0', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('30794', 'formerror8', 'Enter the number of characters must be between &metinfo&.', '1', '0', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('30797', 'smstips96', 'other', '1', '0', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('30800', 'smstips97', 'User notification', '1', '0', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('30803', 'js72', 'Whether to import the administrator and member information, determine the current administrator and membership information will be imported data replacement, cancel the administrator and member or current.', '1', '0', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('30806', 'upfileFail20', 'Delete the thumbnail cache', '1', '0', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('35672', 'registration', 'registration', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35671', 'loggedin', 'you are logged in!', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35670', 'info_editing', 'information editing', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35669', 'buy_records', 'buy records', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35668', 'into_model', 'into the model', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35667', 'amount_operation', 'The amount of operation', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35666', 'balance', 'balance', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35665', 'info_modification', 'member information modification', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35663', 'nickname', 'nickname', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35664', 'Prompt_user', 'please enter your user name', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35661', 'male', 'male', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35662', 'Prompt_nickname', 'please enter members nickname', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35660', 'female', 'female', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35659', 'Prompt_cell', 'please enter the phone number', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35658', 'Prompt_mobile', 'please enter the phone number', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35656', 'Prompt_email', 'please enter the email address', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35657', 'mailbox', 'mailbox', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35655', 'account', 'account', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35654', 'alipay', 'alipay', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35653', 'Prompt_alipay', 'please enter the alipay account', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35652', 'Prompt_password', 'please enter the password', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35651', 'Prompt_domain', 'please enter the domain name', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35650', 'application', 'application', '1', '0', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('35647', 'order_number', 'order number', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35648', 'for_details', 'for details', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35649', 'template', 'template', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35646', 'Repeat_password', 'Repeat password ', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35645', 'verify_password', 'please verify password', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35644', 'down_options', 'the drop-down options', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35643', 'title_bar', 'title bar', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35642', 'class_Settings', 'classification Settings', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35641', 'block_set', 'block set', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35640', 'short_text', 'short text', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35639', 'sys_variables', 'system variables', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35637', 'less_than', 'less than', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35638', 'text_input', 'text input box', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35635', 'down_program2', '3 columns pull-down', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35636', 'down_program1', 'The drop-down level program', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35629', 'label', 'label', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35630', 'slider', 'slider', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35631', 'color_picker', 'color picker', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35632', 'sys_editor', 'editor', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35633', 'down_program3', '3 columns pull-down, all modules columns', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35634', 'for', 'for ', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35625', 'first', 'first', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35626', 'detail_page', 'detail page', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35627', 'global', 'global', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35628', 'special', 'special', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35623', 'option_set', 'option is set', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35624', 'set_title', 'set title', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35619', 'press_option', 'press option', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35620', 'setting_item12', 'Type setting options', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35621', 'location_linkage', 'location linkage', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35622', 'setting_item1', 'this setting will be in after a selected item', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35617', 'default_values', 'default values', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35618', 'Fill_option', 'Fill in option value', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35615', 'variable_name', 'variable name', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35616', 'new_template', 'new template', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35614', 'need_manually_create', 'need to manually create templates folder', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35613', 'template_folder', 'template folder', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35612', 'template_type', 'template type', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35611', 'modify_template', 'if is to modify the template, please put the original template', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35606', 'preview', 'preview', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35607', 'template_Settings', 'in this way can save when loading the template Settings.', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35608', 'site_directory', 'site root directory', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35609', 'computer_template', 'computer template', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35610', 'cell_template', 'cell phone template', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35605', 'template_code', 'template code', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35601', 'template_folder_under', 'The template folder under', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35602', 'variables_using_method', 'variables using method', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35603', 'current_template', 'the current template', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35604', 'delete_template', 'delete template here will not be deleted', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35600', 'custom_tag', 'add custom tag', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35597', 'column_selection', 'column selection', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35598', 'preservation_effect', 'preservation effect', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35599', 'clear_variables', 'are you sure you want to clear all variables?', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35596', 'information_columns1', 'only option with information list columns (articles, products, pictures, download, recruitment)', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35592', 'information_columns3', 'such as article list can only display information list of columns.', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35593', 'information_columns2', 'can restrict the user to select columns, so that the correct guiding users to set template.', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35594', 'optional_columns', 'optional all columns', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35595', 'only_choose_column', 'can only choose one class column', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35591', 'value_structure', 'value structure', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35590', 'module_identifier', 'module identifier', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35585', 'separated_vertical', 'value, separated by a vertical bar in the middle. Such as', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35589', 'information_columns4', 'after users select the specified column and save the corresponding variables can get the corresponding values at the front desk.', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35587', 'label_function', 'label by function', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35588', 'click_button_effect', 'click save button at the bottom of the page to take effect', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35586', 'option', 'option', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35584', 'radio_set', 'radio set', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35581', 'multiline_text', 'multiline text', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35582', 'page_for_details', 'page for details', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35583', 'delete_information', 'are you sure you want to delete this information? After delete cannot return.', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35577', 'homepage_configuration', 'homepage rapid configuration', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35579', 'radio_buttons', 'radio buttons', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35580', 'partitions', 'partitions', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35578', 'upload_component', 'upload component', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35576', 'links_corner_address', 'headings, and links to the upper right corner of the address', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35574', 'title_words', 'title words', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35575', 'commonly_Settings', 'commonly used Settings', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35573', 'moves_right', 'moves to the right', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35572', 'move_down', 'move down', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35571', 'page_block', 'page block', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35570', 'short_description_words', 'short description words', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35569', 'please_cooperate', 'please cooperate with thumbnail size set, the smaller the more each thumbnail instead', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35564', 'open_default', 'All open by default', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35568', 'page_scrolling_visual', 'Number page scrolling visual image', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35567', 'article_number_list', 'article number list', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35566', 'text_style', 'text style', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35565', 'hide_default', 'hide all by default', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35563', 'link_style_switch', 'link style switch', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35562', 'image_style', 'image style', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35561', 'inside_pages_subtopic', 'The left inside pages subtopic lists', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35560', 'product_module_explain', 'product module list each row shows the number of pages, please according to the image size and reasonable setting', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35557', 'image_module_explain', 'image module list each row shows the number of pages, please according to the image size and reasonable setting', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35559', 'number_line', 'number per line', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35558', 'adaptive', 'adaptive', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35556', 'below_recommended_Settings', 'Below it is recommended to use the default Settings', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35555', 'search_placeholder', 'head search placeholder text', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35554', 'title_words', 'title words', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35553', 'position_navigation', 'position navigation prefix names', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35552', 'home_link_text', 'home page link text', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35550', 'title_cannot_empty!', 'title cannot be empty!', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35551', 'please_enter_title', 'please enter the post title', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35546', 'static_page_setup', 'null is used in the static page setup', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35547', 'null_used', 'null is used', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35548', 'parameter_Settings', 'set in the parameter Settings', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35549', 'list_on_left', 'list on the left side of the page title', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35541', 'time_Settings', 'time Settings', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35542', 'support_special', 'suffix, does not support special characters', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35543', 'dont_add', 'a way, dont add', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35544', 'structure_mode', 'structure mode', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35545', 'multiple_keywords', 'can set up multiple keywords', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35540', 'bring_in_more', 'can also bring in more', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35538', 'add_primary_columns', 'add primary columns', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35539', 'path_variable', 'root directory for the current application, just as the path variable', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35537', 'keep_sorting', 'keep sorting', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35536', 'copied_to', 'copied to', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35534', 'form_controls', 'form controls', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35535', 'to_move', 'to move to', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35533', 'form_controls1', 'form controls', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35531', 'account_information', 'account information is set', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35532', 'my_bill', 'Recharge history', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35529', 'password_changing', 'pay password changing', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35530', 'login_password_changing', 'login password changing', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35525', 'please_select', 'please select columns', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35526', 'today', 'today', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35527', 'fine', 'fine', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35528', 'out_of_success', 'out of success', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35521', 'displays_directory', 'Whether  displays the root directory file list', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35522', 'yesterday', 'yesterday', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35523', 'anchor_text', 'anchor text', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35524', 'log_successfully', 'log in successfully', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35520', 'enter_original', 'please enter the original text', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35519', 'modify_system_rules', 'do not modify the system rules', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35518', 'input_link_address', 'please input link address', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35517', 'enter_replacement', 'please enter replacement text', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35514', 'following_documents', 'the following documents have no change permissions to upgrade the operation!', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35515', 'document_upgrade', 'document system upgrade', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35516', 'file_permissions', 'file permissions tests', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35513', 'download', 'download', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35511', 'download_interrupt', 'file download interrupt', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35512', 'write_permission', 'file does not have write permission or its newly built a folder does not have write permission', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35510', 'installation', 'installation', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35509', 'possible_reasons', 'possible reasons', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35508', 'installation_complete', 'installation is complete', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35507', 'installation_complete1', 'installation is complete,', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35506', 'seconds_background', 'Good  seconds after the refresh background', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35502', 'installation_errors', 'when installation errors, which may be caused by the following reasons', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35505', 'configuratio_template', 'configuration template', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35504', 'installation_errors', 'installation errors', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35503', 'give_installation', 'give up installation', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35499', 'system_maintenance', 'Of the system maintenance', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35501', 'try_again', 'try again', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35500', 'permission_download', 'do not have permission to download', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35497', 'official_information', 'the official information', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35498', 'recruitment_information', 'recruitment information', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35496', 'link_remote', 'link is not on a remote server', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35495', 'program_information', 'program information', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35494', 'get_in', 'get in', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35492', 'current_version', 'the current version', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35493', 'update_log', 'update log', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35486', 'success_payment', 'after the success of the payment, please click on this link to jump!!!!!', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35491', 'special_thanks', 'special thanks', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35488', 'be_updated', 'can be updated', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35489', 'latest_version', 'is the latest version', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35490', 'pay_success', 'pay success', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35487', 'purchase_program', 'purchase program', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35485', 'template_domain', 'please enter template top-level domain', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35484', 'top_domain_names', 'top-level domain names', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35483', 'buy_template_must', 'After the purchase program will automatically get the current website domain name and bind, after this template can be used only for binding domain name use.', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35482', 'template_domain', 'template binding domain', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35481', 'amount_of', 'The amount of ', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35480', 'temporary_access', 'temporary access to the domain name', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35479', 'temporary_access1', 'please enter the temporary access domain name, must be level 3 domain names.', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35476', 'total_of', 'A total of', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35478', 'pay_password', 'pay password', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35477', 'password_input', 'please pay the password input', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35475', 'comments', 'comments', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35473', 'is_introduced', 'is introduced', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35474', 'evaluation', 'Evaluation', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35469', 'running_environment', 'running environment', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35470', 'screenshots', 'screenshots', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35471', 'online_presentation', 'online presentation', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35472', 'updated_date', 'updated date', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35468', 'next_page', 'the next page', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35465', 'score', 'score', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35466', 'mouse_click_rating', 'the mouse to click on star rating', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35467', 'back', 'back', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35464', 'want_comment', 'I want to comment', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35461', 'name_developers', 'name developers', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35462', 'sys_head', 'head', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35463', 'introduction_developers', 'introduction to developers', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35458', 'application_developers', 'application developers', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35459', 'website_developers', 'website developers', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35460', 'dont_fill', 'dont fill in', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35457', 'number_installation', 'number of installation', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35455', 'popular_template', 'popular template', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35456', 'application_name', 'application name', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35454', 'popular_application', 'popular application', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35453', 'login_password1', 'you must fill in the login password to modify the data', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35452', 'account_password', 'account password, please fill out the application market rather than the website login password.', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35449', 'original_password1', 'please enter the original password', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35450', 'original_password', 'the original password', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35451', 'please_password', 'please enter the password', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35447', 'please_enter', 'please enter a new password', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35448', 'login_password_new', 'new login password', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35446', 'original_passwords', 'pay the original password', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35445', 'password_length', 'password length', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35444', 'payment_password', 'new payment password', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35443', 'original_passwords1', 'Pay please enter the original password', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35442', 'system_temporarily', 'you top-up order, the system temporarily not yet received, please check the financial records later, or contact the website the personnel of the service.', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35441', 'prepaid_successfully', 'prepaid phone successfully', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35440', 'repeat_password', 'repeat pay the password', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35439', 'downloads', 'downloads', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35438', 'sys_evaluation', 'evaluate success! Thank you for your evaluation!', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35437', 'click_rating', 'please click on the star rating!', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35436', 'download_application', 'the current system cant download this application, please upgrade system', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35435', 'have_bought', 'have bought', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35434', 'please_again', 'Please login application store; application store is independent account system, not registered account please registration operation!', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35432', 'product_commented', 'The same products up to 3 comments', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35433', 'password_mistake', 'pay password mistake', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35429', 'website_manually', 'after a successful login your site will permanently automatically log on this account, unless manually exit.', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35431', 'permission_download', 'no permission to download', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35430', 'goods_comment', 'buy goods to comment', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35427', 'installations', 'installations', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35428', 'application_market', 'land application market', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35426', 'the_balance', 'balance', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35425', 'enter_amount', 'please enter top-up amount', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35424', 'payment_amount', 'payment amount', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35422', 'consumption_record', 'consume record', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35423', 'account_Settings', 'account', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35420', 'sys_unionpay', 'unionpay', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35421', 'payment_method', 'please select a payment method', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35419', 'please_click', 'pay success, please click!!!!!', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35418', 'buy_time', 'buy time', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35416', 'sys_password', 'password', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35417', 'create_account', 'first step: create account', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35414', 'services_future', 'can be used to retrieve your password, and access to applications market to provide more services in the future', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35412', 'set_password', 'Pay step 3: set password', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35413', 'personal_information', 'step 2: set the personal information', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35415', 'Repeat_password', 'Repeat password ', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35409', 'industry_segments', 'industry segments', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35411', 'login_password', '. Pay for applications need to pay input password, please dont in line with the login password.', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35410', 'industry_screening', 'industry screening', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35408', 'color_filter', 'color filter', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35403', 'release_to', 'Release to ', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35404', 'new_guidelines', 'new guidelines', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35405', 'configuration_section', 'configuration section', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35406', 'debug_appearance', 'debug appearance', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35407', 'template_code1', 'please enter the template code', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35402', 'sys_cost', 'cost', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35399', 'more_applications', 'more applications', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35401', 'publish_content', 'publish content', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35400', 'share_mood', 'share the mood', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35398', 'recommended', 'recommended', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35396', 'sys_nearly', 'nearly', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35397', 'Traffic_trends', 'Traffic trends  hours', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35395', 'sys_views', 'views', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35394', 'build_site', 'build new web site', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35393', 'sys_use', 'I use', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35392', 'everyone_see', 'online, everyone to see!', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35390', 'applies_paper', 'only applies to the contents of the front page of text, such as the paper details page.', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35391', 'anchor_text', 'add anchor text', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35389', 'sys_static', 'Pseudo static', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35382', 'manually_static_rules2', 'static, pseudo static is a recommended practice, and even dont have to', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35383', 'development_engine', 'static, for the development of search engine,', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35384', 'pseudo_static', 'pseudo static rules', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35385', 'sys_end', 'end.', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35386', 'simplify_front_desk', 'Can simplify the front desk after open a web page', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35387', 'and_to', '(url), and to', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35388', 'being_generated', 'being generated', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35381', 'manually_static_rules1', 'is pseudo static related to the above Settings, if required', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35380', 'manually_static_rules', 'part space need to manually set the pseudo static rules file', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35378', 'static_dynamic', 'static than dynamic', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35379', 'pseudo_static', 'see pseudo static rules', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35375', 'pure_static_Settings', 'to still use pure static page the user, can enter the Settings from below.', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35374', 'enter_user', 'please enter your user name', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35377', 'sys_good', 'good.', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35376', 'static_page', 'set a static page', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35373', 'stations_recommended', 'for old standing still use pure static page new stations is not recommended.', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35370', 'fixed_bottom', 'fixed at the bottom of the menu', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35371', 'templates_choice', 'templates choice', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35372', 'messages_restore', 'sure want to delete all the messages? Once the delete will not be able to restore!', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35368', 'trying_load', 'are trying to load', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35369', 'All_empty_message', 'All empty message', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35367', 'save_Settings', 'save Settings', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35366', 'computer_browser', 'computer browser and mobile browsers render some effect is different, so browse the mobile version may appear on the computer details are not compatible.', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35365', 'effect_should', 'All effect should be based on mobile terminal to browse.', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35361', 'title_link', 'set the title and link', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35362', 'scroll_bar', 'the scroll bar', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35363', 'larger_wheel', 'a larger wheel set', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35364', 'complete_experience', 'for complete experience mobile version, please use mobile phone to access the website url or scan qr code to browse.', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35358', 'sys_cyan', 'cyan', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35359', 'style_Settings', 'style Settings', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35360', 'add_them_picture', 'add them by picture', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35357', 'sys_orange', 'orange', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35356', 'inside_larger', 'inside a larger wheel set', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35355', 'call_way', 'call way', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35354', 'consistent_home_page', 'is consistent with the home page', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35351', 'page_setup_details', 'page setup for details', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35352', 'page_range', 'page range', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35353', 'click_here_settings', 'click here to enter the Settings', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35350', 'defined_separately', '(for a larger defined by separately for each column)', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35349', 'designer_special', 'if the template designer USES a special display, is set here is invalid.', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35348', 'shuffling_closed', 'a larger image shuffling were closed or other display set up', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35347', 'such_uploadfile', '(such as swf uploadfile)', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35346', 'click_enter', 'click here to enter more Settings', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35345', 'recruitment_info', 'can affect the article list, recruitment module information, products, pictures, and not all links.', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35344', 'sys_navigation1', 'unable to view this feature preview effect, needs to be saved after refresh the page at the front desk to experience.', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35343', 'sys_navigation', 'navigation: setting up whether can adjust in a new window opens.', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35342', 'sys_navigation2', 'show columns list, images need to upload (column) in the column setup.', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35341', 'current_input', 'the current input', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35340', 'suggested_size', 'suggested size', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35338', 'sys_characters', 'characters', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35339', 'more_options', 'more options', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35337', 'settings_effect', 'Settings to take effect', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35336', 'website_information', 'website information', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35335', 'email_Settings', 'email Settings', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35334', 'third_party_ode', 'third-party code', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35333', 'technology_business', 'no technology business license', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35332', 'purchase_in', 'purchase in ', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35331', 'server_failed', 'link to a remote server failed', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35330', 'please_login', 'please login first!', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35329', 'permission_download', 'no permission to download!!!!!', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35328', 'Refresh_seconds', 'Refresh the page seconds', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35327', 'in_processing', 'in processing', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35326', 'sys_results', 'Results', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35324', 'Display_first', 'Display the first ', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35325', 'matching_results', 'no matching results', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35323', 'result_total', 'as a result, the total', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35322', 'Results_filtering', 'Results filtering ', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35321', 'data_empty', 'data in the table is empty', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35320', 'Of_load', 'Of the load', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35318', 'ascending_order', 'in ascending order', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35319', 'on_page', 'on page ', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35316', 'at_page', 'At the end of the page', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35317', 'descending_order', 'in descending order', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35314', 'sys_select', 'select', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35315', 'next_page', 'on the next page', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35313', 'modify_information', 'modify personal information', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35312', 'background_page', 'the background page', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35311', 'sys_template', 'template', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35310', 'should_used', 'should be used', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35309', 'extension_school', ' m extension school', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35308', 'sys_payment', ' payment', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35307', 'sys_purchase', ' purchase', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35673', 'landing', 'landing', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35674', 'the_bit', 'The bit', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35675', 'the_server', 'The server', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35676', 'the_version', 'The version', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35692', 'marketing', 'Marketing', '1', '0', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('35693', 'safety_efficiency', 'Safety and efficiency', '1', '0', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('35694', 'data_processing', 'backup and restore', '1', '0', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('35695', 'computer', 'Computer Science', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35696', 'appearance', 'Appearance', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35697', 'seo_optimization', 'SEO optimization', '1', '0', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('35698', 'the_user', 'The user', '1', '0', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('35699', 'mobile_edition', 'Mobile phone edition', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35700', 'safety', 'Safety', '1', '0', '8', '0', 'en');
INSERT INTO `met_language` VALUES ('35711', 'attention', 'Attention', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35714', 'author', 'Author', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35745', 'news_prompt', 'You have a message, please check!', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35746', 'news_prompt1', 'You have a feedback information, please check!', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35752', 'sys_authorization', 'Obtain a commercial license can enjoy the technical support service', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35753', 'sys_authorization1', 'Entry business', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35754', 'sys_authorization2', 'Understand business authorization', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35759', 'detection', 'Detection', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35764', 'recommended_tems', 'Recommended application', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35765', 'more_tems', 'More templates', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35766', 'usernametips', 'If a website or forum account, please register the same, because we are about to synchronize three platform account.', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35773', 'authorization_level', 'The authorization level', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35774', 'technical_support', 'For technical support', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35775', 'entry_authorization', 'Re entry authorization', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35780', 'title_description', 'Please enter a Title description', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35790', 'tab_settings', 'Product module tab settings', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35791', 'display_number', 'Tab to display the number of', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35792', 'corresponding_products', 'Tab content please fill in the content management corresponding products', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35793', 'tab_title1', 'Tab title', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35794', 'tab_title2', 'Tab two title', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35795', 'tab_title3', 'Tab three title', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35796', 'tab_title4', 'Tab four title', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35797', 'tab_title5', 'Tab five title', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35809', 'menu_settings', 'Is fixed at the bottom of the menu settings', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35810', 'settings_page', 'Click here to enter the settings page', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35811', 'height_setting', 'Height setting (width following interface width)', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35816', 'recommended_template', 'A recommended template', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35819', 'download_prompt', 'Download the ongoing operation of the page, please dont!', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35822', 'purchase_application', 'Purchase application effect only on the current web site', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('28313', 'systemconfiguration', '繫統配置', '1', '1', '0', '0', 'tc');
INSERT INTO `met_language` VALUES ('28314', 'sysadminUnread', '未讀信息', '1', '1', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28315', 'sysadminFeedbackInfo', '反饋信息', '1', '2', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28316', 'sysadminLeaveMessage', '在線留言', '1', '3', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28317', 'sysadminFriendlyLink', '友情鏈接', '1', '4', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28318', 'sysadminMember', '會員注冊', '1', '5', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28319', 'sysadminUserInfo', '用戶信息', '1', '6', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28320', 'sysadminUsername', '用戶名', '1', '7', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28321', 'sysadminLoginNum', '登錄次數', '1', '8', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28322', 'sysadminLoginTime', '登錄時間', '1', '9', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28323', 'sysadminDBVersion', 'Mysql版本', '1', '10', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28324', 'sysadminOfficialWebsite', '官方網站', '1', '11', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28325', 'sysadminHelp', '使用說明', '1', '12', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28326', 'sysadminHelp1', '第一步：在繫統設置中進行設置基本信息、語言設置、安全與效率等', '1', '13', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28327', 'sysadminHelp2', '第二步：在界麵風格中選擇網站模板風格並設置相關風格參數', '1', '14', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28328', 'sysadminHelp3', '第三步：在欄目配置中設置網站導航欄目及相關參數', '1', '15', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28329', 'sysadminHelp4', '第四步：在優化推廣中設置靜態頁麵、SEO參數及其他信息', '1', '16', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28330', 'sysadminHelp5', '第五步：在內容管理中添加網站內容、底部信息等', '1', '17', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28331', 'sysadminUseAgreement', '使用協議', '1', '18', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28332', 'sysadminAgreement1', '個人網站永久免費且不限製用途。<br>未獲商業授權之前，不得將MetInfo用於商業用途。', '1', '19', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28333', 'sysadminAgreement2', '未經官方授權的用戶，請務必保留網站底部 Powered by MetInfo 的字樣和鏈接。<br>經過官方授權後方可去除前台版權信息。', '1', '20', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28334', 'sysadminAgreement3', '未經官方授權的用戶，在使用過程中出現任何不可預料的後果，官方不承擔任何責任。', '1', '21', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28335', 'sysadminlicense', '查看完整用戶授權許可協議', '1', '22', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28336', 'metinfoversion', '繫統版本', '1', '23', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28337', 'reserved', '版權所有', '1', '24', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28338', 'copyright', '長沙米拓信息技術有限公司（MetInfo Inc.）', '1', '25', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28339', 'metcmsnew1', '已是最新版本', '1', '26', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28340', 'metcmsnew2', '有新版本可以升級', '1', '27', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28341', 'setbasicWebInfoSet', '網站基本信息設置', '1', '28', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28342', 'setbasicWebName', '網站名稱', '1', '29', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28343', 'setbasicWebSite', '網站網址', '1', '30', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28344', 'setbasicUploadMax', '文件上傳最大值', '1', '31', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28345', 'setbasicEnableFormat', '允許上傳的文件格式', '1', '32', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28346', 'setbasicTip5', '多種格式請用“|”隔開', '1', '33', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28347', 'setbasicTip6', '發件箱設置（站內所有郵件均由此郵箱發送，如會員密碼找回郵件等）', '1', '34', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28348', 'setbasicFromName', '發件人', '1', '35', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28349', 'setbasicToName', '收件人', '1', '36', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28350', 'setbasictopic', '主題', '1', '37', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28351', 'setbasicmainbody', '正文', '1', '38', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28352', 'setbasicok', '發件成功', '1', '39', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28353', 'setbasicno', '發件失敗', '1', '40', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28354', 'setbasicTip7', '所顯示的發件人姓名', '1', '41', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28355', 'setbasicEmailAccount', '郵箱賬號', '1', '42', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28356', 'setbasicTip8', '用於發送郵件的郵箱賬號', '1', '43', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28357', 'setbasicSMTPServer', 'SMTP', '1', '44', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28358', 'setbasicTip10', '如QQ郵箱為smtp.qq.com', '1', '45', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28359', 'setbasicSMTPPassword', '郵箱密碼', '1', '46', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28360', 'setbasicTip11', '用於發送郵件的郵箱密碼', '1', '47', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28361', 'langtitle', '語言配置', '1', '48', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28362', 'langweb', '網站語言', '1', '49', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28363', 'langadd', '添加新語言', '1', '50', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28364', 'langedit', '修改語言', '1', '51', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28365', 'langname', '語言名稱', '1', '52', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28366', 'langflag', '國旗標誌', '1', '53', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28367', 'langmark', '語言標識', '1', '54', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28368', 'langouturl', '單獨域名', '1', '55', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28369', 'langadmin', '後台語言', '1', '56', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28370', 'langpara', '參數修改', '1', '57', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28371', 'langwebeditor', '編輯參數', '1', '58', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28372', 'langeadminditor', '後台語言參數', '1', '59', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28373', 'langch', '簡繁體自動切換', '1', '60', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28374', 'langcnch', '簡體中文或繁體中文語言標識', '1', '61', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28375', 'langchok', '一般以鏈接形式顯示在前台右上角', '1', '62', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28376', 'langhome', '默認語言', '1', '63', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28377', 'langdefaultadmin', '後台默認語言', '1', '64', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28378', 'langadminok', '簡繁切換', '1', '65', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28379', 'langadminyes', '管理員在登錄前可以選擇後台語言', '1', '66', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28380', 'langurl', '站群功能', '1', '67', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28381', 'langsw', '語言切換', '1', '68', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28382', 'langurlinfo', '網站被訪問時默認展示的網站語言', '1', '69', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28383', 'langorderinfo', '不可以重複', '1', '70', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28384', 'langmarkinfo', '請用英文字母，如 cn ，不可以與其他語言標識重複', '1', '71', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28385', 'langbasic', '語言文件基於', '1', '72', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28386', 'langbasicinfo', '複製相應的後台語言文件', '1', '73', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28387', 'langouturlinfo', '訪問該域名程序將自動跳轉到此語言（需先做好域名解析綁定），或者做外部鏈接用', '1', '74', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28388', 'langnewwindows', '新窗口打開', '1', '75', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28389', 'langcopyfile', '複製文件失敗，請檢查文件是否存在', '1', '76', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28390', 'langnamenull', '語言名稱不能為空', '1', '77', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28391', 'langclose1', '隻開啟了一種語言，無法被關閉', '1', '78', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28392', 'langclose2', '默認語言無法被關閉', '1', '79', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28393', 'langnameorder', '不可以與其他語言排序重複', '1', '80', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28394', 'langnamerepeat', '語言標識不能重複', '1', '81', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28395', 'langone', '繫統隻有一種語言，不能被刪除！', '1', '82', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28396', 'langvalue', '值', '1', '83', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28397', 'langinfo', '注釋', '1', '84', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28398', 'langtype', '語言狀態', '1', '85', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28399', 'langshuom', '說明', '1', '86', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28400', 'setdbBackup', '數據與備份', '1', '87', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28401', 'setdbImport', '導入備份數據', '1', '88', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28402', 'setdbTable', '數據表', '1', '89', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28403', 'setdbItems', '記錄條數', '1', '90', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28404', 'setdbSize', '大小', '1', '91', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28405', 'setdbAll', '共', '1', '92', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28406', 'setdbEveryoneSize', '分卷大小', '1', '93', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28407', 'setdbStart', '開始備份數據', '1', '94', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28408', 'setdbFilename', '文件名', '1', '95', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28409', 'setdbsysver', '繫統版本', '1', '96', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28410', 'setdbFilesize', '文件大小', '1', '97', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28411', 'setdbTime', '備份時間', '1', '98', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28412', 'setdbNumber', '分卷數', '1', '99', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28413', 'setdbLack', '缺少分卷', '1', '100', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28414', 'setdbImportData', '導入', '1', '101', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28415', 'setdbDownload', '下載', '1', '102', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28416', 'setdbSelectTable', '請選擇要備份的數據表!', '1', '103', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28417', 'setdbTip2', '數據無法備份到服務器!請檢查', '1', '104', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28418', 'setdbTip3', '目錄是否可寫。', '1', '105', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28419', 'setdbTip4', '如果數據文件超出設置大小就會新建分卷。', '1', '106', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28420', 'setdbBackupFile', '備份文件', '1', '107', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28421', 'setdbWriteOK', '寫入成功!', '1', '108', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28422', 'setdbBackupOK', '數據庫備份完畢!', '1', '109', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28423', 'setdbDBFile', '數據庫文件', '1', '110', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28424', 'setdbImportOK', '導入成功', '1', '111', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28425', 'setdbImportcen', '，正在恢複數據...', '1', '112', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28426', 'setdbDBRestoreOK', '數據恢複成功', '1', '113', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28427', 'setdbNotExist', '文件不存在', '1', '114', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28428', 'setdbArchiveOK', '壓縮成功', '1', '115', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28429', 'lang_setdbArchiveNo', '空間分配內存資源不足，壓縮失敗，請聯繫空間商幫助壓縮！！！', '1', '116', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28430', 'setdbExtractOK', '解壓及恢複成功', '1', '117', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28431', 'setsafeadminname', '後台文件夾名稱', '1', '118', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28432', 'setsafeadminname1', '安全建議:', '1', '119', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28433', 'setsafeadminname1a', '修改網站後台文件夾名稱（默認為admin）;', '1', '120', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28434', 'setsafeadminname1b', '刪除欄目配置中的【網站管理】欄目;', '1', '121', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28435', 'setsafeadminname1c', '僅創始人可修改，不支持中文，當前後台網址：', '1', '122', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28436', 'setsafeinstall', '刪除安裝文件', '1', '123', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28437', 'setsafeupdate', '刪除升級文件', '1', '124', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28438', 'setsafeupdate1', '刪除後可以增強網站的安全性能', '1', '125', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28439', 'setsafeadmin', '後台登錄驗證碼', '1', '126', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28440', 'setsafemember', '前台提交驗證碼', '1', '127', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28441', 'setsafesq2text', '點擊', '1', '128', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28442', 'setsafesq3text', '清空', '1', '129', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28443', 'setsafesq4text', '目錄', '1', '130', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28444', 'setsafesq5text', '抱歉！該目錄沒有文件！', '1', '131', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28445', 'setfilename', '文件名稱', '1', '132', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28446', 'setfiletype', '類型', '1', '133', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28447', 'setfilesize', '文件大小', '1', '134', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28448', 'setfiletime', '上傳時間', '1', '135', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28449', 'setfileview', '查看', '1', '136', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28450', 'setfileno', '此文件夾下沒有文件！', '1', '137', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28451', 'setfilenourl', '找不到相應的文件！', '1', '138', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28452', 'setfiletext1', 'upload為上傳根目錄，201103為以年月分類的圖片文件夾，thumb為縮略圖文件夾，watermark為水印大圖文件夾', '1', '139', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28453', 'setfiletext2', '文件夾下共找到', '1', '140', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28454', 'setfiletext3', '個文件', '1', '141', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28455', 'setfiletext4', '文件夾及文件夾下的所有文件', '1', '142', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28456', 'authWelcome2', '買空間送授權促銷活動', '1', '143', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28457', 'authDifferentLicense', '商業版和免費版區別', '1', '144', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28458', 'authDifferent1', '如您將程序用於商業用途，請購買商業授權，否則我們將保留追究法律責任的權利', '1', '145', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28459', 'authDifferent2', '免費版僅限個人學習使用，功能沒有任何限製，商業用戶可以獲取專業的技術支持服務', '1', '146', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28460', 'authDifferent3', '免費版如去除【Powered by MetInfo】版權標識將不能正常運行！MetInfo官方並將追求相應的法律責任！', '1', '147', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28461', 'authDifferent4', '查看免費版與商業版的詳細功能及服務對比', '1', '148', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28462', 'authDetail', '查看詳細', '1', '149', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28463', 'authGetLicense', '獲取商業授權步驟', '1', '150', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28464', 'authGet1', '第一步、通過了解或試用後明確計劃購買MetInfo企業網站繫統商業授權', '1', '151', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28465', 'authGet2', '第二步、聯繫MetInfo或各地代理商獲取最優化的授權方案，並繳納費用', '1', '152', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28466', 'authGet3', '第三步、添加MetInfo技術支持QQ、MSN等，提交商業授權資料卡', '1', '153', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28467', 'authGet4', '第四步、使用官方提供的授權文件替換繫統相關文件，並在此輸入授權碼和密鑰', '1', '154', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28468', 'authQuery', '域名授權查詢', '1', '155', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28469', 'authSubmitQuery', '查詢授權情況', '1', '156', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28470', 'authDomain', '授權域名', '1', '157', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28471', 'authKey', '密鑰', '1', '158', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28472', 'authAuthorizedCode', '授權碼', '1', '159', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28473', 'authTip2', '您所輸入的商業注冊碼與域名不匹配！', '1', '160', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28474', 'authTip3', '您的域名沒有經過MetInfo企業網站管理繫統官方認證', '1', '161', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28475', 'authTip4', '您使用的MetInfo企業網站管理繫統為免費版，如您將其用於商業用途，請聯繫MetInfo官方進行授權，感謝您的使用！', '1', '162', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28476', 'authTip5', '授權域名：', '1', '163', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28477', 'authTip6', '網站名稱：', '1', '164', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28478', 'authTip7', '授權類型：', '1', '165', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28479', 'authTip8', '享有服務：', '1', '166', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28480', 'authTip9', '授權日期：', '1', '167', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28481', 'authTip10', '到期日期：', '1', '168', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28482', 'authTip11', '後台文件夾修改成功！', '1', '169', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28483', 'authTip12', '正在跳轉....請稍後！', '1', '170', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28484', 'authTip13', '未購買商業授權', '1', '171', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28485', 'filemaxsize', '文件已超出網站限製的最大值', '1', '172', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28486', 'setimgSet', '網站圖片設置', '1', '173', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28487', 'setimgWidth', '寬', '1', '174', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28488', 'setimgPixel', '像素', '1', '175', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28489', 'setimgHeight', '高', '1', '176', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28490', 'setimgdeleteimg', '自動刪除圖片', '1', '177', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28491', 'setimgdeleteimg1', '開啟後刪除信息時將自動刪除相應圖片', '1', '178', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28492', 'setimgWater', '自動生成', '1', '179', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28493', 'setimgWaterok', '開啟後添加大圖時將自動生成縮略圖', '1', '180', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28494', 'setimgrename', '自動重命名', '1', '181', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28495', 'setimgrename1', '對上傳的文件名自動進行重名名', '1', '182', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28496', 'setimgrename2', '重命名文件名稱有利於減少異常', '1', '183', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28497', 'setimgWatermark', '添加方式', '1', '184', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28498', 'setimgBigImg', '詳細大圖片添加', '1', '185', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28499', 'setimgThumb', '縮略片添加', '1', '186', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28500', 'setimgWatermarkType', '水印類型', '1', '187', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28501', 'setimgWordWatermark', '文字水印', '1', '188', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28502', 'setimgImgWatermark', '圖片水印', '1', '189', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28503', 'setimgImg', '縮略圖水印圖片', '1', '190', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28504', 'setimgImg2', '大圖水印圖片', '1', '191', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28505', 'setimgTip2', '僅支持.gif|.png格式', '1', '192', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28506', 'setimgWord', '水印文字', '1', '193', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28507', 'setimgTip3', '不支持中文（中文水印需要下載中文字體才能支持）', '1', '194', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28508', 'setimgWordSize', '縮略圖水印文字大小', '1', '195', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28509', 'setimgWordSize2', '大圖水印文字大小', '1', '196', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28510', 'setimgWordFont', '水印文字字體', '1', '197', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28511', 'setimgTip4', '請將字體文件放到後台管理目錄include/fonts/下', '1', '198', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28512', 'setimgWordAngle', '水印文字角度', '1', '199', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28513', 'setimgTip5', '水平為0', '1', '200', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28514', 'setimgWordColor', '水印文字顏色', '1', '201', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28515', 'setimgSelectColor', '選擇顏色', '1', '202', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28516', 'setimgWhite', '白色', '1', '203', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28517', 'setimgBlack', '黑色', '1', '204', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28518', 'setimgRed', '紅色', '1', '205', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28519', 'setimgYellow', '黃色', '1', '206', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28520', 'setimgGreen', '綠色', '1', '207', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28521', 'setimgOrange', '橙色', '1', '208', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28522', 'setimgPurple', '紫色', '1', '209', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28523', 'setimgBlue', '藍色', '1', '210', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28524', 'setimgBrown', '褐色', '1', '211', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28525', 'setimgGreen1', '粉綠', '1', '212', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28526', 'setimgGreen2', '淡綠', '1', '213', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28527', 'setimgGray1', '黃灰', '1', '214', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28528', 'setimgGreen3', '翠綠', '1', '215', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28529', 'setimgRed1', '綜紅', '1', '216', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28530', 'setimgRed2', '磚紅', '1', '217', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28531', 'setimgBlue1', '淡藍', '1', '218', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28532', 'setimgRed3', '暗紅', '1', '219', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28533', 'setimgRed4', '玫紅', '1', '220', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28534', 'setimgRed5', '紫紅', '1', '221', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28535', 'setimgYellow1', '桔黃', '1', '222', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28536', 'setimgYellow2', '軍黃', '1', '223', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28537', 'setimgGray2', '煙灰', '1', '224', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28538', 'setimgGray3', '深灰', '1', '225', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28539', 'setimgBlue2', '灰藍', '1', '226', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28540', 'setimgPosition', '水印位置', '1', '227', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28541', 'setimgMid', '中間', '1', '228', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28542', 'setimgLeftTop', '左上', '1', '229', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28543', 'setimgRightTop', '右上', '1', '230', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28544', 'setimgRightLow', '右下', '1', '231', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28545', 'setimgLeftLow', '左下', '1', '232', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28546', 'setimgTopMid', '頂中', '1', '233', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28547', 'setimgRightMid', '右中', '1', '234', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28548', 'setimgLowMid', '底中', '1', '235', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28549', 'setimgLeftMid', '左中', '1', '236', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28550', 'setimgmodule_tips', '縮略圖一般顯示在列表頁或首頁圖片展示', '1', '237', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28551', 'databackup1', '備份', '1', '238', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28552', 'databackup2', '恢複', '1', '239', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28553', 'databackup3', '下載', '1', '240', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28554', 'databackup4', '備份', '1', '241', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28555', 'databackup5', '自定義備份數據表', '1', '242', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28556', 'databackup6', '上傳文件夾備份', '1', '243', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28557', 'databackup7', '全部備份', '1', '244', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28558', 'databackup8', '壓縮整站', '1', '245', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28559', 'databackup9', '暫時沒有備份文件', '1', '246', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28560', 'dataexplain1', '目前沒有數據', '1', '247', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28561', 'dataexplain2', '可以上傳數據庫備份文件，支持sql或zip', '1', '248', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28562', 'dataexplain3', '自定義備份數據', '1', '249', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28563', 'dataexplain4', '正在備份，請耐心等待...', '1', '250', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28564', 'dataexplain5', '<span style=\"float:right;\">建議每月備份，占用少量空間</span>備份數據（不含上傳的文件）', '1', '251', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28565', 'dataexplain6', '<span style=\"float:right;\">一般不用備份，占用較大空間</span>備份用戶上傳的文件（圖片、文檔等）', '1', '252', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28566', 'dataexplain7', '<span style=\"float:right;\">一般在搬家時用，占用較大空間</span>備份數據和文件（數據庫、用戶文件、程序文件）', '1', '253', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28567', 'dataexplain8', '建議每月至少備份一次數據庫', '1', '254', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28568', 'dataexplain9', '上傳文件夾一般不用備份', '1', '255', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28569', 'dataexplain10', '數據庫備份', '1', '256', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28570', 'dataexplain11', '網站搬家', '1', '257', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28571', 'dataexplain12', '時需要用到整站壓縮。', '1', '258', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28572', 'upfiletips1', '查看文件列表', '1', '259', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28573', 'upfiletips2', '文件管理器', '1', '260', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28574', 'upfiletips3', '商業授權說明', '1', '261', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28575', 'upfiletips4', '商業授權錄入', '1', '262', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28576', 'upfiletips5', '商業授權查詢', '1', '263', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28577', 'upfiletips6', '錄入', '1', '264', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28578', 'upfiletips7', '基本信息', '1', '265', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28579', 'upfiletips8', '郵箱設置', '1', '266', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28580', 'upfiletips9', '網站LOGO', '1', '267', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28581', 'upfiletips10', '建議填寫檢測到的網址：', '1', '268', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28582', 'upfiletips11', '搜索引擎優化設置', '1', '269', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28583', 'upfiletips12', '網站關鍵詞', '1', '270', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28584', 'upfiletips13', '多個關鍵詞請用豎線|隔開，建議3到4個關鍵詞。', '1', '271', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28585', 'upfiletips14', '網站描述', '1', '272', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28586', 'upfiletips15', '100字以內', '1', '273', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28587', 'upfiletips16', '發送測試', '1', '274', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28588', 'upfiletips17', '點擊測試', '1', '275', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28589', 'upfiletips18', '縮略圖', '1', '276', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28590', 'upfiletips19', '水印', '1', '277', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28591', 'upfiletips20', '拉伸', '1', '278', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28592', 'upfiletips21', '留白', '1', '279', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28593', 'upfiletips22', '裁減', '1', '280', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28594', 'upfiletips23', '生成方式', '1', '281', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28595', 'upfiletips24', '前台的反饋、留言、友情鏈接和簡曆提交', '1', '282', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28596', 'upfiletips25', '回收站', '1', '283', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28597', 'upfiletips26', '內容管理-回收站', '1', '284', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28598', 'upfiletips27', '短信密碼找回', '1', '285', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28599', 'upfiletips28', '顯示在需要支付一定的短信費用(可以在企業應用中在線充值)', '1', '286', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28600', 'upfiletips29', '概況', '1', '287', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28601', 'upfiletips30', '訪問概況', '1', '288', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28602', 'upfiletips31', '服務與支持', '1', '289', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28603', 'upfiletips32', '交流論壇', '1', '290', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28604', 'upfiletips33', '專用主機', '1', '291', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28605', 'upfiletips34', '收費模板', '1', '292', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28606', 'upfiletips35', '商業授權', '1', '293', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28607', 'upfiletips36', '定製開發', '1', '294', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28608', 'upfiletips37', '新聞', '1', '295', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28609', 'upfiletips38', '服務器信息', '1', '296', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28610', 'upfiletips39', '程序名稱', '1', '297', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28611', 'upfiletips40', '簡稱', '1', '298', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28612', 'upfiletips41', '環境', '1', '299', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28613', 'upfiletips42', '在線升級', '1', '300', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28614', 'upfiletips43', '檢測更新', '1', '301', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28615', 'langexplain1', '對應前台網站頁麵部分文字，注意不要加特殊符號，點擊底部保存按鈕後生效。(參數名：值)', '1', '302', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28616', 'langexplain2', '語言標識', '1', '303', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28617', 'langexplain3', '基礎語言包', '1', '304', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28618', 'langexplain4', '將複製已經有的語言的基礎語言包，比如複製英文，則新語言的前台部分文字會是英文。', '1', '305', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28619', 'langexplain5', '在線下載', '1', '306', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28620', 'langexplain6', '本地語言', '1', '307', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28621', 'langexplain7', '從服務器遠程下載基礎語言包，基礎語言僅包含翻譯過的前台部分文字信息。', '1', '308', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28622', 'langexplain8', '在線下載已翻譯的語言包，本地語言則複製已添加語言的語言包', '1', '309', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28623', 'langexplain9', '不同步', '1', '310', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28624', 'langexplain10', '未指定同步語言！', '1', '311', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28625', 'langexplain11', '同步官方語言包，將會覆蓋當前語言數據，是否繼續', '1', '312', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28626', 'langexplain12', '該語言已經被關閉，請開啟後再設置默認語言。', '1', '313', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28627', 'langwebadd', '網站語言添加', '1', '314', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28628', 'langadminadd', '後台語言添加', '1', '315', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28629', 'langwebmanage', '網站語言', '1', '316', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28630', 'langadminmanage', '後台語言', '1', '317', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28631', 'langselect', '選擇語言', '1', '318', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28632', 'langselect1', '請選擇語言', '1', '319', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28633', 'lang1', '阿爾巴尼亞語', '1', '320', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28634', 'lang2', '阿拉伯語', '1', '321', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28635', 'lang3', '阿塞拜疆語', '1', '322', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28636', 'lang4', '愛爾蘭語', '1', '323', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28637', 'lang5', '愛沙尼亞語', '1', '324', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28638', 'lang6', '白俄羅斯語', '1', '325', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28639', 'lang7', '保加利亞語', '1', '326', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28640', 'lang8', '冰島語', '1', '327', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28641', 'lang9', '波蘭語', '1', '328', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28642', 'lang10', '波斯語', '1', '329', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28643', 'lang11', '布爾語(南非荷蘭語)', '1', '330', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28644', 'lang12', '丹麥語', '1', '331', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28645', 'lang13', '德語', '1', '332', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28646', 'lang14', '俄語', '1', '333', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28647', 'lang15', '法語', '1', '334', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28648', 'lang16', '菲律賓語', '1', '335', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28649', 'lang17', '芬蘭語', '1', '336', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28650', 'lang18', '格魯吉亞語', '1', '337', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28651', 'lang19', '古吉拉特語', '1', '338', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28652', 'lang20', '海地克裏奧爾語', '1', '339', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28653', 'lang21', '韓語', '1', '340', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28654', 'lang22', '荷蘭語', '1', '341', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28655', 'lang23', '加利西亞語', '1', '342', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28656', 'lang24', '加泰羅尼亞語', '1', '343', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28657', 'lang25', '捷克語', '1', '344', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28658', 'lang26', '克羅地亞語', '1', '345', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28659', 'lang27', '拉丁語', '1', '346', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28660', 'lang28', '拉脫維亞語', '1', '347', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28661', 'lang29', '立陶宛語', '1', '348', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28662', 'lang30', '羅馬尼亞語', '1', '349', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28663', 'lang31', '馬耳他語', '1', '350', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28664', 'lang32', '馬來語', '1', '351', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28665', 'lang33', '馬其頓語', '1', '352', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28666', 'lang34', '孟加拉語', '1', '353', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28667', 'lang35', '挪威語', '1', '354', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28668', 'lang36', '葡萄牙語', '1', '355', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28669', 'lang37', '日語', '1', '356', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28670', 'lang38', '瑞典語', '1', '357', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28671', 'lang39', '塞爾維亞語', '1', '358', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28672', 'lang40', '斯洛伐克語', '1', '359', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28673', 'lang41', '斯洛文尼亞語', '1', '360', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28674', 'lang42', '斯瓦希裏語', '1', '361', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28675', 'lang43', '泰語', '1', '362', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28676', 'lang44', '土耳其語', '1', '363', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28677', 'lang45', '威爾士語', '1', '364', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28678', 'lang46', '烏克蘭語', '1', '365', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28679', 'lang47', '希伯來語', '1', '366', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28680', 'lang48', '希臘語', '1', '367', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28681', 'lang49', '西班牙的巴斯克語', '1', '368', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28682', 'lang50', '西班牙語', '1', '369', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28683', 'lang51', '匈牙利語', '1', '370', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28684', 'lang52', '亞美尼亞語', '1', '371', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28685', 'lang53', '意大利語', '1', '372', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28686', 'lang54', '意第緒語', '1', '373', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28687', 'lang55', '印地語', '1', '374', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28688', 'lang56', '印度的卡納達語', '1', '375', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28689', 'lang57', '印度的泰盧固語', '1', '376', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28690', 'lang58', '印度的泰米爾語', '1', '377', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28691', 'lang59', '烏爾都語', '1', '378', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28692', 'lang60', '印尼語', '1', '379', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28693', 'lang61', '英語', '1', '380', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28694', 'lang62', '越南語', '1', '381', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28695', 'lang63', '中文(繁體)', '1', '382', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28696', 'lang64', '中文(簡體)', '1', '383', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28697', 'password1', '請選擇找回密碼的方式：', '1', '384', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28698', 'password2', '請輸入您的用戶名或手機號碼，然後點下一步，您會收到一個短信校驗碼。', '1', '385', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28699', 'password3', '請輸入您的用戶名或手機號碼：', '1', '386', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28700', 'password4', '請輸入您的用戶名或電子郵箱地址。您會收到一封包含創建新密碼鏈接的電子郵件。', '1', '387', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28701', 'password5', '請輸入您的用戶名或電子郵箱地址：', '1', '388', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28702', 'password6', '沒有找到該用戶的手機號碼，請通過其它方式找回密碼', '1', '389', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28703', 'password7', '沒有找到該用戶', '1', '390', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28704', 'password8', '沒有找到對應該手機的用戶，請通過其它方式找回密碼', '1', '391', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28705', 'password9', '您請求重新設置密碼，效驗碼', '1', '392', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28706', 'password10', '序號', '1', '393', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28707', 'password11', '請輸入您手機接受到的短信校驗碼，然後點下一步。', '1', '394', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28708', 'password12', '經過網關時，網絡通訊異常可能會造成短信丟失，或者您會延時收到短信，請您耐心等待一下或稍後再試一下。', '1', '395', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28709', 'password13', '沒有開啟短信找回密碼功能', '1', '396', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28710', 'password14', '沒有找到該用戶的郵箱地址，請通過其它方式找回密碼', '1', '397', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28711', 'password15', '請輸入校驗碼', '1', '398', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28712', 'password16', '驗證成功！請設置您新的密碼。', '1', '399', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28713', 'password17', '校驗碼錯誤次數太多，請重新驗證！', '1', '400', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28714', 'password18', '校驗碼錯誤，請重試！', '1', '401', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28715', 'password19', '數據錯誤，請重試！', '1', '402', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28716', 'password20', '下一步', '1', '403', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28717', 'password21', '返回登錄', '1', '404', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28718', 'password22', '手機號碼', '1', '405', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28719', 'password23', '請輸入校驗碼(6位數字)：', '1', '406', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28720', 'password24', '用戶名：', '1', '407', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28721', 'password25', '新密碼：', '1', '408', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28722', 'password26', '再輸入：', '1', '409', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28723', 'password27', '用手機號碼找回', '1', '410', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28724', 'password28', '短信資費說明', '1', '411', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28725', 'password29', '用電子郵箱找回', '1', '412', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28726', 'password30', '請確保後台郵箱服務器設置正確', '1', '413', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28727', 'temexists1', '已經存在該風格', '1', '414', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28728', 'temexists2', '該風格正在被使用，請先切換至其它風格後再刪除！', '1', '415', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28729', 'fileerr1', '打開配置文件失敗！不存在該文件或者沒有可寫的權限', '1', '416', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28730', 'metadmintext1', '您修改了縮略圖尺寸，為了防止以前上傳的圖片變形，請到內容管理-批量操作-批量縮略圖，重新生成縮略圖。', '1', '417', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28731', 'about', '關於我們', '1', '418', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28732', 'setbasicSMTPPort', '發送端口', '1', '419', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28733', 'setbasicSMTPWay', '發送方式', '1', '420', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28734', 'setbasicTip12', '用於郵件發送端口（谘詢郵箱服務商獲得，TLS一般為25，SSL一般為465）', '1', '421', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28735', 'setbasicTip13', '默認郵箱服務方式為TLS（谘詢空間商獲得）<br>如果使用TLS方式25端口無法發送郵件，請嚐試使用SSL方式465端口發件', '1', '422', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28736', 'automatic_upgrade_mark', '開啟後如果有漏洞補丁或BUG補丁發布，程序會自動下載並修複', '1', '423', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28737', 'automatic_upgrade', '漏洞自動修複', '1', '424', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28738', 'authTip14', '服務器驗證失敗', '1', '425', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28739', 'shortcut', '設置常用功能', '1', '426', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28740', 'langtips1', '當前後台管理的網站語言：', '1', '427', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28741', 'langtips2', '點擊切換到網站語言：', '1', '428', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('28742', 'interfacestyle', '界麵風格', '1', '2', '0', '0', 'tc');
INSERT INTO `met_language` VALUES ('28743', 'setskinAdd', '添加模板', '1', '1', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28744', 'setskinListPage', '列表頁', '1', '2', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28745', 'setskinNumOfPage', '每頁顯示', '1', '3', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28746', 'setskinDefault', '默認風格', '1', '4', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28747', 'setskinnews', '最新信息', '1', '5', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28748', 'setskinnews1', '最近', '1', '6', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28749', 'setskinnews2', '天內發表的信息顯示', '1', '7', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28750', 'setskinnews3', '（需要前台模板支持）', '1', '8', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28751', 'setskinhot', '熱門信息', '1', '9', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28752', 'setskinhot1', '點擊次數超過', '1', '10', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28753', 'setskinhot2', '次被點擊的信息顯示', '1', '11', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28754', 'setskinhot3', '（需要前台模板支持）', '1', '12', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28755', 'setskindatelist', '時間顯示格式', '1', '13', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28756', 'setskindatecontent', '時間顯示格式', '1', '14', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28757', 'setskinpage', '翻頁樣式', '1', '15', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28758', 'setskinproduct1', '顯示欄目下所有信息列表', '1', '16', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28759', 'setskinproduct2', '顯示當前欄目下級欄目列表', '1', '17', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28760', 'setskinimgdetail', '展示圖片風格', '1', '18', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28761', 'infoNoTem', '該模板沒有相關的配置說明！', '1', '19', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28762', 'setpnorder', '上一條下一條翻頁範圍', '1', '20', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28763', 'settopcolumns', '一級欄目', '1', '21', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28764', 'setequivalentcolumns', '當前欄目', '1', '22', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28765', 'setskincontentxian', '頁腳顯示', '1', '23', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28766', 'skinDocument', '文件夾名稱', '1', '24', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28767', 'skinIntroduce', '風格描述', '1', '25', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28768', 'skinAddNew', '添加新模板', '1', '26', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28769', 'skinname', '風格名稱', '1', '27', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28770', 'skinadd', '風格添加', '1', '28', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28771', 'skinaddinfo1', '瀏覽上傳後會自動獲取文件夾名稱(手動上傳需傳至繫統根目錄下的templates文件夾中)', '1', '29', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28772', 'skinset', '參數設置', '1', '30', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28773', 'skinbaseset', '基本設置', '1', '31', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28774', 'skintypeset', '模板設置', '1', '32', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28775', 'skintemplatename', '模板名稱', '1', '33', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28776', 'skintemplatedescription', '模板描述', '1', '34', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28777', 'skinup', '模板上傳', '1', '35', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28778', 'skinexplain1', '上傳後記得點保存，僅支持zip格式', '1', '36', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28779', 'skinexplain2', '前台將更換為該風格', '1', '37', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28780', 'skinmore', '獲取更多模板風格', '1', '38', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28781', 'skinuse', '立即啟用', '1', '39', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28782', 'skinusenow', '啟用', '1', '40', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28783', 'skinused', '已啟用', '1', '41', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28784', 'skininfo', '信息', '1', '42', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28785', 'skinstyle', '風格', '1', '43', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28786', 'skindescription', '描述', '1', '44', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28787', 'skinnumber', '編號', '1', '45', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28788', 'skinsetup', '模板設置', '1', '46', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28789', 'skinindex', '設為首頁和收藏本站', '1', '47', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28790', 'skinindexok', '顯示', '1', '48', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28791', 'skinindexno', '隱藏', '1', '49', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28792', 'skinindexexplain1', '從4.0版本升級到5.0的用戶，設置為隱藏後，如發現前台對應位置出現多餘的豎線，請到官網重新下載對應模板。', '1', '50', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28793', 'skinunder', '下', '1', '51', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28794', 'printpage', '打印此頁', '1', '52', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28795', 'closebutton', '關閉按鈕', '1', '53', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28796', 'indexsetnum', '顯示數', '1', '54', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28797', 'indexsetFriendly', '友情鏈接', '1', '55', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28798', 'indexsetImgLink', '圖片鏈接顯示數', '1', '56', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28799', 'indexsetWordLink', '文字鏈接顯示數', '1', '57', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28800', 'indexsetIntroduce', '首頁簡介內容', '1', '58', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28801', 'indexsetskin', '首頁風格', '1', '59', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28802', 'setflashBelong', '所屬欄目', '1', '60', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28803', 'setflashName', '圖片標題', '1', '61', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28804', 'setflashMode3', '單張圖片', '1', '62', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28805', 'setflashSize', 'Banner尺寸', '1', '63', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28806', 'setflashWidth', '寬', '1', '64', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28807', 'setflashPixel', '像素', '1', '65', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28808', 'setflashHeight', '高', '1', '66', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28809', 'setflashImgUrl', '圖片地址', '1', '67', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28810', 'setflashImgHref', '鏈接地址', '1', '68', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28811', 'setflashUrl', '圖片/Flash地址', '1', '69', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28812', 'setflashBg', 'Flash背景', '1', '70', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28813', 'setflashset', 'FLASH 配置', '1', '71', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28814', 'setflashimg', '圖片輪播樣式', '1', '72', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28815', 'setflashimgtext', '樣式', '1', '73', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28816', 'setflashcolumn', '應用欄目', '1', '74', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28817', 'flashMode', '展示方式', '1', '75', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28818', 'flashMode1', '圖片輪播', '1', '76', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28819', 'flashMode2', 'Flash動畫', '1', '77', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28820', 'flashMode3', '全部圖片', '1', '78', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28821', 'flashHome', '網站首頁', '1', '79', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28822', 'flashGlobal', '默認設置', '1', '80', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28823', 'flashmodify', '請在', '1', '81', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28824', 'flashmodify1', '中修改', '1', '82', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28825', 'indexflashexplain1', 'Banner一般位於網站導航下方，可以每個欄目顯示不同的Banner，也可以統一設置', '1', '83', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28826', 'indexflashexplain2', '跳轉到Banner設置', '1', '84', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28827', 'indexflashexplain3', '對應欄目的Banner尺寸', '1', '85', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28828', 'indexflashexplain4', '圖片輪播展示方式的1和3不支持PNG圖片', '1', '86', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28829', 'indexflashexplain5', '一般不用設置', '1', '87', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28830', 'indexflashexplain6', '暫時沒有設置Banner的欄目，請設置後再編輯。', '1', '88', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28831', 'indexflashexplain7', '對應欄目的Banner模式', '1', '89', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28832', 'indexflashexplain9', '請在前麵加 http://', '1', '90', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28833', 'indexflashaddimg', '添加圖片', '1', '91', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28834', 'indexflashaddflash', '添加Banner', '1', '92', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28835', 'setskinOnline', '在線交流方式', '1', '93', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28836', 'setskinOnline1', '固定於頁麵左邊', '1', '94', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28837', 'setskinOnline2', '居左隨屏幕滾動', '1', '95', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28838', 'setskinOnline3', '居右隨屏幕滾動', '1', '96', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28839', 'setskinOnline4', '居左時滾動位置', '1', '97', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28840', 'setskinOnline5', '距離瀏覽器左邊', '1', '98', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28841', 'setskinOnline6', '距離瀏覽器頂部', '1', '99', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28842', 'setskinOnline7', '距離瀏覽器右邊', '1', '100', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28843', 'setskinOnline8', '居右時滾動位置', '1', '101', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28844', 'setskinOnline9', '固定於頁麵右邊', '1', '102', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28845', 'onlineTitle', '客服列表', '1', '103', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28846', 'onlineAdd', '添加新客服', '1', '104', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28847', 'onlineName', '客服名稱', '1', '105', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28848', 'onlinetaobao', '淘寶旺旺', '1', '106', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28849', 'onlinealibaba', '阿裏旺旺', '1', '107', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28850', 'onlineblue', '淺藍', '1', '108', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28851', 'onlinered', '淡紅', '1', '109', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28852', 'onlinepurple', '紫色', '1', '110', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28853', 'onlinegreen', '綠色', '1', '111', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28854', 'onlinegray', '灰色', '1', '112', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28855', 'onlineskintype', '漂浮風格', '1', '113', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28856', 'onlineskin', '風格', '1', '114', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28857', 'onlineimg', '圖標', '1', '115', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28858', 'onlinetel', '電話或其他說明', '1', '116', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28859', 'onlinetel1', '支持HTML語言，可加入第三方代碼', '1', '117', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28860', 'indexonlieicon', '更改圖標', '1', '118', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28861', 'indexonlieimg', '選擇圖片風格', '1', '119', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28862', 'indexonlieok', '確認', '1', '120', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28863', 'indexonlieno', '取消', '1', '121', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28864', 'onlieqq', 'QQ', '1', '122', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28865', 'onliemsn', 'MSN', '1', '123', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28866', 'onlineskype', 'SKYPE', '1', '124', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28867', 'skinerr1', '如果隻有一張展示圖片，設置樣式將不會生效', '1', '125', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28868', 'skinerr2', '更多模板', '1', '126', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28869', 'skinerr3', '請選擇', '1', '127', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28870', 'tmptips', '模板配置說明', '1', '128', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('28871', 'columnconfiguration', '欄目配置', '1', '3', '0', '0', 'tc');
INSERT INTO `met_language` VALUES ('28872', 'modout', '外部模塊', '1', '1', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28873', 'mod1', '簡介模塊', '1', '2', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28874', 'mod2', '文章模塊', '1', '3', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28875', 'mod3', '產品模塊', '1', '4', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28876', 'mod4', '下載模塊', '1', '5', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28877', 'mod5', '圖片模塊', '1', '6', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28878', 'mod6', '招聘模塊', '1', '7', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28879', 'mod7', '留言繫統', '1', '8', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28880', 'mod8', '反饋繫統', '1', '9', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28881', 'mod9', '友情鏈接', '1', '10', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28882', 'mod10', '會員中心', '1', '11', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28883', 'mod11', '全站搜索', '1', '12', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28884', 'mod12', '網站地圖', '1', '13', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28885', 'mod100', '產品列表', '1', '14', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28886', 'mod101', '圖片列表', '1', '15', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28887', 'modFoldername', '欄目文件夾不能為空', '1', '16', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28888', 'modModule', '欄目所屬模塊不能為空', '1', '17', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28889', 'modOuturl', '鏈接地址不能為空', '1', '18', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28890', 'modClass1', '一級欄目', '1', '19', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28891', 'modClass2', '二級欄目', '1', '20', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28892', 'modClass3', '三級欄目', '1', '21', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28893', 'modFiledir', '創建文件夾失敗', '1', '22', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28894', 'modFilenameok', '靜態頁麵名已存在', '1', '23', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28895', 'modmodulewyok', '該模塊已經被使用', '1', '24', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28896', 'wapcontentcom', '勾選則允許在wap頁麵中顯示', '1', '25', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28897', 'modimgurl', '圖片地址', '1', '26', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28898', 'modimgauto', '自動生成縮略圖', '1', '27', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28899', 'modimgurls', '縮略圖', '1', '28', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28900', 'modpublish', '發布人', '1', '29', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28901', 'modhits', '點擊次數越多，熱門信息中排名越靠前', '1', '30', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28902', 'modtimenow', '當前時間為：', '1', '31', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28903', 'modtimenow1', '注意不要改變格式。', '1', '32', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28904', 'modsearch', '請輸入信息標題關鍵字', '1', '33', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28905', 'modnull', '留空', '1', '34', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28906', 'downloadaccess', '前台下載權限', '1', '35', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28907', 'downloadurl', '下載地址', '1', '36', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28908', 'downloadsize', '文件大小', '1', '37', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28909', 'addinfo', '添加內容', '1', '38', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28910', 'editinfo', '修改內容', '1', '39', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28911', 'category', '所屬欄目', '1', '40', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28912', 'contentinfo', '詳細內容', '1', '41', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28913', 'contentinfo1', '拓展內容一', '1', '42', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28914', 'contentinfo2', '拓展內容二', '1', '43', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28915', 'contentinfo3', '拓展內容三', '1', '44', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28916', 'contentinfo4', '拓展內容四', '1', '45', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28917', 'columnname', '欄目名稱', '1', '46', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28918', 'columnnamemark', '欄目修飾名稱', '1', '47', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28919', 'columnnamemarkinfo', '其它設置（根據模板配置說明設置）', '1', '48', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28920', 'columnnav', '導航欄顯示', '1', '49', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28921', 'columnmodule', '所屬模塊', '1', '50', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28922', 'columndocument', '目錄名稱', '1', '51', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28923', 'columnmark1', '標識', '1', '52', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28924', 'columnctitle', '欄目標題(title)', '1', '53', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28925', 'columnPreName', '上級欄目名稱', '1', '54', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28926', 'columnorder', '同級欄目排序', '1', '55', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28927', 'columnmark', '欄目標識', '1', '56', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28928', 'columnnew2', '添加子欄目', '1', '57', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28929', 'columnnew3', '添加三級欄目', '1', '58', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28930', 'columntip1', '請參考', '1', '59', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28931', 'columnnav1', '不顯示', '1', '60', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28932', 'columnnav2', '頭部主導航條', '1', '61', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28933', 'columnnav3', '尾部導航條', '1', '62', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28934', 'columnnav4', '都顯示', '1', '63', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28935', 'columnnewwindow', '新窗口打開', '1', '64', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28936', 'columnOutLink', 'http://', '1', '65', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28937', 'columncontentorder', '列表頁排序方式', '1', '66', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28938', 'columnReverseSort', '倒序', '1', '67', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28939', 'columnaddOrder', '順序', '1', '68', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28940', 'columnhtmlname', '靜態頁麵名稱', '1', '69', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28941', 'columnSEO', '搜索引擎優化設置(seo)', '1', '70', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28942', 'columnhref', '鏈接地址', '1', '71', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28943', 'columntip7', '鏈接到外部網站需要加http頭。如：http://bbs.metinfo.cn/', '1', '72', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28944', 'columnImg1', '標識圖片', '1', '73', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28945', 'columnImg2', '欄目圖片', '1', '74', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28946', 'columnshow', '添加內容', '1', '75', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28947', 'columntip8', '設置為不允許後欄目鏈接將跳轉到第一個子級欄目', '1', '76', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28948', 'columntip11', '展開所有子欄目', '1', '77', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28949', 'columntip12', '隱藏所有子欄目', '1', '78', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28950', 'columntip13', '複製反饋繫統配置文件失敗，請檢測文件是否存在！', '1', '79', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28951', 'columntip14', '為空則使用靜態頁麵設置中設置的URL構成方式，不要加html後綴，不支持特殊字符', '1', '80', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28952', 'columnerr1', '目錄名隻能是數字或字母', '1', '81', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28953', 'columnerr2', '目錄名稱不能重名', '1', '82', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28954', 'columnerr3', '每個語言網站下隻能有一個', '1', '83', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28955', 'columnerr4', '目錄名稱已存在，可能已被使用', '1', '84', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28956', 'columnerr5', '您確認要移動該欄目嗎？', '1', '85', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28957', 'columnerr6', '此操作將會合並欄目,您確認要移動該欄目嗎？', '1', '86', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28958', 'columnerr7', '升為一級欄目', '1', '87', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28959', 'columnerr8', '設置為不允許添加內容的欄目必須有子級欄目', '1', '88', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28960', 'columnexplain1', '關聯後下麵選項將顯示對應產品欄目下的產品名稱', '1', '89', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28961', 'columnexplain2', '設置好選項後，在內容管理中可以直接選擇對應選項。', '1', '90', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28962', 'columnexplain3', '參數一般用於展示信息的屬性，如價格、型號等，設置後在添加內容的時候可以填寫對應參數值。', '1', '91', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28963', 'columnexplain4', '設置欄目鏈接是否在新窗口打開', '1', '92', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28964', 'columnexplain5', '關閉後訪客無法提交友情鏈接申請', '1', '93', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28965', 'columnexplain6', '將會複製所選的表單選項和表單設置', '1', '94', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28966', 'columnexplain7', '作用於該欄目在前台對應位置的顯示', '1', '95', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28967', 'columnexplain8', '附加內容會顯示在此欄目下所有內容頁最後，用於描述同樣的內容。', '1', '96', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28968', 'columnmove', '移動欄目', '1', '97', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28969', 'columnmove1', '移動', '1', '98', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28970', 'columnmove2', '至', '1', '99', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28971', 'columnmove3', '移動，下級欄目超過1和下級欄目有關聯欄目的無法移動', '1', '100', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28972', 'columnmove4', '升為頂級欄目', '1', '101', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28973', 'columnmove5', '新建文件夾名', '1', '102', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28974', 'columnmeditor', '編輯欄目', '1', '103', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28975', 'columnmallow', '允許', '1', '104', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28976', 'columnmnotallow', '不允許', '1', '105', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28977', 'columnmlink', '友情鏈接申請：', '1', '106', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28978', 'columnmwap', 'wap顯示', '1', '107', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28979', 'columnmfeedback', '反饋表單設置', '1', '108', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28980', 'columnmfeedback1', '複製表單', '1', '109', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28981', 'columnmfeedback2', '請選擇表單', '1', '110', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28982', 'columnmfeedback3', '點擊開始複製', '1', '111', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28983', 'columnmfeedback4', '開始複製', '1', '112', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28984', 'columnmfeedback5', '自定義表單設置', '1', '113', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28985', 'columnmfeedback6', '自定義反饋表單', '1', '114', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28986', 'columnmfeedback7', '設置反饋表單', '1', '115', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28987', 'columnmappend', '附加內容：', '1', '116', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28988', 'columnmore', '更多', '1', '117', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28989', 'columnmtitle', '頁麵Title', '1', '118', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28990', 'parametertype', '字段類型', '1', '119', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28991', 'parameteradd', '添加新字段', '1', '120', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28992', 'parameter1', '簡短', '1', '121', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28993', 'parameter2', '下拉', '1', '122', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28994', 'parameter3', '文本', '1', '123', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28995', 'parameter4', '多選', '1', '124', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28996', 'parameter5', '附件', '1', '125', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28997', 'parameter6', '單選', '1', '126', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28998', 'allcategory', '所有欄目', '1', '127', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('28999', 'parameterMust', '是否必填', '1', '128', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('29000', 'parameternameexist', '菜單名稱已經存在', '1', '129', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('29001', 'listTitle', '設置選項', '1', '130', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('29002', 'listAddList', '添加新選項', '1', '131', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('29003', 'listproductre', '關聯產品', '1', '132', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('29004', 'listproductreok', '不關聯', '1', '133', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('29005', 'ctitleinfo', '為空則使用SEO參數設置中設置的title構成方式', '1', '134', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('29006', 'copyotherlang1', '複製到其他語言', '1', '135', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('29007', 'copyotherlang2', '複製內容', '1', '136', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('29008', 'copyotherlang3', '請選擇語言！', '1', '137', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('29009', 'copyotherlang4', '欄目在複製語言中已經存在，請直接複製內容', '1', '138', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('29010', 'copyotherlang5', '二級，三級欄目不能單獨複製，請連同一級欄目一起複製，或提升為一級欄目', '1', '139', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('29011', 'mod2add', '添加文章', '1', '140', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('29012', 'mod3add', '添加產品', '1', '141', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('29013', 'mod4add', '添加下載', '1', '142', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('29014', 'mod5add', '添加圖片', '1', '143', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('29015', 'mod6add', '發布職位', '1', '144', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('29016', 'mod1content', '管理簡介', '1', '145', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('29017', 'mod2content', '管理文章', '1', '146', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('29018', 'mod3content', '管理產品', '1', '147', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('29019', 'mod4content', '管理下載', '1', '148', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('29020', 'mod5content', '管理圖片', '1', '149', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('29021', 'mod6content', '查看簡曆', '1', '150', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('29022', 'mod7content', '查看留言', '1', '151', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('29023', 'mod8content', '查看反饋', '1', '152', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('29024', 'contentmanagement', '內容管理', '1', '4', '0', '0', 'tc');
INSERT INTO `met_language` VALUES ('29025', 'article1', '可選屬性', '1', '1', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29026', 'article2', '圖片(需模板支持)', '1', '2', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29027', 'article3', 'wap顯示', '1', '3', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29028', 'article4', '排序數值越大越靠前', '1', '4', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29029', 'article5', '複製或移動後請手動生成相應欄目和內容靜態頁麵', '1', '5', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29030', 'article6', '參數設置', '1', '6', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29031', 'setfootVersion', '版權信息', '1', '7', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29032', 'setfootAddressCode', '地址郵編', '1', '8', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29033', 'setfootContact', '聯繫方式', '1', '9', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29034', 'setfootOther', '其他信息', '1', '10', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29035', 'setfootstat', '底部代碼', '1', '11', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29036', 'setotherItemSet', '其他內容配置', '1', '12', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29037', 'setotherTip1', '請根據‘模板配置導航’相關說明進行配置，如開啟靜態頁麵，修改後需要生成全部靜態頁麵。', '1', '13', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29038', 'setotherTip2', '該字段沒有啟用', '1', '14', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29039', 'jobposition', '招聘職位', '1', '15', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29040', 'jobnum', '招聘人數', '1', '16', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29041', 'jobaddress', '工作地點', '1', '17', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29042', 'joblife', '有效時間', '1', '18', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29043', 'jobpublish', '發布日期', '1', '19', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29044', 'jobCV', '簡曆', '1', '20', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29045', 'jobtip1', '人 （留空為不限）', '1', '21', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29046', 'jobdeal', '工資待遇', '1', '22', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29047', 'jobnow', '今天是', '1', '23', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29048', 'jobtip2', '注意不要改變格式。', '1', '24', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29049', 'jobtip3', '天 （留空為不限）', '1', '25', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29050', 'cvPosition', '應聘職位', '1', '26', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29051', 'cvName', '應聘者身份', '1', '27', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29052', 'cvAddtime', '提交時間', '1', '28', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29053', 'cvTip4', '職位已經被刪除', '1', '29', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29054', 'cveditorTitle', '查看簡曆', '1', '30', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29055', 'josAlways', '不限', '1', '31', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29056', 'cvincTip2', '郵件接收方式', '1', '32', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29057', 'cvincTip3', '統一設置', '1', '33', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29058', 'cvincTip4', '單獨職位', '1', '34', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29059', 'cvincTip5', '如設置為單獨職位，將發送到給每個職位設置的郵箱地址', '1', '35', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29060', 'cvincAcceptMail', '簡曆接收郵箱', '1', '36', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29061', 'cvincAcceptType', '簡曆接收方式', '1', '37', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29062', 'cvsha', '篩選', '1', '38', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29063', 'cvall', '全部', '1', '39', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29064', 'cvyd', '已讀', '1', '40', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29065', 'cvwd', '未讀', '1', '41', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29066', 'cvemail', '簡曆接受郵箱', '1', '42', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29067', 'cvmanagement', '簡曆信息管理', '1', '43', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29068', 'cvset', '簡曆表單設置', '1', '44', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29069', 'jobtip5', '投遞簡曆後繫統會自動發送一封郵件到接收郵箱', '1', '45', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29070', 'jobtip8', '圖片字段名', '1', '46', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29071', 'jobtip9', '簡曆照片，以便在郵件中能看到應聘者上傳的照片。', '1', '47', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29072', 'jobmanagement', '招聘職位管理', '1', '48', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29073', 'jobsetname', '請選擇字段名', '1', '49', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29074', 'fdincTitle', '反饋繫統設置', '1', '50', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29075', 'fdincName', '反饋表單名稱', '1', '51', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29076', 'fdincTime', '防刷新時間', '1', '52', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29077', 'fdincTip4', '秒，同一IP2次提交的最小間隔時間', '1', '53', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29078', 'fdincSlash', '敏感字符過濾', '1', '54', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29079', 'fdincTip5', '多個字符請用\"|\"隔開', '1', '55', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29080', 'fdincClassName', '信息分類字段名', '1', '56', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29081', 'fdincTip6', '用於獲取用戶反饋的類型。字段類型必須為“簡短”', '1', '57', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29082', 'fdincAcceptType', '信息接收方式', '1', '58', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29083', 'fdincAccept', '僅郵件接收', '1', '59', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29084', 'fdincTip7', '僅後台讀取', '1', '60', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29085', 'fdincTip8', '發送郵件並寫入數據', '1', '61', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29086', 'fdincAcceptMail', '反饋郵件接收郵箱', '1', '62', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29087', 'fdincTip9', '多個郵箱請用\"|\"隔開', '1', '63', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29088', 'fdincAuto', '郵件回複', '1', '64', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29089', 'fdincTip10', '勾選後將自動向提交表單的用戶回複郵件', '1', '65', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29090', 'fdincEmailName', 'Email字段名', '1', '66', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29091', 'fdincTip11', '用於獲取用戶的郵箱地址，以便回複郵件。字段類型必須為“簡短”', '1', '67', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29092', 'fdincFeedbackTitle', '回複郵件標題', '1', '68', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29093', 'fdincAutoFbTitle', '自動回複郵件的標題', '1', '69', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29094', 'fdincAutoContent', '回複郵件內容', '1', '70', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29095', 'feedbackClass', '信息狀態', '1', '71', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29096', 'feedbackClasp', '信息類別', '1', '72', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29097', 'feedbackClass1', '所有信息', '1', '73', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29098', 'feedbackClass2', '未閱讀信息', '1', '74', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29099', 'feedbackClass3', '已閱讀信息', '1', '75', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29100', 'feedbackShowAll', '查看全部', '1', '76', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29101', 'feedbackID', '反饋者身份', '1', '77', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29102', 'feedbackTime', '提交時間', '1', '78', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29103', 'feedbackTip2', '導出EXCEL表', '1', '79', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29104', 'feedbackTip4', '全部導出', '1', '80', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29105', 'feedbackExport', '導出', '1', '81', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29106', 'feedbackAccess0', '遊客', '1', '82', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29107', 'fdeditorInterest', '感興趣產品', '1', '83', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29108', 'fdeditorTime', '反饋提交時間', '1', '84', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29109', 'fdeditorFrom', '來源頁麵地址', '1', '85', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29110', 'fdeditorRecord', '編輯記錄', '1', '86', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29111', 'feedbackview', '查看反饋信息', '1', '87', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29112', 'feedbacksubmit', '反饋提交開啟關閉', '1', '88', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29113', 'feedbackexplain1', '頁麵title名稱，默認為該欄目名稱', '1', '89', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29114', 'feedbackauto', '郵件回複設置', '1', '90', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29115', 'messageincTitle', '留言繫統設置', '1', '91', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29116', 'messageincShow', '顯示方式', '1', '92', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29117', 'messageincTip3', '客戶留言後需要在後台回複審核才顯示', '1', '93', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29118', 'messageincSend', '是否發送郵件', '1', '94', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29119', 'messageincTip4', '是否將客戶留言自動發生到指定郵箱', '1', '95', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29120', 'messageTitle', '留言信息管理', '1', '96', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29121', 'messageClass', '留言信息分類', '1', '97', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29122', 'messageClass1', '所有信息', '1', '98', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29123', 'messageClass2', '未回複信息', '1', '99', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29124', 'messageClass3', '已回複信息', '1', '100', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29125', 'messageClass4', '未審核信息', '1', '101', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29126', 'messageClass5', '已審核信息', '1', '102', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29127', 'messageTel', '電話', '1', '103', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29128', 'messageReply', '審核', '1', '104', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29129', 'messageID', '留言者身份', '1', '105', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29130', 'messageTime', '提交時間', '1', '106', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29131', 'messageeditorContact', '其他聯繫方式', '1', '107', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29132', 'messageeditorContent', '留言內容', '1', '108', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29133', 'messageeditorReply', '回複留言', '1', '109', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29134', 'messageeditorCheck', '回複審核', '1', '110', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29135', 'messageeditorShow', '審核通過並在前台顯示', '1', '111', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29136', 'messagesubmit', '留言提交開啟關閉', '1', '112', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29137', 'messageeditor', '編輯留言', '1', '113', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29138', 'recycleexplain1', '僅支持（新聞、產品、下載、圖片）模塊的內容。', '1', '114', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29139', 'recycleall', '所有模塊', '1', '115', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29140', 'recycletype', '模塊類型', '1', '116', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29141', 'recyclenew', '新聞模塊', '1', '117', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29142', 'recycleproduct', '產品模塊', '1', '118', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29143', 'recycledownload', '下載模塊', '1', '119', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29144', 'recycleimg', '圖片模塊', '1', '120', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29145', 'recycledietime', '刪除時間', '1', '121', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29146', 'recyclere', '還原', '1', '122', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29147', 'recyclereall', '還原所有', '1', '123', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29148', 'recycledelall', '刪除所有', '1', '124', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29149', 'recycleno', '沒有開啟回收站', '1', '125', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29150', 'eidtcont', '編輯內容', '1', '126', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29151', 'subpart', '下級欄目', '1', '127', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29152', 'eidtmsg', '查看留言', '1', '128', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29153', 'eidtfed', '查看反饋', '1', '129', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29154', 'batchtips1', '批量上傳內容', '1', '130', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29155', 'batchtips2', '批量上傳圖片', '1', '131', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29156', 'batchtips3', '批量添加水印', '1', '132', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29157', 'batchtips4', '批量縮略圖', '1', '133', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29158', 'batchtips5', '目標欄目', '1', '134', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29159', 'batchtips6', '水印操作', '1', '135', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29160', 'batchtips7', '添加水印', '1', '136', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29161', 'batchtips8', '可以在繫統配置-圖片設置中修改水印設置，單獨上傳的縮略圖無法批量添加水印', '1', '137', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29162', 'batchtips9', '縮略圖操作', '1', '138', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29163', 'batchtips10', '生成縮略圖', '1', '139', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29164', 'batchtips11', '可以在繫統配置-圖片設置中修改縮略圖設置', '1', '140', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29165', 'batchtips12', '下一步', '1', '141', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29166', 'batchtips13', '當前顯示', '1', '142', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29167', 'batchtips14', '到', '1', '143', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29168', 'batchtips15', '條', '1', '144', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29169', 'batchtips16', '總共', '1', '145', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29170', 'batchtips17', '信息標題', '1', '146', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29171', 'batchtips18', '信息圖片', '1', '147', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29172', 'batchtips19', '更新圖片', '1', '148', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29173', 'batchtips20', '暫無圖片', '1', '149', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29174', 'batchtips21', '增加', '1', '150', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29175', 'batchtips22', '保存並跳到下一頁', '1', '151', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29176', 'batchtips23', '圖片名稱', '1', '152', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29177', 'batchtips24', '批量圖片/文件上傳', '1', '153', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29178', 'batchtips25', '批量編輯', '1', '154', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29179', 'batchtips26', '圖片上傳出錯，請重新上傳下列圖片，或忽略', '1', '155', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29180', 'batchtips27', '大圖/縮略圖地址', '1', '156', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29181', 'batchtips28', '上傳圖片地址：', '1', '157', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29182', 'batchtips29', '查看當前圖片', '1', '158', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29183', 'batchtips30', '圖片文件不存在', '1', '159', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29184', 'batchtips31', '更改', '1', '160', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29185', 'batchtips32', '地址', '1', '161', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29186', 'batchtips33', '上傳此頁', '1', '162', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29187', 'batchtips34', '忽略', '1', '163', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29188', 'batchtips35', '請選擇需要批量添加內容的欄目', '1', '164', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29189', 'batchtips36', '第一步：', '1', '165', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29190', 'batchtips37', '請選擇一個欄目，在生成的文件裏添加內容', '1', '166', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29191', 'batchtips38', '選擇欄目', '1', '167', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29192', 'batchtips39', '請先生成標準文件，填好標準文件後再導入', '1', '168', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29193', 'batchtips40', '生成CSV文件', '1', '169', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29194', 'batchtips41', '可以用WPS或office打開', '1', '170', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29195', 'batchtips42', '第二步：', '1', '171', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29196', 'batchtips43', '上傳已經添加好內容的CSV文件', '1', '172', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29197', 'batchtips44', '批量上傳', '1', '173', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29198', 'batchtips45', '請直接上傳CSV文件', '1', '174', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29199', 'batchtips46', '進度', '1', '175', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29200', 'setheadstat', '頂部代碼', '1', '176', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('29201', 'optimizationpromotion', '優化推廣', '1', '5', '0', '0', 'tc');
INSERT INTO `met_language` VALUES ('29202', 'setseoTip1', '多個關鍵詞請用“|”或“，”隔開。', '1', '1', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29203', 'setseoKey', '網站關鍵詞', '1', '2', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29204', 'setseohomeKey', '首頁標題（title）', '1', '3', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29205', 'setseoTip10', '留空則采用網站關鍵詞+網站名稱的構成方式', '1', '4', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29206', 'setseoTip4', '頭部優化文字', '1', '5', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29207', 'setseoTip6', '圖片默認ALT', '1', '6', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29208', 'setseoTip7', '鼠標移至圖片顯示的文字', '1', '7', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29209', 'setseoTip8', '超鏈接默認Title', '1', '8', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29210', 'setseoTip9', '鼠標移至超鏈接顯示的文字', '1', '9', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29211', 'setseoFriendLink', '友情鏈接本站名稱', '1', '10', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29212', 'setseoFoot', '網站底部優化字', '1', '11', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29213', 'setseoTip13', '顯示在前台友情鏈接申請頁麵中', '1', '12', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29214', 'setseotype', '頁麵鏈接', '1', '13', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29215', 'setseodopen', '當前窗口打開', '1', '14', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29216', 'setseonewopen', '新窗口打開', '1', '15', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29217', 'setseotitletype', '內頁標題（title）', '1', '16', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29218', 'setseotitletype1', '內容標題', '1', '17', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29219', 'setseotitletype2', '內容標題+網站名稱', '1', '18', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29220', 'setseotitletype3', '內容標題+網站關鍵詞', '1', '19', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29221', 'setseotitletype4', '內容標題+網站關鍵詞+網站名稱', '1', '20', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29222', 'setseoTip14', '內頁的標題(title)構成方式，您也可以在編輯/添加內容時自定義對應頁麵的標題(title)。', '1', '21', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29223', 'setseojiathis', '社會化分享按鈕', '1', '22', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29224', 'labelnum', '替換次數', '1', '23', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29225', 'labelOld', '原文字', '1', '24', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29226', 'labelNew', '替換為', '1', '25', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29227', 'labelNewtitle', 'Title', '1', '26', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29228', 'labelUrl', '鏈接地址', '1', '27', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29229', 'labelAdd', '添加新標簽', '1', '28', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29230', 'labelnonull', '原文字不能為空', '1', '29', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29231', 'htm', '靜態頁麵已成功生成', '1', '30', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29232', 'sethtmok', '靜態頁麵開啟', '1', '31', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29233', 'sethtmall', '全站靜態化', '1', '32', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29234', 'setbasicTip3', '首頁、內容頁麵靜態化', '1', '33', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29235', 'setbasicTip4', '首次開啟請點擊“靜態頁麵生成”生成全部頁麵', '1', '34', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29236', 'sethtmway', '生成方式', '1', '35', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29237', 'sethtmway1', '內容信息變動時自動生成', '1', '36', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29238', 'sethtmway2', '手動生成', '1', '37', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29239', 'sethtmway3', '僅內容管理相關操作能自動生成，其它後台設置修改後如前台無改變需要手動生成', '1', '38', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29240', 'sethtmtype', '靜態頁麵類型', '1', '39', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29241', 'sethtmpage', '內容頁麵名稱', '1', '40', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29242', 'sethtmpage1', '默認文件名+ID（如showproduct10)', '1', '41', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29243', 'sethtmpage2', '年月日+ID（如2009081510)', '1', '42', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29244', 'sethtmpage3', '所在文件夾名稱+ID（如product10)', '1', '43', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29245', 'setlisthtmltype', '列表頁麵類型', '1', '44', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29246', 'setlisthtmltype1', '顯示所有欄目id（如product_1_2_3）', '1', '45', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29247', 'setlisthtmltype2', '隻顯示本欄目id（如product_1）', '1', '46', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29248', 'sethtmlist', '列表頁麵名稱', '1', '47', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29249', 'sethtmlist1', '默認文件名+class+頁碼（如product_1_1)', '1', '48', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29250', 'sethtmlist2', '所在文件夾名稱+class+頁碼（如software_1_1)', '1', '49', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29251', 'sethtmpage4', '<span style=\"float:right;\">不建議頻繁更換，以確保SEO效果（修改後請重新生成所有靜態頁麵）</span>靜態頁麵名稱規則', '1', '50', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29252', 'sethtmsitemap', '網站地圖生成設置', '1', '51', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29253', 'sethtmsitemap1', 'HTML網站地圖', '1', '52', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29254', 'sethtmsitemap4', 'xml網站地圖', '1', '53', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29255', 'htmHome', '網站首頁', '1', '54', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29256', 'htmCreateHome', '生成網站首頁', '1', '55', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29257', 'htmColumn', '欄目', '1', '56', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29258', 'htmTip1', '生成內容頁麵', '1', '57', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29259', 'htmTip2', '生成列表頁麵', '1', '58', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29260', 'htmAll', '所有頁麵', '1', '59', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29261', 'htmlogin', '會員模塊', '1', '60', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29262', 'htmsitemap', '網站地圖', '1', '61', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29263', 'htmsitemap1', '生成網站地圖', '1', '62', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29264', 'htmCreateAll', '生成所有頁麵', '1', '63', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29265', 'htmcreateallinfo', '請謹慎使用，非常消耗繫統資源！', '1', '64', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29266', 'rewrite', '偽靜態(URL Rewrite)', '1', '65', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29267', 'rewriteok', '需要空間支持：URL Rewrite模塊（URL重寫）', '1', '66', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29268', 'rewritefaq', '什麼是偽靜態？有何作用？', '1', '67', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29269', 'rewritefinfo2', '請先關閉靜態頁麵功能，偽靜態和靜態頁麵隻能采用一種。', '1', '68', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29270', 'rewritefinfo3', '請先關閉偽靜態功能，偽靜態和靜態頁麵隻能采用一種。', '1', '69', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29271', 'rewriteruledownload1', '下載偽靜態規則', '1', '70', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29272', 'rewriteruledownload2', 'MetInfo偽靜態規則', '1', '71', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29273', 'htmdabao', '全站靜態打包', '1', '72', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29274', 'htmdabaoinfo2', '<span style=\"float:right;\">打包成一個獨立的靜態站點，能夠獨立訪問</span>全站靜態打包', '1', '73', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29275', 'htmnoopen', '沒有開啟靜態頁麵', '1', '74', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29276', 'linkType', '鏈接類型', '1', '75', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29277', 'linkTypenonull', '請選擇鏈接類型', '1', '76', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29278', 'linkType1', '未審核鏈接', '1', '77', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29279', 'linkType2', '推薦鏈接', '1', '78', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29280', 'linkType3', '全部鏈接', '1', '79', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29281', 'linkType4', '文字鏈接', '1', '80', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29282', 'linkType5', 'LOGO鏈接', '1', '81', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29283', 'linkName', '網站標題', '1', '82', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29284', 'linkKeys', '網站關鍵詞', '1', '83', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29285', 'linkCheck', '審核', '1', '84', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29286', 'linkTip2', '請輸入網站標題關鍵字', '1', '85', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29287', 'linkUrl', '網站地址', '1', '86', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29288', 'linkLOGO', '網站LOGO', '1', '87', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29289', 'linkcontact', '聯繫方式', '1', '88', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29290', 'linktip1', '數字越大排序越靠前', '1', '89', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29291', 'linkPass', '審核通過', '1', '90', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29292', 'linkRecommend', '推薦站點', '1', '91', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29293', 'enginetype1', '穀歌', '1', '92', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29294', 'enginetype2', '百度', '1', '93', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29295', 'enginetype3', '搜搜', '1', '94', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29296', 'enginetype4', '雅虎', '1', '95', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29297', 'enginetype5', '必應', '1', '96', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29298', 'enginetype6', '搜狗', '1', '97', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29299', 'enginetype7', '有道', '1', '98', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29300', 'enginetype8', '360搜索', '1', '99', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29301', 'statips1', '統計概況', '1', '100', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29302', 'statips2', '統計設置', '1', '101', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29303', 'statips3', '搜索引擎', '1', '102', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29304', 'statips4', '受訪分析', '1', '103', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29305', 'statips5', '來路分析', '1', '104', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29306', 'statips6', '訪問明細', '1', '105', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29307', 'statips7', '受訪頁麵', '1', '106', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29308', 'statips8', '受訪域名', '1', '107', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29309', 'statips9', '受訪語言', '1', '108', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29310', 'statips10', '今日', '1', '109', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29311', 'statips11', '昨日', '1', '110', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29312', 'statips12', '最近7天', '1', '111', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29313', 'statips13', '最近30天', '1', '112', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29314', 'statips14', '本月', '1', '113', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29315', 'statips15', '選擇日期', '1', '114', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29316', 'statips17', '從', '1', '115', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29317', 'statips18', '排名', '1', '116', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29318', 'statips19', '頁麵名稱', '1', '117', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29319', 'statips20', '瀏覽次數', '1', '118', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29320', 'statips21', '獨立訪客', '1', '119', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29321', 'statips22', '人均瀏覽次數', '1', '120', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29322', 'statips23', '所屬語言', '1', '121', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29323', 'statips25', '域名', '1', '122', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29324', 'statips26', '直接輸入網址或書簽', '1', '123', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29325', 'statips27', '時間', '1', '124', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29326', 'statips28', '地區-網絡', '1', '125', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29327', 'statips29', '瀏覽器', '1', '126', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29328', 'statips30', '來路', '1', '127', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29329', 'statips31', '受訪', '1', '128', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29330', 'statips32', '搜索引擎', '1', '129', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29331', 'statips33', '搜索次數', '1', '130', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29332', 'statips34', '日訪問量概況', '1', '131', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29333', 'statips35', '日期', '1', '132', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29334', 'statips36', '星期', '1', '133', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29335', 'statips37', '日訪問量分布', '1', '134', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29336', 'statips38', '小時段分布', '1', '135', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29337', 'statips39', '按PV查看', '1', '136', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29338', 'statips40', '按獨立訪客查看', '1', '137', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29339', 'statips41', '按IP查看', '1', '138', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29340', 'statips42', '訪問量概況', '1', '139', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29341', 'statips43', '每日平均', '1', '140', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29342', 'statips44', '曆史最高', '1', '141', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29343', 'statips45', '曆史累計', '1', '142', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29344', 'statips46', '24小時流量趨勢', '1', '143', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29345', 'statips47', '訪問統計功能', '1', '144', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29346', 'statips48', '關閉後不再記錄來訪信息', '1', '145', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29347', 'statips49', '清空方式（統計數據會占用數據庫大小）', '1', '146', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29348', 'statips50', '程序每日會清空設置時間前的統計數據，保存即生效。', '1', '147', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29349', 'statips51', '一鍵清空', '1', '148', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29350', 'statips52', '清空統計數據', '1', '149', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29351', 'statips53', '一鍵清空所有統計數據', '1', '150', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29352', 'statips54', '清空所有數據', '1', '151', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29353', 'statips55', '清空今日以前的所有數據', '1', '152', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29354', 'statips56', '安全設置', '1', '153', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29355', 'statips57', '每日訪問最大值', '1', '154', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29356', 'statips58', '為防止惡意攻擊，超出後不再記錄來訪信息', '1', '155', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29357', 'statips59', '來路頁麵', '1', '156', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29358', 'statips60', '來路域名', '1', '157', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29359', 'statips61', '來路URL', '1', '158', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29360', 'statips62', '來訪次數', '1', '159', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29361', 'statips63', '訪問次數', '1', '160', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29362', 'seotips1', '多個關鍵詞請用豎線 | 隔開，建議3到4個關鍵詞。', '1', '161', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29363', 'seotips2', '靜態頁麵設置', '1', '162', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29364', 'seotips3', '靜態頁麵生成', '1', '163', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29365', 'seotips4', '偽靜態', '1', '164', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29366', 'seotips5', 'URL構成方式(偽靜態的URL構成暫不支持更改)', '1', '165', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29367', 'seotips6', '首頁', '1', '166', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29368', 'seotips7', '如', '1', '167', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29369', 'seotips8', '靜態頁麵名稱或ID', '1', '168', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29370', 'seotips9', '內容頁', '1', '169', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29371', 'seotips10', '是否刪除偽靜態配置文件？如有其它語言開啟偽靜態功能請不要刪除。', '1', '170', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29372', 'seotips11', '是否刪除所有已生成的靜態頁麵？', '1', '171', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29373', 'seotips12', '是否立即生成所有靜態頁麵？', '1', '172', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29374', 'seotips13', '更換靜態化方式將重新生成所有靜態頁麵，確定嗎！', '1', '173', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29375', 'seotips14', '網站地圖（Sitemap）有助於加快網站被搜索引擎收錄', '1', '174', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29376', 'seotips14_1', '怎樣提交給搜索引擎？', '1', '175', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29377', 'seotips15', '地圖網址', '1', '176', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29378', 'seotips15_1', '適合百度，', '1', '177', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29379', 'seotips15_2', '適合穀歌，', '1', '178', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29380', 'seotips15_3', '適合雅虎，', '1', '179', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29381', 'seotips16', '過濾欄目及內容', '1', '180', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29382', 'seotips17', '過濾不顯示在前台的欄目', '1', '181', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29383', 'seotips18', '過濾外部模塊', '1', '182', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29384', 'seotips19', '網站語言範圍', '1', '183', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29385', 'seotips20', '當前語言', '1', '184', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29386', 'seotips21', '僅生成勾選語言的網站地圖', '1', '185', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29387', 'seotips22', '並生成', '1', '186', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29388', 'seotips24', '注意！您同時開啟了靜態頁麵和偽靜態，請關閉其中一種，否則會導致網站無法正常訪問。', '1', '187', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29389', 'seotips25', '立即打包並下載', '1', '188', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29390', 'dltips1', '無法連接上遠程服務器，請檢查網絡', '1', '189', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29391', 'dltips2', '文件下載失敗，請檢查本地目錄權限和空間大小', '1', '190', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29392', 'dltips3', '您沒有權限下載此文件', '1', '191', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29393', 'dltips4', '請升級程序', '1', '192', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29394', 'dltips5', '您所請求的文件不存在', '1', '193', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29395', 'dltips6', '遠程服務器請求錯誤', '1', '194', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29396', 'dltips7', '下載超時', '1', '195', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29397', 'columnarrangement1', '展示方式：', '1', '196', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29398', 'columnarrangement2', '切換為', '1', '197', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29399', 'columnarrangement3', '按模塊分類', '1', '198', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29400', 'columnarrangement4', '按欄目分類', '1', '199', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29401', 'modulemanagement1', '簡介模塊', '1', '200', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29402', 'modulemanagement2', '文章模塊', '1', '201', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29403', 'modulemanagement3', '產品模塊', '1', '202', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29404', 'modulemanagement4', '下載模塊', '1', '203', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29405', 'modulemanagement5', '圖片模塊', '1', '204', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29406', 'modulemanagement6', '招聘模塊', '1', '205', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29407', 'modulemanagement7', '留言繫統', '1', '206', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29408', 'modulemanagement8', '反饋繫統', '1', '207', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29409', 'otherinfocache1', '請重新生成靜態頁麵，並刷新頁麵，修改內容才可以正常顯示！', '1', '208', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29410', 'otherinfocache2', 'cache文件沒有寫權限，更新內容前台無法正常顯示！', '1', '209', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('29411', 'enterpriseapp', '企業應用', '1', '6', '0', '0', 'tc');
INSERT INTO `met_language` VALUES ('29412', 'waptype', 'Wap功能', '1', '1', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29413', 'waplang', '顯示鏈接', '1', '2', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29414', 'wapsetlang', '網站首頁語言切換位置會顯示WAP文字鏈接', '1', '3', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29415', 'wapfang', '自動跳轉', '1', '4', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29416', 'wapgeturl', '手機訪問自動跳轉', '1', '5', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29417', 'wapinfo3', '指定域名跳轉', '1', '6', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29418', 'wapinfo4', '如wap.metinfo.cn(請先做好域名解析和綁定)', '1', '7', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29419', 'wapshowimg', '展示圖片', '1', '8', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29420', 'wapinfo6', '考慮到手機屏寬，圖片寬度240px(像素)比較適合', '1', '9', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29421', 'waplistshow', '內容顯示', '1', '10', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29422', 'wapinfo7', '設置為需審核後，後台添加的內容需勾選允許顯示在WAP才會正常在WAP前台顯示', '1', '11', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29423', 'waplistaud', '需要審核', '1', '12', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29424', 'waplist', '各模塊列表顯示數量', '1', '13', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29425', 'waplistauk', '顯示全部', '1', '14', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29426', 'waptiao', '條', '1', '15', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29427', 'wapindextitle', '頁麵標題(title)', '1', '16', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29428', 'wapdescription', '簡短描述', '1', '17', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29429', 'wapfoottext', '底部文字', '1', '18', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29430', 'wapdimensionaltitle', '二維碼生成（手機掃描二維碼即可訪問手機版網站）', '1', '19', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29431', 'wapdimensionalsize', '尺寸', '1', '20', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29432', 'wapdimensionaltips', '請上傳小於300K的圖片，圖片過大可能無法正常生成！<br>不需要在二維碼上顯示LOGO，請留空。', '1', '21', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29433', 'wapdimensionaldo', '生成', '1', '22', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29434', 'contentuppage', '操作成功，跳到下一頁', '1', '23', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29435', 'listno', '該欄目下沒有內容', '1', '24', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29436', 'csvnocolumn', '沒有找到對應欄目，請不要修改文件名', '1', '25', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29437', 'csvnodata', '沒有數據', '1', '26', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29438', 'csverror1', '上傳文件中存在相同的靜態頁麵名稱。出錯行：', '1', '27', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29439', 'csverror2', '上傳內容的靜態頁麵名稱與已有內容相同。出錯行：', '1', '28', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29440', 'csvexplain1', '說明文檔', '1', '29', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29441', 'csvexplain2', '1.請不要修改文件名。', '1', '30', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29442', 'csvexplain3', '2.詳細內容字段支持HTML代碼。', '1', '31', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29443', 'csvexplain4', '3.選擇項字段請填寫選項內容。', '1', '32', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29444', 'usertype1', '免費', '1', '33', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29445', 'usertype2', '商業授權', '1', '34', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29446', 'usertype3', '普通商業授權', '1', '35', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29447', 'usertype4', '高級商業授權', '1', '36', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29448', 'hosterror', '連接服務器失敗，請稍後再試', '1', '37', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29449', 'appinstall', '安裝', '1', '38', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29450', 'appreinstall', '重新安裝', '1', '39', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29451', 'appupgrade', '升級', '1', '40', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29452', 'appuninstall', '卸載成功', '1', '41', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29453', 'appdl1', '應用安裝完成後請到我的應用中使用', '1', '42', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29454', 'appdl2', '已安裝', '1', '43', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29455', 'appdl3', '此應用需要', '1', '44', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29456', 'appdl4', '以上版本繫統支持', '1', '45', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29457', 'nursenomoney', '餘額不足，請充值後再提交！', '1', '46', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29458', 'physicaldelok', '刪除成功', '1', '47', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29459', 'physicaldelno', '找不到文件,文件刪除失敗.', '1', '48', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29460', 'physicalgenok', '生成成功', '1', '49', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29461', 'physicalupdatesuc', '更新成功', '1', '50', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29462', 'physicalok', '正常', '1', '51', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29463', 'physicalnoneed', '無需處理', '1', '52', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29464', 'physicaladmin', '後台目錄名稱', '1', '53', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29465', 'physicaladmin1', '後台目錄名稱未修改，建議修改', '1', '54', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29466', 'physicaladmin2', '已修改', '1', '55', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29467', 'physicalbackup', '網站數據備份', '1', '56', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29468', 'physicalbackup1', '沒有檢測到數據備份文件，建議定期備份網站數據。', '1', '57', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29469', 'physicalbackup2', '上次備份時間：', '1', '58', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29470', 'physicalbackup4', '天前，建議每月至少備份一次', '1', '59', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29471', 'physicalupdate', '網站內容更新', '1', '60', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29472', 'physicalupdate1', '上次更新時間：', '1', '61', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29473', 'physicalupdate2', '建議每周更新內容', '1', '62', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29474', 'physicalupdate3', '請盡快更新網站內容', '1', '63', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29475', 'physicalseo', 'SEO優化設置', '1', '64', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29476', 'physicalseo1', '網站關鍵詞未設置', '1', '65', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29477', 'physicalseo2', '網站關鍵詞中有全角逗號[，]建議使用半角逗號[,]或豎線[|]作為分隔符', '1', '66', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29478', 'physicalseo3', '網站描述未設置', '1', '67', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29479', 'physicalseo4', '已設置', '1', '68', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29480', 'physicalstatic', '靜態頁麵設置', '1', '69', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29481', 'physicalstatic1', '靜態頁麵和偽靜態被同時開啟，將導致頁麵無法訪問', '1', '70', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29482', 'physicalunread', '未讀信息', '1', '71', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29483', 'physicalunread1', '反饋信息', '1', '72', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29484', 'physicalunread2', '留言信息', '1', '73', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29485', 'physicalunread3', '簡曆', '1', '74', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29486', 'physicalspam', '垃圾信息', '1', '75', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29487', 'physicalspam1', '回收站有未清理數據', '1', '76', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29488', 'physicalmember', '待審核會員', '1', '77', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29489', 'physicalmember1', '有未審核會員：', '1', '78', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29490', 'physicalmember2', '名', '1', '79', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29491', 'physicalweb', '網站地址設置', '1', '80', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29492', 'physicalweb1', '網站網址與當前訪問網址不一致', '1', '81', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29493', 'physicalfile', '關鍵文件檢測', '1', '82', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29494', 'physicalfile1', '無法連接服務器獲取繫統標準文件', '1', '83', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29495', 'physicalfile2', '未發現風險', '1', '84', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29496', 'physicalfile3', '繫統文件', '1', '85', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29497', 'physicalfile4', '配置文件', '1', '86', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29498', 'physicalfile5', '丟失', '1', '87', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29499', 'physicalfile6', '文件大小與繫統標準文件不一致', '1', '88', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29500', 'physicalfile7', '重新下載', '1', '89', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29501', 'physicalfile8', '請恢複備份', '1', '90', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29502', 'physicalfile9', '重新生成', '1', '91', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29503', 'physicalfile10', '文件大小與繫統標準文件不一致', '1', '92', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29504', 'physicalfileno', '沒有進行過網站體檢，建議立即體檢', '1', '93', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29505', 'physicalfiletime1', '分鍾前', '1', '94', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29506', 'physicalfiletime2', '小時前', '1', '95', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29507', 'physicalfiletime3', '天前', '1', '96', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29508', 'physicalfiletime4', '周前', '1', '97', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29509', 'physicalfiletime5', '個月前', '1', '98', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29510', 'physicalfiletime6', '年前', '1', '99', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29511', 'physicalfunction1', '可疑文件', '1', '100', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29512', 'physicalfunction2', '含有危險函數', '1', '101', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29513', 'physicalfunction3', '非法後綴', '1', '102', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29514', 'physicalfunction4', '文件夾', '1', '103', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29515', 'physicalfunction5', '非本繫統文件夾，如果不是您安裝的其他程序，請刪除', '1', '104', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29516', 'physicalfunction6', '全部刪除', '1', '105', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29517', 'physicalfunctionok', '掃描已完成，未發現木馬及其它安全威脅。', '1', '106', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29518', 'physicalfingerprintok', '指紋比對完全一致', '1', '107', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29519', 'physicalfingerprintno', '指紋文件不存在', '1', '108', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29520', 'physicalfingerprint1', '指紋文件', '1', '109', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29521', 'physicalfingerprint2', '並非指紋文件', '1', '110', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29522', 'physicalfingerprint3', '文件大小與指紋文件不一致', '1', '111', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29523', 'smschargeback', '扣款', '1', '112', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29524', 'smsrecharge', '充值', '1', '113', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29525', 'smsreonlinecharge', '在線短信充值', '1', '114', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29526', 'sms1', '短信內容和手機號碼不能為空', '1', '115', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29527', 'sms2', '操作失敗，可能是輸入的信息有誤！', '1', '116', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29528', 'sms3', 'cache文件夾沒有寫權限，商業會員短信發送價格獲取失敗！', '1', '117', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29529', 'statweb', '直接輸入網址', '1', '118', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29530', 'stat_cr1', '僅保留當天', '1', '119', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29531', 'stat_cr2', '保留近七天', '1', '120', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29532', 'stat_cr3', '保留近一個月', '1', '121', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29533', 'stat_cr4', '保留近一年', '1', '122', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29534', 'stat_cr0', '從不清空', '1', '123', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29535', 'week1', '一', '1', '124', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29536', 'week2', '二', '1', '125', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29537', 'week3', '三', '1', '126', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29538', 'week4', '四', '1', '127', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29539', 'week5', '五', '1', '128', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29540', 'week6', '六', '1', '129', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29541', 'week7', '日', '1', '130', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29542', 'statpv', 'PV', '1', '131', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29543', 'statip', 'IP', '1', '132', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29544', 'statvisitors', '獨立訪客', '1', '133', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29545', 'statother', '其他', '1', '134', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29546', 'statbrowser1', '360安全瀏覽器', '1', '135', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29547', 'statbrowser2', '傲遊瀏覽器', '1', '136', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29548', 'statbrowser3', 'QQ瀏覽器', '1', '137', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29549', 'statbrowser4', 'TT瀏覽器', '1', '138', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29550', 'statbrowser5', '世界之窗瀏覽器', '1', '139', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29551', 'statbrowser6', '穀歌瀏覽器', '1', '140', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29552', 'statbrowser7', '搜狗瀏覽器', '1', '141', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29553', 'physicaltips1', '正在掃描...', '1', '142', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29554', 'physicaltips2', '網站體檢', '1', '143', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29555', 'physicaltips3', '查殺木馬', '1', '144', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29556', 'physicaltips4', '文件校對', '1', '145', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29557', 'physicaltips5', '上次體檢時間', '1', '146', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29558', 'physicaltips6', '上次網站體檢得分', '1', '147', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29559', 'physicaltips7', '分，', '1', '148', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29560', 'physicaltips8', '共掃描了', '1', '149', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29561', 'physicaltips9', '項，', '1', '150', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29562', 'physicaltips10', '其中', '1', '151', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29563', 'physicaltips11', '項有問題', '1', '152', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29564', 'physicaltips12', '建議每周定期體檢可以發現您網站存在的細節問題，並保護您的網站安全。', '1', '153', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29565', 'physicaltips13', '立即體檢', '1', '154', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29566', 'physicaltips14', '體檢得分', '1', '155', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29567', 'physicaltips15', '體檢時間', '1', '156', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29568', 'physicaltips16', '重新體檢', '1', '157', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29569', 'physicaltips17', '分', '1', '158', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29570', 'physicaltips18', '危險項目', '1', '159', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29571', 'physicaltips19', '這些項目可能會導致網站無法正常訪問，請盡快修複', '1', '160', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29572', 'physicaltips20', '優化項目', '1', '161', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29573', 'physicaltips21', '推薦修複這些項目', '1', '162', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29574', 'physicaltips22', '安全項目', '1', '163', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29575', 'physicaltips23', '能夠掃描到網站目錄下存在的可疑文件，建議定期掃描', '1', '164', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29576', 'physicaltips24', '立即掃描', '1', '165', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29577', 'physicaltips25', '查看上次掃描結果', '1', '166', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29578', 'physicaltips26', '可疑文件', '1', '167', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29579', 'physicaltips27', '個，非法後綴文件', '1', '168', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29580', 'physicaltips28', '個，非繫統文件夾', '1', '169', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29581', 'physicaltips29', '個', '1', '170', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29582', 'physicaltips30', '重新掃描', '1', '171', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29583', 'physicaltips31', '掃描結果', '1', '172', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29584', 'physicaltips32', '備份指紋：記錄網站所有文件及文件大小', '1', '173', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29585', 'physicaltips33', '正在備份...', '1', '174', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29586', 'physicaltips34', '立即備份指紋', '1', '175', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29587', 'physicaltips35', '文件校對：網站所有文件與上次備份指紋進行比對，找出缺失或可疑文件，需手動登錄FTP修複。<br>網站升級，應用和模板的下載刪除，會改變指紋，建議這些操作之前指紋對比，操作之後備份指紋。', '1', '176', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29588', 'physicaltips36', '立即對比', '1', '177', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29589', 'physicaltips37', '正在對比...', '1', '178', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29590', 'physicaltips38', '查看上次對比結果', '1', '179', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29591', 'physicaltips39', '處不一致', '1', '180', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29592', 'physicaltips40', '返回', '1', '181', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29593', 'physicaltips41', '對比結果', '1', '182', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29594', 'smstips1', '批量發送', '1', '183', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29595', 'smstips2', '發送記錄', '1', '184', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29596', 'smstips3', '財務流水', '1', '185', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29597', 'smstips4', '在線充值', '1', '186', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29598', 'smstips5', '在線短信充值', '1', '187', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29599', 'smstips6', '當前餘額', '1', '188', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29600', 'smstips7', '付款方式', '1', '189', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29601', 'smstips8', '充值金額', '1', '190', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29602', 'smstips9', '元', '1', '191', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29603', 'smstips10', '首次充值成功將會發送服務密碼到您的郵箱，服務密碼很重要，請妥善保管！', '1', '192', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29604', 'smstips11', '立即充值', '1', '193', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29605', 'smstips12', '注意事項', '1', '194', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29606', 'smstips13', '首次充值請確定基本設置的網址為您的域名，當前為：', '1', '195', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29607', 'smstips14', '充值成功後款項無法退還，請謹慎充值！', '1', '196', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29608', 'smstips15', '短信資費說明', '1', '197', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29609', 'smstips16', '財務流水記錄在官方服務器上，不影響您網站數據庫大小，會保存最近30天的財務記錄。', '1', '198', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29610', 'smstips17', '序列', '1', '199', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29611', 'smstips18', '操作類型', '1', '200', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29612', 'smstips19', '充值', '1', '201', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29613', 'smstips20', '扣款', '1', '202', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29614', 'smstips21', '發生金額', '1', '203', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29615', 'smstips22', '賬戶餘額', '1', '204', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29616', 'smstips23', '操作事由', '1', '205', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29617', 'smstips24', '操作時間', '1', '206', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29618', 'smstips25', '修改服務密碼', '1', '207', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29619', 'smstips26', '服務密碼', '1', '208', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29620', 'smstips27', '服務密碼是第一次充值時由繫統自動生成並發送到您郵箱的不可更改密碼', '1', '209', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29621', 'smstips28', '新發送密碼', '1', '210', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29622', 'smstips29', '至少6位', '1', '211', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29623', 'smstips31', '短信內容有非法關鍵詞可能會被攔截，費用無法退回，所以建議先給2、3個手機號碼試發一次。', '1', '212', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29624', 'smstips32', '建議在短信結尾加上如 【某某公司】 的字樣（兩邊的框也需要），否則有可能接收不到。', '1', '213', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29625', 'smstips33', '短信內容', '1', '214', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29626', 'smstips34', '中文/英文第一條66個字，第二條起64個字<br>超過字數算將切分為多條短信', '1', '215', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29627', 'smstips35', '當前字數：', '1', '216', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29628', 'smstips36', '個字', '1', '217', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29629', 'smstips37', '共', '1', '218', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29630', 'smstips38', '條短信', '1', '219', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29631', 'smstips39', '請填寫接收短信的手機號碼<br>多個手機號碼請換行<br>一次不超過800個手機號碼<br>當前共', '1', '220', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29632', 'smstips40', '個號碼', '1', '221', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29633', 'smstips41', '獲取已激活會員手機號碼', '1', '222', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29634', 'smstips42', '去除重複號碼', '1', '223', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29635', 'smstips43', '發送密碼', '1', '224', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29636', 'smstips44', '修改發送密碼', '1', '225', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29637', 'smstips45', '費用預計', '1', '226', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29638', 'smstips46', '元每條，共發送', '1', '227', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29639', 'smstips47', '條', '1', '228', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29640', 'smstips48', '發送', '1', '229', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29641', 'smstips49', '發送成功後需等待片刻才能收到短信', '1', '230', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29642', 'smstips50', '正在獲取...', '1', '231', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29643', 'smstips51', '暫無', '1', '232', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29644', 'smstips52', '正在發送...', '1', '233', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29645', 'smstips53', '您確定清空所有發送記錄嗎？', '1', '234', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29646', 'smstips54', '短信內容或手機號碼', '1', '235', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29647', 'smstips55', '發送時間', '1', '236', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29648', 'smstips56', '發送類型', '1', '237', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29649', 'smstips57', '批量發送', '1', '238', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29650', 'smstips58', '流量統計報告', '1', '239', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29651', 'smstips59', '訪問故障監測', '1', '240', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29652', 'smstips60', '訪客操作提醒', '1', '241', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29653', 'smstips61', '密碼找回', '1', '242', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29654', 'smstips62', '短信內容', '1', '243', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29655', 'smstips63', '對方號碼', '1', '244', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29656', 'smstips64', '狀態', '1', '245', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29657', 'smstips65', '操作', '1', '246', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29658', 'smstips66', '餘額不足', '1', '247', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29659', 'smstips67', '短信內容太長，最多350個字', '1', '248', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29660', 'smstips68', '手機號碼太多，最多800個號碼', '1', '249', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29661', 'smstips69', '號碼不符合規則', '1', '250', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29662', 'smstips70', '發送成功(有延遲)', '1', '251', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29663', 'smstips71', '異常操作，餘額不足', '1', '252', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29664', 'smstips72', '餘額不足', '1', '253', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29665', 'smstips73', '短信內容和手機號碼不能為空', '1', '254', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29666', 'smstips74', '發送密碼錯誤', '1', '255', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29667', 'smstips75', '網站無法訪問', '1', '256', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29668', 'smstips76', '服務器無響應', '1', '257', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29669', 'smstips77', '無法連接短信發送服務器，請網站體檢！', '1', '258', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29670', 'smstips85', '從官網獲取數據中，請誤刷新頁麵', '1', '259', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29671', 'smstips78', '優惠劵', '1', '260', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29672', 'smstips79', '無此優惠劵', '1', '261', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29673', 'smstips80', '此劵已經使用', '1', '262', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29674', 'smstips81', '超過使用時間', '1', '263', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29675', 'smstips82', '使用成功', '1', '264', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29676', 'smstips83', '優惠劵使用說明', '1', '265', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29677', 'smstips84', '立即兌換', '1', '266', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29678', 'smstips90', '請注冊充值後，', '1', '267', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29679', 'smstips91', '及时查收余額。', '1', '268', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29680', 'smstips92', '聯繫', '1', '269', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29681', 'smstips93', '開通', '1', '270', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29682', 'smstips94', '當前短信發送價格和服務器設定價格不一致，點擊<a href=\"\">此處</a>刷新頁麵，重新獲取發送價格', '1', '271', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29683', 'smstips95', '錯誤原因：', '1', '272', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29684', 'waptips1', 'Wap設置', '1', '273', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29685', 'waptips2', '設置Wap內容頁展示圖片尺寸', '1', '274', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29686', 'waptips3', '為空將顯示網站首頁標題', '1', '275', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29687', 'waptips4', '為空將顯示網站簡短描述', '1', '276', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29688', 'waptips5', '顯示', '1', '277', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29689', 'waptips6', '隱藏', '1', '278', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29690', 'waptips7', '開啟靜態頁麵僅智能機支持自動跳轉，建議使用偽靜態', '1', '279', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29691', 'waptips8', '指定域名', '1', '280', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29692', 'waptips9', '為空將顯示網站LOGO', '1', '281', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29693', 'mobiletips1', '您的瀏覽器沒有開啟javascript支持，開啟後才能進行相應的後台操作。', '1', '282', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29694', 'mobiletips2', '沒有開啟或添加相關功能版塊', '1', '283', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29695', 'mobiletips3', '文章發布', '1', '284', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29696', 'mobiletips4', '請填寫標題', '1', '285', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29697', 'mobiletips5', '沒有添加相關模塊的欄目', '1', '286', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29698', 'mobiletips6', '查看圖片', '1', '287', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29699', 'mobiletips7', '次', '1', '288', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29700', 'dlapptips1', '已安裝應用', '1', '289', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29701', 'dlapptips2', '應用商店', '1', '290', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29702', 'dlapptips3', '說明：', '1', '291', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29703', 'dlapptips4', '版本：', '1', '292', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29704', 'dlapptips5', '打開', '1', '293', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29705', 'dlapptips6', '卸載', '1', '294', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29706', 'dlapptips7', '尊敬的', '1', '295', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29707', 'dlapptips8', '您當前為：', '1', '296', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29708', 'dlapptips9', '用戶使用', '1', '297', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29709', 'dlapptips10', '僅限', '1', '298', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29710', 'dlapptips11', '用於網站在移動終端展示的功能<br>商業版WAP功能更全麵，頁麵展示更絢麗。<a href=\"http://www.metinfo.cn/web/wap.htm\" target=\"_blank\" class=\"red\">詳情請看</a>', '1', '299', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29711', 'dlapptips12', '可以用於批量發送、查看發送記錄、流水賬，以及充值短信費用', '1', '300', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29712', 'dlapptips13', '用於監聽網站狀態，可以利用短信功能將網站實時狀況發送到指定手機號碼', '1', '301', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29713', 'dlapptips14', '原為FLASH設置，可用於上傳或設置網站頁麵的大圖輪播（一般位於導航下方）', '1', '302', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29714', 'dlapptips15', '原版本名為在線交流，漂浮的在線即時交流工具，可添加QQ、旺旺、MSN、SKYPE等', '1', '303', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29715', 'dlapptips16', '可以管理後台上傳的文件', '1', '304', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29716', 'dlapptips17', '可進行網站體檢、查殺木馬、文件校對，建議定期使用', '1', '305', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29717', 'dlapptips18', '可以管理注冊的會員、設置會員組以及閱讀權限、其它相關設置等', '1', '306', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29718', 'nursetips1', '流量統計保告', '1', '307', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29719', 'nursetips2', '訪問故障監測', '1', '308', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29720', 'nursetips3', '訪客操作提醒', '1', '309', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29721', 'nursetips4', '每天指定時間發送昨日的流量統計報告到您的手機', '1', '310', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29722', 'nursetips5', '流量統計報告', '1', '311', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29723', 'nursetips6', '統計網址', '1', '312', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29724', 'nursetips7', '請確認網址！在繫統設置-基本信息-網站地址修改', '1', '313', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29725', 'nursetips8', '報告發送時間', '1', '314', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29726', 'nursetips9', '接收號碼', '1', '315', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29727', 'nursetips10', '接收短信提醒的手機號碼，多個請換行', '1', '316', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29728', 'nursetips11', '指定時間監測您網站能否正常訪問，如不能正常訪問，則發送一條監測報告到您的手機', '1', '317', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29729', 'nursetips12', '訪問監測', '1', '318', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29730', 'nursetips13', '監測網址', '1', '319', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29731', 'nursetips14', '監測頻率', '1', '320', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29732', 'nursetips15', '每小時一次', '1', '321', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29733', 'nursetips16', '每天一次', '1', '322', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29734', 'nursetips17', '每周一次', '1', '323', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29735', 'nursetips18', '每月一次', '1', '324', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29736', 'nursetips19', '指定時間段監測一次', '1', '325', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29737', 'nursetips20', '時間段', '1', '326', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29738', 'nursetips21', '每月隨機時間段檢測', '1', '327', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29739', 'nursetips22', '星期一', '1', '328', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29740', 'nursetips23', '星期二', '1', '329', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29741', 'nursetips24', '星期三', '1', '330', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29742', 'nursetips25', '星期四', '1', '331', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29743', 'nursetips26', '星期五', '1', '332', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29744', 'nursetips27', '星期六', '1', '333', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29745', 'nursetips27x', '星期日', '1', '334', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29746', 'nursetips28', '星期日', '1', '335', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29747', 'nursetips29', '隻在指定星期段內隨機時間段監測', '1', '336', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29748', 'nursetips29x', '隻在指定時間段內監測', '1', '337', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29749', 'nursetips30', '每當有訪客注冊會員，繫統會發送一條短信到您的手機', '1', '338', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29750', 'nursetips31', '注冊提醒', '1', '339', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29751', 'nursetips32', '每當有訪客提交反饋信息，繫統會發送一條含反饋標題的短信到您的手機', '1', '340', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29752', 'nursetips33', '反饋提醒', '1', '341', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29753', 'nursetips34', '每當有訪客提交留言，繫統將會發送一條含留言內容(前10個字符)的短信到您的手機', '1', '342', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29754', 'nursetips35', '留言提醒', '1', '343', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29755', 'nursetips36', '每當有訪客提交簡曆，繫統將會發送一條含投遞職位和應聘者姓名的短信到您的手機', '1', '344', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29756', 'nursetips37', '簡曆提醒', '1', '345', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29757', 'nursetips38', '每當有訪客提交友情鏈接申請，繫統將會發送一條含對方網址和網站名稱的短信到您的手機', '1', '346', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29758', 'nursetips39', '友鏈提醒', '1', '347', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29759', 'nursetips40', '每日提醒次數', '1', '348', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29760', 'nursetips41', '次', '1', '349', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29761', 'nursetips42', '達到上限後將停止短信提醒', '1', '350', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29762', 'smstips86', '數據已經更新，3秒後刷新後台！', '1', '351', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29763', 'smstips87', '獲取短信密鑰中，請勿刷新頁麵！', '1', '352', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29764', 'smstips88', '獲取短信密鑰成功', '1', '353', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29765', 'smstips89', '獲取短信密鑰失敗，無法連接服務器！', '1', '354', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29766', 'map_input', '輸入地址查詢', '1', '355', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29767', 'map_title', '公司名稱', '1', '356', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29768', 'map_contents', '公司地址', '1', '357', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('29769', 'usermanagement', '用戶管理', '1', '7', '0', '0', 'tc');
INSERT INTO `met_language` VALUES ('29770', 'database', '數據庫', '1', '1', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29771', 'uploadfile', '上傳文件夾', '1', '2', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29772', 'webcompre', '整站壓縮包', '1', '3', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29773', 'admininfo', '管理員基本信息', '1', '4', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29774', 'adminjurisd', '語言權限', '1', '5', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29775', 'admintips1', '所有語言', '1', '6', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29776', 'admintips2', '至少選擇一個', '1', '7', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29777', 'admintips3', '取消之後其他用戶新增的網站欄目該用戶將沒有管理權限', '1', '8', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29778', 'admintips4', '新增欄目權限', '1', '9', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29779', 'admintips5', '用戶組', '1', '10', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29780', 'admintips7', '管理員權限設置', '1', '11', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29781', 'metadmin', '管理員', '1', '12', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29782', 'adminusername', '用戶名', '1', '13', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29783', 'adminname', '姓名', '1', '14', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29784', 'admintel', '電話', '1', '15', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29785', 'adminmobile', '手機', '1', '16', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29786', 'adminLoginNum', '登錄次數', '1', '17', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29787', 'adminLastLogin', '最後登錄時間', '1', '18', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29788', 'adminLastIP', '最後登錄IP', '1', '19', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29789', 'adminpassword', '登錄密碼', '1', '20', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29790', 'adminpassword1', '密碼確認', '1', '21', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29791', 'adminSex', '性別', '1', '22', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29792', 'adminMan', '先生', '1', '23', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29793', 'adminWoman', '女士', '1', '24', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29794', 'adminTip1', '用於取回賬號密碼', '1', '25', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29795', 'adminTaoBao', '淘寶', '1', '26', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29796', 'adminIntro', '管理員簡介', '1', '27', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29797', 'adminlang', '全選', '1', '28', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29798', 'adminPower', '信息權限', '1', '29', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29799', 'adminTip2', '隻允許查看自己發表的信息', '1', '30', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29800', 'adminOperate', '操作權限', '1', '31', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29801', 'adminOperate1', '完全控製', '1', '32', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29802', 'adminOperate2', '添加信息', '1', '33', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29803', 'adminOperate3', '修改信息', '1', '34', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29804', 'adminOperate4', '刪除信息', '1', '35', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29805', 'adminColumn', '欄目權限', '1', '36', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29806', 'adminSelectAll', '全部選擇', '1', '37', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29807', 'adminBackup', '返回', '1', '38', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29808', 'adminpassTitle', '修改個人信息', '1', '39', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29809', 'getNotice', '管理員密碼找回', '1', '40', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29810', 'getTip1', '您的密碼重置請求已經得到驗證。請點擊以下鏈接輸入您的新密碼：', '1', '41', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29811', 'getTip2', '感謝您對MetInfo的支持與厚愛，希望MetInfo能為您的網站創造價值！', '1', '42', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29812', 'getTip3', '創建新密碼鏈接的電子郵件已經發送到您的郵箱，請盡快修改您的密碼。', '1', '43', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29813', 'getTip4', '您提交的找回密碼未能成功！可能是郵箱服務器設置不正確，請通過其它方式找回密碼', '1', '44', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29814', 'getTip5', '找回密碼', '1', '45', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29815', 'getOK', '發送成功', '1', '46', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29816', 'hello', '您好！', '1', '47', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29817', 'memberset', '會員功能配置', '1', '48', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29818', 'memberuse', '會員功能', '1', '49', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29819', 'memberuseok2', '開啟會員功能', '1', '50', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29820', 'memberlogin', '會員注冊', '1', '51', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29821', 'memberloginok3', '開啟但需要郵件驗證', '1', '52', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29822', 'memberloginok4', '開啟但需要管理員後台驗證', '1', '53', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29823', 'memberregisteremail', '注冊激活郵件', '1', '54', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29824', 'membercontrol', '會員控製麵板公告', '1', '55', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29825', 'memberforce', '強製瀏覽密鑰', '1', '56', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29826', 'memberforceinfo', '使用帶密鑰的地址便可以瀏覽所有信息，如：', '1', '57', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29827', 'memberManage', '會員管理', '1', '58', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29828', 'memberarrayManage', '會員組管理', '1', '59', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29829', 'memberChecked', '已激活', '1', '60', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29830', 'memberUnChecked', '未激活', '1', '61', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29831', 'memberAdd', '添加會員', '1', '62', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29832', 'memberalllang', '所有語言中的會員', '1', '63', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29833', 'memberType', '會員類型', '1', '64', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29834', 'memberSelectType', '選擇類型', '1', '65', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29835', 'memberUserName', '用戶名', '1', '66', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29836', 'memberEmail', '郵箱地址', '1', '67', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29837', 'memberActive', '激活', '1', '68', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29838', 'memberNum', '登錄次數', '1', '69', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29839', 'memberLastLogin', '最後登錄時間', '1', '70', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29840', 'memberDetail', '詳細', '1', '71', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29841', 'memberMessage', '留言', '1', '72', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29842', 'memberFD', '反饋', '1', '73', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29843', 'memberCV', '簡曆', '1', '74', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29844', 'memberSearch', '用戶名查詢', '1', '75', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29845', 'memberName', '姓名', '1', '76', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29846', 'memberPs', '登錄密碼', '1', '77', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29847', 'memberTip', '不修改請留空', '1', '78', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29848', 'memberPs1', '密碼確認', '1', '79', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29849', 'memberSex', '性別', '1', '80', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29850', 'memberMan', '先生', '1', '81', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29851', 'memberWoman', '女士', '1', '82', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29852', 'memberTel', '聯繫電話', '1', '83', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29853', 'memberCell', '手機', '1', '84', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29854', 'memberTaoBao', '淘寶', '1', '85', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29855', 'memberIntro', '會員簡介', '1', '86', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29856', 'memberCompanyName', '公司名稱', '1', '87', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29857', 'memberCompanyFax', '公司傳真', '1', '88', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29858', 'memberCompanyCode', '公司郵政編碼', '1', '89', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29859', 'memberCompanyAddress', '公司聯繫地址', '1', '90', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29860', 'memberCompanyWebsite', '公司網址', '1', '91', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29861', 'memberCheck', '是否激活', '1', '92', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29862', 'membereditorTitle', '修改會員信息', '1', '93', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29863', 'memberjstxt1', '請輸入確認密碼！', '1', '94', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29864', 'memberjstxt2', '請輸入登錄密碼！', '1', '95', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29865', 'memberjstxt3', '兩次密碼輸入不一致！', '1', '96', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29866', 'memberjstxt4', '會員組名稱不能為空', '1', '97', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29867', 'memberjstxt5', '閱讀權限必須是1~255之間任意整數', '1', '98', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29868', 'memberwebpower', '閱讀權限不能重複', '1', '99', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29869', 'memberarayname', '會員組名', '1', '100', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29870', 'memberpermission', '閱讀權限', '1', '101', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29871', 'memberall', '顯示所有', '1', '102', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29872', 'memberaddarray', '添加會員組', '1', '103', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29873', 'memberaddarraytips1', '值越大，閱讀權限越大。', '1', '104', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29874', 'membertips1', '注冊時間', '1', '105', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29875', 'memberdelactive', '清空未激活會員', '1', '106', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29876', 'modifyadminid', '修改用戶名', '1', '107', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29877', 'modifyadminidto', '修改為', '1', '108', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29878', 'modifyadminidtips', '當創始人賬號為admin時，您擁有一次機會，可以修改創始人名稱。', '1', '109', '7', '0', 'tc');
INSERT INTO `met_language` VALUES ('29879', 'otherfields', '其它字段', '1', '8', '0', '0', 'tc');
INSERT INTO `met_language` VALUES ('29880', 'clickview', '點擊查看', '1', '1', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29881', 'filenomor', '文件未上傳或不存在', '1', '2', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29882', 'uplaoderr1', '上傳失敗！', '1', '3', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29883', 'uplaoderr2', '請上傳zip文件！', '1', '4', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29884', 'uplaoderr3', '請上傳sql後綴文件或zip後綴文件！', '1', '5', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29885', 'managertyp1', '創始人', '1', '6', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29886', 'managertyp2', '管理員', '1', '7', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29887', 'managertyp3', '優化推廣員', '1', '8', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29888', 'managertyp4', '內容管理員', '1', '9', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29889', 'managertyp5', '自定義', '1', '10', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29890', 'temstyle', '模板管理', '1', '11', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29891', 'Universal', '通用設置', '1', '12', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29892', 'pagesting', '列表頁設置', '1', '13', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29893', 'contsting', '內容頁設置', '1', '14', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29894', 'field', '字段', '1', '15', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29895', 'bulkopr', '批量操作', '1', '16', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29896', 'recycle', '內容回收站', '1', '17', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29897', 'smsfuc', '短信功能', '1', '18', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29898', 'webnanny', '網站保姆', '1', '19', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29899', 'myapp', '我的應用', '1', '20', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29900', 'logintitle', '後台登錄', '1', '21', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29901', 'loginid', '用戶名不能為空', '1', '22', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29902', 'loginps', '密碼不能為空', '1', '23', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29903', 'loginadmin', '管理員登錄', '1', '24', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29904', 'loginmetinfo', '打造具有營銷價值的企業網站', '1', '25', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29905', 'loginlanguage', '後台語言', '1', '26', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29906', 'loginusename', '用戶名', '1', '27', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29907', 'loginpassword', '密碼', '1', '28', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29908', 'logincode', '驗證碼', '1', '29', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29909', 'logincodechange', '點擊刷新驗證碼', '1', '30', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29910', 'loginforget', '忘記密碼?', '1', '31', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29911', 'loginconfirm', '登錄', '1', '32', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29912', 'logincodeerror', '驗證碼錯誤', '1', '33', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29913', 'loginname', '用戶名或密碼錯誤', '1', '34', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29914', 'loginpass', '用戶名或密碼錯誤', '1', '35', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29915', 'logindelete', '你沒有刪除信息的權限，請聯繫管理員開通', '1', '36', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29916', 'loginadd', '你沒有添加信息的權限，請聯繫管理員開通', '1', '37', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29917', 'loginedit', '你沒有修改信息的權限，請聯繫管理員開通', '1', '38', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29918', 'loginall', '你沒有添加、修改、刪除信息的權限，請聯繫管理員開通', '1', '39', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29919', 'loginalllang', '你沒有管理此種語言內容的權限，請聯繫管理員開通', '1', '40', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29920', 'indexbasic', '網站設置', '1', '41', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29921', 'indexskin', '界麵風格', '1', '42', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29922', 'indexcolumn', '欄目設置', '1', '43', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29923', 'indexcontent', '內容管理', '1', '44', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29924', 'indexseo', '優化推廣', '1', '45', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29925', 'indexapp', '企業應用', '1', '46', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29926', 'indexuser', '用戶管理', '1', '47', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29927', 'indexwelcom', '您好', '1', '48', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29928', 'indexhome', '網站首頁', '1', '49', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29929', 'indexadmin', '常用功能', '1', '50', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29930', 'indexloginout', '退出', '1', '51', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29931', 'indexsysteminfo', '繫統信息', '1', '52', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29932', 'indexbasicinfo', '基本設置', '1', '53', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29933', 'indexlang', '語言設置', '1', '54', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29934', 'indexfoot', '底部信息', '1', '55', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29935', 'indexotherinfo', '其他內容', '1', '56', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29936', 'indexdataback', '數據備份', '1', '57', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29937', 'indexsafe', '網站安全', '1', '58', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29938', 'indexupload', '上傳文件管理', '1', '59', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29939', 'indexskinset', '模板配置教程', '1', '60', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29940', 'indexcode', '商業授權', '1', '61', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29941', 'indexebook', '使用手冊', '1', '62', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29942', 'indexbbs', '技術支持', '1', '63', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29943', 'indexpic', '縮略圖/水印', '1', '64', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29944', 'indexhomeset', '首頁設置', '1', '65', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29945', 'indexflashset', 'Banner設置', '1', '66', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29946', 'indexflash', 'Banner管理', '1', '67', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29947', 'indexonlineset', '在線客服', '1', '68', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29948', 'indexonline', '客服列表', '1', '69', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29949', 'indexcv', '簡曆參數配置', '1', '70', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29950', 'indexseoset', 'SEO參數', '1', '71', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29951', 'indexhot', '熱門標簽', '1', '72', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29952', 'indexhtmset', '靜態頁麵', '1', '73', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29953', 'indexhtm', '靜態頁麵生成', '1', '74', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29954', 'indexwap', '手機版（免費版）', '1', '75', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29955', 'indexPhysical', '網站體檢', '1', '76', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29956', 'indexwebcount', '訪問統計', '1', '77', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29957', 'indexlink', '友情鏈接', '1', '78', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29958', 'indexfeedbackm', '反饋信息管理', '1', '79', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29959', 'indexadminname', '管理員管理', '1', '80', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29960', 'indexadminattay', '管理員組管理', '1', '81', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29961', 'indexperson', '個人資料', '1', '82', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29962', 'indexwidever1', '寬版', '1', '83', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29963', 'indexwidever2', '切換到寬版', '1', '84', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29964', 'indexnarrowver1', '窄版', '1', '85', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29965', 'indexnarrowver2', '切換到窄版', '1', '86', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29966', 'indexpeople', '的個人資料', '1', '87', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29967', 'indexthanks', '感謝使用', '1', '88', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29968', 'indexmailset', '發件箱設置', '1', '89', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29969', 'adminwenjian', '文件名稱修改失敗，你可以手動修改後台文件夾名稱', '1', '90', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29970', 'funNav1', '不顯示', '1', '91', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29971', 'funNav2', '頭部主導航條', '1', '92', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29972', 'funNav3', '尾部導航條', '1', '93', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29973', 'funNav4', '都顯示', '1', '94', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29974', 'funTip1', '不可寫，請檢查其屬性後重試！', '1', '95', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29975', 'funFail', '失敗！', '1', '96', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29976', 'funOK', '成功！', '1', '97', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29977', 'funFile', '文件', '1', '98', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29978', 'funCreate', '生成文件', '1', '99', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29979', 'funjumpget', '如果您的瀏覽器沒有自動跳轉，請點擊這裏', '1', '100', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29980', 'upfileFail', '創建水印目錄失敗', '1', '101', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29981', 'upfileFail1', '創建縮圖目錄失敗', '1', '102', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29982', 'upfileFail2', '創建圖片目錄失敗', '1', '103', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29983', 'upfileFail3', '指定的路徑不可寫，或者沒有此路徑!', '1', '104', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29984', 'upfileFile', '上傳文件', '1', '105', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29985', 'upfileMax', '大小超出繫統限定值', '1', '106', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29986', 'upfileByte', '字節', '1', '107', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29987', 'upfileTip1', '，不能上傳。', '1', '108', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29988', 'upfileTip2', '文件名已經存在。', '1', '109', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29989', 'upfileTip3', '文件格式不允許上傳。', '1', '110', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29990', 'upfileOK', '文件上傳成功', '1', '111', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29991', 'upfileOver', '上傳的文件超過了 php.ini 中 upload_max_filesize 選項限製的值。', '1', '112', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29992', 'upfileOver1', '上傳文件的大小超過了 HTML 表單中 MAX_FILE_SIZE 選項指定的值。', '1', '113', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29993', 'upfileOver2', '文件隻有部分被上傳。', '1', '114', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29994', 'upfileOver3', '沒有文件被上傳。', '1', '115', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29995', 'upfileOver4', 'upload文件夾沒有寫權限,請聯繫空間商修改。', '1', '116', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29996', 'upfileOver5', '上傳臨時文件夾(upload_tmp_dir)沒有寫權限,請聯繫空間商修改。', '1', '117', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29997', 'upfileNotice', '注意：', '1', '118', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29998', 'upfileFail4', '創建目錄失敗', '1', '119', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('29999', 'upfileFail5', 'bmp的格式無法自動生成縮圖', '1', '120', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30000', 'upfileFail6', '空間不支持GD庫，無法生成縮略圖', '1', '121', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30001', 'upfileFail7', '不支持當前文件格式生成縮略圖，請上傳JPG,GIF,PNG圖片', '1', '122', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30002', 'upfileFail8', '文件損壞,縮略圖生成失敗', '1', '123', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30003', 'upfileFail9', '不支持imagegif函數', '1', '124', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30004', 'upfileFail10', '不支持imagejpeg函數', '1', '125', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30005', 'upfileFail11', '不支持imagepng函數', '1', '126', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30006', 'Error', '錯誤', '1', '127', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30007', 'cvinfo', '簡曆信息', '1', '128', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30008', 'retested', '重新檢測', '1', '129', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30009', 'redownload', '重新下載', '1', '130', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30010', 'supportnot', '空間不支持在線更新，請聯繫空間商開啟curl,fsockopen,pfsockopen函數其中之一', '1', '131', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30011', 'updownerrs', '文件下載失敗，錯誤原因：', '1', '132', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30012', 'updaterr1', '文件備份失敗，錯誤原因：文件沒有可寫權限', '1', '133', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30013', 'updaterr2', '無法備份數據庫', '1', '134', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30014', 'updaterr3', '無法備整站文件', '1', '135', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30015', 'updaterr4', '網站備份成功', '1', '136', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30016', 'updaterr5', '已備份', '1', '137', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30017', 'updaterr6', '文件不可寫，請登陸FTP修改權限為777或聯繫空間商修改', '1', '138', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30018', 'updaterr7', '文件權限檢測正常', '1', '139', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30019', 'updaterr8', '更新文件列表下載失敗', '1', '140', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30020', 'updaterr9', '下載文件中', '1', '141', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30021', 'updaterr10', '下載文件完成，開始更新', '1', '142', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30022', 'updaterr11', '數據庫更新成功', '1', '143', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30023', 'updaterr12', '數據庫更新失敗。錯誤原因：', '1', '144', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30024', 'updaterr13', '數據庫不需要更新', '1', '145', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30025', 'updaterr14', '文件複製失敗。錯誤原因：文件沒有寫權限', '1', '146', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30026', 'updaterr15', '更新文件成功', '1', '147', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30027', 'updaterr16', '是否進行整站備份', '1', '148', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30028', 'updaterr17', '開始整站備份', '1', '149', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30029', 'updaterr18', 'cache文件不可寫，無法完成權限驗證!', '1', '150', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30030', 'updaterr19', '權限認證失敗', '1', '151', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30031', 'updaterr20', '鏈接不上服務器，無法完成商業會員驗證！', '1', '152', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30032', 'updaterr21', '升級出現問題！', '1', '153', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30033', 'updaterr22', '是否重試此步升級?點擊‘取消’將會放棄此次升級！', '1', '154', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30034', 'updaterr23', 'API服務器驗證失敗，API服務器無法訪問您的網站，請關閉網站引導頁或暫時網站防護工具', '1', '155', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30035', 'basictips1', '<b>錯誤提示：</b>pfsockopen和fsockopen函數被禁用！', '1', '156', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30036', 'basictips2', '<b>解決辦法：</b>聯繫空間商開啟其中一個函數。', '1', '157', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30037', 'basictips3', '郵件發送測試', '1', '158', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30038', 'basictips4', '收到郵件說明您網站的繫統郵箱設置正確。', '1', '159', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30039', 'basictips5', '<b>錯誤提示：</b>測試發送郵件失敗！', '1', '160', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30040', 'basictips6', '<b>解決辦法：</b>請檢查帳號密碼和smtp是否有誤或查看郵箱是否開啟smtp服務。', '1', '161', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30041', 'basictips7', '郵箱設置正確！', '1', '162', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30042', 'langadderr1', '非法語言標識', '1', '163', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30043', 'langadderr2', '您現在在此語言進行操作！請到右上角切換到其它語言再刪除！', '1', '164', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30044', 'langadderr3', '語言添加成功！在右上角的網站語言可以切換到新增的語言。', '1', '165', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30045', 'langadderr4', '無法同步官網語言包，錯誤原因：', '1', '166', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30046', 'langadderr5', '您刪除的是默認語言！請先設置一個其它語言為默認語言再操作！', '1', '167', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30047', 'langadderr6', '遠程下載語言包失敗，已複製默認語言包。', '1', '168', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30048', 'dataerr1', '失敗！導入的數據與繫統版本不一致！', '1', '169', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30049', 'fontfamily', '', '1', '170', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30050', 'Submit', '保存', '1', '171', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30051', 'Submitall', '提交', '1', '172', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30052', 'Reset', '重置', '1', '173', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30053', 'Copy', '複製', '1', '174', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30054', 'Copytitle', '複製至...', '1', '175', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30055', 'add', '添加', '1', '176', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30056', 'editor', '編輯', '1', '177', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30057', 'View', '查看', '1', '178', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30058', 'modify', '修改', '1', '179', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30059', 'delete', '刪除', '1', '180', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30060', 'preview', '預覽', '1', '181', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30061', 'operate', '操作', '1', '182', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30062', 'open', '開啟', '1', '183', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30063', 'close', '關閉', '1', '184', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30064', 'type', '類型', '1', '185', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30065', 'sort', '排序', '1', '186', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30066', 'yes', '是', '1', '187', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30067', 'no', '否', '1', '188', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30068', 'metinfo', 'Metinfo企業網站管理繫統', '1', '189', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30069', 'item', '條', '1', '190', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30070', 'selectall', '全選', '1', '191', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30071', 'selected', '選擇', '1', '192', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30072', 'default', '默認', '1', '193', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30073', 'order', 'No.', '1', '194', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30074', '名稱', '', '1', '195', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30075', 'description', '簡短描述', '1', '196', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30076', 'title', '標題', '1', '197', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30077', 'image', '圖片', '1', '198', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30078', 'images', '圖片信息', '1', '199', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30079', 'recom', '推薦', '1', '200', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30080', 'wap', 'wap', '1', '201', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30081', 'top', '置頂', '1', '202', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30082', 'new', '最新信息', '1', '203', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30083', 'newest', '最新', '1', '204', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30084', 'manager', '管理內容', '1', '205', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30085', 'search', '搜索', '1', '206', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30086', 'imagename', '請輸入名稱，留空將采用默認名稱', '1', '207', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30087', 'parameter', '參數', '1', '208', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30088', 'set', '參數配置', '1', '209', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30089', 'read', '已讀', '1', '210', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30090', 'htmlok', '支持HTML語言', '1', '211', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30091', 'deleteselected', '刪除', '1', '212', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30092', 'ordernumber', '數字越小排名越靠前', '1', '213', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30093', 'access', '權限', '1', '214', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30094', 'access0', '不限', '1', '215', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30095', 'access1', '普通會員', '1', '216', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30096', 'access2', '代理商', '1', '217', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30097', 'access3', '管理員', '1', '218', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30098', 'updatetime', '更新時間', '1', '219', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30099', 'addtime', '發布時間', '1', '220', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30100', 'hits', '點擊次數', '1', '221', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30101', 'keywords', '關鍵詞', '1', '222', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30102', 'keywordsinfo', '多個關鍵詞請用\",\"隔開', '1', '223', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30103', 'descriptioninfo', '用於搜索引擎優化', '1', '224', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30104', 'webaccess', '訪問權限', '1', '225', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30105', 'content', '內容', '1', '226', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30106', 'contentdetail', '詳細內容', '1', '227', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30107', 'detail', '查看詳細', '1', '228', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30108', 'selectnow', '選擇', '1', '229', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30109', 'move', '轉移', '1', '230', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30110', 'anonymity', '匿名', '1', '231', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30111', 'launched', '點擊展開/隱藏側欄', '1', '232', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30112', 'Operating', '操作繫統', '1', '233', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30113', 'noorderinfo', '排序越小越靠前', '1', '234', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30114', 'displayimg', '展示圖片', '1', '235', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30115', 'displayimgTip', '展示圖片', '1', '236', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30116', 'delnow', '當前選中', '1', '237', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30117', 'marks', '：', '1', '238', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30118', 'pages', '頁', '1', '239', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30119', 'pageGo', '轉到', '1', '240', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30120', 'jsok', '操作成功', '1', '241', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30121', 'dataerror', '數據錯誤', '1', '242', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30122', 'js1', '請稍等,繫統檢測中....', '1', '243', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30123', 'js2', '數據出錯了', '1', '244', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30124', 'js3', '管理員帳號不能為空', '1', '245', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30125', 'js4', '登錄密碼不能為空', '1', '246', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30126', 'js5', 'email不能為空', '1', '247', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30127', 'js6', '兩次輸入的密碼不一樣', '1', '248', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30128', 'js7', '確定要刪除選中的信息嗎？一旦刪除將不能恢複！', '1', '249', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30129', 'js8', '模板名稱不能為空', '1', '250', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30130', 'js9', '模板文件夾不能為空', '1', '251', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30131', 'js10', '您的修改內容還沒有保存，您確定離開嗎？', '1', '252', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30132', 'js11', '欄目名稱不能為空', '1', '253', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30133', 'js12', '欄目文件夾名稱不能為空', '1', '254', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30134', 'js13', '請輸入標題', '1', '255', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30135', 'js14', '請選擇二級及三級欄目', '1', '256', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30136', 'js15', '請選擇上傳文件', '1', '257', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30137', 'js16', '下載地址不能為空', '1', '258', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30138', 'js17', '招聘職位不能為空', '1', '259', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30139', 'js18', '原文字不能為空', '1', '260', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30140', 'js19', '網站名稱不能為空', '1', '261', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30141', 'js20', '網站地址不能為空', '1', '262', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30142', 'js21', '設置已生效，是否刪除所有已生成的靜態頁麵？', '1', '263', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30143', 'js22', '是否改變其狀態?', '1', '264', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30144', 'js23', '沒有選中的記錄!', '1', '265', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30145', 'js24', '確定嗎？', '1', '266', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30146', 'js25', '圖片地址不能為空！', '1', '267', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30147', 'js26', 'Flash地址不能為空！', '1', '268', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30148', 'js27', '請填寫地址！', '1', '269', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30149', 'js28', '不限', '1', '270', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30150', 'js29', '普通會員', '1', '271', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30151', 'js30', '代理商', '1', '272', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30152', 'js31', '管理員', '1', '273', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30153', 'js32', '是否同時刪除相關簡曆？', '1', '274', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30154', 'js33', '靜態頁麵名稱不能為空', '1', '275', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30155', 'js34', '請先轉移該欄目的三級欄目', '1', '276', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30156', 'js35', '上傳臨時文件夾（upload_tmp_dir）不可寫或者域名/後台文件夾/include/uploadify.php沒有訪問權限。', '1', '277', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30157', 'js36', '請選擇語言', '1', '278', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30158', 'js37', '請選擇一級欄目', '1', '279', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30159', 'js38', '請選擇二級欄目', '1', '280', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30160', 'js39', '請選擇三級欄目', '1', '281', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30161', 'js40', '正在提交..', '1', '282', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30162', 'js41', '不能為空！', '1', '283', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30163', 'js42', '提交成功!', '1', '284', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30164', 'js43', '添加成功！是否繼續添加信息？', '1', '285', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30165', 'js44', 'Email地址不正確！', '1', '286', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30166', 'js45', '檢測表單..', '1', '287', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30167', 'js46', '不能重複', '1', '288', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30168', 'js47', '正在刪除靜態頁麵...', '1', '289', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30169', 'js48', '正在加載...', '1', '290', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30170', 'js49', '撤銷', '1', '291', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30171', 'js50', '該語言不存在相同模塊的一級欄目', '1', '292', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30172', 'js51', '請填寫欄目名稱', '1', '293', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30173', 'js52', '請命名欄目文件夾名稱', '1', '294', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30174', 'js53', '完成靜態頁麵生成！', '1', '295', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30175', 'js54', '正在生成靜態頁麵...', '1', '296', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30176', 'js55', '返回', '1', '297', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30177', 'js56', '移動為一級欄目必須設置一個新的目錄名稱(目錄名隻能是數字或字母)', '1', '298', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30178', 'js57', '您確認要移動該欄目嗎？', '1', '299', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30179', 'js58', '是否合並欄目？合並後該目錄名稱將被修改,點取消則保持原目錄名稱並進入下一步', '1', '300', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30180', 'js59', '請填寫目錄名稱', '1', '301', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30181', 'js60', '是否把選定內容放入回收站？', '1', '302', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30182', 'js61', '您確定要複製所選嗎？', '1', '303', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30183', 'js62', '您確定要移動所選嗎？', '1', '304', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30184', 'js63', '確定清空', '1', '305', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30185', 'js64', '是否還原所選內容', '1', '306', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30186', 'js65', '確定要還原所有回收站的內容？', '1', '307', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30187', 'js66', '確定要徹底清空所有回收站的內容？', '1', '308', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30188', 'js67', '請至少選擇一個所屬欄目', '1', '309', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30189', 'js68', '請選擇zip格式文件', '1', '310', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30190', 'js69', '確定啟用選中的風格嗎？', '1', '311', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30191', 'js70', '確定啟用選中的模板嗎？', '1', '312', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30192', 'jsx1', '載入中...', '1', '313', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30193', 'jsx2', '請至少選一種語言！', '1', '314', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30194', 'jsx3', '請先選擇需要複製的表單', '1', '315', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30195', 'jsx4', '表單複製成功！', '1', '316', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30196', 'jsx5', '編輯器載入中...', '1', '317', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30197', 'jsx6', '成功', '1', '318', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30198', 'jsx7', '文件寫入失敗，可能沒有寫入的權限', '1', '319', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30199', 'jsx8', '完成！', '1', '320', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30200', 'jsx9', '錯誤：需要生成的靜態頁麵路徑不存在！', '1', '321', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30201', 'jsx10', '錯誤', '1', '322', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30202', 'jsx11', '正在獲取信息...', '1', '323', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30203', 'jsx12', '該欄目下沒有內容！', '1', '324', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30204', 'jsx13', '不可同時操作。', '1', '325', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30205', 'jsx14', '抱歉！該語言下沒有同模塊欄目存在，請先到對應語言添加欄目再操作！', '1', '326', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30206', 'jsx15', '上傳', '1', '327', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30207', 'jsx16', '正在上傳', '1', '328', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30208', 'jsx17', '上傳成功！', '1', '329', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30209', 'jsx18', '正在測試...', '1', '330', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30210', 'jsx19', '測試失敗！請檢查帳號密碼是否正確。', '1', '331', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30211', 'jsx20', '正在檢測...', '1', '332', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30212', 'jsx21', '無法連接到服務器', '1', '333', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30213', 'jsx22', '備份當前數據...', '1', '334', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30214', 'jsx23', '開始升級，檢測目錄權限...', '1', '335', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30215', 'jsx24', '下載文件...', '1', '336', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30216', 'jsx25', '更新數據庫...', '1', '337', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30217', 'jsx26', '更新文件...', '1', '338', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30218', 'jsx27', '靜態頁麵名已存在', '1', '339', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30219', 'jsx28', '是否將選定內容放入回收站？', '1', '340', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30220', 'jsx29', '是否全部執行', '1', '341', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30221', 'jsx30', '靜態頁麵名稱與其它信息ID號衝突，請更換為字母+數字，不建議純數字的靜態頁麵名稱', '1', '342', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30222', 'jsx31', '失敗', '1', '343', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30223', 'jsx32', '登錄超時，請重新登錄！', '1', '344', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30224', 'jsx33', '展開高級選項', '1', '345', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30225', 'jsx34', '隱藏高級選項', '1', '346', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30226', 'jsx35', '上傳臨時文件夾(upload_tmp_dir)沒有寫權限,請聯繫空間商修改。', '1', '347', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30227', 'deleteJS', '請先添加管理員再刪除！', '1', '348', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30228', 'NoidJS', '沒有此用戶', '1', '349', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30229', 'NoidJS1', '沒有此用戶或郵箱地址不正確', '1', '350', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30230', 'NewPassJS', '請您登錄郵箱收取最新密碼', '1', '351', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30231', 'delall', '批量刪除後請手動生成二三級列表靜態頁麵', '1', '352', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30232', 'reall', '批量還原後請手動生成列表靜態頁麵', '1', '353', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30233', 'loginIntput', '請輸入登錄帳號!', '1', '354', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30234', 'loginUserErr', '<font color=\"red\">用戶名格式錯誤</font>', '1', '355', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30235', 'loginUserMudb', '<font color=\"red\">此用戶名已經被使用</font>', '1', '356', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30236', 'loginRegok', '<font color=\"green\">恭喜你，可以注冊</font>', '1', '357', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30237', 'loginUserMudb1', '此用戶名已經被使用', '1', '358', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30238', 'loginFail', '操作失敗!', '1', '359', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30239', 'loginSkin', '上傳失敗！此模板風格已經存在！', '1', '360', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30240', 'loginOldwords', '此關鍵詞已經被替換過!', '1', '361', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30241', 'ssl', 'SSL服務方式', '1', '362', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30242', 'tls', 'TLS服務方式', '1', '363', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30243', 'xtips', '小技巧：Ctrl + 回車鍵 可以快捷保存', '1', '364', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30244', 'unitytxt_1', '功能設置', '1', '365', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30245', 'unitytxt_2', '勾選則采用默認設置', '1', '366', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30246', 'unitytxt_3', '其它設置（用於不支持JS的移動終端展示，即免費版本的WAP前台頁麵）', '1', '367', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30247', 'unitytxt_4', '功能相關', '1', '368', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30248', 'unitytxt_5', '後台操作', '1', '369', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30249', 'unitytxt_6', '版本不一致', '1', '370', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30250', 'unitytxt_7', '備份包下載後建議及時刪除備份文件，以免影響空間大小。', '1', '371', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30251', 'unitytxt_8', '該語言設置了獨立域名，需要修改網站網址請在<font class=\"red\">語言設置</font>中修改。', '1', '372', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30252', 'unitytxt_9', '同步參數', '1', '373', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30253', 'unitytxt_10', '僅適用用於中文前台語言，瀏覽者可以在簡繁體之間切換。', '1', '374', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30254', 'unitytxt_11', '密碼修改（不修改請留空）', '1', '375', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30255', 'unitytxt_12', '至', '1', '376', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30256', 'unitytxt_13', '底部信息設置（顯示在網站前台底部）', '1', '377', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30257', 'unitytxt_14', '樣式設置', '1', '378', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30258', 'unitytxt_15', '其它設置', '1', '379', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30259', 'unitytxt_16', '標準指紋文件', '1', '380', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30260', 'unitytxt_17', '指紋文件', '1', '381', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30261', 'unitytxt_18', '備份', '1', '382', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30262', 'unitytxt_19', '內置應用列表', '1', '383', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30263', 'unitytxt_20', '已安裝應用列表', '1', '384', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30264', 'unitytxt_21', '您還沒有下載任何應用功能', '1', '385', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30265', 'unitytxt_22', '開啟即可生效，無需生成。<br>如服務器需要手動配置偽靜態規則文件，請在右上角下載。', '1', '386', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30266', 'unitytxt_23', '徹底解決靜態頁麵經常需要手動生成的煩惱', '1', '387', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30267', 'unitytxt_24', 'Title設置', '1', '388', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30268', 'unitytxt_25', '關鍵詞設置', '1', '389', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30269', 'unitytxt_26', '優化文字設置（可用於增加關鍵詞密度）', '1', '390', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30270', 'unitytxt_27', '每個欄目對應一個功能模塊，請在欄目設置裏查看所屬模塊。', '1', '391', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30271', 'unitytxt_28', '自定義時間參數', '1', '392', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30272', 'unitytxt_29', '請勾選要顯示欄目', '1', '393', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30273', 'unitytxt_30', '多欄目顯示', '1', '394', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30274', 'unitytxt_31', '顯示縮略圖', '1', '395', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30275', 'unitytxt_32', '隱藏縮略圖', '1', '396', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30276', 'unitytxt_33', '權限設置', '1', '397', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30277', 'unitytxt_34', '資料文檔上傳', '1', '398', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30278', 'unitytxt_35', '回發郵件給此用戶', '1', '399', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30279', 'unitytxt_36', '第三方代碼（一般用於放置百度商橋代碼、站長統計代碼、穀歌翻譯代碼等）', '1', '400', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30280', 'unitytxt_37', '代碼會放在 &lt;/head&gt; 標簽以上', '1', '401', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30281', 'unitytxt_38', '代碼會放在 &lt;/body&gt; 標簽以上', '1', '402', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30282', 'unitytxt_39', '設置', '1', '403', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30283', 'unitytxt_40', '首頁信息列表顯示條數', '1', '404', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30284', 'unitytxt_41', '首頁友情鏈接設置', '1', '405', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30285', 'unitytxt_42', '列表頁每頁顯示條數', '1', '406', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30286', 'unitytxt_43', '列表頁展示方式', '1', '407', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30287', 'unitytxt_44', '直接顯示產品縮略圖列表，點擊縮略圖進入產品詳情頁。', '1', '408', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30288', 'unitytxt_45', '顯示產品分類列表（圖片為該分類的欄目圖片，在欄目設置中上傳），點擊對應的分類圖片後進入該分類的產品縮略圖列表。', '1', '409', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30289', 'unitytxt_46', '其它頁麵細節設置', '1', '410', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30290', 'unitytxt_47', '了解商業授權', '1', '411', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30291', 'unitytxt_48', '前日', '1', '412', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30292', 'unitytxt_49', '選擇指向功能', '1', '413', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30293', 'unitytxt_50', '常用功能名稱', '1', '414', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30294', 'unitytxt_51', '直接下載壓縮包會占用空間流量，如果空間限製流量，建議通過FTP下載。您確定要下載嗎？', '1', '415', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30295', 'unitytxt_52', '請選擇一個指向功能！', '1', '416', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30296', 'unitytxt_53', '請輸入常用功能名稱！', '1', '417', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30297', 'unitytxt_54', '授權域名', '1', '418', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30298', 'unitytxt_55', '網站名稱', '1', '419', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30299', 'unitytxt_56', '授權類型', '1', '420', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30300', 'unitytxt_57', '授權日期', '1', '421', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30301', 'unitytxt_58', '到期日期', '1', '422', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30302', 'unitytxt_59', '重新錄入商業授權碼', '1', '423', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30303', 'unitytxt_60', '享有服務', '1', '424', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30304', 'unitytxt_61', '服務方式', '1', '425', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30305', 'unitytxt_62', '電話支持', '1', '426', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30306', 'unitytxt_63', 'QQ支持', '1', '427', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30307', 'unitytxt_64', '論壇支持', '1', '428', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30308', 'unitytxt_65', '服務信息', '1', '429', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30309', 'unitytxt_66', '服務期限', '1', '430', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30310', 'unitytxt_67', '修改為', '1', '431', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30311', 'unitytxt_68', '當創始人賬號為admin時，您擁有一次機會，可以修改創始人名稱。', '1', '432', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30312', 'unitytxt_69', '安裝、升級文件刪除', '1', '433', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30313', 'unitytxt_70', '上傳文件', '1', '434', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30314', 'unitytxt_71', '二維碼', '1', '435', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30315', 'unitytxt_72', '地圖設置', '1', '436', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30316', 'unitytxt_73', '地圖設置（用於設置wap頁麵底部固定功能）', '1', '437', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30317', 'unitytxt_74', '查看商業版WAP功能', '1', '438', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30318', 'unitytxt_75', '模板設置', '1', '439', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30319', 'unitytxt_76', '縮略圖尺寸設置', '1', '440', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30320', 'unitytxt_77', '更新內容時候自動更新網站地圖', '1', '441', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30321', 'proposal', '我要提建議', '1', '442', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30322', 'onlinehelp', 'QQ未啟用幫助文檔：', '1', '104', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('30323', 'setbasicTip14', 'gmail郵箱需要空間支持SSL，請開啟SSL，或換成其他郵箱！！！', '1', '429', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('30324', 'setbasicTip15', '空間不支持SSL方式發送郵件，請開啟SSL，或換成TLS方式！！！', '1', '430', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('30325', 'onlinehelp1', '添加的QQ需要到【shang.qq.com】登錄後在【商家溝通組建—設置】開啟QQ的在線狀態，否則將顯示“未啟用”', '1', '105', '2', '0', 'tc');
INSERT INTO `met_language` VALUES ('30326', 'dlapptips19', '有新應用發布了！！！', '1', '358', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('30327', 'dlapptips20', '有更新', '1', '359', '6', '0', 'tc');
INSERT INTO `met_language` VALUES ('30328', 'feedbackautosms', '短信回複設置', '1', '177', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('30329', 'fdincAutosms', '短信回複', '1', '178', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('30330', 'fdincAutoContentsms', '回複短信內容', '1', '179', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('30331', 'fdincTipsms', '勾選後將自動向提交表單的用戶回複短信，必須短信充值才能使用', '1', '180', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('30332', 'fdinctellsms', '聯繫電話字段名', '1', '181', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('30333', 'fdinctells', '用於獲取用戶的聯繫電話，以便回複短信。字段類型必須為“簡短”', '1', '182', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('30334', 'hotsearches', '熱門搜索', '1', '431', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('30367', 'memberInformation', '會員信息設置', '1', '67', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30370', 'Previous_news', '上壹篇', '0', '9', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('30373', 'Next_news', '下壹篇', '0', '10', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('30379', 'tradewap', '手機版（商业版）', '1', '75', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30382', 'paraname', '名稱', '1', '187', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30385', 'parazce', '註冊信息', '1', '200', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30388', 'parazce_explain', '註：當註冊信息勾選了的字段才會在會員註冊界面顯示，沒有勾選則只能在編輯會員信息界面中顯示', '1', '201', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30355', 'searchresult', '搜索結果', '1', '432', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('30356', 'savenow', '後臺所有語言均可以修改', '1', '433', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('30357', 'onlineupdate', '在線升級', '1', '436', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('30358', 'updatenow', '立即升級', '1', '437', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('30359', 'updatelater', '稍後升級', '1', '438', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('30360', 'tag', 'Tag標籤', '1', '434', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('30361', 'tagtips', '多個Tag標籤請用“|”隔開', '1', '435', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('30362', 'displaytype', '前台顯示', '1', '183', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('30363', 'checkupdate', '檢測更新', '1', '439', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('30364', 'checkupdatetips', '對不起！您的權限不夠，無法操作在線升級。', '1', '440', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('30391', 'message_name', '姓名字段名', '1', '240', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('30394', 'message_name1', '用於獲取用戶的姓名，字段類型必須為“簡短”', '1', '241', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('30397', 'message_content', '留言內容字段名', '1', '242', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('30400', 'message_content1', '用於獲取用戶的留言內容，字段類型必須為“文本”', '1', '243', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('30415', 'message_AcceptMail', '留言郵件接收郵箱', '1', '244', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('30403', 'popular_explain', '當\"替換為\"的值為空時，則把\"原文字\"的值替換為空', '1', '25', '5', '0', 'tc');
INSERT INTO `met_language` VALUES ('30418', 'column_search', '欄目搜索', '1', '245', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('30421', 'column_searchname', '請輸入欄目名稱', '1', '246', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('30424', 'search_inthe', '正在搜索中', '1', '247', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('30427', 'search_Noresults', '抱歉，沒有找到您要搜索的欄目', '1', '248', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('30406', 'membertips', '會員設置', '1', '244', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('30409', 'memberstyle', '會員組設置', '1', '245', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('30412', 'memberflashset', '會員功能設置', '1', '246', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('30430', 'messageVoice', '留言表單設置', '1', '443', '4', '0', 'tc');
INSERT INTO `met_language` VALUES ('30433', 'cvall', '全部', '0', '39', '4', '0', 'cn');
INSERT INTO `met_language` VALUES ('30762', 'jsx36', '註意：zip格式不允許上傳，請到網站安全裏面添加zip上傳格式', '1', '444', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30765', 'jsx37', '註意：sql格式不允許上傳，請到網站安全裏面添加sql上傳格式', '1', '445', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30768', 'jsx38', '您沒有完全控制權限，請聯系管理員開通', '1', '446', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30771', 'appmodule', '應用模塊', '1', '1', '3', '0', 'tc');
INSERT INTO `met_language` VALUES ('30774', 'formerror1', '請填寫此字段。', '1', '0', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30777', 'formerror2', '請從這些選項中選擇壹個。', '1', '0', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30780', 'formerror3', '請輸入正確的手機號碼。', '1', '0', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30783', 'formerror4', '請輸入正確的Email地址。', '1', '0', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30786', 'formerror5', '兩次輸入的密碼不壹致，請重新輸入。', '1', '0', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30789', 'formerror6', '請輸入至少&metinfo&個字符。', '1', '0', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30792', 'formerror7', '輸入不能超過&metinfo&個字符。', '1', '0', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30795', 'formerror8', '輸入的字符數必須在&metinfo&之間。', '1', '0', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30798', 'smstips96', '其它', '1', '0', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30801', 'smstips97', '用戶通知', '1', '0', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30804', 'js72', '是否導入管理員及會員信息，確定則當前的管理員及會員信息會被導入的數據替換，取消則管理員及會員還是當前的。', '1', '0', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('30807', 'upfileFail20', '刪除縮略圖緩存', '1', '0', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('34219', 'sys_navigation1', '此功能预览无法查看效果，需要保存后刷新前台页面才能体验。', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34218', 'sys_navigation2', '显示栏目列表时，图片需要在栏目设置中上传（栏目图片）。', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34217', 'suggested_size', '建议尺寸', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34216', 'more_options', '更多选项', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34214', 'current_input', '（当前已输入', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34215', 'sys_characters', '个字符）', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34213', 'settings_effect', '设置已生效', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34211', 'email_Settings', '邮件发送设置', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34212', 'website_information', '网站信息', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34210', 'third_party_ode', '第三方代码', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35214', 'sys_views', '瀏覽次數', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35200', 'services_future', '可用於找回密碼以及獲取應用市場未來提供的更多服務', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35199', 'personal_information', '第二步：設置個人信息', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35198', 'Repeat_password', '重復登陸密碼', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35197', 'sys_password', '登陸密碼', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35196', 'create_account', '第壹步：創建賬戶', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35195', 'buy_time', '購買時間', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35194', 'please_click', '支付成功，請點擊！！', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35193', 'payment_method', '請選擇支付方式', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35192', 'sys_unionpay', '銀聯', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35191', 'enter_amount', '請輸入充值金額', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35190', 'payment_amount', '支付金額', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35189', 'account_Settings', '賬戶設置', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35188', 'consumption_record', '消費記錄', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35187', 'the_balance', '余額', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35186', 'website_manually', '登錄成功後您的網站將永久自動登錄此帳號，除非手動退出。', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35185', 'application_market', '登陸應用市場', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35184', 'installations', '安裝量', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35183', 'permission_download', '無權限下載', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35182', 'goods_comment', '購買商品後才能評論', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35181', 'product_commented', '同壹個產品最多評論3次', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35180', 'password_mistake', '支付密碼錯誤', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35179', 'please_again', '請先登錄應用商店；應用商店采用獨立的賬號體系，如沒有註冊賬號請先操作註冊！', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35178', 'have_bought', '已購買', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35177', 'download_application', '當前系統無法下載此應用，請升級系統', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35176', 'sys_evaluation', '評價成功！感謝您的評價！', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35175', 'click_rating', '請點擊星形評分！', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35174', 'downloads', '開始下載', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35173', 'system_temporarily', '您的充值訂單，系統暫未收到，請稍後查看財務記錄，或聯系官網客服人員。', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35172', 'prepaid_successfully', '充值成功', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35171', 'repeat_password', '重復支付密碼', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35170', 'payment_password', '新支付密碼', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35169', 'original_password1', '請輸入原支付密碼', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35168', 'original_password', '原支付密碼', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35167', 'password_length', '密碼長度', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35166', 'please_enter', '請輸入新密碼', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35165', 'login_password_new', '新登錄密碼', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35164', 'original_passwords1', '請輸入原密碼', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35163', 'original_passwords', '原登錄密碼', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35162', 'account_password', '請填寫應用市場賬戶登錄密碼，而不是網站登錄密碼。', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35161', 'please_password', '請輸入登錄密碼', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35159', 'popular_template', '熱門模板', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35160', 'login_password1', '您必須填寫登錄密碼才能修改資料', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35158', 'popular_application', '熱門應用', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35157', 'number_installation', '安裝次數', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35156', 'application_name', '應用名稱', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35155', 'application_developers', '開發者應用', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35154', 'website_developers', '開發者網站', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35153', 'introduction_developers', '開發者簡介', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35152', 'sys_head', '頭像', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35151', 'name_developers', '開發者名稱', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35150', 'dont_fill', '可不填', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35149', 'mouse_click_rating', '鼠標放到星形上點擊評分', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35148', 'score', '評分', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35147', 'want_comment', '我要評論', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35146', 'next_page', '下壹頁', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35145', 'back', '上壹頁', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35144', 'running_environment', '運行環境', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35143', 'updated_date', '更新日期', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35142', 'online_presentation', '在線演示', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35140', 'is_introduced', '介紹', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35141', 'screenshots', '截圖', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35139', 'comments', '評論', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35138', 'evaluation', '人評價', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35137', 'total_of', '共', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35136', 'password_input', '請輸入支付密碼', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35135', 'pay_password', '支付密碼', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35134', 'temporary_access1', '請輸入臨時訪問域名，必須是三級域名。', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35133', 'temporary_access', '臨時訪問域名', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35131', 'top_domain_names', '頂級域名', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35132', 'template_domain', '請輸入模板綁定的壹級域名', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35130', 'buy_template_must', '購買後程序將自動獲取當前網站域名並進行綁定，以後此模板只能用於綁定域名下使用。', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35129', 'template_domain', '模板綁定域名說明', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35128', 'amount_of', '金額', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35127', 'purchase_program', '購買項目', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35126', 'success_payment', '支付成功後，請點擊此鏈接跳轉！！', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35125', 'pay_success', '支付成功', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35124', 'latest_version', '已是最新版', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35123', 'be_updated', '可更新至', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35122', 'special_thanks', '特別感謝', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35121', 'update_log', '更新日誌', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35120', 'current_version', '當前版本', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35119', 'get_in', '獲取中', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35118', 'program_information', '程序信息', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35117', 'official_information', '官方信息', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35116', 'recruitment_information', '招聘信息', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35115', 'system_maintenance', '系統維護中', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35114', 'permission_download', '沒有權限下載', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35113', 'link_remote', '鏈接不上遠程服務器', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35112', 'try_again', '重試', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35111', 'give_installation', '放棄安裝', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35110', 'installation_errors', '安裝時錯誤，可能由以下原因造成', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35109', 'installation_errors', '安裝錯誤', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35108', 'configuratio_template', '配置模板', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35107', 'seconds_background', '秒好後刷新後臺', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35106', 'installation_complete1', '安裝完成，', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35105', 'installation_complete', '安裝完成', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35104', 'installation', '安裝中', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35103', 'possible_reasons', '可能原因', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35102', 'download_interrupt', '文件下載中斷', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35101', 'write_permission', '文件沒有寫權限或其新建的子文件夾沒有寫權限', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35100', 'download', '下載中', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35098', 'document_upgrade', '系統升級文檔', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35099', 'following_documents', '下列文件沒有修改權限，無法進行升級操作！', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35097', 'file_permissions', '文件權限檢測中', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35096', 'input_link_address', '請輸入鏈接地址', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35095', 'enter_replacement', '請輸入替換後的文字', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35094', 'enter_original', '請輸入原文字', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35093', 'modify_system_rules', '系統規則請勿修改', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35092', 'displays_directory', '是否顯示根目錄下文件列表', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35091', 'anchor_text', '站內錨文本', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35090', 'yesterday', '昨天', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35089', 'today', '今天', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35088', 'please_select', '請選擇欄目', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35087', 'log_successfully', '登陸成功', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35086', 'out_of_success', '退出成功', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35085', 'password_changing', '支付密碼修改', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35084', 'login_password_changing', '登錄密碼修改', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35083', 'account_information', '賬戶信息設置', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35082', 'my_bill', '充值記錄', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35081', 'fine', '精 選', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35080', 'form_controls1', '表格控件', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35079', 'form_controls', '表單控件', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35078', 'to_move', '移動到', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35077', 'copied_to', '復制到', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35075', 'add_primary_columns', '添加壹級欄目', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35076', 'keep_sorting', '保存排序', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35074', 'path_variable', '為當前應用根目錄，僅僅做為路徑變量', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35073', 'bring_in_more', '還可以引入多個', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35072', 'time_Settings', '時間設置', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35071', 'support_special', '後綴，不支持特殊字符', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35070', 'dont_add', '構成方式，不要加', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35069', 'static_page_setup', '為空則使用靜態頁面設置中設置的', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35068', 'multiple_keywords', '可設置多個關鍵詞', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35067', 'structure_mode', '構成方式', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35066', 'parameter_Settings', '參數設置中設置的', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35065', 'null_used', '為空則使用', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35064', 'title_cannot_empty!', '標題不能為空！', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35063', 'please_enter_title', '請輸入文章標題', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35062', 'home_link_text', '首頁鏈接文字', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35061', 'position_navigation', '位置導航前綴名稱', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35060', 'list_on_left', '列表頁左側標題', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35059', 'title_words', '標題文字', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35058', 'search_placeholder', '頭部搜索占位文本', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35057', 'below_recommended_Settings', '以下建議使用默認設置', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35056', 'image_module_explain', '圖片模塊列表頁每行顯示個數，請根據圖片尺寸合理設置', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35055', 'product_module_explain', '產品模塊列表頁每行顯示個數，請根據圖片尺寸合理設置', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35054', 'number_line', '每行顯示個數', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35053', 'adaptive', '自適應', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35052', 'inside_pages_subtopic', '內頁左側子欄目列表', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35051', 'hide_default', '默認隱藏所有', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35050', 'open_default', '默認展開所有', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35048', 'image_style', '圖片樣式', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35049', 'link_style_switch', '友情鏈接樣式切換', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35047', 'text_style', '文字樣式', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35046', 'please_cooperate', '請與縮略圖大小配合設置，每行數量越多縮略圖越小反之越大', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35045', 'page_scrolling_visual', '首頁滾動圖片可視數量', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35044', 'article_number_list', '文章列表顯示數量', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35043', 'short_description_words', '簡短描述字數', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35042', 'page_block', '首頁區塊', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35041', 'title_words', '標題字數', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35040', 'moves_right', '右移', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35039', 'move_down', '下移', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35037', 'links_corner_address', '標題及右上角鏈接地址', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35038', 'commonly_Settings', '常用設置', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35036', 'homepage_configuration', '首頁快速配置', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35035', 'upload_component', '上傳組件', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35034', 'radio_buttons', '單選按鈕', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35033', 'multiline_text', '多行文本', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35032', 'partitions', '分區', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35031', 'delete_information', '您確定要刪除該信息嗎？刪除之後無法再恢復。', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35030', 'page_for_details', '詳情頁', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35029', 'separated_vertical', '值，中間用豎線隔開。如', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35028', 'option', '選項文字', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35027', 'radio_set', '單選設置', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35026', 'click_button_effect', '點擊頁面底部的保存按鈕才生效', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35025', 'label_function', '通過函數標簽', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35024', 'information_columns4', '用戶選中指定欄目並保存後，前臺對應的變量可以得到相應的值。', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35023', 'module_identifier', '模塊標識', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35022', 'value_structure', '值結構', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35021', 'information_columns3', '比如文章列表只能顯示帶信息列表的欄目。', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35020', 'information_columns2', '可以限制用戶選擇的欄目，以便於正確的引導用戶設置模板。', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35019', 'information_columns1', '只能選擇帶信息列表的欄目（文章、產品、圖片、下載、招聘）', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35018', 'only_choose_column', '只能選擇壹級欄目', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35017', 'optional_columns', '可選所有欄目', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35016', 'column_selection', '欄目選擇', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35015', 'clear_variables', '您確定要清空所有變量嗎？', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35013', 'custom_tag', '增加自定義標簽', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35014', 'preservation_effect', '保存生效', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35012', 'variables_using_method', '變量使用方法', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35011', 'current_template', '當前模板', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35010', 'template_folder_under', '下的模板文件夾', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35009', 'delete_template', '此處刪除模板並不會刪除', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35008', 'template_code', '模板編號', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35007', 'preview', '預覽圖', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35006', 'template_Settings', '裏，這樣保存時才能載入模板設置。', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35005', 'site_directory', '網站根目錄', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35003', 'cell_template', '手機模板', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35004', 'modify_template', '如果是修改模板，請先將原模板放到', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35002', 'computer_template', '電腦模板', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35000', 'need_manually_create', '需要手動建立模板文件夾', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35001', 'template_type', '模板類型', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34998', 'new_template', '新增模板', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34999', 'template_folder', '模板文件夾', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34997', 'default_values', '默認值', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34996', 'variable_name', '變量名稱', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34995', 'Fill_option', '選項值”填入選項', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34994', 'press_option', '按“選項內容', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34993', 'setting_item12', '設置選項類型', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34991', 'location_linkage', '位置聯動', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34992', 'setting_item1', '此設置將放到選中項的後壹項', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34990', 'set_title', '設置標題', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34988', 'detail_page', '詳細頁', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34989', 'option_set', '選項設置', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34987', 'first', '首項', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34986', 'global', '全局', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34985', 'special', '特殊', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34984', 'label', '標簽', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34983', 'slider', '滑塊', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34982', 'color_picker', '顏色選擇器', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34981', 'sys_editor', '編輯器', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34980', 'down_program3', '三級欄目下拉，所有模塊欄目', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34979', 'for', '為', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34978', 'down_program2', '的三級欄目下拉', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34977', 'down_program1', '的壹級欄目下拉', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34975', 'text_input', '文本輸入框', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34976', 'sys_parameter36', '小於', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34974', 'sys_variables', '系統變量', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34973', 'short_text', '簡短文本', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34971', 'class_Settings', '分類設置', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34972', 'block_set', '區塊設置', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34969', 'down_options', '下拉選項', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34970', 'title_bar', '標題欄', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34967', 'Repeat_password', '重復密碼', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34968', 'verify_password', '請重復輸入密碼', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34965', 'for_details', '詳情', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34966', 'order_number', '訂單號', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34964', 'template', '模板', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34963', 'application', '應用', '1', '0', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('34962', 'Prompt_domain', '請輸入域名', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34961', 'Prompt_password', '請輸入密碼', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34960', 'Prompt_alipay', '請輸入支付寶賬號', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34959', 'alipay', '支付寶', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34958', 'account', '賬號', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34957', 'Prompt_email', '請輸入郵箱地址', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34956', 'mailbox', '郵箱', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34955', 'Prompt_mobile', '請輸入手機號碼', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34954', 'Prompt_cell', '請輸入電話號碼', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34953', 'female', '女', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34952', 'male', '男', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34951', 'Prompt_nickname', '請輸入會員昵稱', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34950', 'nickname', '昵稱', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34949', 'Prompt_user', '請輸入您的用戶名', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34948', 'info_modification', '會員信息修改', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34947', 'balance', '余額', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34946', 'amount_operation', '操作金額', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34945', 'into_model', '入款', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34944', 'buy_records', '購買記錄', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34943', 'info_editing', '信息編輯', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34942', 'loggedin', '您已登錄！', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34941', 'registration', '註冊', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34940', 'landing', '登陸', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34545', 'sys_orange', '橘红', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34546', 'inside_larger', '内页大图轮播设置', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34547', 'call_way', '调用方式', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34548', 'consistent_home_page', '与首页一致', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34549', 'click_here_settings', '点此进入自定义设置', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34550', 'defined_separately', '（可以为每个栏目单独定义大图轮播）', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34551', 'page_setup_details', '详情页设置', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34552', 'Results_filtering', '项结果过滤', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34553', 'data_empty', '表中数据为空', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34554', 'Of_load', '载入中', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34555', 'on_page', '上页', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34556', 'next_page', '下页', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34557', 'at_page', '末页', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34558', 'ascending_order', '以升序排列此列', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34559', 'descending_order', '以降序排列此列', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34560', 'background_page', '后台首页', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34561', 'modify_information', '修改个人资料', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34562', 'technology_business', '无技术商业授权', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34563', 'purchase_in', '购买中', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34564', 'please_login', '请先登录！', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34565', 'server_failed', '链接远程服务器失败', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34566', 'permission_download', '无权限下载！！', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34567', 'Refresh_seconds', '秒后刷新页面', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34568', 'in_processing', '处理中', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34569', 'sys_results', '项结果', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34570', 'Display_first', '显示第', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34571', 'matching_results', '没有匹配结果', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('34572', 'result_total', '项结果，共', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35213', 'share_mood', '分享心情', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35211', 'debug_appearance', '調試外觀', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35212', 'publish_content', '發布內容', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35210', 'configuration_section', '配置欄目', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35209', 'new_guidelines', '新手指引', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35208', 'release_to', '發布至', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35206', 'template_code1', '請輸入模板編號', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35207', 'sys_cost', '費用', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35204', 'industry_segments', '行業細分', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35205', 'color_filter', '顏色篩選', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35203', 'industry_screening', '行業篩選', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35202', 'login_password', '位。付費購買應用時需要輸入支付密碼，請不要與登錄密碼壹致。', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35201', 'set_password', '第三步：設置支付密碼', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35215', 'sys_nearly', '近', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35216', 'Traffic_trends', '小時流量趨勢', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35217', 'recommended', '推薦應用', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35218', 'more_applications', '更多應用', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35219', 'sys_use', '我用', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35220', 'build_site', '搭建的新網站', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35221', 'everyone_see', '上線了，大家來看看！', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35222', 'applies_paper', '僅作用於前臺頁面中的內容文字，比如文章詳情頁內容文字。', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35223', 'anchor_text', '添加錨文本', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35224', 'being_generated', '正在生成', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35225', 'sys_static', '偽靜態化', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35226', 'simplify_front_desk', '開啟後能夠簡化前臺網頁', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35227', 'and_to', '（網址），並且以', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35228', 'sys_end', '結尾。', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35229', 'pseudo_static', '偽靜態規則', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35230', 'pseudo_static', '查看偽靜態規則', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35231', 'manually_static_rules', '部分空間需要手動設置偽靜態規則文件', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35232', 'manually_static_rules1', '上面是偽靜態相關的設置，如果非得', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35233', 'manually_static_rules2', '靜態化，偽靜態是推薦的做法，甚至可以不用', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35234', 'development_engine', '靜態化，對於發展至今的搜索引擎來說，', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35235', 'static_dynamic', '靜態化並不比動態', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35236', 'sys_good', '優秀。', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35237', 'pure_static_Settings', '針對於還在使用純靜態頁面的用戶，可以從下面進入設置。', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35238', 'static_page', '設置靜態頁面', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35239', 'stations_recommended', '針對於還在使用純靜態頁面的老站，新站不推薦。', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35240', 'enter_user', '請輸入用戶名', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35241', 'messages_restore', '確定要刪除全部的消息嗎？壹旦刪除將不能恢復！', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35242', 'All_empty_message', '清空全部消息', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35243', 'fixed_bottom', '底部固定菜單', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35244', 'templates_choice', '模板選擇', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35245', 'trying_load', '正在努力加載', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35246', 'save_Settings', '保存設置', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35247', 'computer_browser', '電腦瀏覽器與手機瀏覽器部分效果渲染不同，因此在電腦上瀏覽手機版可能會出現細節不兼容現象。', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35248', 'effect_should', '壹切效果應以手機終端瀏覽為標準。', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35249', 'complete_experience', '如需完整體驗手機版，請用手機訪問網站網址或掃描二維碼瀏覽。', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35250', 'scroll_bar', '滾動條', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35251', 'larger_wheel', '大圖輪播設置', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35252', 'title_link', '設置標題和鏈接', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35253', 'add_them_picture', '添加輪播圖片', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35254', 'style_Settings', '風格設置', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35255', 'sys_cyan', '青色', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35256', 'sys_orange', '橘紅', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35257', 'inside_larger', '內頁大圖輪播設置', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35258', 'call_way', '調用方式', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35259', 'consistent_home_page', '與首頁壹致', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35260', 'click_here_settings', '點此進入自定義設置', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35261', 'defined_separately', '（可以為每個欄目單獨定義大圖輪播）', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35262', 'page_setup_details', '詳情頁設置', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35263', 'page_range', '翻頁範圍', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35264', 'designer_special', '如果模板設計師采用了特制的展示方式，則此處設置無效。', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35265', 'shuffling_closed', '大圖輪播被關閉或設置成其它展示方式', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35266', 'click_enter', '點此進入更多設置', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35267', 'such_uploadfile', '（如上傳swf文件）', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35268', 'recruitment_info', '能夠影響文章、產品、圖片、招聘模塊信息列表，而並非所有鏈接。', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35269', 'sys_navigation', '導航：欄目設置中可以調整是否新窗口打開。', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35270', 'sys_navigation1', '此功能預覽無法查看效果，需要保存後刷新前臺頁面才能體驗。', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35271', 'sys_navigation2', '顯示欄目列表時，圖片需要在欄目設置中上傳（欄目圖片）。', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35272', 'more_options', '更多選項', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35273', 'suggested_size', '建議尺寸', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35274', 'current_input', '當前已輸入', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35275', 'sys_characters', '個字符', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35276', 'settings_effect', '設置已生效', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35277', 'website_information', '網站信息', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35278', 'email_Settings', '郵件發送設置', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35279', 'third_party_ode', '第三方代碼', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35280', 'technology_business', '無技術商業授權', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35281', 'purchase_in', '購買中', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35282', 'please_login', '請先登錄！', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35283', 'server_failed', '鏈接遠程服務器失敗', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35284', 'permission_download', '無權限下載！！', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35285', 'Refresh_seconds', '秒後刷新頁面', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35286', 'in_processing', '處理中', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35287', 'sys_results', '項結果', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35288', 'matching_results', '沒有匹配結果', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35289', 'Display_first', '顯示第', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35290', 'result_total', '項結果，共', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35291', 'Results_filtering', '項結果過濾', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35292', 'data_empty', '表中數據為空', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35293', 'Of_load', '載入中', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35294', 'on_page', '上頁', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35295', 'next_page', '下頁', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35296', 'at_page', '末頁', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35297', 'ascending_order', '以升序排列此列', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35298', 'descending_order', '以降序排列此列', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35299', 'background_page', '後臺首頁', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35300', 'modify_information', '修改個人資料', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35301', 'sys_select', '精  選', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35302', 'should_used', '應  用', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35303', 'sys_template', '模  板', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35304', 'sys_purchase', '購買', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35305', 'sys_payment', '支付', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35306', 'extension_school', '米拓學院', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35677', 'the_bit', '位', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35678', 'the_server', '服務器', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35679', 'the_version', '版本', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35701', 'marketing', '營銷', '1', '0', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('35702', 'safety_efficiency', '安全與效率', '1', '0', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('35703', 'data_processing', '備份与恢復', '1', '0', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('35704', 'computer', '電腦', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35705', 'appearance', '外觀', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35706', 'seo_optimization', 'SEO優化', '1', '0', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('35707', 'the_user', '用護', '1', '0', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('35708', 'mobile_edition', '手機版', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35709', 'safety', '安全', '1', '0', '8', '0', 'tc');
INSERT INTO `met_language` VALUES ('35710', 'attention', '關註', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35715', 'author', '作者', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35743', 'news_prompt', '您有壹條留言信息，請查收！', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35744', 'news_prompt1', '您有壹條反饋信息，請查收！', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35755', 'sys_authorization', '獲得商業授權才能夠享受技術支持服務', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35756', 'sys_authorization1', '錄入商業授權', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35757', 'sys_authorization2', '了解商業授權', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35758', 'detection', '檢測中', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35767', 'recommended_tems', '推薦應用', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35768', 'more_tems', '更多模板', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35769', 'usernametips', '如果有官網或交流論壇帳號，請註冊成壹樣，因為我們即將同步三個平臺的帳號。', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35770', 'authorization_level', '授權等級', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35771', 'technical_support', '獲取技術支持', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35772', 'entry_authorization', '重新錄入授權', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35781', 'title_description', '請輸入Title描述', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35798', 'tab_settings', '產品模塊選項卡設置', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35799', 'display_number', '選項卡顯示數', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35800', 'corresponding_products', '選項卡內容請在內容管理對應產品中填寫', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35801', 'tab_title1', '選項卡壹標題', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35802', 'tab_title2', '選項卡二標題', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35803', 'tab_title3', '選項卡三標題', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35804', 'tab_title4', '選項卡四標題', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35805', 'tab_title5', '選項卡五標題', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35806', 'menu_settings', '底部固定菜單設置', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35807', 'settings_page', '點此進入設置頁面', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35808', 'height_setting', '高度設置(寬度跟隨界面寬度)', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35817', 'recommended_template', '推薦模板', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35818', 'download_prompt', '正在進行下載，請不要操作頁面！', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35823', 'purchase_application', '購買的應用只能作用於當前的網站', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35830', 'function_settings', '功能设置', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35831', 'function_settings', 'Function settings', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35832', 'function_settings', '功能設置', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35833', 'add_menu', '添加菜单', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35834', 'add_menu', 'Add menu', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35835', 'add_menu', '添加菜單', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35836', 'menu_effect', '菜单效果', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35837', 'menu_effect', 'Menu effect', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35838', 'menu_effect', '菜單效果', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35839', 'noadd_menu', '尚未添加菜单', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35840', 'noadd_menu', 'Yet to add menu', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35841', 'noadd_menu', '尚未添加菜單', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35842', 'edit_menu', '编辑菜单', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35843', 'edit_menu', 'edit menu', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35844', 'edit_menu', '編輯菜單', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35845', 'menu_information', '菜单信息', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35846', 'menu_information', 'menu information', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35847', 'menu_information', '菜單信息', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35848', 'menu_information1', '名称最多支持4个汉字字符（英文字符算半个汉字字符）', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35849', 'menu_information1', 'The name supports up to 4 Chinese characters characters (English character half a Chinese characters characters)', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35850', 'menu_information1', '名稱最多支持4個漢字字符（英文字符算半個漢字字符）', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35851', 'style_settings', '风格设置', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35852', 'style_settings', 'The style settings', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35853', 'style_settings', '風格設置', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35854', 'icon_color', '图标颜色', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35855', 'icon_color', 'Icon color', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35856', 'icon_color', '圖標顏色', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35857', 'icon_color1', '请点击输入框右边的颜色选择器设置颜色，为空时颜色则为白色', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35858', 'icon_color1', 'Color picker click the edit box to set the color, is empty, the color is white', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35859', 'icon_color1', '請點擊輸入框右邊的顏色選擇器設置顏色，為空時顏色則為白色', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35860', 'text_color', '文字颜色', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35861', 'text_color', 'Text color', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35862', 'text_color', '文字顏色', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35863', 'menu_click_effect', '菜单点击效果', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35864', 'menu_click_effect', 'Menu click effect', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35865', 'menu_click_effect', '菜單點擊效果', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35866', 'dial_telephone', '拨打电话', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35867', 'dial_telephone', 'Dial telephone', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35868', 'dial_telephone', '撥打電話', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35869', 'customer_service', 'QQ客服', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35870', 'customer_service', 'customer service', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35871', 'customer_service', 'QQ客服', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35872', 'map_location', '地图位置', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35873', 'map_location', 'Map location', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35874', 'map_location', '地圖位置', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35875', 'home_page_link', '首页链接', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35876', 'home_page_link', 'Home page link', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35877', 'home_page_link', '首頁鏈接', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35878', 'column_links', '栏目链接', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35879', 'column_links', 'Column links', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35880', 'column_links', '欄目鏈接', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35881', 'phone_number1', '电话号码', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35882', 'phone_number1', 'The phone number', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35883', 'phone_number1', '電話號碼', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35884', 'dial_telephone1', '手机访问时，点击该菜单拨打电话', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35885', 'dial_telephone1', 'Mobile phone access, call click the menu', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35886', 'dial_telephone1', '手機訪問時，點擊該菜單撥打電話', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35887', 'customer_service1', '手机访问时，点击该菜单拨打电话', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35888', 'customer_service1', 'Click the popup menu to QQ customer service window', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35889', 'customer_service1', '手機訪問時，點擊該菜單撥打電話', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35890', 'qq_number', 'QQ号码', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35891', 'qq_number', 'QQ number', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35892', 'qq_number', 'QQ號碼', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35893', 'qq_number1', '请确认QQ在线开启，如未开启，请到QQ商家中开启。', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35894', 'qq_number1', 'Please confirm the QQ online open, if not open, open please QQ businessman.', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35895', 'qq_number1', '請確認QQ在線開啟，如未開啟，請到QQ商家中開啟。', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35896', 'the_jump', '点击跳转', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35897', 'the_jump', 'Hit the jump', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35898', 'the_jump', '點擊跳轉', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35899', 'map_location1', '点击该菜单跳转地图信息页面', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35900', 'map_location1', 'Click on the menu jump map information page', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35901', 'map_location1', '點擊該菜單跳轉地圖信息頁面', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35902', 'map_location2', '输入地址后点击搜索，下面的地图会定位到对应的位置', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35903', 'map_location2', 'Enter the address and click search, the map below will navigate to the corresponding position', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35904', 'map_location2', '輸入地址後點擊搜索，下面的地圖會定位到對應的位置', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35905', 'the_menu', '底部菜单', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35906', 'the_menu', 'At the bottom of the menu', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35907', 'the_menu', '底部菜單', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35908', 'menu_management', '菜单管理', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35909', 'menu_management', 'Menu management', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35910', 'menu_management', '菜單管理', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35911', 'the_menu1', '可创建最多 4 个菜单，每个菜单有拨打电话、QQ客服、地图位置、首页链接、栏目链接5种类型选择。', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35912', 'the_menu1', 'You can create up to 4 menu, each menu has a call, QQ customer service, map location, link to the home page, column links 5 types to choose.', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35913', 'the_menu1', '可創建最多 4 個菜單，每個菜單有撥打電話、QQ客服、地圖位置、首頁鏈接、欄目鏈接5種類型選擇。', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35914', 'menu_functions', '菜单功能', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35915', 'menu_functions', 'Menu functions', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35916', 'menu_functions', '菜單功能', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35917', 'menu_functions1', '关闭后将不显示底部菜单', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35918', 'menu_functions1', 'The bottom menu will not be displayed after closing', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35919', 'menu_functions1', '關閉後將不顯示底部菜單', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35920', 'display_effect', '显示效果', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35921', 'display_effect', 'The display_effect', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35922', 'display_effect', '顯示效果', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35923', 'display_effect1', '图标可展开式', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35924', 'display_effect1', 'The icon expansion', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35925', 'display_effect1', '圖標可展開式', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35926', 'display_effect2', '底部固定式', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35927', 'display_effect2', 'The bottom of fixed', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35928', 'display_effect2', '底部固定式', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35929', 'display_effect3', '设置底部菜单显示的效果', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35930', 'display_effect3', 'Set the bottom menu display effect', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35931', 'display_effect3', '設置底部菜單顯示的效果', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35932', 'background_color', '背景颜色', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35933', 'background_color', 'Background color', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35934', 'background_color', '背景颜色', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35935', 'pink', '粉色', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35936', 'pink', 'Pink', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35937', 'pink', '粉色', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35938', 'custom_colors', '自定义颜色', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35939', 'custom_colors', 'Custom colors', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35940', 'custom_colors', '自定義顏色', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35941', 'custom_picture', '自定义图片', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35942', 'custom_picture', 'A custom picture', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35943', 'custom_picture', '自定義圖片', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35944', 'custom_colors1', '输入十六进制颜色值，为空时颜色则为蓝色', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35945', 'custom_colors1', 'Input sixteen hexadecimal color value, is empty, the color is blue', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35946', 'custom_colors1', '輸入十六進制顏色值，為空時顏色則為藍色', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35947', 'custom_picture1', '设置底部菜单背景图片，建议图片的尺寸为 340 X 45像素', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35948', 'custom_picture1', 'Set the menu at the bottom of the background image, suggested that the picture size is 340 X 45 pixels', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35949', 'custom_picture1', '設置底部菜單背景圖片，建議圖片的尺寸為 340 X 45像素', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35950', 'app_datele', '您确定要卸载该应用吗？卸载后应用相应的数据也会被清空！', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35951', 'app_datele', 'Are you sure you want to uninstall this application? After unloading the application of corresponding data will also be empty!', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35952', 'app_datele', '您確定要卸載該應用嗎？卸載後應用相應的數據也會被清空！', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35953', 'map_location3', '点击地图上位置可以移动图标', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35954', 'map_location3', 'Click on the map position can move Icon', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35955', 'map_location3', '點擊地圖上位置可以移動圖標', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35956', 'update_permissions', '取消之后该管理员无法在后头操作在线升级', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35957', 'update_permissions', 'Cancel after the administrator can behind the operation of online upgrade', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35958', 'update_permissions', '取消之後該管理員無法在後頭操作在線升級', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35959', 'external_links', '外部链接', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35960', 'external_links', 'External links', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35961', 'external_links', '外部鏈接', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35962', 'appmarket_jurisdiction', '您没有查看应用市场的权限，请联系管理员开通。', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35963', 'appmarket_jurisdiction', 'You do not have permission to view the application market, please contact the administrator to open.', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35964', 'appmarket_jurisdiction', '您沒有查看應用市場的權限，請聯系管理員開通。', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35965', 'setup_permissions', '您没有设置权限，请联系管理员开通。', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35966', 'setup_permissions', 'You do not have to set permissions, please contact the administrator to open.', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35967', 'setup_permissions', '您沒有設置權限，請聯系管理員開通。', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35968', 'permission_upgrade', '升级权限', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35969', 'permission_upgrade', 'Permission to upgrade', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35970', 'permission_upgrade', '升級權限', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35971', 'metinfo_explain', 'MetInfo是一款非常棒的企业网站管理系统（CMS）！可以免费用的哦！', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35972', 'metinfo_explain', 'MetInfo is a great enterprise website management system (CMS)! Free use of oh!', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35973', 'metinfo_explain', 'MetInfo是壹款非常棒的企業網站管理系統（CMS）！可以免費用的哦！', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35974', 'share_friends', '分享给朋友', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35975', 'share_friends', 'Share it with friends', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35976', 'share_friends', '分享給朋友', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35977', 'installation_template', '如果需安装自己制作的模板', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35978', 'installation_template', 'If the installation is required to produce their own template', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35979', 'installation_template', '如果需安裝自己制作的模板', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35980', 'install_application', '请到应用市场安装', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35981', 'install_application', 'Please install the application market', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35982', 'install_application', '請到應用市場安裝', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35983', 'template_assistant', '模板制作助手', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35984', 'template_assistant', 'Template production assistant', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35985', 'template_assistant', '模板制作助手', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35986', 'specified_link', '点击跳转到指定链接', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35987', 'specified_link', 'Hit the jump to the specified link', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35988', 'specified_link', '點擊跳轉到指定鏈接', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35989', 'release', '发布', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35990', 'release', 'Release', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35991', 'release', '發布', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35992', 'administration', '管理', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35993', 'administration', 'Administration', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35994', 'administration', '管理', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35995', 'customers', '客服', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35996', 'customers', 'Customer service', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('35997', 'customers', '客服', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('35998', 'seo', 'SEO', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('35999', 'seo', 'SEO', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('36000', 'seo', 'SEO', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('36001', 'member', '会员', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('36002', 'member', 'Member', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('36003', 'member', '會員', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('36004', 'language', '语言', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('36005', 'language', 'Language', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('36006', 'language', '語言', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('36007', 'htmltopseudo', '静态页面伪静态化', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('36008', 'htmltopseudo', 'Static page pseudo static', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('36009', 'htmltopseudo', '靜態頁面偽靜態化', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('36010', 'htmltopseudotips', '使用伪静态方式实现静态页面URL，当前静态页面URL不变。对SEO效果不会产生影响。需要空间支持伪静态，并且会删除静态页面文件。', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('36011', 'htmltopseudotips', 'Realization of static URL pages using the pseudo static method, static page URL constant current. Influence of SEO effect is not. Need space support pseudo static, and static page file will be deleted.', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('36012', 'htmltopseudotips', '使用偽靜態方式實現靜態頁面URL，當前靜態頁面URL不變。對SEO效果不會產生影響。需要空間支持偽靜態，並且會刪除靜態頁面文件。', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('36013', 'htmlnocreatetips', '静态页面url已经转成伪静态，无需生成静态页面', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('36014', 'htmlnocreatetips', 'Static page URL has been transformed into pseudo static, without the need to generate static pages', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('36015', 'htmlnocreatetips', '靜態頁面url已經轉成偽靜態，無需生成靜態頁面', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('36016', 'timedrelease', '定时发布', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('36017', 'timedrelease', 'The timed release', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('36018', 'timedrelease', '定時發布', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('36019', 'timedreleasetips', '把发布时间设置为未来时间，即可在指定时间发布，此功能不支持静态页面，如静态页面需要使用此功能，请设置静态页面功能伪静态化。', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('36020', 'timedreleasetips', 'The release time is set to a future time, can be published in a specified time, this function does not support static pages, such as static pages need to use this feature, please set the static page function pseudo static.', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('36021', 'timedreleasetips', '把發布時間設置為未來時間，即可在指定時間發布，此功能不支持靜態頁面，如靜態頁面需要使用此功能，請設置靜態頁面功能偽靜態化。', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('36022', 'clickset', '点击设置', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('36023', 'clickset', 'Click Settings', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('36024', 'clickset', '點擊設置', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('36025', 'timelisttips1', '(将于', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('36026', 'timelisttips1', '(to be', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('36027', 'timelisttips1', '(將於', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('36028', 'timelisttips2', '发布）', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('36029', 'timelisttips2', 'Release)', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('36030', 'timelisttips2', '發布）', '1', '0', '1', '0', 'tc');
INSERT INTO `met_language` VALUES ('36031', 'mod_rewrite_column', '开启伪静态化需空间环境配置开启mod_rewrite模块，如没有开启则联系空间商解决。', '1', '0', '1', '0', 'cn');
INSERT INTO `met_language` VALUES ('36032', 'mod_rewrite_column', 'Open the URL static space environment configuration opens the mod_rewrite module, if not open the contact space business address.', '1', '0', '1', '0', 'en');
INSERT INTO `met_language` VALUES ('36033', 'mod_rewrite_column', '開啟偽靜態化需空間環境配置開啟mod_rewrite模塊，如沒有開啟則聯系空間商解決。', '1', '0', '1', '0', 'tc');

-- ----------------------------
-- Table structure for `met_link`
-- ----------------------------
DROP TABLE IF EXISTS `met_link`;
CREATE TABLE `met_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `webname` varchar(255) DEFAULT NULL,
  `weburl` varchar(255) DEFAULT NULL,
  `weblogo` varchar(255) DEFAULT NULL,
  `link_type` int(11) DEFAULT '0',
  `info` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `orderno` int(11) DEFAULT '0',
  `com_ok` int(11) DEFAULT '0',
  `show_ok` int(11) DEFAULT '0',
  `addtime` datetime DEFAULT NULL,
  `lang` varchar(50) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_link
-- ----------------------------

-- ----------------------------
-- Table structure for `met_list`
-- ----------------------------
DROP TABLE IF EXISTS `met_list`;
CREATE TABLE `met_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bigid` int(11) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `no_order` int(11) DEFAULT NULL,
  `lang` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_list
-- ----------------------------

-- ----------------------------
-- Table structure for `met_message`
-- ----------------------------
DROP TABLE IF EXISTS `met_message`;
CREATE TABLE `met_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `readok` int(11) DEFAULT '0',
  `useinfo` text,
  `lang` varchar(50) DEFAULT NULL,
  `access` int(11) DEFAULT '0',
  `customerid` varchar(30) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_message
-- ----------------------------

-- ----------------------------
-- Table structure for `met_mlist`
-- ----------------------------
DROP TABLE IF EXISTS `met_mlist`;
CREATE TABLE `met_mlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `listid` int(11) DEFAULT NULL,
  `paraid` int(11) DEFAULT NULL,
  `info` text,
  `lang` varchar(50) DEFAULT NULL,
  `imgname` varchar(255) DEFAULT NULL,
  `module` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_mlist
-- ----------------------------

-- ----------------------------
-- Table structure for `met_news`
-- ----------------------------
DROP TABLE IF EXISTS `met_news`;
CREATE TABLE `met_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `ctitle` varchar(200) DEFAULT NULL,
  `keywords` varchar(200) DEFAULT NULL,
  `description` text,
  `content` longtext,
  `class1` int(11) DEFAULT '0',
  `class2` int(11) DEFAULT '0',
  `class3` int(11) DEFAULT '0',
  `no_order` int(11) DEFAULT '0',
  `wap_ok` int(1) DEFAULT '0',
  `img_ok` int(1) DEFAULT '0',
  `imgurl` varchar(255) DEFAULT NULL,
  `imgurls` varchar(255) DEFAULT NULL,
  `com_ok` int(1) DEFAULT '0',
  `issue` varchar(100) DEFAULT NULL,
  `hits` int(11) DEFAULT '0',
  `updatetime` datetime DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `access` int(11) DEFAULT '0',
  `top_ok` int(1) DEFAULT '0',
  `filename` varchar(255) DEFAULT NULL,
  `lang` varchar(50) DEFAULT NULL,
  `recycle` int(11) NOT NULL DEFAULT '0',
  `displaytype` int(11) NOT NULL DEFAULT '1',
  `tag` text NOT NULL,
  `links` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_news
-- ----------------------------

-- ----------------------------
-- Table structure for `met_online`
-- ----------------------------
DROP TABLE IF EXISTS `met_online`;
CREATE TABLE `met_online` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `no_order` int(11) DEFAULT NULL,
  `qq` text,
  `msn` varchar(100) DEFAULT NULL,
  `taobao` varchar(100) DEFAULT NULL,
  `alibaba` varchar(100) DEFAULT NULL,
  `skype` varchar(100) DEFAULT NULL,
  `lang` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_online
-- ----------------------------

-- ----------------------------
-- Table structure for `met_otherinfo`
-- ----------------------------
DROP TABLE IF EXISTS `met_otherinfo`;
CREATE TABLE `met_otherinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `info4` varchar(255) DEFAULT NULL,
  `info5` varchar(255) DEFAULT NULL,
  `info6` varchar(255) DEFAULT NULL,
  `info7` varchar(255) DEFAULT NULL,
  `info8` text,
  `info9` text,
  `info10` text,
  `imgurl1` varchar(255) DEFAULT NULL,
  `imgurl2` varchar(255) DEFAULT NULL,
  `rightmd5` varchar(255) DEFAULT NULL,
  `righttext` varchar(255) DEFAULT NULL,
  `authcode` text,
  `authpass` varchar(255) DEFAULT NULL,
  `authtext` varchar(255) DEFAULT NULL,
  `data` longtext,
  `lang` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_otherinfo
-- ----------------------------
INSERT INTO `met_otherinfo` VALUES ('1', 'NOUSER', '2147483647', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'metinfo');

-- ----------------------------
-- Table structure for `met_parameter`
-- ----------------------------
DROP TABLE IF EXISTS `met_parameter`;
CREATE TABLE `met_parameter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `options` text NOT NULL,
  `description` text NOT NULL,
  `no_order` int(2) DEFAULT NULL,
  `type` int(2) DEFAULT NULL,
  `access` int(11) DEFAULT '0',
  `wr_ok` int(2) DEFAULT '0',
  `class1` int(11) NOT NULL,
  `class2` int(11) NOT NULL,
  `class3` int(11) NOT NULL,
  `module` int(2) DEFAULT NULL,
  `lang` varchar(50) DEFAULT NULL,
  `wr_oks` int(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_parameter
-- ----------------------------
INSERT INTO `met_parameter` VALUES ('100', '公司名称', '', '', '9', '1', '0', '0', '0', '0', '0', '10', 'cn', '1');
INSERT INTO `met_parameter` VALUES ('101', 'Company name', '', '', '9', '1', '0', '0', '0', '0', '0', '10', 'en', '1');
INSERT INTO `met_parameter` VALUES ('102', '公司名稱', '', '', '9', '1', '0', '0', '0', '0', '0', '10', 'tc', '1');
INSERT INTO `met_parameter` VALUES ('103', '公司传真', '', '', '10', '1', '0', '0', '0', '0', '0', '10', 'cn', '1');
INSERT INTO `met_parameter` VALUES ('104', 'Fax', '', '', '10', '1', '0', '0', '0', '0', '0', '10', 'en', '1');
INSERT INTO `met_parameter` VALUES ('105', '公司傳真', '', '', '10', '1', '0', '0', '0', '0', '0', '10', 'tc', '1');
INSERT INTO `met_parameter` VALUES ('106', '公司联系地址', '', '', '11', '1', '0', '0', '0', '0', '0', '10', 'cn', '1');
INSERT INTO `met_parameter` VALUES ('107', 'Company address', '', '', '11', '1', '0', '0', '0', '0', '0', '10', 'en', '1');
INSERT INTO `met_parameter` VALUES ('108', '公司聯繫地址', '', '', '11', '1', '0', '0', '0', '0', '0', '10', 'tc', '1');
INSERT INTO `met_parameter` VALUES ('109', '公司邮政编码', '', '', '12', '1', '0', '0', '0', '0', '0', '10', 'cn', '1');
INSERT INTO `met_parameter` VALUES ('110', 'Company Postcode', '', '', '12', '1', '0', '0', '0', '0', '0', '10', 'en', '1');
INSERT INTO `met_parameter` VALUES ('111', '公司郵政編碼', '', '', '12', '1', '0', '0', '0', '0', '0', '10', 'tc', '1');
INSERT INTO `met_parameter` VALUES ('112', '公司网址', '', '', '13', '1', '0', '0', '0', '0', '0', '10', 'cn', '1');
INSERT INTO `met_parameter` VALUES ('113', 'Website', '', '', '13', '1', '0', '0', '0', '0', '0', '10', 'en', '1');
INSERT INTO `met_parameter` VALUES ('114', '公司網址', '', '', '13', '1', '0', '0', '0', '0', '0', '10', 'tc', '1');

-- ----------------------------
-- Table structure for `met_plist`
-- ----------------------------
DROP TABLE IF EXISTS `met_plist`;
CREATE TABLE `met_plist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `listid` int(11) DEFAULT NULL,
  `paraid` int(11) DEFAULT NULL,
  `info` text,
  `lang` varchar(50) DEFAULT NULL,
  `imgname` varchar(255) DEFAULT NULL,
  `module` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_plist
-- ----------------------------

-- ----------------------------
-- Table structure for `met_product`
-- ----------------------------
DROP TABLE IF EXISTS `met_product`;
CREATE TABLE `met_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `ctitle` varchar(200) DEFAULT NULL,
  `keywords` varchar(200) DEFAULT NULL,
  `description` text,
  `content` longtext,
  `class1` int(11) DEFAULT '0',
  `class2` int(11) DEFAULT '0',
  `class3` int(11) DEFAULT '0',
  `classother` text NOT NULL,
  `no_order` int(11) DEFAULT '0',
  `wap_ok` int(1) DEFAULT '0',
  `new_ok` int(1) DEFAULT '0',
  `imgurl` varchar(255) DEFAULT NULL,
  `imgurls` varchar(255) DEFAULT NULL,
  `displayimg` text,
  `com_ok` int(1) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `updatetime` datetime DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `issue` varchar(100) DEFAULT '',
  `access` int(11) DEFAULT '0',
  `top_ok` int(1) DEFAULT '0',
  `filename` varchar(255) DEFAULT NULL,
  `lang` varchar(50) DEFAULT NULL,
  `content1` text,
  `content2` text,
  `content3` text,
  `content4` text,
  `contentinfo` varchar(255) DEFAULT NULL,
  `contentinfo1` varchar(255) DEFAULT NULL,
  `contentinfo2` varchar(255) DEFAULT NULL,
  `contentinfo3` varchar(255) DEFAULT NULL,
  `contentinfo4` varchar(255) DEFAULT NULL,
  `recycle` int(11) NOT NULL DEFAULT '0',
  `displaytype` int(11) NOT NULL DEFAULT '1',
  `tag` text NOT NULL,
  `links` varchar(200) DEFAULT NULL,
  `imgsize` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_product
-- ----------------------------

-- ----------------------------
-- Table structure for `met_skin_table`
-- ----------------------------
DROP TABLE IF EXISTS `met_skin_table`;
CREATE TABLE `met_skin_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `skin_name` varchar(200) DEFAULT NULL,
  `skin_file` varchar(20) DEFAULT NULL,
  `skin_info` text,
  `devices` int(11) NOT NULL DEFAULT '0',
  `ver` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_skin_table
-- ----------------------------
INSERT INTO `met_skin_table` VALUES ('1', 'metx5', 'metx5', 'MetInfo v5.3正式版新推出一套全新精致免费模板！', '0', '');
INSERT INTO `met_skin_table` VALUES ('2', 'metv5', 'metv5', 'MetInfo v5.2正式版！', '0', '');
INSERT INTO `met_skin_table` VALUES ('3', 'metx5_mobile', 'metx5_mobile', 'MetInfo v5.3正式版新推出一套全新精致免费手机模板！', '1', '');

-- ----------------------------
-- Table structure for `met_sms`
-- ----------------------------
DROP TABLE IF EXISTS `met_sms`;
CREATE TABLE `met_sms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `content` text NOT NULL,
  `tel` text NOT NULL,
  `remark` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_sms
-- ----------------------------

-- ----------------------------
-- Table structure for `met_templates`
-- ----------------------------
DROP TABLE IF EXISTS `met_templates`;
CREATE TABLE `met_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no` varchar(20) NOT NULL,
  `pos` int(11) NOT NULL,
  `no_order` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `style` int(11) NOT NULL DEFAULT '0',
  `selectd` varchar(500) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` text NOT NULL,
  `defaultvalue` text NOT NULL,
  `valueinfo` varchar(100) NOT NULL,
  `tips` varchar(255) NOT NULL,
  `lang` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_templates
-- ----------------------------

-- ----------------------------
-- Table structure for `met_user`
-- ----------------------------
DROP TABLE IF EXISTS `met_user`;
CREATE TABLE `met_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `head` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `groupid` int(11) NOT NULL,
  `register_time` int(11) NOT NULL,
  `register_ip` varchar(15) NOT NULL,
  `login_time` int(11) NOT NULL,
  `login_count` int(11) NOT NULL,
  `login_ip` varchar(15) NOT NULL,
  `valid` int(1) NOT NULL,
  `source` varchar(20) NOT NULL,
  `lang` varchar(50) NOT NULL,
  `uid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_user
-- ----------------------------

-- ----------------------------
-- Table structure for `met_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `met_user_group`;
CREATE TABLE `met_user_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `access` int(11) NOT NULL,
  `lang` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_user_group
-- ----------------------------
INSERT INTO `met_user_group` VALUES ('1', '普通会员', '1', 'cn');
INSERT INTO `met_user_group` VALUES ('2', '代理商', '3', 'cn');

-- ----------------------------
-- Table structure for `met_user_list`
-- ----------------------------
DROP TABLE IF EXISTS `met_user_list`;
CREATE TABLE `met_user_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `listid` int(11) DEFAULT NULL,
  `paraid` int(11) DEFAULT NULL,
  `info` text,
  `lang` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_user_list
-- ----------------------------

-- ----------------------------
-- Table structure for `met_user_other`
-- ----------------------------
DROP TABLE IF EXISTS `met_user_other`;
CREATE TABLE `met_user_other` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `met_uid` int(11) NOT NULL,
  `openid` varchar(100) NOT NULL,
  `unionid` varchar(100) NOT NULL,
  `access_token` varchar(255) NOT NULL,
  `expires_in` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `openid` (`openid`),
  KEY `met_uid` (`met_uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_user_other
-- ----------------------------

-- ----------------------------
-- Table structure for `met_visit_day`
-- ----------------------------
DROP TABLE IF EXISTS `met_visit_day`;
CREATE TABLE `met_visit_day` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(30) NOT NULL,
  `acctime` int(10) NOT NULL,
  `visitpage` varchar(255) NOT NULL,
  `antepage` varchar(255) NOT NULL,
  `columnid` int(11) NOT NULL,
  `listid` int(11) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `dizhi` varchar(255) NOT NULL,
  `network` varchar(100) NOT NULL,
  `lang` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_visit_day
-- ----------------------------
INSERT INTO `met_visit_day` VALUES ('8', '12.23.22.22', '1511342660', 'http://localhost/weiwo2/', '', '10001', '0', 'firefox', '', '', 'cn');
INSERT INTO `met_visit_day` VALUES ('9', '12.23.22.22', '1511432405', 'http://localhost/weiwo2/', '', '10001', '0', 'firefox', '', '', 'cn');
INSERT INTO `met_visit_day` VALUES ('10', '12.23.22.22', '1511433049', 'http://localhost/weiwo2/index.php?lang=cn', 'http://www.xymy1688.com/weiwo2/adminweiwo/index.php?lang=cn', '10001', '0', 'firefox', '', '', 'cn');

-- ----------------------------
-- Table structure for `met_visit_detail`
-- ----------------------------
DROP TABLE IF EXISTS `met_visit_detail`;
CREATE TABLE `met_visit_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pv` int(11) NOT NULL DEFAULT '0',
  `ip` int(11) NOT NULL DEFAULT '0',
  `alone` int(11) NOT NULL DEFAULT '0',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `type` int(1) NOT NULL DEFAULT '0',
  `columnid` int(11) NOT NULL,
  `listid` int(11) NOT NULL,
  `stattime` int(11) NOT NULL,
  `lang` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_visit_detail
-- ----------------------------
INSERT INTO `met_visit_detail` VALUES ('1', 'http://localhost/weiwo2/index.php?lang=cn', '3', '1', '1', '', '2', '10001', '0', '1509465600', 'cn');
INSERT INTO `met_visit_detail` VALUES ('2', 'http://localhost/weiwo2/admin/index.php?lang=cn', '2', '1', '1', '', '3', '0', '0', '1509465600', '');
INSERT INTO `met_visit_detail` VALUES ('3', 'http://localhost/weiwo2/index.php?lang=cn&met_mobileok=1', '1', '1', '1', '', '2', '10001', '0', '1509465600', 'cn');
INSERT INTO `met_visit_detail` VALUES ('4', 'http://localhost/weiwo2/index.php?lang=cn', '1', '1', '1', '', '3', '0', '0', '1509465600', '');
INSERT INTO `met_visit_detail` VALUES ('5', 'http://localhost/weiwo2/', '1', '1', '1', '', '2', '10001', '0', '1509465600', 'cn');
INSERT INTO `met_visit_detail` VALUES ('6', '', '1', '1', '1', '', '3', '0', '0', '1509465600', '');
INSERT INTO `met_visit_detail` VALUES ('7', 'http://localhost/watch/admin/', '1', '1', '1', '', '3', '0', '0', '1509465600', '');
INSERT INTO `met_visit_detail` VALUES ('8', 'http://localhost/weiwo2/', '1', '1', '1', '', '2', '10001', '0', '1510329600', 'cn');
INSERT INTO `met_visit_detail` VALUES ('9', '', '1', '1', '1', '', '3', '0', '0', '1510329600', '');
INSERT INTO `met_visit_detail` VALUES ('10', 'http://localhost/weiwo2/index.php?lang=cn', '1', '1', '1', '', '2', '10001', '0', '1510329600', 'cn');
INSERT INTO `met_visit_detail` VALUES ('11', 'http://localhost/weiwo2/admin/index.php?lang=cn', '1', '1', '1', '', '3', '0', '0', '1510329600', '');
INSERT INTO `met_visit_detail` VALUES ('12', 'http://localhost/weiwo2/', '1', '1', '1', '', '2', '10001', '0', '1511280000', 'cn');
INSERT INTO `met_visit_detail` VALUES ('13', '', '1', '1', '1', '', '3', '0', '0', '1511280000', '');
INSERT INTO `met_visit_detail` VALUES ('14', 'http://localhost/weiwo2/', '1', '1', '1', '', '2', '10001', '0', '1511366400', 'cn');
INSERT INTO `met_visit_detail` VALUES ('15', '', '1', '1', '1', '', '3', '0', '0', '1511366400', '');
INSERT INTO `met_visit_detail` VALUES ('16', 'http://localhost/weiwo2/index.php?lang=cn', '1', '1', '1', '', '2', '10001', '0', '1511366400', 'cn');
INSERT INTO `met_visit_detail` VALUES ('17', 'http://www.xymy1688.com/weiwo2/adminweiwo/index.php?lang=cn', '1', '1', '1', '', '3', '0', '0', '1511366400', '');

-- ----------------------------
-- Table structure for `met_visit_summary`
-- ----------------------------
DROP TABLE IF EXISTS `met_visit_summary`;
CREATE TABLE `met_visit_summary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pv` int(11) NOT NULL DEFAULT '0',
  `ip` int(11) NOT NULL DEFAULT '0',
  `alone` int(11) NOT NULL,
  `parttime` text NOT NULL,
  `stattime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_visit_summary
-- ----------------------------
INSERT INTO `met_visit_summary` VALUES ('1', '5', '1', '1', '||||||||||||||5-1-1||||||||||', '1509465600');
INSERT INTO `met_visit_summary` VALUES ('2', '2', '1', '1', '|||||||||2-1-1|||||||||||||||', '1510329600');
INSERT INTO `met_visit_summary` VALUES ('3', '1', '1', '1', '|||||||||||||||||1-1-1|||||||', '1511280000');
INSERT INTO `met_visit_summary` VALUES ('4', '2', '1', '1', '||||||||||||||||||2-1-1||||||', '1511366400');

-- ----------------------------
-- Table structure for `met_wapmenu`
-- ----------------------------
DROP TABLE IF EXISTS `met_wapmenu`;
CREATE TABLE `met_wapmenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sequence` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `values` varchar(20) NOT NULL,
  `columnicon` varchar(35) NOT NULL,
  `menu_wordrgb` varchar(10) NOT NULL,
  `menu_iconrgb` varchar(10) NOT NULL,
  `lang` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of met_wapmenu
-- ----------------------------
