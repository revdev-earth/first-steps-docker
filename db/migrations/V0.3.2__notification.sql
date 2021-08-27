--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_id` int NOT NULL,
  `type` enum('EMAIL','INAPP','BANNER','POPUP') NOT NULL,
  `show_at` datetime NOT NULL,
  `showed_at` datetime DEFAULT NULL,
  `text` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `from_id` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `template_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  KEY `notification_from_id_foreign_idx` (`from_id`),
  CONSTRAINT `notification_from_id_foreign_idx` FOREIGN KEY (`from_id`) REFERENCES `company` (`id`),
  CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
