/*
SQLyog Enterprise - MySQL GUI v7.15 
MySQL - 5.6.11 : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`test` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `test`;

/*Table structure for table `cliente` */

DROP TABLE IF EXISTS `cliente`;

CREATE TABLE `cliente` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) DEFAULT NULL,
  `apellido` varchar(40) DEFAULT NULL,
  `dni` varchar(8) DEFAULT NULL,
  `calle` varchar(40) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `localidad` varchar(40) DEFAULT NULL,
  `provincia` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `cliente` */

insert  into `cliente`(`id`,`nombre`,`apellido`,`dni`,`calle`,`numero`,`localidad`,`provincia`) values (7,'laureano','aosdfm','123','aosdkfm',123,'aoskdfm','mendoza'),(8,'johana','aosdkfm','123456','oaskdmf',123,'capital','mendoza'),(9,'guadita','aosdkfm','1234567','oskdfmg',1234,'ciudad','mendoza'),(10,'lauri','aosdif','123','oasdmf',123,'aoskdfm','asdofkm');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
