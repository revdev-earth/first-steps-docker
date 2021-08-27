--
-- Table structure for table `user_profile_setting`
--

DROP TABLE IF EXISTS `user_profile_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_profile_setting` (
  `id` int NOT NULL AUTO_INCREMENT,
  `value` varchar(15) DEFAULT NULL,
  `setting_id` int NOT NULL,
  `user_profile_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `setting_id` (`setting_id`),
  KEY `user_profile_id` (`user_profile_id`),
  CONSTRAINT `user_profile_setting_ibfk_1` FOREIGN KEY (`setting_id`) REFERENCES `setting` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_profile_setting_ibfk_2` FOREIGN KEY (`user_profile_id`) REFERENCES `user_profile` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
