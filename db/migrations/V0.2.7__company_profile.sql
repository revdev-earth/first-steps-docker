--
-- Table structure for table `company_profile`
--

DROP TABLE IF EXISTS `company_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `company_id` int NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `logo_file_id` int DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `contact_id` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  KEY `contact_id` (`contact_id`),
  KEY `logo_file_id_fk` (`logo_file_id`),
  CONSTRAINT `company_profile_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `company_profile_ibfk_2` FOREIGN KEY (`contact_id`) REFERENCES `company_profile_contact` (`id`),
  CONSTRAINT `logo_file_id_fk` FOREIGN KEY (`logo_file_id`) REFERENCES `file` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
