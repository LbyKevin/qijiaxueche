/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.17-log : Database - qijia
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `ims_acti2_cat` */

DROP TABLE IF EXISTS `ims_acti2_cat`;

CREATE TABLE `ims_acti2_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `orders` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  `uniacid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='分类表';

/*Data for the table `ims_acti2_cat` */

insert  into `ims_acti2_cat`(`id`,`cat_name`,`image`,`orders`,`addtime`,`uniacid`) values (4,'大众驾校','images/10/2017/12/BINJzn73jjI3229zIi9PI9jvj5vJ7j.jpg',1,1516007485,9),(5,'北京驾校','images/10/2017/12/kQjxh5I5E32hzx1N2hLHGgYTy2Eeyq.jpg',2,1516007508,9),(6,'天天驾校','images/10/2018/01/A6UAtLnN6T0t1d66z61avV6N71d66T.jpg',3,1516007545,9),(7,'天津驾校','images/10/2017/12/gRS2S2DGisYWiimwzdrwyI67IIeswR.jpg',4,1516007562,9),(8,'先达驾校','images/10/2017/12/V29G2DEzR37pE7RdP4RPROfuPH7ryD.jpg',5,1516007588,9),(11,'工大驾校','images/10/2018/01/rhMl6xz55zqpUhvLhVm5SmXPNT5zHq.jpg',6,1516073334,9);

/*Table structure for table `ims_acti2_join` */

DROP TABLE IF EXISTS `ims_acti2_join`;

CREATE TABLE `ims_acti2_join` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `acti_desc` text NOT NULL,
  `people` int(4) NOT NULL,
  `fee` float(11,2) NOT NULL DEFAULT '0.00',
  `date` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `province` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `district` varchar(200) NOT NULL,
  `place` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `openid` varchar(255) NOT NULL,
  `is_top` tinyint(1) NOT NULL DEFAULT '0',
  `mid` int(11) NOT NULL COMMENT '商户/组织id',
  `pid` int(11) NOT NULL COMMENT '分类id',
  `view` int(11) NOT NULL DEFAULT '0',
  `isscore` tinyint(1) NOT NULL DEFAULT '0',
  `likenum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `ims_acti2_join` */

insert  into `ims_acti2_join`(`id`,`uid`,`title`,`acti_desc`,`people`,`fee`,`date`,`enddate`,`province`,`city`,`district`,`place`,`image`,`nickname`,`note`,`status`,`uniacid`,`openid`,`is_top`,`mid`,`pid`,`view`,`isscore`,`likenum`) values (1,0,'活动名称1','&lt;p&gt;活动详情1&lt;/p&gt;',99,1.00,1490603216,1491467220,'天津','天津','和平区','XX街道','images/9/2018/01/gqHgsG8v1hgvFrQw8V1U8qh1U7spVz.jpg','','活动备注1',1,9,'',1,1,4,37,1,1),(2,0,'45天拿驾照','&lt;p&gt;时间快，欢乐多，环境好&lt;/p&gt;',100,1.00,1516007600,1516266840,'天津','天津','西青区','天津市西青区宾水西道399号','images/9/2018/01/F2wVsSu437Mmq2MrnH3J6zSUMUvJ32.jpg','','每天都可以',1,9,'',1,5,6,30,1,0),(3,0,'暑假班，开报了','&lt;p&gt;让暑假不再浪费&lt;/p&gt;',200,0.01,1516102080,1517052480,'北京','北京','宣武区','北京天安门广场','images/10/2018/01/eZHHBM2mMV3mUhnMm7MsmZ8Xf21183.jpg','','',1,9,'',1,7,8,89,1,0),(4,0,'开学季，学驾照，组团有优惠哦！','&lt;p&gt;欢迎各位工大学生前来报名，我们将提供专业的驾考服务，先进的驾考设备，新生持学生证可获得500元优惠，组团报名更优惠。&lt;/p&gt;',2000,2200.00,1516073442,1517369580,'天津','天津','西青区','天津市西青区宾水西道399号','images/10/2017/12/V29G2DEzR37pE7RdP4RPROfuPH7ryD.jpg','','欢迎各位学生组团前来学车',1,9,'',1,8,11,21,0,1),(5,0,'学车','&lt;p&gt;在北京学车&lt;/p&gt;',100,0.01,1516108553,1516108553,'北京','北京','朝阳区','天安门广场','images/9/2018/01/MGzpjuu7THLHTw7YJmP6PuPu7Q7g8x.jpg','','',1,9,'',1,9,5,26,0,1),(6,0,'新东方驾校，横下天下','&lt;p&gt;我们有专业的驾考培训团队，先进的考试系统，优质的教育资源，舒适的场地，高逼格的业余休闲时光&lt;br/&gt;&lt;/p&gt;',1000,0.01,1517275936,1517362440,'天津','天津','滨海新区','天津市滨海新区前进道254号','images/9/2018/01/Q81ywy4S5A9sb9ccN7zCnyY97o1yOo.jpg','','组队有优惠哦',1,9,'',1,10,12,4,1,1);

/*Table structure for table `ims_acti2_qijia_admin` */

DROP TABLE IF EXISTS `ims_acti2_qijia_admin`;

CREATE TABLE `ims_acti2_qijia_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `state` tinyint(4) DEFAULT '1' COMMENT '1正常-1锁定',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `ims_acti2_qijia_admin` */

