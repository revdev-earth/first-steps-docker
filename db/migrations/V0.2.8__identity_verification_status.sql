--
-- Table structure for table `identity_verification_status`
--

DROP TABLE IF EXISTS `identity_verification_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `identity_verification_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_contact_id` int NOT NULL,
  `verification_status_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `verification_status_id` (`verification_status_id`),
  KEY `company_contact_id_fk` (`company_contact_id`),
  CONSTRAINT `company_contact_id_fk` FOREIGN KEY (`company_contact_id`) REFERENCES `company_profile_contact` (`id`) ON DELETE CASCADE,
  CONSTRAINT `identity_verification_status_ibfk_2` FOREIGN KEY (`verification_status_id`) REFERENCES `verification_status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
