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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='分类表';

/*Data for the table `ims_acti2_cat` */

insert  into `ims_acti2_cat`(`id`,`cat_name`,`image`,`orders`,`addtime`,`uniacid`) values (4,'大众驾校','images/10/2017/12/BINJzn73jjI3229zIi9PI9jvj5vJ7j.jpg',1,1516007485,9),(5,'北京驾校','images/10/2017/12/kQjxh5I5E32hzx1N2hLHGgYTy2Eeyq.jpg',2,1516007508,9),(6,'天天驾校','images/10/2018/01/A6UAtLnN6T0t1d66z61avV6N71d66T.jpg',3,1516007545,9),(7,'天津驾校','images/10/2017/12/gRS2S2DGisYWiimwzdrwyI67IIeswR.jpg',4,1516007562,9),(8,'先达驾校','images/10/2017/12/V29G2DEzR37pE7RdP4RPROfuPH7ryD.jpg',5,1516007588,9),(11,'工大驾校','images/10/2018/01/rhMl6xz55zqpUhvLhVm5SmXPNT5zHq.jpg',6,1516073334,9),(12,'新东方驾校','images/9/2018/01/Q81ywy4S5A9sb9ccN7zCnyY97o1yOo.jpg',7,1517275802,9);

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

insert  into `ims_acti2_join`(`id`,`uid`,`title`,`acti_desc`,`people`,`fee`,`date`,`enddate`,`province`,`city`,`district`,`place`,`image`,`nickname`,`note`,`status`,`uniacid`,`openid`,`is_top`,`mid`,`pid`,`view`,`isscore`,`likenum`) values (1,0,'活动名称1','&lt;p&gt;活动详情1&lt;/p&gt;',99,1.00,1490603216,1491467220,'天津','天津','和平区','XX街道','images/9/2018/01/gqHgsG8v1hgvFrQw8V1U8qh1U7spVz.jpg','','活动备注1',1,15,'',1,1,4,38,1,2),(2,0,'45天拿驾照','&lt;p&gt;时间快，欢乐多，环境好&lt;/p&gt;',100,1.00,1516007600,1516266840,'天津','天津','西青区','天津市西青区宾水西道399号','images/9/2018/01/F2wVsSu437Mmq2MrnH3J6zSUMUvJ32.jpg','','每天都可以',1,15,'',1,5,6,30,1,0),(3,0,'暑假班，开报了','&lt;p&gt;让暑假不再浪费&lt;/p&gt;',200,0.01,1516102080,1517052480,'北京','北京','宣武区','北京天安门广场','images/9/2018/01/Q81ywy4S5A9sb9ccN7zCnyY97o1yOo.jpg','','',1,15,'',1,7,8,90,1,0),(4,0,'开学季，学驾照，组团有优惠哦！','&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; white-space: normal;&quot;&gt;以“风正务实、温馨培训”为办学方针，确立“一切服务以学员为中心”的服务理念，倡导“善待学员、快乐学车”的服务宗旨，率先尝试全新的“有情教学关系、个性化教学模式”；本公司还向社会推出“明明白白消费，轻轻松松学车；收您一条烟，还您培训费”的承诺，教练员在带教中信守企业的承诺，“视质量为生命，对学员似亲人”，做到廉洁自律，保证质量，为社会输送合格的驾驶员。欢迎社会各界人士来大众驾校参加培训。&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;span microsoft=&quot;&quot; font-size:=&quot;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;本公司具有四个训练场地：青浦大众基地（原青浦凤溪基地）、嘉定龙泉基地 、宝山刘行基地、浦东安技基地，拥有200多辆培训车辆，配备150余名经验丰富的教练员，教练员全部具备教练员资格证书，科学设计教学计划，通过率高。&nbsp;&lt;br/&gt;&lt;/p&gt;&lt;p microsoft=&quot;&quot; font-size:=&quot;&quot; white-space:=&quot;&quot; style=&quot;margin-top: 0px; margin-bottom: 0px; white-space: normal;&quot;&gt;本公司还是市出租汽车管理处、市陆上运输管理处授权进行出租汽车、货运出租《准营证》培训和复训带教的办学单位，为有志于从事客运、货运出租工作的人士提供配套培训，为再就业者提供良好的择业条件&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',2000,2200.00,1516073442,1517369580,'天津','天津','西青区','天津市西青区宾水西道399号','images/15/2018/02/y6687MqhNme77zr7QG7vM88qXPA61A.jpg','','欢迎各位学生组团前来学车',1,15,'',1,8,11,62,1,3),(5,0,'来驾校学车吧','&lt;p&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot; font-size:=&quot;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px;&quot;&gt;以“风正务实、温馨培训”为办学方针，确立“一切服务以学员为中心”的服务理念，倡导“善待学员、快乐学车”的服务宗旨，率先尝试全新的“有情教学关系、个性化教学模式”；本公司还向社会推出“明明白白消费，轻轻松松学车；收您一条烟，还您培训费”的承诺，教练员在带教中信守企业的承诺，“视质量为生命，对学员似亲人”，做到廉洁自律，保证质量，为社会输送合格的驾驶员。欢迎社会各界人士来大众驾校参加培训。&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot; font-size:=&quot;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-family: &quot; microsoft=&quot;&quot; font-size:=&quot;&quot; white-space:=&quot;&quot;&gt;本公司具有四个训练场地：青浦大众基地（原青浦凤溪基地）、嘉定龙泉基地 、宝山刘行基地、浦东安技基地，拥有200多辆培训车辆，配备150余名经验丰富的教练员，教练员全部具备教练员资格证书，科学设计教学计划，通过率高。&nbsp;&lt;br/&gt;本公司还是市出租汽车管理处、市陆上运输管理处授权进行出租汽车、货运出租《准营证》培训和复训带教的办学单位，为有志于从事客运、货运出租工作的人士提供配套培训，为再就业者提供良好的择业条件&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',100,0.01,1516108553,1516108553,'北京','北京','朝阳区','天安门广场','images/15/2018/02/y6687MqhNme77zr7QG7vM88qXPA61A.jpg','','',1,15,'',1,9,5,189,1,1),(6,0,'新东方驾校，横下天下','&lt;p&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot; font-size:=&quot;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px;&quot;&gt;驾校以“风正务实、温馨培训”为办学方针，确立“一切服务以学员为中心”的服务理念，倡导“善待学员、快乐学车”的服务宗旨，率先尝试全新的“有情教学关系、个性化教学模式”；本公司还向社会推出“明明白白消费，轻轻松松学车；收您一条烟，还您培训费”的承诺，教练员在带教中信守企业的承诺，“视质量为生命，对学员似亲人”，做到廉洁自律，保证质量，为社会输送合格的驾驶员。欢迎社会各界人士来大众驾校参加培训。&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot; font-size:=&quot;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; font-family: &quot; microsoft=&quot;&quot; font-size:=&quot;&quot; white-space:=&quot;&quot;&gt;本公司具有四个训练场地：青浦大众基地（原青浦凤溪基地）、嘉定龙泉基地 、宝山刘行基地、浦东安技基地，拥有200多辆培训车辆，配备150余名经验丰富的教练员，教练员全部具备教练员资格证书，科学设计教学计划，通过率高。&nbsp;&lt;br/&gt;本公司还是市出租汽车管理处、市陆上运输管理处授权进行出租汽车、货运出租《准营证》培训和复训带教的办学单位，为有志于从事客运、货运出租工作的人士提供配套培训，为再就业者提供良好的择业条件&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',1000,0.01,1517275936,1517362440,'天津','天津','滨海新区','天津市滨海新区前进道254号','images/9/2018/01/Q81ywy4S5A9sb9ccN7zCnyY97o1yOo.jpg','','组队有优惠哦',1,15,'',1,10,12,164,1,4);

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Data for the table `ims_acti2_qijia_apply` */

