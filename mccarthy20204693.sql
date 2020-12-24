-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: newschema
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `candidatedetails`
--

DROP TABLE IF EXISTS `candidatedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidatedetails` (
  `CandidateID` int NOT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `Surname` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `TelephoneNumber` int DEFAULT NULL,
  PRIMARY KEY (`CandidateID`),
  UNIQUE KEY `CandidateID_UNIQUE` (`CandidateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidatedetails`
--

LOCK TABLES `candidatedetails` WRITE;
/*!40000 ALTER TABLE `candidatedetails` DISABLE KEYS */;
INSERT INTO `candidatedetails` VALUES (1,'Jack','Smith','1, Western Road',445721),(2,'Mary','Jones','42, Wallaby Way',574257),(3,'Jane','Johnson','12, Main Street',547943),(4,'John','Murphy','19, Second Avenue',112789),(5,'Jill','Butler','3, Orchard Lane',456784),(6,'Frank','Desmond','14, Windy Way',853267),(7,'Tom','Jackson','8, Oak View',458803),(8,'Emma','Edwards','22, French Street',128753),(9,'Paul','Wilson','3, Castle Street',538563),(10,'Ron','McDonald','88, Red Boulevard',239750),(11,'Ashley','Kelly','15, Green Way',103704),(12,'Jessica','Sully','71, Second Street',447230),(13,'Jeffrey','Tower','19, Seaside Road',653677),(14,'Phillip','Jones','28, Centre Park Road',342545),(15,'Jane','McNally','5, Wildwood Street',754327),(16,'Rebecca','Quinn','31, Dye Street',97413),(17,'Henry','Hall','49, Layman Avenue',235662),(18,'Sharon','Walters','6, David Avenue',184157),(19,'Jackie','Doherty','87, Birch street',864103),(20,'Gemma','Newman','24, Cameron Road',397532);
/*!40000 ALTER TABLE `candidatedetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidateskills`
--

DROP TABLE IF EXISTS `candidateskills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidateskills` (
  `SkillID` int NOT NULL,
  `CandidateID` int NOT NULL,
  PRIMARY KEY (`SkillID`,`CandidateID`),
  KEY `CandidateSkills(CandidateID)_idx` (`CandidateID`),
  CONSTRAINT `CandidateSkills(CandidateID)` FOREIGN KEY (`CandidateID`) REFERENCES `candidatedetails` (`CandidateID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `CandidateSkills(SkillID)` FOREIGN KEY (`SkillID`) REFERENCES `skilldetails` (`SkillID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidateskills`
--

LOCK TABLES `candidateskills` WRITE;
/*!40000 ALTER TABLE `candidateskills` DISABLE KEYS */;
INSERT INTO `candidateskills` VALUES (1,1),(2,1),(2,2),(3,2),(4,3),(5,3),(6,4),(7,5),(8,6),(9,6),(2,7),(10,7),(1,8),(4,8),(3,9),(9,9),(1,10),(12,10),(9,11),(5,12),(6,12),(1,13),(9,13),(1,14),(3,14),(2,15),(3,15),(2,16),(9,16),(4,17),(5,17),(2,18),(1,19),(9,19),(4,20);
/*!40000 ALTER TABLE `candidateskills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospitaldetails`
--

DROP TABLE IF EXISTS `hospitaldetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospitaldetails` (
  `HospitalID` varchar(45) NOT NULL,
  `HospitalName` varchar(45) DEFAULT NULL,
  `HospitalAddress` varchar(45) DEFAULT NULL,
  `HospitalTelephoneNumber` int DEFAULT NULL,
  PRIMARY KEY (`HospitalID`),
  UNIQUE KEY `Hospital ID_UNIQUE` (`HospitalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospitaldetails`
--

LOCK TABLES `hospitaldetails` WRITE;
/*!40000 ALTER TABLE `hospitaldetails` DISABLE KEYS */;
INSERT INTO `hospitaldetails` VALUES ('BOS','Boston Hospital','Boston, Massachusetts',4692),('DET','Detroit Hospital','Detroit, Michigan',9982),('DEV','Denver Hospital','Denver, Colorado',4385),('LOA','Los Angeles Hospital','Los Angeles, California',5485),('MIA','Miami Hospital','Miami, Florida',3843),('NYC','New York City Hospital','New York, New York',1382),('ORL','Orlando Hospital','Orlando, Florida',5443),('PIT','Pittsburgh Hospital','Pittsburgh, Pennsylvania',5432),('SEL','Seattle Hospital','Seattle, Washington',1556),('SFR','San Francisco Hospital','San Francisco, California',6779),('SJO','San Jose Hospital','San Jose, California',4774);
/*!40000 ALTER TABLE `hospitaldetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interviewdetails`
--

DROP TABLE IF EXISTS `interviewdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interviewdetails` (
  `InterviewPosition` varchar(45) NOT NULL,
  `InterviewCandidate` int NOT NULL,
  `InterviewDate` date NOT NULL,
  `JobOffered` tinyint NOT NULL DEFAULT '0',
  `JobAccepted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`InterviewPosition`,`InterviewCandidate`),
  KEY `InterviewDetails(CandidateID)_idx` (`InterviewCandidate`),
  CONSTRAINT `InterviewDetails(CandidateID)` FOREIGN KEY (`InterviewCandidate`) REFERENCES `candidatedetails` (`CandidateID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `InterviewDetails(PositionID)` FOREIGN KEY (`InterviewPosition`) REFERENCES `positiondetails` (`PositionID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interviewdetails`
--

LOCK TABLES `interviewdetails` WRITE;
/*!40000 ALTER TABLE `interviewdetails` DISABLE KEYS */;
INSERT INTO `interviewdetails` VALUES ('BOS001',1,'2020-10-10',1,1),('BOS001',8,'2020-10-11',0,0),('BOS001',10,'2020-10-11',0,0),('DET001',1,'2020-10-21',0,0),('DET001',6,'2020-10-21',0,0),('DET001',8,'2020-10-22',0,0),('DET001',9,'2020-10-22',0,0),('DET001',10,'2020-10-23',0,0),('DET001',13,'2020-10-24',1,1),('DET001',19,'2020-10-25',1,1),('DET002',5,'2020-10-25',0,0),('DEV001',1,'2020-10-01',0,0),('DEV001',2,'2020-10-01',0,0),('DEV001',7,'2020-10-02',0,0),('DEV002',3,'2020-10-05',1,1),('DEV002',8,'2020-10-06',0,0),('DEV002',12,'2020-10-06',0,0),('LOA001',6,'2020-10-18',0,0),('LOA001',11,'2020-10-18',1,1),('MIA001',10,'2020-11-01',0,0),('MIA002',3,'2020-11-02',0,0),('MIA002',8,'2020-11-02',1,1),('MIA002',17,'2020-11-03',1,1),('MIA002',20,'2020-11-03',0,0),('NYC001',1,'2020-10-21',0,0),('NYC001',2,'2020-10-21',0,0),('NYC001',13,'2020-10-22',0,0),('NYC001',14,'2020-10-22',1,1),('NYC001',19,'2020-10-23',0,0),('NYC002',1,'2020-10-22',0,0),('NYC002',2,'2020-10-22',0,0),('NYC002',7,'2020-10-22',0,0),('NYC002',9,'2020-10-23',0,0),('NYC002',15,'2020-10-25',0,0),('NYC002',16,'2020-10-25',1,1),('ORL001',4,'2020-11-04',0,0),('ORL001',12,'2020-11-05',0,0),('ORL002',7,'2020-11-05',1,1),('PIT001',3,'2020-10-01',0,0),('PIT001',12,'2020-10-01',1,1),('SEL001',1,'2020-10-04',0,0),('SEL001',2,'2020-10-04',0,0),('SEL001',7,'2020-10-05',0,0),('SEL001',18,'2020-10-05',1,1),('SEL002',2,'2020-10-06',0,0),('SEL002',9,'2020-10-06',1,1),('SFR001',1,'2020-11-06',1,1),('SFR001',2,'2020-11-06',1,0),('SFR001',7,'2020-11-07',0,0),('SFR001',9,'2020-11-07',0,0),('SJO001',6,'2020-10-13',1,1);
/*!40000 ALTER TABLE `interviewdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positiondetails`
--

DROP TABLE IF EXISTS `positiondetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positiondetails` (
  `PositionID` varchar(45) NOT NULL,
  `PositionType` varchar(45) DEFAULT NULL,
  `HospitalAdvertising` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PositionID`),
  UNIQUE KEY `PositionID_UNIQUE` (`PositionID`),
  KEY `PositionDetails(HospitalID)_idx` (`HospitalAdvertising`),
  CONSTRAINT `PositionDetails(HospitalID)` FOREIGN KEY (`HospitalAdvertising`) REFERENCES `hospitaldetails` (`HospitalID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positiondetails`
--

LOCK TABLES `positiondetails` WRITE;
/*!40000 ALTER TABLE `positiondetails` DISABLE KEYS */;
INSERT INTO `positiondetails` VALUES ('BOS001','Nurse','BOS'),('DET001','Nurse','DET'),('DET002','Doctor','DET'),('DEV001','Administrator','DEV'),('DEV002','Janitor','DEV'),('LOA001','Surgeon','LOA'),('MIA001','Doctor','MIA'),('MIA002','Janitor','MIA'),('NYC001','Nurse','NYC'),('NYC002','Administrator','NYC'),('ORL001','Security','ORL'),('ORL002','Doctor','ORL'),('PIT001','Security','PIT'),('SEL001','Administrator','SEL'),('SEL002','Manager','SEL'),('SFR001','Manager','SFR'),('SJO001','Surgeon','SJO');
/*!40000 ALTER TABLE `positiondetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positionskills`
--

DROP TABLE IF EXISTS `positionskills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positionskills` (
  `PositionID` varchar(45) NOT NULL,
  `SkillID` int NOT NULL,
  KEY `PositionID_idx` (`PositionID`),
  KEY `SkillID_idx` (`SkillID`),
  CONSTRAINT `PositionSkills(PositionID)` FOREIGN KEY (`PositionID`) REFERENCES `positiondetails` (`PositionID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `PositionSkills(SkillID)` FOREIGN KEY (`SkillID`) REFERENCES `skilldetails` (`SkillID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positionskills`
--

LOCK TABLES `positionskills` WRITE;
/*!40000 ALTER TABLE `positionskills` DISABLE KEYS */;
INSERT INTO `positionskills` VALUES ('DET001',1),('DET001',9),('DET002',7),('DEV001',2),('DEV002',4),('DEV002',5),('LOA001',9),('MIA001',12),('MIA002',4),('NYC001',1),('NYC001',3),('NYC002',2),('ORL001',6),('ORL002',10),('PIT001',5),('PIT001',6),('SEL001',2),('SEL002',3),('SFR001',2),('SFR001',3),('SJO001',8),('DET001',2),('BOS001',2),('BOS001',4),('SJO001',12);
/*!40000 ALTER TABLE `positionskills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skilldetails`
--

DROP TABLE IF EXISTS `skilldetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skilldetails` (
  `SkillID` int NOT NULL,
  `SkillName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`SkillID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skilldetails`
--

LOCK TABLES `skilldetails` WRITE;
/*!40000 ALTER TABLE `skilldetails` DISABLE KEYS */;
INSERT INTO `skilldetails` VALUES (1,'Nursing'),(2,'Administrative'),(3,'Management'),(4,'Cleaning'),(5,'Maintenance'),(6,'Security'),(7,'Orthopedic'),(8,'Neurology'),(9,'Emergency'),(10,'Radiology'),(12,'Psychiatry');
/*!40000 ALTER TABLE `skilldetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'newschema'
--

--
-- Dumping routines for database 'newschema'
--
/*!50003 DROP PROCEDURE IF EXISTS `(01)HospitalIDFind` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `(01)HospitalIDFind`(IN HospitalIdentifier varchar(45))
BEGIN
select H.HospitalID,H.HospitalName,H.HospitalAddress,H.HospitalTelephoneNumber
from hospitaldetails H
where H.HospitalID=HospitalIdentifier;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `(02)HospitalNameFind` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `(02)HospitalNameFind`(IN HospitalName varchar(45))
BEGIN
select H.HospitalID,H.HospitalName,H.HospitalAddress,H.HospitalTelephoneNumber
from hospitaldetails H
where H.HospitalName=HospitalName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `(03)CandidateSurnameFind` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `(03)CandidateSurnameFind`(IN Surname varchar(45))
BEGIN
select CandidateID,FirstName,Surname,Address,TelephoneNumber
from candidatedetails C
where C.Surname=Surname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `(04)CandidateRequiredSkill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `(04)CandidateRequiredSkill`(IN PositionID varchar(45))
BEGIN
select distinct CD.CandidateID,CD.FirstName,CD.Surname,CD.Address,CD.TelephoneNumber 
from candidatedetails CD,candidateskills CS,positionskills PS 
where PS.SkillID=CS.SkillID 
and PositionID=PS.PositionID 
and CS.CandidateID=CD.CandidateID
order by CD.CandidateID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `(05)CandidatesOffered` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `(05)CandidatesOffered`()
BEGIN
Select count(*)
from candidatedetails CD,interviewdetails ID
where ID.JobOffered=1
and CD.CandidateID=ID.InterviewCandidate;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `(06)RequiredSkillFind` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `(06)RequiredSkillFind`(IN Skill varchar(45))
BEGIN
select distinct PS.PositionID,PD.PositionType,PD.HospitalAdvertising
from positiondetails PD,positionskills PS,skilldetails SD
where Skill=SD.SkillName
and SD.SkillID=PS.SkillID
and PS.PositionID=PD.PositionID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `(07)NursingSkills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `(07)NursingSkills`()
BEGIN
select count(*)
from positiondetails PD,positionskills PS,skilldetails SD
where SD.SkillName='Nursing'
and SD.SkillID=PS.SkillID
and PS.PositionID=PD.PositionID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `(08)PositionsSortedHospitals` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `(08)PositionsSortedHospitals`()
BEGIN
select HD.HospitalName,PD.HospitalAdvertising,PD.PositionID,PD.PositionType
from positiondetails PD,hospitaldetails HD
where HD.HospitalID=PD.HospitalAdvertising
order by PD.HospitalAdvertising;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `(09)InterviewDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `(09)InterviewDate`(IN EnterDate DATE)
BEGIN
select ID.InterviewPosition,ID.InterviewCandidate,ID.InterviewDate,ID.JobOffered,ID.JobAccepted
from interviewdetails ID
where EnterDate=ID.InterviewDate;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `(10)InterviewSpecificDate(2020-10-22)` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `(10)InterviewSpecificDate(2020-10-22)`()
BEGIN
select ID.InterviewCandidate
from interviewdetails ID
where ID.InterviewCandidate <> all (select ID.InterviewCandidate from interviewdetails ID where ID.InterviewDate!='2020-10-05')
and ID.InterviewDate='2020-10-05';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `(11)MultipleInterviewCandidates` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `(11)MultipleInterviewCandidates`()
BEGIN
select ID.InterviewCandidate
from interviewdetails ID
group by ID.InterviewCandidate
having count(ID.InterviewCandidate)>1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CandidateDetailsRowInsert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CandidateDetailsRowInsert`(IN CandidateID INT, IN FirstName varchar(45),IN Surname varchar(45),IN Address varchar(45),IN TelephoneNumber INT)
BEGIN
Insert candidatedetails (CandidateID,FirstName,Surname,Address,TelephoneNumber) values (CandidateID,FirstName,Surname,Address,TelephoneNumber);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CandidateSkillsRowInsert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CandidateSkillsRowInsert`(IN SkillID INT, IN CandidateID INT)
BEGIN
Insert candidateskills (SkillID,CandidateID) values (SkillID,CandidateID);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `HospitalDetailsRowInsert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `HospitalDetailsRowInsert`(IN HospitalID varchar(45), IN HospitalName varchar(45),IN HospitalAddress varchar(45),IN HospitalTelephoneNumber INT)
BEGIN
Insert hospitaldetails (HospitalID,HospitalName,HospitalAddress,HospitalTelephoneNumber) values (HospitalID,HospitalName,HospitalAddress,HospitalTelephoneNumber);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InterviewDetailsRowInsert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InterviewDetailsRowInsert`(IN InterviewPosition varchar(45), IN InterviewCandidate INT,IN InterviewDate DATE,IN JobOffered TINYINT, IN JobAccepted TINYINT)
BEGIN
Insert interviewdetails (InterviewPosition,InterviewCandidate,InterviewDate,JobOffered,JobAccepted) values (InterviewPosition,InterviewCandidate,InterviewDate,JobOffered,JobAccepted);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PositionDetailsRowInsert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PositionDetailsRowInsert`(IN PositionID varchar(45), IN PositionType varchar(45),IN HospitalAdvertising varchar(45))
BEGIN
Insert positiondetails (PositionID,PositionType,HospitalAdvertising) values (PositionID,PositionType,HospitalAdvertising);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PositionSkillsRowInsert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PositionSkillsRowInsert`(IN PositionID varchar(45), IN SkillID INT)
BEGIN
Insert positionskills (PositionID,SkillID) values (PositionID,SkillID);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SkillDetailRowInsert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SkillDetailRowInsert`(IN SkillID INT, IN SkillName varchar(45))
BEGIN
Insert skilldetails (SkillID,SkillName) values (SkillID,SkillName);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-09 22:15:22
