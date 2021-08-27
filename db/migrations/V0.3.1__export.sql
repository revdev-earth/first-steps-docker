--
-- Table structure for table `export`
--

DROP TABLE IF EXISTS `export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `export` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_id` int NOT NULL,
  `type` enum('manual','monthly','quickbooks') NOT NULL,
  `status` enum('new','processing','completed','failed') NOT NULL,
  `from` datetime NOT NULL,
  `to` datetime NOT NULL,
  `file_id` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `transaction_types` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  KEY `file_id` (`file_id`),
  CONSTRAINT `export_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `export_ibfk_2` FOREIGN KEY (`file_id`) REFERENCES `file` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
