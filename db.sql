/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmli99j
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmli99j` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmli99j`;

/*Table structure for table `chezhan` */

DROP TABLE IF EXISTS `chezhan`;

CREATE TABLE `chezhan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mendianzhanghao` varchar(200) DEFAULT NULL COMMENT '门店账号',
  `mendianmingcheng` varchar(200) DEFAULT NULL COMMENT '门店名称',
  `qichemingcheng` varchar(200) NOT NULL COMMENT '汽车名称',
  `qichefenlei` varchar(200) NOT NULL COMMENT '汽车分类',
  `qichepinpai` varchar(200) NOT NULL COMMENT '汽车品牌',
  `qicheyanse` varchar(200) NOT NULL COMMENT '汽车颜色',
  `qichetupian` varchar(200) DEFAULT NULL COMMENT '汽车图片',
  `tianchuang` varchar(200) DEFAULT NULL COMMENT '天窗',
  `huandangfangshi` varchar(200) DEFAULT NULL COMMENT '换挡方式',
  `zuowei` varchar(200) DEFAULT NULL COMMENT '座位',
  `qichepailiang` varchar(200) DEFAULT NULL COMMENT '汽车排量',
  `shangshinianfen` varchar(200) DEFAULT NULL COMMENT '上市年份',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `qichexiangqing` longtext COMMENT '汽车详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615963638114 DEFAULT CHARSET=utf8 COMMENT='车展';

/*Data for the table `chezhan` */

insert  into `chezhan`(`id`,`addtime`,`mendianzhanghao`,`mendianmingcheng`,`qichemingcheng`,`qichefenlei`,`qichepinpai`,`qicheyanse`,`qichetupian`,`tianchuang`,`huandangfangshi`,`zuowei`,`qichepailiang`,`shangshinianfen`,`shuliang`,`qichexiangqing`,`clicktime`,`clicknum`,`userid`) values (31,'2021-03-17 14:31:14','门店账号1','门店名称1','汽车名称1','微型车','汽车品牌1','汽车颜色1','http://localhost:8080/ssmli99j/upload/chezhan_qichetupian1.jpg','有天窗','手动挡','2座','汽车排量1','上市年份1',1,'汽车详情1','2021-03-17 14:50:21',10,1),(32,'2021-03-17 14:31:14','门店账号2','门店名称2','汽车名称2','微型车','汽车品牌2','汽车颜色2','http://localhost:8080/ssmli99j/upload/chezhan_qichetupian2.jpg','有天窗','手动挡','2座','汽车排量2','上市年份2',2,'汽车详情2','2021-03-17 14:46:19',3,2),(33,'2021-03-17 14:31:14','门店账号3','门店名称3','汽车名称3','微型车','汽车品牌3','汽车颜色3','http://localhost:8080/ssmli99j/upload/chezhan_qichetupian3.jpg','有天窗','手动挡','2座','汽车排量3','上市年份3',3,'汽车详情3','2021-03-17 14:31:14',3,3),(34,'2021-03-17 14:31:14','门店账号4','门店名称4','汽车名称4','微型车','汽车品牌4','汽车颜色4','http://localhost:8080/ssmli99j/upload/chezhan_qichetupian4.jpg','有天窗','手动挡','2座','汽车排量4','上市年份4',4,'汽车详情4','2021-03-17 14:31:14',4,4),(35,'2021-03-17 14:31:14','门店账号5','门店名称5','汽车名称5','微型车','汽车品牌5','汽车颜色5','http://localhost:8080/ssmli99j/upload/chezhan_qichetupian5.jpg','有天窗','手动挡','2座','汽车排量5','上市年份5',5,'汽车详情5','2021-03-17 14:31:14',5,5),(36,'2021-03-17 14:31:14','门店账号6','门店名称6','汽车名称6','微型车','汽车品牌6','汽车颜色6','http://localhost:8080/ssmli99j/upload/chezhan_qichetupian6.jpg','有天窗','手动挡','2座','汽车排量6','上市年份6',6,'汽车详情6','2021-03-17 14:31:14',6,6),(1615963067955,'2021-03-17 14:37:47','门店1','门店名称1','11','中型车','汽车品牌2','121','http://localhost:8080/ssmli99j/upload/1615963047317.jpg','有天窗','手动挡','5座','111','1',1,'11','2021-03-17 14:46:51',6,21),(1615963638113,'2021-03-17 14:47:17','门店1','门店名称1','11','微型车','汽车品牌1','11','http://localhost:8080/ssmli99j/upload/1615963626909.jpg','有天窗','手动挡','2座','111','1',11,'11','2021-03-17 14:47:56',1,21);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmli99j/upload/1615963870903.jpg'),(2,'picture2','http://localhost:8080/ssmli99j/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmli99j/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discusschezhan` */

