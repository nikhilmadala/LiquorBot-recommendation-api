-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: RETAIL
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Current Database: `RETAIL`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `rasa_recommendation_API_DB` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `rasa_recommendation_API_DB`;

--
-- Table structure for table `LIQUOR`
--

DROP TABLE IF EXISTS `LIQUOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LIQUOR` (
  `ID` int(11) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Brand` varchar(20) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Alcohol_Content` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `MFD` date NOT NULL,
  `Location` varchar(20) NOT NULL,
  `History` varchar(100) NOT NULL,
  `Image` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LIQUOR`
--

LOCK TABLES `LIQUOR` WRITE;
/*!40000 ALTER TABLE `LIQUOR` DISABLE KEYS */;
INSERT INTO `LIQUOR` VALUES (101,'Whisky','Johnny Walker','Blue Label Blended Scotch',50,17370,'2000-01-23','Shelf 53','This is brewed in Germany and is 20 years old','https://static.tiendo.do/uploads/media/product_variation/recipeImg/45/268471/268471_normal1-normal.png'),(102,'Rum','Old Monk','Gold Reserve',55,700,'2018-01-15','Shelf 52','This is one of the best local rum','http://www.madhuloka.com/images/data/OLD%20MONK%20GLD%20RES%20750ML_WineBox.JPG'),(103,'Whisky','Johnnie Walker','X.R Blended Scotch',60,14510,'1999-09-15','Shelf 49','This is brewed in Germany and is 21 years old','http://www.asherbws.com/wp-content/uploads/2017/01/JW-XR-21.jpg'),(104,'Gin','Tanquery','No. 10 Batch Distilled Gin',35,7200,'2017-09-15','Shelf 39','This is one of the best Gin','http://www.madhuloka.com/images/data/TANQUERY%20NO.TEN%20GIN%201000ML.jpg'),(105,'Beer','Corona','Extra Beer',35,300,'2017-10-23','Shelf 42','One of the best imported beer','http://www.madhuloka.com/images/data/CORONA%20355ML12.JPG'),(106,'Brandy','Courvoisier','Cognac V.S. 700ML',56,8300,'2000-01-26','Shelf 55','Probably The best brandy in the world','http://www.madhuloka.com/images/data/COURVOISER%20VS%20COGNAC%20700ML_WineBox.JPG');
/*!40000 ALTER TABLE `LIQUOR` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-05 13:55:54
