/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - tiyuguan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tiyuguan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `tiyuguan`;

/*Table structure for table `changdi` */

DROP TABLE IF EXISTS `changdi`;

CREATE TABLE `changdi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `changdi_uuid_number` varchar(200) DEFAULT NULL COMMENT '场地编号',
  `changdi_name` varchar(200) DEFAULT NULL COMMENT '场地名称  Search111 ',
  `changdi_photo` varchar(200) DEFAULT NULL COMMENT '场地照片',
  `changdi_types` int(11) DEFAULT NULL COMMENT '场地类型 Search111',
  `changdi_old_money` decimal(10,2) DEFAULT NULL COMMENT '场地原价 ',
  `changdi_new_money` decimal(10,2) DEFAULT NULL COMMENT '场地现价',
  `shijianduan` varchar(200) DEFAULT NULL COMMENT '时间段',
  `shijianduan_ren` int(11) DEFAULT NULL COMMENT '人数',
  `changdi_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `banquan_types` int(11) DEFAULT NULL COMMENT '半全场',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `tuijian` varchar(200) DEFAULT NULL COMMENT '推荐吃饭地点',
  `changdi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `changdi_content` text COMMENT '场地简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='场地';

/*Data for the table `changdi` */

insert  into `changdi`(`id`,`changdi_uuid_number`,`changdi_name`,`changdi_photo`,`changdi_types`,`changdi_old_money`,`changdi_new_money`,`shijianduan`,`shijianduan_ren`,`changdi_clicknum`,`banquan_types`,`shangxia_types`,`tuijian`,`changdi_delete`,`changdi_content`,`create_time`) values (1,'1642388352019','足球场地1','http://localhost:8080/tiyuguan/upload/1642388687259.webp',2,'800.00','400.00','8-10,10-12,14-16,16-18',1,52,2,1,'吃饭地点1',1,'<p>足球场地1的介绍</p>','2022-01-17 11:05:51'),(2,'1642388800986','篮球场1','http://localhost:8080/tiyuguan/upload/1642388812105.webp',1,'600.00','300.00','8-10,10-12,14-16,16-18',1,4,1,1,'吃饭地点2',1,'<p>篮球场1的详细介绍</p>','2022-01-17 11:07:22'),(3,'1642469598832','羽毛球场地1','http://localhost:8080/tiyuguan/upload/1642469609021.webp',3,'600.00','300.00','8-10,10-12,14-16,16-19',1,3,1,1,'吃饭地点3',1,'<p>羽毛球场1的场地介绍</p>','2022-01-18 09:34:40');

/*Table structure for table `changdi_collection` */

DROP TABLE IF EXISTS `changdi_collection`;

CREATE TABLE `changdi_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `changdi_id` int(11) DEFAULT NULL COMMENT '场地',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `changdi_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='场地收藏';

/*Data for the table `changdi_collection` */

insert  into `changdi_collection`(`id`,`changdi_id`,`yonghu_id`,`changdi_collection_types`,`insert_time`,`create_time`) values (2,1,2,1,'2022-01-18 09:32:39','2022-01-18 09:32:39');

/*Table structure for table `changdi_order` */

DROP TABLE IF EXISTS `changdi_order`;

CREATE TABLE `changdi_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `changdi_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `changdi_id` int(11) DEFAULT NULL COMMENT '场地',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `changdi_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格 ',
  `changdi_order_types` int(11) DEFAULT NULL COMMENT '订单类型',
  `shijianduan` varchar(200) DEFAULT NULL COMMENT '预约时间段',
  `buy_time` date DEFAULT NULL COMMENT '预约日期',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='场地预约';

/*Data for the table `changdi_order` */

