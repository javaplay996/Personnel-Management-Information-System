/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - rsglxx
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`rsglxx` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `rsglxx`;

/*Table structure for table `chuqin` */

DROP TABLE IF EXISTS `chuqin`;

CREATE TABLE `chuqin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `today` varchar(200) DEFAULT NULL COMMENT '打卡日期',
  `on_time` timestamp NULL DEFAULT NULL COMMENT '上班打卡时间',
  `down_time` timestamp NULL DEFAULT NULL COMMENT '下班打卡时间',
  `chuqin_types` int(11) DEFAULT NULL COMMENT '打卡类型  Search111',
  `overtimeNumber` int(11) DEFAULT NULL COMMENT '加班时间(小时)',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='考勤';

/*Data for the table `chuqin` */

insert  into `chuqin`(`id`,`yonghu_id`,`today`,`on_time`,`down_time`,`chuqin_types`,`overtimeNumber`,`create_time`) values (1,1,'2021-03-03','2021-03-03 13:42:26','2021-03-03 13:42:36',6,NULL,'2021-03-03 13:42:26'),(2,2,'2021-03-03','2021-03-03 13:42:51','2021-03-03 13:42:53',6,NULL,'2021-03-03 13:42:51'),(3,3,'2021-03-03','2021-03-03 13:43:23','2021-03-03 17:30:17',6,NULL,'2021-03-03 13:43:23');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspmm2ql6/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmm2ql6/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmm2ql6/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/jspmm2ql6/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/jspmm2ql6/upload/picture5.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'bumen_types','部门',1,'开发部',NULL,'2021-03-03 10:05:52'),(2,'bumen_types','部门',2,'市场部',NULL,'2021-03-03 10:05:52'),(3,'bumen_types','部门',3,'销售部',NULL,'2021-03-03 10:05:52'),(4,'zhiwei_types','职位',1,'普通员工',NULL,'2021-03-03 10:05:52'),(5,'zhiwei_types','职位',2,'小组长',NULL,'2021-03-03 10:05:52'),(6,'zhiwei_types','职位',3,'大组长',NULL,'2021-03-03 10:05:52'),(7,'zhiwei_types','职位',4,'经理',NULL,'2021-03-03 10:05:52'),(8,'sex_types','性别',1,'男',NULL,'2021-03-03 10:05:52'),(9,'sex_types','性别',2,'女',NULL,'2021-03-03 10:05:52'),(10,'politics_types','政治面貌',1,'群众',NULL,'2021-03-03 10:05:52'),(11,'politics_types','政治面貌',2,'党员',NULL,'2021-03-03 10:05:52'),(12,'chuqin_types','打卡类型',1,'正常打卡',NULL,'2021-03-03 10:05:52'),(13,'chuqin_types','打卡类型',2,'未打上班卡',NULL,'2021-03-03 10:05:52'),(14,'chuqin_types','打卡类型',3,'未打下班卡',NULL,'2021-03-03 10:05:52'),(15,'chuqin_types','打卡类型',4,'缺勤',NULL,'2021-03-03 10:05:52'),(16,'chuqin_types','打卡类型',5,'加班',NULL,'2021-03-03 10:05:52'),(17,'chuqin_types','打卡类型',6,'迟到',NULL,'2021-03-03 10:05:52'),(18,'chuqin_types','打卡类型',7,'早退',NULL,'2021-03-03 10:05:52'),(19,'jixiao_types','绩效类型',1,'优',NULL,'2021-03-03 10:05:52'),(20,'jixiao_types','绩效类型',2,'上',NULL,'2021-03-03 10:05:52'),(21,'jixiao_types','绩效类型',3,'中',NULL,'2021-03-03 10:05:52'),(22,'jixiao_types','绩效类型',4,'下',NULL,'2021-03-03 10:05:52'),(23,'qingjia_types','请假状态',1,'未审核',NULL,'2021-03-03 10:05:52'),(24,'qingjia_types','请假状态',2,'审核通过',NULL,'2021-03-03 10:05:52'),(25,'qingjia_types','请假状态',3,'审核不通过',NULL,'2021-03-03 10:05:52'),(26,'renwu_types','任务类型',1,'任务类型1',NULL,'2021-03-03 10:05:52'),(27,'renwu_types','任务类型',2,'任务类型2',NULL,'2021-03-03 10:05:52'),(28,'renwu_types','任务类型',3,'任务类型3',NULL,'2021-03-03 10:05:52');

/*Table structure for table `jixiao` */

DROP TABLE IF EXISTS `jixiao`;

CREATE TABLE `jixiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `month` varchar(200) DEFAULT NULL COMMENT '月份  Search111',
  `jixiao_types` int(11) DEFAULT NULL COMMENT '绩效类型  Search111',
  `jixiao_content` varchar(200) DEFAULT NULL COMMENT '绩效内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='绩效';

