/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.6.39 : Database - oa
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`oa` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `oa`;

/*Table structure for table `books` */

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `writer` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

/*Data for the table `books` */

insert  into `books`(`id`,`name`,`writer`,`price`,`company`,`picture`) values (5,'水浒','施耐庵','564','4564','3.jpg'),(7,'水浒','施耐庵','255','华夏','4.jpg'),(9,'水浒','施耐庵','255','华夏','6.jpg'),(10,'水浒','施耐庵','255','华夏','7.jpg'),(11,'水浒','施耐庵','255','华夏','8.jpg'),(12,'水浒','施耐庵','255','华夏','9.jpg'),(13,'水浒','施耐庵','255','华夏','10.jpg'),(14,'水浒','施耐庵','255','华夏','11.jpg'),(15,'十万个为什么','是谁','999','666','12.jpg'),(16,'4564','a\'s\'d','asdsa\'d','sada\'d','13.jpg'),(17,'4564','a\'s\'d','asdsa\'d','sada\'d','14.jpg'),(18,'1','2','3','4','15.jpg'),(19,'a','a','a','a','2.jpg'),(21,'b','b','b','b','2.jpg'),(22,'b','b','b','b','2.jpg'),(23,'asd','wqe','qwe','wqe','2.jpg'),(24,'qqq','qqqq','qqqw','weq','2.jpg'),(25,'1','2','3','4','2.jpg'),(26,'a','a','a','a','a');

/*Table structure for table `students` */

DROP TABLE IF EXISTS `students`;

CREATE TABLE `students` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

/*Data for the table `students` */

insert  into `students`(`Id`,`name`,`password`,`phone`,`email`) values (12,'ww','5646546','123123','123@qq.com'),(13,'wwasd','5646546','123123','123@qq.com'),(14,'ww','5646546','123123','123@qq.com'),(15,'ww','5646546','123123','123@qq.com'),(17,'ww','5646546','123123','123@qq.com'),(18,'ww','5646546','123123','123@qq.com'),(19,'ww','5646546','123123','123@qq.com'),(20,'ww','5646546','123123','123@qq.com'),(21,'ww','5646546','123123','123@qq.com'),(22,'ww','5646546','123123','123@qq.com'),(23,'ww','5646546','123123','123@qq.com'),(24,'ww','5646546','123123','123@qq.com'),(25,'ww','5646546','123123','123@qq.com'),(26,'ww','5646546','123','123@qq.com'),(28,'ww','5646546','123123','123@qq.com'),(29,'ww','5646546','123123','123@qq.com'),(30,'ww','5646546','123123','123@qq.com'),(31,'ww','5646546','123123','123@qq.com'),(32,'ww','5646546','123123','123@qq.com'),(33,'ww','5646546','123123','123@qq.com'),(34,'ww','5646546','123123','123@qq.com'),(35,'ww','5646546','123123','123@qq.com'),(36,'ww','5646546','123123','123@qq.com'),(37,'ww','5646546','123123','123@qq.com'),(38,'ww','5646546','123123','123@qq.com'),(39,'ww','5646546','123123','123@qq.com'),(40,'ww','5646546','123123','123@qq.com'),(41,'ww','5646546','123123','123@qq.com'),(43,'ww','5646546','123123','123@qq.com'),(44,'123','4297f44b13955235245b2497399d7a93','166666','2503963481@qq.com'),(45,'123123','6666','16655072520','5161651@qq.com'),(46,'赵子龙','66101','1665504545','2503963888@qq.comqq.com'),(47,'54','456','456','123456@qq.com'),(48,'djdjdj','547a1571076f3c672636d1b0aa67b821','110110','65464963481@qq.com'),(49,'wwwww','df483402b9bfeb234717a32c6e86280e','wwwww','qw963481@qq.com'),(50,'5464561','568200ddaabb1066c872c169b2ae762a','155131','561000@qq.com'),(51,'aaasdasd','ec02c59dee6faaca3189bace969c22d3','aaaaaaaa','asd3481@qq.com'),(52,'asd','asd','asd','25039634asdsa@qq.com'),(53,'abc','123123','110','2503966@qq.com'),(54,'111111','96e79218965eb72c92a549dd5a330112','111111','111111@qq.com'),(55,'8848','d41d8cd98f00b204e9800998ecf8427e','','sdfsd@qq.com'),(56,'lhli','f4371d1acfc337a75cfae953f2d418a0','19866621340','64555989@qq.com'),(57,'lihaoli','f4371d1acfc337a75cfae953f2d418a0','19866621340','64555989@qq.com'),(58,'lihaoli','f4371d1acfc337a75cfae953f2d418a0','19866621340','64555989@qq.com'),(59,'jkjk','77fab95de2c362ba0ad0b1b27a9f058a','15955782314','25039634441@qq.com');

/*Table structure for table `tables` */

DROP TABLE IF EXISTS `tables`;

CREATE TABLE `tables` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `bbs` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `tables` */

insert  into `tables`(`id`,`name`,`phone`,`address`,`bbs`) values (6,'赵子龙123','16655072520','安徽电子信息职业技术学院','书很好我很喜欢'),(7,'asd','asdas','asda','asd'),(12,'111111','111111','中国大陆','12312312'),(13,'111111','111111','中国大陆','asdasd'),(14,'111111','45456','中国大陆','12312312asd'),(15,'111111','111111','中国大陆','65445'),(16,'admin','45456','中国大陆','54654'),(17,'赵先生','15955782314','安徽电子信息职业技术学院曹山路1000号','你们的书根号我很喜欢'),(18,'liao先生','13965223195','蚌山区百事快递分拨中心','加油，你们的产品我很喜欢'),(19,'任飞宇','45456456','安徽电子信息职业技术学院曹山路1000号','very good'),(20,'任飞宇','45456456','安徽电子信息职业技术学院曹山路1000号','very good');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`Id`,`username`,`password`,`sex`,`phone`,`email`,`picture`) values (1,'admin','96e79218965eb72c92a549dd5a330112','男','13233939383','123@qq.com','data/11.jpg'),(2,'abc','1bbd886460827015e5d605ed44252251','女','17855707521','2503963481@qq.com','data/1574312495795_t01eb6c810246f5b7b3.png'),(3,'abcc','4297f44b13955235245b2497399d7a93',NULL,NULL,NULL,NULL),(4,'zhm','d5f97dd78bb57d96eb0fa76fb4a64d85','女','19866621340','64555989@qq.com','data/1577686868752_t01eb6c810246f5b7b3.png');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
