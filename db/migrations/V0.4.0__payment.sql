--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `transaction_id` int NOT NULL,
  `payment_method_id` int DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `amount` int NOT NULL,
  `fee` int DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_by` int DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `fee_percentage` float DEFAULT NULL,
  `max_fee_amount` int DEFAULT NULL,
  `fix_fee_amount` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transaction_id` (`transaction_id`),
  KEY `payment_method_id` (`payment_method_id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transaction` (`id`),
  CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_method` (`id`),
  CONSTRAINT `payment_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
