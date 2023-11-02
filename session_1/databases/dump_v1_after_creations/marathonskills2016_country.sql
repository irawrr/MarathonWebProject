-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: marathonskills2016
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `CountryCode` char(3) NOT NULL,
  `CountryName` varchar(100) NOT NULL,
  `CountryFlag` varchar(100) NOT NULL,
  PRIMARY KEY (`CountryCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES ('AND','Andorra','flag_andorra.png'),('ARG','Argentina','flag_argentina.png'),('AUS','Australia','flag_australia.png'),('AUT','Austria','flag_austria.png'),('BEL','Belgium','flag_belgium.png'),('BOT','Botswana','flag_botswana.png'),('BRA','Brazil','flag_brazil.png'),('BUL','Bulgaria','flag_bulgaria.png'),('CAF','Central African Republic','flag_central_african_republic.png'),('CAN','Canada','flag_canada.png'),('CHI','Chile','flag_chile.png'),('CHN','China','flag_china.png'),('CIV','Ivory Coast','flag_ivory_coast.png'),('CMR','Cameroon','flag_cameroon.png'),('COL','Colombia','flag_colombia.png'),('CRO','Croatia','flag_croatia.png'),('CZE','Czech Republic','flag_czech_republic.png'),('DEN','Denmark','flag_denmark.png'),('DOM','Dominican Republic','flag_dominican_republic.png'),('ECU','Ecuador','flag_ecuador.png'),('EGY','Egypt','flag_egypt.png'),('ESA','El Salvador','flag_el_salvador.png'),('ESP','Spain','flag_spain.png'),('EST','Estonia','flag_estonia.png'),('FIN','Finland','flag_finland.png'),('FRA','France','flag_france.png'),('GBR','United Kingdom','flag_united_kingdom.png'),('GBS','Guinea-Bissau','flag_guinea.png'),('GEQ','Equatorial Guinea','flag_equatorial_guinea.png'),('GER','Germany','flag_germany.png'),('GRE','Greece','flag_greece.png'),('GUA','Guatemala','flag_guatemala.png'),('GUI','Guinea','flag_guinea-bissau.png'),('HKG','Hong Kong','flag_hong_kong.png'),('HON','Honduras','flag_honduras.png'),('HUN','Hungary','flag_hungary.png'),('INA','Indonesia','flag_indonesia.png'),('IND','India','flag_india.png'),('IRL','Ireland','flag_ireland.png'),('ISR','Israel','flag_israel.png'),('ITA','Italy','flag_italy.png'),('JAM','Jamaica','flag_jamaica.png'),('JOR','Jordan','flag_jordan.png'),('JPN','Japan','flag_japan.png'),('KEN','Kenya','flag_kenya.png'),('KOR','South Korea','flag_south_korea.png'),('KSA','Saudi Arabia','flag_saudi_arabia.png'),('LAT','Latvia','flag_latvia.png'),('LIE','Liechtenstein','flag_liechtenstein.png'),('LTU','Lithuania','flag_lithuania.png'),('LUX','Luxembourg','flag_luxembourg.png'),('MAC','Macau','flag_macau.png'),('MAD','Madagascar','flag_madagascar.png'),('MAS','Malaysia','flag_malaysia.png'),('MDA','Moldova','flag_moldova.png'),('MEX','Mexico','flag_mexico.png'),('MKD','Macedonia','flag_macedonia.png'),('MLI','Mali','flag_mali.png'),('MLT','Malta','flag_malta.png'),('MNE','Montenegro','flag_montenegro.png'),('MON','Monaco','flag_monaco.png'),('MRI','Mauritius','flag_mauritius.png'),('NCA','Nicaragua','flag_nicaragua.png'),('NED','Netherlands','flag_netherlands.png'),('NIG','Niger','flag_niger.png'),('NOR','Norway','flag_norway.png'),('NZL','New Zealand','flag_new_zealand.png'),('PAN','Panama','flag_panama.png'),('PAR','Paraguay','flag_paraguay.png'),('PER','Peru','flag_peru.png'),('PHI','Philippines','flag_philippines.png'),('POL','Poland','flag_poland.png'),('POR','Portugal','flag_portugal.png'),('PUR','Puerto Rico','flag_puerto_rico.png'),('QAT','Qatar','flag_qatar.png'),('ROU','Romania','flag_romania.png'),('RSA','South Africa','flag_south_africa.png'),('RUS','Russia','flag_russia.png'),('SEN','Senegal','flag_senegal.png'),('SIN','Singapore','flag_singapore.png'),('SUI','Switzerland','flag_switzerland.png'),('SVK','Slovakia','flag_slovakia.png'),('SWE','Sweden','flag_sweden.png'),('THA','Thailand','flag_thailand.png'),('TPE','Chinese Taipei','flag_chinese_taipei.png'),('TUR','Turkey','flag_turkey.png'),('UAE','United Arab Emirates','flag_united_arab_emirates.png'),('URU','Uruguay','flag_uruguay.png'),('USA','United States','flag_usa.png'),('VAT','Vatican','flag_vatican.png'),('VEN','Venezuela','flag_venezuela.png'),('VIE','Vietnam','flag_vietnam.png');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-02 12:17:45