insert  into `ims_acti2_qijia_apply`(`id`,`name`,`tel`,`ctime`,`ip`) values (2,'李博洋','15888888888','2018-01-29 16:05:39','192.168.3.40'),(3,'韩驰','13666666666','2018-01-29 16:05:54','192.168.3.250'),(4,'张林','15333333333','2018-01-29 16:07:32','192.168.3.90'),(5,'王永胜','18888888888','2018-01-29 16:07:39','192.168.3.157'),(6,'赵铁柱','18526860281','2018-01-29 17:40:37','192.168.3.38'),(7,'ADG ','18722369635','2018-02-01 13:28:34','36.106.4.148'),(8,'姜海蕤','13102163019','2018-02-01 15:14:14','36.106.4.148');

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
  `course_qrcode` varchar(500) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `ims_acti2_qijia_contact` */

insert  into `ims_acti2_qijia_contact`(`id`,`linkman`,`tel`,`city`,`address`,`email`,`registration`,`qrcode`,`course_qrcode`,`content`) values (1,'宴小姐','15385245826','中国.北京','北京市朝阳区西大望路外企大厦B座18层','18201263901@139.com','京ICP备16018882号-1','./Public/Uploads/2018-02-02/5a740524cc449.jpg','./Public/Uploads/2018-02-02/5a7403290e0bb.png','&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;你牛逼你来说，新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面呢小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面呢小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面呢小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面呢小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面呢小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面呢小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;br/&gt;\r\n &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面呢小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面呢小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面呢小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面呢小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面呢小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。新手开车上路后， \r\n熟悉遵守交通法规成为必修课，下面呢小编就用图示来详细解释最常用的几项交通法规，让新手安全上路，自如变道，尽早成为老手。&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/p&gt;');

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