/*Data for the table `jixiao` */

insert  into `jixiao`(`id`,`yonghu_id`,`month`,`jixiao_types`,`jixiao_content`,`create_time`) values (1,3,'2021-02',1,'很优秀\r\n','2021-03-03 13:57:03'),(2,3,'2021-04',3,'本月请假过多,中\r\n','2021-03-03 13:57:28'),(3,7,'2021-02',4,'绩效下\r\n','2021-03-03 18:00:10');

/*Table structure for table `qingjia` */

DROP TABLE IF EXISTS `qingjia`;

CREATE TABLE `qingjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `onday` varchar(200) DEFAULT NULL COMMENT '请假开始时间  Search111 ',
  `downday` varchar(200) DEFAULT NULL COMMENT '请假结束时间   Search111 ',
  `qingjia_number` int(11) DEFAULT NULL COMMENT '请假天数  Search111 ',
  `qingjia_types` int(11) DEFAULT NULL COMMENT '请假状态  Search111 ',
  `liyou_content` varchar(200) DEFAULT NULL COMMENT '理由',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '审批时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='请假';

/*Data for the table `qingjia` */

insert  into `qingjia`(`id`,`yonghu_id`,`onday`,`downday`,`qingjia_number`,`qingjia_types`,`liyou_content`,`update_time`,`create_time`) values (1,3,'2021-03-06','2021-03-07',1,2,'有事情1\r\n','2021-03-03 17:41:53','2021-03-03 17:38:11'),(2,1,'2021-03-07','2021-03-08',1,2,'<img src=\"http://localhost:8080/rsglxx/upload/1614768470208.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/rsglxx/upload/1614768470208.jpg\">989898999888\r\n','2021-03-03 18:48:24','2021-03-03 18:46:52');

/*Table structure for table `renwu` */

DROP TABLE IF EXISTS `renwu`;

CREATE TABLE `renwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `renwu_types` int(11) DEFAULT NULL COMMENT '任务类型  Search111 ',
  `bumen_types` int(11) DEFAULT NULL COMMENT '接收部门  Search111 ',
  `zhiwei_types` int(11) DEFAULT NULL COMMENT '接收职位  Search111 ',
  `renwu_content` varchar(200) DEFAULT NULL COMMENT '任务内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='任务';

/*Data for the table `renwu` */

