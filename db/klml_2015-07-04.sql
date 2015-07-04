# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 0.0.0.0 (MySQL 5.6.25)
# Database: klml
# Generation Time: 2015-07-04 05:57:11 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table cms_ad
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_ad`;

CREATE TABLE `cms_ad` (
  `f_ad_id` int(11) NOT NULL,
  `f_site_id` int(11) NOT NULL,
  `f_adslot_id` int(11) NOT NULL,
  `f_name` varchar(150) NOT NULL COMMENT '名称',
  `f_begin_date` datetime DEFAULT NULL COMMENT '开始时间',
  `f_end_date` datetime DEFAULT NULL COMMENT '结束时间',
  `f_url` varchar(255) DEFAULT NULL COMMENT '广告url',
  `f_text` varchar(255) DEFAULT NULL COMMENT '文字',
  `f_script` longtext COMMENT '代码',
  `f_image` varchar(255) DEFAULT NULL COMMENT '图片',
  `f_flash` varchar(255) DEFAULT NULL COMMENT 'flash',
  `f_seq` int(11) NOT NULL DEFAULT '1' COMMENT '排序',
  PRIMARY KEY (`f_ad_id`),
  KEY `fk_cms_ad_adslot` (`f_adslot_id`),
  KEY `fk_cms_ad_site` (`f_site_id`),
  CONSTRAINT `fk_cms_ad_adslot` FOREIGN KEY (`f_adslot_id`) REFERENCES `cms_ad_slot` (`f_adslot_id`),
  CONSTRAINT `fk_cms_ad_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='广告表';

LOCK TABLES `cms_ad` WRITE;
/*!40000 ALTER TABLE `cms_ad` DISABLE KEYS */;

INSERT INTO `cms_ad` (`f_ad_id`, `f_site_id`, `f_adslot_id`, `f_name`, `f_begin_date`, `f_end_date`, `f_url`, `f_text`, `f_script`, `f_image`, `f_flash`, `f_seq`)
VALUES
	(2,1,1,'jspxcms演示广告',NULL,NULL,'http://www.jspxcms.com','jspxcms演示广告',NULL,'http://demo.jspxcms.com/uploads/1/image/public/201308/20130812090148_furree.jpg',NULL,50);

/*!40000 ALTER TABLE `cms_ad` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_ad_slot
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_ad_slot`;

CREATE TABLE `cms_ad_slot` (
  `f_adslot_id` int(11) NOT NULL,
  `f_site_id` int(11) NOT NULL,
  `f_name` varchar(100) NOT NULL COMMENT '名称',
  `f_number` varchar(100) DEFAULT NULL COMMENT '编码',
  `f_description` varchar(255) DEFAULT NULL COMMENT '描述',
  `f_type` int(11) NOT NULL COMMENT '类型(1:文字,2:图片,3:FLASH,4:代码)',
  `f_template` varchar(255) NOT NULL COMMENT '模板',
  `f_width` int(11) NOT NULL COMMENT '宽度',
  `f_height` int(11) NOT NULL COMMENT '高度',
  PRIMARY KEY (`f_adslot_id`),
  KEY `fk_cms_adslot_site` (`f_site_id`),
  CONSTRAINT `fk_cms_adslot_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='广告版位表';

LOCK TABLES `cms_ad_slot` WRITE;
/*!40000 ALTER TABLE `cms_ad_slot` DISABLE KEYS */;

INSERT INTO `cms_ad_slot` (`f_adslot_id`, `f_site_id`, `f_name`, `f_number`, `f_description`, `f_type`, `f_template`, `f_width`, `f_height`)
VALUES
	(1,1,'图片','picture',NULL,2,'/sys_ad/ad_text.html',700,90);

/*!40000 ALTER TABLE `cms_ad_slot` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_attachment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_attachment`;

CREATE TABLE `cms_attachment` (
  `f_attachment_id` int(11) NOT NULL,
  `f_site_id` int(11) NOT NULL COMMENT '站点',
  `f_user_id` int(11) NOT NULL COMMENT '上传人',
  `f_name` varchar(150) NOT NULL COMMENT '文件名',
  `f_length` bigint(20) DEFAULT NULL COMMENT '文件长度',
  `f_ip` varchar(100) DEFAULT NULL COMMENT 'IP',
  `f_time` datetime NOT NULL COMMENT '时间',
  PRIMARY KEY (`f_attachment_id`),
  KEY `fk_cms_attachement_site` (`f_site_id`),
  KEY `fk_cms_attachment_user` (`f_user_id`),
  CONSTRAINT `fk_cms_attachement_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`),
  CONSTRAINT `fk_cms_attachment_user` FOREIGN KEY (`f_user_id`) REFERENCES `cms_user` (`f_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='附件表';

LOCK TABLES `cms_attachment` WRITE;
/*!40000 ALTER TABLE `cms_attachment` DISABLE KEYS */;

INSERT INTO `cms_attachment` (`f_attachment_id`, `f_site_id`, `f_user_id`, `f_name`, `f_length`, `f_ip`, `f_time`)
VALUES
	(1,1,1,'/1/image/public/201507/20150701180830_rdq0nsesey_min.jpg',4116,'0:0:0:0:0:0:0:1','2015-07-01 18:08:31'),
	(2,1,1,'/1/image/public/201507/20150701180830_rdq0nsesey.jpg',113994,'0:0:0:0:0:0:0:1','2015-07-01 18:08:31'),
	(3,1,1,'/1/image/public/201507/20150701181016_1p5ccp9p3p.jpg',155200,'localhost','2015-07-01 18:10:16'),
	(4,1,1,'/1/image/public/201507/20150701184015_5hracy2bxy_min.jpg',3726,'0:0:0:0:0:0:0:1','2015-07-01 18:40:16'),
	(5,1,1,'/1/image/public/201507/20150701184015_5hracy2bxy.jpg',217133,'0:0:0:0:0:0:0:1','2015-07-01 18:40:16'),
	(6,1,1,'/1/image/public/201507/20150701184021_l8k36ascf0_min.jpg',3683,'0:0:0:0:0:0:0:1','2015-07-01 18:40:21'),
	(7,1,1,'/1/image/public/201507/20150701184021_l8k36ascf0.jpg',143139,'0:0:0:0:0:0:0:1','2015-07-01 18:40:21'),
	(8,1,1,'/1/image/public/201507/20150701184028_9m395y8li6_min.jpg',4463,'0:0:0:0:0:0:0:1','2015-07-01 18:40:28'),
	(9,1,1,'/1/image/public/201507/20150701184028_9m395y8li6.jpg',82377,'0:0:0:0:0:0:0:1','2015-07-01 18:40:28'),
	(10,1,1,'/1/image/public/201507/20150701184222_u5801gc5gh_min.jpg',3770,'0:0:0:0:0:0:0:1','2015-07-01 18:42:22'),
	(11,1,1,'/1/image/public/201507/20150701184222_u5801gc5gh.jpg',42190,'0:0:0:0:0:0:0:1','2015-07-01 18:42:22'),
	(12,1,1,'/1/image/public/201507/20150701184222_y13ieeyjhs_min.jpg',3770,'0:0:0:0:0:0:0:1','2015-07-01 18:42:22'),
	(13,1,1,'/1/image/public/201507/20150701184222_y13ieeyjhs.jpg',26309,'0:0:0:0:0:0:0:1','2015-07-01 18:42:22'),
	(14,1,1,'/1/image/public/201507/20150701184222_ev5f2m1fa8_min.jpg',3770,'0:0:0:0:0:0:0:1','2015-07-01 18:42:22'),
	(15,1,1,'/1/image/public/201507/20150701184222_ev5f2m1fa8.jpg',32689,'0:0:0:0:0:0:0:1','2015-07-01 18:42:22'),
	(16,1,1,'/1/image/public/201507/20150701184222_l2svbyeewl_min.jpg',3770,'0:0:0:0:0:0:0:1','2015-07-01 18:42:22'),
	(17,1,1,'/1/image/public/201507/20150701184222_l2svbyeewl.jpg',45506,'0:0:0:0:0:0:0:1','2015-07-01 18:42:22'),
	(18,1,1,'/1/image/public/201507/20150701184223_mmunwnl4yf_min.jpg',3770,'0:0:0:0:0:0:0:1','2015-07-01 18:42:23'),
	(19,1,1,'/1/image/public/201507/20150701184223_mmunwnl4yf.jpg',52822,'0:0:0:0:0:0:0:1','2015-07-01 18:42:23'),
	(20,1,1,'/1/image/public/201507/20150701184223_ji0h92443h_min.jpg',3770,'0:0:0:0:0:0:0:1','2015-07-01 18:42:23'),
	(21,1,1,'/1/image/public/201507/20150701184223_ji0h92443h.jpg',33307,'0:0:0:0:0:0:0:1','2015-07-01 18:42:23'),
	(22,1,1,'/1/image/public/201507/20150701184223_b47lwo3n8n_min.jpg',3770,'0:0:0:0:0:0:0:1','2015-07-01 18:42:23'),
	(23,1,1,'/1/image/public/201507/20150701184223_b47lwo3n8n.jpg',28642,'0:0:0:0:0:0:0:1','2015-07-01 18:42:23'),
	(24,1,1,'/1/image/public/201507/20150701184223_f30m27o1fb_min.jpg',3770,'0:0:0:0:0:0:0:1','2015-07-01 18:42:23'),
	(25,1,1,'/1/image/public/201507/20150701184223_f30m27o1fb.jpg',49304,'0:0:0:0:0:0:0:1','2015-07-01 18:42:23'),
	(26,1,1,'/1/image/public/201507/20150701184223_8gb54ug0dh_min.jpg',3770,'0:0:0:0:0:0:0:1','2015-07-01 18:42:23'),
	(27,1,1,'/1/image/public/201507/20150701184223_8gb54ug0dh.jpg',27100,'0:0:0:0:0:0:0:1','2015-07-01 18:42:23'),
	(28,1,1,'/1/image/public/201507/20150701184224_ellc46jtbq_min.jpg',3770,'0:0:0:0:0:0:0:1','2015-07-01 18:42:24'),
	(29,1,1,'/1/image/public/201507/20150701184224_ellc46jtbq.jpg',44151,'0:0:0:0:0:0:0:1','2015-07-01 18:42:24'),
	(30,1,1,'/1/image/public/201507/20150701184225_p3hbnpeid1_min.jpg',3770,'0:0:0:0:0:0:0:1','2015-07-01 18:42:25'),
	(31,1,1,'/1/image/public/201507/20150701184225_p3hbnpeid1.jpg',35766,'0:0:0:0:0:0:0:1','2015-07-01 18:42:25'),
	(32,1,1,'/1/image/public/201507/20150701184225_nqqjd0tyvm_min.jpg',3770,'0:0:0:0:0:0:0:1','2015-07-01 18:42:25'),
	(33,1,1,'/1/image/public/201507/20150701184225_nqqjd0tyvm.jpg',49575,'0:0:0:0:0:0:0:1','2015-07-01 18:42:25'),
	(34,1,1,'/1/image/public/201507/20150701184240_1lv7nggw7g.jpg',20000,'localhost','2015-07-01 18:42:40'),
	(35,1,1,'/1/image/public/201507/20150703230310_2ol10h5cvd.jpg',119333,'localhost','2015-07-03 23:03:10'),
	(36,1,1,'/1/image/public/201507/20150704000306_ret4sdk7p5.jpg',44304,'localhost','2015-07-04 00:03:06');

/*!40000 ALTER TABLE `cms_attachment` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_attachment_ref
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_attachment_ref`;

CREATE TABLE `cms_attachment_ref` (
  `f_attachementref_id` int(11) NOT NULL,
  `f_attachment_id` int(11) NOT NULL,
  `f_ftype` varchar(100) NOT NULL COMMENT '外表标识',
  `f_fid` int(11) NOT NULL COMMENT '外表ID',
  `f_site_id` int(11) NOT NULL,
  PRIMARY KEY (`f_attachementref_id`),
  KEY `fk_cms_attachmentref_attachment` (`f_attachment_id`),
  KEY `fk_cms_attachmentref_site` (`f_site_id`),
  CONSTRAINT `fk_cms_attachmentref_attachment` FOREIGN KEY (`f_attachment_id`) REFERENCES `cms_attachment` (`f_attachment_id`),
  CONSTRAINT `fk_cms_attachmentref_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `cms_attachment_ref` WRITE;
/*!40000 ALTER TABLE `cms_attachment_ref` DISABLE KEYS */;

INSERT INTO `cms_attachment_ref` (`f_attachementref_id`, `f_attachment_id`, `f_ftype`, `f_fid`, `f_site_id`)
VALUES
	(1,3,'info',141,1),
	(2,2,'info',141,1),
	(3,1,'info',141,1),
	(4,8,'info',141,1),
	(5,7,'info',141,1),
	(6,4,'info',141,1),
	(7,6,'info',141,1),
	(8,9,'info',141,1),
	(9,5,'info',141,1),
	(10,30,'info',142,1),
	(11,27,'info',142,1),
	(12,19,'info',142,1),
	(13,21,'info',142,1),
	(14,29,'info',142,1),
	(15,33,'info',142,1),
	(16,14,'info',142,1),
	(17,13,'info',142,1),
	(18,12,'info',142,1),
	(19,25,'info',142,1),
	(20,10,'info',142,1),
	(21,34,'info',142,1),
	(22,32,'info',142,1),
	(23,28,'info',142,1),
	(24,22,'info',142,1),
	(25,18,'info',142,1),
	(26,24,'info',142,1),
	(27,20,'info',142,1),
	(28,31,'info',142,1),
	(29,15,'info',142,1),
	(30,26,'info',142,1),
	(31,17,'info',142,1),
	(32,23,'info',142,1),
	(33,16,'info',142,1),
	(34,11,'info',142,1),
	(35,34,'info',145,1),
	(36,34,'info',146,1),
	(37,34,'info',147,1),
	(38,34,'info',148,1),
	(39,34,'info',149,1),
	(40,35,'info',237,1),
	(41,36,'info',238,1);

/*!40000 ALTER TABLE `cms_attachment_ref` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_attribute
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_attribute`;

CREATE TABLE `cms_attribute` (
  `f_attribute_id` int(11) NOT NULL,
  `f_site_id` int(11) NOT NULL COMMENT '站点',
  `f_number` varchar(20) NOT NULL COMMENT '代码',
  `f_name` varchar(50) NOT NULL COMMENT '名称',
  `f_seq` int(11) NOT NULL DEFAULT '2147483647' COMMENT '排序',
  `f_is_with_image` char(1) NOT NULL DEFAULT '0' COMMENT '是否包含图片',
  `f_is_scale` char(1) NOT NULL DEFAULT '0' COMMENT '是否图片压缩',
  `f_is_exact` char(1) NOT NULL DEFAULT '0' COMMENT '是否图片拉伸',
  `f_is_watermark` char(1) NOT NULL DEFAULT '0' COMMENT '是否图片水印',
  `f_image_width` int(11) DEFAULT NULL COMMENT '图片宽度',
  `f_image_height` int(11) DEFAULT NULL COMMENT '图片高度',
  PRIMARY KEY (`f_attribute_id`),
  KEY `fk_cms_attribute_site` (`f_site_id`),
  CONSTRAINT `fk_cms_attribute_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='属性表';

LOCK TABLES `cms_attribute` WRITE;
/*!40000 ALTER TABLE `cms_attribute` DISABLE KEYS */;

INSERT INTO `cms_attribute` (`f_attribute_id`, `f_site_id`, `f_number`, `f_name`, `f_seq`, `f_is_with_image`, `f_is_scale`, `f_is_exact`, `f_is_watermark`, `f_image_width`, `f_image_height`)
VALUES
	(1,1,'focus','焦点',0,'1','0','0','0',424,290),
	(2,1,'bignews','头条',1,'1','0','0','0',50,50),
	(3,1,'marquee','滚动',2,'1','0','0','0',95,70),
	(4,1,'recommend','推荐',3,'0','0','0','0',NULL,NULL);

/*!40000 ALTER TABLE `cms_attribute` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_collect
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_collect`;

CREATE TABLE `cms_collect` (
  `f_collect_id` int(11) NOT NULL,
  `f_node_id` int(11) NOT NULL,
  `f_site_id` int(11) NOT NULL,
  `f_user_id` int(11) NOT NULL,
  `f_name` varchar(100) NOT NULL COMMENT '名称',
  `f_charset` varchar(100) NOT NULL DEFAULT 'UTF-8' COMMENT '字符集',
  `f_user_agent` varchar(255) NOT NULL DEFAULT 'Mozilla/5.0' COMMENT '用户代理',
  `f_interval_min` int(11) NOT NULL DEFAULT '0' COMMENT '最小间隔时间',
  `f_interval_max` int(11) NOT NULL DEFAULT '0' COMMENT '最大间隔时间',
  `f_list_pattern` varchar(2000) NOT NULL COMMENT '列表地址',
  `f_list_next_pattern` varchar(255) DEFAULT NULL COMMENT '下一页列表地址',
  `f_is_list_next_reg` char(1) NOT NULL DEFAULT '0' COMMENT '下一页列表地址是否正则',
  `f_item_area_pattern` varchar(255) DEFAULT NULL COMMENT '文章地址区域',
  `f_is_item_area_reg` char(1) NOT NULL DEFAULT '0' COMMENT '文章地址区域是否正则',
  `f_item_pattern` varchar(255) NOT NULL COMMENT '文章地址',
  `f_is_item_reg` char(1) NOT NULL DEFAULT '0' COMMENT '文章地址是否正则',
  `f_block_area_pattern` varchar(255) DEFAULT NULL COMMENT '文章块区域',
  `f_is_block_area_reg` char(1) NOT NULL DEFAULT '0' COMMENT '文章快区域是否正则',
  `f_block_pattern` varchar(255) DEFAULT NULL COMMENT '文章块',
  `f_is_block_reg` char(1) NOT NULL DEFAULT '0' COMMENT '文章块是否正则',
  `f_page_begin` int(11) NOT NULL DEFAULT '2' COMMENT '起始序号',
  `f_page_end` int(11) NOT NULL DEFAULT '10' COMMENT '结束序号',
  `f_is_desc` char(1) NOT NULL DEFAULT '1' COMMENT '是否倒序',
  `f_is_submit` char(1) NOT NULL DEFAULT '0' COMMENT '是否提交',
  `f_status` int(11) NOT NULL DEFAULT '0' COMMENT '状态(0:就绪,1:运行中,2:暂停)',
  PRIMARY KEY (`f_collect_id`),
  KEY `fk_cms_collect_node` (`f_node_id`),
  KEY `fk_cms_collect_site` (`f_site_id`),
  KEY `fk_cms_collect_user` (`f_user_id`),
  CONSTRAINT `fk_cms_collect_node` FOREIGN KEY (`f_node_id`) REFERENCES `cms_node` (`f_node_id`),
  CONSTRAINT `fk_cms_collect_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`),
  CONSTRAINT `fk_cms_collect_user` FOREIGN KEY (`f_user_id`) REFERENCES `cms_user` (`f_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='采集表';

LOCK TABLES `cms_collect` WRITE;
/*!40000 ALTER TABLE `cms_collect` DISABLE KEYS */;

INSERT INTO `cms_collect` (`f_collect_id`, `f_node_id`, `f_site_id`, `f_user_id`, `f_name`, `f_charset`, `f_user_agent`, `f_interval_min`, `f_interval_max`, `f_list_pattern`, `f_list_next_pattern`, `f_is_list_next_reg`, `f_item_area_pattern`, `f_is_item_area_reg`, `f_item_pattern`, `f_is_item_reg`, `f_block_area_pattern`, `f_is_block_area_reg`, `f_block_pattern`, `f_is_block_reg`, `f_page_begin`, `f_page_end`, `f_is_desc`, `f_is_submit`, `f_status`)
VALUES
	(1,36,1,1,'新浪新闻','GBK','Mozilla/5.0',0,0,'http://roll.news.sina.com.cn/news/gnxw/gdxw1/index.shtml\r\nhttp://roll.news.sina.com.cn/news/gnxw/gdxw1/index_(*).shtml',NULL,'0','<ul class=\"list_009\">(*)</ul>','0','<li><a href=\"(*)\" target=\"_blank\">','0',NULL,'0',NULL,'0',2,10,'1','0',0);

/*!40000 ALTER TABLE `cms_collect` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_collect_field
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_collect_field`;

CREATE TABLE `cms_collect_field` (
  `f_collectfield_id` int(11) NOT NULL,
  `f_collect_id` int(11) NOT NULL,
  `f_site_id` int(11) NOT NULL,
  `f_name` varchar(100) NOT NULL COMMENT '名称',
  `f_code` varchar(100) NOT NULL COMMENT '代码',
  `f_type` int(11) NOT NULL DEFAULT '1' COMMENT '类型(1;系统字段,2:custom字段,3:clob字段)',
  `f_source_type` int(11) NOT NULL DEFAULT '1' COMMENT '来源(1:详细页,2:列表页,3:固定值,4:URL)',
  `f_source_url` varchar(255) DEFAULT NULL COMMENT '来源URL',
  `f_source_text` varchar(255) DEFAULT NULL COMMENT '来源文本',
  `f_data_area_pattern` varchar(255) DEFAULT NULL COMMENT '数据区域',
  `f_is_data_area_reg` char(1) NOT NULL DEFAULT '0' COMMENT '数据区域是否正则',
  `f_data_pattern` varchar(255) DEFAULT NULL COMMENT '匹配规则',
  `f_is_data_reg` char(1) NOT NULL DEFAULT '0' COMMENT '匹配规则是否正则',
  `f_date_format` varchar(255) DEFAULT NULL COMMENT '日期格式',
  `f_download_type` varchar(20) DEFAULT NULL COMMENT '下载类型(为空不下载)',
  `f_image_param` varchar(255) DEFAULT NULL COMMENT '图片参数',
  `f_filter` varchar(2000) DEFAULT NULL COMMENT '过滤规则',
  `f_seq` int(11) NOT NULL DEFAULT '2147483647' COMMENT '排列顺序',
  PRIMARY KEY (`f_collectfield_id`),
  KEY `fk_cms_collectfield_collect` (`f_collect_id`),
  KEY `fk_cms_collectfield_site` (`f_site_id`),
  CONSTRAINT `fk_cms_collectfield_collect` FOREIGN KEY (`f_collect_id`) REFERENCES `cms_collect` (`f_collect_id`),
  CONSTRAINT `fk_cms_collectfield_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='采集字段表';

LOCK TABLES `cms_collect_field` WRITE;
/*!40000 ALTER TABLE `cms_collect_field` DISABLE KEYS */;

INSERT INTO `cms_collect_field` (`f_collectfield_id`, `f_collect_id`, `f_site_id`, `f_name`, `f_code`, `f_type`, `f_source_type`, `f_source_url`, `f_source_text`, `f_data_area_pattern`, `f_is_data_area_reg`, `f_data_pattern`, `f_is_data_reg`, `f_date_format`, `f_download_type`, `f_image_param`, `f_filter`, `f_seq`)
VALUES
	(1,1,1,'标题','title',1,1,NULL,NULL,NULL,'0','<meta property=\"og:title\" content=\"(*)\" />','0',NULL,'---无---',NULL,NULL,2147483647),
	(2,1,1,'发布时间','publishDate',1,1,NULL,NULL,NULL,'0','<span id=\"pub_date\">(*)</span>','0','yyyy年MM月dd日HH:mm',NULL,NULL,NULL,2147483647),
	(3,1,1,'正文','text',1,1,NULL,NULL,NULL,'0','<div class=\"article article_16\" id=\"artibody\">\r\n(*)\r\n        </div>','0',NULL,NULL,NULL,NULL,2147483647);

/*!40000 ALTER TABLE `cms_collect_field` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_collect_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_collect_log`;

CREATE TABLE `cms_collect_log` (
  `f_collectlog_id` int(11) NOT NULL,
  `f_site_id` int(11) NOT NULL,
  `f_url` varchar(255) NOT NULL COMMENT '采集地址',
  `f_title` varchar(255) DEFAULT NULL COMMENT '标题',
  `f_message` varchar(255) DEFAULT NULL COMMENT '消息',
  `f_time` datetime NOT NULL COMMENT '时间',
  `f_status` int(11) NOT NULL DEFAULT '0' COMMENT '状态(0:成功,1:失败)',
  PRIMARY KEY (`f_collectlog_id`),
  KEY `fk_cms_collectlog_site` (`f_site_id`),
  CONSTRAINT `fk_cms_collectlog_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='采集日志表';



# Dump of table cms_comment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_comment`;

CREATE TABLE `cms_comment` (
  `f_comment_id` int(11) NOT NULL,
  `f_site_id` int(11) NOT NULL,
  `f_creator_id` int(11) NOT NULL COMMENT '创建人',
  `f_auditor_id` int(11) DEFAULT NULL COMMENT '审核人',
  `f_ftype` varchar(50) NOT NULL COMMENT '外表标识',
  `f_fid` int(11) NOT NULL COMMENT '外表ID',
  `f_creation_date` datetime NOT NULL COMMENT '评论时间',
  `f_audit_date` datetime DEFAULT NULL COMMENT '审核时间',
  `f_ip` varchar(100) NOT NULL DEFAULT '127.0.0.1' COMMENT 'IP地址',
  `f_score` int(11) NOT NULL DEFAULT '0' COMMENT '得分',
  `f_status` int(11) NOT NULL DEFAULT '0' COMMENT '0:未审核;1:已审核;2:推荐;3:屏蔽',
  `f_text` longtext,
  PRIMARY KEY (`f_comment_id`),
  KEY `fk_cms_comment_auditor` (`f_auditor_id`),
  KEY `fk_cms_comment_creator` (`f_creator_id`),
  KEY `fk_cms_comment_site` (`f_site_id`),
  CONSTRAINT `fk_cms_comment_auditor` FOREIGN KEY (`f_auditor_id`) REFERENCES `cms_user` (`f_user_id`),
  CONSTRAINT `fk_cms_comment_creator` FOREIGN KEY (`f_creator_id`) REFERENCES `cms_user` (`f_user_id`),
  CONSTRAINT `fk_cms_comment_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表';



# Dump of table cms_friendlink
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_friendlink`;

CREATE TABLE `cms_friendlink` (
  `f_friendlink_id` int(11) NOT NULL,
  `f_friendlinktype_id` int(11) NOT NULL,
  `f_site_id` int(11) NOT NULL,
  `f_name` varchar(100) NOT NULL COMMENT '网站名称',
  `f_url` varchar(255) NOT NULL COMMENT '网站地址',
  `f_seq` int(11) NOT NULL DEFAULT '2147483647' COMMENT '排序',
  `f_logo` varchar(255) DEFAULT NULL COMMENT '网站Logo',
  `f_description` varchar(255) DEFAULT NULL COMMENT '网站描述',
  `f_email` varchar(100) DEFAULT NULL COMMENT '站长Email',
  `f_is_with_logo` char(1) NOT NULL DEFAULT '0' COMMENT '是否带Logo',
  `f_is_recommend` char(1) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `f_status` int(11) NOT NULL DEFAULT '0' COMMENT '状态(0:已审核,1:未审核)',
  PRIMARY KEY (`f_friendlink_id`),
  KEY `fk_cms_friendlink_fltype` (`f_friendlinktype_id`),
  KEY `fk_cms_friendlink_site` (`f_site_id`),
  CONSTRAINT `fk_cms_friendlink_fltype` FOREIGN KEY (`f_friendlinktype_id`) REFERENCES `cms_friendlink_type` (`f_friendlinktype_id`),
  CONSTRAINT `fk_cms_friendlink_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='友情链接表';

LOCK TABLES `cms_friendlink` WRITE;
/*!40000 ALTER TABLE `cms_friendlink` DISABLE KEYS */;

INSERT INTO `cms_friendlink` (`f_friendlink_id`, `f_friendlinktype_id`, `f_site_id`, `f_name`, `f_url`, `f_seq`, `f_logo`, `f_description`, `f_email`, `f_is_with_logo`, `f_is_recommend`, `f_status`)
VALUES
	(11,4,1,'昌吉州人力资源社会保障厅','http://www.cjrs.gov.cn',2147483647,NULL,NULL,NULL,'0','0',0),
	(12,4,1,'自治区商务厅','http://www.xjftec.gov.cn',2147483647,NULL,NULL,NULL,'0','0',0),
	(13,4,1,'自治区国土资源厅','http://www.xjgtzy.gov.cn',2147483647,NULL,NULL,NULL,'0','0',0),
	(14,4,1,'自治区人力资源社会保障厅','http://www.xjrs.gov.cn',2147483647,NULL,NULL,NULL,'0','0',0),
	(15,4,1,'自治区城乡建设厅','http://www.xjjs.gov.cn',2147483647,NULL,NULL,NULL,'0','0',0),
	(16,4,1,'自治区环境保护厅','http://www.xjepb.gov.cn',2147483647,NULL,NULL,NULL,'0','0',0),
	(17,4,1,'自治区交通运输厅','http://www.xjjt.gov.cn',2147483647,NULL,NULL,NULL,'0','0',0),
	(18,4,1,'自治区经济和信息化委员会','http://www.xjeic.gov.cn',2147483647,NULL,NULL,NULL,'0','0',0),
	(19,4,1,'西部庭州','http://www.cj.gov.cn',2147483647,NULL,NULL,NULL,'0','0',0),
	(20,4,1,'昌吉州安监局','http://ajj.cj.gov.cn',2147483647,NULL,NULL,NULL,'0','0',0),
	(21,4,1,'新疆维吾尔自治区发改委','http://www.xjdrc.gov.cn',2147483647,NULL,NULL,NULL,'0','0',0),
	(22,4,1,'昌吉州经济和信息化委员会','http://jxw.cj.gov.cn',2147483647,NULL,NULL,NULL,'0','0',0),
	(23,4,1,'木垒县政府网','http://www.mlx.gov.cn',2147483647,NULL,NULL,NULL,'0','0',0),
	(24,4,1,'奇台县政府网','http://www.xjqt.gov.cn',2147483647,NULL,NULL,NULL,'0','0',0),
	(25,4,1,'昌吉国家农业科技园区','http://www.agri123.com.cn',2147483647,NULL,NULL,NULL,'0','0',0),
	(26,4,1,'新疆维吾尔自治区安监局','http://www.xjsafety.gov.cn',2147483647,NULL,NULL,NULL,'0','0',0),
	(27,4,1,'阜康市政府网','http://www.fk.gov.cn',2147483647,NULL,NULL,NULL,'0','0',0),
	(28,4,1,'昌吉州商务局','http://cjswj.xjftec.gov.cn',2147483647,NULL,NULL,NULL,'0','0',0),
	(29,4,1,'新疆维吾尔自治区经信委','http://www.xjeic.gov.cn',2147483647,NULL,NULL,NULL,'0','0',0),
	(30,4,1,'新疆维吾尔自治区财政厅','http://www.xjcz.gov.cn',2147483647,NULL,NULL,NULL,'0','0',0);

/*!40000 ALTER TABLE `cms_friendlink` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_friendlink_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_friendlink_type`;

CREATE TABLE `cms_friendlink_type` (
  `f_friendlinktype_id` int(11) NOT NULL,
  `f_site_id` int(11) NOT NULL,
  `f_name` varchar(100) NOT NULL COMMENT '名称',
  `f_number` varchar(100) DEFAULT NULL COMMENT '编码',
  `f_seq` int(11) NOT NULL DEFAULT '2147483647' COMMENT '排序',
  PRIMARY KEY (`f_friendlinktype_id`),
  KEY `fk_cms_friendlinktype_site` (`f_site_id`),
  CONSTRAINT `fk_cms_friendlinktype_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='友情链接类型表';

LOCK TABLES `cms_friendlink_type` WRITE;
/*!40000 ALTER TABLE `cms_friendlink_type` DISABLE KEYS */;

INSERT INTO `cms_friendlink_type` (`f_friendlinktype_id`, `f_site_id`, `f_name`, `f_number`, `f_seq`)
VALUES
	(1,1,'综合类','zonghe',1),
	(3,1,'技术类','yule',2),
	(4,1,'政务网址大全','zw',0);

/*!40000 ALTER TABLE `cms_friendlink_type` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_global
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_global`;

CREATE TABLE `cms_global` (
  `f_global_id` int(11) NOT NULL,
  `f_protocol` varchar(50) NOT NULL DEFAULT 'http' COMMENT '协议',
  `f_port` int(11) DEFAULT NULL COMMENT '服务端口号',
  `f_context_path` varchar(255) DEFAULT NULL COMMENT '上下文路径',
  `f_is_with_domain` char(1) NOT NULL DEFAULT '0' COMMENT '是否URL包含域名',
  `f_uploads_publishpoint_id` int(11) DEFAULT NULL COMMENT '附件发布点',
  `f_version` varchar(50) NOT NULL COMMENT 'jspxcms版本号',
  PRIMARY KEY (`f_global_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='全局表';

LOCK TABLES `cms_global` WRITE;
/*!40000 ALTER TABLE `cms_global` DISABLE KEYS */;

INSERT INTO `cms_global` (`f_global_id`, `f_protocol`, `f_port`, `f_context_path`, `f_is_with_domain`, `f_uploads_publishpoint_id`, `f_version`)
VALUES
	(1,'http',8080,'/klml','1',1,'5.2.5');

/*!40000 ALTER TABLE `cms_global` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_global_clob
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_global_clob`;

CREATE TABLE `cms_global_clob` (
  `f_global_id` int(11) NOT NULL,
  `f_key` varchar(50) NOT NULL COMMENT '键',
  `f_value` longtext COMMENT '值',
  KEY `fk_cms_globalclob_global` (`f_global_id`),
  CONSTRAINT `fk_cms_globalclob_global` FOREIGN KEY (`f_global_id`) REFERENCES `cms_global` (`f_global_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='全局大字段表';



# Dump of table cms_global_custom
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_global_custom`;

CREATE TABLE `cms_global_custom` (
  `f_global_id` int(11) NOT NULL,
  `f_key` varchar(50) NOT NULL COMMENT '键',
  `f_value` varchar(2000) DEFAULT NULL COMMENT '值',
  KEY `fk_cms_globalcustom_global` (`f_global_id`),
  CONSTRAINT `fk_cms_globalcustom_global` FOREIGN KEY (`f_global_id`) REFERENCES `cms_global` (`f_global_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='全局自定义表';

LOCK TABLES `cms_global_custom` WRITE;
/*!40000 ALTER TABLE `cms_global_custom` DISABLE KEYS */;

INSERT INTO `cms_global_custom` (`f_global_id`, `f_key`, `f_value`)
VALUES
	(1,'sys_flashAllowedExtensions',''),
	(1,'sys_videoAllowedExtensions',''),
	(1,'sys_videoDeniedExtensions',''),
	(1,'sys_imageAllowedExtensions',''),
	(1,'sys_linkDeniedExtensions',''),
	(1,'sys_imageDeniedExtensions',''),
	(1,'sys_linkAllowedExtensions',''),
	(1,'sys_flashDeniedExtensions',''),
	(1,'sys_register_mode','1'),
	(1,'sys_register_passwordEmailText','亲爱的${username}:\r\n  请复制以下链接到浏览器中打开，进入密码修改页面。\r\n  ${url}\r\n\r\n${sitename}'),
	(1,'sys_register_maxLength','20'),
	(1,'sys_register_minLength','3'),
	(1,'sys_register_orgId','1'),
	(1,'sys_register_validCharacter','^[0-9a-zA-Z\\u4e00-\\u9fa5\\.\\-@_]+$'),
	(1,'sys_register_groupId','1'),
	(1,'sys_register_passwordEmailSubject','找回密码通知'),
	(1,'sys_register_verifyMode','0'),
	(1,'sys_register_verifyEmailText','亲爱的${username}:\r\n  请复制以下链接到浏览器中打开，以便激活您的帐号。\r\n  ${url}\r\n\r\n${sitename}'),
	(1,'sys_register_userAgreement','1、在本站注册的会员，必须遵守《互联网电子公告服务管理规定》，不得在本站发表诽谤他人，侵犯他人隐私，侵犯他人知识产权，传播病毒，政治言论，商业讯息等信息。\r\n2、在所有在本站发表的文章，本站都具有最终编辑权，并且保留用于印刷或向第三方发表的权利，如果你的资料不齐全，我们将有权不作任何通知使用你在本站发布的作品。\r\n3、在登记过程中，您将选择注册名和密码。注册名的选择应遵守法律法规及社会公德。您必须对您的密码保密，您将对您注册名和密码下发生的所有活动承担责任。'),
	(1,'sys_register_verifyEmailSubject','帐号激活邮件'),
	(1,'sys_mail_smtpAuth','true'),
	(1,'sys_mail_smtpHost','smtp.163.com'),
	(1,'sys_mail_from','myemail@163.com'),
	(1,'sys_mail_smtpUsername','myemail@163.com'),
	(1,'sys_mail_smtpPassword','mypassword');