/*Data for the table `ims_acti2_qijia_news` */

insert  into `ims_acti2_qijia_news`(`id`,`title`,`desc`,`content`,`img`,`ctime`,`sort`,`admin_id`,`type`,`is_recommend`) values (7,'新手开车注意事项','春节临近，很多小伙伴都开始准备收拾行囊回家过年了，长途驾驶也就在所难免了，不过长途见识之前要做好充足的准备，否则堵在路上','&lt;p&gt;公安部2012年10月8日公布了最新修订的《机动车驾驶证申领和使用规定》，新交通规则严格了对驾驶员的管理。最新交通法规扣分细则也更为严格，闯红灯交通违法记分将由3分提高到6分，不挂号牌或遮挡号牌的一次就将扣光12分。[1]&amp;nbsp;&lt;/p&gt;&lt;p&gt;具体扣分细节如下：&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;一、机动车驾驶人有下列违法行为之一，一次记12分：&lt;/p&gt;&lt;p&gt;（一）驾驶与准驾车型不符的机动车的；&lt;/p&gt;&lt;p&gt;（二）饮酒后驾驶机动车的；&lt;/p&gt;&lt;p&gt;（三）驾驶营运客车（不包括公共汽车）、校车载人超过核定人数20%以上的；&lt;/p&gt;&lt;p&gt;（四）造成交通事故后逃逸，尚不构成犯罪的；&lt;/p&gt;&lt;p&gt;（五）上道路行驶的机动车未悬挂机动车号牌的，或者故意遮挡、污损、不按规定安装机动车号牌的；&lt;/p&gt;&lt;p&gt;（六）使用伪造、变造的机动车号牌、行驶证、驾驶证、校车标牌或者使用其他机动车号牌、行驶证的；&lt;/p&gt;&lt;p&gt;（七）驾驶机动车在高速公路上倒车、逆行、穿越中央分隔带掉头的；&lt;/p&gt;&lt;p&gt;（八）驾驶营运客车在高速公路车道内停车的；&lt;/p&gt;&lt;p&gt;（九）驾驶中型以上载客载货汽车、校车、危险物品运输车辆在高速公路、城市快速路上行驶超过规定时速20%以上或者在高速公路、城市快速路以外的道路上行驶超过规定时速50%以上，以及驾驶其他机动车行驶超过规定时速50%以上的；&lt;/p&gt;&lt;p&gt;（十）连续驾驶中型以上载客汽车、危险物品运输车辆超过4小时未停车休息或者停车休息时间少于20分钟的；&lt;/p&gt;&lt;p&gt;（十一）未取得校车驾驶资格驾驶校车的。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','./Public/Uploads/2018-02-06/5a798fb4931d4.jpg','2018-01-30 09:51:31',0,2,3,1),(8,'2018年起交通法规迎来新的变革','交通法规，全称中华人民共和国道路交通安全法，是为了维护道路交通秩序，预防和减少交通事故，保护人身安全，保护公民、法人和其他组织的财产安全及其他合法权益，提高道路通行效率，制定的法规。','&lt;p&gt;公安部2012年10月8日公布了最新修订的《机动车驾驶证申领和使用规定》，新交通规则严格了对驾驶员的管理。最新交通法规扣分细则也更为严格，闯红灯交通违法记分将由3分提高到6分，不挂号牌或遮挡号牌的一次就将扣光12分。[1]&amp;nbsp;&lt;/p&gt;&lt;p&gt;具体扣分细节如下：&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;一、机动车驾驶人有下列违法行为之一，一次记12分：&lt;/p&gt;&lt;p&gt;（一）驾驶与准驾车型不符的机动车的；&lt;/p&gt;&lt;p&gt;（二）饮酒后驾驶机动车的；&lt;/p&gt;&lt;p&gt;（三）驾驶营运客车（不包括公共汽车）、校车载人超过核定人数20%以上的；&lt;/p&gt;&lt;p&gt;（四）造成交通事故后逃逸，尚不构成犯罪的；&lt;/p&gt;&lt;p&gt;（五）上道路行驶的机动车未悬挂机动车号牌的，或者故意遮挡、污损、不按规定安装机动车号牌的；&lt;/p&gt;&lt;p&gt;（六）使用伪造、变造的机动车号牌、行驶证、驾驶证、校车标牌或者使用其他机动车号牌、行驶证的；&lt;/p&gt;&lt;p&gt;（七）驾驶机动车在高速公路上倒车、逆行、穿越中央分隔带掉头的；&lt;/p&gt;&lt;p&gt;（八）驾驶营运客车在高速公路车道内停车的；&lt;/p&gt;&lt;p&gt;（九）驾驶中型以上载客载货汽车、校车、危险物品运输车辆在高速公路、城市快速路上行驶超过规定时速20%以上或者在高速公路、城市快速路以外的道路上行驶超过规定时速50%以上，以及驾驶其他机动车行驶超过规定时速50%以上的；&lt;/p&gt;&lt;p&gt;（十）连续驾驶中型以上载客汽车、危险物品运输车辆超过4小时未停车休息或者停车休息时间少于20分钟的；&lt;/p&gt;&lt;p&gt;（十一）未取得校车驾驶资格驾驶校车的。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','./Public/Uploads/2018-01-30/5a6fd00ecef2e.jpg','2018-01-30 09:53:18',0,2,3,1),(10,'驾考车辆','全新的练习车辆','','./Public/Uploads/2018-01-31/5a716b10cdd0d.jpg','2018-01-30 15:21:39',1,2,4,1),(11,'优美的驾校风景','绿化覆盖率高，环境优美','','./Public/Uploads/2018-01-31/5a716b66abd71.jpg','2018-01-30 15:21:56',2,2,4,1),(12,'驾校俯瞰图','完整的练习场地','','./Public/Uploads/2018-01-31/5a716b951bcc5.jpg','2018-01-30 15:22:05',3,2,4,1),(13,'价值主张','公司发展的正确价值观','&lt;p&gt;为适应信息行业正在发生的革命性变化，华为围绕客户需求和技术领先持续创新，与业界伙伴开放合作，聚焦构筑面向未来的信息管道，持续为客户和全社会创造价值。为适应信息行业正在发生的革命性变化，华为围绕客户需求和技术领先持续创新，与业界伙伴开放合作，聚焦构筑面向未来的信息管道，持续为客户和全社会创造价值。为适应信息行业正在发生的革命性变化，华为围绕客户需求和技术领先持续创新，与业界伙伴开放合作，聚焦构筑面向未来的信息管道，持续为客户和全社会创造价值。&lt;/p&gt;','./Public/Uploads/2018-01-30/5a702b3086763.jpg','2018-01-30 16:22:09',0,1,1,1),(14,'公司治理','正确合理的管理方案','&lt;p&gt;公司坚持以客户为中心、以奋斗者为本，持续改善公司治理架构、组织、流程和考核，使公司长期保持有效增长。公司坚持以客户为中心、以奋斗者为本，持续改善公司治理架构、组织、流程和考核，使公司长期保持有效增长。公司坚持以客户为中心、以奋斗者为本，持续改善公司治理架构、组织、流程和考核，使公司长期保持有效增长。公司坚持以客户为中心、以奋斗者为本，持续改善公司治理架构、组织、流程和考核，使公司长期保持有效增长。公司坚持以客户为中心、以奋斗者为本，持续改善公司治理架构、组织、流程和考核，使公司长期保持有效增长。公司坚持以客户为中心、以奋斗者为本，持续改善公司治理架构、组织、流程和考核，使公司长期保持有效增长。公司坚持以客户为中心、以奋斗者为本，持续改善公司治理架构、组织、流程和考核，使公司长期保持有效增长。&lt;/p&gt;','./Public/Uploads/2018-01-30/5a702bda9a764.jpg','2018-01-30 16:22:57',0,1,1,1),(15,'发展历程','公司的发展历程','&lt;p&gt;华为于1987年成立于中国深圳。在20多年的时间里，华为全体员工付出艰苦卓越的努力，以开放的姿态参与到全球化的经济竞合中，逐步发展成一家业务遍及全球170多个国家和地区的全球化公司。华为于1987年成立于中国深圳。在20多年的时间里，华为全体员工付出艰苦卓越的努力，以开放的姿态参与到全球化的经济竞合中，逐步发展成一家业务遍及全球170多个国家和地区的全球化公司。华为于1987年成立于中国深圳。在20多年的时间里，华为全体员工付出艰苦卓越的努力，以开放的姿态参与到全球化的经济竞合中，逐步发展成一家业务遍及全球170多个国家和地区的全球化公司。华为于1987年成立于中国深圳。在20多年的时间里，华为全体员工付出艰苦卓越的努力，以开放的姿态参与到全球化的经济竞合中，逐步发展成一家业务遍及全球170多个国家和地区的全球化公司。华为于1987年成立于中国深圳。在20多年的时间里，华为全体员工付出艰苦卓越的努力，以开放的姿态参与到全球化的经济竞合中，逐步发展成一家业务遍及全球170多个国家和地区的全球化公司。&lt;/p&gt;','./Public/Uploads/2018-01-30/5a702bc8cdbde.jpg','2018-01-30 16:24:41',0,2,1,1),(17,'向百亿迈进打造产业互联网集团 慧聪全面布局区块链','　　中新网1月29日电 日前，慧聪集团在北京 慧聪园召开主题为“超越 蝶变”的集团管理会议。会上慧聪集团CEO刘军、总裁刘小东等核心领导发表了主题演讲，宣布了慧聪集团全新战略方向。','&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;向百亿迈进 打造中国领先的产业互联网集团&lt;/p&gt;&lt;p&gt;　　慧聪集团CEO刘军表示，未来将慧聪集团打造成为中国领先的产业互联网集团。更好的为广大中小企业服务，共同迈向未来互联网产业发展的新蓝海。&lt;/p&gt;&lt;p&gt;　　刘军提出2018年慧聪集团的目标是实现100亿营收。通过让中关村在线和多行业、海量客户进行化学反应，通过盘活“买化塑”、“棉联”、“中模”在垂直产业中的重要作用，通过利用金融科技的放杠杆和场景实现，以及通过物联网数据的升级变现来实现这一目标。&lt;/p&gt;&lt;p&gt;　　通过战略的实施，慧聪集团将在2018年向百亿目标迈进。刘军指出，慧聪集团不仅能实现100亿营收的目标，未来2019年可以做到200亿，成为中国企业500强；2020年做到500亿，到了2021年做到1000亿，成为中国企业200强。&lt;/p&gt;&lt;p&gt;　　慧聪集团总裁刘小东以“构建慧聪互联网产业新生态”为题详细阐述了未来慧聪互联网集团发展战略。刘小东指出，慧聪互联网集团将通过技术赋能降本增效，搭建产业互联网；深化供应链服务，布局仓储、交易和金融业务，将慧聪互联网集团打造成为中国领先的产业互联网信息与商务门户。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','./Public/Uploads/2018-01-30/5a702fac5f51c.jpg','2018-01-30 16:41:16',0,1,2,1),(18,'文投360投资基金在京发布 布局“互联网+文化”产业','2018年1月23日，以“文化互联+ 未来已来”为主题的文投360投资基金成立发布会在北京诺金酒店举行。','&lt;p&gt;　2018年1月23日，以“文化互联+ 未来已来”为主题的文投360投资基金成立发布会在北京诺金酒店举行。北京市国有文化资产监督管理办公室党组书记、主任郭晓明先生，三六零科技股份有限公司董事长、著名天使投资人周鸿祎先生，北京市文化投资发展集团有限责任公司党委书记、董事长周茂非先生，以及相关企业、机构、政府领导参加了发布会，共同见证了“文投360投资基金”的成立。&lt;/p&gt;&lt;p&gt;据悉，本次发布的文投360投资基金是由北京市文化中心建设发展基金管理有限公司(以下简称“文化中心基金”)联合三六零股份有限公司双方共同出资、发起设立的，总规模为10亿元，专注于互联网大文化产业股权及项目投资。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','./Public/Uploads/2018-01-30/5a7030ace0a89.jpeg','2018-01-30 16:45:33',0,2,2,1),(19,'Adobe 中国二十年，你欠它多少个正版？','1998 年，已经诞生 13 年的美国 Adobe 公司，在北京国贸开设了它在中国的第一间办公室;当时北京 CBD 地区','&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.5em;&quot;&gt;二十年前，当 Adobe 进入到中国的时候，它旗下的产品其实非常有限，主要包括 Adobe Photoshop 5.5、Illustrator 8.0、Premiere 5.0、Acrobat 和 Reader 4.0 等。然而就是这几款软件，开启了 Adobe 在中国市场发展的序幕。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.5em;&quot;&gt;为了融入中国市场的发展，Adobe 公司努力实现本土化。比如说在 2000 年 5 月，Adobe 中国开通了一个新网站——Adobe 先锋，域名为 www.adobexianfeng.com.cn。这是一个试验性站点，专门介绍当时可以在 Web 上创建的最新效果，网站制作全部采用 Adobe 公司的产品。然而，通过序列号进行授权的软件销售模式，让 Adobe 中国从一开始就不得不面临盗版问题，因此它也从开始就走上一条反对盗版的维权之路。实际上，最开始为了应对发生在北京和上海的两起盗版问题，从 1999 年下半年起，Adobe 中国就开始在《经济日报》上发布声明反对盗版，并与上海的某家盗用其软件的公司对簿公堂;一直到 2000 年 7 月，法院才判决盗版者给予 Adobe 应有的赔偿。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','./Public/Uploads/2018-01-31/5a7169d5662da.jpg','2018-01-31 15:01:41',0,2,2,1),(20,'罗永浩：做机六年，五点感悟','虎嗅注：前段时间罗永浩称 5 月 15 号锤子会在鸟巢举行一场发布会，要发布一款“革命性产品”。可以看出锤子科技的“突破','&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;一、警告!你该出去谈人了!&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　作为创业者，我犯的第一个大错是在找人方面投入严重不足。除了技术驱动型公司，或者创始人本身就是科学家出身，否则 CEO 至少要把 30% ~ 50% 的时间投入在找人上。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　锤子科技起初在这方面投入严重不足，不是因为我不懂这个道理，而是因为我有严重的社交恐惧症。如果某个饭局上有六个人，其中四个我不认识，我的压力就会非常大，很可能就找个借口不去了。这是我的个人问题。如果你们没有我这样的毛病，就更应该投入大量的时间去找人。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　只要你找对了一个主管级的关键人物，TA 就能够撑起一片天空。大众点评网的创始人和 CEO 张涛以前接受采访时提过这一点：我们有时会觉得某家企业在某个方面特别特别厉害，并且把它厉害的原因想得非常复杂、深刻，但真正的原因，其实就是那个老板找对了一个人而已。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　这是我在过去几年里不断有所体会的。我花了八个多月的时间，找到了锤子现在的 CTO 吴德周。那八个月里，我每个月平均见他一次以上。他来了之后，锤子在硬件研发上就从以前的业界三流水平，提升到了现在的业界一流水平。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　这次讲完，我回去就准备请我的一位书法家朋友，写上一幅“警告!你该出去谈人了”贴在我办公桌的对面。希望你们也能引以为戒，保证至少用 30% 的时间出去谈人。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　二、不要过分高估自身优点的作用&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　一个人年纪轻轻就敢于出来创业，通常是有一些过人的本事。这种人往往就很容易过分高估自身优点的作用。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　注意，我说的不是过分高估自身优点。这两者是有差别的。我们怎么高估自己的优点都不为过，但可怕的是，高估了这些优点在成就一个企业的过程中能够发挥的作用。差异这么细微，你们更要严加防范。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　举个例子，锤子最开始做手机的时候，参考了一些行业统计数据：40% 的用户买手机的时候，最先看的是手机的外观。我们自己觉得，锤子的工业设计团队是全世界最优秀的工业设计团队之一。既然 40% 的人最看重外观，那我们在中国就完全没有对手了。我们的团队拿了全世界几乎所有的工业设计大奖，证明我们对自己这个优点的估计是完全没有问题的。但为什么我们的转化效果没有那么好?&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　我们反思，确实是有 40% 的用户最注重手机的外观是否漂亮，数字没有问题，但漂亮的标准就很难说。多数人貌似在选择自己喜欢的东西，其实只是从众而已，在审美的问题上尤其如此。在中国，卖得好的手机一般来说都是抄袭了 iPhone 的样子。大家的审美已经向 iPhone 靠齐了。我们用了别的外观设计，就会导致一些问题。这就是我们过分高估了工业设计在成就我们事业的过程中能够起到的作用。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　另一个例子是，很多人都说现在大家做硬件的水平都差不多，用户更在意的是软件的体验。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　我们在创业初期的时候，也认为自己做人机交互肯定是天下无敌的。如果乔布斯还活着，我们可能不敢吹这个牛。但在今天，放眼望去，我们在人机交互的设计和体验上肯定是全世界最好的。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　可是实际操作之后，我们发现在转化手机用户的过程中，这个优点能够起到的作用是非常有限的，进程非常缓慢。虽然用户用过之后很容易产生黏性，但问题在于，他从一开始就不愿意尝试。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　硬件上很容易实现的东西，到了软件这里就变得很困难。特别是做互联网传播，传播的视频时长往往不会超过 30 秒，我们很难用这 30 秒讲清楚软件交互是如何的优秀。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　我举这两个例子是想说明，即便我们对自身优点有充分、正确、理性的把握，仍然有可能过分高估自身优点的作用。商业上的成功是一个系统工程，不是你知道自己确实存在某个优点就可以做到的。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　三、产品经理永远贪婪，但创业讲究“聚焦”&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　如果你凑巧是一个产品经理型的创业者，你可能会犯一个严重的错误，就是想做的事情太多，也就是所谓的“产品经理的贪婪”。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　比如说，我老婆给家里买了一台加湿器，说北京空气太干燥了，经常天还没亮，加湿器水箱里的水就干了，咱们能不能换一个有大水箱的加湿器?我立刻在京东上买了个水箱最大的。买回来以后，我们就发现水箱太大，她自己搬起来很吃力，每次都得我去帮忙，但我晚上又经常不回家，她就很痛苦。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　我研究了一下，发现几乎所有加湿器的水箱，都是要倒扣过来加水的。作为一个产品经理型的人，怎么能接受让妇女们感到这么不方便的事儿呢?我想解决这个问题，花了一星期的时间和我们的工程师研究，琢磨了三种不同的、从上面直接加水的方案，各种比较优劣。然后那一个星期，我正经的工作就全耽误了。在我创业的头三年，这种事情经常发生。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　产品经理型创业者总会面临“想做的事情太多”的诱惑。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　越是懂得、越是擅长做产品的人，在他的眼里，这个世界到处都是残缺的。这里边最感人的一件事是，乔布斯在去世前的一个星期，每天昏迷的时间比清醒的时间多，挣扎着醒过来的时候，他会和陪在他身边的家人说，那个输液的架子设计得如何不科学。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　作为一个产品经理，我很喜欢这个故事。如果没什么意外，我将来也会把病房里的东西全都研究个遍，还要改变它，弥留之际也要睁眼看看是不是每个设备都改对了。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　可是，创业的过程，讲究的是一个“聚焦”的概念。你们一定要注意这种产品经理的贪婪。我为这个不知道走了多少弯路，浪费了多少宝贵的时间，特别是在软件领域，我们经常是做了大量的事情之后，才发现这个需求偏离了业务主线。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　创业公司的人手有限，不能什么都做，你们一定要克制。这一点教训还是我们前年和小米谈合作的时候，雷军教给我的。互联网大佬做硬件几乎都不成功，只有小米做的硬件几乎每一个都成功了。这得益于雷军是一个天才型的产品经理，他懂得这些。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　四、进入红海，就是“事倍功半”再乘以十&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　如果你要问锤子过去五年半遇到的最大的问题是什么，我想应该是：我们进入了一个红海。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　2012 年，我们拿着 900 万人民币起步的时候，手机还在所谓的风口上。我倒不是赶着风口去的，我只是想做手机。但我当时是“曲艺界”的背景，没有科技圈的人脉和资源，要想和硬件领域的人合作非常困难。大家都说 900 万人民币只能做手机壳，而不是手机。在这么一种没吃过猪肉，甚至也没见过猪跑的情况下，我们想要把手机做出来，至少需要两三年的时间。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　当时很多人都劝我别做，其中就包括峰瑞资本的李丰同学。他坚决支持我从英语学习领域转行做点别的事情，但又说，手机的供应链又长又复杂，操作起来资金门槛、技术门槛都非常高，不适合我。今天回想起来，这都是金玉良言。但当时他这样讲之后，我就不喜欢他了。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　这是很多创业公司的 CEO 都容易犯的错误。因为你觉得那是你的使命、你的理想、你人生的抱负、你的未来，谁跑出来劝你别做，还说全是为了你好，你心理上是很难接受的。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　创业公司身处红海，很多努力会被稀释掉。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　后来事实证明，他们劝我的都是对的。很少有风口能够持续长达五年。等我们做出手机再进到这片市场里的时候，风口已经过去了。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　最初我只知道自己有非常远大的理想，想要做这个时代最好的操作系统、最大的平台。我觉得即使我们做手机做得晚了，也可以当作是练兵，可以去迎接下一个平台的到来。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　但从大策略上讲，创业公司进入红海是非常不明智的。实际发生的事情，比我想象中最坏的结果还要惨烈。这些年我们有很多地方都做得很优秀，但因为身处在这片血海里，所有的努力都被稀释得七七八八了。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　有句话叫“事倍功半”，如果创业公司选择进入红海，会是“事倍功半”再乘以十。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　五、只有革命性产品才能打破僵局&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　进入红海就会带来另一个问题：我们一路走来，融资始终非常困难。很长一段时间里我一直很纳闷，很多看起来一般的项目都拿到钱了，为什么我们拿钱就这么费劲?&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　特别是在公司发展不顺的时候，我会觉得有点对不起已经给我们投资了的股东。他们左等右等，我们好像都没有要赚钱的迹象。虽然我始终坚信他们获得的回报最终会远远超出他们的期待，但除非你有其他很好的方式来解决持续发展的问题，否则红海里的公司，融资一定非常困难。这一点你们一定要做好准备。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　除了赚钱难，在红海里打拼还会有一件令人难过的事：即使你每天都在努力工作，但整体上看，你并没有为这个世界创造价值。别人在混乱中挣扎，你也在挣扎，大家都没有做出革命性的创新。在这个过程里，你这里赢了一点，那里又输了一点，本质上都是零和游戏。这是最不让人兴奋和激动的地方。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 20px; color: rgb(42, 42, 42); font-family: &amp;quot;Microsoft Yahei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　在这种环境里，锤子作为一个产品驱动型的公司，唯一的出路和打破僵局的方式，就是做出一个具有革命性、颠覆性的产品。这也是我们从最开始就坚信要走下去的道路。它可能不是一个百分之百好的选择，但一旦有所成就，回报会是相当可观的。在红海里，我们做得比竞争对手好 30%、40%、50% 是没有用的，要比对手好 300% ~ 500%才行。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','./Public/Uploads/2018-01-31/5a716a3badf3a.jpg','2018-01-31 15:03:24',0,2,2,1),(21,'考试中心','专业的考试中心','','./Public/Uploads/2018-01-31/5a716a9129f7f.jpg','2018-01-31 15:04:49',4,2,4,1),(22,'上市阶段','公司经过几年的发展壮大，各方面综合实力得到较大的提升，经过董事会一直通过，公司决定在今年年底进行上市。','&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;/Public/ueditor/php/upload/image/20180205/1517797925833344.jpg&quot; title=&quot;1517797925833344.jpg&quot; alt=&quot;发展历程.jpg&quot; width=&quot;515&quot; height=&quot;300&quot;/&gt;&lt;/p&gt;&lt;p&gt;公司上市程序&lt;/p&gt;&lt;p&gt;根据《证券法》与《公司法》的有关规定，股份有限公司上市的程序如下：&lt;/p&gt;&lt;p&gt;一、向证券监督管理机构提出股票上市申请&lt;/p&gt;&lt;p&gt;股份有限公司申请股票上市，必须报经国务院证券监督管理机构核准。证券监督管理部门可以授权证券交易所根据法定条件和法定程序核准公司股票上市申请。&lt;/p&gt;&lt;p&gt;二、接受证券监督管理部门的核准&lt;/p&gt;&lt;p&gt;对于股份有限公司报送的申请股票上市的材料，证券监督管理部门应当予以审查，符合条件的，对申请予以批准；不符合条件的，予以驳回；缺少所要求的文件的，可以限期要求补交；预期不补交的，驳回申请。&lt;/p&gt;&lt;p&gt;三、向证券交易所上市委员会提出上市申请&lt;/p&gt;&lt;p&gt;股票上市申请经过证券监督管理机构核准后，应当向证券交易所提交核准文件以及下列文件：&lt;/p&gt;&lt;p&gt;1．上市报告书；&lt;/p&gt;&lt;p&gt;2．申请上市的股东大会决定；&lt;/p&gt;&lt;p&gt;3．公司章程；&lt;/p&gt;&lt;p&gt;4．公司营业执照；&lt;/p&gt;&lt;p&gt;5．经法定验证机构验证的公司最近三年的或公司成立以来的财务会计报告；&lt;/p&gt;&lt;p&gt;6．法律意见书和证券公司的推荐书；&lt;/p&gt;&lt;p&gt;7．最近一次的招股说明书；&lt;/p&gt;&lt;p&gt;8．证券交易所要求的其他文件。&lt;/p&gt;&lt;p&gt;证券交易所应当自接到的该股票发行人提交的上述文件之日起六个月内安排该股票上市交易。 《股票发行和交易管理暂行条例》还规定，被批准股票上市的股份有限公司在上市前应当与证券交易所签订上市契约，确定具体的上市日期并向证券交易所交纳有关费用。《证券法》对此未作规定。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',NULL,'2018-02-05 10:35:01',0,2,1,1);