insert  into `renwu`(`id`,`renwu_types`,`bumen_types`,`zhiwei_types`,`renwu_content`,`insert_time`,`create_time`) values (14,3,3,0,'222\r\n','2021-03-03 14:39:30','2021-03-03 14:39:30'),(15,3,3,3,'销售部大组长才能看到的任务\r\n','2021-03-03 14:40:20','2021-03-03 14:40:20'),(16,3,0,3,'所有部门的大组长都能看到的信息\r\n','2021-03-03 14:43:56','2021-03-03 14:43:56'),(17,3,0,1,'所有部门的普通员工可以查看\r\n','2021-03-03 16:56:47','2021-03-03 16:56:47'),(18,3,2,1,'市场部的普通员工可以看到\r\n','2021-03-03 16:57:11','2021-03-03 16:57:11'),(19,3,3,3,'销售部大组长可以看到\r\n','2021-03-03 18:44:35','2021-03-03 18:44:35');

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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','vg1owkzodrtcxn1o6xot3le96cytizgf','2020-12-17 17:09:11','2021-02-03 11:47:45'),(2,1,'1','dangyuan','党员','lrlu96f87l1btzsvhmq0cx248eoowb3t','2020-12-17 17:17:02','2020-12-17 18:17:03'),(3,1,'1','zhibu','支部','w8efhq9xkrz3c3fz6dgztk9trch8dnk8','2020-12-17 17:18:21','2020-12-17 18:18:21'),(4,1608197383165,'001','zhibu','支部','7q33efdzk68psx37dpjek8p8h6uwq7ow','2020-12-17 17:36:24','2021-01-22 10:38:07'),(5,1608198583190,'001','dangyuan','党员','p64k1bj6iwvrditvy4jzanyq44zbq6ed','2020-12-17 17:52:50','2020-12-17 18:52:50'),(6,1608199057450,'003','dangyuan','党员','g26ivuguh0qebktkl0hyj1jymxt2svnn','2020-12-17 18:03:00','2020-12-17 19:03:01'),(7,1608199181916,'004','zhibu','支部','13u05cup4ivaoeyin2shic24xi7oge2f','2020-12-17 18:03:40','2020-12-17 19:03:41'),(8,6,'admin1','users','学院管理员','y46uj8gv4ezllt5p5ufrge1f2bpjv3cs','2021-01-29 14:52:36','2021-02-03 11:47:53'),(9,7,'admin2','users','宿舍管理员','qrx3mk3gn2e5ye90s0ab3gq54nouf8rw','2021-02-02 12:02:15','2021-02-03 11:59:01'),(10,10,'11','users','学生','u31dzvfagnj9tppkjr9nvxtzbhukx5vx','2021-02-02 13:21:38','2021-02-03 12:39:22'),(11,1,'abo','users','学院管理员','f2ul3z66wpuo4a0rl77sk921n9yf8mkb','2021-02-03 10:52:40','2021-02-03 11:52:40'),(12,8,'admin3','users','财务管理员','9ymzdcsml2b96mln6x6cs3i2xi661643','2021-02-03 11:05:39','2021-02-03 15:10:11'),(13,11,'999','users','学生','mya6tv1l67d8s6r6tan7ezy7z4w8lgzw','2021-02-03 11:29:09','2021-02-03 14:45:27'),(14,4,'999','yonghu','用户','8v54w8d3ffpx8awxxctk2y6bdhx84drl','2021-02-04 13:40:27','2021-03-03 18:26:29'),(15,1,'99','yonghu','用户','v6i8inebvpei5b16ixzrkatz00zyd9q2','2021-02-04 14:52:51','2021-03-03 19:48:31'),(16,7,'admin2','users','初审管理员','3mqhpytktmhhpz29r6dtrbynyvtl525i','2021-02-04 15:50:09','2021-02-22 11:07:10'),(17,3,'77','users','用户','ukyyw6eon6p1m05lnld4qyq6f16xs4v9','2021-02-18 09:42:20','2021-03-03 19:49:22'),(18,6,'admin1','users','管理员','7ioso4lmxzua8non5d9ccqhuqd94tc36','2021-02-19 16:42:49','2021-03-03 19:49:09'),(19,6,'88','yonghu','用户','a14uhbgpl3fbmomjtlqw531wa14n0kag','2021-02-20 10:35:45','2021-03-03 18:26:51'),(20,2,'22','yonghu','用户','4flv8vtevzg2z9qqsu3xtjgiy9zzzcb0','2021-02-20 10:54:51','2021-03-03 19:49:00'),(21,8,'admin3','users','政审管理员','p1vflp8rs17msr05d6vwo622f1bk095c','2021-02-20 11:39:06','2021-02-22 11:09:33'),(22,9,'admin4','users','武装部管理员','0ljqhzh9zhhlq3ftkczskvs9ur5oj1fy','2021-02-20 13:31:20','2021-02-20 19:06:45'),(23,5,'55','yonghu','用户','jzxw4912iminddl1v1csr7md5g9z04uz','2021-02-20 17:25:51','2021-02-23 17:15:21'),(24,13,'77','users','舍管管理员','gt28ff27xhxzmvjc7oy74s3jgfr7gstx','2021-02-23 15:21:29','2021-02-23 16:21:29'),(25,14,'admin2','users','舍管管理员','wm7ners2segz27n1g4sojmx8ios2d0jk','2021-02-23 16:03:05','2021-02-23 17:03:47'),(26,14,'admin2','users','售票管理员','iwqonlhzy22vjgsh90jxc016vvpr8i1e','2021-02-24 13:54:16','2021-02-24 15:53:23'),(27,15,'admin3','users','检票管理员','97icqm027wx11oba95zlnjl613h2haeq','2021-02-24 13:57:11','2021-02-24 16:26:45'),(28,18,'78','users','售票管理员','bxbiasroyq8hgxljhgygmils0450zegz','2021-02-24 14:53:44','2021-02-24 15:53:45'),(29,12,'99','yonghu','用户','3gh882ib9001cag4ua5bzg0v8h8smi7e','2021-03-01 16:52:26','2021-03-01 18:14:30'),(30,7,'a1','yonghu','用户','m7whd20qf9h0tb8k2tkg0c0v9wa6s3x5','2021-03-01 21:06:49','2021-03-02 12:08:40'),(31,8,'a2','yonghu','用户','94sgqh9kog3hrvaej848n42ujqrpl9pa','2021-03-02 11:09:17','2021-03-02 12:31:59'),(32,13,'a8','yonghu','用户','0tvaz76fd0qt7ngvckt7yqn5hffyesbn','2021-03-02 11:45:55','2021-03-02 14:10:18'),(33,15,'a6','yonghu','用户','u1gplzr2wfrg122mhd8hc9ocr55urh2i','2021-03-02 14:07:02','2021-03-02 15:16:52');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `xinzi` */

