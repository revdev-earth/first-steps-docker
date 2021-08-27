--
-- Table structure for table `global_setting`
--

DROP TABLE IF EXISTS `global_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `global_setting` (
  `id` int NOT NULL AUTO_INCREMENT,
  `value` varchar(15) DEFAULT NULL,
  `setting_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `setting_id` (`setting_id`),
  CONSTRAINT `global_setting_ibfk_1` FOREIGN KEY (`setting_id`) REFERENCES `setting` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
