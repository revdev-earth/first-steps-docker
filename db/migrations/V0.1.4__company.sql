--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `id` int NOT NULL AUTO_INCREMENT,
  `legal_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `profile_id` int DEFAULT NULL,
  `tax_id` int DEFAULT NULL,
  `business_type` varchar(100) DEFAULT NULL,
  `years` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `verification_status` enum('NEW','UNVERIFIED','PENDING','VERIFIED','LOCKED') DEFAULT 'NEW',
  `current_subscription_id` int DEFAULT NULL,
  `balance` int DEFAULT NULL,
  `registration_state` varchar(255) DEFAULT 'none',
  `beneficial_verification_status` varchar(255) DEFAULT NULL,
  `employee_id_number` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `legal_name` (`legal_name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