insert  into `ims_acti2_qijia_admin`(`id`,`username`,`nickname`,`password`,`ctime`,`state`) values (1,'jianghairui','姜海蕤','e10adc3949ba59abbe56e057f20f883e','2018-01-26 10:38:11',1),(2,'manenghu','马能虎','e10adc3949ba59abbe56e057f20f883e','2018-01-30 08:59:01',1),(3,'liboyang','李博洋','e10adc3949ba59abbe56e057f20f883e','2018-01-30 08:59:22',1);

/*Table structure for table `ims_acti2_qijia_apply` */

DROP TABLE IF EXISTS `ims_acti2_qijia_apply`;

CREATE TABLE `ims_acti2_qijia_apply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Data for the table `ims_acti2_qijia_apply` */

insert  into `ims_acti2_qijia_apply`(`id`,`name`,`tel`,`ctime`,`ip`) values (1,'姜海蕤','13102163019','2018-01-29 16:01:32','192.168.3.144'),(2,'李博洋','15888888888','2018-01-29 16:05:39','192.168.3.40'),(3,'韩驰','13666666666','2018-01-29 16:05:54','192.168.3.250'),(4,'张林','15333333333','2018-01-29 16:07:32','192.168.3.90'),(5,'王永胜','18888888888','2018-01-29 16:07:39','192.168.3.157'),(6,'赵铁柱','18526860281','2018-01-29 17:40:37','192.168.3.38');

/*Table structure for table `ims_acti2_qijia_contact` */

DROP TABLE IF EXISTS `ims_acti2_qijia_contact`;

CREATE TABLE `ims_acti2_qijia_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `linkman` varchar(50) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `registration` varchar(50) DEFAULT NULL,
  `qrcode` varchar(500) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `ims_acti2_qijia_contact` */

insert  into `ims_acti2_qijia_contact`(`id`,`linkman`,`tel`,`city`,`address`,`email`,`registration`,`qrcode`,`content`) values (1,'宴小姐','15385245826','中国.北京','北京市朝阳区西大望路外企大厦B座18层','18201263901@139.com','京ICP12346585号-2','./Public/Uploads/2018-01-29/5a6ece43193d5.png','&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;你牛逼你来说，新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面呢小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面呢小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面呢小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面呢小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面呢小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面呢小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;br/&gt;\r\n &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面呢小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面呢小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面呢小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面呢小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面呢小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面呢小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/p&gt;');

/*Table structure for table `ims_acti2_qijia_news` */

DROP TABLE IF EXISTS `ims_acti2_qijia_news`;

CREATE TABLE `ims_acti2_qijia_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `content` text,
  `img` varchar(255) DEFAULT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sort` int(11) DEFAULT '0',
  `admin_id` int(11) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL COMMENT '1企业历程2行业动态3交通法规',
  `is_recommend` tinyint(4) DEFAULT '1' COMMENT '1推荐-1不推荐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

/*Data for the table `ims_acti2_qijia_news` */

