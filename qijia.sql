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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `ims_acti2_join` */

insert  into `ims_acti2_join`(`id`,`uid`,`title`,`acti_desc`,`people`,`fee`,`date`,`enddate`,`province`,`city`,`district`,`place`,`image`,`nickname`,`note`,`status`,`uniacid`,`openid`,`is_top`,`mid`,`pid`,`view`,`isscore`,`likenum`) values (1,0,'活动名称1','&lt;p&gt;活动详情1&lt;/p&gt;',99,1.00,1490603216,1491467220,'天津','天津','和平区','XX街道','images/2/2017/03/G722JPGJqCE0Jsr7s74rlYYCQkPCJY.jpg','','活动备注1',1,9,'',1,1,4,34,0,1),(2,0,'45天拿驾照','&lt;p&gt;时间快，欢乐多，环境好&lt;/p&gt;',100,1.00,1516007600,1516266840,'天津','天津','西青区','天津市西青区宾水西道399号','images/10/2018/01/A6UAtLnN6T0t1d66z61avV6N71d66T.jpg','','每天都可以',1,9,'',1,5,6,27,1,0),(3,0,'暑假班，开报了','&lt;p&gt;让暑假不再浪费&lt;/p&gt;',200,0.01,1516102080,1517052480,'北京','北京','宣武区','北京天安门广场','images/10/2018/01/eZHHBM2mMV3mUhnMm7MsmZ8Xf21183.jpg','','',1,9,'',1,7,8,86,1,0),(4,0,'开学季，学驾照，组团有优惠哦！','&lt;p&gt;欢迎各位工大学生前来报名，我们将提供专业的驾考服务，先进的驾考设备，新生持学生证可获得500元优惠，组团报名更优惠。&lt;/p&gt;',2000,2200.00,1516073442,1517369580,'天津','天津','西青区','天津市西青区宾水西道399号','images/10/2017/12/V29G2DEzR37pE7RdP4RPROfuPH7ryD.jpg','','欢迎各位学生组团前来学车',1,9,'',1,8,11,20,0,1),(5,0,'学车','&lt;p&gt;在北京学车&lt;/p&gt;',100,0.01,1516108553,1516108553,'北京','北京','朝阳区','天安门广场','images/9/2018/01/MGzpjuu7THLHTw7YJmP6PuPu7Q7g8x.jpg','','',1,9,'',1,9,5,25,0,1);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `ims_acti2_qijia_admin` */

insert  into `ims_acti2_qijia_admin`(`id`,`username`,`nickname`,`password`,`ctime`,`state`) values (1,'jianghairui','姜海蕤','e10adc3949ba59abbe56e057f20f883e','2018-01-26 10:38:11',1);

/*Table structure for table `ims_acti2_qijia_appointment` */

DROP TABLE IF EXISTS `ims_acti2_qijia_appointment`;

CREATE TABLE `ims_acti2_qijia_appointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `ims_acti2_qijia_appointment` */

/*Table structure for table `ims_acti2_qijia_contact` */

DROP TABLE IF EXISTS `ims_acti2_qijia_contact`;

CREATE TABLE `ims_acti2_qijia_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `linkman` varchar(50) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `registration` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `ims_acti2_qijia_contact` */

/*Table structure for table `ims_acti2_qijia_news` */

DROP TABLE IF EXISTS `ims_acti2_qijia_news`;

CREATE TABLE `ims_acti2_qijia_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `img` varchar(255) DEFAULT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sort` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL COMMENT '1企业历程2行业动态3交通法规',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `ims_acti2_qijia_news` */

insert  into `ims_acti2_qijia_news`(`id`,`title`,`content`,`img`,`ctime`,`sort`,`admin_id`,`type`) values (1,'企业历程标题','&lt;p&gt;奥黛丽赫本&lt;br/&gt;&lt;/p&gt;','./Public/Uploads/2018-01-26/5a6add99bf3e0.jpg','2018-01-26 14:22:02',2,1,1),(2,'的所发生的','&lt;p&gt;是的范德萨&lt;/p&gt;','./Public/Uploads/2018-01-26/5a6ac9992cba2.jpg','2018-01-26 14:24:25',3,1,1),(4,'防守打法','&lt;p&gt;对方公司大概花费的好123&lt;br/&gt;&lt;/p&gt;','./Public/Uploads/2018-01-26/5a6ad2ef001b7.gif','2018-01-26 14:32:03',1,1,1),(5,'行业动态1','&lt;p&gt;行业东塔已啊啊啊啊是大法官 第三方个人股二哥二哥&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/Public/ueditor/php/upload/image/20180126/1516955680133846.png&quot; title=&quot;1516955680133846.png&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/Public/ueditor/php/upload/image/20180126/1516955680138209.jpg&quot; title=&quot;1516955680138209.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','./Public/Uploads/2018-01-26/5a6ae8242bd9a.jpg','2018-01-26 16:34:44',0,1,2);

/*Table structure for table `ims_acti2_qijia_slideshow` */

DROP TABLE IF EXISTS `ims_acti2_qijia_slideshow`;

CREATE TABLE `ims_acti2_qijia_slideshow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '//轮播图名称',
  `desc` varchar(255) DEFAULT NULL COMMENT '//轮播图简介',
  `pic` varchar(255) DEFAULT NULL COMMENT '//图片路径',
  `link` varchar(500) DEFAULT NULL COMMENT '//图片链接',
  `sort` int(11) DEFAULT NULL COMMENT '//排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `ims_acti2_qijia_slideshow` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
