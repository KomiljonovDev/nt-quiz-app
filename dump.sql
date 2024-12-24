-- MySQL dump 10.13  Distrib 8.3.0, for macos14.2 (arm64)
--
-- Host: localhost    Database: quiz_app
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE = @@TIME_ZONE */;
/*!40103 SET TIME_ZONE = '+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 */;
/*!40101 SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES = @@SQL_NOTES, SQL_NOTES = 0 */;

--
-- Table structure for table `user_api_tokens`
--

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users`
(
    `id`         int NOT NULL AUTO_INCREMENT,
    `full_name`  varchar(255) DEFAULT NULL,
    `email`      varchar(255) DEFAULT NULL,
    `password`   varchar(255) DEFAULT NULL,
    `updated_at` datetime     DEFAULT NULL,
    `created_at` datetime     DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `email` (`email`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 6
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users`
    DISABLE KEYS */;
INSERT INTO `users`
VALUES (1, 'Abdullajon', 'abdullajon@gmail.com', '$2y$10$oKbtK8DuYA9xcFPqEWAqrexxI6ZyqQgTkjoHT6k7WnF2WK.xcYRd2', NULL,
        '2024-12-24 19:02:39'),
       (3, 'Abdullajon', 'abdullajon.tishayev@gmail.com',
        '$2y$10$GJZoz0hR3Ejsm0e4JRlvqeqH/ElkO1d7ZytYnqfpAdhD1YN9MviV.', '2024-12-24 19:04:38', '2024-12-24 19:04:38'),
       (4, 'Fazliddin S', 'fazliddin@gmail.com', '$2y$10$klRiw8T5RFaLSBbLIHojXuJMmuuQjPCQkg5FGw/AGbDwHE0JpPEB.',
        '2024-12-24 20:05:04', '2024-12-24 20:05:04'),
       (5, 'Kimdur', 'kimdur@gmail.com', '$2y$10$MLsV4GNXlA/A8bIBRUTGg.qJgvO5W8A6eX3avx0A1PbJNfTGTUKKO',
        '2024-12-24 20:07:26', '2024-12-24 20:07:26');
/*!40000 ALTER TABLE `users`
    ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE = @OLD_TIME_ZONE */;
DROP TABLE IF EXISTS `user_api_tokens`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_api_tokens`
(
    `id`         int      NOT NULL AUTO_INCREMENT,
    `token`      varchar(255) DEFAULT NULL,
    `user_id`    int          DEFAULT NULL,
    `expires_at` datetime NOT NULL,
    `created_at` datetime     DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `user_id` (`user_id`),
    CONSTRAINT `user_api_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 3
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_api_tokens`
--

LOCK TABLES `user_api_tokens` WRITE;
/*!40000 ALTER TABLE `user_api_tokens`
    DISABLE KEYS */;
INSERT INTO `user_api_tokens`
VALUES (1, '98be572f6b170b70db385e224c4db777e2203d8503c56ab9c36b02f7765b8664c4b9fa1cb5f2812e', 4, '2024-12-31 15:05:04',
        NULL),
       (2, 'c42b29923bcaa9124ab5ed151757eaf99fc067a71bb5d9737f9b77bd543b5a844d51fe673861a5fa', 5, '2024-12-31 15:07:26',
        '2024-12-24 20:07:26');
/*!40000 ALTER TABLE `user_api_tokens`
    ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE = @OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES = @OLD_SQL_NOTES */;

-- Dump completed on 2024-12-24 20:14:29