insert  into `ims_acti2_qijia_news`(`id`,`title`,`desc`,`content`,`img`,`ctime`,`sort`,`admin_id`,`type`,`is_recommend`) values (7,'新手开车注意事项','交通法规，全称中华人民共和国道路交通安全法，是为了维护道路交通秩序，预防和减少交通事故，保护人身安全，保护公民、法人和其他组织的财产安全及其他合法权益，提高道路通行效率，制定的法规。','&lt;p&gt;公安部2012年10月8日公布了最新修订的《机动车驾驶证申领和使用规定》，新交通规则严格了对驾驶员的管理。最新交通法规扣分细则也更为严格，闯红灯交通违法记分将由3分提高到6分，不挂号牌或遮挡号牌的一次就将扣光12分。[1]&amp;nbsp;&lt;/p&gt;&lt;p&gt;具体扣分细节如下：&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;一、机动车驾驶人有下列违法行为之一，一次记12分：&lt;/p&gt;&lt;p&gt;（一）驾驶与准驾车型不符的机动车的；&lt;/p&gt;&lt;p&gt;（二）饮酒后驾驶机动车的；&lt;/p&gt;&lt;p&gt;（三）驾驶营运客车（不包括公共汽车）、校车载人超过核定人数20%以上的；&lt;/p&gt;&lt;p&gt;（四）造成交通事故后逃逸，尚不构成犯罪的；&lt;/p&gt;&lt;p&gt;（五）上道路行驶的机动车未悬挂机动车号牌的，或者故意遮挡、污损、不按规定安装机动车号牌的；&lt;/p&gt;&lt;p&gt;（六）使用伪造、变造的机动车号牌、行驶证、驾驶证、校车标牌或者使用其他机动车号牌、行驶证的；&lt;/p&gt;&lt;p&gt;（七）驾驶机动车在高速公路上倒车、逆行、穿越中央分隔带掉头的；&lt;/p&gt;&lt;p&gt;（八）驾驶营运客车在高速公路车道内停车的；&lt;/p&gt;&lt;p&gt;（九）驾驶中型以上载客载货汽车、校车、危险物品运输车辆在高速公路、城市快速路上行驶超过规定时速20%以上或者在高速公路、城市快速路以外的道路上行驶超过规定时速50%以上，以及驾驶其他机动车行驶超过规定时速50%以上的；&lt;/p&gt;&lt;p&gt;（十）连续驾驶中型以上载客汽车、危险物品运输车辆超过4小时未停车休息或者停车休息时间少于20分钟的；&lt;/p&gt;&lt;p&gt;（十一）未取得校车驾驶资格驾驶校车的。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','./Public/Uploads/2018-01-30/5a6fcfa379106.jpg','2018-01-30 09:51:31',0,2,3,1),(8,'2018年起交通法规迎来新的变革','交通法规，全称中华人民共和国道路交通安全法，是为了维护道路交通秩序，预防和减少交通事故，保护人身安全，保护公民、法人和其他组织的财产安全及其他合法权益，提高道路通行效率，制定的法规。','&lt;p&gt;公安部2012年10月8日公布了最新修订的《机动车驾驶证申领和使用规定》，新交通规则严格了对驾驶员的管理。最新交通法规扣分细则也更为严格，闯红灯交通违法记分将由3分提高到6分，不挂号牌或遮挡号牌的一次就将扣光12分。[1]&amp;nbsp;&lt;/p&gt;&lt;p&gt;具体扣分细节如下：&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;一、机动车驾驶人有下列违法行为之一，一次记12分：&lt;/p&gt;&lt;p&gt;（一）驾驶与准驾车型不符的机动车的；&lt;/p&gt;&lt;p&gt;（二）饮酒后驾驶机动车的；&lt;/p&gt;&lt;p&gt;（三）驾驶营运客车（不包括公共汽车）、校车载人超过核定人数20%以上的；&lt;/p&gt;&lt;p&gt;（四）造成交通事故后逃逸，尚不构成犯罪的；&lt;/p&gt;&lt;p&gt;（五）上道路行驶的机动车未悬挂机动车号牌的，或者故意遮挡、污损、不按规定安装机动车号牌的；&lt;/p&gt;&lt;p&gt;（六）使用伪造、变造的机动车号牌、行驶证、驾驶证、校车标牌或者使用其他机动车号牌、行驶证的；&lt;/p&gt;&lt;p&gt;（七）驾驶机动车在高速公路上倒车、逆行、穿越中央分隔带掉头的；&lt;/p&gt;&lt;p&gt;（八）驾驶营运客车在高速公路车道内停车的；&lt;/p&gt;&lt;p&gt;（九）驾驶中型以上载客载货汽车、校车、危险物品运输车辆在高速公路、城市快速路上行驶超过规定时速20%以上或者在高速公路、城市快速路以外的道路上行驶超过规定时速50%以上，以及驾驶其他机动车行驶超过规定时速50%以上的；&lt;/p&gt;&lt;p&gt;（十）连续驾驶中型以上载客汽车、危险物品运输车辆超过4小时未停车休息或者停车休息时间少于20分钟的；&lt;/p&gt;&lt;p&gt;（十一）未取得校车驾驶资格驾驶校车的。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','./Public/Uploads/2018-01-30/5a6fd00ecef2e.jpg','2018-01-30 09:53:18',0,1,3,1),(10,'环境一','环境一环境一环境一环境一环境一','','./Public/Uploads/2018-01-30/5a701ffe55c5c.jpg','2018-01-30 15:21:39',0,1,4,1),(11,'环境二','环境二环境二环境二','','./Public/Uploads/2018-01-30/5a702011777f5.jpg','2018-01-30 15:21:56',1,1,4,1),(12,'环境三','环境三环境三环境三','','./Public/Uploads/2018-01-30/5a70201aa2e47.jpg','2018-01-30 15:22:05',2,1,4,1),(13,'价值主张','公司发展的正确价值观','&lt;p&gt;为适应信息行业正在发生的革命性变化，华为围绕客户需求和技术领先持续创新，与业界伙伴开放合作，聚焦构筑面向未来的信息管道，持续为客户和全社会创造价值。为适应信息行业正在发生的革命性变化，华为围绕客户需求和技术领先持续创新，与业界伙伴开放合作，聚焦构筑面向未来的信息管道，持续为客户和全社会创造价值。为适应信息行业正在发生的革命性变化，华为围绕客户需求和技术领先持续创新，与业界伙伴开放合作，聚焦构筑面向未来的信息管道，持续为客户和全社会创造价值。&lt;/p&gt;','./Public/Uploads/2018-01-30/5a702b3086763.jpg','2018-01-30 16:22:09',0,1,1,1),(14,'公司治理','正确合理的管理方案','&lt;p&gt;公司坚持以客户为中心、以奋斗者为本，持续改善公司治理架构、组织、流程和考核，使公司长期保持有效增长。公司坚持以客户为中心、以奋斗者为本，持续改善公司治理架构、组织、流程和考核，使公司长期保持有效增长。公司坚持以客户为中心、以奋斗者为本，持续改善公司治理架构、组织、流程和考核，使公司长期保持有效增长。公司坚持以客户为中心、以奋斗者为本，持续改善公司治理架构、组织、流程和考核，使公司长期保持有效增长。公司坚持以客户为中心、以奋斗者为本，持续改善公司治理架构、组织、流程和考核，使公司长期保持有效增长。公司坚持以客户为中心、以奋斗者为本，持续改善公司治理架构、组织、流程和考核，使公司长期保持有效增长。公司坚持以客户为中心、以奋斗者为本，持续改善公司治理架构、组织、流程和考核，使公司长期保持有效增长。&lt;/p&gt;','./Public/Uploads/2018-01-30/5a702bda9a764.jpg','2018-01-30 16:22:57',0,1,1,1),(15,'发展历程','公司的发展历程','&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;华为于1987年成立于中国深圳。在20多年的时间里，华为全体员工付出艰苦卓越的努力，以开放的姿态参与到全球化的经济竞合中，逐步发展成一家业务遍及全球170多个国家和地区的全球化公司。华为于1987年成立于中国深圳。在20多年的时间里，华为全体员工付出艰苦卓越的努力，以开放的姿态参与到全球化的经济竞合中，逐步发展成一家业务遍及全球170多个国家和地区的全球化公司。华为于1987年成立于中国深圳。在20多年的时间里，华为全体员工付出艰苦卓越的努力，以开放的姿态参与到全球化的经济竞合中，逐步发展成一家业务遍及全球170多个国家和地区的全球化公司。华为于1987年成立于中国深圳。在20多年的时间里，华为全体员工付出艰苦卓越的努力，以开放的姿态参与到全球化的经济竞合中，逐步发展成一家业务遍及全球170多个国家和地区的全球化公司。华为于1987年成立于中国深圳。在20多年的时间里，华为全体员工付出艰苦卓越的努力，以开放的姿态参与到全球化的经济竞合中，逐步发展成一家业务遍及全球170多个国家和地区的全球化公司。&lt;/p&gt;','./Public/Uploads/2018-01-30/5a702bc8cdbde.jpg','2018-01-30 16:24:41',0,1,1,1),(16,'不忘初心：是什么造就了今天的习近平？','填上不会掉馅饼,撸起袖子加油干!!!','&lt;p&gt;“My seven years of rural life in northern Shaanxi Province gave me something mysterious and sacred,” said Chinese President Xi Jinping during a 1995 interview. He started working in the countryside at the age of 15, an experience which shaped his personality and helped him become the man he is today.&lt;/p&gt;&lt;p&gt;一段经历往往会改变一个人的一生。出身于革命家庭的习近平，15岁的时候去陕北农村插队，也正是那一段经历给了他一种力量、一种勇气和一种生活信念。&lt;/p&gt;&lt;p&gt;My seven-year rural life in northern Shaanxi Province gave me something mysterious and sacred.&lt;/p&gt;&lt;p&gt;在陕北插队的七年，给我留下的东西几乎带有一种很神秘也很神圣的感觉。&lt;/p&gt;&lt;p&gt;Whenever I faced a challenge or a test or started a new job, I could somehow hear my fellow Shaanxi folks singing local songs on the farm.&lt;/p&gt;&lt;p&gt;每有一种挑战、一种考验，或者要去做一个新的工作的时候，我们脑海里翻腾的都是陕北高原上耕牛的父老兄弟的信天游。&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/Public/ueditor/php/upload/image/20180130/1517300662361639.jpg&quot; title=&quot;1517300662361639.jpg&quot; alt=&quot;2a8b7696-deb9-4259-b5c3-61f0f02bb571.jpg&quot; width=&quot;446&quot; height=&quot;284&quot;/&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;img src=&quot;/Public/ueditor/php/upload/image/20180130/1517300709589234.jpg&quot; title=&quot;1517300709589234.jpg&quot; alt=&quot;754cc449-4798-439c-a986-dd6415787463.jpg&quot; width=&quot;431&quot; height=&quot;284&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;I came to know that fundamental power rests with people. I gained a better understanding of ordinary people and society. This was the most fundamental influence.&lt;/p&gt;&lt;p&gt;看到了人民群众的力量，看到了人民群众的根本，真正理解了老百姓、了解了社会，这个是最根本的。&lt;/p&gt;&lt;p&gt;My idea of seeking truth from facts was formed then, and it has influenced me until now.&lt;/p&gt;&lt;p&gt;很多实事求是的想法都是从那个时候生根发芽的。以至于到现在，每时每刻影响着我。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','./Public/Uploads/2018-01-30/5a702c0c17882.jpg','2018-01-30 16:25:48',4,1,1,1),(17,'向百亿迈进打造产业互联网集团 慧聪全面布局区块链','　　中新网1月29日电 日前，慧聪集团在北京 慧聪园召开主题为“超越 蝶变”的集团管理会议。会上慧聪集团CEO刘军、总裁刘小东等核心领导发表了主题演讲，宣布了慧聪集团全新战略方向。','&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;向百亿迈进 打造中国领先的产业互联网集团&lt;/p&gt;&lt;p&gt;　　慧聪集团CEO刘军表示，未来将慧聪集团打造成为中国领先的产业互联网集团。更好的为广大中小企业服务，共同迈向未来互联网产业发展的新蓝海。&lt;/p&gt;&lt;p&gt;　　刘军提出2018年慧聪集团的目标是实现100亿营收。通过让中关村在线和多行业、海量客户进行化学反应，通过盘活“买化塑”、“棉联”、“中模”在垂直产业中的重要作用，通过利用金融科技的放杠杆和场景实现，以及通过物联网数据的升级变现来实现这一目标。&lt;/p&gt;&lt;p&gt;　　通过战略的实施，慧聪集团将在2018年向百亿目标迈进。刘军指出，慧聪集团不仅能实现100亿营收的目标，未来2019年可以做到200亿，成为中国企业500强；2020年做到500亿，到了2021年做到1000亿，成为中国企业200强。&lt;/p&gt;&lt;p&gt;　　慧聪集团总裁刘小东以“构建慧聪互联网产业新生态”为题详细阐述了未来慧聪互联网集团发展战略。刘小东指出，慧聪互联网集团将通过技术赋能降本增效，搭建产业互联网；深化供应链服务，布局仓储、交易和金融业务，将慧聪互联网集团打造成为中国领先的产业互联网信息与商务门户。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','./Public/Uploads/2018-01-30/5a702fac5f51c.jpg','2018-01-30 16:41:16',0,1,2,1),(18,'文投360投资基金在京发布 布局“互联网+文化”产业','2018年1月23日，以“文化互联+ 未来已来”为主题的文投360投资基金成立发布会在北京诺金酒店举行。','&lt;p&gt;　2018年1月23日，以“文化互联+ 未来已来”为主题的文投360投资基金成立发布会在北京诺金酒店举行。北京市国有文化资产监督管理办公室党组书记、主任郭晓明先生，三六零科技股份有限公司董事长、著名天使投资人周鸿祎先生，北京市文化投资发展集团有限责任公司党委书记、董事长周茂非先生，以及相关企业、机构、政府领导参加了发布会，共同见证了“文投360投资基金”的成立。&lt;/p&gt;&lt;p&gt;据悉，本次发布的文投360投资基金是由北京市文化中心建设发展基金管理有限公司(以下简称“文化中心基金”)联合三六零股份有限公司双方共同出资、发起设立的，总规模为10亿元，专注于互联网大文化产业股权及项目投资。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','./Public/Uploads/2018-01-30/5a7030ace0a89.jpeg','2018-01-30 16:45:33',0,2,2,1);