DROP TABLE IF EXISTS `discusschezhan`;

CREATE TABLE `discusschezhan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615963545605 DEFAULT CHARSET=utf8 COMMENT='车展评论表';

/*Data for the table `discusschezhan` */

insert  into `discusschezhan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (81,'2021-03-17 14:31:14',1,1,'用户名1','评论内容1','回复内容1'),(82,'2021-03-17 14:31:14',2,2,'用户名2','评论内容2','回复内容2'),(83,'2021-03-17 14:31:14',3,3,'用户名3','评论内容3','回复内容3'),(84,'2021-03-17 14:31:14',4,4,'用户名4','评论内容4','回复内容4'),(85,'2021-03-17 14:31:14',5,5,'用户名5','评论内容5','回复内容5'),(86,'2021-03-17 14:31:14',6,6,'用户名6','评论内容6','回复内容6'),(1615962968356,'2021-03-17 14:36:07',31,11,'用户1','111',''),(1615963545604,'2021-03-17 14:45:44',31,11,'用户1','222','');

/*Table structure for table `mendian` */

DROP TABLE IF EXISTS `mendian`;

CREATE TABLE `mendian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mendianzhanghao` varchar(200) NOT NULL COMMENT '门店账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `mendianmingcheng` varchar(200) DEFAULT NULL COMMENT '门店名称',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `mendianzhaopian` varchar(200) DEFAULT NULL COMMENT '门店照片',
  `beizhu` longtext COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mendianzhanghao` (`mendianzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615963765876 DEFAULT CHARSET=utf8 COMMENT='门店';

/*Data for the table `mendian` */

insert  into `mendian`(`id`,`addtime`,`mendianzhanghao`,`mima`,`mendianmingcheng`,`fuzeren`,`shouji`,`youxiang`,`mendianzhaopian`,`beizhu`,`sfsh`,`shhf`) values (21,'2021-03-17 14:31:14','门店1','123456','门店名称1','负责人1','13823888881','773890001@qq.com','http://localhost:8080/ssmli99j/upload/mendian_mendianzhaopian1.jpg','备注1','是',''),(22,'2021-03-17 14:31:14','门店2','123456','门店名称2','负责人2','13823888882','773890002@qq.com','http://localhost:8080/ssmli99j/upload/mendian_mendianzhaopian2.jpg','备注2','是',''),(23,'2021-03-17 14:31:14','门店3','123456','门店名称3','负责人3','13823888883','773890003@qq.com','http://localhost:8080/ssmli99j/upload/mendian_mendianzhaopian3.jpg','备注3','是',''),(24,'2021-03-17 14:31:14','门店4','123456','门店名称4','负责人4','13823888884','773890004@qq.com','http://localhost:8080/ssmli99j/upload/mendian_mendianzhaopian4.jpg','备注4','是',''),(25,'2021-03-17 14:31:14','门店5','123456','门店名称5','负责人5','13823888885','773890005@qq.com','http://localhost:8080/ssmli99j/upload/mendian_mendianzhaopian5.jpg','备注5','是',''),(26,'2021-03-17 14:31:14','门店6','123456','门店名称6','负责人6','13823888886','773890006@qq.com','http://localhost:8080/ssmli99j/upload/mendian_mendianzhaopian6.jpg','备注6','是',''),(1615963765875,'2021-03-17 14:49:25','11','11','11','11','13800138000','11@qq.com','http://localhost:8080/ssmli99j/upload/1615963765099.jpg','','是','');

/*Table structure for table `qichepinpai` */

DROP TABLE IF EXISTS `qichepinpai`;

