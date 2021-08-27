--
-- Table structure for table `company_verification_status`
--

DROP TABLE IF EXISTS `company_verification_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_verification_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_id` int NOT NULL,
  `verification_status_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  KEY `verification_status_id` (`verification_status_id`),
  CONSTRAINT `company_verification_status_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `company_verification_status_ibfk_2` FOREIGN KEY (`verification_status_id`) REFERENCES `verification_status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
