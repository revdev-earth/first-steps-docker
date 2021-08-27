--
-- Table structure for table `role_permission`
--

DROP TABLE IF EXISTS `role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `permission_resource_id` int NOT NULL,
  `permission_action_id` int NOT NULL,
  `role_id` int NOT NULL,
  `allow` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `permission_resource_id` (`permission_resource_id`),
  KEY `permission_action_id` (`permission_action_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `role_permission_ibfk_1` FOREIGN KEY (`permission_resource_id`) REFERENCES `permission_resource` (`id`),
  CONSTRAINT `role_permission_ibfk_2` FOREIGN KEY (`permission_action_id`) REFERENCES `permission_action` (`id`),
  CONSTRAINT `role_permission_ibfk_3` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;