/*Table structure for table `ims_acti2_qijia_pvuv` */

DROP TABLE IF EXISTS `ims_acti2_qijia_pvuv`;

CREATE TABLE `ims_acti2_qijia_pvuv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_ip` varchar(80) DEFAULT NULL,
  `vtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `ims_acti2_qijia_pvuv` */

insert  into `ims_acti2_qijia_pvuv`(`id`,`client_ip`,`vtime`) values (1,'::1','2018-01-29 17:57:10'),(2,'192.168.3.38','2018-01-30 09:00:32');

/*Table structure for table `ims_acti2_qijia_slideshow` */

DROP TABLE IF EXISTS `ims_acti2_qijia_slideshow`;

CREATE TABLE `ims_acti2_qijia_slideshow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '//轮播图名称',
  `desc` varchar(255) DEFAULT NULL COMMENT '//轮播图简介',
  `pic` varchar(255) DEFAULT NULL COMMENT '//图片路径',
  `link` varchar(500) DEFAULT NULL COMMENT '//图片链接',
  `ctime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '//排序',
  `is_recommend` tinyint(4) DEFAULT '1' COMMENT '//是否显示,1显示-1不显示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `ims_acti2_qijia_slideshow` */

insert  into `ims_acti2_qijia_slideshow`(`id`,`title`,`desc`,`pic`,`link`,`ctime`,`is_recommend`) values (1,'猫女','蝙蝠侠黑暗骑士','./Public/Uploads/2018-01-29/5a6ef6883d362.jpg','http://www.baidu.com','2018-01-29 15:06:57',1),(2,'奥黛丽赫本','纪梵希代言人','./Public/Uploads/2018-01-29/5a6ef694db4ff.jpg','http://www.tiffany.cn','2018-01-29 15:03:27',1),(3,'天津凯拓','凯拓科技','./Public/Uploads/2018-01-29/5a6ef69d58966.jpg','','2018-01-29 15:28:05',1),(4,'狗子,你变了','野生的哈士奇','./Public/Uploads/2018-01-29/5a6ef6a2e40a0.jpg','','2018-01-29 15:28:47',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
