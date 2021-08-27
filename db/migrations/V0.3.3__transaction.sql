--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender_id` int DEFAULT NULL,
  `recipient_id` int DEFAULT NULL,
  `amount` int NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `created_by` int NOT NULL,
  `completed_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `expected_at` datetime DEFAULT NULL,
  `refund_transaction_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sender_id` (`sender_id`),
  KEY `recipient_id` (`recipient_id`),
  KEY `created_by` (`created_by`),
  KEY `transaction_refund_transaction_id_foreign_idx` (`refund_transaction_id`),
  CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `company` (`id`),
  CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`recipient_id`) REFERENCES `company` (`id`),
  CONSTRAINT `transaction_ibfk_4` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`),
  CONSTRAINT `transaction_refund_transaction_id_foreign_idx` FOREIGN KEY (`refund_transaction_id`) REFERENCES `transaction` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
