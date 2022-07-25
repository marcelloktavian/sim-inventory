/*
SQLyog Professional v12.5.1 (64 bit)
MySQL - 5.7.33 : Database - inventori
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`inventori` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `inventori`;

/*Table structure for table `barang_keluar` */

DROP TABLE IF EXISTS `barang_keluar`;

CREATE TABLE `barang_keluar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_transaksi` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_barang` varchar(20) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tujuan` text NOT NULL,
  `satuan` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `barang_keluar` */

insert  into `barang_keluar`(`id`,`id_transaksi`,`tanggal`,`kode_barang`,`nama_barang`,`jumlah`,`tujuan`,`satuan`) values 
(3,'TRK-1219001','2019-12-11','BAR-1219001','buku',200,'Tegal','Pack'),
(4,'TRK-1219002','2019-12-11','BAR-1219002','Pensil',19,'bandung','Pack'),
(5,'TRK-1219003','2019-12-11','BAR-1219003','Nutrisari',2,'Ciamis','PCS');

/*Table structure for table `barang_masuk` */

DROP TABLE IF EXISTS `barang_masuk`;

CREATE TABLE `barang_masuk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_transaksi` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_barang` varchar(20) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `pengirim` varchar(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `barang_masuk` */

insert  into `barang_masuk`(`id`,`id_transaksi`,`tanggal`,`kode_barang`,`nama_barang`,`pengirim`,`jumlah`,`satuan`) values 
(20,'TRM-1219001','2019-12-10','BAR-1219001','buku','PT Gading Murni',10,'Pack'),
(21,'TRM-1219002','2019-12-11','BAR-1219003','Nutrisari','PT Sahabat Utama',50,'PCS');

/*Table structure for table `gudang` */

DROP TABLE IF EXISTS `gudang`;

CREATE TABLE `gudang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_barang` varchar(20) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `jenis_barang` varchar(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `gudang` */

insert  into `gudang`(`id`,`kode_barang`,`nama_barang`,`jenis_barang`,`jumlah`,`satuan`) values 
(14,'BAR-1219001','buku','Alat Tulis',33,'Pack'),
(15,'BAR-1219002','Pensil','Alat Tulis',60,'Pack'),
(16,'BAR-1219003','Nutrisari','Minuman',57,'PCS');

/*Table structure for table `jenis_barang` */

DROP TABLE IF EXISTS `jenis_barang`;

CREATE TABLE `jenis_barang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_barang` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `jenis_barang` */

insert  into `jenis_barang`(`id`,`jenis_barang`) values 
(5,'Makanan'),
(6,'Minuman'),
(7,'Alat Tulis');

/*Table structure for table `satuan` */

DROP TABLE IF EXISTS `satuan`;

CREATE TABLE `satuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `satuan` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `satuan` */

insert  into `satuan`(`id`,`satuan`) values 
(5,'Unit'),
(7,'PCS'),
(8,'Pack'),
(9,'Kg');

/*Table structure for table `tb_supplier` */

DROP TABLE IF EXISTS `tb_supplier`;

CREATE TABLE `tb_supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_supplier` varchar(20) NOT NULL,
  `nama_supplier` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `tb_supplier` */

insert  into `tb_supplier`(`id`,`kode_supplier`,`nama_supplier`,`alamat`,`telepon`) values 
(10,'SUP-1219001','PT Sahabat Utama','Jakarta Barat','085546982020'),
(11,'SUP-1219002','PT Surya Makmur','Tangerang','081986700103'),
(12,'SUP-1219003','PT Gading Murni','Bandung','082146982011'),
(17,'SUP-0722004','dad','dasdas\r\n								','dasdsa'),
(18,'SUP-0722005','das','sadasdadsdsasdada','23131'),
(19,'SUP-0722005','das','sadasdadsdsasdada','23131');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nik` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` text NOT NULL,
  `foto` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`nik`,`nama`,`alamat`,`telepon`,`username`,`password`,`foto`) values 
(18,'1900120001','Wilmar','','0811228890','admin1','21232f297a57a5a743894a0e4a801fc3','terima-kasih.jpg'),
(24,'1900120012','dimas','','085546982020','admin2','21232f297a57a5a743894a0e4a801fc3','sad.jpg'),
(25,'1900126005','aryamurti','','085546982011','admin3','21232f297a57a5a743894a0e4a801fc3','terima-kasih.jpg');

/* Trigger structure for table `barang_keluar` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `barang_keluar` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `barang_keluar` AFTER INSERT ON `barang_keluar` FOR EACH ROW BEGIN
	UPDATE gudang SET jumlah = jumlah-new.jumlah
    WHERE kode_barang=new.kode_barang;
    END */$$


DELIMITER ;

/* Trigger structure for table `barang_masuk` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `barang_masuk` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `barang_masuk` AFTER INSERT ON `barang_masuk` FOR EACH ROW BEGIN
	UPDATE gudang SET jumlah = jumlah+new.jumlah
    WHERE kode_barang=new.kode_barang;
    END */$$


DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