CREATE TABLE `qichepinpai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qichepinpai` varchar(200) NOT NULL COMMENT '汽车品牌',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qichepinpai` (`qichepinpai`)
) ENGINE=InnoDB AUTO_INCREMENT=1615963831412 DEFAULT CHARSET=utf8 COMMENT='汽车品牌';

/*Data for the table `qichepinpai` */

insert  into `qichepinpai`(`id`,`addtime`,`qichepinpai`) values (41,'2021-03-17 14:31:14','汽车品牌1'),(42,'2021-03-17 14:31:14','汽车品牌2'),(43,'2021-03-17 14:31:14','汽车品牌3'),(44,'2021-03-17 14:31:14','汽车品牌4'),(45,'2021-03-17 14:31:14','汽车品牌5'),(46,'2021-03-17 14:31:14','6'),(1615963831411,'2021-03-17 14:50:31','7');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615963580702 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1615963539953,'2021-03-17 14:45:39',11,31,'chezhan','汽车名称1','http://localhost:8080/ssmli99j/upload/chezhan_qichetupian1.jpg'),(1615963580701,'2021-03-17 14:46:20',11,32,'chezhan','汽车名称2','http://localhost:8080/ssmli99j/upload/chezhan_qichetupian2.jpg');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'用户1','yonghu','用户','duk8s7e5s404gpi0kjikfr0ghkbdl45i','2021-03-17 14:35:44','2021-03-17 15:47:53'),(2,21,'门店1','mendian','门店','zdqdkrjxlzun734rgd2353x4xo5zutju','2021-03-17 14:37:01','2021-03-17 15:46:47'),(3,1,'abo','users','管理员','99bnooaoryz4sycavmdvp94ihb6anlfj','2021-03-17 14:39:23','2021-03-17 15:50:00'),(4,1615963765875,'11','mendian','门店','18hnz5skb56p7u144rlms5crnuyynlbq','2021-03-17 14:49:52','2021-03-17 15:49:52');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-17 14:31:14');

/*Table structure for table `xinwentoutiao` */

DROP TABLE IF EXISTS `xinwentoutiao`;

CREATE TABLE `xinwentoutiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mendianzhanghao` varchar(200) DEFAULT NULL COMMENT '门店账号',
  `mendianmingcheng` varchar(200) DEFAULT NULL COMMENT '门店名称',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `neirong` longtext COMMENT '内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615963653723 DEFAULT CHARSET=utf8 COMMENT='新闻头条';

/*Data for the table `xinwentoutiao` */

insert  into `xinwentoutiao`(`id`,`addtime`,`mendianzhanghao`,`mendianmingcheng`,`biaoti`,`fengmian`,`neirong`,`fabushijian`,`clicktime`,`clicknum`,`userid`) values (51,'2021-03-17 14:31:14','门店账号1','门店名称1','标题1','http://localhost:8080/ssmli99j/upload/xinwentoutiao_fengmian1.jpg','内容1','2021-03-17','2021-03-17 14:50:45',3,1),(52,'2021-03-17 14:31:14','门店账号2','门店名称2','标题2','http://localhost:8080/ssmli99j/upload/xinwentoutiao_fengmian2.jpg','内容2','2021-03-17','2021-03-17 14:31:14',2,2),(53,'2021-03-17 14:31:14','门店账号3','门店名称3','标题3','http://localhost:8080/ssmli99j/upload/xinwentoutiao_fengmian3.jpg','内容3','2021-03-17','2021-03-17 14:31:14',3,3),(54,'2021-03-17 14:31:14','门店账号4','门店名称4','标题4','http://localhost:8080/ssmli99j/upload/xinwentoutiao_fengmian4.jpg','内容4','2021-03-17','2021-03-17 14:31:14',4,4),(55,'2021-03-17 14:31:14','门店账号5','门店名称5','标题5','http://localhost:8080/ssmli99j/upload/xinwentoutiao_fengmian5.jpg','内容5','2021-03-17','2021-03-17 14:31:14',5,5),(56,'2021-03-17 14:31:14','门店账号6','门店名称6','标题6','http://localhost:8080/ssmli99j/upload/xinwentoutiao_fengmian6.jpg','内容6','2021-03-17','2021-03-17 14:31:14',6,6),(1615963086250,'2021-03-17 14:38:06','门店1','门店名称1','11','http://localhost:8080/ssmli99j/upload/1615963083153.jpg','11','2021-03-17','2021-03-17 14:45:54',1,21),(1615963653722,'2021-03-17 14:47:33','门店1','门店名称1','22','http://localhost:8080/ssmli99j/upload/1615963650260.jpg','222','2021-03-17','2021-03-17 14:48:01',1,21);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615963712183 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`beizhu`) values (11,'2021-03-17 14:31:14','用户1','123456','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/ssmli99j/upload/1615963596879.jpg','备注1'),(12,'2021-03-17 14:31:14','用户2','123456','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/ssmli99j/upload/yonghu_zhaopian2.jpg','备注2'),(13,'2021-03-17 14:31:14','用户3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/ssmli99j/upload/yonghu_zhaopian3.jpg','备注3'),(14,'2021-03-17 14:31:14','用户4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/ssmli99j/upload/yonghu_zhaopian4.jpg','备注4'),(15,'2021-03-17 14:31:14','用户5','123456','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/ssmli99j/upload/yonghu_zhaopian5.jpg','备注5'),(16,'2021-03-17 14:31:14','用户6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/ssmli99j/upload/yonghu_zhaopian6.jpg','备注6'),(1615963712182,'2021-03-17 14:48:32','11','11','11','女','','','http://localhost:8080/ssmli99j/upload/1615963721693.jpg','1221');

/*Table structure for table `yuyueshijia` */

DROP TABLE IF EXISTS `yuyueshijia`;

CREATE TABLE `yuyueshijia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `mendianzhanghao` varchar(200) DEFAULT NULL COMMENT '门店账号',
  `mendianmingcheng` varchar(200) DEFAULT NULL COMMENT '门店名称',
  `qichemingcheng` varchar(200) DEFAULT NULL COMMENT '汽车名称',
  `qichepinpai` varchar(200) DEFAULT NULL COMMENT '汽车品牌',
  `qichetupian` varchar(200) DEFAULT NULL COMMENT '汽车图片',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615963532771 DEFAULT CHARSET=utf8 COMMENT='预约试驾';

