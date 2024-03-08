-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootd07er
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `springbootd07er`
--

/*!40000 DROP DATABASE IF EXISTS `springbootd07er`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbootd07er` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbootd07er`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kanbanxinxi`
--

DROP TABLE IF EXISTS `kanbanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kanbanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kanbanmingcheng` varchar(200) NOT NULL COMMENT '看板名称',
  `yulantu` varchar(200) DEFAULT NULL COMMENT '预览图',
  `wangyelianjie` varchar(200) NOT NULL COMMENT '网页链接',
  `neirongshuoming` longtext COMMENT '内容说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='看板信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kanbanxinxi`
--

LOCK TABLES `kanbanxinxi` WRITE;
/*!40000 ALTER TABLE `kanbanxinxi` DISABLE KEYS */;
INSERT INTO `kanbanxinxi` VALUES (21,'2022-03-19 07:00:38','看板名称1','upload/kanbanxinxi_yulantu1.jpg','http://www.baidu.com','内容说明1'),(22,'2022-03-19 07:00:38','看板名称2','upload/kanbanxinxi_yulantu2.jpg','网页链接2','内容说明2'),(23,'2022-03-19 07:00:38','看板名称3','upload/kanbanxinxi_yulantu3.jpg','网页链接3','内容说明3'),(24,'2022-03-19 07:00:38','看板名称4','upload/kanbanxinxi_yulantu4.jpg','网页链接4','内容说明4'),(25,'2022-03-19 07:00:38','看板名称5','upload/kanbanxinxi_yulantu5.jpg','网页链接5','内容说明5'),(26,'2022-03-19 07:00:38','看板名称6','upload/kanbanxinxi_yulantu6.jpg','网页链接6','内容说明6');
/*!40000 ALTER TABLE `kanbanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `renyuan`
--

DROP TABLE IF EXISTS `renyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `renyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `renyuanleixing` varchar(200) DEFAULT NULL COMMENT '人员类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='人员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `renyuan`
--

LOCK TABLES `renyuan` WRITE;
/*!40000 ALTER TABLE `renyuan` DISABLE KEYS */;
INSERT INTO `renyuan` VALUES (11,'2022-03-19 07:00:38','1','1','姓名1','男','upload/renyuan_touxiang1.jpg','773890001@qq.com','13823888881','人员类型1'),(12,'2022-03-19 07:00:38','账号2','123456','姓名2','男','upload/renyuan_touxiang2.jpg','773890002@qq.com','13823888882','人员类型2'),(13,'2022-03-19 07:00:38','账号3','123456','姓名3','男','upload/renyuan_touxiang3.jpg','773890003@qq.com','13823888883','人员类型3'),(14,'2022-03-19 07:00:38','账号4','123456','姓名4','男','upload/renyuan_touxiang4.jpg','773890004@qq.com','13823888884','人员类型4'),(15,'2022-03-19 07:00:38','账号5','123456','姓名5','男','upload/renyuan_touxiang5.jpg','773890005@qq.com','13823888885','人员类型5'),(16,'2022-03-19 07:00:38','账号6','123456','姓名6','男','upload/renyuan_touxiang6.jpg','773890006@qq.com','13823888886','人员类型6');
/*!40000 ALTER TABLE `renyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shebeixinxi`
--

DROP TABLE IF EXISTS `shebeixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shebeixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) NOT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) NOT NULL COMMENT '设备名称',
  `shebeileixing` varchar(200) DEFAULT NULL COMMENT '设备类型',
  `guimo` varchar(200) DEFAULT NULL COMMENT '规模',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `zhuyishixiang` longtext COMMENT '注意事项',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shebeibianhao` (`shebeibianhao`),
  UNIQUE KEY `shebeimingcheng` (`shebeimingcheng`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='设备信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shebeixinxi`
--

LOCK TABLES `shebeixinxi` WRITE;
/*!40000 ALTER TABLE `shebeixinxi` DISABLE KEYS */;
INSERT INTO `shebeixinxi` VALUES (31,'2022-03-19 07:00:38','1111111111','设备名称1','设备类型1','规模1',1,'注意事项1'),(32,'2022-03-19 07:00:38','2222222222','设备名称2','设备类型2','规模2',2,'注意事项2'),(33,'2022-03-19 07:00:38','3333333333','设备名称3','设备类型3','规模3',3,'注意事项3'),(34,'2022-03-19 07:00:38','4444444444','设备名称4','设备类型4','规模4',4,'注意事项4'),(35,'2022-03-19 07:00:38','5555555555','设备名称5','设备类型5','规模5',5,'注意事项5'),(36,'2022-03-19 07:00:38','6666666666','设备名称6','设备类型6','规模6',6,'注意事项6');
/*!40000 ALTER TABLE `shebeixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shengchangongxu`
--

DROP TABLE IF EXISTS `shengchangongxu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shengchangongxu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shengchanpici` varchar(200) DEFAULT NULL COMMENT '生产批次',
  `gongxumingcheng` varchar(200) NOT NULL COMMENT '工序名称',
  `gongxubianhao` varchar(200) DEFAULT NULL COMMENT '工序编号',
  `shebeimingcheng` varchar(200) NOT NULL COMMENT '设备名称',
  `picishuliang` int(11) DEFAULT NULL COMMENT '批次数量',
  `gongxuneirong` longtext COMMENT '工序内容',
  `chanpinmingcheng` longtext COMMENT '产品名称',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gongxubianhao` (`gongxubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='生产工序';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shengchangongxu`
--

LOCK TABLES `shengchangongxu` WRITE;
/*!40000 ALTER TABLE `shengchangongxu` DISABLE KEYS */;
INSERT INTO `shengchangongxu` VALUES (51,'2022-03-19 07:00:38','生产批次1','工序名称1','1111111111','设备名称1',1,'工序内容1','产品名称1','2022-03-19 15:00:38'),(52,'2022-03-19 07:00:38','生产批次2','工序名称2','2222222222','设备名称2',2,'工序内容2','产品名称2','2022-03-19 15:00:38'),(53,'2022-03-19 07:00:38','生产批次3','工序名称3','3333333333','设备名称3',3,'工序内容3','产品名称3','2022-03-19 15:00:38'),(54,'2022-03-19 07:00:38','生产批次4','工序名称4','4444444444','设备名称4',4,'工序内容4','产品名称4','2022-03-19 15:00:38'),(55,'2022-03-19 07:00:38','生产批次5','工序名称5','5555555555','设备名称5',5,'工序内容5','产品名称5','2022-03-19 15:00:38'),(56,'2022-03-19 07:00:38','生产批次6','工序名称6','6666666666','设备名称6',6,'工序内容6','产品名称6','2022-03-19 15:00:38');
/*!40000 ALTER TABLE `shengchangongxu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shengchankaili`
--

DROP TABLE IF EXISTS `shengchankaili`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shengchankaili` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongdanshuliang` int(11) NOT NULL COMMENT '工单数量',
  `shengchanpici` varchar(200) NOT NULL COMMENT '生产批次',
  `picishuliang` int(11) DEFAULT NULL COMMENT '批次数量',
  `picishuoming` longtext COMMENT '批次说明',
  `chanpinmingcheng` longtext COMMENT '产品名称',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='生产开立';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shengchankaili`
--

LOCK TABLES `shengchankaili` WRITE;
/*!40000 ALTER TABLE `shengchankaili` DISABLE KEYS */;
INSERT INTO `shengchankaili` VALUES (41,'2022-03-19 07:00:38',1,'生产批次1',1,'批次说明1','产品名称1','2022-03-19 15:00:38'),(42,'2022-03-19 07:00:38',2,'生产批次2',2,'批次说明2','产品名称2','2022-03-19 15:00:38'),(43,'2022-03-19 07:00:38',3,'生产批次3',3,'批次说明3','产品名称3','2022-03-19 15:00:38'),(44,'2022-03-19 07:00:38',4,'生产批次4',4,'批次说明4','产品名称4','2022-03-19 15:00:38'),(45,'2022-03-19 07:00:38',5,'生产批次5',5,'批次说明5','产品名称5','2022-03-19 15:00:38'),(46,'2022-03-19 07:00:38',6,'生产批次6',6,'批次说明6','产品名称6','2022-03-19 15:00:38');
/*!40000 ALTER TABLE `shengchankaili` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shengchanliucheng`
--

DROP TABLE IF EXISTS `shengchanliucheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shengchanliucheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shengchanpihao` varchar(200) DEFAULT NULL COMMENT '生产批号',
  `shengchanpici` varchar(200) DEFAULT NULL COMMENT '生产批次',
  `gongxumingcheng` varchar(200) DEFAULT NULL COMMENT '工序名称',
  `gongxubianhao` varchar(200) DEFAULT NULL COMMENT '工序编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `picishuliang` int(11) NOT NULL COMMENT '批次数量',
  `chanpinmingcheng` longtext COMMENT '产品名称',
  `shengchanzhuangtai` varchar(200) DEFAULT NULL COMMENT '生产状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shengchanpihao` (`shengchanpihao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='生产流程';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shengchanliucheng`
--

LOCK TABLES `shengchanliucheng` WRITE;
/*!40000 ALTER TABLE `shengchanliucheng` DISABLE KEYS */;
INSERT INTO `shengchanliucheng` VALUES (61,'2022-03-19 07:00:39','1111111111','生产批次1','工序名称1','工序编号1','设备名称1',1,'产品名称1','未生产'),(62,'2022-03-19 07:00:39','2222222222','生产批次2','工序名称2','工序编号2','设备名称2',2,'产品名称2','未生产'),(63,'2022-03-19 07:00:39','3333333333','生产批次3','工序名称3','工序编号3','设备名称3',3,'产品名称3','未生产'),(64,'2022-03-19 07:00:39','4444444444','生产批次4','工序名称4','工序编号4','设备名称4',4,'产品名称4','未生产'),(65,'2022-03-19 07:00:39','5555555555','生产批次5','工序名称5','工序编号5','设备名称5',5,'产品名称5','未生产'),(66,'2022-03-19 07:00:39','6666666666','生产批次6','工序名称6','工序编号6','设备名称6',6,'产品名称6','未生产');
/*!40000 ALTER TABLE `shengchanliucheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','8i16ofpzrbi2azrveekfyjjy1gduhb3o','2022-03-19 07:01:42','2022-03-19 08:04:47');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-19 07:00:39');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-23 15:18:48
