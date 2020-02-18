-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Table structure for table `book_master`
--

DROP TABLE IF EXISTS `book_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_master` (
  `bookId` int(11) NOT NULL,
  `bookTitle` varchar(100) DEFAULT NULL,
  `author` varchar(200) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `publicationId` varchar(100) DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `publicationYear` int(11) DEFAULT NULL,
  PRIMARY KEY (`bookId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_master`
--

LOCK TABLES `book_master` WRITE;
/*!40000 ALTER TABLE `book_master` DISABLE KEYS */;
INSERT INTO `book_master` VALUES (1,'Learning PHP, MySQL and Javascript','Robin Nixon',3,'O Reilly Media','Computers',2018),(2,'C Programming Language','Brian W. Kernighan , Dennis M. Ritchie',3,'Prentice Hall','Computers',1988),(3,'The Hound of Baskervilles','Sir Arthor Conan Doyle',1,'Independent','Mystery',1990),(4,'The Story of my Life','Helen Keller',5,'Penguin','Autobiography',1996),(5,'Magic of Thinking Big','David J Schwartz',0,'Fireside','Non Fiction',1987),(6,'Networking All in one for Dummies','Doug Lowe',3,'For Dummies','Computers',2018),(7,'Wings of Fire ','APJ Abdul Kalam, Arun Tiwari',4,'Sangam Books','Biography',1999),(100,'Test','TEst',100,'Test','test',2015);
/*!40000 ALTER TABLE `book_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `genreId` int(11) NOT NULL AUTO_INCREMENT,
  `genreName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`genreId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `memberId` int(11) NOT NULL AUTO_INCREMENT,
  `memberName` varchar(200) DEFAULT NULL,
  `addr` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `contact` int(11) DEFAULT NULL,
  PRIMARY KEY (`memberId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'Rujul','Pal','rujul@gmail.com',9998989),(2,'Vishwas','Piplod','vishwas@gmail.com',89798788),(3,'Shrutik','Bhatar','shrutik@gmail.com',8797987),(4,'Shubham','Vesu','shubham@gmail.com',80809809),(5,'Kevin','Varachha','kevin@gmail.com',9792798),(6,'Fenish','Sayan','fenish@gmail.com',78979798);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `transId` int(11) NOT NULL AUTO_INCREMENT,
  `bookId` int(11) DEFAULT NULL,
  `memberId` int(11) DEFAULT NULL,
  `issueDate` date DEFAULT NULL,
  `returnDate` date DEFAULT NULL,
  `finePaid` decimal(5,2) DEFAULT NULL,
  `transClosed` int(11) DEFAULT NULL,
  PRIMARY KEY (`transId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,3,1,'2020-02-02',NULL,NULL,0),(2,7,2,'2020-02-15',NULL,NULL,0),(3,6,4,'2020-02-03','2020-02-18',8.00,1),(4,4,4,'2020-02-06','2020-02-18',5.00,1),(5,1,4,'2020-01-15','2020-02-18',27.00,1),(6,5,3,'2020-02-06',NULL,NULL,0),(7,2,3,'2020-02-10',NULL,NULL,0),(8,2,6,'2020-02-15',NULL,NULL,0);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-18 22:23:16
