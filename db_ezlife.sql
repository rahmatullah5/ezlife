/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.6.21 : Database - db_ezlife_ver0
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_ezlife_ver0` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_ezlife_ver0`;

/*Table structure for table `resep` */

DROP TABLE IF EXISTS `resep`;

CREATE TABLE `resep` (
  `id_resep` int(11) NOT NULL AUTO_INCREMENT,
  `id_username` int(11) DEFAULT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `id_level` int(11) DEFAULT NULL,
  `cover` text,
  `id_kategori` int(11) DEFAULT NULL,
  `bahan` text,
  `alat` text,
  `like` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_resep`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `resep` */

/*Table structure for table `resep_item` */

DROP TABLE IF EXISTS `resep_item`;

CREATE TABLE `resep_item` (
  `id_item` int(11) NOT NULL AUTO_INCREMENT,
  `id_resep` int(11) DEFAULT NULL,
  `step` int(11) DEFAULT NULL,
  `deskripsi` text,
  `image` text,
  PRIMARY KEY (`id_item`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `resep_item` */

/*Table structure for table `resep_item_step` */

DROP TABLE IF EXISTS `resep_item_step`;

CREATE TABLE `resep_item_step` (
  `id_step` int(11) NOT NULL AUTO_INCREMENT,
  `step` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_step`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `resep_item_step` */

/*Table structure for table `resep_kategori` */

DROP TABLE IF EXISTS `resep_kategori`;

CREATE TABLE `resep_kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `resep_kategori` */

/*Table structure for table `test` */

DROP TABLE IF EXISTS `test`;

CREATE TABLE `test` (
  `a` text,
  `b` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `test` */

insert  into `test`(`a`,`b`) values ('rahmat','rahmat');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id_user` int(9) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` text NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `jumlah_resep` int(11) DEFAULT '0',
  `foto` text,
  `id_level` int(11) DEFAULT '1',
  `point` int(11) DEFAULT '0',
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

/*Table structure for table `user_level` */

DROP TABLE IF EXISTS `user_level`;

CREATE TABLE `user_level` (
  `id_level` int(11) NOT NULL AUTO_INCREMENT,
  `level` varbinary(50) DEFAULT NULL,
  PRIMARY KEY (`id_level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_level` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