/*Data for the table `yuyueshijia` */

insert  into `yuyueshijia`(`id`,`addtime`,`zhanghao`,`xingming`,`mendianzhanghao`,`mendianmingcheng`,`qichemingcheng`,`qichepinpai`,`qichetupian`,`yuyueshijian`,`userid`) values (61,'2021-03-17 14:31:14','账号1','姓名1','门店账号1','门店名称1','汽车名称1','汽车品牌1','http://localhost:8080/ssmli99j/upload/yuyueshijia_qichetupian1.jpg','2021-03-17 14:31:14',1),(62,'2021-03-17 14:31:14','账号2','姓名2','门店账号2','门店名称2','汽车名称2','汽车品牌2','http://localhost:8080/ssmli99j/upload/yuyueshijia_qichetupian2.jpg','2021-03-17 14:31:14',2),(63,'2021-03-17 14:31:14','账号3','姓名3','门店账号3','门店名称3','汽车名称3','汽车品牌3','http://localhost:8080/ssmli99j/upload/yuyueshijia_qichetupian3.jpg','2021-03-17 14:31:14',3),(64,'2021-03-17 14:31:14','账号4','姓名4','门店账号4','门店名称4','汽车名称4','汽车品牌4','http://localhost:8080/ssmli99j/upload/yuyueshijia_qichetupian4.jpg','2021-03-17 14:31:14',4),(65,'2021-03-17 14:31:14','账号5','姓名5','门店账号5','门店名称5','汽车名称5','汽车品牌5','http://localhost:8080/ssmli99j/upload/yuyueshijia_qichetupian5.jpg','2021-03-17 14:31:14',5),(66,'2021-03-17 14:31:14','账号6','姓名6','门店账号6','门店名称6','汽车名称6','汽车品牌6','http://localhost:8080/ssmli99j/upload/yuyueshijia_qichetupian6.jpg','2021-03-17 14:31:14',6),(1615962959308,'2021-03-17 14:35:59','用户1','姓名1','门店账号1','门店名称1','汽车名称1','汽车品牌1','http://localhost:8080/ssmli99j/upload/chezhan_qichetupian1.jpg','2021-03-22 14:35:02',11),(1615963532770,'2021-03-17 14:45:32','用户1','姓名1','门店1','门店名称1','11','汽车品牌2','http://localhost:8080/ssmli99j/upload/1615963047317.jpg','2021-03-21 14:44:39',11);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