DROP TABLE IF EXISTS `xinzi`;

CREATE TABLE `xinzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `month` varchar(200) DEFAULT NULL COMMENT '月份  Search111',
  `money` decimal(10,4) DEFAULT NULL COMMENT '薪资',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='薪资';

/*Data for the table `xinzi` */

insert  into `xinzi`(`id`,`yonghu_id`,`month`,`money`,`create_time`) values (1,3,'2021-04','78.0000','2021-03-03 13:51:20'),(2,3,'2021-03','70.0000','2021-03-03 13:53:32'),(3,2,'2021-01','99.0000','2021-03-03 13:53:48'),(4,7,'2021-04','98.0000','2021-03-03 17:58:43');

/*Table structure for table `xitonggonggao` */

DROP TABLE IF EXISTS `xitonggonggao`;

CREATE TABLE `xitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题 Search',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `neirong` longtext COMMENT '内容',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统公告';

/*Data for the table `xitonggonggao` */

insert  into `xitonggonggao`(`id`,`addtime`,`biaoti`,`leixing`,`neirong`,`riqi`) values (1,'2021-03-03 10:05:51','日常公告','日常公告','公告信息','2021-03-03 10:05:51'),(2,'2021-03-03 10:05:51','紧急公告','紧急公告','公告信息','2021-03-03 10:05:51'),(3,'2021-03-03 10:05:51','其他公告','其他公告','公告信息','2021-03-03 10:05:51'),(5,'2021-03-03 18:45:39','公告标题','紧急公告','公告内容','2021-03-03 18:45:39');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名  Search111 ',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `id_number` varchar(200) DEFAULT NULL COMMENT '身份证号  Search111 ',
  `birthday_time` timestamp NULL DEFAULT NULL COMMENT '生日',
  `bumen_types` int(11) DEFAULT NULL COMMENT '部门  Search111  ',
  `zhiwei_types` int(11) DEFAULT NULL COMMENT '职位  Search111  ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别  Search111',
  `my_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `nation` varchar(200) DEFAULT NULL COMMENT '民族',
  `politics_types` int(11) DEFAULT NULL COMMENT '政治面貌',
  `birthplace` varchar(200) DEFAULT NULL COMMENT '籍贯',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`name`,`phone`,`id_number`,`birthday_time`,`bumen_types`,`zhiwei_types`,`sex_types`,`my_photo`,`nation`,`politics_types`,`birthplace`,`create_time`) values (1,'a1','123456','a1','17703789991','410224199610232011','1996-10-23 00:00:00',3,3,1,'http://localhost:8080/rsglxx/file/download?fileName=1614743877490.jpg','汉',2,'审犯罪','2021-03-03 11:57:58'),(2,'a2','123456','a2','17703789992','410224199610232012','1996-10-23 00:00:00',2,3,2,'http://localhost:8080/rsglxx/file/download?fileName=1614749766595.jpg','汉',1,'审犯罪','2021-03-03 13:36:30'),(3,'a3','123456','a3','17703789993','410224199610232013','1996-10-23 00:00:00',3,1,2,'http://localhost:8080/rsglxx/file/download?fileName=1614749818423.jpg','汉',2,'审犯罪','2021-03-03 13:37:14'),(4,'a4','123456','a4','17703789994','410224199610232014','1996-10-23 00:00:00',2,4,1,'http://localhost:8080/rsglxx/file/download?fileName=1614753657071.jpg','汉',1,'河南开封','2021-03-03 14:41:05'),(5,'a6','123456','a6','17703789996','410224199610232016','1996-10-23 00:00:00',2,2,2,'http://localhost:8080/rsglxx/file/download?fileName=1614762506195.jpg','汉',2,'审犯罪','2021-03-03 16:58:13'),(6,'a7','123456','a7','17703789997','410224199610232017','1996-10-23 00:00:00',2,1,1,'http://localhost:8080/rsglxx/file/download?fileName=1614762446699.jpg','汉',2,'审犯罪1','2021-03-03 17:04:31'),(7,'a8','123456','a8','17703786968','410224199610232018','1996-10-23 00:00:00',3,1,2,'http://localhost:8080/rsglxx/file/download?fileName=1614764727477.jpg','汉',1,'审犯罪1','2021-03-03 17:45:39');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