/*!40000 ALTER TABLE `cms_global_custom` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_guestbook
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_guestbook`;

CREATE TABLE `cms_guestbook` (
  `f_guestbook_id` int(11) NOT NULL,
  `f_site_id` int(11) NOT NULL COMMENT '站点',
  `f_guestbooktype_id` int(11) NOT NULL COMMENT '留言类型',
  `f_creator_id` int(11) NOT NULL COMMENT '创建者',
  `f_replyer_id` int(11) DEFAULT NULL COMMENT '回复者',
  `f_title` varchar(150) DEFAULT NULL COMMENT '留言标题',
  `f_text` longtext COMMENT '留言内容',
  `f_creation_date` datetime NOT NULL COMMENT '留言日期',
  `f_creation_ip` varchar(100) NOT NULL COMMENT '留言IP',
  `f_reply_text` longtext COMMENT '回复内容',
  `f_reply_date` datetime DEFAULT NULL COMMENT '回复日期',
  `f_reply_ip` varchar(100) DEFAULT NULL COMMENT '回复IP',
  `f_is_reply` char(1) NOT NULL DEFAULT '0' COMMENT '是否回复',
  `f_is_recommend` char(1) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `f_status` int(11) NOT NULL DEFAULT '0' COMMENT '状态(0:已审核,1:未审核,2:屏蔽)',
  `f_username` varchar(100) DEFAULT NULL COMMENT '用户名',
  `f_gender` char(1) DEFAULT NULL COMMENT '性别',
  `f_phone` varchar(100) DEFAULT NULL COMMENT '电话',
  `f_mobile` varchar(100) DEFAULT NULL COMMENT '手机',
  `f_qq` varchar(100) DEFAULT NULL COMMENT 'QQ号码',
  `f_email` varchar(100) DEFAULT NULL COMMENT '电子邮箱',
  PRIMARY KEY (`f_guestbook_id`),
  KEY `fk_cms_guestbook_creator` (`f_creator_id`),
  KEY `fk_cms_guestbook_guestbooktype` (`f_guestbooktype_id`),
  KEY `fk_cms_guestbook_replyer` (`f_replyer_id`),
  KEY `fk_cms_guestbook_site` (`f_site_id`),
  CONSTRAINT `fk_cms_guestbook_creator` FOREIGN KEY (`f_creator_id`) REFERENCES `cms_user` (`f_user_id`),
  CONSTRAINT `fk_cms_guestbook_guestbooktype` FOREIGN KEY (`f_guestbooktype_id`) REFERENCES `cms_guestbook_type` (`f_guestbooktype_id`),
  CONSTRAINT `fk_cms_guestbook_replyer` FOREIGN KEY (`f_replyer_id`) REFERENCES `cms_user` (`f_user_id`),
  CONSTRAINT `fk_cms_guestbook_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='留言板表';

LOCK TABLES `cms_guestbook` WRITE;
/*!40000 ALTER TABLE `cms_guestbook` DISABLE KEYS */;