insert  into `changdi_order`(`id`,`changdi_order_uuid_number`,`changdi_id`,`yonghu_id`,`changdi_order_true_price`,`changdi_order_types`,`shijianduan`,`buy_time`,`insert_time`,`create_time`) values (1,'1642408220121',1,1,'400.00',2,'8-10','2022-01-17','2022-01-17 16:30:20','2022-01-17 16:30:20'),(2,'1642410114723',1,1,'400.00',2,'10-12','2022-01-17','2022-01-17 17:01:55','2022-01-17 17:01:55'),(3,'1642410124722',1,1,'400.00',1,'8-10','2022-01-17','2022-01-17 17:02:05','2022-01-17 17:02:05'),(4,'1642469438092',1,2,'400.00',1,'8-10','2022-01-18','2022-01-18 09:30:38','2022-01-18 09:30:38'),(5,'1642469497037',1,2,'400.00',3,'8-10,10-12,14-16,16-18','2022-01-19','2022-01-18 09:31:37','2022-01-18 09:29:38');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/tiyuguan/upload/1642468654258.webp'),(2,'轮播图2','http://localhost:8080/tiyuguan/upload/1642468665954.webp');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'gonggao_types','公告类型名称',1,'公告类型1',NULL,NULL,'2022-01-17 09:40:17'),(2,'gonggao_types','公告类型名称',2,'公告类型2',NULL,NULL,'2022-01-17 09:40:17'),(3,'forum_types','帖子类型名称',1,'帖子类型1',NULL,NULL,'2022-01-17 09:40:17'),(4,'forum_types','帖子类型名称',2,'帖子类型2',NULL,NULL,'2022-01-17 09:40:17'),(5,'forum_types','帖子类型名称',3,'帖子类型3',NULL,NULL,'2022-01-17 09:40:17'),(6,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-01-17 09:40:17'),(7,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-01-17 09:40:17'),(8,'shangxia_types','上下架名称',1,'上架',NULL,NULL,'2022-01-17 09:40:17'),(9,'shangxia_types','上下架名称',2,'下架',NULL,NULL,'2022-01-17 09:40:18'),(10,'banquan_types','半全场',1,'半场',NULL,NULL,'2022-01-17 09:40:18'),(11,'banquan_types','半全场',2,'全场',NULL,NULL,'2022-01-17 09:40:18'),(12,'changdi_types','场地类型名称',1,'篮球场',NULL,NULL,'2022-01-17 09:40:18'),(13,'changdi_types','场地类型名称',2,'足球场',NULL,NULL,'2022-01-17 09:40:18'),(14,'changdi_types','场地类型名称',3,'羽毛球场',NULL,NULL,'2022-01-17 09:40:18'),(15,'changdi_types','场地类型名称',4,'乒乓球场',NULL,NULL,'2022-01-17 09:40:18'),(16,'changdi_types','场地类型名称',5,'网球场',NULL,NULL,'2022-01-17 09:40:18'),(17,'changdi_order_types','场地类型名称',1,'已预约',NULL,NULL,'2022-01-17 09:40:18'),(18,'changdi_order_types','场地类型名称',2,'取消预约',NULL,NULL,'2022-01-17 09:40:18'),(19,'changdi_order_types','场地类型名称',3,'已使用',NULL,NULL,'2022-01-17 09:40:18'),(20,'sex_types','性别类型名称',1,'男',NULL,NULL,'2022-01-17 09:40:18'),(21,'sex_types','性别类型名称',2,'女',NULL,NULL,'2022-01-17 09:40:18'),(23,'changdi_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-01-17 09:51:54'),(24,'gonggao_types','公告类型名称',3,'公告类型3',NULL,'','2022-01-18 09:46:54');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_types` int(11) DEFAULT NULL COMMENT '帖子类型',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_types`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,'帖子内容1',NULL,1,1,'2022-01-17 17:07:55',NULL,'2022-01-17 17:07:55'),(2,'帖子1',2,NULL,'帖子内容1',NULL,3,1,'2022-01-18 09:32:02',NULL,'2022-01-18 09:32:02'),(3,'帖子标题2',NULL,6,'帖子内容2',NULL,2,1,'2022-01-18 09:47:38',NULL,'2022-01-18 09:47:38'),(4,NULL,NULL,6,'很不错',2,NULL,2,'2022-01-18 09:47:52',NULL,'2022-01-18 09:47:52'),(5,NULL,2,NULL,'ss ',2,NULL,2,'2022-01-18 09:49:09',NULL,'2022-01-18 09:49:09');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','http://localhost:8080/tiyuguan/upload/1642410512593.jpeg',1,'2022-01-17 09:40:17','<p>公告1的详情</p>','2022-01-17 09:40:17');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','v4jw8sylwq7fw02yalkwf2lywoztu7tf','2022-01-17 09:48:50','2022-01-18 11:06:00'),(2,1,'a1','yonghu','用户','kqxar5qx295xxj1rvy78o0alxi0jk7fx','2022-01-17 11:07:54','2022-01-18 10:58:09'),(3,2,'a2','yonghu','用户','csb8deahz7q6zan3yob8tuk0lbwhl3kr','2022-01-18 09:29:45','2022-01-18 10:48:22');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2021-04-27 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','张1','17703786901','410224199610232001','http://localhost:8080/tiyuguan/upload/1642388298854.jpg',2,'11@qq.com','99600.00','2022-01-17 10:58:41'),(2,'a2','123456','张2','17703786902','410224199610232002','http://localhost:8080/tiyuguan/upload/1642469541407.jpg',1,'22@qq.com','999200.00','2022-01-18 09:29:38');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
