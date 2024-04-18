
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

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `audiobookService` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `audiobookService`;
DROP TABLE IF EXISTS `Audiobook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Audiobook` (
  `audiobook_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(70) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`audiobook_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `Audiobook` WRITE;
/*!40000 ALTER TABLE `Audiobook` DISABLE KEYS */;
INSERT INTO `Audiobook` VALUES (1,'Онегин','Молодой дворянин, разочарованный и циничный, отвергает любовь искренней, чистой девушки. Позже он понимает, что совершил непростительную ошибку, но уже слишком поздно – его возлюбленная замужем за другим.'),(2,'Война и мир','Это роман-эпопея, описывающий жизнь русского общества во времена войн с Наполеоном.'),(3,'Преступление и наказание','Роман о студенте Раскольникове, который совершает убийство и сталкивается с своими моральными противоречиями.'),(4,'Идиот','История о простом и невинном человеке, который выглядит как идиот в глазах общества, но на самом деле обладает глубоким внутренним миром.'),(5,'Вишневый сад','Комедия в четырех действиях, в которой автор описывает жизнь замечательных, мечтательных людей в связи с уничтожением деревни Любимово.'),(6,'Мертвые души','Роман о недобросовестном помещике, который покупает умерших крестьян для того чтобы списать их в списке крепостных.'),(7,'Отцы и дети','Роман о столкновении различных поколений и мировоззрений в России 19 века.'),(8,'Герой нашего времени','Лермонтов высмеивает современное русское общество, показывая нравственное упадок человечества.'),(9,'Мастер и Маргарита','Сатирический роман о том, как дьявол приезжает в Москву и развлекается на людях, демонстрируя их бездушное лицемерие.'),(10,'Один день Ивана Денисовича','Описывает жизнь заключенного Ивана Денисовича Шухова в лагере на Севере.'),(11,'Азазель','Первая книга детективной серии о Эрасте Фандорине Транскрибировано.'),(12,'Финансист','США, XIX век. Молодой самоуверенный финансист делает большие успехи, но волею случая становится банкротом. Любовь красивой женщины, чутьё и фортуна помогают ему вновь встать на ноги.'),(13,'Прощай, оружие','Роман о любви военного и медсестры во время Первой мировой войны.'),(14,'Гордость и предубеждение','Классическая история о семейных отношениях и любви в обществе начала 19 века.'),(15,'Собор Парижской Богоматери','История о парижском бродяге, брале Клоде Фролло и красавицы Эсмеральде в средневековом Париже.'),(16,'1984','Роман о тоталитарном обществе, в котором все контролируется правительством и жизнь граждан не имеет ценности.'),(17,'Анна Каренина','История трагической любви молодой замужней дворянки и блестящего офицера. Героиня не выдерживает внутреннего напряжения и решает покончить жизнь самоубийством, бросившись под поезд.'),(18,'Детство','После смерти отца маленький Алёша переезжает жить к родителям матери. Здесь мальчик познаёт все тяготы взрослой жизни, в которой нет места любви, сочувствию и душевной близости.'),(19,'Отрочество','«Отрочество» – вторая повесть в трилогии Л. Н. Толстого, в которой рассказывается о взрослении подростка, впервые столкнувшегося с любовью, дружбой, предательством, подлостью.'),(20,'Юность','Повесть «Юность» Толстого, написанная в 1857 году, стала завершением знаменитой трилогии Льва Николаевича («Детство», «Отрочество», «Юность»). Книга описывает студенческие годы жизни главного героя и его близкое окружение.'),(21,'Les miserables','Les Misérables has been popularized through numerous adaptations for film, television and the stage, including a musical.'),(22,'L\'Homme qui rit',NULL),(23,'Смерть поэта',NULL),(24,'Автоматическая обработка текстов на естественном языке и анализ данных','В учебном пособии рассматриваются базовые вопросы компьютерной лингвистики'),(27,'Гобсек',NULL);
/*!40000 ALTER TABLE `Audiobook` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `audiobook_add_id_to_genre` AFTER INSERT ON `Audiobook` FOR EACH ROW INSERT INTO audiobookService.GenreAudiobook(audiobook_id)
SELECT (NEW.audiobook_id) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `audiobook_add_id_to_bookfile` AFTER INSERT ON `Audiobook` FOR EACH ROW INSERT INTO audiobookService.BookFile (audiobook_id)
SELECT (NEW.audiobook_id) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `del_id` BEFORE DELETE ON `Audiobook` FOR EACH ROW DELETE FROM audiobookService.GenreAudiobook WHERE GenreAudiobook.audiobook_id=OLD.audiobook_id */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `del_from_bookfile` BEFORE DELETE ON `Audiobook` FOR EACH ROW DELETE FROM audiobookService.Audiobook WHERE
Audiobook.audiobook_id=OLD.audiobook_id */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
DROP TABLE IF EXISTS `Author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Author` (
  `author_id` int NOT NULL AUTO_INCREMENT,
  `author_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `Author` WRITE;
/*!40000 ALTER TABLE `Author` DISABLE KEYS */;
INSERT INTO `Author` VALUES (1,'Пушкин А.С.'),(2,'Толстой Л.Н.'),(3,'Достоевский Ф.М.'),(4,'Чехов А.П.'),(5,'Гоголь Н.В.'),(6,'Тургенев И.С.'),(7,'Лермонтов М.Ю.'),(8,'Булгаков М.А.'),(9,'Солженицын А.И.'),(10,'Акунин Б.А.'),(11,'Dreiser T.'),(12,'Hemingway E.'),(13,'Austen J.'),(14,'Hugo V.'),(15,'Orwell G.'),(16,'Клышинский Э.С.'),(17,'Большакова Е.И.'),(18,'Воронцов К.В.'),(19,'Ефремова Н.Э.'),(20,'Лукашевич Н.В.'),(21,'Сапин А.С.'),(27,'Бальзак О.'),(29,'Талеб Н.Н.');
/*!40000 ALTER TABLE `Author` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `incr_author_id` AFTER INSERT ON `Author` FOR EACH ROW INSERT INTO audiobookService.AuthorAudiobook(author_id)
SELECT (NEW.author_id) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `del_authorid` BEFORE DELETE ON `Author` FOR EACH ROW DELETE FROM audiobookService.AuthorAudiobook
WHERE AuthorAudiobook.author_id=OLD.author_id */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
DROP TABLE IF EXISTS `AuthorAudiobook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AuthorAudiobook` (
  `author_audiobook_id` int NOT NULL AUTO_INCREMENT,
  `author_id` int DEFAULT NULL,
  `audiobook_id` int DEFAULT NULL,
  PRIMARY KEY (`author_audiobook_id`),
  KEY `author_id` (`author_id`),
  KEY `audiobook_id` (`audiobook_id`),
  CONSTRAINT `AuthorAudiobook_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `Author` (`author_id`),
  CONSTRAINT `AuthorAudiobook_ibfk_2` FOREIGN KEY (`audiobook_id`) REFERENCES `Audiobook` (`audiobook_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `AuthorAudiobook` WRITE;
/*!40000 ALTER TABLE `AuthorAudiobook` DISABLE KEYS */;
INSERT INTO `AuthorAudiobook` VALUES (1,1,1),(2,2,2),(3,3,3),(4,3,4),(5,4,5),(6,5,6),(7,6,7),(8,7,8),(9,8,9),(10,9,10),(11,10,11),(12,11,12),(13,12,13),(14,13,14),(15,14,15),(16,15,16),(17,2,17),(18,2,18),(19,2,19),(20,2,20),(21,14,21),(22,14,22),(23,7,23),(24,16,24),(25,17,24),(26,18,24),(27,19,24),(28,20,24),(29,21,24),(30,27,NULL),(32,29,NULL);
/*!40000 ALTER TABLE `AuthorAudiobook` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `BookFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BookFile` (
  `book_file_id` int NOT NULL AUTO_INCREMENT,
  `audiobook_id` int DEFAULT NULL,
  `book_file_name` varchar(150) DEFAULT NULL,
  `book_file_type` varchar(50) DEFAULT NULL,
  `book_file_size` int DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  PRIMARY KEY (`book_file_id`),
  KEY `audiobook_id` (`audiobook_id`),
  CONSTRAINT `BookFile_ibfk_1` FOREIGN KEY (`audiobook_id`) REFERENCES `Audiobook` (`audiobook_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `BookFile` WRITE;
/*!40000 ALTER TABLE `BookFile` DISABLE KEYS */;
INSERT INTO `BookFile` VALUES (1,1,'Onegin','MP3',634,70,1),(2,1,'Onegin','MP3',1334,130,2),(3,2,'Vojna i mir','MP3',1432,133,1),(4,2,'Vojna i mir','MP3',1932,164,2),(5,2,'Vojna i mir','MP3',2932,119,3),(6,2,'Vojna i mir','MP3',3132,179,4),(7,3,'Prestuplenie i nakazanie','MP3',612,119,1),(8,3,'Prestuplenie i nakazanie','MP3',689,135,2),(9,4,'Idiot','MP3',932,213,1),(10,5,'Vishnevy sad','MP3',555,94,1),(11,6,'Mertvye dushi','WAV',823,203,1),(12,7,'Ottsy i deti','WAV',453,124,1),(13,7,'Ottsy i deti','WAV',400,121,2),(14,8,'Geroi nashego vremeni','FLAC',599,174,1),(15,9,'Master i Margarita','MP3',793,133,1),(16,9,'Master i Margarita','MP3',742,123,2),(17,9,'Master i Margarita','MP3',893,180,3),(18,10,'Odin den\' Ivana Denisovicha','WAV',1022,211,1),(19,11,'Azazel\'','FLAC',500,120,1),(20,11,'Azazel\'','FLAC',501,130,2),(21,12,'Finansist','MP3',1649,212,1),(22,12,'Finansist','MP3',1449,192,2),(23,13,'Proschai, oruzhie','AAC',2342,251,1),(24,14,'Gordost\' i predubezhdenie','MP3',4193,222,1),(25,15,'Sobor Parizhskoi Bogomateri','AAC',1034,123,1),(26,15,'Sobor Parizhskoi Bogomateri','AAC',1234,133,2),(27,15,'Sobor Parizhskoi Bogomateri','AAC',1412,94,3),(28,15,'Sobor Parizhskoi Bogomateri','AAC',1011,244,4),(29,16,'1984','AIFF',1524,132,1),(30,16,'1984','AIFF',1999,121,2),(31,17,'Anna Karenina','AIFF',2599,103,1),(32,17,'Anna Karenina','AIFF',2199,121,2),(33,18,'Detstvo','MP3',304,121,1),(34,19,'Otrochestvo','OGG',463,143,1),(35,20,'Yunost\'','MP3',892,272,1),(36,21,'Les miserables','MP3',1045,191,1),(37,21,'Les miserables','MP3',1043,92,2),(38,21,'Les miserables','MP3',1022,183,3),(39,21,'Les miserables','MP3',1045,63,4),(40,21,'Les miserables','MP3',1099,121,5),(41,21,'Les miserables','MP3',1018,162,6),(42,22,'L\'Homme qui rit','FLAC',2552,121,1),(43,22,'L\'Homme qui rit','FLAC',3052,134,2),(44,23,'Smert\' poeta','WAV',1345,185,1),(45,24,'Avtomaticheskaya obrabotka tekstov na estestvennom yazyke i analiz dannykh','MP3',501,185,1),(46,24,'Avtomaticheskaya obrabotka tekstov na estestvennom yazyke i analiz dannykh','MP3',401,183,2),(47,27,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `BookFile` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `Genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Genre` (
  `genre_id` int NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `Genre` WRITE;
/*!40000 ALTER TABLE `Genre` DISABLE KEYS */;
INSERT INTO `Genre` VALUES (1,'Роман в стихах'),(2,'Роман-эпопея'),(3,'Роман'),(4,'Комедия'),(5,'Поэма в прозе'),(6,'Роман-детектив'),(7,'Роман-биография'),(8,'Роман-антиутопия'),(9,'Повесть'),(10,'Поэма'),(11,'Учебное пособие');
/*!40000 ALTER TABLE `Genre` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `GenreAudiobook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GenreAudiobook` (
  `genre_audiobook_id` int NOT NULL AUTO_INCREMENT,
  `genre_id` int DEFAULT NULL,
  `audiobook_id` int DEFAULT NULL,
  PRIMARY KEY (`genre_audiobook_id`),
  KEY `genre_id` (`genre_id`),
  KEY `audiobook_id` (`audiobook_id`),
  CONSTRAINT `GenreAudiobook_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `Genre` (`genre_id`),
  CONSTRAINT `GenreAudiobook_ibfk_2` FOREIGN KEY (`audiobook_id`) REFERENCES `Audiobook` (`audiobook_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `GenreAudiobook` WRITE;
/*!40000 ALTER TABLE `GenreAudiobook` DISABLE KEYS */;
INSERT INTO `GenreAudiobook` VALUES (7,1,1),(8,2,2),(9,3,3),(10,3,4),(11,4,5),(12,3,6),(13,10,6),(14,5,6),(15,3,7),(16,3,8),(17,3,9),(18,9,10),(19,3,11),(20,6,11),(21,2,12),(22,7,12),(23,3,13),(24,3,14),(25,3,15),(26,3,16),(27,8,16),(28,3,17),(29,9,18),(30,9,19),(31,9,20),(32,2,21),(33,3,22),(34,3,23),(35,11,24),(38,NULL,27);
/*!40000 ALTER TABLE `GenreAudiobook` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `ListenHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ListenHistory` (
  `history_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `audiobook_id` int DEFAULT NULL,
  `book_file_id` int DEFAULT NULL,
  `last_position_time` int DEFAULT NULL,
  PRIMARY KEY (`history_id`),
  KEY `user_id` (`user_id`),
  KEY `audiobook_id` (`audiobook_id`),
  KEY `book_file_id` (`book_file_id`),
  CONSTRAINT `ListenHistory_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User` (`user_id`),
  CONSTRAINT `ListenHistory_ibfk_2` FOREIGN KEY (`audiobook_id`) REFERENCES `Audiobook` (`audiobook_id`),
  CONSTRAINT `ListenHistory_ibfk_3` FOREIGN KEY (`book_file_id`) REFERENCES `BookFile` (`book_file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `ListenHistory` WRITE;
/*!40000 ALTER TABLE `ListenHistory` DISABLE KEYS */;
INSERT INTO `ListenHistory` VALUES (1,1,12,21,124),(2,1,1,1,130),(3,1,2,3,164),(4,1,2,3,119),(5,1,2,4,24),(6,2,24,45,133),(7,2,18,33,121),(8,3,4,9,1),(9,4,24,45,133),(10,4,24,45,133),(11,5,15,25,1),(12,6,24,45,16),(13,7,5,10,10),(14,7,6,11,10),(15,7,7,12,10),(16,7,8,14,16),(17,9,21,36,191),(18,9,21,37,92),(19,9,21,38,150),(20,12,11,19,120),(21,8,1,2,10),(22,8,1,1,49),(23,11,16,29,132),(24,12,15,25,123),(25,12,15,26,133),(26,3,22,42,56),(27,10,2,3,133),(28,10,2,4,164),(29,15,21,36,191),(30,15,21,37,92),(31,18,23,44,185),(32,21,17,31,103),(33,19,1,1,7),(34,21,17,32,121),(35,1,20,35,272),(36,1,19,34,143),(37,7,22,42,67);
/*!40000 ALTER TABLE `ListenHistory` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'Misha','mishstudentHSE@yandex.ru','misha123'),(2,'Olga2001','ozerolga@mail.ru','olga22991'),(3,'Gleb007','engineersql@gmail.com','987654321Gleb'),(4,'NastiaKolt','kolt1554@rambler.ru','cnsdnoND!1231'),(5,'MaratCoolGuy','policemanMarat@mail.ru','QQQ123ooo'),(6,'jamesOKINSON','okinator@hotmail.com','MIdcsmDW12dkq'),(7,'WillSmithLegend','willofficailActor@gmail.com','iloverapXY1321'),(8,'ObamaUSA','real.OG1961@whitehouse.com','loveMichelle1964'),(9,'VasiaNEpupkin1998','pupkin.net@mail.ru','imnotpupkin123'),(10,'BigBoss1','rurapper@mail.ru','jCEomc1dedid!!d2'),(11,'Johnsmith000','smithjohn@gmail.com','wcIJ@ind3ow1111'),(12,'JaneHot','icegirl1586@hotmail.com','wcaioH*3io2dmod'),(13,'SarahKonnor','terminator@skynet.io','killallhuman22222'),(14,'person12','personJAKE@rambler.ru','vcwm(13)21emqe32'),(15,'Hieronimous','coolatrist@rambler.ru','ckw3edmco2'),(16,'Jojo123',NULL,'wecOIM(#Dccds'),(17,'kinat0d',NULL,'csdcmO(PX#asc'),(18,'RemboReader','remboGuki@gmail.com','cwewewc311DQ@1!!QCXE'),(19,'BIZZARDCOMP','gamesindustry@game.com','cwecwwm23mo9MDOIWX@Iod1NID#iqx'),(20,'BOBO1','ccromw21@mail.ru','AudiWEK91e3m'),(21,'goblinKnight','killergoblin@gmail.com','ckcmmIO#oi3dcmw'),(23,'User2501',NULL,'cwwcw_)Kcw433');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 DROP PROCEDURE IF EXISTS `author_book_cnt` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `author_book_cnt`()
BEGIN
    SELECT a.author_name, COUNT(aa.audiobook_id) AS audiobook_count
    FROM Author a
    JOIN audiobookService.AuthorAudiobook aa ON aa.author_id = a.author_id
    GROUP BY a.author_name
   	ORDER BY audiobook_count DESC ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cnt_by_author` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `cnt_by_author`(IN cnt CHAR(3))
BEGIN
    SELECT a.author_id, a.author_name, COUNT(aa.audiobook_id) AS audiobook_count
    FROM Author a
    JOIN audiobookService.AuthorAudiobook aa ON aa.author_id = a.author_id
    WHERE a.author_id = cnt
    GROUP BY a.author_name, a.author_id
   	ORDER BY audiobook_count DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

