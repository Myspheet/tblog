-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: tblog
-- ------------------------------------------------------
-- Server version	8.0.29-0ubuntu0.21.10.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `canvas_posts`
--

DROP TABLE IF EXISTS `canvas_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canvas_posts` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `published_at` datetime DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image_caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `canvas_posts_slug_user_id_unique` (`slug`,`user_id`),
  KEY `canvas_posts_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canvas_posts`
--

LOCK TABLES `canvas_posts` WRITE;
/*!40000 ALTER TABLE `canvas_posts` DISABLE KEYS */;
INSERT INTO `canvas_posts` VALUES ('1d458c1f-fbb0-4026-af65-35ca6e6ac9cc','just-so-you-know','Just So you Know','Just a lorem ipsum post','<p class=\"ql-align-justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet turpis in orci hendrerit convallis. Suspendisse ornare non neque id tempor. Etiam gravida nisi a arcu interdum ornare. Donec in molestie tortor. Morbi lobortis imperdiet lorem at hendrerit. Etiam massa lacus, lobortis nec velit eu, faucibus dignissim erat. Vivamus tincidunt eros massa, ut tincidunt neque malesuada non. Etiam lacinia lorem libero, eu tincidunt lectus viverra eu. Pellentesque libero mi, consectetur vitae placerat ac, imperdiet ut quam. Vestibulum pulvinar scelerisque nibh, aliquet consectetur est placerat id. Phasellus consectetur laoreet ante, quis efficitur nulla consectetur eget. Cras euismod tincidunt tellus ac facilisis. Cras magna erat, dignissim ut tristique nec, volutpat vel turpis. In turpis nisl, ultricies at tellus vitae, varius consequat odio. Aenean nec odio commodo arcu venenatis ornare.</p><p class=\"ql-align-justify\">Praesent ac tempor augue. Curabitur gravida dolor in varius dignissim. Phasellus semper, erat non lobortis accumsan, ligula risus pellentesque ipsum, ac aliquet mauris est vel dolor. Curabitur sed massa ullamcorper, ullamcorper est sit amet, volutpat odio. Mauris nec nisi et nunc venenatis ornare eu a turpis. Morbi lobortis mattis diam vel porta. Cras pellentesque euismod ipsum, eget bibendum nisi semper eu. Mauris augue felis, aliquam a erat vitae, dictum vehicula nulla. Donec volutpat lorem dolor, consectetur pellentesque sem pulvinar vel. Quisque nunc augue, imperdiet viverra tortor vitae, hendrerit volutpat purus. Nam sodales elementum eros, sed gravida arcu viverra elementum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p><p class=\"ql-align-justify\">Integer eu rutrum neque. Cras quis purus sed orci sodales congue fringilla vitae nisi. Maecenas convallis sapien dui. Nullam dolor diam, elementum non feugiat nec, placerat sit amet libero. Duis nec dignissim massa. Maecenas vitae mollis neque, nec cursus libero. Aliquam ut risus nec nulla posuere hendrerit. Aliquam vehicula lorem nec sollicitudin dapibus. Sed porta tincidunt est et blandit. Sed vestibulum facilisis odio, hendrerit malesuada est lacinia quis. Nullam sem lectus, blandit ac risus sagittis, elementum condimentum mi. Aliquam erat volutpat. Aenean eu lacinia risus.</p><p class=\"ql-align-justify\">Proin libero enim, dignissim in risus eget, auctor condimentum neque. Mauris vitae faucibus eros. Cras condimentum ut nibh vel dapibus. Ut consectetur pretium lectus vel hendrerit. Donec vulputate, risus nec sollicitudin convallis, metus nunc congue lorem, ut sagittis dui justo quis orci. Nulla sapien quam, auctor a tincidunt vel, cursus eget lacus. Ut dignissim tortor vel purus dictum, vitae finibus dui ullamcorper. Vivamus nec ligula ullamcorper, vehicula diam et, efficitur justo. Fusce sagittis nisi a lorem congue, eget sollicitudin eros tempor. Nam imperdiet, arcu non eleifend facilisis, nunc eros ultrices dui, at dictum ligula augue sed erat. Sed eu ornare sapien, sed posuere arcu. Pellentesque feugiat purus quis magna luctus, sed venenatis ex posuere. Donec varius nisl varius, porta ex non, laoreet ex. Maecenas aliquet nisi at scelerisque pellentesque. Integer pellentesque magna et ante pharetra, eget finibus sapien tincidunt.</p><div class=\"embedded_image\" contenteditable=\"false\" data-layout=\"wide\"><img alt=\"caption\" src=\"/storage/canvas/images/5jV9kgSrD0BHws6CR34xUIblfwNOeRqLvAw1YLp4.png\"><p>caption</p></div><p class=\"ql-align-justify\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet turpis in orci hendrerit convallis. Suspendisse ornare non neque id tempor. Etiam gravida nisi a arcu interdum ornare. Donec in molestie tortor. Morbi lobortis imperdiet lorem at hendrerit. Etiam massa lacus, lobortis nec velit eu, faucibus dignissim erat. Vivamus tincidunt eros massa, ut tincidunt neque malesuada non. Etiam lacinia lorem libero, eu tincidunt lectus viverra eu. Pellentesque libero mi, consectetur vitae placerat ac, imperdiet ut quam. Vestibulum pulvinar scelerisque nibh, aliquet consectetur est placerat id. Phasellus consectetur laoreet ante, quis efficitur nulla consectetur eget. Cras euismod tincidunt tellus ac facilisis. Cras magna erat, dignissim ut tristique nec, volutpat vel turpis. In turpis nisl, ultricies at tellus vitae, varius consequat odio. Aenean nec odio commodo arcu venenatis ornare.</p><p class=\"ql-align-justify\">Praesent ac tempor augue. Curabitur gravida dolor in varius dignissim. Phasellus semper, erat non lobortis accumsan, ligula risus pellentesque ipsum, ac aliquet mauris est vel dolor. Curabitur sed massa ullamcorper, ullamcorper est sit amet, volutpat odio. Mauris nec nisi et nunc venenatis ornare eu a turpis. Morbi lobortis mattis diam vel porta. Cras pellentesque euismod ipsum, eget bibendum nisi semper eu. Mauris augue felis, aliquam a erat vitae, dictum vehicula nulla. Donec volutpat lorem dolor, consectetur pellentesque sem pulvinar vel. Quisque nunc augue, imperdiet viverra tortor vitae, hendrerit volutpat purus. Nam sodales elementum eros, sed gravida arcu viverra elementum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p><p class=\"ql-align-justify\">Integer eu rutrum neque. Cras quis purus sed orci sodales congue fringilla vitae nisi. Maecenas convallis sapien dui. Nullam dolor diam, elementum non feugiat nec, placerat sit amet libero. Duis nec dignissim massa. Maecenas vitae mollis neque, nec cursus libero. Aliquam ut risus nec nulla posuere hendrerit. Aliquam vehicula lorem nec sollicitudin dapibus. Sed porta tincidunt est et blandit. Sed vestibulum facilisis odio, hendrerit malesuada est lacinia quis. Nullam sem lectus, blandit ac risus sagittis, elementum condimentum mi. Aliquam erat volutpat. Aenean eu lacinia risus.</p><p class=\"ql-align-justify\">Proin libero enim, dignissim in risus eget, auctor condimentum neque. Mauris vitae faucibus eros. Cras condimentum ut nibh vel dapibus. Ut consectetur pretium lectus vel hendrerit. Donec vulputate, risus nec sollicitudin convallis, metus nunc congue lorem, ut sagittis dui justo quis orci. Nulla sapien quam, auctor a tincidunt vel, cursus eget lacus. Ut dignissim tortor vel purus dictum, vitae finibus dui ullamcorper. Vivamus nec ligula ullamcorper, vehicula diam et, efficitur justo. Fusce sagittis nisi a lorem congue, eget sollicitudin eros tempor. Nam imperdiet, arcu non eleifend facilisis, nunc eros ultrices dui, at dictum ligula augue sed erat. Sed eu ornare sapien, sed posuere arcu. Pellentesque feugiat purus quis magna luctus, sed venenatis ex posuere. Donec varius nisl varius, porta ex non, laoreet ex. Maecenas aliquet nisi at scelerisque pellentesque. Integer pellentesque magna et ante pharetra, eget finibus sapien tincidunt.</p><p><br></p>','2022-04-17 15:03:00','/storage/canvas/images/lvAyCs56qOtMS4OEEKvbTTKdN2he53wVjPV2aeqc.png','featured','c293e514-1c42-451b-941a-63a42b01e435','{\"title\": \"Just So you Know\", \"description\": \"Lorem ipsum dolor sit amet\", \"canonical_link\": null}','2022-04-17 14:03:21','2022-04-17 14:06:13',NULL),('26ffdf17-63c0-4cfa-b873-733235a3cb2c','true-story','True Story','brief summary','<p>This is a random true life story my nigga</p>','2022-04-15 18:47:00','/storage/canvas/images/PPc2A7es69QEYYmSV5ulgeePG3cYppk9MYTWCmzk.png','nigga','c293e514-1c42-451b-941a-63a42b01e435','{\"title\": \"True Story\", \"description\": \"True life story\", \"canonical_link\": null}','2022-04-15 17:47:43','2022-04-15 17:49:04',NULL),('73f75a58-4ccb-464b-bda5-04164c7965e1','first-title','First Title','This is the summary','<p>This should low key be the body of the post, but I\'m just going to write some rather long and boring text here.</p><p><br></p>','2022-04-09 22:45:00','/storage/canvas/images/iIQ6Kb3ENDWq1DhcG7q8G0eyHEti6ymnnFVxOtmh.png','first','c293e514-1c42-451b-941a-63a42b01e435','{\"title\": \"First Title\", \"description\": \"This should be the first titled post\", \"canonical_link\": null}','2022-04-09 21:45:20','2022-04-09 21:48:33',NULL);
/*!40000 ALTER TABLE `canvas_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canvas_posts_tags`
--

DROP TABLE IF EXISTS `canvas_posts_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canvas_posts_tags` (
  `post_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `canvas_posts_tags_post_id_tag_id_unique` (`post_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canvas_posts_tags`
--

LOCK TABLES `canvas_posts_tags` WRITE;
/*!40000 ALTER TABLE `canvas_posts_tags` DISABLE KEYS */;
INSERT INTO `canvas_posts_tags` VALUES ('1d458c1f-fbb0-4026-af65-35ca6e6ac9cc','699f7426-11ba-47f1-8936-7beb68e8af1a'),('1d458c1f-fbb0-4026-af65-35ca6e6ac9cc','eb0d74d7-0261-495f-b970-19ddd395e8f4'),('26ffdf17-63c0-4cfa-b873-733235a3cb2c','699f7426-11ba-47f1-8936-7beb68e8af1a'),('73f75a58-4ccb-464b-bda5-04164c7965e1','699f7426-11ba-47f1-8936-7beb68e8af1a');
/*!40000 ALTER TABLE `canvas_posts_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canvas_posts_topics`
--

DROP TABLE IF EXISTS `canvas_posts_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canvas_posts_topics` (
  `post_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `canvas_posts_topics_post_id_topic_id_unique` (`post_id`,`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canvas_posts_topics`
--

LOCK TABLES `canvas_posts_topics` WRITE;
/*!40000 ALTER TABLE `canvas_posts_topics` DISABLE KEYS */;
INSERT INTO `canvas_posts_topics` VALUES ('1d458c1f-fbb0-4026-af65-35ca6e6ac9cc','3b67b3b0-e5fe-4100-aa25-5b8b141a14d4'),('26ffdf17-63c0-4cfa-b873-733235a3cb2c','e4a15af4-5f79-4c1e-88cf-51e92d6238b5'),('73f75a58-4ccb-464b-bda5-04164c7965e1','e4a15af4-5f79-4c1e-88cf-51e92d6238b5');
/*!40000 ALTER TABLE `canvas_posts_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canvas_tags`
--

DROP TABLE IF EXISTS `canvas_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canvas_tags` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `canvas_tags_slug_user_id_unique` (`slug`,`user_id`),
  KEY `canvas_tags_created_at_index` (`created_at`),
  KEY `canvas_tags_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canvas_tags`
--

LOCK TABLES `canvas_tags` WRITE;
/*!40000 ALTER TABLE `canvas_tags` DISABLE KEYS */;
INSERT INTO `canvas_tags` VALUES ('699f7426-11ba-47f1-8936-7beb68e8af1a','test','Test','c293e514-1c42-451b-941a-63a42b01e435','2022-04-09 21:48:03','2022-04-09 21:48:03',NULL),('eb0d74d7-0261-495f-b970-19ddd395e8f4','random','random','c293e514-1c42-451b-941a-63a42b01e435','2022-04-17 14:05:36','2022-04-17 14:05:36',NULL);
/*!40000 ALTER TABLE `canvas_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canvas_topics`
--

DROP TABLE IF EXISTS `canvas_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canvas_topics` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `canvas_topics_slug_user_id_unique` (`slug`,`user_id`),
  KEY `canvas_topics_created_at_index` (`created_at`),
  KEY `canvas_topics_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canvas_topics`
--

LOCK TABLES `canvas_topics` WRITE;
/*!40000 ALTER TABLE `canvas_topics` DISABLE KEYS */;
INSERT INTO `canvas_topics` VALUES ('2fbb27f7-ed8d-449e-b0cd-6c1a99590d93','news-updates','News Updates','c293e514-1c42-451b-941a-63a42b01e435','2022-04-30 23:16:36','2022-04-30 23:16:36',NULL),('3b67b3b0-e5fe-4100-aa25-5b8b141a14d4','second','Second','c293e514-1c42-451b-941a-63a42b01e435','2022-04-17 14:05:33','2022-04-17 14:05:33',NULL),('3f1435b0-5de8-4a3b-ab63-087ddf374628','beauty','Beauty','c293e514-1c42-451b-941a-63a42b01e435','2022-04-30 23:17:04','2022-04-30 23:17:04',NULL),('4fe3f1ad-f0a8-4915-9199-c4e4b4a66047','child-care','Child Care','c293e514-1c42-451b-941a-63a42b01e435','2022-04-30 23:13:54','2022-04-30 23:13:54',NULL),('5d6e66cf-5c44-4984-91f1-7ae7ef72e804','stereotypes','Stereotypes','c293e514-1c42-451b-941a-63a42b01e435','2022-04-30 23:17:34','2022-04-30 23:17:34',NULL),('8696d952-fe6f-4858-a6ef-f97de3884427','individual-differences','Individual Differences','c293e514-1c42-451b-941a-63a42b01e435','2022-04-30 23:14:42','2022-04-30 23:14:42',NULL),('a1cd298d-0c48-4980-ac7c-ced692600651','controversial-issues','Controversial Issues','c293e514-1c42-451b-941a-63a42b01e435','2022-04-30 23:16:04','2022-04-30 23:16:04',NULL),('a4231d27-1157-4b4a-b344-4548312d60f7','love','Love','c293e514-1c42-451b-941a-63a42b01e435','2022-04-30 23:18:17','2022-04-30 23:18:17',NULL),('e4a15af4-5f79-4c1e-88cf-51e92d6238b5','first','First','c293e514-1c42-451b-941a-63a42b01e435','2022-04-09 21:47:55','2022-04-09 21:47:55',NULL);
/*!40000 ALTER TABLE `canvas_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canvas_users`
--

DROP TABLE IF EXISTS `canvas_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canvas_users` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dark_mode` tinyint DEFAULT NULL,
  `digest` tinyint DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` tinyint DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `canvas_users_email_unique` (`email`),
  UNIQUE KEY `canvas_users_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canvas_users`
--

LOCK TABLES `canvas_users` WRITE;
/*!40000 ALTER TABLE `canvas_users` DISABLE KEYS */;
INSERT INTO `canvas_users` VALUES ('c293e514-1c42-451b-941a-63a42b01e435','Example User','email@example.com',NULL,'$2y$10$hebe2wcb/mZmQCJquZCXD.4Ec1q/8Iv95btF3LcAkyaPYdpwtQMVK','This is the test summary and should really be a test summary','/storage/canvas/images/s3E2N4PbcIpPIqi77t0j6xHQOkqaIKCOpGgce7bY.jpg',NULL,NULL,'en',3,NULL,'2022-04-09 19:12:01','2022-04-17 16:07:36',NULL);
/*!40000 ALTER TABLE `canvas_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canvas_views`
--

DROP TABLE IF EXISTS `canvas_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canvas_views` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `post_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent` text COLLATE utf8mb4_unicode_ci,
  `referer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `canvas_views_created_at_index` (`created_at`),
  KEY `canvas_views_post_id_index` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canvas_views`
--

LOCK TABLES `canvas_views` WRITE;
/*!40000 ALTER TABLE `canvas_views` DISABLE KEYS */;
INSERT INTO `canvas_views` VALUES (1,'73f75a58-4ccb-464b-bda5-04164c7965e1','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36','127.0.0.1','2022-04-10 16:25:34','2022-04-10 16:25:34'),(2,'26ffdf17-63c0-4cfa-b873-733235a3cb2c','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36','127.0.0.1','2022-04-17 13:54:02','2022-04-17 13:54:02'),(3,'1d458c1f-fbb0-4026-af65-35ca6e6ac9cc','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36','127.0.0.1','2022-04-17 14:06:31','2022-04-17 14:06:31'),(4,'73f75a58-4ccb-464b-bda5-04164c7965e1','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36','b209-105-112-34-221.ngrok.io','2022-04-17 21:19:54','2022-04-17 21:19:54'),(5,'26ffdf17-63c0-4cfa-b873-733235a3cb2c','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36','127.0.0.1','2022-05-16 06:59:06','2022-05-16 06:59:06');
/*!40000 ALTER TABLE `canvas_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canvas_visits`
--

DROP TABLE IF EXISTS `canvas_visits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canvas_visits` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `post_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent` text COLLATE utf8mb4_unicode_ci,
  `referer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canvas_visits`
--

LOCK TABLES `canvas_visits` WRITE;
/*!40000 ALTER TABLE `canvas_visits` DISABLE KEYS */;
INSERT INTO `canvas_visits` VALUES (1,'73f75a58-4ccb-464b-bda5-04164c7965e1','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36','127.0.0.1','2022-04-10 16:25:34','2022-04-10 16:25:34'),(2,'26ffdf17-63c0-4cfa-b873-733235a3cb2c','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36','127.0.0.1','2022-04-17 13:54:02','2022-04-17 13:54:02'),(3,'1d458c1f-fbb0-4026-af65-35ca6e6ac9cc','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36','127.0.0.1','2022-04-17 14:06:31','2022-04-17 14:06:31'),(4,'73f75a58-4ccb-464b-bda5-04164c7965e1','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36','b209-105-112-34-221.ngrok.io','2022-04-17 21:19:54','2022-04-17 21:19:54'),(5,'26ffdf17-63c0-4cfa-b873-733235a3cb2c','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36','127.0.0.1','2022-05-16 06:59:06','2022-05-16 06:59:06');
/*!40000 ALTER TABLE `canvas_visits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2020_09_21_000000_create_canvas_tables',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-16 14:53:21
