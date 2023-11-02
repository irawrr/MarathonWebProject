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
-- Table structure for table `charity`
--

DROP TABLE IF EXISTS `charity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `charity` (
  `CharityId` int NOT NULL AUTO_INCREMENT,
  `CharityName` varchar(100) NOT NULL,
  `CharityDescription` varchar(2000) DEFAULT NULL,
  `CharityLogo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CharityId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charity`
--

LOCK TABLES `charity` WRITE;
/*!40000 ALTER TABLE `charity` DISABLE KEYS */;
INSERT INTO `charity` VALUES (1,'Arise','Arise supports women and children who have experienced domestic violence, enabling them to rebuild their lives. The impact of domestic violence is far reaching, impacts the whole community and can continue for generations.\n\nFor over 20 years, Arise has provided services that include:\n- Risk assessments and finding safe accommodation\n- Providing information on domestic violence services, legal advice, financial counselling, health services and support groups\n- Legal and court support\n\nSupport Arise to make a better future for women and children.','arise-logo.png'),(2,'Aves do Brasil','You can help save birds that are considered critically endangered and at risk of extinction in the wild.\n\nThe endangered birds include the black-hooded ant wren, the cherry-throated tanager, the fringe-backed fire-eye and the south-eastern rufous-vented ground-cuckoo.\n\nYour donations can help protect Brazil\'s Cerrado region, a unique savannah area where many at risk species are found.','aves-do-brazil-logo.png'),(3,'Clara Santos Oliveira Institute','The Clara Santos Oliveira Institute is a non-governmental, non-profit organisation based in Sao Paulo.  Clara founded the institute in 1986 to provide shelter and education to young people who have been through the juvenile court. Today there are five houses in Sao Paulo and we want to expand and set up another three by 2020.','clara-santos-oliveira-institute-logo.png'),(4,'Conquer Cancer - Brazil','Conquer Cancer Brazil (CCB) is dedicated to helping discover the treatments and cures for cancer by funding world class research within Brazil. We raise funds exclusively for research into the prevention, diagnosis and treatments for ALL types of cancer, in centres right across Brazil.\n\nHelp us work to change the lives of millions of people.','conquer-cancer-brazil.png'),(5,'Diabetes Brazil','Diabetes Brazil is committed to reducing the impact of diabetes through education, early detection and support.\n\nDiabetes is the leading cause of adult blindness, of kidney failure and increases the risk of heart attacks and strokes by up to 400%.\n\nYour support helps us to continue our life-saving work.','diabetes-brazil-logo.png'),(6,'Heart Health São Paulo','For over 50 years, Heart Health São Paulo has been dedicated to saving lives by making a difference to the heart health of our people. Donations help us fund valuable research, develop guidelines for health professionals, support patient care and help Paulistas to live healthier lifestyles.','heart-health-sao-paulo-logo.png'),(7,'Human Rights Centre  - São Paulo','The Human Rights Centre protects and promotes human rights in Brazil and in Brazilian activities overseas.  This is done through legal action, advocacy and research. The HRC is an independent, not-for-profit, non-government organisation and is a registered charity.\n\nWe work with community organisations, law firms, academics and other experts in the field of domestic and international human rights.','human-rights-centre-logo.png'),(8,'Stay Pumped','Stay Pumped is a charity that helps retired professional sports people who often struggle to adjust to life after sport.  Many are underprepared, lacking education and life skills required to make the enormous adjustment.  They often have the added burden of injury.\n\nStay Pumped is staffed by professionals and volunteers.  We rely on donations to carry out this most necessary work.','stay-pumped-logo.png'),(9,'Upbeat SP','Upbeat SP is a not-for-profit organisation that offers support for those suffering from mood disorders such as depression and bipolar disorder. In addition we conduct research studies to help with the understanding of mood disorders.  Our latest project is working to use technology to solve mental health issues. We are looking at social media as an indicator of mental health, and also at using mobile phones to measure mental health.\n\nHelp us continue the great work we are doing.','upbeat-logo.png'),(10,'WWSM Rescue','The small WWSM Rescue organisation works tirelessly devoting itself to the preservation of the White Whiskered Spider Monkey. Deforestation and conversion of land for agriculture has severely impacted on this monkey\'s home.  Unfortunately they are also hunted and have been pushed to the brink of extinction.\n\nWWSM Rescue needs your help to raise the profile of the white whiskered spider monkey in local communities.','wwsm-rescue-logo.png'),(11,'The Red Cross','Relief in times of crisis, care when it\'s needed most and commitment when others turn away. Red Cross is there for people in need, no matter who you are, no matter where you live.\n\nThe Red Cross Red Crescent Movement helps tens of millions of people around the world each year and we also care for local communities in our local country and further afield.\n\nWith millions of volunteers worldwide and thousands of members, volunteers and supporters, we can reach people and places like nobody else.','the-red-cross-logo.png'),(12,'Oxfam International','Oxfam is an international confederation of 17 organizations working together with partners and local communities in more than 90 countries.\n\nOne person in three in the world lives in poverty. Oxfam is determined to change that world by mobilizing the power of people against poverty.\n\nAround the globe, Oxfam works to find practical, innovative ways for people to lift themselves out of poverty and thrive. We save lives and help rebuild livelihoods when crisis strikes. And we campaign so that the voices of the poor influence the local and global decisions that affect them.\n\nIn all we do, Oxfam works with partner organizations and alongside vulnerable women and men to end the injustices that cause poverty.','oxfam-international-logo.png'),(13,'Save the Children Fund','Save the Children is the world\'s leading independent organisation for children. We work in around 120 countries. We save children\'s lives; we fight for their rights; we help them fulfil their potential.\n\nWe work to inspire breakthroughs in the way the world treats children and to achieve immediate and lasting change in their lives. Across all of our work, we pursue several core values: accountability, ambition, collaboration, creativity and integrity.\n\nIn 2014, we reached over 55 million children directly through our and our partners\' work.\n\nDonate now to help us how the children of the world.','save-the-children-fund-logo.png'),(14,'Querstadtein Berlin','querstadtein is the first project of Stadtsichten e.V., a registered non-profit association.\n\nAlthough it is visible everywhere in the city, homelessness is rarely discussed. On a theoretical level we often know very little about a topic that confronts us in the streets every day. Through querstadtein we would like to raise awareness of this issue.\n\nIt all started with the desire of our two founders to get something ‘real’ off the ground in Berlin, to actively tackle an issue instead of just thinking about it. Homeless people seemed to be everywhere, throughout the city and on the daily commute to the office. Some of them were there day in, day out, in the U-Bahn or on the street. The divide between the homeless people and the rest of society was striking. This is where we wanted to be active – to create a space which would facilitate encounters, exchange and awareness.\n\nWe would like your help to help the homeless in Berlin.','querstadtein-logo.png');
/*!40000 ALTER TABLE `charity` ENABLE KEYS */;
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
