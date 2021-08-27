--
-- Table structure for table `company_balance_history`
--

DROP TABLE IF EXISTS `company_balance_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_balance_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_id` int NOT NULL,
  `balance` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `payment_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  KEY `company_balance_history_payment_id_foreign_idx` (`payment_id`),
  CONSTRAINT `company_balance_history_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `company_balance_history_payment_id_foreign_idx` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