/*Table structure for table `ims_acti2_qijia_pvuv` */

DROP TABLE IF EXISTS `ims_acti2_qijia_pvuv`;

CREATE TABLE `ims_acti2_qijia_pvuv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_ip` varchar(80) DEFAULT NULL,
  `vtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

/*Data for the table `ims_acti2_qijia_pvuv` */

insert  into `ims_acti2_qijia_pvuv`(`id`,`client_ip`,`vtime`) values (1,'::1','2018-01-29 17:57:10'),(2,'192.168.3.38','2018-01-30 09:00:32'),(3,'::1','2018-01-31 09:10:55'),(4,'::1','2018-02-01 09:45:01'),(5,'120.92.11.155','2018-02-02 09:31:31'),(6,'36.106.19.67','2018-02-03 00:17:48'),(7,'106.11.225.146','2018-02-04 03:06:51'),(8,'106.11.226.247','2018-02-05 03:35:35'),(9,'106.11.227.112','2018-02-06 03:47:55'),(10,'106.11.226.30','2018-02-07 04:08:45');

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

insert  into `ims_acti2_qijia_slideshow`(`id`,`title`,`desc`,`pic`,`link`,`ctime`,`is_recommend`) values (1,'特斯拉','飞驰的跑车','./Public/Uploads/2018-02-06/5a7976a414ac3.jpg','http://www.baidu.com','2018-01-29 15:28:47',1),(2,'奥迪','高大上的教练车','./Public/Uploads/2018-02-06/5a7976843b97e.jpg','http://www.tiffany.cn','2018-01-29 15:28:05',1),(3,'跑车','蓝色的跑车','./Public/Uploads/2018-02-06/5a797651eb13c.jpg','','2018-01-29 15:06:57',1),(4,'跑车','阳光下的跑车','./Public/Uploads/2018-02-06/5a7976b1e0755.jpg','','2018-01-29 15:03:27',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
