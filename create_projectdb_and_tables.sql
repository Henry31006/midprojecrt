CREATE DATABASE `projectdb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE projectdb;

CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(45) NOT NULL,
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;


CREATE TABLE `product` (
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `modelnumber` varchar(45) DEFAULT NULL,
  `modelname` varchar(45) DEFAULT NULL,
  `productimage` varchar(45) DEFAULT NULL,
  `unitcost` int(11) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`productid`),
  KEY `productcategoryid_idx` (`categoryid`),
  CONSTRAINT `productcategoryid` FOREIGN KEY (`categoryid`) REFERENCES `category` (`categoryid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
