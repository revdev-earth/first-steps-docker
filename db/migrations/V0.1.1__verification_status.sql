--
-- Table structure for table `verification_status`
--

DROP TABLE IF EXISTS `verification_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `verification_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data` json DEFAULT NULL,
  `result` json DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `errors` json DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

