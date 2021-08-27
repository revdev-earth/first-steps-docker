--
-- Table structure for table `company_profile_contact`
--

DROP TABLE IF EXISTS `company_profile_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_profile_contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `social_number` varchar(9) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `address_id` int DEFAULT NULL,
  `job_title` varchar(100) NOT NULL,
  `verification_status` varchar(255) NOT NULL DEFAULT 'unverified',
  `person_stripe_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `company_profile_contact_address_id_foreign_idx` (`address_id`),
  CONSTRAINT `company_profile_contact_address_id_foreign_idx` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
