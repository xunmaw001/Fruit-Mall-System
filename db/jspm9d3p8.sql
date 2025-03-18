-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspm9d3p8
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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1608218687851 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2020-12-17 14:49:28',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2020-12-17 14:49:28',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2020-12-17 14:49:28',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2020-12-17 14:49:28',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2020-12-17 14:49:28',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2020-12-17 14:49:28',6,'宇宙银河系月球1号','月某','13823888886','是'),(1608218201449,'2020-12-17 15:16:40',1608218126656,'广东省梅州市梅江区江南街道嘉应中路嘉应桥头公园','胡月','13513513525','是'),(1608218687850,'2020-12-17 15:24:47',1608218538382,'广东省梅州市梅江区西郊街道金利来大街192号金地花园(梅瑶路)','胡月','13513513212','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shuiguoku' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1608218642363 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1608218157643,'2020-12-17 15:15:57','shuiguoku',1608218126656,1608217943392,'牛油果','http://localhost:8080/jspm9d3p8/upload/1608217921527.jpg',1,12,0);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1608218960890 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (1,'2020-12-17 14:49:28',1,1,'提问1','回复1',1),(2,'2020-12-17 14:49:28',2,2,'提问2','回复2',2),(3,'2020-12-17 14:49:28',3,3,'提问3','回复3',3),(4,'2020-12-17 14:49:28',4,4,'提问4','回复4',4),(5,'2020-12-17 14:49:28',5,5,'提问5','回复5',5),(6,'2020-12-17 14:49:28',6,6,'提问6','回复6',6),(1608218960889,'2020-12-17 15:29:20',1608218538382,NULL,'‍什么快递\r\n','圆通\r\n',0);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspm9d3p8/upload/1608217970878.jpg'),(2,'picture2','http://localhost:8080/jspm9d3p8/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspm9d3p8/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/jspm9d3p8/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/jspm9d3p8/upload/picture5.jpg'),(6,'homepage','http://localhost:8080/jspm9d3p8/upload/1608218405342.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshuiguoku`
--

DROP TABLE IF EXISTS `discussshuiguoku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshuiguoku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1608218654126 DEFAULT CHARSET=utf8 COMMENT='水果库评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshuiguoku`
--

