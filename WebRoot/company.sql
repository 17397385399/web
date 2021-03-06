/*
SQLyog Ultimate v11.27 (32 bit)
MySQL - 5.4.3-beta-community : Database - sq_bjyms34387
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sq_bjyms34387` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sq_bjyms34387`;

/*Table structure for table `adminmenu` */

DROP TABLE IF EXISTS `adminmenu`;

CREATE TABLE `adminmenu` (
  `id` varchar(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `showname` varchar(50) DEFAULT NULL,
  `ishasson` int(2) DEFAULT '0',
  `parentid` varchar(36) DEFAULT '-1',
  `nodeurl` varchar(100) DEFAULT NULL,
  `isnewblank` varchar(2) DEFAULT NULL,
  `creattime` datetime DEFAULT NULL,
  `sort` varchar(10) DEFAULT '999',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `adminmenu` */

insert  into `adminmenu`(`id`,`name`,`showname`,`ishasson`,`parentid`,`nodeurl`,`isnewblank`,`creattime`,`sort`) values ('1','首页','首页',0,'-1','/admin/main/main.action',NULL,NULL,'0'),('2','动态','动态',0,'-1','/admin/admindynamic/list.action?start=0',NULL,NULL,'1'),('3','留言','留言',0,'-1','/admin/adminmessage/list.action?start=0',NULL,NULL,'2'),('4','简介','简介',0,'-1','/admin/adminintroduce/list.action',NULL,NULL,'3'),('5','前端菜单','前端菜单',0,'-1','/admin/main/main.action',NULL,NULL,'4'),('6','视频','视频',0,'-1','/admin/main/main.action',NULL,NULL,'5'),('7','图片','图片',0,'-1','/admin/main/main.action',NULL,NULL,'7'),('8','其他','其他',1,'-1','',NULL,NULL,'8'),('9','用户','用户',1,'-1','',NULL,NULL,'9'),('10','设置','设置',1,'-1','',NULL,NULL,'6'),('11','友情链接','友情链接',0,'8','/admin/main/main.action',NULL,NULL,'1'),('12','访问记录','访问记录',0,'8','/admin/main/main.action',NULL,NULL,'2'),('13','管理用户','管理用户',0,'9','/admin/main/main.action',NULL,NULL,'1'),('14','管理登录日志','管理登录日志',0,'9','/admin/main/main.action',NULL,NULL,'2'),('15','基本设置','基本设置',0,'10','/admin/main/main.action',NULL,NULL,'1'),('16','阅读设置','阅读设置',0,'10','/admin/main/main.action',NULL,NULL,'2'),('17','安全配置','安全配置',0,'10','/admin/main/main.action',NULL,NULL,'3');

/*Table structure for table `album` */

DROP TABLE IF EXISTS `album`;

CREATE TABLE `album` (
  `id` varchar(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `type` varchar(10) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `sort` varchar(10) DEFAULT '9999',
  `url` varchar(100) DEFAULT NULL,
  `isShow` int(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `album` */

insert  into `album`(`id`,`name`,`description`,`type`,`createTime`,`sort`,`url`,`isShow`) values ('bea0a359-a59b-44e0-95fa-4fe6c0d6sfea','旅游相册1','旅游','1','2017-09-19 21:44:08','1','/res/upload/image/f01.jpg',0),('bea0a359-a59b-44e0-95fa-4fe6cdfgdfgi','旅游相册2','旅游','2','2017-09-20 09:49:04','1','/res/upload/image/f02.jpg',0),('bea0a359-a59b-44e0-95fa-4fsnwenrmvsf','旅游相册3','旅游','3','2017-09-20 09:49:08','1','/res/upload/image/f03.jpg',0),('bea0a359-a59b-44e0-95fa-4njgdfkash5d','旅游相册4','旅游','4','2017-09-20 09:49:06','1','/res/upload/image/f04.jpg',0),('bea0a359-a59b-44e0-95fa-4fe6c0d6sfwq','旅游相册5','旅游','5','2017-09-20 09:49:12','1','/res/upload/image/f05.jpg',0),('bea0a359-a59b-44e0-95fa-4fe6sjdngsdf','旅游相册6','旅游6','6','2017-09-20 09:49:16','1','/res/upload/image/f06.jpg',0);

/*Table structure for table `dynamic` */

DROP TABLE IF EXISTS `dynamic`;

CREATE TABLE `dynamic` (
  `id` varchar(36) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` text,
  `createDate` varchar(30) DEFAULT NULL,
  `createTime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dynamic` */

insert  into `dynamic`(`id`,`title`,`content`,`createDate`,`createTime`) values ('1','暑假去哪玩？桃花苑天地避暑甚好！','     暑期近在眼前，还在犹豫带孩子去哪儿玩吗？炎热的夏天，一颗躁动的心，背上收拾好的背包，走遍大好河山\r\n							，感受大千世界，还不如隐居室外桃源桃花苑天地精品。少一些城市的喧嚣，回归大自然的清新脱俗，来一场说走就走的夏日之旅吧。','2017-09-20','15:34:09'),('2','花落流水春又去','    春暖花开，桃花苑天地精品大咖云集，活动丰富。不仅有适合小朋友们的春游活动，有适合老年朋友的喝茶加棋牌，\r\n							还有书法大咖们的加盟，乃至电视真人秀节目的拍摄。这可把桃花宝宝们忙坏了，不过没关系，累并快乐着，桃花宝宝非常欢迎大家的到来……','2017-09-20','16:35:54'),('3','蝴蝶摘花来','    清朝末年，先生在宁波开了一家面店，生意不错。一天，一位即将回国的美国华侨\r\n，登船前来到卜先生的店里吃面，离店时竟把一只皮箱落下了。\r\n先生打烊时才发现这只皮箱，但已无法找到失主，只好把皮箱小心收藏，等待着失主前来认领。','2017-09-20','16:36:05'),('4','这是我们想去的地方','    春暖花开，桃花苑天地精品大咖云集，活动丰富。不仅\r\n有适合小朋友们的春游活动，有适合老年朋友的喝茶加棋牌，\r\n还有书法大咖们的加盟，乃至电视真人秀节目的拍摄。\r\n这可把桃花宝宝们忙坏了，不过没关系，累并快乐着，桃花宝宝非常欢迎大家的到来……','2017-09-20','16:36:03');

/*Table structure for table `introduce` */

DROP TABLE IF EXISTS `introduce`;

CREATE TABLE `introduce` (
  `id` varchar(36) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `introduce` */

insert  into `introduce`(`id`,`content`) values ('dd17c4f1-ba48-4f43-8354-a3a8200074e0','2012年11月首个城市百科成都站上线[10]  ；城市百科为城市打造独特的城市网络名片，通过线上线下相结合的推广手段，有效的带动城市相关内容的建设，让更多的人了解这座城市。\r\n     2013年9月25日新版词条页上线，这是自2008年以来词条页进行的第3次改版，也是词条浏览页变化最大的一次。11月4日百科商城全新升级，各团队专区全部合并，且统一使用财富值兑换礼品。11月18日百科任务系统上线，在该任务平台，活动的发起、参与编辑、词条评审等全由科友负责，任务自主性更高， 这是百科用户团队及词条编辑评审的一次重大改革和进步。\r\n     2014年5月14日新版明星百科词条页升级上线，打破了以往枯燥的百科阅读方式，打造出一站式的明星信息聚合平台。[11] \r\n     2014年9月12日，“词媒体”平台的百度百科全新改版上线，通过引入包括博物馆、书法家协会、卫计委等大量PGC资源，城市百科、明星百科等特型内容聚合页，百度百科突破了传统百科全书的模式局限，借助权威合作、词条质量优化、视觉升级、强化社会化协作等措施。[12] \r\n     2014年12月5日，最高人民法院与百度联手，将全国各法院的详细准确信息发布在百度百科上，并以“中国法院地图”的形式集合呈现。承接最高人民法院在信息化上的新举措，作为全球最大的中文百科全书的百度百科，将成为全国法院大全的权威平台。[13]  史记·2014 史记·2014\r\n     2014年12月底，推出百科年度总结篇《史记·2014》，以总榜单和分类特色榜单的形式盘点2014年的年度热词。\r\n     2015年2月9日，百度百科全球最大的海洋馆网上直播上线。[14]  4月1日，正式对外发布百度百科“行业名人词条”。“行业名人词条的建立，将为各行业名人与普通民众之间搭起桥梁，在互联网上去伪存真，建立最权威、真实、全方位展现当代行业名人风貌的信息库，成为个人品牌打造的新始发站。4月7日，百度百科陕西数字方志馆上线。[15-16] \r\n     2015年5月，百科个人中心改版，透过百度百科的“数字窗口”，让人们能够更便捷地认知世界。[17] \r\n     2015年7月15日，百度百科“艺术百科”正式上线，将艺术家、艺术作品、高品质的艺术展览等权威信息集合呈现到每个网民的面前，依托百度搜索强大的资源和百科大量的艺术家词条信息，简洁、快速、精准得到感兴趣的艺术类信息。7月21日，百度百科“科普中国·科学百科”专题上线，结合百度百科强大的平台影响力以及中国科协14个学会及国内顶尖专家资源，在互联网上开辟出了一块丰富权威的科普阵地。[18]  9月，百度百科上线“二战百科”专题，为中国人民抗日战争及世界反法西斯战争胜利70周年纪念日，推出再现历史的专题报道。\r\n     2015年12月27日，百度百科与房教中国在“第二届房教中国地产人年会暨第八届中国房地产策划师年会”上宣布正式合作，双方签署《关于地产百科战略合作协议》，携手打造打造专门针对地产垂直领域的“地产百科”。[19] \r\n     2015年12月29日，百科推出《史记·2015》，在“史记2015”中，百度百科勇敢打破旧有模式，以三大主题:“殇.生之逝”、“耀.国之盛”、“鸣.民之声”，深度展现2015大事件。\r\n     2016年4月28日，百度百科上线10周年发布会在京举行。会上百度百科全面展示了互联网知识平台的十年成就：累计创建词条1300多万，参与词条编辑的网友超过580万，每32秒诞生一个新词条。同时，百度百科正式发布了全新的产品“秒懂百科”。[20] \r\n     2016年8月22日下午，百度百科推出公益项目“萤火虫计划”，主要利用百度百科的内容结合VR、AR等技术，消除地理地域带来的限制，为贫困地区的学生提供知识获取途径，由王珞丹出任公益大使。[21] \r\n     词条页主要由百科名片和正文内容和一些辅助的信息组成；百科名片包括概述和基本信息栏，其中概述为整个词条的简介，对全文进行概括性的介绍，基本信息栏主要是以表单的形式列出关键的信息点；\r\n     特色词条 特色词条 词条正文内容按照一定的结构对词条展开介绍，其中词条可以设置一级目录和二级目录，用来对词条划分结构使用；在正文中，除了文字以外，还可以添加图片、视频、地图等富媒体内容，同时为了保证内容的准确性，理想状态是要求每段内容都有参考资料以辅证；\r\n     在词条正文底部，为参考资料以及开放分类信息，正文右侧的辅助信息包括词条统计、词条贡献榜、百科消息等，词条统计包含页面浏览和编辑次数、最近更新时间和创建者等信息；词条贡献榜突出显示对词条申请为优质版本或特色词条的用户，并用勋章图标标记。\r\n编辑页\r\n       在词条页词条名右侧有一个编辑按钮，其中对词条划分为三类：锁定（一般为争议或医疗类词条，禁止编辑）、485/685保护（词条内容较为丰富，等级≥4级/6级且通过率≥85%的账号可编辑）、普通类（任何百度账号都可编辑）；点击编辑之后，会进入编辑器页面。\r\n在编辑页面，可以对内容进行增删改等操作，其中编辑页顶部有各类功能，如字体、标题设置，添加参考资料、图片、表格、地图等操作，可以添加一些模块，如代码模块、公式模块、参演电视剧等特殊模块，也可以对一些内容添加内链，以链接到该添加内链所指向的词条上进行展开阅读。\r\n在对内容修改完毕之后，可以在编辑也右上角点击提交或者预览；点击预览，会显示词条如果通过之后的内容页；点击提交后需要写修改原因，之后需再次点击提交，最后进入系统审核阶段，并自动关闭了编辑页面。');

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id` varchar(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `showname` varchar(50) DEFAULT NULL,
  `ishasson` int(2) DEFAULT '0',
  `parentid` varchar(36) DEFAULT '-1',
  `nodeurl` varchar(100) DEFAULT NULL,
  `isnewblank` varchar(2) DEFAULT NULL,
  `creattime` datetime DEFAULT NULL,
  `sort` varchar(10) DEFAULT '999',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `menu` */

insert  into `menu`(`id`,`name`,`showname`,`ishasson`,`parentid`,`nodeurl`,`isnewblank`,`creattime`,`sort`) values ('2','相册','相册',0,'-1','/album/main.action?start=0',NULL,'2017-09-19 15:20:03','2'),('1','简介','简介',0,'-1','/introduce/main.action',NULL,'2017-09-19 15:19:59','1'),('3','留言中心','留言中心',0,'-1','/message/main.action',NULL,'2017-09-19 15:20:05','5'),('4','动态','动态',0,'-1','/dynamic/main.action',NULL,'2017-09-19 15:20:05','4'),('5','视频','视频',0,'-1','/video/main.action',NULL,'2017-09-19 15:20:05','3');

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id` varchar(36) NOT NULL,
  `content` text,
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `createrTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `message` */

insert  into `message`(`id`,`content`,`email`,`mobile`,`createrTime`) values ('bea0a359-a59b-44e0-95fa-4fe6c0d6baf9','sdfsdf','1@qq.com','18888888888','2017-09-19 21:14:15'),('32bc3ab3-7f45-4b14-a7dc-893a48159bc8','sdfsdfsdf','1@qq.com','18888888888','2017-09-19 21:14:02'),('04bebd24-bde0-4cbe-9257-00f6c52d74a4','sdsadas','1@qq.com','18888888888','2017-09-20 11:34:26'),('b038eb13-6f9e-443b-b51b-7fdc6b767fbf','1','1@qq.com','1','2017-09-21 17:08:59'),('7a8e85a5-002b-4c16-afb5-f8b42658dee4','11','11','11','2017-10-10 11:10:35');

/*Table structure for table `photos` */

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `id` varchar(36) NOT NULL,
  `albumId` varchar(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `url` varchar(200) DEFAULT NULL,
  `sort` varchar(10) DEFAULT '9999',
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `photos` */

insert  into `photos`(`id`,`albumId`,`name`,`description`,`url`,`sort`,`createTime`) values ('1','bea0a359-a59b-44e0-95fa-4fe6c0d6sfea','图片1','图片1','/res/images/img1.jpg','1','2017-09-19 21:45:37'),('2','bea0a359-a59b-44e0-95fa-4fe6cdfgdfgi','图片2','图片2','/res/images/img2.jpg','1','2017-09-19 21:45:37'),('3','bea0a359-a59b-44e0-95fa-4fsnwenrmvsf','图片3','图片3','/res/images/img3.jpg','1','2017-09-19 21:45:37'),('4','bea0a359-a59b-44e0-95fa-4njgdfkash5d','图片4','图片4','/res/images/img4.jpg','1','2017-09-19 21:45:37'),('5','bea0a359-a59b-44e0-95fa-4fe6c0d6sfwq','图片5','图片5','/res/images/img5.jpg','1','2017-09-19 21:45:37'),('6','bea0a359-a59b-44e0-95fa-4fe6sjdngsdf','图片6','图片6','/res/images/img6.jpg','1','2017-09-19 21:45:37');

/*Table structure for table `video` */

DROP TABLE IF EXISTS `video`;

CREATE TABLE `video` (
  `id` varchar(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `isShow` int(2) DEFAULT '0',
  `sort` varchar(10) DEFAULT '9999',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `video` */

insert  into `video`(`id`,`name`,`description`,`url`,`createTime`,`isShow`,`sort`) values ('1','视频1','视频','/res/upload/video/2dfc0ec4-48f3-4a0a-a1c6-a173db91b7c1.mp4','2017-09-21 09:27:04',0,'1'),('2','视频2','视频','/res/upload/video/2dfc0ec4-48f3-4a0a-a1c6-a173db91b7c1.mp4','2017-09-21 09:27:04',0,'2'),('3','视频3','视频','/res/upload/video/2dfc0ec4-48f3-4a0a-a1c6-a173db91b7c1.mp4','2017-09-21 09:27:04',0,'3'),('4','视频4','视频','/res/upload/video/2dfc0ec4-48f3-4a0a-a1c6-a173db91b7c1.mp4','2017-09-21 09:27:04',0,'4'),('5','视频5','视频','/res/upload/video/2dfc0ec4-48f3-4a0a-a1c6-a173db91b7c1.mp4','2017-09-21 09:27:04',0,'5');

/*Table structure for table `visitlog` */

DROP TABLE IF EXISTS `visitlog`;

CREATE TABLE `visitlog` (
  `id` varchar(36) NOT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `visittime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `visitlog` */

insert  into `visitlog`(`id`,`ip`,`visittime`) values ('40cabe5d-dad7-4858-9208-e69afd3cfcd8','0:0:0:0:0:0:0:1','2017-09-21 16:17:29'),('b6e7cf4d-8654-44a8-aac8-9b7c92a81da7','0:0:0:0:0:0:0:1','2017-09-21 16:16:23'),('ca120664-fe3e-406f-bd5a-4ff239f94a7a','0:0:0:0:0:0:0:1','2017-09-21 16:15:53'),('75ddc239-28ec-4b85-922b-923fa2ff1dbc','0:0:0:0:0:0:0:1','2017-09-21 16:14:53'),('b8979f9a-e1e6-44db-9058-ddf03bb3be14','0:0:0:0:0:0:0:1','2017-09-21 16:14:10'),('634be181-1875-4345-9e68-8be25ede574a','0:0:0:0:0:0:0:1','2017-09-21 16:13:09'),('1075a069-721a-4757-823c-e92da13cabfd','0:0:0:0:0:0:0:1','2017-09-21 16:11:51'),('07c272d7-fc5e-4b0f-be31-eeccb5030837','0:0:0:0:0:0:0:1','2017-09-21 16:09:04'),('86be44ed-16eb-49d4-97d3-481d17ad3f5d','0:0:0:0:0:0:0:1','2017-09-21 16:08:10'),('c0e30563-0e74-44c9-9219-3416bbc494d3','0:0:0:0:0:0:0:1','2017-09-21 16:06:10'),('0538451e-f8a6-427b-a851-1a93f912b4a6','0:0:0:0:0:0:0:1','2017-09-21 15:56:18'),('98735b24-51b3-4d32-8a83-ec28f6f33b7a','0:0:0:0:0:0:0:1','2017-09-21 15:55:58'),('4d1ac2ce-eec9-4a2c-b077-3fa033f15b59','0:0:0:0:0:0:0:1','2017-09-21 15:55:10'),('30f071c9-e38c-4a6a-b44a-4689796d9408','0:0:0:0:0:0:0:1','2017-09-21 15:49:33'),('4a215e9b-15be-40c1-89af-1c96060cd7e1','0:0:0:0:0:0:0:1','2017-09-21 15:48:07'),('d754ed4a-3cf2-4f86-a2cb-01f9847c9818','0:0:0:0:0:0:0:1','2017-09-21 15:46:42'),('bde0ba20-d52d-4c7e-a4f4-000119f5c39f','0:0:0:0:0:0:0:1','2017-09-21 15:46:26'),('47268432-7d8d-43ea-a95f-1ffa051fb187','0:0:0:0:0:0:0:1','2017-09-21 15:46:19'),('6269fb69-b3d1-4315-8c32-51138f438a39','0:0:0:0:0:0:0:1','2017-09-21 15:43:45'),('66cc6dc0-3015-48ff-a726-4fea9290cfea','0:0:0:0:0:0:0:1','2017-09-21 15:42:18'),('2d4d4170-92bc-4a7f-a69c-b41c0b86ca36','0:0:0:0:0:0:0:1','2017-09-21 15:41:38'),('270acf55-0fee-4b95-8bc8-745698a56a96','0:0:0:0:0:0:0:1','2017-09-21 13:35:36'),('fdadb850-9aef-4e3b-8191-8f6479e455d2','0:0:0:0:0:0:0:1','2017-09-21 13:35:26'),('cbfb22b2-ad87-4a4a-8fa2-ccfbcd9fc4e5','0:0:0:0:0:0:0:1','2017-09-21 11:40:19'),('0cb65e84-03c9-433c-ac3c-11a10b13a356','0:0:0:0:0:0:0:1','2017-09-21 11:36:08'),('3a4baeff-737f-4fb3-8244-3ed7c0265c00','0:0:0:0:0:0:0:1','2017-09-21 11:35:05'),('32823f23-3f02-4da7-b627-841e0026dd83','0:0:0:0:0:0:0:1','2017-09-21 11:33:35'),('f957df32-e4b5-46e9-bd53-68fc79c799fa','0:0:0:0:0:0:0:1','2017-09-21 11:32:20'),('4913442b-81c8-46d9-9f5d-1db743af1ee1','0:0:0:0:0:0:0:1','2017-09-21 11:31:40'),('ad69ea14-3732-4da6-af81-c4242ef0b80c','0:0:0:0:0:0:0:1','2017-09-21 11:30:11'),('5af16d94-4a93-4d7e-a07a-4ce3f0980871','0:0:0:0:0:0:0:1','2017-09-21 11:29:06'),('02122a47-098f-4849-840d-0e4ad70af7f2','0:0:0:0:0:0:0:1','2017-09-21 11:27:36'),('2a7fc788-4253-4f3a-8eb1-089a00a34b4d','0:0:0:0:0:0:0:1','2017-09-21 11:26:45'),('17f3b216-7f7a-4b01-8b18-047395babcdc','0:0:0:0:0:0:0:1','2017-09-21 11:26:20'),('c2f226f8-6c67-4bf0-ba06-ebddfadea8e0','0:0:0:0:0:0:0:1','2017-09-21 11:20:39'),('39491f6b-4b0b-4c6f-8816-9cc09358323b','0:0:0:0:0:0:0:1','2017-09-21 11:18:01'),('c33fa8b1-89d6-46b6-bfc8-64ce3b1cebfa','0:0:0:0:0:0:0:1','2017-09-21 11:14:23'),('c6486fb8-876f-4efd-acc4-9a185ff892ba','0:0:0:0:0:0:0:1','2017-09-21 11:14:12'),('2e4b6449-efe1-4d53-b112-df36a87ef32b','0:0:0:0:0:0:0:1','2017-09-21 11:12:12'),('496377be-6c0e-45c3-9ec4-f5953e6e76c8','0:0:0:0:0:0:0:1','2017-09-21 11:11:33'),('506ab3c4-88bb-44a7-85ab-f4884ddf97fe','0:0:0:0:0:0:0:1','2017-09-21 11:07:19'),('f4efb74c-1fae-488c-b843-5866ce0bfe5a','0:0:0:0:0:0:0:1','2017-09-21 11:06:44'),('edef5aad-4543-40ef-a511-fb9afa7b4342','0:0:0:0:0:0:0:1','2017-09-21 11:06:37'),('7ceb0c52-a7b9-40fd-986a-75b8ebc3c980','0:0:0:0:0:0:0:1','2017-09-21 10:50:27'),('3d6aa596-31da-4832-96f3-e5c4b813e478','0:0:0:0:0:0:0:1','2017-09-21 10:49:42'),('804b5120-0fdc-447e-bfcd-125ed42a3c89','0:0:0:0:0:0:0:1','2017-09-21 10:43:33'),('94654285-7cf6-43f5-af5f-ba9f746a729a','0:0:0:0:0:0:0:1','2017-09-21 10:43:30'),('956dee42-3476-457b-b63a-eeb246f4b13f','0:0:0:0:0:0:0:1','2017-09-21 10:43:27'),('e0003b7e-967f-4cf6-8b47-b755b60a1ba7','0:0:0:0:0:0:0:1','2017-09-21 10:42:44'),('05ae5f67-42be-47ca-9926-43e5050be8ae','0:0:0:0:0:0:0:1','2017-09-21 10:42:41'),('7d19e723-bc87-47d4-a5f1-e0231423a539','0:0:0:0:0:0:0:1','2017-09-21 10:39:43'),('9c371d9c-5e9a-43f5-805e-e3ab745455b2','0:0:0:0:0:0:0:1','2017-09-21 10:38:37'),('5ad17d92-a4b7-408c-8bb8-5d1135629850','0:0:0:0:0:0:0:1','2017-09-21 10:33:35'),('3175cc5e-685b-40b9-a773-1d8608e7b128','0:0:0:0:0:0:0:1','2017-09-21 10:30:09'),('f6829dd5-b729-4485-8c87-5e433dd9693c','0:0:0:0:0:0:0:1','2017-09-21 10:29:54'),('985940fb-7806-47ae-82f5-51e4f2ad1003','0:0:0:0:0:0:0:1','2017-09-21 10:29:38'),('fb4d850f-0b0b-4f4f-995d-ad52e9e0dbab','0:0:0:0:0:0:0:1','2017-09-21 10:29:34'),('05fe024e-ff84-465a-8bf3-44cdf90b0741','0:0:0:0:0:0:0:1','2017-09-21 10:27:51'),('23bc6ffc-d11c-44cf-9908-49ba77e28b1b','0:0:0:0:0:0:0:1','2017-09-21 10:27:14'),('5be4d3ad-b3f5-4c4e-a218-c240ab5a8156','0:0:0:0:0:0:0:1','2017-09-21 10:18:25'),('cbc384ce-7fa0-4d57-bf84-20e948b1696c','0:0:0:0:0:0:0:1','2017-09-21 10:13:00'),('d5e02650-e132-4db4-b66c-e2bf5996e701','0:0:0:0:0:0:0:1','2017-09-21 10:09:52'),('9ec9e54c-f674-48d4-a7b6-3d21e0955461','0:0:0:0:0:0:0:1','2017-09-21 10:09:15'),('0f2d7911-cc16-4f23-b275-603b85174374','0:0:0:0:0:0:0:1','2017-09-21 10:08:57'),('3b172304-8e6f-4172-9932-feaa1afb90e3','0:0:0:0:0:0:0:1','2017-09-21 10:08:43'),('96f8e417-fdc6-4245-ba63-c7bd7c9945b8','0:0:0:0:0:0:0:1','2017-09-21 10:06:06'),('bfb6e71a-800f-4a65-8382-40507722a7c2','0:0:0:0:0:0:0:1','2017-09-21 09:54:35'),('02a607ec-cc4d-4033-b9ba-18dbcfd2a248','0:0:0:0:0:0:0:1','2017-09-21 09:41:50'),('333b6eb9-c92a-4857-81e8-4559d0f13217','0:0:0:0:0:0:0:1','2017-09-21 09:39:33'),('c4e57dd2-177d-4951-9917-988380396627','0:0:0:0:0:0:0:1','2017-09-21 09:35:49'),('71208bbd-133b-4619-9f26-533c3283d05c','0:0:0:0:0:0:0:1','2017-09-21 09:34:53'),('61f9c122-ef39-4fc0-a341-85ea01597f29','0:0:0:0:0:0:0:1','2017-09-21 09:33:29'),('3e468ea4-f905-4a1d-8ff6-8b482dacdbf1','0:0:0:0:0:0:0:1','2017-09-21 09:32:54'),('96dead29-5b93-4e44-b9e0-10e0414a36b2','0:0:0:0:0:0:0:1','2017-09-21 09:32:44'),('ff2c8d62-832d-460d-8bd3-185b90075ca8','0:0:0:0:0:0:0:1','2017-09-21 09:31:12'),('fa0b7c73-547a-44ec-9cd2-160e1033599b','0:0:0:0:0:0:0:1','2017-09-21 08:50:45'),('96151697-127a-4652-98d9-65ca1284dbb7','0:0:0:0:0:0:0:1','2017-09-20 17:37:57'),('d211e673-61a5-4045-ad84-dec2d972d428','0:0:0:0:0:0:0:1','2017-09-20 17:37:30'),('899d3066-b455-459e-bc97-955cb307494f','0:0:0:0:0:0:0:1','2017-09-20 17:37:02'),('0de95031-4a05-405c-80b1-e9915a7a9f25','0:0:0:0:0:0:0:1','2017-09-20 17:37:00'),('487c2052-c617-4c6c-b4cb-c1d554b9c929','0:0:0:0:0:0:0:1','2017-09-20 17:35:20'),('b5e846b2-3093-4564-9b7d-b3cd0df08050','0:0:0:0:0:0:0:1','2017-09-20 17:29:22'),('8012fccc-fe3a-4fa0-a381-5f72bab5472d','0:0:0:0:0:0:0:1','2017-09-20 16:56:38'),('5869ef12-730c-4fa0-ad29-5095a7647283','0:0:0:0:0:0:0:1','2017-09-20 16:38:00'),('d86ee17e-5c7b-419a-9e04-54e5ee986150','0:0:0:0:0:0:0:1','2017-09-20 16:37:50'),('46f34aad-2d74-47fd-a69a-22fb36dab366','0:0:0:0:0:0:0:1','2017-09-20 16:34:42'),('ca6d17be-7811-49b2-b76d-930f53b8f383','0:0:0:0:0:0:0:1','2017-09-20 16:34:39'),('bc9ab4ee-69b3-4ffa-aba2-201896a606a0','0:0:0:0:0:0:0:1','2017-09-20 16:28:08'),('16135843-6209-4385-94fe-d782e7ddcd14','0:0:0:0:0:0:0:1','2017-09-20 16:27:43'),('fd18441e-8653-410a-916b-3c64e702f28f','0:0:0:0:0:0:0:1','2017-09-20 16:27:37'),('f4de151b-de9d-4257-b9ed-799bdd935d4a','0:0:0:0:0:0:0:1','2017-09-20 16:27:29'),('90778287-a4dd-4d29-adc7-ee91b9499b45','0:0:0:0:0:0:0:1','2017-09-20 16:21:18'),('a1e73503-deed-4b98-adbf-180d99d67a84','0:0:0:0:0:0:0:1','2017-09-20 16:00:22'),('067e6ab3-2f1f-47c7-82e5-82c8dfb7b131','0:0:0:0:0:0:0:1','2017-09-20 16:00:21'),('e4f38747-702d-46dc-bc36-195bf9767eaf','0:0:0:0:0:0:0:1','2017-09-20 16:00:19'),('bb7ef115-5d1e-40fd-846f-2a6e4f1f0495','0:0:0:0:0:0:0:1','2017-09-20 15:55:28'),('1a245399-eda2-4e59-b0e0-0205ffe66e47','0:0:0:0:0:0:0:1','2017-09-20 15:54:00'),('b8fc82dd-ffa9-40c6-b4ca-fdbf100fd455','0:0:0:0:0:0:0:1','2017-09-20 15:53:06'),('e735cd6f-92a2-4745-bca5-32e377cb94e7','0:0:0:0:0:0:0:1','2017-09-20 15:47:58'),('15999800-3fa1-45f7-a8ce-b8deabc88cf9','0:0:0:0:0:0:0:1','2017-09-20 15:47:43'),('37d2fbae-495a-4bd1-b3e8-781f63ba7ff1','0:0:0:0:0:0:0:1','2017-09-20 15:25:58'),('c1a2902b-4ffd-44fb-8713-724b17cb34ca','0:0:0:0:0:0:0:1','2017-09-20 15:25:09'),('8b6bb07d-461c-4efa-b421-02cb2461609c','0:0:0:0:0:0:0:1','2017-09-20 15:12:44'),('2fb45757-362a-4952-a1d4-fde41958354c','0:0:0:0:0:0:0:1','2017-09-20 15:11:43'),('2ec1855c-0d08-44fe-afbf-59968872fe5c','0:0:0:0:0:0:0:1','2017-09-20 15:11:12'),('9b24d6d3-d4e8-493b-82bd-a5108ad42dc8','0:0:0:0:0:0:0:1','2017-09-20 15:10:45'),('d0ec8cdf-af77-4cae-9edd-282224f60fa6','0:0:0:0:0:0:0:1','2017-09-20 15:08:31'),('84941015-f810-49e0-b36c-5b6575cfda44','0:0:0:0:0:0:0:1','2017-09-20 15:07:59'),('9d49717c-19a4-4280-8e04-323f045e59b8','0:0:0:0:0:0:0:1','2017-09-20 15:05:18'),('3fe1f9f3-9dec-4136-b8a9-01426ccb7d3f','0:0:0:0:0:0:0:1','2017-09-20 15:05:00'),('f01fc1db-8b51-42f4-b8b2-7250fafe835b','0:0:0:0:0:0:0:1','2017-09-21 16:23:04'),('f77429b2-5e67-4b5c-8dcf-884e4b4919bc','0:0:0:0:0:0:0:1','2017-09-21 16:23:17'),('270f2c78-de8d-4a6f-ab1e-6242b33566c3','0:0:0:0:0:0:0:1','2017-09-21 16:24:39'),('61b94e2d-631f-4823-bce7-8b0cd43a5042','0:0:0:0:0:0:0:1','2017-09-21 16:25:03'),('9f1a3ea3-8878-4033-9e71-0e4bd02db8bd','0:0:0:0:0:0:0:1','2017-09-21 16:25:23'),('1f1fa4b2-73fd-459a-84b0-ab77d14f4bea','0:0:0:0:0:0:0:1','2017-09-21 16:29:18'),('b517910b-1940-4254-b9fc-0107af2c4d8e','0:0:0:0:0:0:0:1','2017-09-21 16:29:42'),('b13a02b2-23ca-4c48-91a6-71a73527be69','0:0:0:0:0:0:0:1','2017-09-21 16:33:28'),('b60ba94d-8e04-44d5-b32d-776275929bbc','0:0:0:0:0:0:0:1','2017-09-21 16:33:58'),('e501fa41-8d39-4341-87cb-9f0b820f0e54','0:0:0:0:0:0:0:1','2017-09-21 16:36:00'),('2f048e5d-6784-45a2-9a77-d16c4b3f5965','0:0:0:0:0:0:0:1','2017-09-21 16:41:15'),('822bdd41-dd89-49e9-a353-36dcf99a20cd','0:0:0:0:0:0:0:1','2017-09-21 16:41:32'),('13737993-c01d-4227-9b39-18de61ba42a3','0:0:0:0:0:0:0:1','2017-09-21 16:43:08'),('1649235c-04f0-4f24-bd3c-2be5d7b71b1e','0:0:0:0:0:0:0:1','2017-09-21 16:44:04'),('54e8404c-995b-4891-915d-b9841bab90ac','0:0:0:0:0:0:0:1','2017-09-21 16:45:14'),('e8c66ca4-8e0b-4c2a-8bdc-88535849ad62','0:0:0:0:0:0:0:1','2017-09-21 16:45:56'),('22d1cf75-fe20-4778-aa2e-7dab4de1292d','0:0:0:0:0:0:0:1','2017-09-21 16:50:41'),('d796c05f-fbdf-4f64-87bb-a4e316dad094','0:0:0:0:0:0:0:1','2017-09-21 16:53:52'),('2728b384-248a-48d5-a0c5-97437a1cd293','0:0:0:0:0:0:0:1','2017-09-21 16:54:10'),('0eeb4ec3-2ada-4bbb-9094-cbf0ba62fb85','0:0:0:0:0:0:0:1','2017-09-21 16:55:55'),('fa523da5-1560-4bb4-885e-8cda5190f5b1','0:0:0:0:0:0:0:1','2017-09-21 17:00:46'),('38337189-e05e-42b4-b1d5-5be1c42864dd','0:0:0:0:0:0:0:1','2017-09-21 17:00:51'),('d1c3dd7f-20b6-4888-ada0-9dee85748ba2','0:0:0:0:0:0:0:1','2017-09-21 17:01:10'),('3214607a-544a-4cb3-8231-b5ef4a093d36','0:0:0:0:0:0:0:1','2017-09-21 17:23:16'),('c67b5012-5d63-47b2-91e4-a5fa1760d09e','0:0:0:0:0:0:0:1','2017-09-21 17:25:11'),('9e0282f2-6641-4c0a-a94f-ee4206249b5a','0:0:0:0:0:0:0:1','2017-09-21 17:26:23'),('4a6a988e-7c89-46ac-8426-e7398923f76d','0:0:0:0:0:0:0:1','2017-09-21 17:26:55'),('2008e362-78e7-4628-a322-e9b16d31009b','0:0:0:0:0:0:0:1','2017-09-21 17:27:53'),('46567e6d-1df2-49d5-bd41-b9704c794cab','0:0:0:0:0:0:0:1','2017-09-21 17:28:16'),('6c1c7c12-356c-43e1-9764-efdb3d40e2f4','0:0:0:0:0:0:0:1','2017-09-22 08:41:49'),('510fd4b1-ffa7-4805-88aa-2b303390fb83','0:0:0:0:0:0:0:1','2017-09-22 09:21:02'),('07a32d50-61a0-4283-bb7d-f54d1c23a940','0:0:0:0:0:0:0:1','2017-09-22 09:23:41'),('2605cf02-9b76-49cb-b89e-a0e841c5c857','0:0:0:0:0:0:0:1','2017-09-22 09:34:02'),('f183644f-e4f5-4923-8799-c46778c916d1','0:0:0:0:0:0:0:1','2017-09-22 09:34:25'),('ceb1d5a9-693a-4289-8087-0de0b6806562','0:0:0:0:0:0:0:1','2017-09-22 09:45:58'),('0c3d0571-491c-4a92-936d-103afa20e23d','0:0:0:0:0:0:0:1','2017-09-22 09:57:34'),('075d81dd-fbdd-43bc-9def-5319b39170ef','0:0:0:0:0:0:0:1','2017-09-22 09:57:37'),('668a8295-8095-45ea-8648-289b943fefd4','0:0:0:0:0:0:0:1','2017-09-22 10:00:03'),('17860d80-2b7e-4b16-a984-0d57c2ff166d','0:0:0:0:0:0:0:1','2017-09-22 10:00:30'),('d6b6dea4-bcc1-4f8b-9bfc-0b4d28164afe','0:0:0:0:0:0:0:1','2017-09-22 10:04:03'),('2d39e948-38ea-43be-bc6a-c5ff15a12f14','0:0:0:0:0:0:0:1','2017-09-22 10:47:49'),('bb5cdb4a-a2ab-48e3-86b9-dfde54f5278d','0:0:0:0:0:0:0:1','2017-09-22 10:52:16'),('59134d09-724e-4899-a407-dd720104fc79','0:0:0:0:0:0:0:1','2017-09-22 11:11:30'),('e34ea12e-d287-4e6b-98fe-a5a144d219eb','0:0:0:0:0:0:0:1','2017-09-22 11:13:10'),('aad3bcd1-2895-41be-ae39-e5f79a95a03c','0:0:0:0:0:0:0:1','2017-09-22 11:15:38'),('119c8c79-0fb9-4382-ba1e-f0906a4a4fbe','0:0:0:0:0:0:0:1','2017-09-22 11:16:58'),('2e28f037-5eb9-4e56-ba79-876c6a31d69e','0:0:0:0:0:0:0:1','2017-09-22 11:30:22'),('aab3684c-2b4e-432c-a5cb-46836cabbba9','0:0:0:0:0:0:0:1','2017-09-22 14:48:01'),('4d1a1169-b5bf-4ccb-919d-1bf0057114de','0:0:0:0:0:0:0:1','2017-09-22 14:50:40'),('5a16c467-b715-4596-ac62-7ac755538860','0:0:0:0:0:0:0:1','2017-09-22 14:50:55'),('eb2c1573-02ab-44ac-8f7f-3c08b3deef3e','0:0:0:0:0:0:0:1','2017-09-22 14:53:11'),('dd8a24b7-9247-47f9-9dd7-5334abfc5b5e','0:0:0:0:0:0:0:1','2017-09-22 14:53:24'),('f0802507-9237-4259-a946-24f04057385f','0:0:0:0:0:0:0:1','2017-09-22 14:55:46'),('85268110-8567-4e69-85ba-c99fabf1bb6c','0:0:0:0:0:0:0:1','2017-09-22 14:56:08'),('6ac3e4ea-176c-470c-a5aa-f9a402be645b','0:0:0:0:0:0:0:1','2017-09-22 14:57:26'),('0654d835-bb4b-4204-aacf-37b5640c5180','0:0:0:0:0:0:0:1','2017-09-22 14:57:38'),('64edae49-2dd3-4f34-b109-55358fb4a5ae','0:0:0:0:0:0:0:1','2017-09-22 14:59:23'),('b225721d-c9a4-41ac-8360-0b6d195fed07','0:0:0:0:0:0:0:1','2017-09-22 15:03:45'),('bfbb4cdc-9416-4e35-8859-aa8dc8de4600','0:0:0:0:0:0:0:1','2017-09-22 15:07:18'),('8637fafc-cbd2-4bd2-8fb3-4f1589e76f2d','0:0:0:0:0:0:0:1','2017-09-26 16:59:02'),('5bbafe7f-6412-4cfd-8cea-31b294db986d','0:0:0:0:0:0:0:1','2017-09-26 17:04:05'),('cc54e6e6-4bf8-4ffb-9973-7769c3423591','0:0:0:0:0:0:0:1','2017-09-26 17:11:53'),('3dbdbe88-3de5-4fd8-aeb6-f023d3e2ffc3','0:0:0:0:0:0:0:1','2017-09-26 17:13:04'),('17ac3747-4f69-4046-b36e-184278af8079','0:0:0:0:0:0:0:1','2017-09-26 17:13:06'),('11d3a92d-0952-45cf-9184-d4c3b33a2632','0:0:0:0:0:0:0:1','2017-09-26 18:41:01'),('1ed5a2f1-377c-49cd-afde-52625dbbd999','0:0:0:0:0:0:0:1','2017-09-26 18:41:04'),('1621ef39-f0e1-4047-b2cb-98b1ed9928ec','0:0:0:0:0:0:0:1','2017-09-26 19:07:18'),('07e10e99-8cb0-4c73-a97b-bcaf886519b2','0:0:0:0:0:0:0:1','2017-09-26 19:32:35'),('c0ceac10-6866-4d92-befe-7e5ed70be3c7','0:0:0:0:0:0:0:1','2017-09-26 19:43:04'),('59da54f5-65b7-44b3-a6fe-d0f912cccf4f','0:0:0:0:0:0:0:1','2017-09-28 19:33:17'),('5f3859c7-1627-42be-a723-6d6cd4bef0c7','0:0:0:0:0:0:0:1','2017-09-28 19:36:42'),('98a3de5f-c05e-46c6-8703-7b3e100222d6','0:0:0:0:0:0:0:1','2017-09-28 19:37:01'),('48078594-c558-4055-b828-df859f702aee','0:0:0:0:0:0:0:1','2017-09-28 19:38:03'),('0b01ada4-7845-4769-8462-5fc1bd933558','0:0:0:0:0:0:0:1','2017-09-28 19:41:22'),('8b173cfc-3d10-4ffb-a88c-efc920c2eafe','0:0:0:0:0:0:0:1','2017-09-28 20:11:23'),('a65934b9-c1ed-49e3-9ffc-1f2c1e29cced','0:0:0:0:0:0:0:1','2017-09-28 20:12:10'),('2a467c1a-5ce6-433c-826d-60a17765475a','0:0:0:0:0:0:0:1','2017-09-28 20:12:34'),('cb9b31a9-009d-478a-8a90-698f62a7fab4','0:0:0:0:0:0:0:1','2017-09-29 08:52:02'),('4347598d-cb4c-447e-809c-a8a385c51ad2','0:0:0:0:0:0:0:1','2017-09-29 08:52:02'),('23c6012a-9adb-4441-97c6-e1e9dc44f215','0:0:0:0:0:0:0:1','2017-09-29 10:49:57'),('b8de1478-40c1-40db-8ecd-ab1f44f4fa13','0:0:0:0:0:0:0:1','2017-09-29 11:09:10'),('24581ae7-422c-4a6e-9476-f3b9aea832d0','0:0:0:0:0:0:0:1','2017-09-29 12:32:06'),('4943c222-f78c-41fe-94fd-5c148bb45d78','0:0:0:0:0:0:0:1','2017-09-29 12:34:05'),('19d16c17-0513-484e-b9ca-b9d17397b8e3','0:0:0:0:0:0:0:1','2017-09-29 12:37:16'),('f6b9eb66-caa7-422c-b1a9-c997e3276c85','0:0:0:0:0:0:0:1','2017-09-29 12:47:58'),('431aeee3-4a52-4eaf-80c0-320e269d2dbe','0:0:0:0:0:0:0:1','2017-09-29 12:48:11'),('cdee02a2-89d1-41c2-862c-678143f6f1f6','0:0:0:0:0:0:0:1','2017-09-29 13:37:30'),('08ff123f-a7e2-469c-896d-667e6d7a4112','0:0:0:0:0:0:0:1','2017-09-29 14:08:27'),('b4b60fbe-8acf-4036-a27f-d6f774cde806','0:0:0:0:0:0:0:1','2017-09-29 14:08:34'),('fbdd61ef-9375-4721-ac81-9a48250cbda5','0:0:0:0:0:0:0:1','2017-09-29 14:08:36'),('50175b9d-5a5c-4219-b985-4cb2857a12a0','0:0:0:0:0:0:0:1','2017-09-29 14:08:47'),('81c7d612-cc72-47f2-bc9a-0354621e6a39','113.240.251.178','2017-09-29 14:44:00'),('50b7cc2f-0d5d-4a8a-b4e1-ff28d28ad5f7','113.240.251.178','2017-09-29 14:44:11'),('f4bda21f-781e-4a89-ac92-449e061baf7e','113.240.251.178','2017-09-29 14:46:06'),('b1310c2a-a22f-410b-a7f7-762842b10acb','222.240.103.108','2017-09-29 14:46:22'),('173144c5-3137-499d-8219-ddb73fb66ca5','0:0:0:0:0:0:0:1','2017-09-29 14:49:49'),('69609447-c2a1-46da-b981-7b190f0a4a9a','0:0:0:0:0:0:0:1','2017-09-29 14:52:20'),('cb181d68-a31d-407c-a3bf-3670ba9a288c','0:0:0:0:0:0:0:1','2017-09-29 14:52:41'),('5abc67e3-f84a-47f4-9569-7e46563cde17','115.152.250.78','2017-09-29 18:25:48'),('95d4f753-59bb-4712-abf7-08d3dc407ea0','115.152.250.73','2017-09-29 21:04:14'),('bab28316-ee9d-46e0-bf42-354c41cde4d4','220.202.152.56','2017-09-30 07:57:35'),('76867b69-0502-4b78-88bc-e12d9dbd3c67','106.17.33.14','2017-09-30 08:39:40'),('91961667-6594-45da-927f-7073d64008bc','113.240.251.178','2017-09-30 11:15:30'),('a120cd63-18ee-4b11-853d-9ca815036001','0:0:0:0:0:0:0:1','2017-09-30 11:16:24'),('ef2d6d5b-a7f5-43e6-8638-0d60e67ce896','0:0:0:0:0:0:0:1','2017-09-30 11:16:41'),('73e088a9-d556-4494-a9f5-600dfaab87a3','223.157.32.80','2017-09-30 20:08:55'),('934b5671-da43-41ba-ab07-b681818dca4e','183.61.38.55','2017-09-30 20:10:17'),('868db8f9-bb7e-4e98-b7a6-4518068ef8cc','183.61.51.226','2017-09-30 20:10:18'),('39a560a9-a5d2-4e05-b2e5-36201ddf8e32','223.157.32.80','2017-09-30 20:10:22'),('9bb16d88-93ae-48db-b9d2-df57bbd29fb4','117.185.27.114','2017-09-30 20:10:42'),('f80172ef-ccaa-4d39-b873-72acafbf2579','223.157.32.80','2017-09-30 21:06:30'),('b3b4e324-b6fd-4932-8a71-75951a3d19bd','223.157.32.80','2017-09-30 21:11:49'),('d332113a-7569-45dd-937a-23803b520b09','223.157.32.80','2017-09-30 21:17:47'),('fa250511-e876-4e89-a804-a332f0457ccd','223.157.32.80','2017-09-30 21:34:12'),('5be052f4-9479-4b25-9952-43f6f4aa4c7c','223.157.32.80','2017-09-30 21:38:35'),('b5f30b8f-fb67-407b-8f1e-f55635ad6cb6','223.157.32.80','2017-09-30 23:18:23'),('41c44ad4-415d-4050-9b8d-3a2fa0c74627','223.157.32.80','2017-09-30 23:29:10'),('4dbd4e43-b089-46bb-9145-ca7712b503cc','175.2.103.180','2017-10-01 09:43:58'),('86609a89-20b4-4402-84df-906c74a70d19','117.185.27.115','2017-10-01 09:44:07'),('ec473192-6dab-47df-a7b3-fd761e0ebe8e','175.2.103.180','2017-10-01 11:52:48'),('74c02d62-0121-4309-82b9-a23729d9e643','175.2.158.61','2017-10-02 21:46:09'),('6f7204c5-e3cd-4da0-b77b-1e0e88590163','106.17.198.253','2017-10-04 18:51:17'),('23ee0ef9-1c27-4b69-96d6-05c4d786ad71','117.185.27.113','2017-10-04 18:51:29'),('d3f23347-0760-453f-9a75-853c205ea4bc','117.185.27.113','2017-10-04 18:51:35'),('f57c6aa3-5ac7-496f-bc86-4e317032a6cf','106.17.198.253','2017-10-04 18:52:10'),('fa9daef4-c09f-4656-9fe1-fd47f70091b2','175.2.65.112','2017-10-05 22:35:15'),('74b2594a-f549-4420-8c44-6c85720e262d','113.240.251.178','2017-10-09 09:57:07'),('f45b8cb1-54fd-4fed-9d7e-f90eadec7853','0:0:0:0:0:0:0:1','2017-10-09 09:58:00'),('feb3f3e6-337f-43cc-bf21-4043d316e3fe','0:0:0:0:0:0:0:1','2017-10-09 16:04:13'),('4797f7af-94d3-4394-825b-73f6afe643e6','113.240.251.178','2017-10-09 16:23:20'),('aefb69c3-a702-432c-b743-13eb23b5488d','113.240.251.178','2017-10-10 08:44:18'),('ab56e995-a93e-418c-9f86-a00dd958083d','113.240.251.178','2017-10-10 08:49:34'),('1f8deefe-4261-4453-8eca-2b2118024fd3','113.240.251.178','2017-10-10 08:54:47'),('33d76d59-8ac0-4e7f-a813-3833830a1006','0:0:0:0:0:0:0:1','2017-10-10 08:55:33'),('a63dc350-aef9-4581-bdd1-863050406b1f','113.240.251.178','2017-10-10 10:22:12'),('0553b206-98a7-44dd-8145-de12c911c54a','0:0:0:0:0:0:0:1','2017-10-10 10:45:11'),('65f3a2c6-25e5-4904-ae8a-c6b03f641973','0:0:0:0:0:0:0:1','2017-10-10 10:52:43'),('b73ec148-10ef-493f-b305-139f80411922','0:0:0:0:0:0:0:1','2017-10-10 10:54:39'),('643cb564-19c0-45d9-9d84-427775325f27','0:0:0:0:0:0:0:1','2017-10-10 10:56:15'),('ff84b473-2d15-4abb-bb52-86a7ddc08123','0:0:0:0:0:0:0:1','2017-10-10 10:56:56'),('e5817d84-588f-400d-8449-e321ff8a7cec','0:0:0:0:0:0:0:1','2017-10-10 10:57:59'),('7caedc3d-5835-4e4e-be3d-3048f59df216','0:0:0:0:0:0:0:1','2017-10-10 10:58:27'),('e5aaa906-954e-4cd5-b47e-590844cf110e','0:0:0:0:0:0:0:1','2017-10-10 10:58:33'),('4581054e-04c6-4e6e-a21a-e2cdc5b5071e','0:0:0:0:0:0:0:1','2017-10-10 11:01:14'),('178c4309-b190-42d4-bb6b-931f6beaea9a','0:0:0:0:0:0:0:1','2017-10-10 11:02:24'),('24688a2e-f617-4924-9fb5-f0c6631c0c70','0:0:0:0:0:0:0:1','2017-10-10 11:03:30'),('c7461d45-ff7a-4a49-b884-6ec8cdb3e2f7','113.240.251.178','2017-10-10 11:09:26'),('0c710a4f-6987-4876-b3bf-86b94a3b5258','113.240.251.178','2017-10-10 11:09:34'),('a417d3d6-7615-4bab-86d4-0e97e25b10bf','113.240.251.178','2017-10-10 11:10:25');

/*Table structure for table `visitlogcount` */

DROP TABLE IF EXISTS `visitlogcount`;

CREATE TABLE `visitlogcount` (
  `id` varchar(36) NOT NULL,
  `count` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `count` (`count`)
) ENGINE=MyISAM AUTO_INCREMENT=261 DEFAULT CHARSET=utf8;

/*Data for the table `visitlogcount` */

insert  into `visitlogcount`(`id`,`count`) values ('00000000-0000-0000-0000-000000000000','369');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