INSERT INTO `cms_guestbook` (`f_guestbook_id`, `f_site_id`, `f_guestbooktype_id`, `f_creator_id`, `f_replyer_id`, `f_title`, `f_text`, `f_creation_date`, `f_creation_ip`, `f_reply_text`, `f_reply_date`, `f_reply_ip`, `f_is_reply`, `f_is_recommend`, `f_status`, `f_username`, `f_gender`, `f_phone`, `f_mobile`, `f_qq`, `f_email`)
VALUES
	(23,1,1,1,1,NULL,'终于等到jspxcms升级了，期待很久了。\r\n呵呵！','2013-08-12 08:54:43','0:0:0:0:0:0:0:1','非常感谢大家长久以来的支持！','2013-08-12 08:56:00','0:0:0:0:0:0:0:1','1','0',0,NULL,'1',NULL,NULL,NULL,NULL),
	(28,1,1,1,NULL,NULL,'庆祝Jspcms4.1发布','2014-03-18 13:56:44','0:0:0:0:0:0:0:1',NULL,NULL,NULL,'0','0',0,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `cms_guestbook` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_guestbook_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_guestbook_type`;

CREATE TABLE `cms_guestbook_type` (
  `f_guestbooktype_id` int(11) NOT NULL,
  `f_site_id` int(11) NOT NULL COMMENT '站点',
  `f_name` varchar(100) NOT NULL COMMENT '名称',
  `f_number` varchar(100) DEFAULT NULL COMMENT '编码',
  `f_seq` int(11) NOT NULL DEFAULT '2147483647' COMMENT '排序',
  `f_description` varchar(255) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`f_guestbooktype_id`),
  KEY `fk_cms_guestbooktype_site` (`f_site_id`),
  CONSTRAINT `fk_cms_guestbooktype_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='留言板类型表';

LOCK TABLES `cms_guestbook_type` WRITE;
/*!40000 ALTER TABLE `cms_guestbook_type` DISABLE KEYS */;

INSERT INTO `cms_guestbook_type` (`f_guestbooktype_id`, `f_site_id`, `f_name`, `f_number`, `f_seq`, `f_description`)
VALUES
	(1,1,'雁过留声','liusheng',0,'游客或会员留言');

/*!40000 ALTER TABLE `cms_guestbook_type` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_info`;

CREATE TABLE `cms_info` (
  `f_info_id` int(11) NOT NULL,
  `f_org_id` int(11) NOT NULL COMMENT '组织',
  `f_creator_id` int(11) NOT NULL COMMENT '创建者',
  `f_site_id` int(11) NOT NULL COMMENT '站点',
  `f_node_id` int(11) NOT NULL COMMENT '栏目',
  `f_publish_date` datetime NOT NULL COMMENT '发布日期',
  `f_off_date` datetime DEFAULT NULL COMMENT '关闭日期',
  `f_priority` tinyint(4) NOT NULL DEFAULT '0' COMMENT '优先级',
  `f_is_with_image` char(1) NOT NULL DEFAULT '0' COMMENT '是否包含图片',
  `f_views` int(11) NOT NULL DEFAULT '0' COMMENT '浏览总数',
  `f_downloads` int(11) NOT NULL DEFAULT '0' COMMENT '下载总数',
  `f_comments` int(11) NOT NULL DEFAULT '0' COMMENT '评论总数',
  `f_diggs` int(11) NOT NULL DEFAULT '0' COMMENT '顶',
  `f_score` int(11) NOT NULL DEFAULT '0' COMMENT '得分',
  `f_status` char(1) NOT NULL DEFAULT 'A' COMMENT '状态(0:发起者,1-9:审核中,A:已发布,B:草稿,C:投稿,D:退稿,E:采集,F:待发布,G:已过期,X:回收站,Z:归档)',
  `f_p1` tinyint(4) DEFAULT NULL COMMENT '自定义1',
  `f_p2` tinyint(4) DEFAULT NULL COMMENT '自定义2',
  `f_p3` tinyint(4) DEFAULT NULL COMMENT '自定义3',
  `f_p4` tinyint(4) DEFAULT NULL COMMENT '自定义4',
  `f_p5` tinyint(4) DEFAULT NULL COMMENT '自定义5',
  `f_p6` tinyint(4) DEFAULT NULL COMMENT '自定义6',
  `f_html_status` char(1) NOT NULL DEFAULT '0' COMMENT 'HTML状态(0:未开启,1:待生成,2:待更新,3:已生成)',
  PRIMARY KEY (`f_info_id`),
  KEY `fk_cms_info_node` (`f_node_id`),
  KEY `fk_cms_info_org` (`f_org_id`),
  KEY `fk_cms_info_site` (`f_site_id`),
  KEY `fk_cms_info_user_creator` (`f_creator_id`),
  CONSTRAINT `fk_cms_info_node` FOREIGN KEY (`f_node_id`) REFERENCES `cms_node` (`f_node_id`),
  CONSTRAINT `fk_cms_info_org` FOREIGN KEY (`f_org_id`) REFERENCES `cms_org` (`f_org_id`),
  CONSTRAINT `fk_cms_info_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`),
  CONSTRAINT `fk_cms_info_user_creator` FOREIGN KEY (`f_creator_id`) REFERENCES `cms_user` (`f_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文档表';

LOCK TABLES `cms_info` WRITE;
/*!40000 ALTER TABLE `cms_info` DISABLE KEYS */;

INSERT INTO `cms_info` (`f_info_id`, `f_org_id`, `f_creator_id`, `f_site_id`, `f_node_id`, `f_publish_date`, `f_off_date`, `f_priority`, `f_is_with_image`, `f_views`, `f_downloads`, `f_comments`, `f_diggs`, `f_score`, `f_status`, `f_p1`, `f_p2`, `f_p3`, `f_p4`, `f_p5`, `f_p6`, `f_html_status`)
VALUES
	(139,1,1,1,108,'2015-07-01 17:44:58',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(140,1,1,1,108,'2015-07-01 17:45:27',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(141,1,1,1,119,'2015-07-01 18:10:16',NULL,0,'1',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(142,1,1,1,120,'2015-07-01 18:42:40',NULL,0,'1',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(143,1,1,1,36,'2015-07-01 18:47:02',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(144,1,1,1,36,'2015-07-01 18:56:27',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(145,1,1,1,120,'2015-07-01 23:43:54',NULL,0,'1',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(146,1,1,1,120,'2015-07-01 23:44:06',NULL,0,'1',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(147,1,1,1,120,'2015-07-01 23:44:13',NULL,0,'1',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(148,1,1,1,120,'2015-07-01 23:44:22',NULL,0,'1',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(149,1,1,1,120,'2015-07-01 23:44:28',NULL,0,'1',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(150,1,1,1,109,'2015-07-03 10:39:34',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(151,1,1,1,109,'2015-07-03 10:39:45',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(152,1,1,1,109,'2015-07-03 10:39:49',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(153,1,1,1,109,'2015-07-03 10:39:54',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(154,1,1,1,109,'2015-07-03 10:40:03',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(155,1,1,1,109,'2015-07-03 10:40:09',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(156,1,1,1,109,'2015-07-03 10:40:13',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(157,1,1,1,109,'2015-07-03 10:40:18',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(158,1,1,1,109,'2015-07-03 10:40:25',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(159,1,1,1,108,'2015-07-03 10:43:15',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(160,1,1,1,108,'2015-07-03 10:43:22',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(161,1,1,1,108,'2015-07-03 10:43:27',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(162,1,1,1,108,'2015-07-03 10:43:33',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(163,1,1,1,108,'2015-07-03 10:43:39',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(164,1,1,1,108,'2015-07-03 10:43:45',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(165,1,1,1,108,'2015-07-03 10:43:54',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(166,1,1,1,36,'2015-07-03 10:44:24',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(167,1,1,1,36,'2015-07-03 10:44:29',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(168,1,1,1,36,'2015-07-03 10:44:33',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(169,1,1,1,36,'2015-07-03 10:44:39',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(170,1,1,1,36,'2015-07-03 10:44:43',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(171,1,1,1,36,'2015-07-03 10:44:50',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(172,1,1,1,36,'2015-07-03 10:44:57',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(173,1,1,1,110,'2015-07-03 10:46:14',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(174,1,1,1,110,'2015-07-03 10:46:19',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(175,1,1,1,110,'2015-07-03 10:46:24',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(176,1,1,1,110,'2015-07-03 10:46:28',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(177,1,1,1,110,'2015-07-03 10:46:34',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(178,1,1,1,110,'2015-07-03 10:46:39',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(179,1,1,1,110,'2015-07-03 10:46:44',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(180,1,1,1,110,'2015-07-03 10:46:51',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(181,1,1,1,110,'2015-07-03 10:46:57',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(182,1,1,1,111,'2015-07-03 10:48:01',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(183,1,1,1,111,'2015-07-03 10:48:06',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(184,1,1,1,111,'2015-07-03 10:48:10',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(185,1,1,1,111,'2015-07-03 10:48:16',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(186,1,1,1,111,'2015-07-03 10:48:24',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(187,1,1,1,111,'2015-07-03 10:48:29',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(188,1,1,1,111,'2015-07-03 10:48:34',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(189,1,1,1,111,'2015-07-03 10:48:39',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(190,1,1,1,111,'2015-07-03 10:48:44',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(191,1,1,1,112,'2015-07-03 10:49:20',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(192,1,1,1,112,'2015-07-03 10:49:26',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(193,1,1,1,112,'2015-07-03 10:49:30',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(194,1,1,1,112,'2015-07-03 10:49:37',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(195,1,1,1,112,'2015-07-03 10:49:43',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(196,1,1,1,112,'2015-07-03 10:49:48',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(197,1,1,1,112,'2015-07-03 10:49:53',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(198,1,1,1,112,'2015-07-03 10:49:57',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(199,1,1,1,112,'2015-07-03 10:50:03',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(200,1,1,1,113,'2015-07-03 10:50:36',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(201,1,1,1,113,'2015-07-03 10:50:43',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(202,1,1,1,113,'2015-07-03 10:50:52',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(203,1,1,1,113,'2015-07-03 10:50:57',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(204,1,1,1,113,'2015-07-03 10:51:02',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(205,1,1,1,113,'2015-07-03 10:51:09',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(206,1,1,1,113,'2015-07-03 10:51:23',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(207,1,1,1,113,'2015-07-03 10:51:30',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(208,1,1,1,113,'2015-07-03 10:51:37',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(209,1,1,1,114,'2015-07-03 11:19:43',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(210,1,1,1,114,'2015-07-03 11:19:47',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(211,1,1,1,114,'2015-07-03 11:19:54',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(212,1,1,1,114,'2015-07-03 11:19:59',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(213,1,1,1,114,'2015-07-03 11:20:05',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(214,1,1,1,114,'2015-07-03 11:20:10',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(215,1,1,1,114,'2015-07-03 11:20:16',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(216,1,1,1,114,'2015-07-03 11:20:23',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(217,1,1,1,114,'2015-07-03 11:20:28',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(218,1,1,1,115,'2015-07-03 11:21:50',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(219,1,1,1,115,'2015-07-03 11:21:54',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(220,1,1,1,115,'2015-07-03 11:22:07',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(221,1,1,1,115,'2015-07-03 11:22:11',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(222,1,1,1,115,'2015-07-03 11:22:19',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(223,1,1,1,115,'2015-07-03 11:22:24',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(224,1,1,1,115,'2015-07-03 11:22:29',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(225,1,1,1,115,'2015-07-03 11:22:33',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(226,1,1,1,115,'2015-07-03 11:22:38',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(227,1,1,1,134,'2015-07-03 11:23:11',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(228,1,1,1,134,'2015-07-03 11:23:15',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(229,1,1,1,134,'2015-07-03 11:23:19',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(230,1,1,1,134,'2015-07-03 11:23:23',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(231,1,1,1,134,'2015-07-03 11:23:28',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(232,1,1,1,134,'2015-07-03 11:23:33',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(233,1,1,1,134,'2015-07-03 11:23:38',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(234,1,1,1,134,'2015-07-03 11:24:13',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(235,1,1,1,134,'2015-07-03 11:24:18',NULL,0,'0',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(236,1,1,1,36,'2015-07-03 19:22:35',NULL,0,'0',10,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(237,1,1,1,88,'2015-07-03 23:03:11',NULL,0,'1',20,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0'),
	(238,1,1,1,89,'2015-07-04 00:03:06',NULL,0,'1',0,0,0,0,0,'A',NULL,NULL,NULL,NULL,NULL,NULL,'0');

/*!40000 ALTER TABLE `cms_info` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_info_attribute
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_info_attribute`;

CREATE TABLE `cms_info_attribute` (
  `f_infoattr_id` int(11) NOT NULL,
  `f_info_id` int(11) NOT NULL COMMENT '文档',
  `f_attribute_id` int(11) NOT NULL COMMENT '属性',
  `f_image` varchar(255) DEFAULT NULL COMMENT '属性图片',
  PRIMARY KEY (`f_infoattr_id`),
  KEY `fk_cms_infoattr_attribute` (`f_attribute_id`),
  KEY `fk_cms_infoattr_info` (`f_info_id`),
  CONSTRAINT `fk_cms_infoattr_attribute` FOREIGN KEY (`f_attribute_id`) REFERENCES `cms_attribute` (`f_attribute_id`),
  CONSTRAINT `fk_cms_infoattr_info` FOREIGN KEY (`f_info_id`) REFERENCES `cms_info` (`f_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文档与属性关联表';

LOCK TABLES `cms_info_attribute` WRITE;
/*!40000 ALTER TABLE `cms_info_attribute` DISABLE KEYS */;

INSERT INTO `cms_info_attribute` (`f_infoattr_id`, `f_info_id`, `f_attribute_id`, `f_image`)
VALUES
	(410,143,1,NULL),
	(411,144,1,NULL),
	(412,166,1,NULL),
	(413,167,1,NULL),
	(414,168,1,NULL),
	(415,169,1,NULL),
	(416,170,1,NULL),
	(417,171,1,NULL),
	(418,172,1,NULL),
	(419,237,4,NULL),
	(420,238,4,NULL);

/*!40000 ALTER TABLE `cms_info_attribute` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_info_buffer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_info_buffer`;

CREATE TABLE `cms_info_buffer` (
  `f_info_id` int(11) NOT NULL,
  `f_views` int(11) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `f_downloads` int(11) NOT NULL DEFAULT '0' COMMENT '下载次数',
  `f_comments` int(11) NOT NULL DEFAULT '0' COMMENT '评论次数',
  `f_involveds` int(11) NOT NULL DEFAULT '0' COMMENT '评论参与人数',
  `f_diggs` int(11) NOT NULL DEFAULT '0' COMMENT '顶',
  `f_burys` int(11) NOT NULL DEFAULT '0' COMMENT '踩',
  `f_score` int(11) NOT NULL DEFAULT '0' COMMENT '得分',
  PRIMARY KEY (`f_info_id`),
  CONSTRAINT `fk_cms_infobuffer_info` FOREIGN KEY (`f_info_id`) REFERENCES `cms_info` (`f_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文档缓冲表';

LOCK TABLES `cms_info_buffer` WRITE;
/*!40000 ALTER TABLE `cms_info_buffer` DISABLE KEYS */;

INSERT INTO `cms_info_buffer` (`f_info_id`, `f_views`, `f_downloads`, `f_comments`, `f_involveds`, `f_diggs`, `f_burys`, `f_score`)
VALUES
	(139,0,0,0,0,0,0,0),
	(140,0,0,0,0,0,0,0),
	(141,0,0,0,0,0,0,0),
	(142,2,0,0,0,0,0,0),
	(143,0,0,0,0,0,0,0),
	(144,3,0,0,0,0,0,0),
	(145,1,0,0,0,0,0,0),
	(146,0,0,0,0,0,0,0),
	(147,0,0,0,0,0,0,0),
	(148,0,0,0,0,0,0,0),
	(149,2,0,0,0,0,0,0),
	(150,0,0,0,0,0,0,0),
	(151,0,0,0,0,0,0,0),
	(152,0,0,0,0,0,0,0),
	(153,0,0,0,0,0,0,0),
	(154,0,0,0,0,0,0,0),
	(155,0,0,0,0,0,0,0),
	(156,0,0,0,0,0,0,0),
	(157,0,0,0,0,0,0,0),
	(158,1,0,0,0,0,0,0),
	(159,0,0,0,0,0,0,0),
	(160,0,0,0,0,0,0,0),
	(161,0,0,0,0,0,0,0),
	(162,0,0,0,0,0,0,0),
	(163,0,0,0,0,0,0,0),
	(164,0,0,0,0,0,0,0),
	(165,0,0,0,0,0,0,0),
	(166,1,0,0,0,0,0,0),
	(167,0,0,0,0,0,0,0),
	(168,0,0,0,0,0,0,0),
	(169,1,0,0,0,0,0,0),
	(170,7,0,0,0,0,0,0),
	(171,0,0,0,0,0,0,0),
	(172,6,0,0,0,0,0,0),
	(173,0,0,0,0,0,0,0),
	(174,1,0,0,0,0,0,0),
	(175,0,0,0,0,0,0,0),
	(176,0,0,0,0,0,0,0),
	(177,0,0,0,0,0,0,0),
	(178,0,0,0,0,0,0,0),
	(179,0,0,0,0,0,0,0),
	(180,0,0,0,0,0,0,0),
	(181,0,0,0,0,0,0,0),
	(182,0,0,0,0,0,0,0),
	(183,0,0,0,0,0,0,0),
	(184,1,0,0,0,0,0,0),
	(185,0,0,0,0,0,0,0),
	(186,0,0,0,0,0,0,0),
	(187,0,0,0,0,0,0,0),
	(188,2,0,0,0,0,0,0),
	(189,1,0,0,0,0,0,0),
	(190,0,0,0,0,0,0,0),
	(191,0,0,0,0,0,0,0),
	(192,1,0,0,0,0,0,0),
	(193,0,0,0,0,0,0,0),
	(194,0,0,0,0,0,0,0),
	(195,0,0,0,0,0,0,0),
	(196,0,0,0,0,0,0,0),
	(197,0,0,0,0,0,0,0),
	(198,0,0,0,0,0,0,0),
	(199,0,0,0,0,0,0,0),
	(200,0,0,0,0,0,0,0),
	(201,0,0,0,0,0,0,0),
	(202,0,0,0,0,0,0,0),
	(203,0,0,0,0,0,0,0),
	(204,0,0,0,0,0,0,0),
	(205,0,0,0,0,0,0,0),
	(206,0,0,0,0,0,0,0),
	(207,1,0,0,0,0,0,0),
	(208,0,0,0,0,0,0,0),
	(209,0,0,0,0,0,0,0),
	(210,0,0,0,0,0,0,0),
	(211,0,0,0,0,0,0,0),
	(212,1,0,0,0,0,0,0),
	(213,0,0,0,0,0,0,0),
	(214,0,0,0,0,0,0,0),
	(215,0,0,0,0,0,0,0),
	(216,0,0,0,0,0,0,0),
	(217,0,0,0,0,0,0,0),
	(218,0,0,0,0,0,0,0),
	(219,0,0,0,0,0,0,0),
	(220,0,0,0,0,0,0,0),
	(221,0,0,0,0,0,0,0),
	(222,0,0,0,0,0,0,0),
	(223,0,0,0,0,0,0,0),
	(224,0,0,0,0,0,0,0),
	(225,0,0,0,0,0,0,0),
	(226,0,0,0,0,0,0,0),
	(227,0,0,0,0,0,0,0),
	(228,0,0,0,0,0,0,0),
	(229,0,0,0,0,0,0,0),
	(230,0,0,0,0,0,0,0),
	(231,0,0,0,0,0,0,0),
	(232,0,0,0,0,0,0,0),
	(233,2,0,0,0,0,0,0),
	(234,0,0,0,0,0,0,0),
	(235,0,0,0,0,0,0,0),
	(236,9,0,0,0,0,0,0),
	(237,1,0,0,0,0,0,0),
	(238,5,0,0,0,0,0,0);

/*!40000 ALTER TABLE `cms_info_buffer` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_info_clob
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_info_clob`;

CREATE TABLE `cms_info_clob` (
  `f_info_id` int(11) NOT NULL,
  `f_key` varchar(50) NOT NULL COMMENT '键',
  `f_value` longtext COMMENT '值',
  KEY `fk_cms_infoclob_info` (`f_info_id`),
  CONSTRAINT `fk_cms_infoclob_info` FOREIGN KEY (`f_info_id`) REFERENCES `cms_info` (`f_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文档大字段表';

LOCK TABLES `cms_info_clob` WRITE;
/*!40000 ALTER TABLE `cms_info_clob` DISABLE KEYS */;

INSERT INTO `cms_info_clob` (`f_info_id`, `f_key`, `f_value`)
VALUES
	(139,'text',''),
	(140,'text',''),
	(143,'text','<p><a href=\"http://localhost:8080/klml/news.html\" class=\"text-info\" style=\"text-decoration: none; -webkit-transition: all 0.3s ease; transition: all 0.3s ease; font-family: open_sansregular; font-size: 13px; line-height: 24px; white-space: normal; color: rgb(0, 110, 173) !important; background-color: rgb(217, 228, 236);\">新疆交通建设管理局暨设计院调研组一行赴准东调研</a></p>'),
	(144,'text','<ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>&nbsp;<a href=\"http://101.200.173.151/klml/news.html\" class=\"muted\" style=\"color: rgb(85, 85, 85) !important; text-decoration: none; transition: all 0.3s ease; -webkit-transition: all 0.3s ease;\">魅力准东·舞动青春”啦啦操比赛”</a></p></li></ul><p><br/></p>'),
	(145,'text',''),
	(146,'text',''),
	(147,'text',''),
	(148,'text',''),
	(149,'text',''),
	(150,'text',''),
	(151,'text',''),
	(152,'text',''),
	(153,'text',''),
	(154,'text',''),
	(155,'text',''),
	(156,'text',''),
	(157,'text',''),
	(158,'text',''),
	(159,'text',''),
	(160,'text',''),
	(161,'text',''),
	(162,'text',''),
	(163,'text',''),
	(164,'text',''),
	(165,'text',''),
	(166,'text','<ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>&nbsp;<a href=\"http://101.200.173.151/klml/news.html\" class=\"muted\" style=\"color: rgb(85, 85, 85) !important; text-decoration: none; transition: all 0.3s ease; -webkit-transition: all 0.3s ease;\">魅力准东·舞动青春”啦啦操比赛”</a></p></li></ul><p><br/></p>'),
	(167,'text','<ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>&nbsp;<a href=\"http://101.200.173.151/klml/news.html\" class=\"muted\" style=\"color: rgb(85, 85, 85) !important; text-decoration: none; transition: all 0.3s ease; -webkit-transition: all 0.3s ease;\">魅力准东·舞动青春”啦啦操比赛”</a></p></li></ul><p><br/></p>'),
	(168,'text','<ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>&nbsp;<a href=\"http://101.200.173.151/klml/news.html\" class=\"muted\" style=\"color: rgb(85, 85, 85) !important; text-decoration: none; transition: all 0.3s ease; -webkit-transition: all 0.3s ease;\">魅力准东·舞动青春”啦啦操比赛”</a></p></li></ul><p><br/></p>'),
	(169,'text','<ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>&nbsp;<a href=\"http://101.200.173.151/klml/news.html\" class=\"muted\" style=\"color: rgb(85, 85, 85) !important; text-decoration: none; transition: all 0.3s ease; -webkit-transition: all 0.3s ease;\">魅力准东·舞动青春”啦啦操比赛”</a></p></li></ul><p><br/></p>'),
	(170,'text','<ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>&nbsp;<a href=\"http://101.200.173.151/klml/news.html\" class=\"muted\" style=\"color: rgb(85, 85, 85) !important; text-decoration: none; transition: all 0.3s ease; -webkit-transition: all 0.3s ease;\">魅力准东·舞动青春”啦啦操比赛”</a></p></li></ul><p><br/></p>'),
	(171,'text','<ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>&nbsp;<a href=\"http://101.200.173.151/klml/news.html\" class=\"muted\" style=\"color: rgb(85, 85, 85) !important; text-decoration: none; transition: all 0.3s ease; -webkit-transition: all 0.3s ease;\">魅力准东·舞动青春”啦啦操比赛”</a></p></li></ul><p><br/></p>'),
	(172,'text','<ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>&nbsp;<a href=\"http://101.200.173.151/klml/news.html\" class=\"muted\" style=\"color: rgb(85, 85, 85) !important; text-decoration: none; transition: all 0.3s ease; -webkit-transition: all 0.3s ease;\">魅力准东·舞动青春”啦啦操比赛”</a></p></li></ul><p><br/></p>'),
	(173,'text',''),
	(174,'text',''),
	(175,'text',''),
	(176,'text',''),
	(177,'text',''),
	(178,'text',''),
	(179,'text',''),
	(180,'text',''),
	(181,'text',''),
	(182,'text',''),
	(183,'text',''),
	(184,'text',''),
	(185,'text',''),
	(186,'text',''),
	(187,'text',''),
	(188,'text',''),
	(189,'text',''),
	(190,'text',''),
	(191,'text',''),
	(192,'text',''),
	(193,'text',''),
	(194,'text',''),
	(195,'text',''),
	(196,'text',''),
	(197,'text',''),
	(198,'text',''),
	(199,'text',''),
	(200,'text',''),
	(201,'text',''),
	(202,'text',''),
	(203,'text',''),
	(204,'text',''),
	(205,'text',''),
	(206,'text',''),
	(207,'text',''),
	(208,'text',''),
	(209,'text',''),
	(210,'text',''),
	(211,'text',''),
	(212,'text',''),
	(213,'text',''),
	(214,'text',''),
	(215,'text',''),
	(216,'text',''),
	(217,'text',''),
	(218,'text',''),
	(219,'text',''),
	(220,'text',''),
	(221,'text',''),
	(222,'text',''),
	(223,'text',''),
	(224,'text',''),
	(225,'text',''),
	(226,'text',''),
	(227,'text',''),
	(228,'text',''),
	(229,'text',''),
	(230,'text',''),
	(231,'text',''),
	(232,'text',''),
	(233,'text',''),
	(234,'text',''),
	(235,'text',''),
	(236,'text','<p style=\"margin-top: 0px; margin-bottom: 10px; line-height: 32px; text-align: justify; color: rgb(136, 136, 136); white-space: normal; font-family: 仿宋 !important; background-color: rgb(255, 255, 255);\">公路、铁路、供水、供电、通信五大骨干基础设施一期工程已完工投运，二期全面开始建设。公路方面：新建总长138公里准东Z917主干公路全线通车，基本形成以国道216、省道303、省道228、准东矿区公路为主干的公路运输通道。随着吉彩路、五彩湾至大黄山高速公路的年底建成，开发区公路框架网日趋完善。</p><p style=\"margin-top: 0px; margin-bottom: 10px; line-height: 32px; text-align: justify; color: rgb(136, 136, 136); white-space: normal; font-family: 仿宋 !important; background-color: rgb(255, 255, 255);\">铁路方面：乌北站—准东站—准东北站—将军庙站的铁路主骨框架已形成，神华、天池能源等企业铁路专用线已建成投运，将军庙-黑山铁路已开工建设，联通内地的将军庙至哈密铁路工程已启动前期工作，开发区已具备1500万吨/年的铁路运输能力。供水方面：5000万立方米调蓄水池及一批二级供水管网建设项目正加快建设，目前开发区已具备1亿立方米/年供水规模。</p><p style=\"margin-top: 0px; margin-bottom: 10px; line-height: 32px; text-align: justify; color: rgb(136, 136, 136); white-space: normal; font-family: 仿宋 !important; background-color: rgb(255, 255, 255);\">供电方面：乌北—五彩湾750千伏输变电工程已实现双回路降压送电，220千伏供电环网基本构建完成，五彩湾750千伏变电站即将开工建设，准东至内地的±1100千伏特高压直流输电工程已启动前期工作，开发区供电保障能力大幅提升。</p><p style=\"margin-top: 0px; margin-bottom: 10px; line-height: 32px; text-align: justify; color: rgb(136, 136, 136); white-space: normal; font-family: 仿宋 !important; background-color: rgb(255, 255, 255);\">通讯方面：开发区内通信已实现全覆盖，建成区已具备电话、数据和视频图像的服务能力。截至2012年底，准东开发区五大基础设施工程共完成投资93亿元，其中2012年完成投资37.6亿元，形成了纵横交错、四通八达的公路、铁路、供水、供电、通讯网络。准东承载大产业、大项目的条件日益成熟。</p><p><br/></p>'),
	(237,'text','<p style=\"text-align: center;\"><img src=\"/klml/uploads/1/image/public/201507/20150703230305_bykbvw65gt.jpg\" alt=\"\" style=\"max-width: 100%; height: 255px; vertical-align: middle; border: 0px; width: 558px; text-align: center; margin: 10px auto; color: rgb(136, 136, 136); font-family: open_sansregular; font-size: 13px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(136, 136, 136); font-family: open_sansregular; font-size: 13px; line-height: 24px; background-color: rgb(255, 255, 255);\"></span></p><p style=\"margin-top: 0px; margin-bottom: 10px; line-height: 32px; text-align: justify; color: rgb(136, 136, 136); white-space: normal; font-family: 仿宋 !important; background-color: rgb(255, 255, 255);\">　　准东煤田是国家确定的第十四个能源基地(新疆维吾尔自治区)的重要组成部分。煤田位于昌吉州哦阜康市、吉木萨尔县、奇台县和木垒县境内，西起阜康市东界，东到木垒县老君庙，北至卡拉麦里山南麓，南通古尔班通古特沙漠北缘，是新疆五大煤田(准东、伊犁、吐哈、库柏、和丰—克拉玛依)之一，也是目前我国发现的最大的整装煤田。煤田东西长约220公里，南北平均宽60公里，总面积约1.3万平方公里，分为五彩湾、大井、将军庙、西黑山、老君庙五个矿区。<br/>　　<br/>　　煤炭资源预测储量3900亿吨，占全疆储量(2.19万亿吨)的17.8%、全国储量(5.56万亿吨)的7%。目前，已探明煤炭资源储量2136亿吨。煤炭资源品质优良，主体为31号不粘煤，具有低灰(6.55%)、低硫(0.37%)、富含油的特点，平均热值达到6784大卡/公斤，是良好的动力和化工、制油用煤。</p><p><br/></p>'),
	(238,'text','<p style=\"text-align: center;\"><img src=\"/klml/uploads/1/image/public/201507/20150704000249_b97608khvh.jpg\"/></p><p>&nbsp;&nbsp;&nbsp;&nbsp;卡拉麦里</p>');

/*!40000 ALTER TABLE `cms_info_clob` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_info_custom
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_info_custom`;

CREATE TABLE `cms_info_custom` (
  `f_info_id` int(11) NOT NULL,
  `f_key` varchar(50) NOT NULL COMMENT '键',
  `f_value` varchar(2000) DEFAULT NULL COMMENT '值',
  KEY `fk_cms_infocustom_info` (`f_info_id`),
  CONSTRAINT `fk_cms_infocustom_info` FOREIGN KEY (`f_info_id`) REFERENCES `cms_info` (`f_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文档自定义表';



# Dump of table cms_info_detail
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_info_detail`;

CREATE TABLE `cms_info_detail` (
  `f_info_id` int(11) NOT NULL,
  `f_title` varchar(150) NOT NULL COMMENT '主标题',
  `f_html` varchar(255) DEFAULT NULL COMMENT 'HTML页面',
  `f_subtitle` varchar(150) DEFAULT NULL COMMENT '副标题',
  `f_full_title` varchar(150) DEFAULT NULL COMMENT '完整标题',
  `f_link` varchar(255) DEFAULT NULL COMMENT '转向链接',
  `f_is_new_window` char(1) DEFAULT NULL COMMENT '是否在新窗口打开',
  `f_color` varchar(50) DEFAULT NULL COMMENT '颜色',
  `f_is_strong` char(1) NOT NULL DEFAULT '0' COMMENT '是否粗体',
  `f_is_em` char(1) NOT NULL DEFAULT '0' COMMENT '是否斜体',
  `f_info_path` varchar(255) DEFAULT NULL COMMENT '文档路径',
  `f_info_template` varchar(255) DEFAULT NULL COMMENT '文档模板',
  `f_meta_description` varchar(255) DEFAULT NULL COMMENT '描述',
  `f_source` varchar(50) DEFAULT NULL COMMENT '来源名称',
  `f_source_url` varchar(255) DEFAULT NULL COMMENT '来源url',
  `f_author` varchar(50) DEFAULT NULL COMMENT '作者',
  `f_small_image` varchar(255) DEFAULT NULL COMMENT '小图',
  `f_large_image` varchar(255) DEFAULT NULL COMMENT '大图',
  `f_video` varchar(255) DEFAULT NULL COMMENT '视频url',
  `f_video_name` varchar(255) DEFAULT NULL COMMENT '视频名称',
  `f_video_length` bigint(20) DEFAULT NULL COMMENT '视频长度',
  `f_video_time` varchar(100) DEFAULT NULL COMMENT '视频时间',
  `f_file` varchar(255) DEFAULT NULL COMMENT '文件url',
  `f_file_name` varchar(255) DEFAULT NULL COMMENT '文件名称',
  `f_file_length` bigint(20) DEFAULT NULL COMMENT '文件长度',
  `f_doc` varchar(255) DEFAULT NULL COMMENT '文库url',
  `f_doc_name` varchar(255) DEFAULT NULL COMMENT '文库名称',
  `f_doc_length` varchar(255) DEFAULT NULL COMMENT '文库长度',
  `f_doc_pdf` varchar(255) DEFAULT NULL COMMENT '文库PDF',
  `f_doc_swf` varchar(255) DEFAULT NULL COMMENT '文库SWF',
  `f_is_allow_comment` char(1) DEFAULT NULL COMMENT '是否允许评论',
  `f_step_name` varchar(100) DEFAULT NULL COMMENT '审核步骤名称',
  PRIMARY KEY (`f_info_id`),
  CONSTRAINT `fk_cms_infodetail_info` FOREIGN KEY (`f_info_id`) REFERENCES `cms_info` (`f_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文档详细表';

LOCK TABLES `cms_info_detail` WRITE;
/*!40000 ALTER TABLE `cms_info_detail` DISABLE KEYS */;

INSERT INTO `cms_info_detail` (`f_info_id`, `f_title`, `f_html`, `f_subtitle`, `f_full_title`, `f_link`, `f_is_new_window`, `f_color`, `f_is_strong`, `f_is_em`, `f_info_path`, `f_info_template`, `f_meta_description`, `f_source`, `f_source_url`, `f_author`, `f_small_image`, `f_large_image`, `f_video`, `f_video_name`, `f_video_length`, `f_video_time`, `f_file`, `f_file_name`, `f_file_length`, `f_doc`, `f_doc_name`, `f_doc_length`, `f_doc_pdf`, `f_doc_swf`, `f_is_allow_comment`, `f_step_name`)
VALUES
	(139,' 自治区安监局就开生产工作提七点要',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,' 自治区安监局就开生产工作提七点要',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(140,'管委会党政办通知全体管委会干部今天开会',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'管委会党政办通知全体管委会干部今天开会',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(141,'1',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'1',NULL,NULL,NULL,'/klml/uploads/1/image/public/201507/20150701181016_1p5ccp9p3p.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(142,'图1',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'图1',NULL,NULL,NULL,'/klml/uploads/1/image/public/201507/20150701184240_1lv7nggw7g.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(143,'新疆交通建设管理局',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'新疆交通建设管理局暨设计院调研组一行赴准东调研',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(144,' 魅力准东·舞动青春”啦啦操比赛”',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,' 魅力准东·舞动青春”啦啦操比赛”',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(145,'图2',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'图2',NULL,NULL,NULL,'/klml/uploads/1/image/public/201507/20150701184240_1lv7nggw7g.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(146,'图3',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'图3',NULL,NULL,NULL,'/klml/uploads/1/image/public/201507/20150701184240_1lv7nggw7g.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(147,'图4',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'图3',NULL,NULL,NULL,'/klml/uploads/1/image/public/201507/20150701184240_1lv7nggw7g.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(148,'图5',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'图3',NULL,NULL,NULL,'/klml/uploads/1/image/public/201507/20150701184240_1lv7nggw7g.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(149,'图6',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'图3',NULL,NULL,NULL,'/klml/uploads/1/image/public/201507/20150701184240_1lv7nggw7g.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(150,'经济发展1',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'经济发展1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(151,'经济发展2',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'经济发展1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(152,'经济发展3',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'经济发展1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(153,'经济发展4',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'经济发展1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(154,'经济发展5',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'经济发展1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(155,'经济发展6',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'经济发展1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(156,'经济发展7',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'经济发展1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(157,'经济发展8',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'经济发展1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(158,'经济发展9',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'经济发展1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(159,'管委会党政办通知全体管委会干部今天开会2',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'管委会党政办通知全体管委会干部今天开会',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(160,'管委会党政办通知全体管委会干部今天开会3',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'管委会党政办通知全体管委会干部今天开会',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(161,'管委会党政办通知全体管委会干部今天开会4',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'管委会党政办通知全体管委会干部今天开会',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(162,'管委会党政办通知全体管委会干部今天开会5',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'管委会党政办通知全体管委会干部今天开会',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(163,'管委会党政办通知全体管委会干部今天开会6',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'管委会党政办通知全体管委会干部今天开会',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(164,'管委会党政办通知全体管委会干部今天开会7',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'管委会党政办通知全体管委会干部今天开会',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(165,'管委会党政办通知全体管委会干部今天开会8',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'管委会党政办通知全体管委会干部今天开会',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(166,'魅力准东·舞动青春”啦啦操比赛”2',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,' 魅力准东·舞动青春”啦啦操比赛”',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(167,' 魅力准东·舞动青春”啦啦操比赛”3',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,' 魅力准东·舞动青春”啦啦操比赛”',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(168,' 魅力准东·舞动青春”啦啦操比赛”4',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,' 魅力准东·舞动青春”啦啦操比赛”',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(169,' 魅力准东·舞动青春”啦啦操比赛”5',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,' 魅力准东·舞动青春”啦啦操比赛”',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(170,' 魅力准东·舞动青春”啦啦操比赛”6',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,' 魅力准东·舞动青春”啦啦操比赛”',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(171,' 魅力准东·舞动青春”啦啦操比赛”7',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,' 魅力准东·舞动青春”啦啦操比赛”',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(172,' 魅力准东·舞动青春”啦啦操比赛”8',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,' 魅力准东·舞动青春”啦啦操比赛”',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(173,'党群建设1',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'党群建设1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(174,'党群建设2',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'党群建设1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(175,'党群建设3',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'党群建设1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(176,'党群建设4',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'党群建设1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(177,'党群建设5',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'党群建设1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(178,'党群建设6',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'党群建设1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(179,'党群建设7',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'党群建设1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(180,'党群建设8',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'党群建设1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(181,'党群建设9',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'党群建设1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(182,'政务公示1',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'政务公示1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(183,'政务公示2',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'政务公示1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(184,'政务公示3',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'政务公示1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(185,'政务公示4',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'政务公示1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(186,'政务公示5',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'政务公示1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(187,'政务公示6',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'政务公示1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(188,'政务公示7',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'政务公示1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(189,'政务公示8',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'政务公示1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(190,'政务公示9',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'政务公示1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(191,'法律服务1',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'法律服务1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(192,'法律服务2',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'法律服务1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(193,'法律服务3',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'法律服务1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(194,'法律服务4',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'法律服务1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(195,'法律服务5',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'法律服务1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(196,'法律服务6',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'法律服务1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(197,'法律服务7',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'法律服务1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(198,'法律服务8',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'法律服务1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(199,'法律服务9',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'法律服务1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(200,'环保事务1',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'环保事务1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(201,'环保事务2',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'环保事务1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(202,'环保事务3',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'环保事务1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(203,'环保事务4',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'环保事务1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(204,'环保事务5',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'环保事务1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(205,'环保事务6',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'环保事务1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(206,'环保事务7',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'环保事务1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(207,'环保事务8',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'环保事务1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(208,'环保事务9',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'环保事务1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(209,'干部培训1',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'干部培训1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(210,'干部培训2',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'干部培训1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(211,'干部培训3',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'干部培训1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(212,'干部培训4',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'干部培训1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(213,'干部培训5',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'干部培训1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(214,'干部培训6',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'干部培训1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(215,'干部培训7',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'干部培训1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(216,'干部培训8',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'干部培训1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(217,'干部培训9',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'干部培训1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(218,'安全生产1',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'安全生产1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(219,'安全生产2',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'安全生产1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(220,'安全生产3',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'安全生产1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(221,'安全生产4',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'安全生产1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(222,'安全生产5',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'安全生产1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(223,'安全生产6',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'安全生产1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(224,'安全生产7',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'安全生产1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(225,'安全生产8',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'安全生产1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(226,'安全生产9',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'安全生产1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(227,'金融服务1',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'金融服务1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(228,'金融服务2',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'金融服务1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(229,'金融服务3',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'金融服务1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(230,'金融服务4',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'金融服务1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(231,'金融服务5',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'金融服务1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(232,'金融服务6',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'金融服务1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(233,'金融服务7',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'金融服务1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(234,'金融服务8',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'金融服务1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(235,'金融服务9',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'金融服务1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(236,'基础设施一期工程已完工投运',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'公路、铁路、供水、供电、通信五大骨干基础设施一期工程已完工投运，二期全面开始建设。公路方面：新建总长138公里准东Z917主干公路全线通车，基本形成以国道216、省道303、省道228、准东矿区公路为主干的公路运输通道。随着吉彩路、五彩湾至大黄山高速公路的年底建成，开发区公路框架网日趋完善。铁路方面',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(237,'准东概况',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'　　准东煤田是国家确定的第十四个能源基地(新疆维吾尔自治区)的重要组成部分。煤田位于昌吉州哦阜康市、吉木萨尔县、奇台县和木垒县境内，西起阜康市东界，东到木垒县老君庙，北至卡拉麦里山南麓，南通古尔班通古特沙漠北缘，是新疆五大煤田(准东、伊犁、吐哈、库柏、和丰—克拉玛依)之一，也是目前我国发现的最大的整',NULL,NULL,NULL,'/klml/uploads/1/image/public/201507/20150703230310_2ol10h5cvd.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(238,'地理资源',NULL,NULL,NULL,NULL,NULL,NULL,'0','0',NULL,NULL,'    卡拉麦里',NULL,NULL,NULL,'/klml/uploads/1/image/public/201507/20150704000306_ret4sdk7p5.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `cms_info_detail` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_info_file
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_info_file`;

CREATE TABLE `cms_info_file` (
  `f_info_id` int(11) NOT NULL,
  `f_name` varchar(150) NOT NULL COMMENT '文件名称',
  `f_length` bigint(20) NOT NULL DEFAULT '0' COMMENT '文件长度',
  `f_file` varchar(255) NOT NULL COMMENT '文件地址',
  `f_index` int(11) NOT NULL DEFAULT '0' COMMENT '文件序号',
  `f_downloads` int(11) NOT NULL DEFAULT '0' COMMENT '下载次数',
  KEY `fk_cms_infofile_info` (`f_info_id`),
  CONSTRAINT `fk_cms_infofile_info` FOREIGN KEY (`f_info_id`) REFERENCES `cms_info` (`f_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文档附件集表';



# Dump of table cms_info_image
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_info_image`;

CREATE TABLE `cms_info_image` (
  `f_info_id` int(11) NOT NULL,
  `f_name` varchar(150) DEFAULT NULL COMMENT '图片名称',
  `f_image` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `f_index` int(11) NOT NULL DEFAULT '0' COMMENT '图片序号',
  `f_text` longtext COMMENT '图片正文',
  KEY `fk_cms_infoimage_info` (`f_info_id`),
  CONSTRAINT `fk_cms_infoimage_info` FOREIGN KEY (`f_info_id`) REFERENCES `cms_info` (`f_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文档图片集表';

LOCK TABLES `cms_info_image` WRITE;
/*!40000 ALTER TABLE `cms_info_image` DISABLE KEYS */;

INSERT INTO `cms_info_image` (`f_info_id`, `f_name`, `f_image`, `f_index`, `f_text`)
VALUES
	(141,NULL,'/klml/uploads/1/image/public/201507/20150701180830_rdq0nsesey.jpg',0,NULL),
	(141,NULL,'/klml/uploads/1/image/public/201507/20150701184015_5hracy2bxy.jpg',1,NULL),
	(141,NULL,'/klml/uploads/1/image/public/201507/20150701184021_l8k36ascf0.jpg',2,NULL),
	(141,NULL,'/klml/uploads/1/image/public/201507/20150701184028_9m395y8li6.jpg',3,NULL),
	(142,NULL,'/klml/uploads/1/image/public/201507/20150701184222_u5801gc5gh.jpg',0,NULL),
	(142,NULL,'/klml/uploads/1/image/public/201507/20150701184222_y13ieeyjhs.jpg',1,NULL),
	(142,NULL,'/klml/uploads/1/image/public/201507/20150701184222_ev5f2m1fa8.jpg',2,NULL),
	(142,NULL,'/klml/uploads/1/image/public/201507/20150701184222_l2svbyeewl.jpg',3,NULL),
	(142,NULL,'/klml/uploads/1/image/public/201507/20150701184223_mmunwnl4yf.jpg',4,NULL),
	(142,NULL,'/klml/uploads/1/image/public/201507/20150701184223_ji0h92443h.jpg',5,NULL),
	(142,NULL,'/klml/uploads/1/image/public/201507/20150701184223_b47lwo3n8n.jpg',6,NULL),
	(142,NULL,'/klml/uploads/1/image/public/201507/20150701184223_f30m27o1fb.jpg',7,NULL),
	(142,NULL,'/klml/uploads/1/image/public/201507/20150701184223_8gb54ug0dh.jpg',8,NULL),
	(142,NULL,'/klml/uploads/1/image/public/201507/20150701184224_ellc46jtbq.jpg',9,NULL),
	(142,NULL,'/klml/uploads/1/image/public/201507/20150701184225_p3hbnpeid1.jpg',10,NULL),
	(142,NULL,'/klml/uploads/1/image/public/201507/20150701184225_nqqjd0tyvm.jpg',11,NULL);

/*!40000 ALTER TABLE `cms_info_image` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_info_membergroup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_info_membergroup`;

CREATE TABLE `cms_info_membergroup` (
  `f_infomgroup_id` int(11) NOT NULL,
  `f_membergroup_id` int(11) NOT NULL,
  `f_info_id` int(11) NOT NULL,
  `f_is_view_perm` char(1) NOT NULL DEFAULT '0' COMMENT '是否有浏览权限',
  PRIMARY KEY (`f_infomgroup_id`),
  KEY `fk_cms_infomgroup_info` (`f_info_id`),
  KEY `fk_cms_infomgroup_mgroup` (`f_membergroup_id`),
  CONSTRAINT `fk_cms_infomgroup_info` FOREIGN KEY (`f_info_id`) REFERENCES `cms_info` (`f_info_id`),
  CONSTRAINT `fk_cms_infomgroup_mgroup` FOREIGN KEY (`f_membergroup_id`) REFERENCES `cms_member_group` (`f_membergroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文档与会员组权限表';



# Dump of table cms_info_node
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_info_node`;

CREATE TABLE `cms_info_node` (
  `f_infonode_id` int(11) NOT NULL,
  `f_info_id` int(11) NOT NULL COMMENT '文档',
  `f_node_id` int(11) NOT NULL COMMENT '栏目',
  `f_node_index` int(11) NOT NULL DEFAULT '0' COMMENT '栏目顺序',
  PRIMARY KEY (`f_infonode_id`),
  KEY `fk_cms_infonode_info` (`f_info_id`),
  KEY `fk_cms_infonode_node` (`f_node_id`),
  CONSTRAINT `fk_cms_infonode_info` FOREIGN KEY (`f_info_id`) REFERENCES `cms_info` (`f_info_id`),
  CONSTRAINT `fk_cms_infonode_node` FOREIGN KEY (`f_node_id`) REFERENCES `cms_node` (`f_node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文档与栏目关联表';

LOCK TABLES `cms_info_node` WRITE;
/*!40000 ALTER TABLE `cms_info_node` DISABLE KEYS */;

INSERT INTO `cms_info_node` (`f_infonode_id`, `f_info_id`, `f_node_id`, `f_node_index`)
VALUES
	(256,139,108,0),
	(257,140,108,0),
	(258,141,119,0),
	(259,142,120,0),
	(260,143,36,0),
	(261,144,36,0),
	(262,145,120,0),
	(263,146,120,0),
	(264,147,120,0),
	(265,148,120,0),
	(266,149,120,0),
	(267,150,109,0),
	(268,151,109,0),
	(269,152,109,0),
	(270,153,109,0),
	(271,154,109,0),
	(272,155,109,0),
	(273,156,109,0),
	(274,157,109,0),
	(275,158,109,0),
	(276,159,108,0),
	(277,160,108,0),
	(278,161,108,0),
	(279,162,108,0),
	(280,163,108,0),
	(281,164,108,0),
	(282,165,108,0),
	(283,166,36,0),
	(284,167,36,0),
	(285,168,36,0),
	(286,169,36,0),
	(287,170,36,0),
	(288,171,36,0),
	(289,172,36,0),
	(290,173,110,0),
	(291,174,110,0),
	(292,175,110,0),
	(293,176,110,0),
	(294,177,110,0),
	(295,178,110,0),
	(296,179,110,0),
	(297,180,110,0),
	(298,181,110,0),
	(299,182,111,0),
	(300,183,111,0),
	(301,184,111,0),
	(302,185,111,0),
	(303,186,111,0),
	(304,187,111,0),
	(305,188,111,0),
	(306,189,111,0),
	(307,190,111,0),
	(308,191,112,0),
	(309,192,112,0),
	(310,193,112,0),
	(311,194,112,0),
	(312,195,112,0),
	(313,196,112,0),
	(314,197,112,0),
	(315,198,112,0),
	(316,199,112,0),
	(317,200,113,0),
	(318,201,113,0),
	(319,202,113,0),
	(320,203,113,0),
	(321,204,113,0),
	(322,205,113,0),
	(323,206,113,0),
	(324,207,113,0),
	(325,208,113,0),
	(326,209,114,0),
	(327,210,114,0),
	(328,211,114,0),
	(329,212,114,0),
	(330,213,114,0),
	(331,214,114,0),
	(332,215,114,0),
	(333,216,114,0),
	(334,217,114,0),
	(335,218,115,0),
	(336,219,115,0),
	(337,220,115,0),
	(338,221,115,0),
	(339,222,115,0),
	(340,223,115,0),
	(341,224,115,0),
	(342,225,115,0),
	(343,226,115,0),
	(344,227,134,0),
	(345,228,134,0),
	(346,229,134,0),
	(347,230,134,0),
	(348,231,134,0),
	(349,232,134,0),
	(350,233,134,0),
	(351,234,134,0),
	(352,235,134,0),
	(353,236,36,0),
	(354,237,88,0),
	(355,238,89,0);

/*!40000 ALTER TABLE `cms_info_node` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_info_org
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_info_org`;

CREATE TABLE `cms_info_org` (
  `f_infoorg_id` int(11) NOT NULL,
  `f_info_id` int(11) NOT NULL,
  `f_org_id` int(11) NOT NULL,
  `f_is_view_perm` char(1) NOT NULL DEFAULT '0' COMMENT '是否有浏览权限',
  PRIMARY KEY (`f_infoorg_id`),
  KEY `fk_cms_infoorg_info` (`f_info_id`),
  KEY `fk_cms_infoorg_org` (`f_org_id`),
  CONSTRAINT `fk_cms_infoorg_info` FOREIGN KEY (`f_info_id`) REFERENCES `cms_info` (`f_info_id`),
  CONSTRAINT `fk_cms_infoorg_org` FOREIGN KEY (`f_org_id`) REFERENCES `cms_org` (`f_org_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文档与组织权限表';



# Dump of table cms_info_special
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_info_special`;

CREATE TABLE `cms_info_special` (
  `f_infospecial_id` int(11) NOT NULL,
  `f_info_id` int(11) NOT NULL COMMENT '文档',
  `f_special_id` int(11) NOT NULL COMMENT '专题',
  `f_special_index` int(11) NOT NULL COMMENT '专题序号',
  PRIMARY KEY (`f_infospecial_id`),
  KEY `fk_cms_infospecial_info` (`f_info_id`),
  KEY `fk_cms_infospecial_special` (`f_special_id`),
  CONSTRAINT `fk_cms_infospecial_info` FOREIGN KEY (`f_info_id`) REFERENCES `cms_info` (`f_info_id`),
  CONSTRAINT `fk_cms_infospecial_special` FOREIGN KEY (`f_special_id`) REFERENCES `cms_special` (`f_special_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文档与专题关联表';

LOCK TABLES `cms_info_special` WRITE;
/*!40000 ALTER TABLE `cms_info_special` DISABLE KEYS */;

INSERT INTO `cms_info_special` (`f_infospecial_id`, `f_info_id`, `f_special_id`, `f_special_index`)
VALUES
	(4,236,1,0);

/*!40000 ALTER TABLE `cms_info_special` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_info_tag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_info_tag`;

CREATE TABLE `cms_info_tag` (
  `f_infotag_id` int(11) NOT NULL,
  `f_info_id` int(11) NOT NULL COMMENT '文档',
  `f_tag_id` int(11) NOT NULL COMMENT 'tag',
  `f_tag_index` int(11) NOT NULL COMMENT 'tag序号',
  PRIMARY KEY (`f_infotag_id`),
  KEY `fk_cms_infotag_info` (`f_info_id`),
  KEY `fk_cms_infotag_tag` (`f_tag_id`),
  CONSTRAINT `fk_cms_infotag_info` FOREIGN KEY (`f_info_id`) REFERENCES `cms_info` (`f_info_id`),
  CONSTRAINT `fk_cms_infotag_tag` FOREIGN KEY (`f_tag_id`) REFERENCES `cms_tag` (`f_tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文档与tag关联表';



# Dump of table cms_member_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_member_group`;

CREATE TABLE `cms_member_group` (
  `f_membergroup_id` int(11) NOT NULL,
  `f_name` varchar(100) NOT NULL,
  `f_description` varchar(255) DEFAULT NULL,
  `f_ip` longtext COMMENT 'IP',
  `f_type` int(11) NOT NULL DEFAULT '0' COMMENT '类型(0:普通组,1:游客组,2:IP组,3:待验证组)',
  `f_seq` int(11) NOT NULL DEFAULT '2147483647' COMMENT '排序',
  PRIMARY KEY (`f_membergroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员组表';

LOCK TABLES `cms_member_group` WRITE;
/*!40000 ALTER TABLE `cms_member_group` DISABLE KEYS */;

INSERT INTO `cms_member_group` (`f_membergroup_id`, `f_name`, `f_description`, `f_ip`, `f_type`, `f_seq`)
VALUES
	(0,'游客组',NULL,NULL,1,0),
	(1,'普通会员',NULL,NULL,0,2147483647);

/*!40000 ALTER TABLE `cms_member_group` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_model
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_model`;

CREATE TABLE `cms_model` (
  `f_model_id` int(11) NOT NULL,
  `f_site_id` int(11) NOT NULL COMMENT '站点',
  `f_type` varchar(100) NOT NULL COMMENT '类型(info:文档,node:栏目,node_home:首页;special:专题)',
  `f_name` varchar(50) NOT NULL COMMENT '名称',
  `f_number` varchar(100) DEFAULT NULL COMMENT '代码',
  `f_seq` int(11) NOT NULL DEFAULT '10' COMMENT '顺序',
  PRIMARY KEY (`f_model_id`),
  KEY `fk_cms_model_site` (`f_site_id`),
  CONSTRAINT `fk_cms_model_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='模型表';

LOCK TABLES `cms_model` WRITE;
/*!40000 ALTER TABLE `cms_model` DISABLE KEYS */;

INSERT INTO `cms_model` (`f_model_id`, `f_site_id`, `f_type`, `f_name`, `f_number`, `f_seq`)
VALUES
	(1,1,'node_home','首页',NULL,0),
	(2,1,'info','新闻',NULL,0),
	(3,1,'node','新闻',NULL,0),
	(4,1,'node','图集',NULL,1),
	(5,1,'info','图集',NULL,1),
	(6,1,'node','下载',NULL,2),
	(7,1,'info','下载',NULL,2),
	(8,1,'node','视频',NULL,3),
	(9,1,'info','视频',NULL,3),
	(10,1,'node','产品',NULL,4),
	(11,1,'info','产品',NULL,4),
	(12,1,'site','站点模型',NULL,2147483647),
	(13,1,'node','招聘',NULL,2147483647),
	(14,1,'info','招聘',NULL,2147483647),
	(15,1,'special','专题',NULL,10),
	(16,1,'info','文库','doc',2147483647);

/*!40000 ALTER TABLE `cms_model` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_model_custom
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_model_custom`;

CREATE TABLE `cms_model_custom` (
  `f_model_id` int(11) NOT NULL,
  `f_key` varchar(50) NOT NULL COMMENT '键',
  `f_value` varchar(2000) DEFAULT NULL COMMENT '值',
  KEY `fk_cms_modelcustom_model` (`f_model_id`),
  CONSTRAINT `fk_cms_modelcustom_model` FOREIGN KEY (`f_model_id`) REFERENCES `cms_model` (`f_model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='模型自定义表';

LOCK TABLES `cms_model_custom` WRITE;
/*!40000 ALTER TABLE `cms_model_custom` DISABLE KEYS */;

INSERT INTO `cms_model_custom` (`f_model_id`, `f_key`, `f_value`)
VALUES
	(2,'template','/info_node.html'),
	(3,'defPage','true'),
	(3,'nodeExtension','.html'),
	(3,'staticPage','1'),
	(3,'listTemplate','/list_node.html'),
	(3,'generateInfo','false'),
	(3,'coverTemplate','/cover.html'),
	(3,'generateNode','false'),
	(3,'infoPath',''),
	(3,'nodePath',''),
	(3,'infoExtension','.html'),
	(3,'staticMethod','3'),
	(1,'infoExtension','.html'),
	(1,'infoPath',''),
	(1,'defPage','false'),
	(1,'nodeExtension','.html'),
	(1,'template','/index.html'),
	(1,'nodePath',''),
	(1,'generateInfo','false'),
	(1,'staticPage','1'),
	(1,'staticMethod','3'),
	(1,'generateNode','false'),
	(4,'defPage','true'),
	(4,'nodeExtension','.html'),
	(4,'staticPage','1'),
	(4,'listTemplate','pic_list.html'),
	(4,'generateInfo','false'),
	(4,'coverTemplate','pic_cover.html'),
	(4,'generateNode','false'),
	(4,'infoPath',''),
	(4,'nodePath',''),
	(4,'infoExtension','.html'),
	(4,'staticMethod','3'),
	(5,'template','/pic_info.html'),
	(6,'defPage','true'),
	(6,'nodeExtension','.html'),
	(6,'staticPage','1'),
	(6,'listTemplate','/list.html'),
	(6,'generateInfo','false'),
	(6,'coverTemplate','/cover.html'),
	(6,'generateNode','false'),
	(6,'infoPath',''),
	(6,'nodePath',''),
	(6,'infoExtension','.html'),
	(6,'staticMethod','3'),
	(7,'template','/down_info.html'),
	(8,'defPage','true'),
	(8,'nodeExtension','.html'),
	(8,'staticPage','1'),
	(8,'listTemplate','/video_list.html'),
	(8,'generateInfo','false'),
	(8,'coverTemplate','/cover.html'),
	(8,'generateNode','false'),
	(8,'infoPath',''),
	(8,'nodePath',''),
	(8,'infoExtension','.html'),
	(8,'staticMethod','3'),
	(9,'template','/info.html'),
	(10,'defPage','true'),
	(10,'nodeExtension','.html'),
	(10,'staticPage','1'),
	(10,'listTemplate','/product_list.html'),
	(10,'generateInfo','false'),
	(10,'coverTemplate','/cover.html'),
	(10,'generateNode','false'),
	(10,'infoPath',''),
	(10,'nodePath',''),
	(10,'infoExtension','.html'),
	(10,'staticMethod','3'),
	(11,'template','/product_info.html'),
	(13,'defPage','true'),
	(13,'nodeExtension','.html'),
	(13,'staticPage','1'),
	(13,'listTemplate','/list_recruitment.html'),
	(13,'generateInfo','false'),
	(13,'coverTemplate','/list_recruitment.html'),
	(13,'generateNode','false'),
	(13,'infoPath',''),
	(13,'nodePath',''),
	(13,'infoExtension','.html'),
	(13,'staticMethod','4'),
	(14,'template','/info_recruitment.html'),
	(16,'template','/info_doc.html');

/*!40000 ALTER TABLE `cms_model_custom` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_model_field
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_model_field`;

CREATE TABLE `cms_model_field` (
  `f_modefiel_id` int(11) NOT NULL,
  `f_model_id` int(11) NOT NULL COMMENT '模型',
  `f_type` int(11) NOT NULL COMMENT '输入类型',
  `f_inner_type` int(11) NOT NULL DEFAULT '0' COMMENT '内部类型(0:用户自定义字段;1:系统定义字段;2:预留大文本字段;3:预留可查询字段)',
  `f_label` varchar(50) NOT NULL COMMENT '字段标签',
  `f_name` varchar(50) NOT NULL COMMENT '字段名称',
  `f_prompt` varchar(255) DEFAULT NULL COMMENT '提示信息',
  `f_def_value` varchar(255) DEFAULT NULL COMMENT '默认值',
  `f_is_required` char(1) NOT NULL DEFAULT '0' COMMENT '是否必填项',
  `f_seq` int(11) NOT NULL DEFAULT '10' COMMENT '顺序',
  `f_is_dbl_column` char(1) NOT NULL DEFAULT '0' COMMENT '是否双列布局',
  `f_is_disabled` char(1) NOT NULL DEFAULT '0' COMMENT '是否禁用',
  PRIMARY KEY (`f_modefiel_id`),
  KEY `fk_cms_modefiel_model` (`f_model_id`),
  CONSTRAINT `fk_cms_modefiel_model` FOREIGN KEY (`f_model_id`) REFERENCES `cms_model` (`f_model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='模型字段表';

LOCK TABLES `cms_model_field` WRITE;
/*!40000 ALTER TABLE `cms_model_field` DISABLE KEYS */;

INSERT INTO `cms_model_field` (`f_modefiel_id`, `f_model_id`, `f_type`, `f_inner_type`, `f_label`, `f_name`, `f_prompt`, `f_def_value`, `f_is_required`, `f_seq`, `f_is_dbl_column`, `f_is_disabled`)
VALUES
	(1,1,1,2,'名称','name',NULL,NULL,'0',0,'1','0'),
	(2,1,1,2,'编码','number',NULL,NULL,'0',1,'1','0'),
	(5,1,5,2,'栏目模型','nodeModel',NULL,NULL,'0',2,'1','0'),
	(6,1,5,2,'文档模型','infoModel',NULL,NULL,'0',3,'1','0'),
	(7,1,1,2,'栏目页模板','nodeTemplate',NULL,NULL,'0',4,'1','0'),
	(8,1,1,2,'文档页模板','infoTemplate',NULL,NULL,'0',5,'1','0'),
	(9,1,1,2,'栏目页静态化','generateNode',NULL,NULL,'0',6,'0','0'),
	(10,1,1,2,'文档页静态化','generateInfo',NULL,NULL,'0',7,'0','0'),
	(11,1,5,2,'静态化方式','staticMethod',NULL,NULL,'0',8,'1','0'),
	(12,1,1,2,'静态化页数','staticPage',NULL,'1','1',9,'1','0'),
	(199,4,1,2,'所属栏目','parent',NULL,NULL,'0',0,'0','0'),
	(200,4,1,2,'名称','name',NULL,NULL,'0',1,'1','0'),
	(201,4,1,2,'编码','number',NULL,NULL,'0',2,'1','0'),
	(202,4,1,2,'链接地址','link',NULL,NULL,'0',3,'1','0'),
	(203,4,5,2,'新窗口打开','newWindow',NULL,NULL,'0',4,'1','0'),
	(216,4,5,2,'栏目模型','nodeModel',NULL,NULL,'0',5,'1','0'),
	(217,4,5,2,'文档模型','infoModel',NULL,NULL,'0',6,'1','0'),
	(235,2,1,2,'栏目','node',NULL,NULL,'0',0,'1','0'),
	(237,2,1,2,'专题','specials',NULL,NULL,'0',1,'1','0'),
	(238,2,1,2,'标题','title',NULL,NULL,'0',2,'0','0'),
	(239,2,1,2,'颜色','color',NULL,NULL,'0',3,'0','0'),
	(242,2,1,2,'关键词','tagKeywords',NULL,NULL,'0',4,'0','0'),
	(243,2,6,2,'描述','metaDescription',NULL,NULL,'0',5,'0','0'),
	(246,2,1,2,'优先级','priority',NULL,NULL,'0',6,'1','0'),
	(247,2,2,2,'发布时间','publishDate',NULL,NULL,'0',7,'1','0'),
	(248,2,1,2,'来源','source',NULL,NULL,'0',8,'1','0'),
	(249,2,1,2,'作者','author',NULL,NULL,'0',9,'1','0'),
	(250,2,1,2,'属性','attributes',NULL,NULL,'0',11,'0','0'),
	(255,2,50,2,'正文','text',NULL,NULL,'0',12,'0','0'),
	(256,3,1,2,'所属栏目','parent',NULL,NULL,'0',0,'0','0'),
	(257,3,1,2,'名称','name',NULL,NULL,'0',1,'1','0'),
	(258,3,1,2,'编码','number',NULL,NULL,'0',2,'1','0'),
	(259,3,1,2,'链接地址','link',NULL,NULL,'0',3,'1','0'),
	(260,3,5,2,'新窗口打开','newWindow',NULL,NULL,'0',4,'1','0'),
	(261,3,1,2,'关键词','metaKeywords',NULL,NULL,'0',5,'0','0'),
	(262,3,1,2,'描述','metaDescription',NULL,NULL,'0',6,'0','0'),
	(263,3,5,2,'栏目模型','nodeModel',NULL,NULL,'0',8,'1','0'),
	(264,3,5,2,'文档模型','infoModel',NULL,NULL,'0',9,'1','0'),
	(265,3,1,2,'栏目页模板','nodeTemplate',NULL,NULL,'0',10,'1','0'),
	(266,3,1,2,'文档页模板','infoTemplate',NULL,NULL,'0',11,'1','0'),
	(267,3,1,2,'栏目页静态化','generateNode',NULL,NULL,'0',12,'0','0'),
	(268,3,1,2,'文档页静态化','generateInfo',NULL,NULL,'0',13,'0','0'),
	(269,3,5,2,'静态化方式','staticMethod',NULL,NULL,'0',14,'1','0'),
	(270,3,1,2,'静态化页数','staticPage',NULL,'1','0',15,'1','0'),
	(273,1,1,2,'关键词','metaKeywords',NULL,NULL,'0',10,'0','0'),
	(274,1,1,2,'描述','metaDescription',NULL,NULL,'0',11,'0','0'),
	(275,5,1,2,'栏目','node',NULL,NULL,'0',0,'0','0'),
	(276,5,1,2,'标题','title',NULL,NULL,'0',1,'0','0'),
	(278,5,2,2,'发布时间','publishDate',NULL,NULL,'0',2,'0','0'),
	(279,5,51,2,'图片集','images',NULL,NULL,'0',4,'0','0'),
	(281,5,7,2,'标题图','smallImage',NULL,NULL,'0',3,'0','0'),
	(282,6,1,2,'所属栏目','parent',NULL,NULL,'0',0,'0','0'),
	(283,6,1,2,'名称','name',NULL,NULL,'0',1,'1','0'),
	(284,6,1,2,'编码','number',NULL,NULL,'0',2,'1','0'),
	(287,6,1,2,'转向链接','link',NULL,NULL,'0',5,'1','0'),
	(288,6,5,2,'新窗口打开','newWindow',NULL,NULL,'0',6,'1','0'),
	(289,6,1,2,'关键词','metaKeywords',NULL,NULL,'0',7,'0','0'),
	(290,6,1,2,'描述','metaDescription',NULL,NULL,'0',8,'0','0'),
	(292,6,5,2,'栏目模型','nodeModel',NULL,NULL,'0',10,'1','0'),
	(293,6,5,2,'文档模型','infoModel',NULL,NULL,'0',11,'1','0'),
	(294,6,1,2,'栏目页模板','nodeTemplate',NULL,NULL,'0',12,'1','0'),
	(295,6,1,2,'文档页模板','infoTemplate',NULL,NULL,'0',13,'1','0'),
	(296,6,1,2,'栏目页静态化','generateNode',NULL,NULL,'0',14,'0','0'),
	(297,6,1,2,'文档页静态化','generateInfo',NULL,NULL,'0',15,'0','0'),
	(298,6,5,2,'静态化方式','staticMethod',NULL,NULL,'0',16,'1','0'),
	(299,6,1,2,'静态化页数','staticPage',NULL,'1','0',17,'1','0'),
	(303,7,1,2,'栏目','node',NULL,NULL,'0',0,'0','0'),
	(304,7,1,2,'标题','title',NULL,NULL,'0',1,'0','0'),
	(305,7,50,2,'正文','text',NULL,NULL,'0',9,'0','0'),
	(306,7,4,0,'软件类型','softType',NULL,NULL,'0',2,'0','0'),
	(307,7,4,0,'授权方式','authorization',NULL,NULL,'0',3,'0','0'),
	(308,7,4,0,'界面语言','langue',NULL,NULL,'0',4,'0','0'),
	(309,7,1,0,'运行环境','runEnviorment',NULL,NULL,'0',6,'0','0'),
	(311,7,9,2,'文件','file',NULL,NULL,'0',8,'0','0'),
	(312,8,1,2,'所属栏目','parent',NULL,NULL,'0',0,'0','0'),
	(313,8,1,2,'名称','name',NULL,NULL,'0',1,'1','0'),
	(314,8,1,2,'编码','number',NULL,NULL,'0',2,'1','0'),
	(315,8,5,2,'栏目模型','nodeModel',NULL,NULL,'0',3,'1','0'),
	(316,8,5,2,'文档模型','infoModel',NULL,NULL,'0',4,'1','0'),
	(318,9,1,2,'栏目','node',NULL,NULL,'0',0,'0','0'),
	(319,9,1,2,'标题','title',NULL,NULL,'0',1,'0','0'),
	(320,9,2,2,'发布时间','publishDate',NULL,NULL,'0',2,'0','0'),
	(321,9,8,2,'视频','video',NULL,NULL,'0',4,'0','0'),
	(322,9,7,2,'标题图','smallImage',NULL,NULL,'0',3,'0','0'),
	(323,10,1,2,'所属栏目','parent',NULL,NULL,'0',0,'0','0'),
	(324,10,1,2,'名称','name',NULL,NULL,'0',1,'1','0'),
	(325,10,1,2,'编码','number',NULL,NULL,'0',2,'1','0'),
	(326,11,1,2,'栏目','node',NULL,NULL,'0',0,'0','0'),
	(327,11,1,2,'标题','title',NULL,NULL,'0',1,'0','0'),
	(328,11,7,2,'标题图','smallImage',NULL,NULL,'0',4,'0','0'),
	(329,10,5,2,'栏目模型','nodeModel',NULL,NULL,'0',3,'1','0'),
	(330,10,5,2,'文档模型','infoModel',NULL,NULL,'0',4,'1','0'),
	(331,11,1,0,'优惠介','discount',NULL,NULL,'0',2,'0','0'),
	(332,11,1,0,'市场价','marketValue',NULL,NULL,'1',3,'0','0'),
	(333,11,7,0,'实物图','physicalPic',NULL,NULL,'0',5,'0','0'),
	(334,11,4,0,'商品库存','stock',NULL,'有货','0',6,'0','0'),
	(335,11,50,1,'商品介绍','introduce',NULL,NULL,'0',7,'0','0'),
	(336,11,50,1,'规格参数','specification',NULL,NULL,'0',8,'0','0'),
	(337,11,50,1,'包装清单','packingList',NULL,NULL,'0',9,'0','0'),
	(338,11,50,1,'售后服务','services',NULL,NULL,'0',10,'0','0'),
	(339,7,3,0,'适合系统','system',NULL,NULL,'0',5,'0','0'),
	(340,7,7,2,'标题图','smallImage',NULL,NULL,'0',7,'0','0'),
	(343,3,5,2,'审核流程','workflow',NULL,NULL,'0',7,'0','0'),
	(344,12,1,0,'公司名称','company',NULL,NULL,'0',2147483647,'0','0'),
	(345,12,1,0,'备案号','icp',NULL,NULL,'0',2147483647,'0','0'),
	(346,13,1,2,'所属栏目','parent',NULL,NULL,'0',2147483647,'0','0'),
	(347,13,1,2,'名称','name',NULL,NULL,'0',2147483647,'1','0'),
	(348,13,1,2,'编码','number',NULL,NULL,'0',2147483647,'1','0'),
	(349,13,1,2,'关键词','metaKeywords',NULL,NULL,'0',2147483647,'0','0'),
	(350,13,1,2,'描述','metaDescription',NULL,NULL,'0',2147483647,'0','0'),
	(351,13,5,2,'栏目模型','nodeModel',NULL,NULL,'0',2147483647,'1','0'),
	(352,13,5,2,'文档模型','infoModel',NULL,NULL,'0',2147483647,'1','0'),
	(353,14,1,2,'栏目','node',NULL,NULL,'0',0,'0','0'),
	(354,14,1,2,'标题','title',NULL,NULL,'0',1,'1','0'),
	(356,14,2,2,'发布时间','publishDate',NULL,NULL,'0',2,'1','0'),
	(357,14,1,0,'公司名称','company',NULL,NULL,'0',3,'1','0'),
	(358,14,1,0,'部门名称','dept',NULL,NULL,'0',4,'1','0'),
	(359,14,1,0,'招聘人数','number',NULL,NULL,'0',5,'1','0'),
	(360,14,1,0,'薪酬待遇','salary',NULL,NULL,'0',6,'1','0'),
	(361,14,1,0,'工作地点','location',NULL,NULL,'0',7,'0','0'),
	(362,14,6,0,'岗位职责','responsibilities',NULL,NULL,'0',8,'0','0'),
	(363,14,6,0,'岗位要求','qualifications',NULL,NULL,'0',9,'0','0'),
	(364,13,3,2,'浏览权限','viewGroups',NULL,NULL,'0',2147483647,'0','0'),
	(365,1,3,2,'浏览权限','viewGroups',NULL,NULL,'0',2147483647,'0','0'),
	(366,16,1,2,'栏目','node',NULL,NULL,'1',2147483647,'0','0'),
	(367,16,1,2,'标题','title',NULL,NULL,'1',2147483647,'0','0'),
	(368,16,1,2,'关键词','tagKeywords',NULL,NULL,'0',2147483647,'0','0'),
	(369,16,6,2,'描述','metaDescription',NULL,NULL,'0',2147483647,'0','0'),
	(370,16,10,2,'文库','doc',NULL,NULL,'0',2147483647,'0','0'),
	(371,15,1,2,'标题','title',NULL,NULL,'1',2147483647,'0','0'),
	(372,15,1,2,'关键词','metaKeywords',NULL,NULL,'0',2147483647,'0','0'),
	(373,15,6,2,'描述','metaDescription',NULL,NULL,'0',2147483647,'0','0'),
	(374,15,1,2,'类别','category',NULL,NULL,'1',2147483647,'1','0'),
	(375,15,2,2,'创建日期','creationDate',NULL,NULL,'0',2147483647,'1','0'),
	(376,15,5,2,'模型','model',NULL,NULL,'1',2147483647,'1','0'),
	(377,15,1,2,'独立模版','specialTemplate',NULL,NULL,'0',2147483647,'1','0'),
	(378,15,4,2,'推荐','recommend',NULL,NULL,'0',2147483647,'1','0'),
	(379,15,1,2,'浏览次数','views',NULL,NULL,'0',2147483647,'1','0'),
	(380,15,7,2,'小图','smallImage',NULL,NULL,'0',2147483647,'0','0'),
	(381,15,7,2,'大图','largeImage',NULL,NULL,'0',2147483647,'0','0'),
	(382,15,52,2,'文件集','files',NULL,NULL,'0',2147483647,'0','0'),
	(383,15,8,2,'视频','video',NULL,NULL,'0',2147483647,'0','0'),
	(384,15,51,2,'图片集','images',NULL,NULL,'0',2147483647,'0','0'),
	(385,2,7,2,'标题图','smallImage',NULL,NULL,'0',10,'0','0');

/*!40000 ALTER TABLE `cms_model_field` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_model_field_custom
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_model_field_custom`;

CREATE TABLE `cms_model_field_custom` (
  `f_modefiel_id` int(11) NOT NULL,
  `f_key` varchar(50) NOT NULL COMMENT '键',
  `f_value` varchar(2000) DEFAULT NULL COMMENT '值',
  KEY `fk_cms_modfiecus_modefiel` (`f_modefiel_id`),
  CONSTRAINT `fk_cms_modfiecus_modefiel` FOREIGN KEY (`f_modefiel_id`) REFERENCES `cms_model_field` (`f_modefiel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='模型字段自定义信息表';

LOCK TABLES `cms_model_field_custom` WRITE;
/*!40000 ALTER TABLE `cms_model_field_custom` DISABLE KEYS */;

INSERT INTO `cms_model_field_custom` (`f_modefiel_id`, `f_key`, `f_value`)
VALUES
	(201,'datePattern',''),
	(201,'cols',''),
	(201,'validation',''),
	(201,'imageHeight',''),
	(201,'rows',''),
	(201,'width',''),
	(201,'maxlength',''),
	(201,'toolbar',''),
	(201,'options',''),
	(201,'imageWatermark','false'),
	(201,'height',''),
	(201,'imageWidth',''),
	(201,'imageScale','false'),
	(279,'thumbnail','true'),
	(279,'thumbnailWidth','130'),
	(279,'imageWatermark','false'),
	(279,'imageHeight','800'),
	(279,'imageWidth','800'),
	(279,'imageScale','true'),
	(279,'thumbnailHeight','80'),
	(281,'imageHeight','100'),
	(281,'imageWidth','140'),
	(281,'imageWatermark','false'),
	(281,'imageScale','false'),
	(306,'options','国产软件\r\n国外软件'),
	(307,'options','免费软件\r\n收费软件'),
	(308,'options','简体中文\r\n繁体中文\r\n英文'),
	(309,'width','250'),
	(309,'validation',''),
	(309,'maxLength',''),
	(322,'imageHeight','80'),
	(322,'imageWidth','130'),
	(322,'imageWatermark','false'),
	(322,'imageScale','false'),
	(328,'imageHeight','200'),
	(328,'imageWidth','200'),
	(331,'width','250'),
	(331,'validation',''),
	(331,'maxLength',''),
	(332,'width','250'),
	(332,'validation',''),
	(332,'maxLength',''),
	(333,'imageHeight','310'),
	(333,'imageWidth','310'),
	(333,'imageScale','false'),
	(333,'imageWatermark','false'),
	(334,'options','有货\r\n缺货'),
	(335,'width',''),
	(335,'height',''),
	(335,'toolbar','Cms'),
	(336,'width',''),
	(336,'height',''),
	(336,'toolbar','Cms'),
	(337,'width',''),
	(337,'height',''),
	(337,'toolbar','Cms'),
	(338,'width',''),
	(338,'height',''),
	(338,'toolbar','Cms'),
	(328,'imageWatermark','false'),
	(328,'imageScale','false'),
	(339,'options','win8\r\nwin7\r\nvista\r\nwinxp\r\nwin2003'),
	(340,'imageHeight','93'),
	(340,'imageWidth','140'),
	(344,'width','180'),
	(344,'validation',''),
	(344,'maxLength',''),
	(345,'width','180'),
	(345,'validation',''),
	(345,'maxLength',''),
	(357,'maxLength',''),
	(357,'validation',''),
	(357,'width','180'),
	(358,'maxLength',''),
	(358,'validation',''),
	(358,'width','180'),
	(359,'maxLength',''),
	(359,'validation',''),
	(359,'width','180'),
	(360,'maxLength',''),
	(360,'validation',''),
	(360,'width','180'),
	(361,'maxLength',''),
	(361,'validation',''),
	(361,'width','300'),
	(362,'height','80'),
	(362,'maxLength',''),
	(362,'width','500'),
	(363,'height','80'),
	(363,'maxLength',''),
	(363,'width','500'),
	(354,'maxLength',''),
	(354,'validation',''),
	(354,'width','180');

/*!40000 ALTER TABLE `cms_model_field_custom` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_node
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_node`;

CREATE TABLE `cms_node` (
  `f_node_id` int(11) NOT NULL,
  `f_site_id` int(11) NOT NULL COMMENT '站点',
  `f_parent_id` int(11) DEFAULT NULL COMMENT '栏目点',
  `f_creator_id` int(11) NOT NULL COMMENT '创建者',
  `f_node_model_id` int(11) NOT NULL COMMENT '栏目模型',
  `f_workflow_id` int(11) DEFAULT NULL COMMENT '流程',
  `f_info_model_id` int(11) DEFAULT NULL COMMENT '文档模型',
  `f_number` varchar(100) DEFAULT NULL COMMENT '代码',
  `f_name` varchar(150) NOT NULL COMMENT '名称',
  `f_tree_number` varchar(100) NOT NULL DEFAULT '0000' COMMENT '树编码',
  `f_tree_level` int(11) NOT NULL DEFAULT '0' COMMENT '树级别',
  `f_tree_max` varchar(10) NOT NULL DEFAULT '0000' COMMENT '树子节点最大编码',
  `f_creation_date` datetime NOT NULL COMMENT '创建时间',
  `f_refers` int(11) NOT NULL DEFAULT '0' COMMENT '文档数量',
  `f_views` int(11) NOT NULL DEFAULT '0' COMMENT '浏览总数',
  `f_is_real_node` char(1) NOT NULL DEFAULT '1' COMMENT '是否真实栏目',
  `f_is_hidden` char(1) NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `f_html_status` char(1) NOT NULL DEFAULT '0' COMMENT 'HTML状态(0:未开启,1:待生成,2:待更新,3:已生成)',
  `f_p1` tinyint(4) DEFAULT NULL COMMENT '自定义1',
  `f_p2` tinyint(4) DEFAULT NULL COMMENT '自定义2',
  `f_p3` tinyint(4) DEFAULT NULL COMMENT '自定义3',
  `f_p4` tinyint(4) DEFAULT NULL COMMENT '自定义4',
  `f_p5` tinyint(4) DEFAULT NULL COMMENT '自定义5',
  `f_p6` tinyint(4) DEFAULT NULL COMMENT '自定义6',
  PRIMARY KEY (`f_node_id`),
  KEY `fk_cms_node_model_info` (`f_info_model_id`),
  KEY `fk_cms_node_model_node` (`f_node_model_id`),
  KEY `fk_cms_node_parent` (`f_parent_id`),
  KEY `fk_cms_node_site` (`f_site_id`),
  KEY `fk_cms_node_user_creator` (`f_creator_id`),
  KEY `fk_cms_node_workflow` (`f_workflow_id`),
  CONSTRAINT `fk_cms_node_model_info` FOREIGN KEY (`f_info_model_id`) REFERENCES `cms_model` (`f_model_id`),
  CONSTRAINT `fk_cms_node_model_node` FOREIGN KEY (`f_node_model_id`) REFERENCES `cms_model` (`f_model_id`),
  CONSTRAINT `fk_cms_node_parent` FOREIGN KEY (`f_parent_id`) REFERENCES `cms_node` (`f_node_id`),
  CONSTRAINT `fk_cms_node_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`),
  CONSTRAINT `fk_cms_node_user_creator` FOREIGN KEY (`f_creator_id`) REFERENCES `cms_user` (`f_user_id`),
  CONSTRAINT `fk_cms_node_workflow` FOREIGN KEY (`f_workflow_id`) REFERENCES `cms_workflow` (`f_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='栏目表';

LOCK TABLES `cms_node` WRITE;
/*!40000 ALTER TABLE `cms_node` DISABLE KEYS */;

INSERT INTO `cms_node` (`f_node_id`, `f_site_id`, `f_parent_id`, `f_creator_id`, `f_node_model_id`, `f_workflow_id`, `f_info_model_id`, `f_number`, `f_name`, `f_tree_number`, `f_tree_level`, `f_tree_max`, `f_creation_date`, `f_refers`, `f_views`, `f_is_real_node`, `f_is_hidden`, `f_html_status`, `f_p1`, `f_p2`, `f_p3`, `f_p4`, `f_p5`, `f_p6`)
VALUES
	(1,1,NULL,1,1,NULL,2,NULL,'首页','0000',0,'0005','2013-02-21 20:59:27',-43,140,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(36,1,86,1,3,NULL,2,'news','准东新闻','0000-0001-0000',2,'0003','2013-03-04 22:18:36',-16,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(85,1,1,1,3,NULL,2,NULL,'大栏目','0000-0000',1,'0006','2015-06-30 16:53:25',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(86,1,1,1,3,NULL,2,NULL,'小栏目','0000-0001',1,'000b','2015-06-30 16:53:34',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(87,1,85,1,3,NULL,2,NULL,'关于准东','0000-0000-0001',2,'0004','2015-06-30 16:56:10',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(88,1,87,1,3,NULL,2,NULL,'准东概况','0000-0000-0001-0000',3,'0000','2015-06-30 16:56:35',1,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(89,1,87,1,3,NULL,2,NULL,'地理资源','0000-0000-0001-0001',3,'0000','2015-06-30 16:56:42',1,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(90,1,87,1,3,NULL,2,NULL,'基础建设','0000-0000-0001-0002',3,'0000','2015-06-30 16:56:52',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(91,1,87,1,3,NULL,2,NULL,'组织架构','0000-0000-0001-0003',3,'0000','2015-06-30 16:57:07',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(92,1,85,1,3,NULL,2,NULL,'经济发展','0000-0000-0002',2,'0007','2015-06-30 16:58:25',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(93,1,92,1,3,NULL,2,NULL,'煤炭产业','0000-0000-0002-0000',3,'0000','2015-06-30 17:52:09',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(94,1,92,1,3,NULL,2,NULL,'煤电产业','0000-0000-0002-0001',3,'0000','2015-06-30 17:52:17',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(95,1,92,1,3,NULL,2,NULL,'煤化工产业','0000-0000-0002-0002',3,'0000','2015-06-30 17:52:40',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(96,1,92,1,3,NULL,2,NULL,'煤电冶产业','0000-0000-0002-0003',3,'0000','2015-06-30 17:53:30',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(97,1,92,1,3,NULL,2,NULL,'煤制天然气','0000-0000-0002-0004',3,'0000','2015-06-30 17:53:51',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(98,1,92,1,3,NULL,2,NULL,'新材料产业','0000-0000-0002-0005',3,'0000','2015-06-30 17:54:08',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(99,1,92,1,3,NULL,2,NULL,'光伏产业','0000-0000-0002-0006',3,'0000','2015-06-30 17:54:19',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(100,1,85,1,3,NULL,2,NULL,'园区规划','0000-0000-0003',2,'0004','2015-06-30 17:57:43',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(101,1,100,1,3,NULL,2,NULL,'规划体系','0000-0000-0003-0000',3,'0000','2015-06-30 17:58:04',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(102,1,100,1,3,NULL,2,NULL,'发展目标','0000-0000-0003-0001',3,'0000','2015-06-30 17:58:14',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(103,1,100,1,3,NULL,2,NULL,'重大决策','0000-0000-0003-0002',3,'0000','2015-06-30 17:58:24',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(104,1,100,1,3,NULL,2,NULL,'世界铝都计划','0000-0000-0003-0003',3,'0000','2015-06-30 17:58:43',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(105,1,85,1,3,NULL,2,NULL,'招商引资','0000-0000-0004',2,'0003','2015-06-30 17:58:58',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(106,1,85,1,3,NULL,2,NULL,'园区企业','0000-0000-0005',2,'0003','2015-06-30 17:59:16',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(107,1,105,1,3,NULL,2,NULL,'投资优势','0000-0000-0004-0000',3,'0000','2015-06-30 17:59:31',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(108,1,86,1,3,NULL,2,NULL,'通知公告','0000-0001-0001',2,'0002','2015-06-30 21:05:36',9,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(109,1,86,1,3,NULL,2,NULL,'经济发展','0000-0001-0002',2,'0000','2015-06-30 21:05:54',9,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(110,1,86,1,3,NULL,2,NULL,'党群建设','0000-0001-0003',2,'0000','2015-06-30 21:06:01',9,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(111,1,86,1,3,NULL,2,NULL,'政务公示','0000-0001-0004',2,'0000','2015-06-30 21:06:07',9,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(112,1,86,1,3,NULL,2,NULL,'法律服务','0000-0001-0005',2,'0000','2015-06-30 21:06:18',9,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(113,1,86,1,3,NULL,2,NULL,'环保事务','0000-0001-0006',2,'0000','2015-06-30 21:06:29',9,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(114,1,86,1,3,NULL,2,NULL,'干部培训','0000-0001-0007',2,'0000','2015-06-30 21:06:38',9,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(115,1,86,1,3,NULL,2,NULL,'安全生产','0000-0001-0008',2,'0000','2015-06-30 21:06:45',9,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(116,1,86,1,3,NULL,2,NULL,'网上办事','0000-0001-0009',2,'0000','2015-06-30 21:06:54',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(119,1,1,1,4,NULL,5,NULL,'图片新闻','0000-0002',1,'0000','2015-07-01 17:58:11',1,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(120,1,1,1,4,NULL,2,NULL,'图解准东','0000-0003',1,'0000','2015-07-01 17:58:58',6,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(121,1,105,1,3,NULL,2,NULL,'优惠政策','0000-0000-0004-0001',3,'0000','2015-07-01 19:33:21',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(122,1,105,1,3,NULL,2,NULL,'招商项目','0000-0000-0004-0002',3,'0000','2015-07-01 19:33:29',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(123,1,106,1,3,NULL,2,NULL,'企业目录','0000-0000-0005-0000',3,'0000','2015-07-01 19:33:44',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(124,1,106,1,3,NULL,2,NULL,'企业新闻','0000-0000-0005-0001',3,'0000','2015-07-01 19:33:49',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(125,1,106,1,3,NULL,2,NULL,'企业产品','0000-0000-0005-0002',3,'0000','2015-07-01 19:33:56',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(126,1,1,1,3,NULL,2,NULL,'政务公开','0000-0004',1,'0007','2015-07-01 23:05:05',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(127,1,126,1,3,NULL,2,NULL,'工作报告','0000-0004-0000',2,'0000','2015-07-01 23:28:21',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(128,1,126,1,3,NULL,2,NULL,'统计数据','0000-0004-0001',2,'0000','2015-07-01 23:28:31',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(129,1,126,1,3,NULL,2,NULL,'领导信箱','0000-0004-0002',2,'0000','2015-07-01 23:28:42',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(130,1,126,1,3,NULL,2,NULL,'我要咨询','0000-0004-0003',2,'0000','2015-07-01 23:29:16',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(131,1,126,1,3,NULL,2,NULL,'我有建议','0000-0004-0004',2,'0000','2015-07-01 23:29:22',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(132,1,126,1,3,NULL,2,NULL,'我要求助','0000-0004-0005',2,'0000','2015-07-01 23:29:30',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(133,1,126,1,3,NULL,2,NULL,'我要投诉','0000-0004-0006',2,'0000','2015-07-01 23:29:38',0,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL),
	(134,1,86,1,3,NULL,2,NULL,'金融服务','0000-0001-000a',2,'0000','2015-07-02 16:44:05',9,0,'1','0','0',NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `cms_node` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_node_buffer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_node_buffer`;

CREATE TABLE `cms_node_buffer` (
  `f_node_id` int(11) NOT NULL,
  `f_views` int(11) NOT NULL COMMENT '浏览次数',
  PRIMARY KEY (`f_node_id`),
  CONSTRAINT `fk_cms_nodebuffer_node` FOREIGN KEY (`f_node_id`) REFERENCES `cms_node` (`f_node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='栏目缓冲表';

LOCK TABLES `cms_node_buffer` WRITE;
/*!40000 ALTER TABLE `cms_node_buffer` DISABLE KEYS */;

INSERT INTO `cms_node_buffer` (`f_node_id`, `f_views`)
VALUES
	(1,7),
	(85,0),
	(86,0),
	(87,0),
	(88,0),
	(89,0),
	(90,0),
	(91,0),
	(92,0),
	(93,0),
	(94,0),
	(95,0),
	(96,0),
	(97,0),
	(98,0),
	(99,0),
	(100,0),
	(101,0),
	(102,0),
	(103,0),
	(104,0),
	(105,0),
	(106,0),
	(107,0),
	(108,0),
	(109,0),
	(110,0),
	(111,0),
	(112,0),
	(113,0),
	(114,0),
	(115,0),
	(116,0),
	(119,0),
	(120,0),
	(121,0),
	(122,0),
	(123,0),
	(124,0),
	(125,0),
	(126,0),
	(127,0),
	(128,0),
	(129,0),
	(130,0),
	(131,0),
	(132,0),
	(133,0),
	(134,0);

/*!40000 ALTER TABLE `cms_node_buffer` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_node_clob
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_node_clob`;

CREATE TABLE `cms_node_clob` (
  `f_node_id` int(11) NOT NULL,
  `f_key` varchar(50) NOT NULL COMMENT '键',
  `f_value` longtext COMMENT '值',
  KEY `fk_cms_nodeclob_node` (`f_node_id`),
  CONSTRAINT `fk_cms_nodeclob_node` FOREIGN KEY (`f_node_id`) REFERENCES `cms_node` (`f_node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='栏目大字段表';



# Dump of table cms_node_custom
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_node_custom`;

CREATE TABLE `cms_node_custom` (
  `f_node_id` int(11) NOT NULL,
  `f_key` varchar(50) NOT NULL COMMENT '键',
  `f_value` varchar(2000) DEFAULT NULL COMMENT '值',
  KEY `fk_cms_nodecustom_node` (`f_node_id`),
  CONSTRAINT `fk_cms_nodecustom_node` FOREIGN KEY (`f_node_id`) REFERENCES `cms_node` (`f_node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='栏目自定义表';



# Dump of table cms_node_detail
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_node_detail`;

CREATE TABLE `cms_node_detail` (
  `f_node_id` int(11) NOT NULL,
  `f_link` varchar(255) DEFAULT NULL COMMENT '转向链接',
  `f_html` varchar(255) DEFAULT NULL COMMENT 'HTML页面',
  `f_meta_keywords` varchar(150) DEFAULT NULL COMMENT '关键字',
  `f_meta_description` varchar(255) DEFAULT NULL COMMENT '描述',
  `f_is_new_window` char(1) DEFAULT NULL COMMENT '是否在新窗口打开',
  `f_node_template` varchar(255) DEFAULT NULL COMMENT '栏目模板',
  `f_info_template` varchar(255) DEFAULT NULL COMMENT '文档模板',
  `f_is_generate_node` char(1) DEFAULT NULL COMMENT '是否生成栏目页',
  `f_is_generate_info` char(1) DEFAULT NULL COMMENT '是否生成文档页',
  `f_node_extension` varchar(10) DEFAULT NULL COMMENT '栏目页扩展名',
  `f_info_extension` varchar(10) DEFAULT NULL COMMENT '文档页扩展名',
  `f_node_path` varchar(100) DEFAULT NULL COMMENT '栏目路径',
  `f_info_path` varchar(100) DEFAULT NULL COMMENT '文档路径',
  `f_is_def_page` char(1) DEFAULT NULL COMMENT '是否默认页',
  `f_static_method` int(11) DEFAULT NULL COMMENT '静态页生成方式(0:手动生成;1:自动生成栏目页;2:自动生成文档页及栏目页;3:自动生成文档页、栏目页、父栏目页、首页)',
  `f_static_page` int(11) DEFAULT NULL COMMENT '栏目列表静态化页数',
  `f_small_image` varchar(255) DEFAULT NULL COMMENT '小图',
  `f_large_image` varchar(255) DEFAULT NULL COMMENT '大图',
  PRIMARY KEY (`f_node_id`),
  CONSTRAINT `fk_cms_nodedetail_node` FOREIGN KEY (`f_node_id`) REFERENCES `cms_node` (`f_node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='栏目详细表';

LOCK TABLES `cms_node_detail` WRITE;
/*!40000 ALTER TABLE `cms_node_detail` DISABLE KEYS */;

INSERT INTO `cms_node_detail` (`f_node_id`, `f_link`, `f_html`, `f_meta_keywords`, `f_meta_description`, `f_is_new_window`, `f_node_template`, `f_info_template`, `f_is_generate_node`, `f_is_generate_info`, `f_node_extension`, `f_info_extension`, `f_node_path`, `f_info_path`, `f_is_def_page`, `f_static_method`, `f_static_page`, `f_small_image`, `f_large_image`)
VALUES
	(1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/index',NULL,'1',NULL,1,NULL,NULL),
	(36,NULL,NULL,NULL,NULL,NULL,'/list_node.html','/info_node.html',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(86,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(87,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(88,NULL,NULL,NULL,NULL,NULL,'/single_node.html',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(89,NULL,NULL,NULL,NULL,NULL,'/single_node.html',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(90,NULL,NULL,NULL,NULL,NULL,'/single_node.html',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(91,NULL,NULL,NULL,NULL,NULL,'/single_node.html',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(92,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(93,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(94,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(95,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(96,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(97,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(98,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(99,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(101,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(102,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(103,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(104,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(105,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(106,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(107,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(108,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(109,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(110,NULL,NULL,NULL,NULL,NULL,'/list_node.html',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(111,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(112,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(113,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(114,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(115,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(116,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(119,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(120,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(121,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(122,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(123,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(124,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(125,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(126,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(127,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(128,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(129,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(130,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(131,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(132,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(133,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(134,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `cms_node_detail` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_node_membergroup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_node_membergroup`;

CREATE TABLE `cms_node_membergroup` (
  `f_nodemgroup_id` int(11) NOT NULL,
  `f_node_id` int(11) NOT NULL,
  `f_membergroup_id` int(11) NOT NULL,
  `f_is_view_perm` char(1) NOT NULL DEFAULT '1' COMMENT '是否有浏览权限',
  `f_is_contri_perm` char(1) NOT NULL DEFAULT '1' COMMENT '是否有投稿权限',
  `f_is_comment_perm` char(1) NOT NULL DEFAULT '1' COMMENT '是否有评论权限',
  PRIMARY KEY (`f_nodemgroup_id`),
  KEY `fk_cms_nodemgroup_group` (`f_membergroup_id`),
  KEY `fk_cms_nodemgroup_node` (`f_node_id`),
  CONSTRAINT `fk_cms_nodemgroup_group` FOREIGN KEY (`f_membergroup_id`) REFERENCES `cms_member_group` (`f_membergroup_id`),
  CONSTRAINT `fk_cms_nodemgroup_node` FOREIGN KEY (`f_node_id`) REFERENCES `cms_node` (`f_node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='栏目与用户组权限表';

LOCK TABLES `cms_node_membergroup` WRITE;
/*!40000 ALTER TABLE `cms_node_membergroup` DISABLE KEYS */;

INSERT INTO `cms_node_membergroup` (`f_nodemgroup_id`, `f_node_id`, `f_membergroup_id`, `f_is_view_perm`, `f_is_contri_perm`, `f_is_comment_perm`)
VALUES
	(1,1,1,'1','1','1'),
	(2,36,1,'1','1','1'),
	(18,1,0,'1','1','1'),
	(19,36,0,'1','1','1'),
	(67,85,0,'1','1','1'),
	(68,85,1,'1','1','1'),
	(69,86,0,'1','1','1'),
	(70,86,1,'1','1','1'),
	(71,87,0,'1','1','1'),
	(72,87,1,'1','1','1'),
	(73,88,0,'1','1','1'),
	(74,88,1,'1','1','1'),
	(75,89,0,'1','1','1'),
	(76,89,1,'1','1','1'),
	(77,90,0,'1','1','1'),
	(78,90,1,'1','1','1'),
	(79,91,0,'1','1','1'),
	(80,91,1,'1','1','1'),
	(81,92,0,'1','1','1'),
	(82,92,1,'1','1','1'),
	(83,93,0,'1','1','1'),
	(84,93,1,'1','1','1'),
	(85,94,0,'1','1','1'),
	(86,94,1,'1','1','1'),
	(87,95,0,'1','1','1'),
	(88,95,1,'1','1','1'),
	(89,96,0,'1','1','1'),
	(90,96,1,'1','1','1'),
	(91,97,0,'1','1','1'),
	(92,97,1,'1','1','1'),
	(93,98,0,'1','1','1'),
	(94,98,1,'1','1','1'),
	(95,99,0,'1','1','1'),
	(96,99,1,'1','1','1'),
	(97,100,0,'1','1','1'),
	(98,100,1,'1','1','1'),
	(99,101,0,'1','1','1'),
	(100,101,1,'1','1','1'),
	(101,102,0,'1','1','1'),
	(102,102,1,'1','1','1'),
	(103,103,0,'1','1','1'),
	(104,103,1,'1','1','1'),
	(105,104,0,'1','1','1'),
	(106,104,1,'1','1','1'),
	(107,105,0,'1','1','1'),
	(108,105,1,'1','1','1'),
	(109,106,0,'1','1','1'),
	(110,106,1,'1','1','1'),
	(111,107,0,'1','1','1'),
	(112,107,1,'1','1','1'),
	(113,108,0,'1','1','1'),
	(114,108,1,'1','1','1'),
	(115,109,0,'1','1','1'),
	(116,109,1,'1','1','1'),
	(117,110,0,'1','1','1'),
	(118,110,1,'1','1','1'),
	(119,111,0,'1','1','1'),
	(120,111,1,'1','1','1'),
	(121,112,0,'1','1','1'),
	(122,112,1,'1','1','1'),
	(123,113,0,'1','1','1'),
	(124,113,1,'1','1','1'),
	(125,114,0,'1','1','1'),
	(126,114,1,'1','1','1'),
	(127,115,0,'1','1','1'),
	(128,115,1,'1','1','1'),
	(129,116,0,'1','1','1'),
	(130,116,1,'1','1','1'),
	(135,119,0,'1','1','1'),
	(136,119,1,'1','1','1'),
	(137,120,0,'1','1','1'),
	(138,120,1,'1','1','1'),
	(139,121,0,'1','1','1'),
	(140,121,1,'1','1','1'),
	(141,122,0,'1','1','1'),
	(142,122,1,'1','1','1'),
	(143,123,0,'1','1','1'),
	(144,123,1,'1','1','1'),
	(145,124,0,'1','1','1'),
	(146,124,1,'1','1','1'),
	(147,125,0,'1','1','1'),
	(148,125,1,'1','1','1'),
	(149,126,0,'1','1','1'),
	(150,126,1,'1','1','1'),
	(151,127,0,'1','1','1'),
	(152,127,1,'1','1','1'),
	(153,128,0,'1','1','1'),
	(154,128,1,'1','1','1'),
	(155,129,0,'1','1','1'),
	(156,129,1,'1','1','1'),
	(157,130,0,'1','1','1'),
	(158,130,1,'1','1','1'),
	(159,131,0,'1','1','1'),
	(160,131,1,'1','1','1'),
	(161,132,0,'1','1','1'),
	(162,132,1,'1','1','1'),
	(163,133,0,'1','1','1'),
	(164,133,1,'1','1','1'),
	(165,134,0,'1','1','1'),
	(166,134,1,'1','1','1');

/*!40000 ALTER TABLE `cms_node_membergroup` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_node_org
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_node_org`;

CREATE TABLE `cms_node_org` (
  `f_nodeorg_id` int(11) NOT NULL,
  `f_org_id` int(11) NOT NULL,
  `f_node_id` int(11) NOT NULL,
  `f_is_view_perm` char(1) NOT NULL DEFAULT '0' COMMENT '是否有浏览权限',
  PRIMARY KEY (`f_nodeorg_id`),
  KEY `fk_cms_nodeorg_node` (`f_node_id`),
  KEY `fk_cms_nodeorg_org` (`f_org_id`),
  CONSTRAINT `fk_cms_nodeorg_node` FOREIGN KEY (`f_node_id`) REFERENCES `cms_node` (`f_node_id`),
  CONSTRAINT `fk_cms_nodeorg_org` FOREIGN KEY (`f_org_id`) REFERENCES `cms_org` (`f_org_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='栏目与组织权限表';



# Dump of table cms_node_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_node_role`;

CREATE TABLE `cms_node_role` (
  `f_noderole_id` int(11) NOT NULL,
  `f_node_id` int(11) NOT NULL,
  `f_role_id` int(11) NOT NULL,
  `f_is_node_perm` char(1) NOT NULL DEFAULT '1' COMMENT '栏目权限',
  `f_is_info_perm` char(1) NOT NULL DEFAULT '1' COMMENT '文档权限',
  PRIMARY KEY (`f_noderole_id`),
  KEY `fk_cms_noderole_node` (`f_node_id`),
  KEY `fk_cms_noderole_role` (`f_role_id`),
  CONSTRAINT `fk_cms_noderole_node` FOREIGN KEY (`f_node_id`) REFERENCES `cms_node` (`f_node_id`),
  CONSTRAINT `fk_cms_noderole_role` FOREIGN KEY (`f_role_id`) REFERENCES `cms_role` (`f_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='栏目与角色权限表';

LOCK TABLES `cms_node_role` WRITE;
/*!40000 ALTER TABLE `cms_node_role` DISABLE KEYS */;

INSERT INTO `cms_node_role` (`f_noderole_id`, `f_node_id`, `f_role_id`, `f_is_node_perm`, `f_is_info_perm`)
VALUES
	(1,1,1,'0','0'),
	(2,36,1,'0','0'),
	(34,85,1,'0','0'),
	(35,86,1,'0','0'),
	(36,87,1,'0','0'),
	(37,88,1,'0','0'),
	(38,89,1,'0','0'),
	(39,90,1,'0','0'),
	(40,91,1,'0','0'),
	(41,92,1,'0','0'),
	(42,93,1,'0','0'),
	(43,94,1,'0','0'),
	(44,95,1,'0','0'),
	(45,96,1,'0','0'),
	(46,97,1,'0','0'),
	(47,98,1,'0','0'),
	(48,99,1,'0','0'),
	(49,100,1,'0','0'),
	(50,101,1,'0','0'),
	(51,102,1,'0','0'),
	(52,103,1,'0','0'),
	(53,104,1,'0','0'),
	(54,105,1,'0','0'),
	(55,106,1,'0','0'),
	(56,107,1,'0','0'),
	(57,108,1,'0','0'),
	(58,109,1,'0','0'),
	(59,110,1,'0','0'),
	(60,111,1,'0','0'),
	(61,112,1,'0','0'),
	(62,113,1,'0','0'),
	(63,114,1,'0','0'),
	(64,115,1,'0','0'),
	(65,116,1,'0','0'),
	(68,119,1,'0','0'),
	(69,120,1,'0','0'),
	(70,121,1,'0','0'),
	(71,122,1,'0','0'),
	(72,123,1,'0','0'),
	(73,124,1,'0','0'),
	(74,125,1,'0','0'),
	(75,126,1,'0','0'),
	(76,127,1,'0','0'),
	(77,128,1,'0','0'),
	(78,129,1,'0','0'),
	(79,130,1,'0','0'),
	(80,131,1,'0','0'),
	(81,132,1,'0','0'),
	(82,133,1,'0','0'),
	(83,134,1,'0','0');

/*!40000 ALTER TABLE `cms_node_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_operation_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_operation_log`;

CREATE TABLE `cms_operation_log` (
  `f_operation_id` int(11) NOT NULL,
  `f_user_id` int(11) NOT NULL COMMENT '操作人',
  `f_site_id` int(11) NOT NULL COMMENT '站点',
  `f_name` varchar(150) NOT NULL COMMENT '名称',
  `f_data_id` int(11) DEFAULT NULL COMMENT '数据ID',
  `f_description` varchar(255) DEFAULT NULL COMMENT '描述',
  `f_text` longtext COMMENT '详情',
  `f_ip` varchar(100) NOT NULL COMMENT 'IP',
  `f_time` datetime NOT NULL COMMENT '时间',
  `f_type` int(11) NOT NULL DEFAULT '1' COMMENT '类型(1:操作日志,2:登录日志,3:登录失败)',
  PRIMARY KEY (`f_operation_id`),
  KEY `fk_cms_operationlog_site` (`f_site_id`),
  KEY `fk_cms_operationlog_user` (`f_user_id`),
  CONSTRAINT `fk_cms_operationlog_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`),
  CONSTRAINT `fk_cms_operationlog_user` FOREIGN KEY (`f_user_id`) REFERENCES `cms_user` (`f_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='操作日志表';

LOCK TABLES `cms_operation_log` WRITE;
/*!40000 ALTER TABLE `cms_operation_log` DISABLE KEYS */;

INSERT INTO `cms_operation_log` (`f_operation_id`, `f_user_id`, `f_site_id`, `f_name`, `f_data_id`, `f_description`, `f_text`, `f_ip`, `f_time`, `f_type`)
VALUES
	(1,1,1,'login.success',NULL,NULL,NULL,'0:0:0:0:0:0:0:1','2014-05-26 14:57:58',2),
	(2,1,1,'info.save',126,'Jspxcms安装手册',NULL,'0:0:0:0:0:0:0:1','2014-05-26 15:22:38',1),
	(3,1,1,'info.update',126,'Jspxcms安装手册',NULL,'0:0:0:0:0:0:0:1','2014-05-26 15:22:43',1),
	(4,1,1,'login.logout',NULL,NULL,NULL,'0:0:0:0:0:0:0:1','2014-05-26 15:39:34',2),
	(5,1,1,'login.success',NULL,NULL,NULL,'0:0:0:0:0:0:0:1','2014-05-26 15:52:43',2),
	(6,1,1,'info.update',126,'Jspxcms安装手册',NULL,'0:0:0:0:0:0:0:1','2014-05-26 16:18:03',1),
	(7,1,1,'info.update',126,'Jspxcms安装手册',NULL,'0:0:0:0:0:0:0:1','2014-05-26 16:27:19',1),
	(8,1,1,'info.update',126,'Jspxcms安装手册',NULL,'0:0:0:0:0:0:0:1','2014-05-26 16:27:19',1),
	(9,1,1,'info.update',126,'Jspxcms安装手册',NULL,'0:0:0:0:0:0:0:1','2014-05-26 16:27:32',1),
	(10,1,1,'info.update',126,'Jspxcms安装手册',NULL,'0:0:0:0:0:0:0:1','2014-05-26 17:36:05',1),
	(11,1,1,'login.success',NULL,NULL,NULL,'0:0:0:0:0:0:0:1','2014-05-27 15:45:38',2),
	(12,1,1,'login.success',NULL,NULL,NULL,'0:0:0:0:0:0:0:1','2014-05-27 16:16:50',2),
	(13,1,1,'login.success',NULL,NULL,NULL,'0:0:0:0:0:0:0:1','2014-05-27 16:16:50',2),
	(14,1,1,'login.success',NULL,NULL,NULL,'0:0:0:0:0:0:0:1','2015-06-04 13:50:28',2),
	(15,1,1,'login.success',NULL,NULL,NULL,'127.0.0.1','2015-06-04 13:53:55',2),
	(16,1,1,'login.logout',NULL,NULL,NULL,'127.0.0.1','2015-06-04 13:59:11',2),
	(17,1,1,'login.success',NULL,NULL,NULL,'127.0.0.1','2015-06-04 13:59:13',2),
	(18,1,1,'login.success',NULL,NULL,NULL,'127.0.0.1','2015-06-04 17:07:48',2),
	(19,1,1,'login.success',NULL,NULL,NULL,'127.0.0.1','2015-06-04 17:40:24',2),
	(20,1,1,'login.success',NULL,NULL,NULL,'127.0.0.1','2015-06-04 18:44:53',2),
	(21,1,1,'login.success',NULL,NULL,NULL,'127.0.0.1','2015-06-05 11:23:11',2),
	(22,1,1,'login.success',NULL,NULL,NULL,'127.0.0.1','2015-06-05 17:16:19',2),
	(24,0,1,'login.failure',NULL,'admin:admin',NULL,'0:0:0:0:0:0:0:1','2015-06-29 19:59:21',2),
	(25,0,1,'login.failure',NULL,'admin:',NULL,'0:0:0:0:0:0:0:1','2015-06-29 19:59:26',2),
	(26,0,1,'login.failure',NULL,'admin:admin',NULL,'0:0:0:0:0:0:0:1','2015-06-29 19:59:30',2),
	(27,0,1,'login.failure',NULL,'admin:admin',NULL,'0:0:0:0:0:0:0:1','2015-06-29 19:59:33',2),
	(28,0,1,'login.failure',NULL,'admin:520521',NULL,'0:0:0:0:0:0:0:1','2015-06-29 19:59:40',2),
	(29,0,1,'login.failure',NULL,'admin:123456',NULL,'0:0:0:0:0:0:0:1','2015-06-29 19:59:52',2),
	(30,1,1,'login.success',NULL,NULL,NULL,'0:0:0:0:0:0:0:1','2015-06-29 20:00:10',2),
	(31,1,1,'login.success',NULL,NULL,NULL,'0:0:0:0:0:0:0:1','2015-06-29 20:24:08',2),
	(32,1,1,'login.success',NULL,NULL,NULL,'0:0:0:0:0:0:0:1','2015-06-30 16:17:51',2),
	(33,1,1,'login.success',NULL,NULL,NULL,'0:0:0:0:0:0:0:1','2015-06-30 21:04:33',2),
	(34,1,1,'login.success',NULL,NULL,NULL,'0:0:0:0:0:0:0:1','2015-07-01 17:23:34',2),
	(35,1,1,'info.save',139,' 自治区安监局就开生产工作提七点要',NULL,'0:0:0:0:0:0:0:1','2015-07-01 17:44:59',1),
	(36,1,1,'info.save',140,'管委会党政办通知全体管委会干部今天开会',NULL,'0:0:0:0:0:0:0:1','2015-07-01 17:45:27',1),
	(37,1,1,'info.save',141,'1',NULL,'0:0:0:0:0:0:0:1','2015-07-01 18:10:16',1),
	(38,1,1,'info.update',141,'1',NULL,'0:0:0:0:0:0:0:1','2015-07-01 18:40:32',1),
	(39,1,1,'info.save',142,'图1',NULL,'0:0:0:0:0:0:0:1','2015-07-01 18:42:41',1),
	(40,1,1,'info.save',143,'新疆交通建设管理局暨设计院调研组一行赴准东调研',NULL,'0:0:0:0:0:0:0:1','2015-07-01 18:47:02',1),
	(41,1,1,'info.update',143,'新疆交通建设管理局暨设计院调研组一行赴准东调研',NULL,'0:0:0:0:0:0:0:1','2015-07-01 18:48:24',1),
	(42,1,1,'info.update',143,'新疆交通建设管理局一行赴准东调研',NULL,'0:0:0:0:0:0:0:1','2015-07-01 18:53:53',1),
	(43,1,1,'info.update',143,'新疆交通建设管理局',NULL,'0:0:0:0:0:0:0:1','2015-07-01 18:54:18',1),
	(44,1,1,'info.save',144,' 魅力准东·舞动青春”啦啦操比赛”',NULL,'0:0:0:0:0:0:0:1','2015-07-01 18:56:27',1),
	(45,1,1,'info.update',144,' 魅力准东·舞动青春”啦啦操比赛”',NULL,'0:0:0:0:0:0:0:1','2015-07-01 19:00:01',1),
	(46,1,1,'login.success',NULL,NULL,NULL,'0:0:0:0:0:0:0:1','2015-07-01 22:44:05',2),
	(47,1,1,'info.save',145,'图2',NULL,'0:0:0:0:0:0:0:1','2015-07-01 23:43:54',1),
	(48,1,1,'info.save',146,'图3',NULL,'0:0:0:0:0:0:0:1','2015-07-01 23:44:06',1),
	(49,1,1,'info.save',147,'图4',NULL,'0:0:0:0:0:0:0:1','2015-07-01 23:44:13',1),
	(50,1,1,'info.save',148,'图5',NULL,'0:0:0:0:0:0:0:1','2015-07-01 23:44:22',1),
	(51,1,1,'info.save',149,'图6',NULL,'0:0:0:0:0:0:0:1','2015-07-01 23:44:28',1),
	(52,1,1,'login.success',NULL,NULL,NULL,'0:0:0:0:0:0:0:1','2015-07-02 16:43:53',2),
	(53,1,1,'login.success',NULL,NULL,NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:37:52',2),
	(54,1,1,'info.save',150,'经济发展1',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:39:34',1),
	(55,1,1,'info.save',151,'经济发展2',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:39:45',1),
	(56,1,1,'info.save',152,'经济发展3',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:39:49',1),
	(57,1,1,'info.save',153,'经济发展4',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:39:54',1),
	(58,1,1,'info.save',154,'经济发展5',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:40:03',1),
	(59,1,1,'info.save',155,'经济发展6',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:40:09',1),
	(60,1,1,'info.save',156,'经济发展7',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:40:13',1),
	(61,1,1,'info.save',157,'经济发展8',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:40:18',1),
	(62,1,1,'info.save',158,'经济发展9',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:40:25',1),
	(63,1,1,'info.save',159,'管委会党政办通知全体管委会干部今天开会2',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:43:15',1),
	(64,1,1,'info.save',160,'管委会党政办通知全体管委会干部今天开会3',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:43:22',1),
	(65,1,1,'info.save',161,'管委会党政办通知全体管委会干部今天开会4',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:43:27',1),
	(66,1,1,'info.save',162,'管委会党政办通知全体管委会干部今天开会5',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:43:33',1),
	(67,1,1,'info.save',163,'管委会党政办通知全体管委会干部今天开会6',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:43:39',1),
	(68,1,1,'info.save',164,'管委会党政办通知全体管委会干部今天开会7',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:43:45',1),
	(69,1,1,'info.save',165,'管委会党政办通知全体管委会干部今天开会8',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:43:54',1),
	(70,1,1,'info.save',166,' 魅力准东·舞动青春”啦啦操比赛”2',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:44:24',1),
	(71,1,1,'info.save',167,' 魅力准东·舞动青春”啦啦操比赛”3',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:44:29',1),
	(72,1,1,'info.save',168,' 魅力准东·舞动青春”啦啦操比赛”4',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:44:33',1),
	(73,1,1,'info.save',169,' 魅力准东·舞动青春”啦啦操比赛”5',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:44:39',1),
	(74,1,1,'info.save',170,' 魅力准东·舞动青春”啦啦操比赛”6',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:44:43',1),
	(75,1,1,'info.save',171,' 魅力准东·舞动青春”啦啦操比赛”7',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:44:50',1),
	(76,1,1,'info.save',172,' 魅力准东·舞动青春”啦啦操比赛”8',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:44:57',1),
	(77,1,1,'info.save',173,'党群建设1',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:46:14',1),
	(78,1,1,'info.save',174,'党群建设2',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:46:19',1),
	(79,1,1,'info.save',175,'党群建设3',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:46:24',1),
	(80,1,1,'info.save',176,'党群建设4',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:46:28',1),
	(81,1,1,'info.save',177,'党群建设5',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:46:34',1),
	(82,1,1,'info.save',178,'党群建设6',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:46:39',1),
	(83,1,1,'info.save',179,'党群建设7',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:46:44',1),
	(84,1,1,'info.save',180,'党群建设8',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:46:51',1),
	(85,1,1,'info.save',181,'党群建设9',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:46:57',1),
	(86,1,1,'info.save',182,'政务公示1',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:48:01',1),
	(87,1,1,'info.save',183,'政务公示2',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:48:06',1),
	(88,1,1,'info.save',184,'政务公示3',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:48:10',1),
	(89,1,1,'info.save',185,'政务公示4',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:48:16',1),
	(90,1,1,'info.save',186,'政务公示5',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:48:24',1),
	(91,1,1,'info.save',187,'政务公示6',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:48:29',1),
	(92,1,1,'info.save',188,'政务公示7',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:48:34',1),
	(93,1,1,'info.save',189,'政务公示8',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:48:39',1),
	(94,1,1,'info.save',190,'政务公示9',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:48:44',1),
	(95,1,1,'info.save',191,'法律服务1',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:49:20',1),
	(96,1,1,'info.save',192,'法律服务2',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:49:26',1),
	(97,1,1,'info.save',193,'法律服务3',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:49:30',1),
	(98,1,1,'info.save',194,'法律服务4',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:49:38',1),
	(99,1,1,'info.save',195,'法律服务5',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:49:43',1),
	(100,1,1,'info.save',196,'法律服务6',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:49:48',1),
	(101,1,1,'info.save',197,'法律服务7',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:49:53',1),
	(102,1,1,'info.save',198,'法律服务8',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:49:57',1),
	(103,1,1,'info.save',199,'法律服务9',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:50:03',1),
	(104,1,1,'info.save',200,'环保事务1',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:50:36',1),
	(105,1,1,'info.save',201,'环保事务2',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:50:43',1),
	(106,1,1,'info.save',202,'环保事务3',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:50:52',1),
	(107,1,1,'info.save',203,'环保事务4',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:50:57',1),
	(108,1,1,'info.save',204,'环保事务5',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:51:02',1),
	(109,1,1,'info.save',205,'环保事务6',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:51:09',1),
	(110,1,1,'info.save',206,'环保事务7',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:51:23',1),
	(111,1,1,'info.save',207,'环保事务8',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:51:30',1),
	(112,1,1,'info.save',208,'环保事务9',NULL,'0:0:0:0:0:0:0:1','2015-07-03 10:51:37',1),
	(113,1,1,'info.save',209,'干部培训1',NULL,'0:0:0:0:0:0:0:1','2015-07-03 11:19:43',1),
	(114,1,1,'info.save',210,'干部培训2',NULL,'0:0:0:0:0:0:0:1','2015-07-03 11:19:47',1),
	(115,1,1,'info.save',211,'干部培训3',NULL,'0:0:0:0:0:0:0:1','2015-07-03 11:19:54',1),
	(116,1,1,'info.save',212,'干部培训4',NULL,'0:0:0:0:0:0:0:1','2015-07-03 11:19:59',1),
	(117,1,1,'info.save',213,'干部培训5',NULL,'0:0:0:0:0:0:0:1','2015-07-03 11:20:05',1),
	(118,1,1,'info.save',214,'干部培训6',NULL,'0:0:0:0:0:0:0:1','2015-07-03 11:20:10',1),
	(119,1,1,'info.save',215,'干部培训7',NULL,'0:0:0:0:0:0:0:1','2015-07-03 11:20:16',1),
	(120,1,1,'info.save',216,'干部培训8',NULL,'0:0:0:0:0:0:0:1','2015-07-03 11:20:23',1),
	(121,1,1,'info.save',217,'干部培训9',NULL,'0:0:0:0:0:0:0:1','2015-07-03 11:20:28',1),
	(122,1,1,'info.save',218,'安全生产1',NULL,'0:0:0:0:0:0:0:1','2015-07-03 11:21:50',1),
	(123,1,1,'info.save',219,'安全生产2',NULL,'0:0:0:0:0:0:0:1','2015-07-03 11:21:54',1),
	(124,1,1,'info.update',219,'安全生产2',NULL,'0:0:0:0:0:0:0:1','2015-07-03 11:21:59',1),
	(125,1,1,'info.update',219,'安全生产2',NULL,'0:0:0:0:0:0:0:1','2015-07-03 11:22:02',1),
	(126,1,1,'info.save',220,'安全生产3',NULL,'0:0:0:0:0:0:0:1','2015-07-03 11:22:07',1),
	(127,1,1,'info.save',221,'安全生产4',NULL,'0:0:0:0:0:0:0:1','2015-07-03 11:22:11',1),
	(128,1,1,'info.save',222,'安全生产5',NULL,'0:0:0:0:0:0:0:1','2015-07-03 11:22:19',1),
	(129,1,1,'info.save',223,'安全生产6',NULL,'0:0:0:0:0:0:0:1','2015-07-03 11:22:24',1),
	(130,1,1,'info.save',224,'安全生产7',NULL,'0:0:0:0:0:0:0:1','2015-07-03 11:22:29',1),
	(131,1,1,'info.save',225,'安全生产8',NULL,'0:0:0:0:0:0:0:1','2015-07-03 11:22:33',1),
	(132,1,1,'info.save',226,'安全生产9',NULL,'0:0:0:0:0:0:0:1','2015-07-03 11:22:38',1),
	(133,1,1,'info.save',227,'金融服务1',NULL,'0:0:0:0:0:0:0:1','2015-07-03 11:23:11',1),
	(134,1,1,'info.save',228,'金融服务2',NULL,'0:0:0:0:0:0:0:1','2015-07-03 11:23:15',1),
	(135,1,1,'info.save',229,'金融服务3',NULL,'0:0:0:0:0:0:0:1','2015-07-03 11:23:19',1),
	(136,1,1,'info.save',230,'金融服务4',NULL,'0:0:0:0:0:0:0:1','2015-07-03 11:23:23',1),
	(137,1,1,'info.save',231,'金融服务5',NULL,'0:0:0:0:0:0:0:1','2015-07-03 11:23:28',1),
	(138,1,1,'info.save',232,'金融服务6',NULL,'0:0:0:0:0:0:0:1','2015-07-03 11:23:33',1),
	(139,1,1,'info.save',233,'金融服务7',NULL,'0:0:0:0:0:0:0:1','2015-07-03 11:23:38',1),
	(140,1,1,'info.save',234,'金融服务8',NULL,'0:0:0:0:0:0:0:1','2015-07-03 11:24:13',1),
	(141,1,1,'info.save',235,'金融服务9',NULL,'0:0:0:0:0:0:0:1','2015-07-03 11:24:18',1),
	(142,1,1,'login.success',NULL,NULL,NULL,'0:0:0:0:0:0:0:1','2015-07-03 16:20:34',2),
	(143,1,1,'info.save',236,'基础设施一期工程已完工投运',NULL,'0:0:0:0:0:0:0:1','2015-07-03 19:22:35',1),
	(144,1,1,'info.update',166,'魅力准东·舞动青春”啦啦操比赛”2',NULL,'0:0:0:0:0:0:0:1','2015-07-03 19:57:23',1),
	(145,1,1,'login.success',NULL,NULL,NULL,'0:0:0:0:0:0:0:1','2015-07-03 21:20:10',2),
	(146,1,1,'info.update',236,'基础设施一期工程已完工投运',NULL,'0:0:0:0:0:0:0:1','2015-07-03 21:20:51',1),
	(147,1,1,'info.update',236,'基础设施一期工程已完工投运',NULL,'0:0:0:0:0:0:0:1','2015-07-03 22:20:36',1),
	(148,1,1,'info.save',237,'准东概况',NULL,'0:0:0:0:0:0:0:1','2015-07-03 23:03:11',1),
	(149,1,1,'info.update',237,'准东概况',NULL,'0:0:0:0:0:0:0:1','2015-07-03 23:05:46',1),
	(150,1,1,'info.update',237,'准东概况',NULL,'0:0:0:0:0:0:0:1','2015-07-03 23:09:00',1),
	(151,1,1,'login.success',NULL,NULL,NULL,'0:0:0:0:0:0:0:1','2015-07-04 00:02:10',2),
	(152,1,1,'info.save',238,'地理资源',NULL,'0:0:0:0:0:0:0:1','2015-07-04 00:03:06',1),
	(153,1,1,'info.update',238,'地理资源',NULL,'0:0:0:0:0:0:0:1','2015-07-04 00:03:21',1),
	(154,1,1,'login.success',NULL,NULL,NULL,'0:0:0:0:0:0:0:1','2015-07-04 10:08:44',2);

/*!40000 ALTER TABLE `cms_operation_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_org
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_org`;

CREATE TABLE `cms_org` (
  `f_org_id` int(11) NOT NULL,
  `f_parent_id` int(11) DEFAULT NULL COMMENT '上级组织',
  `f_name` varchar(150) NOT NULL COMMENT '名称',
  `f_full_name` varchar(150) DEFAULT NULL COMMENT '全称',
  `f_description` varchar(255) DEFAULT NULL COMMENT '描述',
  `f_contacts` varchar(100) DEFAULT NULL COMMENT '联系人',
  `f_number` varchar(100) DEFAULT NULL COMMENT '编码',
  `f_phone` varchar(100) DEFAULT NULL COMMENT '电话',
  `f_fax` varchar(100) DEFAULT NULL COMMENT '传真',
  `f_address` varchar(255) DEFAULT NULL COMMENT '地址',
  `f_tree_number` varchar(100) NOT NULL DEFAULT '0000' COMMENT '树编码',
  `f_tree_level` int(11) NOT NULL DEFAULT '0' COMMENT '树级别',
  `f_tree_max` varchar(10) NOT NULL DEFAULT '0000' COMMENT '树子节点最大编码',
  PRIMARY KEY (`f_org_id`),
  KEY `fk_cms_org_parent` (`f_parent_id`),
  CONSTRAINT `fk_cms_org_parent` FOREIGN KEY (`f_parent_id`) REFERENCES `cms_org` (`f_org_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组织表';

LOCK TABLES `cms_org` WRITE;
/*!40000 ALTER TABLE `cms_org` DISABLE KEYS */;

INSERT INTO `cms_org` (`f_org_id`, `f_parent_id`, `f_name`, `f_full_name`, `f_description`, `f_contacts`, `f_number`, `f_phone`, `f_fax`, `f_address`, `f_tree_number`, `f_tree_level`, `f_tree_max`)
VALUES
	(1,NULL,'准东开发区',NULL,NULL,NULL,'0000',NULL,NULL,NULL,'0000',0,'0003'),
	(3,1,'管委会',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-0001',1,'0000'),
	(4,1,'党工委',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-0002',1,'0000');

/*!40000 ALTER TABLE `cms_org` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_publish_point
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_publish_point`;

CREATE TABLE `cms_publish_point` (
  `f_publishpoint_id` int(11) NOT NULL,
  `f_global_id` int(11) NOT NULL,
  `f_name` varchar(100) NOT NULL COMMENT '名称',
  `f_description` varchar(255) DEFAULT NULL COMMENT '描述',
  `f_store_path` varchar(255) DEFAULT NULL COMMENT '保存路径',
  `f_display_path` varchar(255) DEFAULT NULL COMMENT '显示路径',
  `f_ftp_hostname` varchar(100) DEFAULT NULL COMMENT 'ftp服务器',
  `f_ftp_port` int(11) DEFAULT NULL COMMENT 'ftp端口',
  `f_ftp_username` varchar(100) DEFAULT NULL COMMENT 'ftp用户名',
  `f_ftp_password` varchar(100) DEFAULT NULL COMMENT 'ftp密码',
  `f_seq` int(11) NOT NULL DEFAULT '2147483647' COMMENT '排列顺序',
  `f_method` int(11) NOT NULL DEFAULT '1' COMMENT '方式(1:文件系统,2:FTP)',
  `f_type` int(11) NOT NULL DEFAULT '1' COMMENT '类型(1:HTML发布,2:附件发布)',
  PRIMARY KEY (`f_publishpoint_id`),
  KEY `fk_cms_publishpoint_global` (`f_global_id`),
  CONSTRAINT `fk_cms_publishpoint_global` FOREIGN KEY (`f_global_id`) REFERENCES `cms_global` (`f_global_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='发布点表';

LOCK TABLES `cms_publish_point` WRITE;
/*!40000 ALTER TABLE `cms_publish_point` DISABLE KEYS */;

INSERT INTO `cms_publish_point` (`f_publishpoint_id`, `f_global_id`, `f_name`, `f_description`, `f_store_path`, `f_display_path`, `f_ftp_hostname`, `f_ftp_port`, `f_ftp_username`, `f_ftp_password`, `f_seq`, `f_method`, `f_type`)
VALUES
	(1,1,'附件默认发布点',NULL,'/uploads','/uploads',NULL,NULL,NULL,NULL,2147483647,1,2),
	(2,1,'HTML默认发布点',NULL,NULL,NULL,NULL,NULL,NULL,NULL,2147483647,1,1);

/*!40000 ALTER TABLE `cms_publish_point` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_qitem_qrecord
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_qitem_qrecord`;

CREATE TABLE `cms_qitem_qrecord` (
  `f_qitemqrecord_id` int(11) NOT NULL,
  `f_questionrecord_id` int(11) NOT NULL,
  `f_questionoption_id` int(11) NOT NULL,
  `f_answer` longtext COMMENT '回答',
  PRIMARY KEY (`f_qitemqrecord_id`),
  KEY `fk_cms_qiqr_qoption` (`f_questionoption_id`),
  KEY `fk_cms_qiqr_qrecord` (`f_questionrecord_id`),
  CONSTRAINT `fk_cms_qiqr_qoption` FOREIGN KEY (`f_questionoption_id`) REFERENCES `cms_question_option` (`f_questionoption_id`),
  CONSTRAINT `fk_cms_qiqr_qrecord` FOREIGN KEY (`f_questionrecord_id`) REFERENCES `cms_question_record` (`f_questionrecord_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调查问卷项与调查问卷记录关联表';



# Dump of table cms_qoption_qrecord
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_qoption_qrecord`;

CREATE TABLE `cms_qoption_qrecord` (
  `f_qoptionqrecord_id` int(11) NOT NULL,
  `f_questionrecord_id` int(11) NOT NULL,
  `f_questionoption_id` int(11) NOT NULL,
  PRIMARY KEY (`f_qoptionqrecord_id`),
  KEY `fk_cms_qoqr_qoption` (`f_questionoption_id`),
  KEY `fk_cms_qoqr_qrecord` (`f_questionrecord_id`),
  CONSTRAINT `fk_cms_qoqr_qoption` FOREIGN KEY (`f_questionoption_id`) REFERENCES `cms_question_option` (`f_questionoption_id`),
  CONSTRAINT `fk_cms_qoqr_qrecord` FOREIGN KEY (`f_questionrecord_id`) REFERENCES `cms_question_record` (`f_questionrecord_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调查问卷选项与调查问卷记录关联表';



# Dump of table cms_question
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_question`;

CREATE TABLE `cms_question` (
  `f_question_id` int(11) NOT NULL,
  `f_site_id` int(11) NOT NULL,
  `f_title` varchar(150) NOT NULL COMMENT '标题',
  `f_description` varchar(255) DEFAULT NULL COMMENT '描述',
  `f_begin_date` datetime DEFAULT NULL COMMENT '开始日期',
  `f_end_date` datetime DEFAULT NULL COMMENT '结束日期',
  `f_creation_date` datetime NOT NULL COMMENT '创建日期',
  `f_mode` int(11) NOT NULL DEFAULT '1' COMMENT '模式(1:独立访客,2:独立IP,3:独立用户)',
  `f_total` int(11) NOT NULL DEFAULT '0' COMMENT '总票数',
  `f_status` int(11) NOT NULL DEFAULT '0' COMMENT '状态(0:启用,1:禁用)',
  PRIMARY KEY (`f_question_id`),
  KEY `fk_cms_question_site` (`f_site_id`),
  CONSTRAINT `fk_cms_question_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调查问卷表';



# Dump of table cms_question_item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_question_item`;

CREATE TABLE `cms_question_item` (
  `f_questionitem_id` int(11) NOT NULL,
  `f_question_id` int(11) NOT NULL,
  `f_title` varchar(150) NOT NULL,
  `f_max_selected` int(11) NOT NULL DEFAULT '1' COMMENT '最多可选几项(0不限制)',
  `f_seq` int(11) NOT NULL DEFAULT '2147483647' COMMENT '排序',
  PRIMARY KEY (`f_questionitem_id`),
  KEY `fk_cms_qitem_question` (`f_question_id`),
  CONSTRAINT `fk_cms_qitem_question` FOREIGN KEY (`f_question_id`) REFERENCES `cms_question` (`f_question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调查问卷项表';



# Dump of table cms_question_option
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_question_option`;

CREATE TABLE `cms_question_option` (
  `f_questionoption_id` int(11) NOT NULL,
  `f_questionitem_id` int(11) NOT NULL,
  `f_title` varchar(150) DEFAULT NULL COMMENT '标题',
  `f_is_input` char(1) NOT NULL DEFAULT '0' COMMENT '是否输入框',
  `f_count` int(11) NOT NULL DEFAULT '0' COMMENT '得票数',
  `f_seq` int(11) NOT NULL DEFAULT '2147483647' COMMENT '排序',
  PRIMARY KEY (`f_questionoption_id`),
  KEY `fk_cms_qoption_qitem` (`f_questionitem_id`),
  CONSTRAINT `fk_cms_qoption_qitem` FOREIGN KEY (`f_questionitem_id`) REFERENCES `cms_question_item` (`f_questionitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调查问卷选项表';



# Dump of table cms_question_record
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_question_record`;

CREATE TABLE `cms_question_record` (
  `f_questionrecord_id` int(11) NOT NULL,
  `f_user_id` int(11) DEFAULT NULL,
  `f_question_id` int(11) NOT NULL,
  `f_date` datetime NOT NULL COMMENT '日期',
  `f_ip` varchar(100) NOT NULL COMMENT 'IP',
  `f_cookie` varchar(100) NOT NULL COMMENT 'Cookie',
  PRIMARY KEY (`f_questionrecord_id`),
  KEY `fk_cms_qrecord_question` (`f_question_id`),
  KEY `fk_cms_questionrecord_user` (`f_user_id`),
  CONSTRAINT `fk_cms_qrecord_question` FOREIGN KEY (`f_question_id`) REFERENCES `cms_question` (`f_question_id`),
  CONSTRAINT `fk_cms_questionrecord_user` FOREIGN KEY (`f_user_id`) REFERENCES `cms_user` (`f_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调查问卷记录表';



# Dump of table cms_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_role`;

CREATE TABLE `cms_role` (
  `f_role_id` int(11) NOT NULL,
  `f_site_id` int(11) NOT NULL COMMENT '站点',
  `f_name` varchar(100) NOT NULL COMMENT '名称',
  `f_description` varchar(255) DEFAULT NULL COMMENT '描述',
  `f_seq` int(11) NOT NULL DEFAULT '2147483647' COMMENT '排序',
  `f_perms` longtext COMMENT '功能权限',
  `f_is_all_perm` char(1) NOT NULL DEFAULT '1' COMMENT '是否拥有所有功能权限',
  `f_is_all_info_perm` char(1) NOT NULL DEFAULT '1' COMMENT '是否拥有所有文档权限',
  `f_is_all_node_perm` char(1) NOT NULL DEFAULT '1' COMMENT '是否拥有所有栏目权限',
  `f_is_info_final_perm` char(1) NOT NULL DEFAULT '0' COMMENT '是否拥有文档终审权限',
  `f_info_perm_type` int(11) NOT NULL DEFAULT '1' COMMENT '文档权限类型(1:所有;2:组织;3:自身)',
  PRIMARY KEY (`f_role_id`),
  KEY `fk_cms_role_site` (`f_site_id`),
  CONSTRAINT `fk_cms_role_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

LOCK TABLES `cms_role` WRITE;
/*!40000 ALTER TABLE `cms_role` DISABLE KEYS */;

INSERT INTO `cms_role` (`f_role_id`, `f_site_id`, `f_name`, `f_description`, `f_seq`, `f_perms`, `f_is_all_perm`, `f_is_all_info_perm`, `f_is_all_node_perm`, `f_is_info_final_perm`, `f_info_perm_type`)
VALUES
	(1,1,'管理员',NULL,2147483647,NULL,'1','1','1','1',1);

/*!40000 ALTER TABLE `cms_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_schedule_job
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_schedule_job`;

CREATE TABLE `cms_schedule_job` (
  `f_schedulejob_id` int(11) NOT NULL,
  `f_site_id` int(11) NOT NULL,
  `f_user_id` int(11) NOT NULL,
  `f_name` varchar(100) NOT NULL COMMENT '任务名称',
  `f_group` varchar(100) DEFAULT NULL COMMENT '任务组',
  `f_code` varchar(100) NOT NULL COMMENT '任务代码',
  `f_data` longtext COMMENT '任务数据',
  `f_description` varchar(255) DEFAULT NULL COMMENT '任务描述',
  `f_cron_expression` varchar(100) DEFAULT NULL COMMENT 'Cron表达式',
  `f_start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `f_end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `f_start_delay` bigint(20) DEFAULT NULL COMMENT '首次延迟时间(分钟)',
  `f_repeat_interval` bigint(20) DEFAULT NULL COMMENT '间隔时间',
  `f_unit` int(11) DEFAULT NULL COMMENT '时间单位(1:毫秒,2:秒,3:分,4:时,5:天,6:周,7:月,8:年)',
  `f_cycle` int(11) NOT NULL DEFAULT '1' COMMENT '执行周期(1:cron,2:simple)',
  `f_status` int(11) NOT NULL DEFAULT '0' COMMENT '状态(0:启用;1:禁用)',
  PRIMARY KEY (`f_schedulejob_id`),
  KEY `fk_cms_schedulejob_site` (`f_site_id`),
  KEY `fk_cms_schedulejob_user` (`f_user_id`),
  CONSTRAINT `fk_cms_schedulejob_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`),
  CONSTRAINT `fk_cms_schedulejob_user` FOREIGN KEY (`f_user_id`) REFERENCES `cms_user` (`f_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务表';



# Dump of table cms_score_board
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_score_board`;

CREATE TABLE `cms_score_board` (
  `f_scoreboard_id` int(11) NOT NULL,
  `f_scoreitem_id` int(11) NOT NULL COMMENT '记分项',
  `f_ftype` varchar(50) NOT NULL COMMENT '外表标识',
  `f_fid` int(11) NOT NULL COMMENT '外表ID',
  `f_votes` int(11) NOT NULL DEFAULT '0' COMMENT '投票次数',
  PRIMARY KEY (`f_scoreboard_id`),
  KEY `fk_cms_scoreboard_scoreitem` (`f_scoreitem_id`),
  CONSTRAINT `fk_cms_scoreboard_scoreitem` FOREIGN KEY (`f_scoreitem_id`) REFERENCES `cms_score_item` (`f_scoreitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='计分牌表';

LOCK TABLES `cms_score_board` WRITE;
/*!40000 ALTER TABLE `cms_score_board` DISABLE KEYS */;

INSERT INTO `cms_score_board` (`f_scoreboard_id`, `f_scoreitem_id`, `f_ftype`, `f_fid`, `f_votes`)
VALUES
	(1,1,'InfoScore',97,1),
	(2,1,'InfoScore',28,1),
	(3,13,'InfoScore',94,1),
	(4,11,'InfoScore',95,1),
	(5,13,'InfoScore',93,1),
	(6,2,'InfoScore',55,1),
	(7,12,'InfoScore',93,1),
	(8,10,'InfoScore',98,1),
	(9,13,'InfoScore',97,1),
	(10,3,'InfoScore',87,1),
	(11,4,'InfoScore',87,1),
	(12,5,'InfoScore',28,1);

/*!40000 ALTER TABLE `cms_score_board` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_score_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_score_group`;

CREATE TABLE `cms_score_group` (
  `f_scoregroup_id` int(11) NOT NULL,
  `f_site_id` int(11) NOT NULL COMMENT '站点',
  `f_name` varchar(100) NOT NULL COMMENT '名称',
  `f_number` varchar(100) DEFAULT NULL COMMENT '代码',
  `f_description` varchar(255) DEFAULT NULL COMMENT '描述',
  `f_seq` int(11) NOT NULL DEFAULT '2147483647' COMMENT '排序',
  PRIMARY KEY (`f_scoregroup_id`),
  KEY `fk_cms_scoregroup_site` (`f_site_id`),
  CONSTRAINT `fk_cms_scoregroup_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='计分组表';

LOCK TABLES `cms_score_group` WRITE;
/*!40000 ALTER TABLE `cms_score_group` DISABLE KEYS */;

INSERT INTO `cms_score_group` (`f_scoregroup_id`, `f_site_id`, `f_name`, `f_number`, `f_description`, `f_seq`)
VALUES
	(1,1,'心情评分','mood',NULL,0),
	(2,1,'星级评分','start',NULL,1);

/*!40000 ALTER TABLE `cms_score_group` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_score_item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_score_item`;

CREATE TABLE `cms_score_item` (
  `f_scoreitem_id` int(11) NOT NULL,
  `f_scoregroup_id` int(11) NOT NULL COMMENT '计分组',
  `f_site_id` int(11) NOT NULL COMMENT '站点',
  `f_name` varchar(100) NOT NULL COMMENT '名称',
  `f_score` int(11) NOT NULL DEFAULT '1' COMMENT '分值',
  `f_icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `f_seq` int(11) NOT NULL DEFAULT '2147483647' COMMENT '排序',
  PRIMARY KEY (`f_scoreitem_id`),
  KEY `fk_cms_scoreitem_scoregroup` (`f_scoregroup_id`),
  KEY `fk_cms_scoreitem_site` (`f_site_id`),
  CONSTRAINT `fk_cms_scoreitem_scoregroup` FOREIGN KEY (`f_scoregroup_id`) REFERENCES `cms_score_group` (`f_scoregroup_id`),
  CONSTRAINT `fk_cms_scoreitem_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='计分项表';

LOCK TABLES `cms_score_item` WRITE;
/*!40000 ALTER TABLE `cms_score_item` DISABLE KEYS */;

INSERT INTO `cms_score_item` (`f_scoreitem_id`, `f_scoregroup_id`, `f_site_id`, `f_name`, `f_score`, `f_icon`, `f_seq`)
VALUES
	(1,1,1,'感动',1,'/images/mood/0.gif',0),
	(2,1,1,'路过',1,'/images/mood/1.gif',1),
	(3,1,1,'高兴',1,'/images/mood/2.gif',2),
	(4,1,1,'难过',1,'/images/mood/3.gif',3),
	(5,1,1,'搞笑',1,'/images/mood/4.gif',4),
	(6,1,1,'无聊',1,'/images/mood/5.gif',5),
	(7,1,1,'愤怒',1,'/images/mood/6.gif',6),
	(8,1,1,'同情',1,'/images/mood/7.gif',7),
	(9,2,1,'一星',1,NULL,0),
	(10,2,1,'二星',2,NULL,1),
	(11,2,1,'三星',3,NULL,2),
	(12,2,1,'四星',4,NULL,3),
	(13,2,1,'五星',5,NULL,4);

/*!40000 ALTER TABLE `cms_score_item` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_sensitive_word
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_sensitive_word`;

CREATE TABLE `cms_sensitive_word` (
  `f_sensitiveword_id` int(11) NOT NULL,
  `f_name` varchar(100) NOT NULL COMMENT '敏感词',
  `f_replacement` varchar(100) DEFAULT NULL COMMENT '替换词',
  `f_status` int(11) NOT NULL DEFAULT '0' COMMENT '状态(0:启用,1:禁用)',
  PRIMARY KEY (`f_sensitiveword_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='敏感词表';



# Dump of table cms_site
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_site`;

CREATE TABLE `cms_site` (
  `f_site_id` int(11) NOT NULL,
  `f_global_id` int(11) NOT NULL COMMENT '全局',
  `f_org_id` int(11) NOT NULL COMMENT '组织',
  `f_html_publishpoint_id` int(11) NOT NULL COMMENT 'HTML发布点',
  `f_parent_id` int(11) DEFAULT NULL COMMENT '上级站点',
  `f_name` varchar(100) NOT NULL COMMENT '名称',
  `f_number` varchar(100) NOT NULL COMMENT '代码',
  `f_full_name` varchar(100) DEFAULT NULL COMMENT '完整名称',
  `f_no_picture` varchar(255) NOT NULL DEFAULT '/img/no_picture.jpg' COMMENT '暂无图片',
  `f_template_theme` varchar(100) NOT NULL DEFAULT 'default' COMMENT '模板主题',
  `f_domain` varchar(100) NOT NULL DEFAULT 'localhost' COMMENT '域名',
  `f_is_identify_domain` char(1) NOT NULL DEFAULT '0' COMMENT '是否识别域名',
  `f_is_static_home` char(1) NOT NULL DEFAULT '0' COMMENT '是否静态首页',
  `f_is_def` char(1) NOT NULL DEFAULT '0' COMMENT '是否默认站点',
  `f_status` int(11) NOT NULL DEFAULT '0' COMMENT '状态(0:正常,1:禁用)',
  `f_tree_number` varchar(100) NOT NULL DEFAULT '0000' COMMENT '树编码',
  `f_tree_level` int(11) NOT NULL DEFAULT '0' COMMENT '树级别',
  `f_tree_max` varchar(10) NOT NULL DEFAULT '0000' COMMENT '树子节点最大编码',
  PRIMARY KEY (`f_site_id`),
  UNIQUE KEY `ak_number` (`f_number`),
  KEY `fk_cms_site_global` (`f_global_id`),
  KEY `fk_cms_site_org` (`f_org_id`),
  KEY `fk_cms_site_parent` (`f_parent_id`),
  KEY `fk_cms_site_publishpint` (`f_html_publishpoint_id`),
  CONSTRAINT `fk_cms_site_global` FOREIGN KEY (`f_global_id`) REFERENCES `cms_global` (`f_global_id`),
  CONSTRAINT `fk_cms_site_org` FOREIGN KEY (`f_org_id`) REFERENCES `cms_org` (`f_org_id`),
  CONSTRAINT `fk_cms_site_parent` FOREIGN KEY (`f_parent_id`) REFERENCES `cms_site` (`f_site_id`),
  CONSTRAINT `fk_cms_site_publishpint` FOREIGN KEY (`f_html_publishpoint_id`) REFERENCES `cms_publish_point` (`f_publishpoint_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='站点表';

LOCK TABLES `cms_site` WRITE;
/*!40000 ALTER TABLE `cms_site` DISABLE KEYS */;

INSERT INTO `cms_site` (`f_site_id`, `f_global_id`, `f_org_id`, `f_html_publishpoint_id`, `f_parent_id`, `f_name`, `f_number`, `f_full_name`, `f_no_picture`, `f_template_theme`, `f_domain`, `f_is_identify_domain`, `f_is_static_home`, `f_is_def`, `f_status`, `f_tree_number`, `f_tree_level`, `f_tree_max`)
VALUES
	(1,1,1,2,NULL,'国家级新疆准东经济技术开发区官网','1','国家级新疆准东经济技术开发区官网','/images/no_picture.jpg','custom1','localhost','1','0','1',0,'0000',0,'0000');

/*!40000 ALTER TABLE `cms_site` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_site_clob
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_site_clob`;

CREATE TABLE `cms_site_clob` (
  `f_site_id` int(11) NOT NULL,
  `f_key` varchar(50) NOT NULL COMMENT '键',
  `f_value` longtext COMMENT '值',
  KEY `fk_cms_siteclob_site` (`f_site_id`),
  CONSTRAINT `fk_cms_siteclob_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='站点大字段表';



# Dump of table cms_site_custom
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_site_custom`;

CREATE TABLE `cms_site_custom` (
  `f_site_id` int(11) NOT NULL,
  `f_key` varchar(50) NOT NULL COMMENT '键',
  `f_value` varchar(2000) DEFAULT NULL COMMENT '值',
  KEY `fk_cms_sitecustom_site` (`f_site_id`),
  CONSTRAINT `fk_cms_sitecustom_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='站点自定义表';

LOCK TABLES `cms_site_custom` WRITE;
/*!40000 ALTER TABLE `cms_site_custom` DISABLE KEYS */;

INSERT INTO `cms_site_custom` (`f_site_id`, `f_key`, `f_value`)
VALUES
	(1,'company','卡拉麦里'),
	(1,'icp','新ICP备12001124号'),
	(1,'sys_watermark_mode','0'),
	(1,'sys_watermark_alpha','50'),
	(1,'sys_watermark_padding_x','20'),
	(1,'sys_watermark_image','/watermark.png'),
	(1,'sys_watermark_min_height','300'),
	(1,'sys_watermark_padding_y','20'),
	(1,'sys_watermark_position','9'),
	(1,'sys_watermark_min_width','300');

/*!40000 ALTER TABLE `cms_site_custom` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_special
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_special`;

CREATE TABLE `cms_special` (
  `f_special_id` int(11) NOT NULL,
  `f_creator_id` int(11) NOT NULL COMMENT '创建者',
  `f_model_id` int(11) NOT NULL COMMENT '模型',
  `f_site_id` int(11) NOT NULL COMMENT '站点',
  `f_speccate_id` int(11) NOT NULL COMMENT '专题类别',
  `f_creation_date` datetime NOT NULL COMMENT '创建日期',
  `f_title` varchar(150) NOT NULL COMMENT '标题',
  `f_meta_keywords` varchar(150) DEFAULT NULL COMMENT '关键字',
  `f_meta_description` varchar(255) DEFAULT NULL COMMENT '描述',
  `f_special_template` varchar(255) DEFAULT NULL COMMENT '专题模板',
  `f_small_image` varchar(255) DEFAULT NULL COMMENT '小图',
  `f_large_image` varchar(255) DEFAULT NULL COMMENT '大图',
  `f_video` varchar(255) DEFAULT NULL COMMENT '视频',
  `f_video_name` varchar(255) DEFAULT NULL COMMENT '视频名称',
  `f_refers` int(11) NOT NULL DEFAULT '0' COMMENT '文档数量',
  `f_views` int(11) NOT NULL DEFAULT '0' COMMENT '浏览总数',
  `f_is_with_image` char(1) NOT NULL DEFAULT '0' COMMENT '是否有图片',
  `f_is_recommend` char(1) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `f_video_length` bigint(20) DEFAULT NULL COMMENT '视频长度',
  `f_video_time` varchar(100) DEFAULT NULL COMMENT '视频时间',
  PRIMARY KEY (`f_special_id`),
  KEY `fk_cms_special_creator` (`f_creator_id`),
  KEY `fk_cms_special_model` (`f_model_id`),
  KEY `fk_cms_special_site` (`f_site_id`),
  KEY `fk_cms_special_speccate` (`f_speccate_id`),
  CONSTRAINT `fk_cms_special_creator` FOREIGN KEY (`f_creator_id`) REFERENCES `cms_user` (`f_user_id`),
  CONSTRAINT `fk_cms_special_model` FOREIGN KEY (`f_model_id`) REFERENCES `cms_model` (`f_model_id`),
  CONSTRAINT `fk_cms_special_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`),
  CONSTRAINT `fk_cms_special_speccate` FOREIGN KEY (`f_speccate_id`) REFERENCES `cms_special_category` (`f_speccate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专题表';

LOCK TABLES `cms_special` WRITE;
/*!40000 ALTER TABLE `cms_special` DISABLE KEYS */;

INSERT INTO `cms_special` (`f_special_id`, `f_creator_id`, `f_model_id`, `f_site_id`, `f_speccate_id`, `f_creation_date`, `f_title`, `f_meta_keywords`, `f_meta_description`, `f_special_template`, `f_small_image`, `f_large_image`, `f_video`, `f_video_name`, `f_refers`, `f_views`, `f_is_with_image`, `f_is_recommend`, `f_video_length`, `f_video_time`)
VALUES
	(1,1,15,1,1,'2013-02-28 17:10:02','论道中国',NULL,NULL,NULL,'http://demo.jspxcms.com/uploads/1/image/public/201303/20130318030529_8vfvns.jpg',NULL,NULL,NULL,4,0,'0','0',NULL,NULL),
	(2,1,15,1,1,'2013-02-27 17:10:53','问题与建议',NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,0,'0','0',NULL,NULL),
	(8,1,15,1,1,'2013-03-19 02:57:45','食品安全报告',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'0','0',NULL,NULL),
	(9,1,15,1,2,'2013-03-19 02:58:18','名家专论',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'0','0',NULL,NULL),
	(10,1,15,1,2,'2013-03-19 02:58:35','资本主义危机纵横谈',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'0','0',NULL,NULL),
	(11,1,15,1,3,'2013-03-19 03:00:11','热钱透视',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'0','0',NULL,NULL),
	(12,1,15,1,3,'2013-03-19 03:00:39','能源观察',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'0','0',NULL,NULL),
	(13,1,15,1,4,'2013-03-19 03:01:02','核武透明度',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'0','1',NULL,NULL);

/*!40000 ALTER TABLE `cms_special` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_special_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_special_category`;

CREATE TABLE `cms_special_category` (
  `f_speccate_id` int(11) NOT NULL,
  `f_site_id` int(11) NOT NULL COMMENT '站点',
  `f_name` varchar(50) NOT NULL COMMENT '名称',
  `f_seq` int(11) NOT NULL DEFAULT '2147483647' COMMENT '排序',
  `f_views` int(11) NOT NULL DEFAULT '0' COMMENT '浏览总数',
  `f_meta_keywords` varchar(150) DEFAULT NULL COMMENT '关键字',
  `f_meta_description` varchar(255) DEFAULT NULL COMMENT '描述',
  `f_creation_date` datetime NOT NULL COMMENT '创建日期',
  PRIMARY KEY (`f_speccate_id`),
  KEY `fk_cms_speccategory_site` (`f_site_id`),
  CONSTRAINT `fk_cms_speccategory_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专题类别表';

LOCK TABLES `cms_special_category` WRITE;
/*!40000 ALTER TABLE `cms_special_category` DISABLE KEYS */;

INSERT INTO `cms_special_category` (`f_speccate_id`, `f_site_id`, `f_name`, `f_seq`, `f_views`, `f_meta_keywords`, `f_meta_description`, `f_creation_date`)
VALUES
	(1,1,'中国观点',2147483647,0,NULL,NULL,'2013-02-28 17:09:49'),
	(2,1,'国际观点',2147483647,0,NULL,NULL,'2013-03-18 02:22:45'),
	(3,1,'财经观点',2147483647,0,NULL,NULL,'2013-03-18 02:58:00'),
	(4,1,'军事观点',2147483647,0,NULL,NULL,'2013-03-18 02:58:52');

/*!40000 ALTER TABLE `cms_special_category` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_special_clob
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_special_clob`;

CREATE TABLE `cms_special_clob` (
  `f_special_id` int(11) NOT NULL,
  `f_key` varchar(50) NOT NULL COMMENT '键',
  `f_value` longtext COMMENT '值',
  KEY `fk_cms_specialclob_special` (`f_special_id`),
  CONSTRAINT `fk_cms_specialclob_special` FOREIGN KEY (`f_special_id`) REFERENCES `cms_special` (`f_special_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专题大字段表';



# Dump of table cms_special_custom
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_special_custom`;

CREATE TABLE `cms_special_custom` (
  `f_special_id` int(11) NOT NULL,
  `f_key` varchar(50) DEFAULT NULL COMMENT '键',
  `f_value` varchar(2000) DEFAULT NULL COMMENT '值',
  KEY `fk_cms_specialcustom_special` (`f_special_id`),
  CONSTRAINT `fk_cms_specialcustom_special` FOREIGN KEY (`f_special_id`) REFERENCES `cms_special` (`f_special_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专题自定义表';



# Dump of table cms_special_file
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_special_file`;

CREATE TABLE `cms_special_file` (
  `f_special_id` int(11) NOT NULL,
  `f_name` varchar(150) NOT NULL COMMENT '文件名称',
  `f_length` bigint(20) NOT NULL DEFAULT '0' COMMENT '文件长度',
  `f_file` varchar(255) NOT NULL COMMENT '文件地址',
  `f_index` int(11) NOT NULL DEFAULT '0' COMMENT '文件序号',
  `f_downloads` int(11) NOT NULL DEFAULT '0' COMMENT '下载次数',
  KEY `fk_cms_specialfile_special` (`f_special_id`),
  CONSTRAINT `fk_cms_specialfile_special` FOREIGN KEY (`f_special_id`) REFERENCES `cms_special` (`f_special_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专题附件集表';



# Dump of table cms_special_image
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_special_image`;

CREATE TABLE `cms_special_image` (
  `f_special_id` int(11) NOT NULL,
  `f_name` varchar(150) DEFAULT NULL COMMENT '图片名称',
  `f_image` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `f_index` int(11) NOT NULL DEFAULT '0' COMMENT '图片序号',
  `f_text` longtext COMMENT '图片正文',
  KEY `fk_cms_specialimage_special` (`f_special_id`),
  CONSTRAINT `fk_cms_specialimage_special` FOREIGN KEY (`f_special_id`) REFERENCES `cms_special` (`f_special_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专题图片集表';



# Dump of table cms_tag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_tag`;

CREATE TABLE `cms_tag` (
  `f_tag_id` int(11) NOT NULL,
  `f_site_id` int(11) NOT NULL COMMENT '站点',
  `f_name` varchar(50) NOT NULL COMMENT '名称',
  `f_creation_date` datetime NOT NULL COMMENT '创建日期',
  `f_refers` int(11) NOT NULL DEFAULT '0' COMMENT '文档数量',
  PRIMARY KEY (`f_tag_id`),
  KEY `fk_cms_tag_site` (`f_site_id`),
  CONSTRAINT `fk_cms_tag_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TAG表';

LOCK TABLES `cms_tag` WRITE;
/*!40000 ALTER TABLE `cms_tag` DISABLE KEYS */;

INSERT INTO `cms_tag` (`f_tag_id`, `f_site_id`, `f_name`, `f_creation_date`, `f_refers`)
VALUES
	(56,1,'中国','2013-03-11 12:00:12',3),
	(57,1,'美国','2013-03-11 12:00:12',1),
	(58,1,'中兴','2013-03-19 02:08:21',1),
	(59,1,'蒙古国','2013-03-19 02:08:21',1),
	(60,1,'反贪局','2013-03-19 02:08:21',1),
	(61,1,'逮捕','2013-03-19 02:08:21',1),
	(62,1,'金融危机','2013-03-19 02:08:58',1),
	(63,1,'苏联','2013-03-19 02:09:23',1),
	(64,1,'军火','2013-03-19 02:09:23',1),
	(65,1,'贿赂','2013-03-19 02:09:23',1),
	(66,1,'罗斯福','2013-03-19 02:09:23',1),
	(67,1,'可转债','2013-03-19 02:10:00',1),
	(68,1,'违约','2013-03-19 02:10:00',1),
	(69,1,'首家','2013-03-19 02:10:00',1),
	(70,1,'公司债','2013-03-19 02:10:00',1),
	(71,1,'英国','2013-03-19 02:27:44',1),
	(72,1,'常规武器','2013-03-19 02:27:44',1),
	(73,1,'出口国','2013-03-19 02:27:44',1);

/*!40000 ALTER TABLE `cms_tag` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_task
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_task`;

CREATE TABLE `cms_task` (
  `f_task_id` int(11) NOT NULL,
  `f_user_id` int(11) NOT NULL,
  `f_site_id` int(11) NOT NULL,
  `f_name` varchar(150) NOT NULL COMMENT '名称',
  `f_description` longtext COMMENT '描述',
  `f_begin_time` datetime NOT NULL COMMENT '开始时间',
  `f_end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `f_total` int(11) NOT NULL DEFAULT '0' COMMENT '总完成数量',
  `f_type` int(11) NOT NULL DEFAULT '1' COMMENT '类型(1:栏目HTML生成,2:文档HTML生成,3:全文索引生成)',
  `f_status` int(11) NOT NULL DEFAULT '0' COMMENT '状态(0:运行中,1:完成,2:中止,3:停止)',
  PRIMARY KEY (`f_task_id`),
  KEY `fk_cms_task_site` (`f_site_id`),
  KEY `fk_cms_task_user` (`f_user_id`),
  CONSTRAINT `fk_cms_task_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`),
  CONSTRAINT `fk_cms_task_user` FOREIGN KEY (`f_user_id`) REFERENCES `cms_user` (`f_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务表';

LOCK TABLES `cms_task` WRITE;
/*!40000 ALTER TABLE `cms_task` DISABLE KEYS */;

INSERT INTO `cms_task` (`f_task_id`, `f_user_id`, `f_site_id`, `f_name`, `f_description`, `f_begin_time`, `f_end_time`, `f_total`, `f_type`, `f_status`)
VALUES
	(15,1,1,'Node: 新闻',NULL,'2015-06-29 20:26:14','2015-06-29 20:26:14',0,3,1);

/*!40000 ALTER TABLE `cms_task` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_user`;

CREATE TABLE `cms_user` (
  `f_user_id` int(11) NOT NULL,
  `f_org_id` int(11) NOT NULL COMMENT '组织',
  `f_membergroup_id` int(11) NOT NULL COMMENT '会员组',
  `f_username` varchar(50) NOT NULL COMMENT '用户名',
  `f_password` varchar(128) DEFAULT NULL COMMENT '密码',
  `f_salt` varchar(32) DEFAULT NULL COMMENT '加密混淆码',
  `f_email` varchar(100) DEFAULT NULL COMMENT '电子邮箱',
  `f_mobile` varchar(100) DEFAULT NULL COMMENT '手机',
  `f_real_name` varchar(100) DEFAULT NULL COMMENT '用户实名',
  `f_gender` char(1) DEFAULT NULL COMMENT '性别',
  `f_birth_date` datetime DEFAULT NULL COMMENT '出生年月',
  `f_validation_type` varchar(50) DEFAULT NULL COMMENT '验证类型(用户激活,重置密码,邮箱激活)',
  `f_validation_key` varchar(100) DEFAULT NULL COMMENT '验证KEY',
  `f_rank` int(11) NOT NULL DEFAULT '999' COMMENT '等级',
  `f_type` int(11) NOT NULL DEFAULT '0' COMMENT '类型(0:会员,1:管理员)',
  `f_status` int(11) NOT NULL DEFAULT '0' COMMENT '状态(0:正常,1:锁定,2:待验证)',
  PRIMARY KEY (`f_user_id`),
  UNIQUE KEY `ak_username` (`f_username`),
  KEY `fk_cms_user_membergroup` (`f_membergroup_id`),
  KEY `fk_cms_user_org` (`f_org_id`),
  CONSTRAINT `fk_cms_user_membergroup` FOREIGN KEY (`f_membergroup_id`) REFERENCES `cms_member_group` (`f_membergroup_id`),
  CONSTRAINT `fk_cms_user_org` FOREIGN KEY (`f_org_id`) REFERENCES `cms_org` (`f_org_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

LOCK TABLES `cms_user` WRITE;
/*!40000 ALTER TABLE `cms_user` DISABLE KEYS */;

INSERT INTO `cms_user` (`f_user_id`, `f_org_id`, `f_membergroup_id`, `f_username`, `f_password`, `f_salt`, `f_email`, `f_mobile`, `f_real_name`, `f_gender`, `f_birth_date`, `f_validation_type`, `f_validation_key`, `f_rank`, `f_type`, `f_status`)
VALUES
	(0,1,1,'anonymous',NULL,NULL,'atarm@163.com',NULL,NULL,'M',NULL,NULL,NULL,1,1,1),
	(1,1,1,'admin','924fdb5950b13ee97c52087043fbd6ea8e512e9e','5d109bfcc2430d0b',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0);

/*!40000 ALTER TABLE `cms_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_user_detail
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_user_detail`;

CREATE TABLE `cms_user_detail` (
  `f_user_id` int(11) NOT NULL,
  `f_validation_date` datetime DEFAULT NULL COMMENT '验证生成时间',
  `f_validation_value` varchar(255) DEFAULT NULL COMMENT '验证值',
  `f_login_error_date` datetime DEFAULT NULL COMMENT '登录错误时间',
  `f_login_error_count` int(11) NOT NULL DEFAULT '0' COMMENT '登录错误次数',
  `f_prev_login_date` datetime DEFAULT NULL COMMENT '上次登录日期',
  `f_prev_login_ip` varchar(100) DEFAULT NULL COMMENT '上次登录IP',
  `f_last_login_date` datetime DEFAULT NULL COMMENT '最后登录日期',
  `f_last_login_ip` varchar(100) DEFAULT NULL COMMENT '最后登录IP',
  `f_creation_date` datetime NOT NULL COMMENT '加入日期',
  `f_creation_ip` varchar(100) NOT NULL COMMENT '加入IP',
  `f_logins` int(11) NOT NULL DEFAULT '0' COMMENT '登录次数',
  `f_avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `f_bio` varchar(255) DEFAULT NULL COMMENT '自我介绍',
  `f_come_from` varchar(100) DEFAULT NULL COMMENT '来自',
  `f_qq` varchar(100) DEFAULT NULL COMMENT 'QQ',
  `f_msn` varchar(100) DEFAULT NULL COMMENT 'MSN',
  `f_weixin` varchar(100) DEFAULT NULL COMMENT '微信',
  PRIMARY KEY (`f_user_id`),
  CONSTRAINT `fk_cms_userdetail_user` FOREIGN KEY (`f_user_id`) REFERENCES `cms_user` (`f_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户详细信息表';

LOCK TABLES `cms_user_detail` WRITE;
/*!40000 ALTER TABLE `cms_user_detail` DISABLE KEYS */;

INSERT INTO `cms_user_detail` (`f_user_id`, `f_validation_date`, `f_validation_value`, `f_login_error_date`, `f_login_error_count`, `f_prev_login_date`, `f_prev_login_ip`, `f_last_login_date`, `f_last_login_ip`, `f_creation_date`, `f_creation_ip`, `f_logins`, `f_avatar`, `f_bio`, `f_come_from`, `f_qq`, `f_msn`, `f_weixin`)
VALUES
	(0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-03-09 22:18:56','127.0.0.1',0,NULL,NULL,NULL,'22807465',NULL,NULL),
	(1,NULL,NULL,NULL,0,'2015-07-04 00:02:10','0:0:0:0:0:0:0:1','2015-07-04 10:08:44','0:0:0:0:0:0:0:1','2013-02-21 20:59:27','127.0.0.1',306,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `cms_user_detail` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_user_membergroup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_user_membergroup`;

CREATE TABLE `cms_user_membergroup` (
  `f_usermgroup_id` int(11) NOT NULL,
  `f_user_id` int(11) NOT NULL,
  `f_membergroup_id` int(11) NOT NULL,
  `f_group_index` int(11) NOT NULL DEFAULT '0' COMMENT '会员组排列顺序',
  PRIMARY KEY (`f_usermgroup_id`),
  KEY `fk_cms_usermgroup_mgroup` (`f_membergroup_id`),
  KEY `fk_cms_usermgroup_user` (`f_user_id`),
  CONSTRAINT `fk_cms_usermgroup_mgroup` FOREIGN KEY (`f_membergroup_id`) REFERENCES `cms_member_group` (`f_membergroup_id`),
  CONSTRAINT `fk_cms_usermgroup_user` FOREIGN KEY (`f_user_id`) REFERENCES `cms_user` (`f_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与会员组关联表';

LOCK TABLES `cms_user_membergroup` WRITE;
/*!40000 ALTER TABLE `cms_user_membergroup` DISABLE KEYS */;

INSERT INTO `cms_user_membergroup` (`f_usermgroup_id`, `f_user_id`, `f_membergroup_id`, `f_group_index`)
VALUES
	(2,1,1,0),
	(6,0,1,0);

/*!40000 ALTER TABLE `cms_user_membergroup` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_user_org
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_user_org`;

CREATE TABLE `cms_user_org` (
  `f_userorg_id` int(11) NOT NULL,
  `f_user_id` int(11) NOT NULL,
  `f_org_id` int(11) NOT NULL,
  `f_org_index` int(11) NOT NULL DEFAULT '0' COMMENT '组织顺序',
  PRIMARY KEY (`f_userorg_id`),
  KEY `fk_cms_userorg_org` (`f_org_id`),
  KEY `fk_cms_userorg_user` (`f_user_id`),
  CONSTRAINT `fk_cms_userorg_org` FOREIGN KEY (`f_org_id`) REFERENCES `cms_org` (`f_org_id`),
  CONSTRAINT `fk_cms_userorg_user` FOREIGN KEY (`f_user_id`) REFERENCES `cms_user` (`f_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与组织关联表';

LOCK TABLES `cms_user_org` WRITE;
/*!40000 ALTER TABLE `cms_user_org` DISABLE KEYS */;

INSERT INTO `cms_user_org` (`f_userorg_id`, `f_user_id`, `f_org_id`, `f_org_index`)
VALUES
	(2,1,1,0),
	(6,0,1,0);

/*!40000 ALTER TABLE `cms_user_org` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_user_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_user_role`;

CREATE TABLE `cms_user_role` (
  `f_userrole_id` int(11) NOT NULL,
  `f_user_id` int(11) NOT NULL,
  `f_role_id` int(11) NOT NULL,
  `f_role_index` int(11) NOT NULL DEFAULT '0' COMMENT '角色顺序',
  PRIMARY KEY (`f_userrole_id`),
  KEY `fk_cms_userrole_role` (`f_role_id`),
  KEY `fk_cms_userrole_user` (`f_user_id`),
  CONSTRAINT `fk_cms_userrole_role` FOREIGN KEY (`f_role_id`) REFERENCES `cms_role` (`f_role_id`),
  CONSTRAINT `fk_cms_userrole_user` FOREIGN KEY (`f_user_id`) REFERENCES `cms_user` (`f_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与角色关联表';

LOCK TABLES `cms_user_role` WRITE;
/*!40000 ALTER TABLE `cms_user_role` DISABLE KEYS */;

INSERT INTO `cms_user_role` (`f_userrole_id`, `f_user_id`, `f_role_id`, `f_role_index`)
VALUES
	(1,1,1,0);

/*!40000 ALTER TABLE `cms_user_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_visit_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_visit_log`;

CREATE TABLE `cms_visit_log` (
  `f_visitlog_id` int(11) NOT NULL,
  `f_site_id` int(11) NOT NULL,
  `f_url` varchar(255) NOT NULL COMMENT '页面URL',
  `f_referrer` varchar(255) DEFAULT NULL COMMENT '来源URL',
  `f_ip` varchar(100) DEFAULT NULL COMMENT 'IP地址',
  `f_ip_date` varchar(100) DEFAULT NULL COMMENT 'IP地址+日期',
  `f_cookie` varchar(100) DEFAULT NULL COMMENT 'COOKIE值',
  `f_cookie_date` varchar(100) DEFAULT NULL COMMENT 'COOKIE值+日期',
  `f_date` char(10) NOT NULL COMMENT '日期（字符串格式）',
  `f_time` datetime NOT NULL COMMENT '访问时间',
  PRIMARY KEY (`f_visitlog_id`),
  KEY `fk_cms_visitlog_site` (`f_site_id`),
  CONSTRAINT `fk_cms_visitlog_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='访问日志表';

LOCK TABLES `cms_visit_log` WRITE;
/*!40000 ALTER TABLE `cms_visit_log` DISABLE KEYS */;

INSERT INTO `cms_visit_log` (`f_visitlog_id`, `f_site_id`, `f_url`, `f_referrer`, `f_ip`, `f_ip_date`, `f_cookie`, `f_cookie_date`, `f_date`, `f_time`)
VALUES
	(1,1,'http://localhost:8080/','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-21','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-21','2014-02-21','2014-02-21 12:15:50'),
	(2,1,'http://localhost:8080/',NULL,'0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-21','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-21','2014-02-21','2014-02-21 15:37:57'),
	(3,1,'http://localhost:8080/','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-21','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-21','2014-02-21','2014-02-21 15:38:15'),
	(4,1,'http://localhost:8080/node/36.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-21','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-21','2014-02-21','2014-02-21 15:38:16'),
	(5,1,'http://localhost:8080/node/48.jspx','http://localhost:8080/node/36.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-21','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-21','2014-02-21','2014-02-21 15:38:20'),
	(6,1,'http://localhost:8080/node/36.jspx','http://localhost:8080/node/48.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-21','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-21','2014-02-21','2014-02-21 15:38:39'),
	(7,1,'http://localhost:8080/node/42.jspx','http://localhost:8080/node/36.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-21','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-21','2014-02-21','2014-02-21 15:40:10'),
	(8,1,'http://localhost:8080/','http://localhost:8080/cmscp/index.do','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-21','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-21','2014-02-21','2014-02-21 15:44:29'),
	(9,1,'http://localhost:8080/info/71.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-21','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-21','2014-02-21','2014-02-21 15:44:34'),
	(10,1,'http://localhost:8080/','http://localhost:8080/cmscp/index.do','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-21','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-21','2014-02-21','2014-02-21 15:55:48'),
	(11,1,'http://localhost:8080/','http://localhost:8080/cmscp/index.do','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-21','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-21','2014-02-21','2014-02-21 15:55:50'),
	(12,1,'http://localhost:8080/info/71.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-21','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-21','2014-02-21','2014-02-21 15:55:53'),
	(13,1,'http://localhost:8080/info/71.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-21','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-21','2014-02-21','2014-02-21 15:55:57'),
	(14,1,'http://localhost:8080/info/35.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-21','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-21','2014-02-21','2014-02-21 15:56:06'),
	(15,1,'http://localhost:8080/','http://localhost:8080/cmscp/index.do','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-21','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-21','2014-02-21','2014-02-21 15:57:43'),
	(16,1,'http://localhost:8080/node/39.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-21','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-21','2014-02-21','2014-02-21 15:57:46'),
	(17,1,'http://localhost:8080/node/52.jspx','http://localhost:8080/node/39.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-21','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-21','2014-02-21','2014-02-21 15:57:48'),
	(18,1,'http://localhost:8080/node/36.jspx','http://localhost:8080/info/97.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-21','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-21','2014-02-21','2014-02-21 16:02:53'),
	(19,1,'http://localhost:8080/info/28.jspx','http://localhost:8080/node/36.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-21','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-21','2014-02-21','2014-02-21 16:02:56'),
	(20,1,'http://localhost:8080/node/48.jspx','http://localhost:8080/node/52.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-21','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-21','2014-02-21','2014-02-21 16:12:47'),
	(21,1,'http://localhost:8080/',NULL,'0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 11:58:02'),
	(22,1,'http://localhost:8080/node/36.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 12:01:34'),
	(23,1,'http://localhost:8080/node/42.jspx','http://localhost:8080/node/36.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 12:04:16'),
	(24,1,'http://localhost:8080/info/28.jspx','http://localhost:8080/cmscp/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 12:04:56'),
	(25,1,'http://localhost:8080/node/36.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 12:05:49'),
	(26,1,'http://localhost:8080/info/28.jspx','http://localhost:8080/node/36.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 12:05:51'),
	(27,1,'http://localhost:8080/node/48.jspx','http://localhost:8080/node/36.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 12:06:04'),
	(28,1,'http://localhost:8080/',NULL,'0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 12:06:23'),
	(29,1,'http://localhost:8080/node/48.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 12:06:25'),
	(30,1,'http://localhost:8080/','http://localhost:8080/info/79.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 12:11:42'),
	(31,1,'http://localhost:8080/','http://localhost:8080/login.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 12:11:48'),
	(32,1,'http://localhost:8080/my.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 12:11:50'),
	(33,1,'http://localhost:8080/my.jspx','http://localhost:8080/login.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','08cc3f05b9a74064a856f3c24655c1a7','08cc3f05b9a74064a856f3c24655c1a72014-02-22','2014-02-22','2014-02-22 12:12:03'),
	(34,1,'http://localhost:8080/my.jspx','http://localhost:8080/login.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','08cc3f05b9a74064a856f3c24655c1a7','08cc3f05b9a74064a856f3c24655c1a72014-02-22','2014-02-22','2014-02-22 12:12:06'),
	(35,1,'http://localhost:8080/my.jspx','http://localhost:8080/login.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','08cc3f05b9a74064a856f3c24655c1a7','08cc3f05b9a74064a856f3c24655c1a72014-02-22','2014-02-22','2014-02-22 12:12:07'),
	(36,1,'http://localhost:8080/','http://localhost:8080/my.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 12:25:00'),
	(37,1,'http://localhost:8080/node/51.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 12:39:27'),
	(38,1,'http://localhost:8080/info/87.jspx','http://localhost:8080/node/51.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 12:39:31'),
	(39,1,'http://localhost:8080/node/41.jspx','http://localhost:8080/node/51.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 12:39:40'),
	(40,1,'http://localhost:8080/info/55.jspx','http://localhost:8080/node/41.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 12:39:42'),
	(41,1,'http://localhost:8080/node/40.jspx','http://localhost:8080/node/41.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 12:39:46'),
	(42,1,'http://localhost:8080/info/50.jspx','http://localhost:8080/node/40.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 12:39:48'),
	(43,1,'http://localhost:8080/node/39.jspx','http://localhost:8080/node/40.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 12:39:52'),
	(44,1,'http://localhost:8080/node/52.jspx','http://localhost:8080/node/39.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 12:39:54'),
	(45,1,'http://localhost:8080/info/98.jspx','http://localhost:8080/node/52.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 12:39:56'),
	(46,1,'http://localhost:8080/node/49.jspx','http://localhost:8080/node/52.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 12:40:04'),
	(47,1,'http://localhost:8080/info/93.jspx','http://localhost:8080/node/49.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 12:40:06'),
	(48,1,'http://localhost:8080/info/83.jspx','http://localhost:8080/node/49.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 12:40:16'),
	(49,1,'http://localhost:8080/node/46.jspx','http://localhost:8080/node/49.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 12:40:24'),
	(50,1,'http://localhost:8080/info/69.jspx','http://localhost:8080/node/46.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 12:40:26'),
	(51,1,'http://localhost:8080/guestbook.jspx','http://localhost:8080/node/46.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 12:40:33'),
	(52,1,'http://localhost:8080/node/36.jspx','http://localhost:8080/guestbook.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 12:40:35'),
	(53,1,'http://localhost:8080/info/28.jspx','http://localhost:8080/node/36.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 12:40:38'),
	(54,1,'http://localhost:8080/info/28.jspx',NULL,'0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 12:40:51'),
	(55,1,'http://localhost:8080/info/28.jspx',NULL,'0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 12:41:00'),
	(56,1,'http://localhost:8080/node/48.jspx','http://localhost:8080/node/36.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 12:42:11'),
	(57,1,'http://localhost:8080/',NULL,'0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 17:22:34'),
	(58,1,'http://localhost:8080/node/48.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 17:22:35'),
	(59,1,'http://localhost:8080/','http://localhost:8080/login.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 17:23:38'),
	(60,1,'http://localhost:8080/my.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 17:23:40'),
	(61,1,'http://localhost:8080/my/profile.jspx','http://localhost:8080/login.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 17:50:07'),
	(62,1,'http://localhost:8080/my/password.jspx','http://localhost:8080/my/profile.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 17:50:10'),
	(63,1,'http://localhost:8080/my/email.jspx','http://localhost:8080/my/password.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 17:50:12'),
	(64,1,'http://localhost:8080/my/profile.jspx','http://localhost:8080/my/email.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 17:50:14'),
	(65,1,'http://localhost:8080/my.jspx','http://localhost:8080/my/profile.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 17:50:18'),
	(66,1,'http://localhost:8080/my/profile.jspx','http://localhost:8080/my.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 18:04:42'),
	(67,1,'http://localhost:8080/my/profile.jspx','http://localhost:8080/my/profile.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 18:04:44'),
	(68,1,'http://localhost:8080/my.jspx','http://localhost:8080/my/profile.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 18:05:09'),
	(69,1,'http://localhost:8080/my/profile.jspx','http://localhost:8080/my.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 18:05:58'),
	(70,1,'http://localhost:8080/my/profile.jspx','http://localhost:8080/my/profile.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 18:06:07'),
	(71,1,'http://localhost:8080/my/profile.jspx','http://localhost:8080/my/profile.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 18:06:20'),
	(72,1,'http://localhost:8080/my/profile.jspx','http://localhost:8080/my/profile.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 18:06:30'),
	(73,1,'http://localhost:8080/my/profile.jspx','http://localhost:8080/my/profile.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 18:06:31'),
	(74,1,'http://localhost:8080/my.jspx','http://localhost:8080/my/profile.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 18:06:46'),
	(75,1,'http://localhost:8080/my.jspx','http://localhost:8080/login.jspx;jsessionid=E8C2E57833F6D95EDDC1367CA476E6DD','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','08cc3f05b9a74064a856f3c24655c1a7','08cc3f05b9a74064a856f3c24655c1a72014-02-22','2014-02-22','2014-02-22 18:07:07'),
	(76,1,'http://localhost:8080/my.jspx','http://localhost:8080/my.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 18:07:31'),
	(77,1,'http://localhost:8080/my.jspx','http://localhost:8080/my.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 18:12:07'),
	(78,1,'http://localhost:8080/my.jspx','http://localhost:8080/my.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 18:12:12'),
	(79,1,'http://localhost:8080/my/profile.jspx','http://localhost:8080/my.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 18:12:14'),
	(80,1,'http://localhost:8080/my.jspx','http://localhost:8080/my/profile.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-22','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-22','2014-02-22','2014-02-22 18:12:17'),
	(81,1,'http://localhost:8080/',NULL,'0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-23','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-23','2014-02-23','2014-02-23 10:57:42'),
	(82,1,'http://localhost:8080/node/48.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-23','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-23','2014-02-23','2014-02-23 10:57:44'),
	(83,1,'http://localhost:8080/node/48.jspx','http://localhost:8080/info/80.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-23','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-23','2014-02-23','2014-02-23 11:26:47'),
	(84,1,'http://localhost:8080/node/48.jspx','http://localhost:8080/info/78.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-23','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-23','2014-02-23','2014-02-23 11:28:06'),
	(85,1,'http://localhost:8080/node/48.jspx','http://localhost:8080/info/80.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-23','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-23','2014-02-23','2014-02-23 11:28:18'),
	(86,1,'http://localhost:8080/node/48.jspx','http://localhost:8080/info/80.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-23','08cc3f05b9a74064a856f3c24655c1a7','08cc3f05b9a74064a856f3c24655c1a72014-02-23','2014-02-23','2014-02-23 11:28:27'),
	(87,1,'http://localhost:8080/node/48.jspx','http://localhost:8080/info/79.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-23','08cc3f05b9a74064a856f3c24655c1a7','08cc3f05b9a74064a856f3c24655c1a72014-02-23','2014-02-23','2014-02-23 11:28:31'),
	(88,1,'http://localhost:8080/node/48.jspx','http://localhost:8080/info/78.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-23','08cc3f05b9a74064a856f3c24655c1a7','08cc3f05b9a74064a856f3c24655c1a72014-02-23','2014-02-23','2014-02-23 11:28:40'),
	(89,1,'http://localhost:8080/node/48.jspx','http://localhost:8080/info/81.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-23','08cc3f05b9a74064a856f3c24655c1a7','08cc3f05b9a74064a856f3c24655c1a72014-02-23','2014-02-23','2014-02-23 11:28:44'),
	(90,1,'http://localhost:8080/node/48.jspx','http://localhost:8080/info/80.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-23','08cc3f05b9a74064a856f3c24655c1a7','08cc3f05b9a74064a856f3c24655c1a72014-02-23','2014-02-23','2014-02-23 11:28:47'),
	(91,1,'http://localhost:8080/',NULL,'0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-24','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-24','2014-02-24','2014-02-24 09:11:23'),
	(92,1,'http://localhost:8080/',NULL,'0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-24','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-24','2014-02-24','2014-02-24 09:16:44'),
	(93,1,'http://localhost:8080/',NULL,'0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-24','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-24','2014-02-24','2014-02-24 09:31:00'),
	(94,1,'http://localhost:8080/','http://localhost:8080/cmscp/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-24','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-24','2014-02-24','2014-02-24 09:33:21'),
	(95,1,'http://localhost:8080/','http://localhost:8080/cmscp/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-24','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-24','2014-02-24','2014-02-24 09:35:01'),
	(96,1,'http://localhost:8080/sitemap.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-24','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-24','2014-02-24','2014-02-24 09:35:15'),
	(97,1,'http://localhost:8080/tags.jspx','http://localhost:8080/sitemap.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-24','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-24','2014-02-24','2014-02-24 09:35:18'),
	(98,1,'http://localhost:8080/','http://localhost:8080/tags.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-24','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-24','2014-02-24','2014-02-24 09:36:13'),
	(99,1,'http://localhost:8080/search.jspx?q=Ã¤Â¸Â­Ã¥ÂÂ½','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-24','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-24','2014-02-24','2014-02-24 09:36:20'),
	(100,1,'http://localhost:8080/info/55.jspx','http://localhost:8080/search.jspx?q=Ã¤Â¸Â­Ã¥ÂÂ½','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-24','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-24','2014-02-24','2014-02-24 09:36:30'),
	(101,1,'http://localhost:8080/info/38.jspx','http://localhost:8080/search.jspx?q=Ã¤Â¸Â­Ã¥ÂÂ½','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-24','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-24','2014-02-24','2014-02-24 09:36:48'),
	(102,1,'http://localhost:8080/info/36.jspx','http://localhost:8080/search.jspx?q=Ã¤Â¸Â­Ã¥ÂÂ½','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-24','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-24','2014-02-24','2014-02-24 10:03:37'),
	(103,1,'http://localhost:8080/search.jspx?q=Ã¤Â¸Â­Ã¥ÂÂ½','http://localhost:8080/search.jspx?q=Ã¤Â¸Â­Ã¥ÂÂ½','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-24','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-24','2014-02-24','2014-02-24 10:03:51'),
	(104,1,'http://localhost:8080/info/35.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-24','08cc3f05b9a74064a856f3c24655c1a7','08cc3f05b9a74064a856f3c24655c1a72014-02-24','2014-02-24','2014-02-24 15:34:41'),
	(105,1,'http://localhost:8080/',NULL,'0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-24','08cc3f05b9a74064a856f3c24655c1a7','08cc3f05b9a74064a856f3c24655c1a72014-02-24','2014-02-24','2014-02-24 15:38:55'),
	(106,1,'http://localhost:8080/info/71.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-24','08cc3f05b9a74064a856f3c24655c1a7','08cc3f05b9a74064a856f3c24655c1a72014-02-24','2014-02-24','2014-02-24 16:26:13'),
	(107,1,'http://localhost:8080/info/35.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-24','08cc3f05b9a74064a856f3c24655c1a7','08cc3f05b9a74064a856f3c24655c1a72014-02-24','2014-02-24','2014-02-24 16:26:18'),
	(108,1,'http://localhost:8080/info/35.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-24','08cc3f05b9a74064a856f3c24655c1a7','08cc3f05b9a74064a856f3c24655c1a72014-02-24','2014-02-24','2014-02-24 16:26:55'),
	(109,1,'http://localhost:8080/','http://localhost:8080/info/35.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-24','08cc3f05b9a74064a856f3c24655c1a7','08cc3f05b9a74064a856f3c24655c1a72014-02-24','2014-02-24','2014-02-24 16:26:57'),
	(110,1,'http://localhost:8080/node/36.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-24','08cc3f05b9a74064a856f3c24655c1a7','08cc3f05b9a74064a856f3c24655c1a72014-02-24','2014-02-24','2014-02-24 16:26:59'),
	(111,1,'http://localhost:8080/','','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-27','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-27','2014-02-27','2014-02-27 11:38:28'),
	(112,1,'http://localhost:8080/node/36.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-27','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-27','2014-02-27','2014-02-27 11:38:38'),
	(113,1,'http://localhost:8080/','http://localhost:8080/node/36.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-27','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-27','2014-02-27','2014-02-27 11:38:40'),
	(114,1,'http://localhost:8080/node/36.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-27','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-27','2014-02-27','2014-02-27 11:38:42'),
	(115,1,'http://localhost:8080/node/48.jspx','http://localhost:8080/node/36.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-27','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-27','2014-02-27','2014-02-27 11:38:43'),
	(116,1,'http://localhost:8080/node/51.jspx','http://localhost:8080/node/48.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-27','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-27','2014-02-27','2014-02-27 11:38:44'),
	(117,1,'http://localhost:8080/node/41.jspx','http://localhost:8080/node/51.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-27','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-27','2014-02-27','2014-02-27 11:38:45'),
	(118,1,'http://localhost:8080/node/38.jspx','http://localhost:8080/node/41.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-27','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-27','2014-02-27','2014-02-27 11:38:46'),
	(119,1,'http://localhost:8080/node/40.jspx','http://localhost:8080/node/38.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-27','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-27','2014-02-27','2014-02-27 11:38:47'),
	(120,1,'http://localhost:8080/node/39.jspx','http://localhost:8080/node/40.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-27','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-27','2014-02-27','2014-02-27 11:38:48'),
	(121,1,'http://localhost:8080/node/52.jspx','http://localhost:8080/node/39.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-27','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-27','2014-02-27','2014-02-27 11:38:50'),
	(122,1,'http://localhost:8080/node/49.jspx','http://localhost:8080/node/52.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-27','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-27','2014-02-27','2014-02-27 11:38:51'),
	(123,1,'http://localhost:8080/node/46.jspx','http://localhost:8080/node/49.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-27','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-27','2014-02-27','2014-02-27 11:38:52'),
	(124,1,'http://localhost:8080/guestbook.jspx','http://localhost:8080/node/46.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-27','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-27','2014-02-27','2014-02-27 11:38:53'),
	(125,1,'http://localhost:8080/','http://localhost:8080/guestbook.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-27','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-27','2014-02-27','2014-02-27 11:38:55'),
	(126,1,'http://localhost:8080/node/36.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-27','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-27','2014-02-27','2014-02-27 11:38:56'),
	(127,1,'http://localhost:8080/info/28.jspx','http://localhost:8080/node/36.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-27','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-27','2014-02-27','2014-02-27 11:39:00'),
	(128,1,'http://localhost:8080/','','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-02-27','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-02-27','2014-02-27','2014-02-27 13:43:01'),
	(129,1,'http://localhost:8080/','http://localhost:8080/cmscp/index.do','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 10:46:34'),
	(130,1,'http://localhost:8080/','','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 10:46:39'),
	(131,1,'http://localhost:8080/info/46.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 10:46:49'),
	(132,1,'http://localhost:8080/node/36.jspx','http://localhost:8080/info/46.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 10:46:56'),
	(133,1,'http://localhost:8080/node/48.jspx','http://localhost:8080/node/36.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 10:46:57'),
	(134,1,'http://localhost:8080/','http://localhost:8080/cmscp/index.do','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 11:18:42'),
	(135,1,'http://localhost:8080/','http://localhost:8080/cmscp/index.do','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 11:18:44'),
	(136,1,'http://localhost:8080/','http://localhost:8080/cmscp/index.do','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 11:25:15'),
	(137,1,'http://localhost:8080/','http://localhost:8080/cmscp/index.do','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 11:25:23'),
	(138,1,'http://localhost:8080/','http://localhost:8080/cmscp/index.do','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 11:30:57'),
	(139,1,'http://localhost:8080/','http://localhost:8080/cmscp/index.do','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 11:31:00'),
	(140,1,'http://localhost:8080/','http://localhost:8080/cmscp/index.do','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 11:32:18'),
	(141,1,'http://localhost:8080/','http://localhost:8080/cmscp/index.do','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 11:52:04'),
	(142,1,'http://localhost:8080/','http://localhost:8080/cmscp/index.do','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 11:52:08'),
	(143,1,'http://localhost:8080/node/49.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 11:52:09'),
	(144,1,'http://localhost:8080/info/83.jspx','http://localhost:8080/node/49.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 11:52:12'),
	(145,1,'http://localhost:8080/','http://localhost:8080/cmscp/index.do','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 12:05:12'),
	(146,1,'http://localhost:8080/node/49.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 12:23:39'),
	(147,1,'http://localhost:8080/info/93.jspx','http://localhost:8080/node/49.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 12:23:42'),
	(148,1,'http://localhost:8080/info/83.jspx','http://localhost:8080/node/49.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 12:23:57'),
	(149,1,'http://localhost:8080/info/83.jspx','http://localhost:8080/node/49.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 12:24:09'),
	(150,1,'http://localhost:8080/node/49.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 12:29:42'),
	(151,1,'http://localhost:8080/info/83.jspx','http://localhost:8080/node/49.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 12:29:52'),
	(152,1,'http://localhost:8080/','','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 13:52:27'),
	(153,1,'http://localhost:8080/guestbook.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 13:53:26'),
	(154,1,'http://localhost:8080/guestbook.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 13:54:02'),
	(155,1,'http://localhost:8080/guestbook.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 13:54:32'),
	(156,1,'http://localhost:8080/guestbook.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 13:54:52'),
	(157,1,'http://localhost:8080/guestbook.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 13:56:02'),
	(158,1,'http://localhost:8080/guestbook.jspx','','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 13:56:46'),
	(159,1,'http://localhost:8080/guestbook.jspx','','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 13:56:59'),
	(160,1,'http://localhost:8080/guestbook.jspx?page=2','http://localhost:8080/guestbook.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 13:57:00'),
	(161,1,'http://localhost:8080/guestbook.jspx','http://localhost:8080/guestbook.jspx?page=2','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 13:57:03'),
	(162,1,'http://localhost:8080/guestbook.jspx','http://localhost:8080/guestbook.jspx?page=2','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 13:57:15'),
	(163,1,'http://localhost:8081/','http://localhost:8081/cmscp/index.do','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 14:37:34'),
	(164,1,'http://localhost:8081/node/69.jspx','http://localhost:8081/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 14:37:37'),
	(165,1,'http://localhost:8081/','http://localhost:8081/node/69.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 14:42:41'),
	(166,1,'http://localhost:8081/node/70.jspx','http://localhost:8081/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 14:42:43'),
	(167,1,'http://localhost:8081/node/41.jspx','http://localhost:8081/node/70.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 14:43:17'),
	(168,1,'http://localhost:8081/info/55.jspx','http://localhost:8081/node/41.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 14:43:20'),
	(169,1,'http://localhost:8081/node/41.jspx','http://localhost:8081/node/70.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 14:55:10'),
	(170,1,'http://localhost:8081/guestbook.jspx','http://localhost:8081/node/41.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 14:55:11'),
	(171,1,'http://localhost:8081/guestbook.jspx','http://localhost:8081/node/41.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 14:56:00'),
	(172,1,'http://localhost:8081/guestbook.jspx','http://localhost:8081/node/41.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 14:58:03'),
	(173,1,'http://localhost:8081/info/122.jspx','http://localhost:8081/cmscp/core/info/list.do?queryNodeId=73','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:02:35'),
	(174,1,'http://localhost:8081/info/118.jspx','http://localhost:8081/cmscp/core/info/list.do','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:04:13'),
	(175,1,'http://localhost:8081/node/69.jspx','http://localhost:8081/guestbook.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:04:21'),
	(176,1,'http://localhost:8081/node/69.jspx','http://localhost:8081/guestbook.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:11:18'),
	(177,1,'http://localhost:8081/node/69.jspx','http://localhost:8081/guestbook.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:11:39'),
	(178,1,'http://localhost:8081/node/69.jspx','http://localhost:8081/guestbook.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:11:59'),
	(179,1,'http://localhost:8081/node/69.jspx','http://localhost:8081/guestbook.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:12:13'),
	(180,1,'http://localhost:8081/node/69.jspx','http://localhost:8081/guestbook.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:12:15'),
	(181,1,'http://localhost:8081/node/69.jspx','http://localhost:8081/guestbook.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:14:00'),
	(182,1,'http://localhost:8081/node/69.jspx','http://localhost:8081/guestbook.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:14:10'),
	(183,1,'http://localhost:8081/node/69.jspx','http://localhost:8081/guestbook.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:14:37'),
	(184,1,'http://localhost:8081/info/118.jspx','http://localhost:8081/node/69.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:15:05'),
	(185,1,'http://localhost:8081/info/118.jspx','http://localhost:8081/node/69.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:16:31'),
	(186,1,'http://localhost:8081/info/118.jspx','http://localhost:8081/node/69.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:16:38'),
	(187,1,'http://localhost:8081/info/118.jspx','http://localhost:8081/node/69.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:16:57'),
	(188,1,'http://localhost:8081/info/118.jspx','http://localhost:8081/node/69.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:17:29'),
	(189,1,'http://localhost:8081/info/117.jspx','http://localhost:8081/info/118.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:18:35'),
	(190,1,'http://localhost:8081/info/118.jspx','http://localhost:8081/node/69.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:20:06'),
	(191,1,'http://localhost:8081/info/118.jspx','http://localhost:8081/node/69.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:21:24'),
	(192,1,'http://localhost:8081/info/118.jspx','http://localhost:8081/node/69.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:22:01'),
	(193,1,'http://localhost:8081/info/118.jspx','http://localhost:8081/node/69.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:22:41'),
	(194,1,'http://localhost:8081/info/118.jspx','http://localhost:8081/node/69.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:23:01'),
	(195,1,'http://localhost:8081/info/118.jspx','http://localhost:8081/node/69.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:23:31'),
	(196,1,'http://localhost:8081/info/118.jspx','http://localhost:8081/node/69.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:23:54'),
	(197,1,'http://localhost:8081/info/118.jspx','http://localhost:8081/node/69.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:25:11'),
	(198,1,'http://localhost:8081/info/118.jspx','http://localhost:8081/node/69.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:25:29'),
	(199,1,'http://localhost:8081/info/118.jspx','http://localhost:8081/node/69.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:25:51'),
	(200,1,'http://localhost:8081/info/118.jspx','http://localhost:8081/node/69.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:26:16'),
	(201,1,'http://localhost:8081/info/118.jspx','http://localhost:8081/node/69.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:26:31'),
	(202,1,'http://localhost:8081/info/118.jspx','http://localhost:8081/node/69.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:26:55'),
	(203,1,'http://localhost:8081/info/118.jspx','http://localhost:8081/node/69.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:27:05'),
	(204,1,'http://localhost:8081/info/118.jspx','http://localhost:8081/node/69.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:27:07'),
	(205,1,'http://localhost:8081/info/118.jspx','http://localhost:8081/node/69.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:28:04'),
	(206,1,'http://localhost:8081/info/118.jspx','http://localhost:8081/node/69.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:28:30'),
	(207,1,'http://localhost:8081/info/118.jspx','http://localhost:8081/node/69.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:28:58'),
	(208,1,'http://localhost:8081/info/118.jspx','http://localhost:8081/node/69.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:29:09'),
	(209,1,'http://localhost:8081/info/118.jspx','http://localhost:8081/node/69.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:29:26'),
	(210,1,'http://localhost:8081/info/118.jspx','http://localhost:8081/node/69.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:30:16'),
	(211,1,'http://localhost:8081/resume.jspx?post=网页设计师','http://localhost:8081/info/118.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:37:57'),
	(212,1,'http://localhost:8081/resume.jspx?post=网页设计师','http://localhost:8081/info/118.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:38:33'),
	(213,1,'http://localhost:8081/resume.jspx?post=网页设计师','http://localhost:8081/info/118.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:38:51'),
	(214,1,'http://localhost:8081/resume.jspx?post=网页设计师','http://localhost:8081/info/118.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:38:54'),
	(215,1,'http://localhost:8081/resume.jspx?post=网页设计师','http://localhost:8081/info/118.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:39:12'),
	(216,1,'http://localhost:8081/resume.jspx?post=网页设计师','http://localhost:8081/info/118.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:39:54'),
	(217,1,'http://localhost:8081/resume.jspx?post=网页设计师','http://localhost:8081/info/118.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:40:06'),
	(218,1,'http://localhost:8081/resume.jspx?post=网页设计师','http://localhost:8081/info/118.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:41:39'),
	(219,1,'http://localhost:8081/resume.jspx?post=网页设计师','http://localhost:8081/info/118.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:41:57'),
	(220,1,'http://localhost:8081/resume.jspx?post=网页设计师','','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','ba0a4533c8c94162a0efd83424766ae8','ba0a4533c8c94162a0efd83424766ae82014-03-18','2014-03-18','2014-03-18 15:42:06'),
	(221,1,'http://localhost:8081/resume.jspx?post=网页设计师','','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','ba0a4533c8c94162a0efd83424766ae8','ba0a4533c8c94162a0efd83424766ae82014-03-18','2014-03-18','2014-03-18 15:42:15'),
	(222,1,'http://localhost:8081/resume.jspx?post=网页设计师','http://localhost:8081/info/118.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:42:19'),
	(223,1,'http://localhost:8081/resume.jspx?post=网页设计师','http://localhost:8081/info/118.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:42:43'),
	(224,1,'http://localhost:8081/resume.jspx?post=网页设计师','','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','ba0a4533c8c94162a0efd83424766ae8','ba0a4533c8c94162a0efd83424766ae82014-03-18','2014-03-18','2014-03-18 15:42:47'),
	(225,1,'http://localhost:8081/resume.jspx?post=网页设计师','','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','ba0a4533c8c94162a0efd83424766ae8','ba0a4533c8c94162a0efd83424766ae82014-03-18','2014-03-18','2014-03-18 15:42:47'),
	(226,1,'http://localhost:8081/resume.jspx?post=网页设计师','http://localhost:8081/info/118.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:44:19'),
	(227,1,'http://localhost:8081/resume.jspx?post=网页设计师','http://localhost:8081/info/118.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:44:40'),
	(228,1,'http://localhost:8081/resume.jspx?post=网页设计师','http://localhost:8081/info/118.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:46:45'),
	(229,1,'http://localhost:8081/resume.jspx?post=网页设计师','http://localhost:8081/info/118.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:47:06'),
	(230,1,'http://localhost:8081/resume.jspx?post=网页设计师','','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:47:16'),
	(231,1,'http://localhost:8081/resume.jspx?post=网页设计师','','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:47:44'),
	(232,1,'http://localhost:8081/my.jspx','http://localhost:8081/resume.jspx?post=网页设计师','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:50:33'),
	(233,1,'http://localhost:8081/my.jspx','http://localhost:8081/resume.jspx?post=网页设计师','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:52:05'),
	(234,1,'http://localhost:8081/my/contribution.jspx','http://localhost:8081/my.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:53:40'),
	(235,1,'http://localhost:8081/my/contribution.jspx','http://localhost:8081/my.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:55:28'),
	(236,1,'http://localhost:8081/my/contribution.jspx','http://localhost:8081/my.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:55:57'),
	(237,1,'http://localhost:8081/my/contribution.jspx','http://localhost:8081/my.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:56:14'),
	(238,1,'http://localhost:8081/my/contribution.jspx','http://localhost:8081/my.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:56:31'),
	(239,1,'http://localhost:8081/my/contribution.jspx','http://localhost:8081/my.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:57:18'),
	(240,1,'http://localhost:8081/my/contribution.jspx','http://localhost:8081/my.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:57:35'),
	(241,1,'http://localhost:8081/my/contribution.jspx','http://localhost:8081/my.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:58:03'),
	(242,1,'http://localhost:8081/my/contribution.jspx','http://localhost:8081/my.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:58:13'),
	(243,1,'http://localhost:8081/my/contribution.jspx','http://localhost:8081/my.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:58:22'),
	(244,1,'http://localhost:8081/my/contribution.jspx','http://localhost:8081/my.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:58:43'),
	(245,1,'http://localhost:8081/my/contribution.jspx','http://localhost:8081/my.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:58:55'),
	(246,1,'http://localhost:8081/my/contribution.jspx','http://localhost:8081/my.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:58:57'),
	(247,1,'http://localhost:8081/my/contribution.jspx','http://localhost:8081/my.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 15:59:35'),
	(248,1,'http://localhost:8081/my/contribution.jspx','http://localhost:8081/my.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:08:43'),
	(249,1,'http://localhost:8081/my/contribution.jspx','http://localhost:8081/my.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:08:59'),
	(250,1,'http://localhost:8081/my/contribution.jspx','http://localhost:8081/my.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:09:26'),
	(251,1,'http://localhost:8081/my/contribution.jspx','http://localhost:8081/my.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:09:35'),
	(252,1,'http://localhost:8081/my/contribution.jspx','http://localhost:8081/my.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:11:54'),
	(253,1,'http://localhost:8081/my/contribution/create.jspx','http://localhost:8081/my/contribution.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:13:03'),
	(254,1,'http://localhost:8081/my/contribution/create.jspx','http://localhost:8081/my/contribution.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:16:33'),
	(255,1,'http://localhost:8081/my/contribution/create.jspx','http://localhost:8081/my/contribution.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:17:36'),
	(256,1,'http://localhost:8081/my/contribution/create.jspx','http://localhost:8081/my/contribution.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:17:55'),
	(257,1,'http://localhost:8081/my/contribution/create.jspx','http://localhost:8081/my/contribution.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:18:04'),
	(258,1,'http://localhost:8081/my/contribution/create.jspx','http://localhost:8081/my/contribution.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:18:17'),
	(259,1,'http://localhost:8081/my/contribution/create.jspx','http://localhost:8081/my/contribution.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:18:36'),
	(260,1,'http://localhost:8081/my/contribution/create.jspx','http://localhost:8081/my/contribution.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:18:55'),
	(261,1,'http://localhost:8081/my/contribution/create.jspx','http://localhost:8081/my/contribution.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:19:43'),
	(262,1,'http://localhost:8081/my/contribution/create.jspx','http://localhost:8081/my/contribution.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:20:03'),
	(263,1,'http://localhost:8081/my/contribution/create.jspx','http://localhost:8081/my/contribution.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:20:48'),
	(264,1,'http://localhost:8081/my/contribution/create.jspx','http://localhost:8081/my/contribution.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:20:57'),
	(265,1,'http://localhost:8081/my/contribution/create.jspx','http://localhost:8081/my/contribution.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:21:10'),
	(266,1,'http://localhost:8081/my/contribution/create.jspx','http://localhost:8081/my/contribution.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:21:12'),
	(267,1,'http://localhost:8081/my/contribution/create.jspx','http://localhost:8081/my/contribution.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:21:30'),
	(268,1,'http://localhost:8081/my/contribution/create.jspx','http://localhost:8081/my/contribution.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:21:51'),
	(269,1,'http://localhost:8081/my/contribution/create.jspx','http://localhost:8081/my/contribution.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:22:01'),
	(270,1,'http://localhost:8081/my/contribution/create.jspx','http://localhost:8081/my/contribution.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:22:31'),
	(271,1,'http://localhost:8081/my/contribution/create.jspx','http://localhost:8081/my/contribution.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:23:03'),
	(272,1,'http://localhost:8081/my/contribution.jspx','','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:23:10'),
	(273,1,'http://localhost:8081/my/contribution.jspx','','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:23:15'),
	(274,1,'http://localhost:8081/my/contribution/create.jspx','http://localhost:8081/my/contribution.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:23:18'),
	(275,1,'http://localhost:8081/my/contribution.jspx','','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:23:37'),
	(276,1,'http://localhost:8081/my/contribution.jspx','','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:23:42'),
	(277,1,'http://localhost:8081/','http://localhost:8081/my/contribution.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:24:02'),
	(278,1,'http://localhost:8081/','http://localhost:8081/my/contribution.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:25:38'),
	(279,1,'http://localhost:8081/node/69.jspx','http://localhost:8081/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:25:40'),
	(280,1,'http://localhost:8081/node/52.jspx','http://localhost:8081/node/69.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:25:46'),
	(281,1,'http://localhost:8081/node/49.jspx','http://localhost:8081/node/52.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:25:47'),
	(282,1,'http://localhost:8081/node/40.jspx','http://localhost:8081/node/49.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:25:49'),
	(283,1,'http://localhost:8081/node/38.jspx','http://localhost:8081/node/40.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:25:50'),
	(284,1,'http://localhost:8081/node/41.jspx','http://localhost:8081/node/38.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:25:52'),
	(285,1,'http://localhost:8081/','http://localhost:8081/node/41.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-18','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-18','2014-03-18','2014-03-18 16:25:54'),
	(286,1,'http://localhost:8080/','','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-19','ba0a4533c8c94162a0efd83424766ae8','ba0a4533c8c94162a0efd83424766ae82014-03-19','2014-03-19','2014-03-19 08:20:31'),
	(287,1,'http://localhost:8080/','','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-20','ba0a4533c8c94162a0efd83424766ae8','ba0a4533c8c94162a0efd83424766ae82014-03-20','2014-03-20','2014-03-20 09:40:46'),
	(288,1,'http://localhost:8080/','','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-23','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-23','2014-03-23','2014-03-23 10:39:43'),
	(289,1,'http://localhost:8080/info/46.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-23','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-23','2014-03-23','2014-03-23 10:39:47'),
	(290,1,'http://localhost:8080/guestbook.jspx','http://localhost:8080/info/46.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-23','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-23','2014-03-23','2014-03-23 10:41:28'),
	(291,1,'http://localhost:8080/','http://localhost:8080/guestbook.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-23','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-23','2014-03-23','2014-03-23 10:43:31'),
	(292,1,'http://localhost:8080/','http://localhost:8080/guestbook.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-03-23','313e662adb864836a79ac0df36c54d42','313e662adb864836a79ac0df36c54d422014-03-23','2014-03-23','2014-03-23 10:43:40'),
	(293,1,'http://localhost:8080/','','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 14:57:51'),
	(294,1,'http://localhost:8080/','http://localhost:8080/cmscp/index.do','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:03:39'),
	(295,1,'http://localhost:8080/node/41.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:03:46'),
	(296,1,'http://localhost:8080/node/38.jspx','http://localhost:8080/node/41.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:03:48'),
	(297,1,'http://localhost:8080/node/41.jspx','http://localhost:8080/node/38.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:04:01'),
	(298,1,'http://localhost:8080/node/38.jspx','http://localhost:8080/node/41.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:04:02'),
	(299,1,'http://localhost:8080/node/48.jspx','http://localhost:8080/node/38.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:04:06'),
	(300,1,'http://localhost:8080/node/38.jspx','http://localhost:8080/node/48.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:04:08'),
	(301,1,'http://localhost:8080/info/46.jspx','http://localhost:8080/node/38.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:04:10'),
	(302,1,'http://localhost:8080/node/40.jspx','http://localhost:8080/node/38.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:04:17'),
	(303,1,'http://localhost:8080/node/52.jspx','http://localhost:8080/node/40.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:04:21'),
	(304,1,'http://localhost:8080/node/39.jspx','http://localhost:8080/node/52.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:04:22'),
	(305,1,'http://localhost:8080/node/49.jspx','http://localhost:8080/node/39.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:04:23'),
	(306,1,'http://localhost:8080/node/38.jspx','http://localhost:8080/node/49.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:04:26'),
	(307,1,'http://localhost:8080/node/40.jspx','http://localhost:8080/node/38.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:04:28'),
	(308,1,'http://localhost:8080/node/39.jspx','http://localhost:8080/node/40.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:04:29'),
	(309,1,'http://localhost:8080/node/40.jspx','http://localhost:8080/node/39.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:04:32'),
	(310,1,'http://localhost:8080/node/39.jspx','http://localhost:8080/node/40.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:04:32'),
	(311,1,'http://localhost:8080/node/52.jspx','http://localhost:8080/node/39.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:04:33'),
	(312,1,'http://localhost:8080/node/39.jspx','http://localhost:8080/node/52.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:04:35'),
	(313,1,'http://localhost:8080/node/40.jspx','http://localhost:8080/node/39.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:04:36'),
	(314,1,'http://localhost:8080/node/39.jspx','http://localhost:8080/node/40.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:04:37'),
	(315,1,'http://localhost:8080/node/40.jspx','http://localhost:8080/node/39.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:04:38'),
	(316,1,'http://localhost:8080/node/38.jspx','http://localhost:8080/node/40.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:04:42'),
	(317,1,'http://localhost:8080/node/40.jspx','http://localhost:8080/node/38.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:04:43'),
	(318,1,'http://localhost:8080/node/38.jspx','http://localhost:8080/node/40.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:04:45'),
	(319,1,'http://localhost:8080/node/41.jspx','http://localhost:8080/node/38.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:04:45'),
	(320,1,'http://localhost:8080/node/36.jspx','http://localhost:8080/node/41.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:04:55'),
	(321,1,'http://localhost:8080/node/48.jspx','http://localhost:8080/node/36.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:04:57'),
	(322,1,'http://localhost:8080/node/51.jspx','http://localhost:8080/node/48.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:05:00'),
	(323,1,'http://localhost:8080/node/36.jspx','http://localhost:8080/node/51.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:05:04'),
	(324,1,'http://localhost:8080/node/41.jspx','http://localhost:8080/node/36.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:05:06'),
	(325,1,'http://localhost:8080/node/40.jspx','http://localhost:8080/node/41.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:05:08'),
	(326,1,'http://localhost:8080/node/38.jspx','http://localhost:8080/node/40.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:05:09'),
	(327,1,'http://localhost:8080/node/41.jspx','http://localhost:8080/node/38.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:05:11'),
	(328,1,'http://localhost:8080/node/40.jspx','http://localhost:8080/node/41.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:05:11'),
	(329,1,'http://localhost:8080/node/39.jspx','http://localhost:8080/node/40.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:05:12'),
	(330,1,'http://localhost:8080/node/51.jspx','http://localhost:8080/node/39.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:05:30'),
	(331,1,'http://localhost:8080/node/41.jspx','http://localhost:8080/node/51.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:05:31'),
	(332,1,'http://localhost:8080/node/38.jspx','http://localhost:8080/node/41.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:05:33'),
	(333,1,'http://localhost:8080/node/41.jspx','http://localhost:8080/node/38.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:05:34'),
	(334,1,'http://localhost:8080/node/40.jspx','http://localhost:8080/node/41.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:05:35'),
	(335,1,'http://localhost:8080/node/39.jspx','http://localhost:8080/node/40.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:05:36'),
	(336,1,'http://localhost:8080/node/39.jspx','http://localhost:8080/node/39.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:05:58'),
	(337,1,'http://localhost:8080/node/38.jspx','http://localhost:8080/node/39.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:05:59'),
	(338,1,'http://localhost:8080/node/39.jspx','http://localhost:8080/node/38.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:06:01'),
	(339,1,'http://localhost:8080/node/41.jspx','http://localhost:8080/node/39.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:06:03'),
	(340,1,'http://localhost:8080/node/36.jspx','http://localhost:8080/node/41.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:06:04'),
	(341,1,'http://localhost:8080/node/41.jspx','http://localhost:8080/node/36.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:06:06'),
	(342,1,'http://localhost:8080/','http://localhost:8080/node/36.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:06:22'),
	(343,1,'http://localhost:8080/node/52.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:06:26'),
	(344,1,'http://localhost:8080/node/49.jspx','http://localhost:8080/node/52.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:06:27'),
	(345,1,'http://localhost:8080/node/69.jspx','http://localhost:8080/node/49.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:06:29'),
	(346,1,'http://localhost:8080/node/49.jspx','http://localhost:8080/node/69.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:06:31'),
	(347,1,'http://localhost:8080/node/52.jspx','http://localhost:8080/node/49.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:06:37'),
	(348,1,'http://localhost:8080/node/49.jspx','http://localhost:8080/node/52.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:06:40'),
	(349,1,'http://localhost:8080/','http://localhost:8080/node/49.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:23:30'),
	(350,1,'http://localhost:8080/','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:35:06'),
	(351,1,'http://localhost:8080/node/74.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:35:08'),
	(352,1,'http://localhost:8080/','http://localhost:8080/node/74.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:39:34'),
	(353,1,'http://localhost:8080/','http://localhost:8080/login.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:41:19'),
	(354,1,'http://localhost:8080/info/126.jspx','http://localhost:8080/node/74.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:42:24'),
	(355,1,'http://localhost:8080/info/126.jspx','http://localhost:8080/node/74.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:44:29'),
	(356,1,'http://localhost:8080/info/126.jspx','http://localhost:8080/node/74.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:45:00'),
	(357,1,'http://localhost:8080/node/74.jspx','http://localhost:8080/info/126.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:50:32'),
	(358,1,'http://localhost:8080/info/126.jspx','http://localhost:8080/node/74.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:50:34'),
	(359,1,'http://localhost:8080/','http://localhost:8080/info/126.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:51:08'),
	(360,1,'http://localhost:8080/node/69.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:51:25'),
	(361,1,'http://localhost:8080/info/118.jspx','http://localhost:8080/node/69.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:51:27'),
	(362,1,'http://localhost:8080/resume.jspx?post=网页设计师','http://localhost:8080/info/118.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:51:30'),
	(363,1,'http://localhost:8080/node/69.jspx','http://localhost:8080/node/74.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:54:19'),
	(364,1,'http://localhost:8080/info/118.jspx','http://localhost:8080/node/69.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:54:20'),
	(365,1,'http://localhost:8080/resume.jspx?post=网页设计师','http://localhost:8080/info/118.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:54:21'),
	(366,1,'http://localhost:8080/resume.jspx?post=网页设计师','http://localhost:8080/info/118.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:55:29'),
	(367,1,'http://localhost:8080/node/69.jspx','http://localhost:8080/resume.jspx?post=网页设计师','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:55:32'),
	(368,1,'http://localhost:8080/info/117.jspx','http://localhost:8080/node/69.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:55:33'),
	(369,1,'http://localhost:8080/resume.jspx?post=Java开发工程师','http://localhost:8080/info/117.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:55:35'),
	(370,1,'http://localhost:8080/node/52.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:56:17'),
	(371,1,'http://localhost:8080/node/39.jspx','http://localhost:8080/node/52.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:56:18'),
	(372,1,'http://localhost:8080/node/38.jspx','http://localhost:8080/node/39.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:56:19'),
	(373,1,'http://localhost:8080/node/40.jspx','http://localhost:8080/node/38.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:56:21'),
	(374,1,'http://localhost:8080/node/38.jspx','http://localhost:8080/node/40.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:56:26'),
	(375,1,'http://localhost:8080/node/48.jspx','http://localhost:8080/node/38.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:56:28'),
	(376,1,'http://localhost:8080/node/38.jspx','http://localhost:8080/node/48.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:56:31'),
	(377,1,'http://localhost:8080/node/39.jspx','http://localhost:8080/node/38.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:56:35'),
	(378,1,'http://localhost:8080/node/40.jspx','http://localhost:8080/node/39.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:56:38'),
	(379,1,'http://localhost:8080/node/39.jspx','http://localhost:8080/node/40.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:57:04'),
	(380,1,'http://localhost:8080/','http://localhost:8080/node/40.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:57:18'),
	(381,1,'http://localhost:8080/node/40.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:57:21'),
	(382,1,'http://localhost:8080/node/38.jspx','http://localhost:8080/node/40.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:57:22'),
	(383,1,'http://localhost:8080/node/36.jspx','http://localhost:8080/node/38.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:57:24'),
	(384,1,'http://localhost:8080/node/36.jspx','http://localhost:8080/node/38.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:57:36'),
	(385,1,'http://localhost:8080/','http://localhost:8080/node/36.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:57:39'),
	(386,1,'http://localhost:8080/','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 15:59:13'),
	(387,1,'http://localhost:8080/','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 16:04:20'),
	(388,1,'http://localhost:8080/node/75.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 16:04:25'),
	(389,1,'http://localhost:8080/','http://localhost:8080/node/75.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 16:05:10'),
	(390,1,'http://localhost:8080/','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 16:07:14'),
	(391,1,'http://localhost:8080/','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 16:07:15'),
	(392,1,'http://localhost:8080/resume.jspx?post=Java开发工程师','http://localhost:8080/info/117.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 16:08:28'),
	(393,1,'http://localhost:8080/resume.jspx?post=Java开发工程师','http://localhost:8080/info/117.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 16:09:44'),
	(394,1,'http://localhost:8080/resume.jspx?post=Java开发工程师','http://localhost:8080/info/117.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 16:09:55'),
	(395,1,'http://localhost:8080/node/74.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 16:10:46'),
	(396,1,'http://localhost:8080/info/126.jspx','http://localhost:8080/node/74.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 16:10:48'),
	(397,1,'http://localhost:8080/info/126.jspx','http://localhost:8080/node/74.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 16:18:08'),
	(398,1,'http://localhost:8080/info/126.jspx','http://localhost:8080/node/74.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 16:27:23'),
	(399,1,'http://localhost:8080/info/126.jspx','http://localhost:8080/node/74.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 17:36:00'),
	(400,1,'http://localhost:8080/info/126.jspx','http://localhost:8080/node/74.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 17:36:09'),
	(401,1,'http://localhost:8080/info/126.jspx','http://localhost:8080/node/74.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 17:36:29'),
	(402,1,'http://localhost:8080/info/126.jspx','','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','8500ff6959874e63ba0e9b504df0fa03','8500ff6959874e63ba0e9b504df0fa032014-05-26','2014-05-26','2014-05-26 17:37:30'),
	(403,1,'http://localhost:8080/info/126.jspx','','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','8500ff6959874e63ba0e9b504df0fa03','8500ff6959874e63ba0e9b504df0fa032014-05-26','2014-05-26','2014-05-26 17:38:12'),
	(404,1,'http://localhost:8080/info/126.jspx','','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','8500ff6959874e63ba0e9b504df0fa03','8500ff6959874e63ba0e9b504df0fa032014-05-26','2014-05-26','2014-05-26 17:43:09'),
	(405,1,'http://localhost:8080/','','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 21:32:32'),
	(406,1,'http://localhost:8080/node/74.jspx','http://localhost:8080/','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 21:32:34'),
	(407,1,'http://localhost:8080/info/126.jspx','http://localhost:8080/node/74.jspx','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','4bc94bb9f6f0450c8cb8472e5b934b68','4bc94bb9f6f0450c8cb8472e5b934b682014-05-26','2014-05-26','2014-05-26 21:32:37'),
	(408,1,'http://localhost:8080/info/126.jspx','','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12014-05-26','8500ff6959874e63ba0e9b504df0fa03','8500ff6959874e63ba0e9b504df0fa032014-05-26','2014-05-26','2014-05-26 21:44:20'),
	(409,1,'http://101.200.173.151:8080/','http://101.200.173.151:8080/','110.155.16.234','110.155.16.2342015-06-03','3170ac6b18504ac08fcd1b9cbbd4a294','3170ac6b18504ac08fcd1b9cbbd4a2942015-06-03','2015-06-03','2015-06-03 17:50:10'),
	(410,1,'http://101.200.173.151:8080/','http://101.200.173.151:8080/','110.155.16.234','110.155.16.2342015-06-03','3170ac6b18504ac08fcd1b9cbbd4a294','3170ac6b18504ac08fcd1b9cbbd4a2942015-06-03','2015-06-03','2015-06-03 17:50:16'),
	(411,1,'http://101.200.173.151:8080/info/118.jspx','http://101.200.173.151:8080/','110.155.16.234','110.155.16.2342015-06-03','3170ac6b18504ac08fcd1b9cbbd4a294','3170ac6b18504ac08fcd1b9cbbd4a2942015-06-03','2015-06-03','2015-06-03 17:50:25'),
	(412,1,'http://101.200.173.151:8080/info/118.jspx','http://101.200.173.151:8080/','110.155.16.234','110.155.16.2342015-06-03','3170ac6b18504ac08fcd1b9cbbd4a294','3170ac6b18504ac08fcd1b9cbbd4a2942015-06-03','2015-06-03','2015-06-03 17:50:33'),
	(413,1,'http://101.200.173.151:8080/info/118.jspx','http://101.200.173.151:8080/','110.155.16.234','110.155.16.2342015-06-03','3170ac6b18504ac08fcd1b9cbbd4a294','3170ac6b18504ac08fcd1b9cbbd4a2942015-06-03','2015-06-03','2015-06-03 17:50:39'),
	(414,1,'http://101.200.173.151:8080/','http://101.200.173.151:8080/info/118.jspx','110.155.16.234','110.155.16.2342015-06-03','3170ac6b18504ac08fcd1b9cbbd4a294','3170ac6b18504ac08fcd1b9cbbd4a2942015-06-03','2015-06-03','2015-06-03 20:29:43'),
	(415,1,'http://localhost:8080/klml/','http://localhost:8080/klml/cmscp/index.do','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12015-06-04','384600ef7e52441084222fa93d370592','384600ef7e52441084222fa93d3705922015-06-04','2015-06-04','2015-06-04 13:50:55'),
	(416,1,'http://localhost:8080/klml/','http://localhost:8080/klml/cmscp/index.do','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12015-06-04','384600ef7e52441084222fa93d370592','384600ef7e52441084222fa93d3705922015-06-04','2015-06-04','2015-06-04 13:50:57'),
	(417,1,'http://test.cn:8080/klml/','','127.0.0.1','127.0.0.12015-06-04','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-04','2015-06-04','2015-06-04 13:53:43'),
	(418,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/cmscp/index.do','127.0.0.1','127.0.0.12015-06-04','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-04','2015-06-04','2015-06-04 13:54:01'),
	(419,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/cmscp/index.do','127.0.0.1','127.0.0.12015-06-04','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-04','2015-06-04','2015-06-04 13:54:58'),
	(420,1,'http://a.test.cn:8080/klml/','','127.0.0.1','127.0.0.12015-06-04','9afd6b79cb46426aac1873edc007c33f','9afd6b79cb46426aac1873edc007c33f2015-06-04','2015-06-04','2015-06-04 13:56:27'),
	(421,1,'http://a.test.cn:8080/klml/','','127.0.0.1','127.0.0.12015-06-04','9afd6b79cb46426aac1873edc007c33f','9afd6b79cb46426aac1873edc007c33f2015-06-04','2015-06-04','2015-06-04 13:56:31'),
	(422,1,'http://a.test.cn:8080/klml/','','127.0.0.1','127.0.0.12015-06-04','9afd6b79cb46426aac1873edc007c33f','9afd6b79cb46426aac1873edc007c33f2015-06-04','2015-06-04','2015-06-04 13:58:57'),
	(423,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/cmscp/index.do','127.0.0.1','127.0.0.12015-06-04','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-04','2015-06-04','2015-06-04 13:59:01'),
	(424,1,'http://a.test.cn:8080/klml/','','127.0.0.1','127.0.0.12015-06-04','9afd6b79cb46426aac1873edc007c33f','9afd6b79cb46426aac1873edc007c33f2015-06-04','2015-06-04','2015-06-04 13:59:05'),
	(425,1,'http://a.test.cn:8080/klml/','','127.0.0.1','127.0.0.12015-06-04','9afd6b79cb46426aac1873edc007c33f','9afd6b79cb46426aac1873edc007c33f2015-06-04','2015-06-04','2015-06-04 14:05:25'),
	(426,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/cmscp/index.do','127.0.0.1','127.0.0.12015-06-04','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-04','2015-06-04','2015-06-04 14:05:32'),
	(427,1,'http://a.test.cn:8080/klml/','','127.0.0.1','127.0.0.12015-06-04','9afd6b79cb46426aac1873edc007c33f','9afd6b79cb46426aac1873edc007c33f2015-06-04','2015-06-04','2015-06-04 14:05:37'),
	(428,1,'http://a.test.cn:8080/klml/','','127.0.0.1','127.0.0.12015-06-04','9afd6b79cb46426aac1873edc007c33f','9afd6b79cb46426aac1873edc007c33f2015-06-04','2015-06-04','2015-06-04 14:05:42'),
	(429,1,'http://a.test.cn:8080/klml/','','127.0.0.1','127.0.0.12015-06-04','9afd6b79cb46426aac1873edc007c33f','9afd6b79cb46426aac1873edc007c33f2015-06-04','2015-06-04','2015-06-04 14:06:08'),
	(430,1,'http://a.test.cn:8080/klml/','','127.0.0.1','127.0.0.12015-06-04','9afd6b79cb46426aac1873edc007c33f','9afd6b79cb46426aac1873edc007c33f2015-06-04','2015-06-04','2015-06-04 14:06:21'),
	(431,1,'http://a.test.cn:8080/klml/','','127.0.0.1','127.0.0.12015-06-04','9afd6b79cb46426aac1873edc007c33f','9afd6b79cb46426aac1873edc007c33f2015-06-04','2015-06-04','2015-06-04 14:06:22'),
	(432,1,'http://a.test.cn:8080/klml/','','127.0.0.1','127.0.0.12015-06-04','9afd6b79cb46426aac1873edc007c33f','9afd6b79cb46426aac1873edc007c33f2015-06-04','2015-06-04','2015-06-04 14:06:26'),
	(433,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/cmscp/index.do','127.0.0.1','127.0.0.12015-06-04','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-04','2015-06-04','2015-06-04 17:07:57'),
	(437,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/cmscp/index.do?_site=1','127.0.0.1','127.0.0.12015-06-04','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-04','2015-06-04','2015-06-04 17:41:50'),
	(438,1,'http://test.cn:8080/klml/','','127.0.0.1','127.0.0.12015-06-04','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-04','2015-06-04','2015-06-04 18:44:46'),
	(439,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/cmscp/index.do','127.0.0.1','127.0.0.12015-06-04','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-04','2015-06-04','2015-06-04 19:14:11'),
	(440,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/cmscp/index.do','127.0.0.1','127.0.0.12015-06-04','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-04','2015-06-04','2015-06-04 19:14:48'),
	(445,1,'http://test.cn:8080/klml/','','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 11:22:22'),
	(446,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/cmscp/index.do','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 11:23:29'),
	(447,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 11:47:54'),
	(448,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 11:48:06'),
	(449,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 11:48:08'),
	(450,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 11:48:14'),
	(451,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 11:48:16'),
	(452,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 11:48:20'),
	(453,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 11:48:39'),
	(454,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 11:48:48'),
	(455,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 11:48:51'),
	(456,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 11:49:10'),
	(457,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 11:49:55'),
	(458,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 11:49:59'),
	(459,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 11:53:39'),
	(460,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 11:53:55'),
	(461,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 11:54:17'),
	(462,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 11:54:29'),
	(463,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 11:54:33'),
	(464,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 11:54:37'),
	(465,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 11:54:39'),
	(466,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 11:54:43'),
	(467,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:23:08'),
	(468,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:23:13'),
	(469,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:23:56'),
	(470,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:24:01'),
	(471,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:24:45'),
	(472,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:24:49'),
	(473,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:26:10'),
	(474,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:26:14'),
	(475,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:26:18'),
	(476,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:26:21'),
	(477,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:27:28'),
	(478,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:27:31'),
	(479,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:27:34'),
	(480,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:28:28'),
	(481,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:28:32'),
	(482,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:28:36'),
	(483,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:28:39'),
	(484,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:30:00'),
	(485,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:30:08'),
	(486,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:30:21'),
	(487,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:30:34'),
	(488,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:31:07'),
	(489,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:31:19'),
	(490,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:31:34'),
	(491,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:32:10'),
	(492,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:32:15'),
	(493,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:32:26'),
	(494,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:32:33'),
	(495,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:33:19'),
	(496,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:33:38'),
	(497,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:33:53'),
	(498,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:34:41'),
	(499,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:34:56'),
	(500,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:40:27'),
	(501,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 12:41:08'),
	(502,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 15:25:55'),
	(503,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 15:26:03'),
	(504,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 15:26:56'),
	(505,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/cmscp/index.do','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 17:17:58'),
	(506,1,'http://test.cn:8080/klml/node/36.jspx','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 17:18:00'),
	(507,1,'http://test.cn:8080/klml/a/news/gn/','http://test.cn:8080/klml/node/36.jspx','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 17:18:01'),
	(508,1,'http://test.cn:8080/klml/a/news/gn/','http://test.cn:8080/klml/node/36.jspx','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 17:18:06'),
	(509,1,'http://test.cn:8080/klml/a/news/gn/24.html','http://test.cn:8080/klml/a/news/gn/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 17:18:08'),
	(510,1,'http://test.cn:8080/klml/a/news/gn/24.html','http://test.cn:8080/klml/a/news/gn/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 17:18:11'),
	(511,1,'http://test.cn:8080/klml/a/news/gn/24.html','http://test.cn:8080/klml/a/news/gn/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 17:18:13'),
	(512,1,'http://test.cn:8080/klml/a/news/gn/','http://test.cn:8080/klml/node/36.jspx','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 17:18:51'),
	(513,1,'http://test.cn:8080/klml/a/news/gn/','http://test.cn:8080/klml/node/36.jspx','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 17:19:07'),
	(514,1,'http://test.cn:8080/klml/a/news/gn/','http://test.cn:8080/klml/node/36.jspx','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 17:20:16'),
	(515,1,'http://test.cn:8080/klml/a/news/gn/','http://test.cn:8080/klml/node/36.jspx','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 17:20:18'),
	(516,1,'http://test.cn:8080/klml/a/news/gn/','','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 17:20:19'),
	(517,1,'http://test.cn:8080/klml/a/news/gn/','','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 17:20:27'),
	(518,1,'http://test.cn:8080/klml/a/news/gn/','','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 17:20:29'),
	(519,1,'http://test.cn:8080/klml/','','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 17:20:38'),
	(520,1,'http://test.cn:8080/klml/node/36.jspx','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 17:20:40'),
	(521,1,'http://test.cn:8080/klml/node/36.jspx','http://test.cn:8080/klml/','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 17:20:42'),
	(522,1,'http://test.cn:8080/klml/a/news/gn/','','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 17:20:50'),
	(523,1,'http://test.cn:8080/klml/a/news/gn/','','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 17:20:52'),
	(524,1,'http://test.cn:8080/klml/a/news/gn/','','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 17:20:54'),
	(525,1,'http://test.cn:8080/klml/a/news/gn/','','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 17:20:56'),
	(531,1,'http://test.cn:8080/klml/','http://test.cn:8080/klml/cmscp/index.do?_site=1','127.0.0.1','127.0.0.12015-06-05','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-05','2015-06-05','2015-06-05 17:25:37'),
	(534,1,'http://localhost:8080/klml/','','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12015-06-16','384600ef7e52441084222fa93d370592','384600ef7e52441084222fa93d3705922015-06-16','2015-06-16','2015-06-16 10:33:08'),
	(535,1,'http://localhost:8080/klml/special/12.jspx','','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12015-06-16','384600ef7e52441084222fa93d370592','384600ef7e52441084222fa93d3705922015-06-16','2015-06-16','2015-06-16 12:29:20'),
	(536,1,'http://localhost:8080/klml/special/12.jspx','','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12015-06-16','384600ef7e52441084222fa93d370592','384600ef7e52441084222fa93d3705922015-06-16','2015-06-16','2015-06-16 12:30:02'),
	(537,1,'http://test.cn:8080/klml/node/36.jspx','','127.0.0.1','127.0.0.12015-06-16','003344956ee54178a5f531b994f7bbdb','003344956ee54178a5f531b994f7bbdb2015-06-16','2015-06-16','2015-06-16 12:30:03'),
	(538,1,'http://localhost:8081/klml/','','0:0:0:0:0:0:0:1','0:0:0:0:0:0:0:12015-06-29','849233f759a046e09a7ef12d62064902','849233f759a046e09a7ef12d620649022015-06-29','2015-06-29','2015-06-29 19:58:50');

/*!40000 ALTER TABLE `cms_visit_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_vote
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_vote`;

CREATE TABLE `cms_vote` (
  `f_vote_id` int(11) NOT NULL,
  `f_site_id` int(11) NOT NULL,
  `f_title` varchar(150) NOT NULL COMMENT '标题',
  `f_number` varchar(100) DEFAULT NULL COMMENT '编码',
  `f_description` varchar(255) DEFAULT NULL COMMENT '描述',
  `f_begin_date` datetime DEFAULT NULL COMMENT '开始日期',
  `f_end_date` datetime DEFAULT NULL COMMENT '结束日期',
  `f_interval` int(11) NOT NULL DEFAULT '0' COMMENT '间隔时间（天）',
  `f_max_selected` int(11) NOT NULL DEFAULT '1' COMMENT '最多可选几项(0不限制)',
  `f_mode` int(11) NOT NULL DEFAULT '1' COMMENT '模式(1:独立访客,2:独立IP,3:独立用户)',
  `f_total` int(11) NOT NULL DEFAULT '0' COMMENT '总票数',
  `f_seq` int(11) NOT NULL DEFAULT '2147483647' COMMENT '排序',
  `f_status` int(11) NOT NULL DEFAULT '0' COMMENT '状态(0:启用,1:禁用)',
  PRIMARY KEY (`f_vote_id`),
  KEY `fk_cms_vote_site` (`f_site_id`),
  CONSTRAINT `fk_cms_vote_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投票表';

LOCK TABLES `cms_vote` WRITE;
/*!40000 ALTER TABLE `cms_vote` DISABLE KEYS */;

INSERT INTO `cms_vote` (`f_vote_id`, `f_site_id`, `f_title`, `f_number`, `f_description`, `f_begin_date`, `f_end_date`, `f_interval`, `f_max_selected`, `f_mode`, `f_total`, `f_seq`, `f_status`)
VALUES
	(1,1,'您从哪里知道本网站的',NULL,NULL,NULL,NULL,0,1,1,6,999,0);

/*!40000 ALTER TABLE `cms_vote` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_vote_mark
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_vote_mark`;

CREATE TABLE `cms_vote_mark` (
  `f_votemark_id` int(11) NOT NULL,
  `f_ftype` varchar(50) NOT NULL COMMENT '外表标识',
  `f_fid` int(11) NOT NULL COMMENT '外表ID',
  `f_date` datetime NOT NULL COMMENT '日期',
  `f_user_id` int(11) DEFAULT NULL COMMENT '用户',
  `f_ip` varchar(100) NOT NULL COMMENT 'IP',
  `f_cookie` varchar(100) NOT NULL COMMENT 'Cookie',
  PRIMARY KEY (`f_votemark_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投票标记表';

LOCK TABLES `cms_vote_mark` WRITE;
/*!40000 ALTER TABLE `cms_vote_mark` DISABLE KEYS */;

INSERT INTO `cms_vote_mark` (`f_votemark_id`, `f_ftype`, `f_fid`, `f_date`, `f_user_id`, `f_ip`, `f_cookie`)
VALUES
	(17,'InfoDigg',73,'2013-08-12 09:23:32',7,'0:0:0:0:0:0:0:1','229c54fa33b944af961103eaa0e28908'),
	(18,'InfoScore',93,'2013-08-12 09:31:29',NULL,'0:0:0:0:0:0:0:1','229c54fa33b944af961103eaa0e28908'),
	(19,'InfoScore',98,'2013-08-12 09:36:18',NULL,'0:0:0:0:0:0:0:1','229c54fa33b944af961103eaa0e28908'),
	(20,'InfoScore',97,'2013-08-12 09:38:47',NULL,'0:0:0:0:0:0:0:1','229c54fa33b944af961103eaa0e28908'),
	(21,'InfoDigg',69,'2013-08-13 01:15:47',1,'0:0:0:0:0:0:0:1','229c54fa33b944af961103eaa0e28908'),
	(22,'InfoDigg',69,'2013-08-13 01:15:48',1,'0:0:0:0:0:0:0:1','229c54fa33b944af961103eaa0e28908'),
	(23,'Vote',1,'2013-08-13 05:23:04',1,'0:0:0:0:0:0:0:1','229c54fa33b944af961103eaa0e28908'),
	(24,'InfoScore',87,'2013-08-13 05:23:16',1,'0:0:0:0:0:0:0:1','229c54fa33b944af961103eaa0e28908'),
	(25,'InfoDigg',87,'2013-08-13 05:23:18',1,'0:0:0:0:0:0:0:1','229c54fa33b944af961103eaa0e28908'),
	(26,'InfoDigg',28,'2013-08-13 07:00:03',1,'0:0:0:0:0:0:0:1','229c54fa33b944af961103eaa0e28908'),
	(27,'InfoDigg',87,'2013-08-14 03:04:12',NULL,'0:0:0:0:0:0:0:1','b4533b38b0884e3fa8646719f81b88c5'),
	(28,'InfoScore',87,'2013-08-14 03:34:11',NULL,'192.168.1.5','cd939e3841ec4fd19b85489f8366030b'),
	(29,'InfoDigg',84,'2013-08-14 05:45:34',1,'0:0:0:0:0:0:0:1','229c54fa33b944af961103eaa0e28908'),
	(30,'InfoScore',28,'2014-02-22 12:40:57',1,'0:0:0:0:0:0:0:1','313e662adb864836a79ac0df36c54d42');

/*!40000 ALTER TABLE `cms_vote_mark` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_vote_option
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_vote_option`;

CREATE TABLE `cms_vote_option` (
  `f_voteoption_id` int(11) NOT NULL,
  `f_vote_id` int(11) NOT NULL,
  `f_title` varchar(150) NOT NULL COMMENT '标题',
  `f_count` int(11) NOT NULL DEFAULT '0' COMMENT '得票数',
  `f_seq` int(11) NOT NULL DEFAULT '2147483647' COMMENT '排序',
  PRIMARY KEY (`f_voteoption_id`),
  KEY `fk_cms_voteoption_vote` (`f_vote_id`),
  CONSTRAINT `fk_cms_voteoption_vote` FOREIGN KEY (`f_vote_id`) REFERENCES `cms_vote` (`f_vote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投票项表';

LOCK TABLES `cms_vote_option` WRITE;
/*!40000 ALTER TABLE `cms_vote_option` DISABLE KEYS */;

INSERT INTO `cms_vote_option` (`f_voteoption_id`, `f_vote_id`, `f_title`, `f_count`, `f_seq`)
VALUES
	(1,1,'网友介绍的',0,0),
	(2,1,'百度搜索的',2,1),
	(3,1,'Google搜索的',1,2),
	(4,1,'其它搜索过来的',1,3),
	(5,1,'网址输错了进来的',0,4),
	(6,1,'太忙了不记得了',2,5);

/*!40000 ALTER TABLE `cms_vote_option` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_workflow
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_workflow`;

CREATE TABLE `cms_workflow` (
  `f_workflow_id` int(11) NOT NULL,
  `f_workflowgroup_id` int(11) NOT NULL COMMENT '工作流',
  `f_site_id` int(11) NOT NULL COMMENT '站点',
  `f_name` varchar(100) NOT NULL COMMENT '名称',
  `f_description` varchar(255) DEFAULT NULL COMMENT '描述',
  `f_seq` int(11) NOT NULL DEFAULT '2147483647' COMMENT '排序',
  `f_status` int(11) NOT NULL DEFAULT '1' COMMENT '状态(1:启用;2:禁用)',
  PRIMARY KEY (`f_workflow_id`),
  KEY `fk_cms_workflow_site` (`f_site_id`),
  KEY `fk_cms_workflow_workflowgroup` (`f_workflowgroup_id`),
  CONSTRAINT `fk_cms_workflow_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`),
  CONSTRAINT `fk_cms_workflow_workflowgroup` FOREIGN KEY (`f_workflowgroup_id`) REFERENCES `cms_workflow_group` (`f_workflowgroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工作流表';

LOCK TABLES `cms_workflow` WRITE;
/*!40000 ALTER TABLE `cms_workflow` DISABLE KEYS */;

INSERT INTO `cms_workflow` (`f_workflow_id`, `f_workflowgroup_id`, `f_site_id`, `f_name`, `f_description`, `f_seq`, `f_status`)
VALUES
	(2,2,1,'文档一级审核',NULL,2147483647,1);

/*!40000 ALTER TABLE `cms_workflow` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_workflow_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_workflow_group`;

CREATE TABLE `cms_workflow_group` (
  `f_workflowgroup_id` int(11) NOT NULL,
  `f_site_id` int(11) NOT NULL COMMENT '站点',
  `f_name` varchar(100) NOT NULL COMMENT '名称',
  `f_description` varchar(255) DEFAULT NULL COMMENT '描述',
  `f_seq` int(11) NOT NULL DEFAULT '2147483647' COMMENT '排序',
  PRIMARY KEY (`f_workflowgroup_id`),
  KEY `fk_cms_workflowgroup_site` (`f_site_id`),
  CONSTRAINT `fk_cms_workflowgroup_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工作流组表';

LOCK TABLES `cms_workflow_group` WRITE;
/*!40000 ALTER TABLE `cms_workflow_group` DISABLE KEYS */;

INSERT INTO `cms_workflow_group` (`f_workflowgroup_id`, `f_site_id`, `f_name`, `f_description`, `f_seq`)
VALUES
	(2,1,'文档审核',NULL,2147483647);

/*!40000 ALTER TABLE `cms_workflow_group` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_workflow_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_workflow_log`;

CREATE TABLE `cms_workflow_log` (
  `f_workflowlog_id` int(11) NOT NULL,
  `f_user_id` int(11) NOT NULL COMMENT '操作人',
  `f_site_id` int(11) NOT NULL COMMENT '站点',
  `f_workflowprocess_id` int(11) NOT NULL COMMENT '过程',
  `f_from` varchar(100) NOT NULL COMMENT '从哪',
  `f_to` varchar(100) NOT NULL COMMENT '到哪',
  `f_creation_date` datetime NOT NULL COMMENT '创建时间',
  `f_opinion` varchar(255) DEFAULT NULL COMMENT '意见',
  `f_type` int(11) NOT NULL COMMENT '类型(1:前进;2后退:;3:原地)',
  PRIMARY KEY (`f_workflowlog_id`),
  KEY `fk_cms_workflowlog_site` (`f_site_id`),
  KEY `fk_cms_workflowlog_user` (`f_user_id`),
  KEY `fk_cms_workflowlog_wfprocess` (`f_workflowprocess_id`),
  CONSTRAINT `fk_cms_workflowlog_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`),
  CONSTRAINT `fk_cms_workflowlog_user` FOREIGN KEY (`f_user_id`) REFERENCES `cms_user` (`f_user_id`),
  CONSTRAINT `fk_cms_workflowlog_wfprocess` FOREIGN KEY (`f_workflowprocess_id`) REFERENCES `cms_workflow_process` (`f_workflowprocess_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工作流流程日志表';



# Dump of table cms_workflow_process
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_workflow_process`;

CREATE TABLE `cms_workflow_process` (
  `f_workflowprocess_id` int(11) NOT NULL,
  `f_workflowstep_id` int(11) DEFAULT NULL COMMENT '步骤',
  `f_site_id` int(11) NOT NULL COMMENT '站点',
  `f_workflow_id` int(11) NOT NULL COMMENT '流程',
  `f_user_id` int(11) NOT NULL COMMENT '发起人',
  `f_data_id` int(11) NOT NULL COMMENT '数据ID',
  `f_data_type` int(11) NOT NULL COMMENT '数据类型(1:文档)',
  `f_begin_date` datetime NOT NULL COMMENT '开始时间',
  `f_end_date` datetime DEFAULT NULL COMMENT '结束时间',
  `f_is_rejection` char(1) NOT NULL DEFAULT '0' COMMENT '是否退回',
  `f_is_end` char(1) NOT NULL DEFAULT '0' COMMENT '是否结束',
  PRIMARY KEY (`f_workflowprocess_id`),
  KEY `fk_cms_wfprocess_wfstep` (`f_workflowstep_id`),
  KEY `fk_cms_workflowproc_site` (`f_site_id`),
  KEY `fk_cms_workflowproc_user` (`f_user_id`),
  KEY `fk_cms_workflowproc_workflow` (`f_workflow_id`),
  CONSTRAINT `fk_cms_wfprocess_wfstep` FOREIGN KEY (`f_workflowstep_id`) REFERENCES `cms_workflow_step` (`f_workflowstep_id`),
  CONSTRAINT `fk_cms_workflowproc_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`),
  CONSTRAINT `fk_cms_workflowproc_user` FOREIGN KEY (`f_user_id`) REFERENCES `cms_user` (`f_user_id`),
  CONSTRAINT `fk_cms_workflowproc_workflow` FOREIGN KEY (`f_workflow_id`) REFERENCES `cms_workflow` (`f_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工作流过程表';



# Dump of table cms_workflow_step
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_workflow_step`;

CREATE TABLE `cms_workflow_step` (
  `f_workflowstep_id` int(11) NOT NULL,
  `f_workflow_id` int(11) NOT NULL COMMENT '工作流',
  `f_name` varchar(100) NOT NULL COMMENT '名称',
  `f_seq` int(11) NOT NULL DEFAULT '2147483647' COMMENT '排序',
  PRIMARY KEY (`f_workflowstep_id`),
  KEY `fk_cms_workflowstep_workflow` (`f_workflow_id`),
  CONSTRAINT `fk_cms_workflowstep_workflow` FOREIGN KEY (`f_workflow_id`) REFERENCES `cms_workflow` (`f_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工作流步骤表';

LOCK TABLES `cms_workflow_step` WRITE;
/*!40000 ALTER TABLE `cms_workflow_step` DISABLE KEYS */;

INSERT INTO `cms_workflow_step` (`f_workflowstep_id`, `f_workflow_id`, `f_name`, `f_seq`)
VALUES
	(4,2,'等待终审',2147483647);

/*!40000 ALTER TABLE `cms_workflow_step` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cms_workflowstep_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms_workflowstep_role`;

CREATE TABLE `cms_workflowstep_role` (
  `f_wfsteprole_id` int(11) NOT NULL,
  `f_role_id` int(11) NOT NULL,
  `f_workflowstep_id` int(11) NOT NULL,
  `f_role_index` int(11) NOT NULL DEFAULT '0' COMMENT '角色排列顺序',
  PRIMARY KEY (`f_wfsteprole_id`),
  KEY `fk_cms_wfsteprole_role` (`f_role_id`),
  KEY `fk_cms_wfsteprole_wfstep` (`f_workflowstep_id`),
  CONSTRAINT `fk_cms_wfsteprole_role` FOREIGN KEY (`f_role_id`) REFERENCES `cms_role` (`f_role_id`),
  CONSTRAINT `fk_cms_wfsteprole_wfstep` FOREIGN KEY (`f_workflowstep_id`) REFERENCES `cms_workflow_step` (`f_workflowstep_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='审核步骤与角色关联表';

LOCK TABLES `cms_workflowstep_role` WRITE;
/*!40000 ALTER TABLE `cms_workflowstep_role` DISABLE KEYS */;

INSERT INTO `cms_workflowstep_role` (`f_wfsteprole_id`, `f_role_id`, `f_workflowstep_id`, `f_role_index`)
VALUES
	(1,1,4,0);

/*!40000 ALTER TABLE `cms_workflowstep_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table plug_resume
# ------------------------------------------------------------

DROP TABLE IF EXISTS `plug_resume`;

CREATE TABLE `plug_resume` (
  `f_resume_id` int(11) NOT NULL,
  `f_site_id` int(11) NOT NULL,
  `f_name` varchar(100) NOT NULL COMMENT '姓名',
  `f_post` varchar(100) NOT NULL COMMENT '应聘职位',
  `f_creation_date` datetime NOT NULL COMMENT '投递日期',
  `f_gender` char(1) NOT NULL DEFAULT 'M' COMMENT '性别',
  `f_birth_date` datetime DEFAULT NULL COMMENT '出生日期',
  `f_mobile` varchar(100) DEFAULT NULL COMMENT '手机',
  `f_email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `f_expected_salary` int(11) DEFAULT NULL COMMENT '期望薪水',
  `f_education_experience` longtext COMMENT '教育经历',
  `f_work_experience` longtext COMMENT '工作经历',
  `f_remark` longtext COMMENT '备注',
  PRIMARY KEY (`f_resume_id`),
  KEY `fk_plug_resume_site` (`f_site_id`),
  CONSTRAINT `fk_plug_resume_site` FOREIGN KEY (`f_site_id`) REFERENCES `cms_site` (`f_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='简历表';



# Dump of table qrtz_blob_triggers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `qrtz_blob_triggers`;

CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table qrtz_calendars
# ------------------------------------------------------------

DROP TABLE IF EXISTS `qrtz_calendars`;

CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table qrtz_cron_triggers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `qrtz_cron_triggers`;

CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(120) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table qrtz_fired_triggers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `qrtz_fired_triggers`;

CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table qrtz_job_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `qrtz_job_details`;

CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table qrtz_locks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `qrtz_locks`;

CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `qrtz_locks` WRITE;
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;

INSERT INTO `qrtz_locks` (`SCHED_NAME`, `LOCK_NAME`)
VALUES
	('schedulerFactory','TRIGGER_ACCESS');

/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table qrtz_paused_trigger_grps
# ------------------------------------------------------------

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;

CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table qrtz_scheduler_state
# ------------------------------------------------------------

DROP TABLE IF EXISTS `qrtz_scheduler_state`;

CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table qrtz_simple_triggers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `qrtz_simple_triggers`;

CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table qrtz_simprop_triggers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;

CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table qrtz_triggers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `qrtz_triggers`;

CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table t_id_table
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_id_table`;

CREATE TABLE `t_id_table` (
  `f_table` varchar(100) NOT NULL COMMENT '表名',
  `f_id_value` bigint(20) NOT NULL COMMENT 'ID值',
  PRIMARY KEY (`f_table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='主键表';

LOCK TABLES `t_id_table` WRITE;
/*!40000 ALTER TABLE `t_id_table` DISABLE KEYS */;

INSERT INTO `t_id_table` (`f_table`, `f_id_value`)
VALUES
	('cms_ad',3),
	('cms_ad_slot',2),
	('cms_attachment',37),
	('cms_attachment_ref',42),
	('cms_attribute',5),
	('cms_collect',2),
	('cms_collect_field',4),
	('cms_comment',17),
	('cms_friendlink',31),
	('cms_friendlinktype',5),
	('cms_guestbook',29),
	('cms_guestbooktype',4),
	('cms_info',239),
	('cms_info_attribute',421),
	('cms_info_membergroup',53),
	('cms_info_node',356),
	('cms_info_org',27),
	('cms_info_special',5),
	('cms_info_tag',39),
	('cms_member_group',2),
	('cms_model',25),
	('cms_model_field',474),
	('cms_node',135),
	('cms_node_membergroup',167),
	('cms_node_org',10),
	('cms_node_role',84),
	('cms_operation_log',155),
	('cms_org',5),
	('cms_publish_point',3),
	('cms_role',5),
	('cms_rolenode_info',1),
	('cms_rolenode_node',1),
	('cms_role_site',2),
	('cms_scoreboard',13),
	('cms_scoregroup',3),
	('cms_scoreitem',14),
	('cms_site',5),
	('cms_special',14),
	('cms_special_category',5),
	('cms_tag',74),
	('cms_task',16),
	('cms_user',10),
	('cms_user_membergroup',8),
	('cms_user_org',8),
	('cms_user_role',4),
	('cms_visit_log',539),
	('cms_vote',2),
	('cms_vote_mark',31),
	('cms_vote_option',7),
	('cms_workflow',3),
	('cms_workflowprocess_user',1),
	('cms_workflowstep_role',2),
	('cms_workflow_group',3),
	('cms_workflow_step',5),
	('plug_resume',3);

/*!40000 ALTER TABLE `t_id_table` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