LOCK TABLES `discussshuiguoku` WRITE;
/*!40000 ALTER TABLE `discussshuiguoku` DISABLE KEYS */;
INSERT INTO `discussshuiguoku` VALUES (1,'2020-12-17 14:49:28',1,1,'评论内容1','回复内容1'),(2,'2020-12-17 14:49:28',2,2,'评论内容2','回复内容2'),(3,'2020-12-17 14:49:28',3,3,'评论内容3','回复内容3'),(4,'2020-12-17 14:49:28',4,4,'评论内容4','回复内容4'),(5,'2020-12-17 14:49:28',5,5,'评论内容5','回复内容5'),(6,'2020-12-17 14:49:28',6,6,'评论内容6','回复内容6'),(1608218654125,'2020-12-17 15:24:14',1608218377247,1608218538382,'很好',NULL);
/*!40000 ALTER TABLE `discussshuiguoku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1608218460393 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (2,'2020-12-17 14:49:28','标题2','http://localhost:8080/jspm9d3p8/upload/news_picture2.jpg','内容2'),(1608218041796,'2020-12-17 15:14:01','最新资讯','http://localhost:8080/jspm9d3p8/upload/1608218039521.jpg','撒范德萨发士大夫大师傅的房贷<img src=\"http://localhost:8080/jspm9d3p8/upload/1608218034358.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm9d3p8/upload/1608218034358.jpg\">\r\n'),(1608218460392,'2020-12-17 15:20:59','最新公告k','http://localhost:8080/jspm9d3p8/upload/1608218448007.jpg','房贷高峰过后就已经很快就会k<img src=\"http://localhost:8080/jspm9d3p8/upload/1608218457196.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm9d3p8/upload/1608218457196.jpg\">\r\n');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shuiguoku' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1608218872075 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1608218215630,'2020-12-17 15:16:55','2020121723224167250667','shuiguoku',1608218126656,1608217943392,'牛油果','http://localhost:8080/jspm9d3p8/upload/1608217921527.jpg',1,12,12,12,12,1,'已发货','广东省梅州市梅江区江南街道嘉应中路嘉应桥头公园'),(1608218240507,'2020-12-17 15:17:20','202012172323674173347','shuiguoku',1608218126656,1608217943392,'牛油果','http://localhost:8080/jspm9d3p8/upload/1608217921527.jpg',1,10,10,10,10,2,'已支付','广东省梅州市梅江区江南街道嘉应中路嘉应桥头公园'),(1608218707003,'2020-12-17 15:25:06','2020121723305272553520','shuiguoku',1608218538382,1608218377247,'葡萄','http://localhost:8080/jspm9d3p8/upload/1608218339999.jpg',9,8,8,72,72,1,'已支付','广东省梅州市梅江区西郊街道金利来大街192号金地花园(梅瑶路)'),(1608218732468,'2020-12-17 15:25:32','2020121723311863592697','shuiguoku',1608218538382,1608218377247,'葡萄','http://localhost:8080/jspm9d3p8/upload/1608218339999.jpg',1,8,8,8,8,1,'已退款','广东省梅州市梅江区西郊街道金利来大街192号金地花园(梅瑶路)'),(1608218769471,'2020-12-17 15:26:08','2020121723315528079557','shuiguoku',1608218538382,1608218377247,'葡萄','http://localhost:8080/jspm9d3p8/upload/1608218339999.jpg',8,8,8,64,64,1,'已退款','广东省梅州市梅江区西郊街道金利来大街192号金地花园(梅瑶路)'),(1608218849264,'2020-12-17 15:27:28','2020121723331545166773','shuiguoku',1608218538382,1608217943392,'牛油果','http://localhost:8080/jspm9d3p8/upload/1608217921527.jpg',9,12,12,108,108,1,'已支付','广东省梅州市梅江区西郊街道金利来大街192号金地花园(梅瑶路)'),(1608218872074,'2020-12-17 15:27:51','2020121723333772857377','shuiguoku',1608218538382,1608218377247,'葡萄','http://localhost:8080/jspm9d3p8/upload/1608218339999.jpg',1,120,120,120,120,2,'已完成','广东省梅州市梅江区西郊街道金利来大街192号金地花园(梅瑶路)');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuiguoku`
--

DROP TABLE IF EXISTS `shuiguoku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuiguoku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `chandi` varchar(200) DEFAULT NULL COMMENT '产地',
  `jianjie` longtext COMMENT '简介',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `jifen` int(11) DEFAULT '-1' COMMENT '积分',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1608218377248 DEFAULT CHARSET=utf8 COMMENT='水果库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuiguoku`
--

LOCK TABLES `shuiguoku` WRITE;
/*!40000 ALTER TABLE `shuiguoku` DISABLE KEYS */;
INSERT INTO `shuiguoku` VALUES (1608217892965,'2020-12-17 15:11:32','1608218153','苹果','http://localhost:8080/jspm9d3p8/upload/1608217847780.jpg','新疆','fdsafsakfjskjkk\'j\'k\'skjks尽快范德萨了发动机是卡发觉得萨卡的反馈JFK的肌肤的<img src=\"http://localhost:8080/jspm9d3p8/upload/1608217890032.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm9d3p8/upload/1608217890032.jpg\">\r\n','2020-12-17 23:28:28',7,10,5),(1608217943392,'2020-12-17 15:12:22','1608218244','牛油果','http://localhost:8080/jspm9d3p8/upload/1608217921527.jpg','福建','fsafsdafdsfsdf<img src=\"http://localhost:8080/jspm9d3p8/upload/1608217940486.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm9d3p8/upload/1608217940486.jpg\">\r\n','2020-12-17 23:27:28',7,10,12),(1608218377247,'2020-12-17 15:19:36','1608218668','葡萄','http://localhost:8080/jspm9d3p8/upload/1608218339999.jpg','新疆','诺克萨付款的撒娇啊犯得上看见发肯定是发动机是卡发角度看国际快递就肯定撒尽快高度近视客观角度<img src=\"http://localhost:8080/jspm9d3p8/upload/1608218374132.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm9d3p8/upload/1608218374132.jpg\">\r\n','2020-12-17 23:28:09',16,120,8);
/*!40000 ALTER TABLE `shuiguoku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1608218563462 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1608218563461,'2020-12-17 15:22:42',1608218538382,1608217892965,'shuiguoku','苹果','http://localhost:8080/jspm9d3p8/upload/1608217847780.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','7gwmhvxmenzdm6uc6ubnnv3ixz20thnn','2020-12-17 15:09:31','2020-12-17 16:18:29'),(2,1608218126656,'123','yonghu','用户','xiux036p6otgsz89tmfhvdoxdn55bmul','2020-12-17 15:15:37','2020-12-17 16:15:37'),(3,1608218538382,'456','yonghu','用户','4m66g2k5vssqjtomhao0toag53hcvp1l','2020-12-17 15:22:28','2020-12-17 16:22:29');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2020-12-17 14:49:28');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `jifen` int(11) DEFAULT '0' COMMENT '积分',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1608218538383 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (1,'2020-12-17 14:49:28','用户1','123456','用户姓名1','13823888881','773890001@qq.com',10000,100),(2,'2020-12-17 14:49:28','用户2','123456','用户姓名2','13823888882','773890002@qq.com',10000,100),(3,'2020-12-17 14:49:28','用户3','123456','用户姓名3','13823888883','773890003@qq.com',10000,100),(4,'2020-12-17 14:49:28','用户4','123456','用户姓名4','13823888884','773890004@qq.com',10000,100),(5,'2020-12-17 14:49:28','用户5','123456','用户姓名5','13823888885','773890005@qq.com',10000,100),(6,'2020-12-17 14:49:28','用户6','123456','用户姓名6','13823888886','773890006@qq.com',10000,100),(1608218126656,'2020-12-17 15:15:26','123','123','胡月','13513552513','2656@qq.com',2,23111),(1608218538382,'2020-12-17 15:22:18','456','456','胡月','13513513525','22665@qq.com',60,32131000);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-17 23:33:12
