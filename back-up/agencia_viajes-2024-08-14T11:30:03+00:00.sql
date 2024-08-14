mysqldump: [Warning] Using a password on the command line interface can be insecure.
-- MySQL dump 10.13  Distrib 9.0.1, for Linux (x86_64)
--
-- Host: localhost    Database: agencia_viajes
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Temporary view structure for view `CantidadReservasPorEmpleado`
--

DROP TABLE IF EXISTS `CantidadReservasPorEmpleado`;
/*!50001 DROP VIEW IF EXISTS `CantidadReservasPorEmpleado`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `CantidadReservasPorEmpleado` AS SELECT 
 1 AS `Nombre`,
 1 AS `Email`,
 1 AS `TotalReservas`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Cliente`
--

DROP TABLE IF EXISTS `Cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cliente` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) DEFAULT NULL,
  `Apellido` varchar(100) DEFAULT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `TipoCLiente` varchar(10) NOT NULL COMMENT 'INDICA SI ES UN CLIENTE TIPO PERSONA O AGENCIA',
  PRIMARY KEY (`idCliente`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TABLA QUE ALMACENA LOS CLIENTES DE LA AGENCIA DE VIAJES';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cliente`
--

LOCK TABLES `Cliente` WRITE;
/*!40000 ALTER TABLE `Cliente` DISABLE KEYS */;
INSERT INTO `Cliente` VALUES (1,'Marya','Isakowicz','24 Continental Pass','252-309-6889','misakowicz0@google.com','Persona'),(2,'Vincenz','Agirre','66 Ludington Crossing','570-585-8569','vagirre1@un.org','Persona'),(3,'Burtie','Gisburn','798 Manufacturers Parkway','331-991-8009','bgisburn2@google.com.au','Persona'),(4,'Yardley','Greet','21 Kensington Point','518-259-9238','ygreet3@360.cn','Agencia'),(5,'Remy','Dunniom','535 Sugar Road','319-120-4061','rdunniom4@facebook.com','Agencia'),(6,'Kaleb','Fante','395 Talmadge Pass','156-129-3079','kfante5@devhub.com','Persona'),(7,'Dorita','Cisneros','9593 Calypso Street','830-239-7609','dcisneros6@gravatar.com','Agencia'),(8,'Fabian','Ridsdell','6 Bellgrove Plaza','244-442-7833','fridsdell7@ed.gov','Persona'),(9,'Courtney','Loomis','3 Cottonwood Place','844-291-0696','cloomis8@ovh.net','Persona'),(10,'Brit','Krzysztofiak','7794 Lerdahl Point','430-852-7154','bkrzysztofiak9@amazon.de','Agencia'),(11,'Aron','Danielsohn','4897 Dapin Crossing','172-715-3715','adanielsohna@cyberchimps.com','Agencia'),(12,'Corbin','Feron','7501 Mifflin Court','188-191-5031','cferonb@jimdo.com','Persona'),(13,'Domini','Wackett','7858 Dwight Hill','118-869-0732','dwackettc@ebay.com','Agencia'),(14,'Raphael','Wilse','95 Fuller Point','995-993-2324','rwilsed@ycombinator.com','Agencia'),(15,'Maud','Fiorentino','8 Briar Crest Junction','291-624-9091','mfiorentinoe@twitpic.com','Persona'),(16,'Juliana','Di Maggio','61 Spohn Alley','187-751-2857','jdimaggiof@upenn.edu','Persona'),(17,'Roth','Imason','826 Redwing Hill','901-304-3841','rimasong@issuu.com','Persona'),(18,'Stesha','MacNaughton','09 Waubesa Plaza','259-647-1891','smacnaughtonh@craigslist.org','Agencia'),(19,'Avrit','Leachman','7717 Grasskamp Street','346-179-9130','aleachmani@google.co.jp','Persona'),(20,'Marnie','Nowick','27 Swallow Road','690-662-0086','mnowickj@simplemachines.org','Agencia'),(21,'Lanna','McGrouther','616 Mitchell Park','184-970-0620','lmcgroutherk@blog.com','Persona'),(22,'Cornell','Chishull','2586 Bartelt Parkway','636-508-1791','cchishulll@soundcloud.com','Agencia'),(23,'Norean','Keough','7660 Dwight Circle','882-753-8501','nkeoughm@samsung.com','Persona'),(24,'Jacques','Grinin','38661 Eliot Street','515-202-5493','jgrininn@amazon.de','Agencia'),(25,'Collin','Emberton','20 Cordelia Point','671-701-5835','cembertono@phpbb.com','Agencia'),(26,'Pauly','McMorland','41 Schmedeman Center','597-816-1814','pmcmorlandp@sfgate.com','Persona'),(27,'Amii','Ransfield','75 Nelson Parkway','940-484-8759','aransfieldq@goo.gl','Persona'),(28,'Carlen','Lethieulier','21105 Schiller Circle','378-408-8465','clethieulierr@goodreads.com','Agencia'),(29,'Ines','Adamo','91422 Truax Court','541-530-2939','iadamos@godaddy.com','Persona'),(30,'Duane','Vallintine','49262 Green Alley','911-473-4202','dvallintinet@t-online.de','Agencia'),(31,'Codi','Gasnoll','053 American Lane','559-632-9705','cgasnollu@nyu.edu','Persona'),(32,'Pippo','Skivington','389 Emmet Point','748-353-6257','pskivingtonv@1688.com','Agencia'),(33,'Georas','Marousek','29 Independence Court','848-143-7811','gmarousekw@privacy.gov.au','Persona'),(34,'Brice','Kidman','7991 Welch Street','696-524-8604','bkidmanx@sakura.ne.jp','Persona'),(35,'Demetra','Barlass','960 Victoria Way','586-189-9896','dbarlassy@livejournal.com','Agencia'),(36,'Chariot','Petticrew','54143 Bashford Center','465-990-4915','cpetticrewz@narod.ru','Agencia'),(37,'Candide','Allso','6424 Lakewood Lane','706-225-3377','callso10@edublogs.org','Agencia'),(38,'Godfrey','Haisell','54 Birchwood Terrace','113-236-9115','ghaisell11@un.org','Agencia'),(39,'Caesar','Jeffray','83 Towne Circle','539-317-5235','cjeffray12@dot.gov','Agencia'),(40,'Claudina','Slarke','030 Glacier Hill Drive','370-142-2421','cslarke13@lycos.com','Persona'),(41,'Ailsun','Hallan','5 Mitchell Terrace','362-362-0505','ahallan14@theatlantic.com','Persona'),(42,'Camilla','Colman','3589 Elmside Street','757-417-8386','ccolman15@fc2.com','Agencia'),(43,'Dale','Hesse','713 Old Shore Place','547-203-2201','dhesse16@blogtalkradio.com','Persona'),(44,'Ida','Glanester','005 Farwell Street','315-974-2430','iglanester17@360.cn','Agencia'),(45,'Whitney','Trunks','26 Lillian Park','211-505-7845','wtrunks18@php.net','Agencia'),(46,'Jennette','Gaitone','14088 Northview Street','580-924-6204','jgaitone19@twitter.com','Persona'),(47,'Dorella','Dubique','4585 Brown Court','486-962-8145','ddubique1a@webeden.co.uk','Agencia'),(48,'Artus','Dictus','11 Lotheville Hill','691-957-5045','adictus1b@nhs.uk','Persona'),(49,'Gaston','Gowthorpe','9 Hoard Avenue','758-269-1701','ggowthorpe1c@chicagotribune.com','Agencia'),(50,'Kellsie','Cullinane','7 Quincy Plaza','768-201-7149','kcullinane1d@reference.com','Agencia'),(51,'Dniren','Robroe','13567 Bartillon Avenue','204-820-6287','drobroe1e@amazon.co.uk','Agencia'),(52,'Oralle','Canelas','2 Springs Way','974-587-7520','ocanelas1f@dot.gov','Agencia'),(53,'Theadora','Woodwing','9 Norway Maple Terrace','436-481-6280','twoodwing1g@goo.ne.jp','Agencia'),(54,'Karita','McLuckie','6414 Golf Course Crossing','802-322-7683','kmcluckie1h@pbs.org','Agencia'),(55,'Arne','Aylesbury','02 Packers Plaza','484-340-1263','aaylesbury1i@spiegel.de','Persona'),(56,'Washington','Moyer','44 Helena Alley','184-577-6048','wmoyer1j@unblog.fr','Persona'),(57,'Sherri','Brach','234 Kensington Point','578-386-6783','sbrach1k@creativecommons.org','Agencia'),(58,'Cathee','Wrenn','84039 Grover Crossing','897-710-5589','cwrenn1l@hexun.com','Persona'),(59,'Martie','Mc Meekan','06 Arrowood Court','302-648-5507','mmcmeekan1m@etsy.com','Persona'),(60,'Domenic','De la Yglesia','68 Mesta Circle','342-186-5067','ddelayglesia1n@merriam-webster.com','Agencia'),(61,'Buiron','Cranmer','6510 Sage Drive','301-162-4900','bcranmer1o@ucoz.ru','Persona'),(62,'Archambault','Robertson','51 Ilene Court','964-372-2029','arobertson1p@squarespace.com','Agencia'),(63,'Keen','Pitway','1474 Pepper Wood Drive','229-919-2821','kpitway1q@gmpg.org','Agencia'),(64,'Olag','Tyas','7077 Clemons Street','933-103-8383','otyas1r@examiner.com','Persona'),(65,'Audra','Ferrone','8 Dwight Avenue','677-525-0872','aferrone1s@accuweather.com','Agencia'),(66,'Tan','Tomaschke','0031 Coolidge Junction','627-961-7292','ttomaschke1t@dot.gov','Persona'),(67,'Arleyne','Cancellieri','237 Shopko Center','238-134-5888','acancellieri1u@about.me','Agencia'),(68,'Lorant','Du Plantier','682 Utah Street','626-509-9098','lduplantier1v@xing.com','Persona'),(69,'Abelard','Bearns','987 Prairie Rose Circle','940-352-5099','abearns1w@indiegogo.com','Agencia'),(70,'Berne','Greed','091 Truax Way','805-381-6993','bgreed1x@dmoz.org','Agencia'),(71,'Silvia','Denys','2 Pennsylvania Junction','307-845-0147','sdenys1y@printfriendly.com','Agencia'),(72,'Phebe','Jeandon','70842 Pleasure Place','183-474-0588','pjeandon1z@cyberchimps.com','Persona'),(73,'Val','Rubens','85810 Duke Point','291-773-4730','vrubens20@spiegel.de','Agencia'),(74,'Garey','Bleue','2151 Mesta Alley','243-709-7919','gbleue21@naver.com','Agencia'),(75,'Min','Yantsev','505 1st Point','667-188-7834','myantsev22@hibu.com','Persona'),(76,'Betta','Bertholin','716 Manley Drive','475-810-2488','bbertholin23@hexun.com','Persona'),(77,'Hailey','Adshede','810 Summerview Way','392-220-0770','hadshede24@mozilla.org','Persona'),(78,'Boycie','Stapforth','6439 Veith Lane','831-927-1842','bstapforth25@canalblog.com','Persona'),(79,'Flossi','Zanicchi','5 Montana Way','725-117-0294','fzanicchi26@hp.com','Agencia'),(80,'Oliver','Alwen','847 Sundown Junction','752-378-7051','oalwen27@51.la','Agencia'),(81,'Meredeth','Chelsom','102 Rusk Alley','760-204-0444','mchelsom28@1und1.de','Agencia'),(82,'Hazlett','Artrick','697 Service Trail','631-129-0611','hartrick29@answers.com','Persona'),(83,'Turner','Orto','24536 Bunker Hill Center','740-386-8639','torto2a@hatena.ne.jp','Agencia'),(84,'Gratia','Billam','4401 Barby Street','617-433-0200','gbillam2b@trellian.com','Persona'),(85,'Pet','Arboine','81973 Spohn Plaza','651-214-5129','parboine2c@cmu.edu','Agencia'),(86,'Harlie','McElane','08408 Ridgeview Street','810-248-5731','hmcelane2d@ox.ac.uk','Persona'),(87,'Niles','Purrington','1242 Macpherson Street','533-360-9123','npurrington2e@webeden.co.uk','Agencia'),(88,'Elianore','Elliff','6286 Scoville Point','812-690-5866','eelliff2f@usatoday.com','Persona'),(89,'Phyllida','Casone','6866 Crownhardt Crossing','680-245-3473','pcasone2g@tinyurl.com','Persona'),(90,'Robers','Silson','63 Fuller Point','207-209-0420','rsilson2h@is.gd','Persona'),(91,'Collen','Blenkharn','586 7th Center','586-957-1300','cblenkharn2i@jigsy.com','Persona'),(92,'Eugen','Tudge','94 Declaration Plaza','787-614-3692','etudge2j@hatena.ne.jp','Agencia'),(93,'Buiron','Calvard','1 Clarendon Hill','530-756-8243','bcalvard2k@spiegel.de','Agencia'),(94,'Weber','Grishechkin','62 Vahlen Circle','616-804-3945','wgrishechkin2l@amazon.co.uk','Persona'),(95,'Randie','Goffe','358 Anniversary Parkway','446-771-4381','rgoffe2m@flavors.me','Agencia'),(96,'Drud','Carden','8 Bartillon Place','866-996-0374','dcarden2n@dedecms.com','Persona'),(97,'Charmian','MacCartan','547 Fieldstone Court','369-462-8583','cmaccartan2o@thetimes.co.uk','Agencia'),(98,'Monte','Normavill','3 Service Hill','599-996-4934','mnormavill2p@nifty.com','Agencia'),(99,'Aubry','Aarons','11 Hintze Place','357-935-7219','aaarons2q@weather.com','Agencia'),(100,'Celina','Siemandl','96878 Meadow Valley Pass','520-124-6074','csiemandl2r@myspace.com','Agencia');
/*!40000 ALTER TABLE `Cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cliente_Tour_Paquete`
--

DROP TABLE IF EXISTS `Cliente_Tour_Paquete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cliente_Tour_Paquete` (
  `idClienteTourPaquete` int NOT NULL AUTO_INCREMENT,
  `idTourPaquete` int DEFAULT NULL,
  `idCliente` int DEFAULT NULL,
  PRIMARY KEY (`idClienteTourPaquete`),
  KEY `fk_Cliente_Tour_Paquete_Tour_Paquete` (`idTourPaquete`),
  KEY `fk_Cliente_Tour_Paquete_Cliente` (`idCliente`),
  CONSTRAINT `fk_Cliente_Tour_Paquete_Cliente` FOREIGN KEY (`idCliente`) REFERENCES `Cliente` (`idCliente`),
  CONSTRAINT `fk_Cliente_Tour_Paquete_Tour_Paquete` FOREIGN KEY (`idTourPaquete`) REFERENCES `Tour_Paquete` (`idTourPaquete`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TABLA QUE ALMACENA LAS RESERVAS DE TOURS Y PAQUETES';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cliente_Tour_Paquete`
--

LOCK TABLES `Cliente_Tour_Paquete` WRITE;
/*!40000 ALTER TABLE `Cliente_Tour_Paquete` DISABLE KEYS */;
INSERT INTO `Cliente_Tour_Paquete` VALUES (1,15,90),(2,12,88),(3,20,75),(4,17,84),(5,15,29),(6,11,100),(7,6,51),(8,14,67),(9,15,66),(10,14,44),(11,25,48),(12,24,37),(13,26,40),(14,29,17),(15,27,16),(16,24,99),(17,5,95),(18,20,40),(19,26,8),(20,9,54),(21,29,27),(22,9,18),(23,24,65),(24,21,73),(25,7,36),(26,19,42),(27,11,53),(28,28,23),(29,10,26),(30,21,22),(31,10,5),(32,1,91),(33,10,38),(34,5,49),(35,3,12),(36,7,21),(37,12,12),(38,20,62),(39,7,60),(40,22,57),(41,17,39),(42,19,57),(43,2,3),(44,20,99),(45,12,24),(46,29,27),(47,4,59),(48,21,10),(49,7,81),(50,29,70);
/*!40000 ALTER TABLE `Cliente_Tour_Paquete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `DestinoConMasReservas`
--

DROP TABLE IF EXISTS `DestinoConMasReservas`;
/*!50001 DROP VIEW IF EXISTS `DestinoConMasReservas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `DestinoConMasReservas` AS SELECT 
 1 AS `Destino`,
 1 AS `TotalReservas`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Empleado`
--

DROP TABLE IF EXISTS `Empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Empleado` (
  `idEmpleado` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Email` varchar(100) NOT NULL,
  PRIMARY KEY (`idEmpleado`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TABLA QUE ALMACENA LOS EMPLEADOS DE LA AGENCIA DE VIAJES';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empleado`
--

LOCK TABLES `Empleado` WRITE;
/*!40000 ALTER TABLE `Empleado` DISABLE KEYS */;
INSERT INTO `Empleado` VALUES (1,'Buffy Mullinger','168-964-4409','bmullinger0@blog.com'),(2,'Bertrando Cariss','668-458-9827','bcariss1@ocn.ne.jp'),(3,'Stanislaus Gingold','451-945-8471','sgingold2@eventbrite.com'),(4,'Vonni Bierling','943-399-4035','vbierling3@homestead.com'),(5,'Drew Avis','973-267-4695','davis4@artisteer.com'),(6,'Lloyd Vatini','705-236-9933','lvatini5@pcworld.com'),(7,'Milena Christou','294-322-1069','mchristou6@npr.org'),(8,'Eward Bretherton','750-334-6492','ebretherton7@cargocollective.com'),(9,'Cherida Wharin','789-305-4102','cwharin8@yolasite.com'),(10,'Becky Cozins','748-295-9494','bcozins9@springer.com'),(11,'Carolina Vasilkov','732-869-1236','cvasilkova@google.com.hk'),(12,'Wilfred Brinkley','406-665-9051','wbrinkleyb@theguardian.com'),(13,'Ursa Reddin','144-540-2482','ureddinc@craigslist.org'),(14,'Washington Handlin','748-512-6251','whandlind@privacy.gov.au'),(15,'Zack McBride','541-575-9737','zmcbridee@arizona.edu'),(16,'Philippine Ellerker','402-570-0362','pellerkerf@imdb.com'),(17,'Sibyl Blaxley','566-608-1355','sblaxleyg@toplist.cz'),(18,'Pete Legendre','126-734-2450','plegendreh@surveymonkey.com'),(19,'Loise Sandall','766-222-3584','lsandalli@google.de'),(20,'Tandy Notti','883-287-8221','tnottij@prnewswire.com');
/*!40000 ALTER TABLE `Empleado` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_before_insert_empleado` BEFORE INSERT ON `Empleado` FOR EACH ROW BEGIN 
	DECLARE email_count INT;
	
	SELECT COUNT(1) INTO email_count
		FROM Empleado  
	WHERE Email = NEW.Email;

	IF email_count > 0 THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El email indicado corresponde a un empleado.';
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Hotel`
--

DROP TABLE IF EXISTS `Hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hotel` (
  `idHotel` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `PrecioPorNoche` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idHotel`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TABLA QUE ALMACENA LOS HOTELES DISPONIBLES';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hotel`
--

LOCK TABLES `Hotel` WRITE;
/*!40000 ALTER TABLE `Hotel` DISABLE KEYS */;
INSERT INTO `Hotel` VALUES (1,'Douglas, Spencer and Lindgren','28 Roxbury Lane','(878) 8059887',1104.71),(2,'Kovacek, Maggio and Auer','54425 Shasta Avenue','(838) 4293501',2335.44),(3,'Prosacco-Konopelski','00 Dwight Alley','(455) 9553528',757.48),(4,'Heaney Inc','7668 Sullivan Drive','(460) 9377097',994.66),(5,'DuBuque-Robel','941 Del Sol Parkway','(724) 2119072',541.09),(6,'Waters, Braun and Conn','17571 Melrose Circle','(257) 4002824',1472.72),(7,'Kling-Davis','22 North Pass','(469) 2177261',795.70),(8,'Effertz LLC','1 Jenna Court','(312) 2303978',551.38),(9,'Oberbrunner-Emmerich','27283 Sage Lane','(250) 3146194',1535.75),(10,'Olson Inc','33537 Brickson Park Street','(599) 9223274',60.02),(11,'Rogahn LLC','96528 Hudson Road','(974) 1754490',1294.92),(12,'Koelpin-Upton','55144 Lawn Trail','(510) 3323935',123.56),(13,'Larson, Hayes and Konopelski','23 Debs Hill','(630) 7666728',952.76),(14,'Miller-Tillman','1250 Carpenter Circle','(675) 5432146',831.57),(15,'Donnelly-Braun','8975 Duke Hill','(386) 6276820',2260.26),(16,'Jacobson-Mohr','65698 Lawn Hill','(811) 3928743',727.34),(17,'Gulgowski, Keebler and Ledner','06 Scott Avenue','(344) 1155782',1599.20),(18,'Mueller-Lesch','81296 Maple Center','(834) 3596469',114.23),(19,'Grady, Gusikowski and Schumm','660 Saint Paul Park','(100) 3829632',2030.07),(20,'Swaniawski, Bode and Hodkiewicz','54 Bartillon Lane','(990) 4064588',978.74),(21,'Hackett and Sons','05 Sommers Junction','(456) 2571931',1918.00),(22,'Bergnaum, Walker and VonRueden','2672 Judy Way','(276) 3167686',1237.25),(23,'Hauck, Welch and Hodkiewicz','91666 Pankratz Court','(219) 7171023',1586.41),(24,'Feil-Harber','4044 Holy Cross Road','(750) 7599248',1368.58),(25,'Kunze, Toy and Hansen','25 Loeprich Pass','(248) 1099117',1585.97),(26,'Keeling, Fritsch and Harber','240 Prairie Rose Road','(313) 4517655',2295.01),(27,'Kerluke Inc','2 Melby Trail','(451) 8039908',601.66),(28,'Osinski-Crist','9 Garrison Parkway','(508) 5933480',2175.39),(29,'Ebert and Sons','5 Loftsgordon Hill','(415) 5260673',443.44),(30,'Maggio LLC','0 Union Parkway','(239) 4860131',2318.78),(31,'Kessler, Lemke and McKenzie','97 Linden Point','(206) 4637591',1420.89),(32,'Kunze, Robel and Conroy','77470 Bluestem Parkway','(141) 6454899',316.27),(33,'Schneider-Windler','7 American Ash Court','(270) 5110054',1008.68),(34,'Auer, Deckow and Gottlieb','99288 Buell Trail','(100) 5253667',1272.69),(35,'Jacobson, Wilderman and Boyer','0 Schiller Avenue','(712) 8280828',686.46),(36,'Wilderman and Sons','3 Ruskin Park','(710) 7238484',338.45),(37,'Reichert LLC','3112 Jenna Plaza','(337) 9567627',1601.70),(38,'Nicolas, Mitchell and Wilkinson','0 Rusk Parkway','(840) 4023654',1366.59),(39,'Mraz Group','3 Iowa Drive','(177) 1224488',1640.29),(40,'Gleason LLC','5992 Canary Avenue','(487) 6624169',1146.28),(41,'Dicki, Kihn and Kovacek','763 Shasta Pass','(346) 7259562',1343.13),(42,'Cremin-Lesch','624 Rigney Plaza','(111) 7295690',2017.92),(43,'Wolf, Terry and Ullrich','7 Blackbird Hill','(323) 3310620',1429.65),(44,'Braun, Collins and Lindgren','198 Arkansas Center','(175) 7660215',370.27),(45,'Wintheiser-Lowe','23 Melody Trail','(703) 4935680',65.29),(46,'Botsford Inc','59334 Mccormick Point','(932) 7556680',2221.64),(47,'Runolfsdottir, Brown and Hegmann','3 Derek Point','(357) 9159395',511.11),(48,'Zulauf, McDermott and Zboncak','08634 Bellgrove Road','(170) 4609438',2064.55),(49,'Durgan, McCullough and Friesen','666 Onsgard Court','(205) 6511809',2176.49),(50,'McDermott, Abshire and Heaney','4492 Sauthoff Trail','(189) 7617201',475.21),(51,'VonRueden, Bayer and Terry','40192 Clove Plaza','(757) 8470654',197.51),(52,'Wilkinson-Senger','150 Northfield Pass','(609) 5636393',90.98),(53,'Adams, Schoen and Kuphal','3 Sunfield Drive','(564) 5617280',2086.36),(54,'Beahan, Nader and Gislason','7221 Arkansas Lane','(385) 6917024',794.96),(55,'Graham-Okuneva','2200 North Place','(300) 8550531',1597.74),(56,'Lemke-Renner','2 Dayton Place','(864) 6851282',2180.12),(57,'Schmidt Inc','66 Prairie Rose Place','(890) 8233585',1221.79),(58,'Bechtelar-Thiel','32836 Clove Lane','(905) 5628709',109.00),(59,'Brown LLC','91 Kennedy Plaza','(485) 9559496',261.51),(60,'Ebert-Klocko','3126 Lotheville Court','(309) 8653398',1114.60),(61,'Hand and Sons','88260 Leroy Court','(515) 1930801',1573.46),(62,'Ortiz-Gislason','42 Porter Trail','(631) 5574923',711.33),(63,'Connelly-Moen','4532 Meadow Valley Junction','(866) 8793774',1354.23),(64,'Jenkins-Schroeder','27805 Burning Wood Terrace','(922) 3311390',2230.05),(65,'Graham LLC','758 Marquette Pass','(207) 6167979',1018.99),(66,'Hoppe-Beahan','4493 Melvin Junction','(772) 5095076',1494.19),(67,'Gerhold, Kreiger and Denesik','12 John Wall Junction','(820) 6896368',134.93),(68,'Frami-Lowe','724 Eggendart Road','(629) 9343135',2312.80),(69,'Lowe-Jenkins','0894 Sunbrook Alley','(435) 1640843',146.68),(70,'Harvey-Koss','65731 Bonner Court','(786) 9620013',1251.02),(71,'Gutmann LLC','6 Lakeland Street','(261) 7651803',2473.45),(72,'Collier Group','0 Heffernan Hill','(813) 7906760',1301.81),(73,'Beer Group','83 Monica Plaza','(735) 6802696',588.79),(74,'Pfannerstill, Purdy and Zieme','36118 Kipling Trail','(488) 8431042',782.30),(75,'Bogisich LLC','7 Caliangt Crossing','(654) 6823466',1427.49),(76,'Pagac, Kulas and Kuphal','63 Brickson Park Lane','(321) 9175112',746.70),(77,'Macejkovic and Sons','3207 Grasskamp Point','(693) 9574638',540.34),(78,'Deckow and Sons','7 Golden Leaf Point','(690) 5066984',1146.53),(79,'Herman Inc','96384 Fallview Center','(963) 9338287',1692.37),(80,'VonRueden, Walter and Rempel','8938 Rusk Terrace','(277) 9362244',2370.11),(81,'Daugherty LLC','52663 Trailsway Lane','(151) 1184295',2194.90),(82,'Volkman, Ritchie and Weissnat','825 Kipling Hill','(929) 5324065',1309.36),(83,'Feeney-Roberts','0 Hayes Street','(359) 6704464',203.27),(84,'Mueller-Simonis','23 Hoard Parkway','(704) 2866078',972.89),(85,'Bernhard-O\'Hara','23021 Buhler Lane','(878) 1625391',1804.36),(86,'Leffler and Sons','4202 Sachtjen Hill','(284) 6871927',358.27),(87,'Mueller-Jenkins','5823 Morrow Alley','(689) 6135729',2350.35),(88,'Gulgowski, Schaefer and Wolff','0 Straubel Trail','(240) 7513272',1269.10),(89,'Abernathy Group','72 Buhler Court','(983) 9730807',2447.18),(90,'Williamson, Little and Stamm','88166 Starling Hill','(595) 7372175',768.85),(91,'Jacobs, Hamill and Haley','93671 Vermont Street','(393) 4761659',237.66),(92,'McGlynn-Nitzsche','1657 Springs Drive','(555) 2112356',2244.44),(93,'West LLC','09257 Pepper Wood Parkway','(913) 3720706',1992.78),(94,'Kozey LLC','1330 Old Gate Place','(966) 8927652',1058.32),(95,'Lindgren-Johnson','77 Summer Ridge Avenue','(312) 5560324',974.06),(96,'Schneider-Jacobi','2 Talmadge Circle','(248) 1087399',1920.60),(97,'Robel, O\'Reilly and Johnston','326 Fair Oaks Crossing','(602) 3499893',1910.80),(98,'Braun Inc','1 Macpherson Pass','(554) 8101167',1937.33),(99,'Grady LLC','1561 Dryden Place','(947) 3819602',798.05),(100,'Crooks-Rath','03 Mayer Way','(877) 1578261',1936.40),(101,'Hackett and Sons','20 Crest Line Parkway','(132) 3146141',842.42),(102,'Legros, Stroman and Krajcik','6889 Hudson Terrace','(592) 8858019',156.05),(103,'Jaskolski, Flatley and Pollich','48819 Vermont Parkway','(663) 5511794',2048.22),(104,'Schaefer-Kshlerin','9282 Comanche Way','(958) 1915460',378.09),(105,'Reilly LLC','7559 Northwestern Street','(445) 5767658',2176.76),(106,'Hessel, Monahan and Bosco','672 Fair Oaks Circle','(526) 8956371',1738.10),(107,'Hackett-Wuckert','6 Shoshone Way','(652) 8236367',1102.12),(108,'Schaden, Kautzer and Johns','130 Kingsford Center','(248) 6711109',1855.93),(109,'Prosacco Inc','50 Talisman Plaza','(992) 1775545',1848.67),(110,'Konopelski-Hartmann','670 Ridge Oak Avenue','(597) 1222583',1184.03),(111,'Nienow, Hyatt and Nader','8 Rigney Circle','(812) 1060371',2292.83),(112,'Collier-Ondricka','199 Bultman Court','(268) 8624395',736.05),(113,'Bode, Beahan and Yost','65 Blaine Road','(413) 8249944',1076.96),(114,'Bogisich Inc','4684 Browning Circle','(389) 4237746',853.29),(115,'Gulgowski-Hammes','17 Hudson Terrace','(516) 2878426',2286.16),(116,'Casper-Boyer','23 Waywood Lane','(980) 7228770',1855.62),(117,'Bosco Inc','7 Jana Pass','(563) 7736358',96.21),(118,'Stiedemann, Ankunding and Hauck','96762 Hansons Point','(867) 4277468',1440.48),(119,'Botsford LLC','45783 Southridge Road','(891) 5694265',1409.18),(120,'Waters LLC','92 Hoffman Alley','(782) 4691207',502.80),(121,'Nikolaus-Shields','2485 Corscot Plaza','(614) 4722663',1644.30),(122,'Mills Inc','5535 Messerschmidt Center','(271) 4887000',2270.63),(123,'Lubowitz, Kuhn and Fritsch','1800 Fieldstone Court','(173) 5229902',1071.71),(124,'Dach LLC','4217 Ohio Alley','(197) 1088942',2365.49),(125,'Jast, Leannon and Robel','21 Superior Drive','(720) 8258741',595.90),(126,'Sauer and Sons','041 Kim Circle','(913) 4052155',1205.09),(127,'Schinner LLC','217 Pearson Park','(496) 5451658',99.96),(128,'Steuber and Sons','263 Merry Lane','(136) 7958493',2472.23),(129,'Ledner Inc','0 Glendale Avenue','(318) 1549300',717.90),(130,'Lind, Witting and Marvin','67138 Pine View Way','(661) 2723233',2011.76),(131,'Klocko LLC','1138 Sachs Circle','(109) 5561518',381.55),(132,'Halvorson, Berge and Hirthe','8873 Meadow Vale Pass','(357) 2983372',1160.09),(133,'Herman Inc','3 Paget Place','(592) 7367528',1178.11),(134,'Schuppe and Sons','869 Marquette Street','(699) 1105616',1456.93),(135,'Goodwin-Rutherford','597 Welch Park','(526) 3758362',1389.85),(136,'Mayer-Bednar','1324 Randy Avenue','(880) 3384911',2414.32),(137,'Runolfsson, Berge and Gleichner','15 Cambridge Parkway','(491) 7082038',717.73),(138,'Gleichner, Marks and Murphy','5 Loftsgordon Hill','(358) 8672104',666.39),(139,'Hilll, Blanda and Marks','050 Delaware Place','(900) 8661055',1425.75),(140,'Gleason Inc','48 Commercial Terrace','(101) 9003365',2404.59),(141,'Frami, O\'Keefe and Moore','78 Duke Avenue','(642) 5826752',1883.35),(142,'Boyer-Walter','692 Veith Way','(699) 5508396',1705.70),(143,'Hudson, Lehner and Kshlerin','8091 American Ash Place','(980) 1308174',1669.23),(144,'Koepp LLC','4952 Granby Crossing','(897) 5908999',937.41),(145,'Witting, Spencer and Brown','6578 Garrison Way','(811) 3080232',697.63),(146,'Strosin LLC','4713 Westport Center','(212) 3666383',2038.09),(147,'Renner Inc','53741 Emmet Trail','(713) 5513371',1467.76),(148,'Powlowski-Dibbert','1 Arapahoe Road','(276) 7317561',1746.45),(149,'Reynolds-Crist','8749 Artisan Court','(369) 9512237',1539.36),(150,'O\'Connell-D\'Amore','72662 Stang Circle','(218) 6708693',1904.15),(151,'Streich, Okuneva and DuBuque','6570 Maple Wood Lane','(773) 9257242',851.92),(152,'Hodkiewicz, Rempel and Dooley','47143 Kim Terrace','(557) 8283836',1406.31),(153,'Braun LLC','4862 Stang Road','(385) 2475881',853.68),(154,'Morissette, Wintheiser and Ullrich','426 Tomscot Hill','(730) 4198130',526.82),(155,'Harris LLC','5 Golf Hill','(888) 8328039',807.27),(156,'Wunsch, Bruen and Fisher','8 Little Fleur Parkway','(973) 7450612',826.10),(157,'Harris, Orn and Bahringer','98947 Sage Center','(409) 5067186',298.12),(158,'Corkery, Kemmer and Rosenbaum','431 Montana Plaza','(612) 5707511',1570.73),(159,'Weber, Collins and Quitzon','5511 Milwaukee Street','(864) 9934062',1789.72),(160,'Feil, Berge and Bahringer','11690 Lillian Junction','(803) 2261455',331.70),(161,'Rowe and Sons','4 Welch Avenue','(233) 2000072',688.96),(162,'Wuckert Inc','34484 Canary Crossing','(862) 1082455',1911.18),(163,'Wolff-O\'Connell','69170 Raven Trail','(512) 9429599',1352.93),(164,'Bogisich, Krajcik and Medhurst','6723 Sunfield Parkway','(511) 5334000',1248.59),(165,'Zulauf, Leffler and Torp','7203 Del Sol Crossing','(889) 1432083',1219.65),(166,'Spencer-Ortiz','4387 Walton Street','(632) 9559459',2432.21),(167,'Torp Inc','47 Badeau Court','(900) 4384822',1771.29),(168,'Ruecker, Price and Marks','34 Clemons Way','(599) 2650491',795.66),(169,'Walsh and Sons','8556 Acker Crossing','(352) 5352020',367.78),(170,'Greenfelder-Schaden','8 6th Street','(784) 5532965',899.81),(171,'Rutherford-Hermann','5 Kinsman Lane','(846) 6721870',1016.33),(172,'Kihn-Hansen','868 Warner Street','(624) 5904866',1952.81),(173,'Sauer and Sons','692 Susan Court','(834) 9214925',91.73),(174,'Schumm-Pollich','77532 Kinsman Pass','(770) 5544146',2465.51),(175,'Prosacco-Smith','6 Pawling Hill','(664) 3076667',344.93),(176,'Rice Group','53809 Hudson Crossing','(373) 8255749',2147.15),(177,'Kertzmann Inc','837 Vera Center','(134) 5651230',688.43),(178,'Runolfsson, Skiles and Klein','72 Everett Place','(829) 6570479',689.12),(179,'Stroman-Predovic','53 Ridgeview Park','(145) 4086071',109.83),(180,'Marks LLC','945 Dennis Alley','(394) 4253989',569.84),(181,'Konopelski, Borer and Daugherty','8 Center Junction','(325) 8707937',2098.81),(182,'Swaniawski, McLaughlin and Carter','7961 Memorial Park','(994) 9553335',1404.00),(183,'Von-Bartoletti','2 Pierstorff Circle','(667) 3202457',1333.24),(184,'Homenick Inc','74742 Fisk Center','(123) 4204739',980.33),(185,'Quigley Group','25 Linden Crossing','(874) 3913512',1575.47),(186,'Sporer Inc','534 Nova Center','(925) 2232498',2008.75),(187,'Lowe-Lebsack','236 Buell Junction','(800) 4443361',546.94),(188,'Bechtelar LLC','1339 Dakota Circle','(954) 8374234',2436.86),(189,'Jaskolski, Osinski and Ortiz','8 Cottonwood Center','(805) 9625347',2420.54),(190,'Hessel LLC','488 Larry Crossing','(739) 4734032',84.56),(191,'Leuschke, Bauch and Morissette','1 Green Pass','(606) 7060233',68.74),(192,'Kutch Group','055 Swallow Terrace','(613) 7555284',2038.91),(193,'Luettgen-Sawayn','92 Myrtle Point','(106) 1120701',1701.66),(194,'Armstrong-Breitenberg','49 Arizona Trail','(156) 1664675',165.65),(195,'Schmidt Inc','39 Scott Court','(533) 4418247',2131.79),(196,'Hartmann-Franecki','4 American Ash Court','(192) 6612954',301.00),(197,'Walker, Dibbert and Jones','20 Quincy Court','(941) 4819329',1312.44),(198,'Hand-Lubowitz','2 Grayhawk Parkway','(325) 4480473',523.85),(199,'Blick Inc','0886 Memorial Trail','(893) 3981861',2222.15),(200,'Lynch-Blick','353 Blaine Junction','(945) 7138055',1745.45);
/*!40000 ALTER TABLE `Hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Log_Auditoria`
--

DROP TABLE IF EXISTS `Log_Auditoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Log_Auditoria` (
  `idLog` int NOT NULL AUTO_INCREMENT,
  `NombreTabla` varchar(100) DEFAULT NULL,
  `NombreColumna` varchar(100) DEFAULT NULL,
  `ValorAnterior` varchar(255) DEFAULT NULL,
  `ValorNuevo` varchar(255) DEFAULT NULL,
  `Usuario` varchar(100) DEFAULT NULL,
  `FechaActualizacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idLog`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabla para registrar los cambios realizados en las tablas de la BD';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Log_Auditoria`
--

LOCK TABLES `Log_Auditoria` WRITE;
/*!40000 ALTER TABLE `Log_Auditoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `Log_Auditoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reserva`
--

DROP TABLE IF EXISTS `Reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reserva` (
  `idReserva` int NOT NULL AUTO_INCREMENT,
  `FechaReserva` datetime DEFAULT NULL,
  `FechaViaje` datetime DEFAULT NULL,
  `idCliente` int DEFAULT NULL,
  `idViaje` int DEFAULT NULL,
  `idEmpleado` int DEFAULT NULL,
  PRIMARY KEY (`idReserva`),
  KEY `fk_reserva_cliente` (`idCliente`),
  KEY `fk_reserva_viaje` (`idViaje`),
  KEY `fk_reserva_empleado` (`idEmpleado`),
  CONSTRAINT `fk_reserva_cliente` FOREIGN KEY (`idCliente`) REFERENCES `Cliente` (`idCliente`),
  CONSTRAINT `fk_reserva_empleado` FOREIGN KEY (`idEmpleado`) REFERENCES `Empleado` (`idEmpleado`),
  CONSTRAINT `fk_reserva_viaje` FOREIGN KEY (`idViaje`) REFERENCES `Viaje` (`idViaje`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TABLA QUE ALMACENA LAS RESERVAS DE VIAJES';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reserva`
--

LOCK TABLES `Reserva` WRITE;
/*!40000 ALTER TABLE `Reserva` DISABLE KEYS */;
INSERT INTO `Reserva` VALUES (1,'2024-04-17 19:37:37','2023-10-13 23:59:48',30,7,3),(2,'2024-05-20 08:00:49','2024-04-19 06:53:45',18,20,12),(3,'2024-01-13 08:14:05','2024-01-04 20:40:36',31,25,15),(4,'2023-09-03 22:09:19','2024-04-12 12:10:27',66,8,18),(5,'2024-06-01 18:47:03','2024-02-14 01:13:07',10,15,8),(6,'2023-09-21 07:46:21','2023-07-27 23:12:35',50,10,12),(7,'2024-04-16 01:41:44','2023-08-11 12:58:10',86,5,10),(8,'2023-11-19 21:23:55','2024-04-23 02:47:07',56,4,3),(9,'2024-04-22 22:44:11','2024-06-05 16:18:00',2,20,6),(10,'2023-10-19 11:59:35','2024-04-20 19:54:30',15,5,9),(11,'2023-09-06 03:46:53','2024-02-19 08:48:00',24,5,14),(12,'2023-07-20 09:24:54','2023-12-15 07:00:39',5,23,12),(13,'2023-09-21 08:56:36','2024-02-06 05:56:19',11,9,8),(14,'2023-11-17 04:20:45','2023-10-29 08:20:57',14,11,9),(15,'2024-05-29 09:50:30','2024-01-05 16:43:58',87,2,19),(16,'2023-08-22 13:16:42','2023-07-19 04:36:49',40,13,4),(17,'2024-04-09 08:23:39','2023-07-25 22:04:37',100,17,10),(18,'2023-12-19 15:16:58','2023-07-16 19:45:20',79,3,2),(19,'2023-12-08 20:45:25','2024-02-03 15:01:43',74,3,17),(20,'2023-07-11 21:20:21','2023-11-06 18:33:31',58,19,2),(21,'2023-07-28 17:16:39','2024-02-15 20:24:46',25,13,20),(22,'2023-08-19 01:52:37','2023-08-11 10:15:59',52,8,1),(23,'2023-12-28 09:34:48','2024-01-01 12:49:19',68,19,4),(24,'2024-02-07 00:40:38','2024-06-08 15:34:53',7,7,5),(25,'2024-05-11 07:16:57','2023-10-10 13:58:10',58,20,5),(26,'2023-10-13 09:04:34','2023-07-30 16:50:50',14,18,13),(27,'2023-08-18 15:47:35','2023-09-21 13:48:25',1,1,11),(28,'2024-03-03 21:23:51','2024-02-26 10:01:10',23,6,15),(29,'2024-03-12 23:40:37','2024-03-01 14:26:32',5,3,16),(30,'2023-08-10 01:37:44','2024-06-26 09:10:59',34,13,8),(31,'2023-12-14 22:48:11','2024-02-05 16:44:49',47,20,11),(32,'2023-12-19 21:08:40','2024-03-12 06:20:58',92,14,8),(33,'2024-02-08 01:07:17','2024-06-21 14:01:41',12,13,2),(34,'2024-02-07 15:27:56','2024-02-08 13:18:42',45,13,20),(35,'2024-01-22 17:26:42','2024-01-28 06:05:28',30,11,10),(36,'2024-01-14 07:31:34','2023-12-11 04:46:06',89,2,5),(37,'2023-08-23 04:09:25','2023-12-17 02:28:04',2,20,9),(38,'2024-03-31 00:38:16','2024-06-12 14:34:28',99,3,10),(39,'2024-01-11 17:15:35','2024-05-26 04:42:50',17,17,15),(40,'2024-02-25 23:29:06','2024-01-08 09:10:19',95,24,19),(41,'2023-10-15 10:55:24','2024-04-20 10:21:11',82,9,9),(42,'2024-04-25 08:24:42','2024-06-06 19:17:04',40,24,9),(43,'2023-10-10 10:50:13','2024-06-27 03:20:17',76,25,14),(44,'2023-07-14 09:49:30','2023-08-05 22:02:13',86,10,15),(45,'2023-08-30 09:33:02','2024-01-25 23:56:52',98,15,13),(46,'2024-05-01 17:08:02','2023-11-26 16:32:52',22,15,16),(47,'2024-06-28 02:16:15','2023-09-14 16:20:05',95,13,1),(48,'2023-09-28 11:50:25','2023-08-12 06:04:23',51,3,6),(49,'2023-11-24 21:25:04','2023-10-16 11:21:26',93,22,5),(50,'2023-09-12 18:04:30','2024-01-25 12:41:31',6,17,3),(51,'2023-09-03 16:48:45','2024-04-22 18:13:21',7,22,4),(52,'2023-09-04 18:47:22','2024-06-11 05:29:47',38,24,2),(53,'2024-02-06 13:21:50','2023-10-18 21:20:56',30,15,11),(54,'2024-02-12 04:25:05','2023-11-06 07:10:29',89,18,19),(55,'2023-12-28 13:56:09','2024-01-21 17:01:13',12,21,8),(56,'2024-05-16 15:36:23','2024-02-18 15:02:30',70,2,19),(57,'2023-12-15 09:01:34','2023-08-24 19:24:58',94,24,8),(58,'2024-06-05 18:37:40','2024-04-20 11:36:04',92,4,10),(59,'2024-02-15 15:41:22','2024-06-21 09:28:11',42,11,6),(60,'2023-07-13 02:55:24','2024-06-02 02:04:16',96,11,2),(61,'2023-08-22 16:43:35','2024-03-15 06:28:34',19,8,16),(62,'2023-10-28 20:48:28','2023-09-02 11:22:33',25,8,7),(63,'2023-12-10 11:06:56','2023-10-09 02:31:05',38,8,10),(64,'2023-11-18 20:41:09','2024-03-22 11:12:05',76,10,6),(65,'2024-03-10 07:06:25','2024-03-09 12:38:36',68,5,2),(66,'2023-09-23 22:57:41','2024-06-02 02:16:06',59,9,8),(67,'2024-01-02 17:48:20','2024-04-05 01:54:45',75,19,18),(68,'2023-07-16 01:53:08','2023-10-12 12:16:22',77,11,1),(69,'2024-06-02 02:50:25','2023-07-19 16:49:55',23,23,19),(70,'2024-01-03 00:36:21','2024-06-22 15:07:14',22,10,16),(71,'2024-06-07 00:11:40','2023-09-12 09:47:03',26,15,3),(72,'2024-05-26 14:15:43','2023-08-08 11:30:34',25,9,2),(73,'2024-05-23 07:11:21','2023-08-24 21:39:23',13,3,9),(74,'2023-09-01 21:25:46','2023-08-07 03:39:25',9,22,17),(75,'2024-06-22 05:22:42','2023-08-09 12:20:22',84,12,11),(76,'2024-07-04 23:59:38','2024-05-04 13:10:57',37,15,20),(77,'2023-09-29 22:44:47','2024-04-01 12:15:37',75,8,2),(78,'2024-04-18 18:25:56','2023-09-27 02:23:49',91,21,8),(79,'2024-03-30 20:45:50','2023-07-25 10:42:38',24,4,7),(80,'2023-11-07 21:16:14','2024-04-04 22:33:50',16,17,19),(81,'2023-09-10 13:29:22','2023-07-22 20:55:30',6,3,10),(82,'2023-11-09 11:28:58','2023-12-16 16:32:50',83,24,15),(83,'2023-11-09 08:50:35','2024-07-07 02:10:01',99,17,20),(84,'2023-08-12 15:25:17','2023-08-17 11:20:13',17,22,2),(85,'2024-07-01 03:43:01','2024-02-28 01:31:06',31,11,18),(86,'2023-09-19 12:27:15','2024-05-04 13:07:17',79,15,18),(87,'2024-06-26 14:52:27','2023-08-10 16:08:22',71,22,20),(88,'2023-08-27 07:23:43','2023-12-11 20:18:04',80,13,15),(89,'2024-02-11 10:50:17','2024-05-07 17:59:40',39,14,18),(90,'2024-04-20 11:53:23','2024-04-26 18:12:20',33,2,7),(91,'2023-12-20 02:35:46','2024-05-06 15:47:45',38,6,12),(92,'2023-11-11 09:43:22','2024-04-18 00:32:42',30,6,12),(93,'2023-12-20 12:00:29','2023-10-06 22:18:18',44,10,19),(94,'2023-09-19 05:24:54','2024-03-08 08:12:21',17,18,4),(95,'2023-08-24 01:32:23','2024-05-12 03:49:24',44,25,7),(96,'2024-06-08 14:00:50','2023-08-03 19:07:31',19,22,11),(97,'2024-04-01 12:13:17','2023-09-21 01:23:38',40,12,18),(98,'2024-02-16 19:21:49','2024-05-31 22:54:35',17,16,13),(99,'2023-08-04 06:20:28','2023-12-23 07:44:55',74,24,3),(100,'2023-10-11 16:51:04','2023-09-26 15:27:03',27,12,19),(101,'2023-12-20 16:16:24','2024-06-14 23:24:25',59,5,4),(102,'2024-03-06 18:10:42','2023-12-05 00:15:44',10,23,20),(103,'2023-08-05 01:34:45','2024-01-27 17:16:27',94,9,8),(104,'2024-01-12 06:32:23','2024-02-18 12:28:25',14,6,2),(105,'2023-10-14 22:27:34','2024-03-02 20:18:32',2,18,10),(106,'2023-07-13 12:20:49','2024-03-23 13:02:47',3,2,8),(107,'2023-11-23 23:36:30','2024-02-24 06:43:36',90,5,16),(108,'2023-07-16 16:18:43','2024-02-19 16:25:31',64,24,15),(109,'2023-07-19 19:46:31','2023-10-31 03:47:12',45,16,18),(110,'2024-03-21 08:35:02','2024-01-23 07:20:31',29,15,4),(111,'2023-07-25 00:29:54','2023-08-28 01:56:36',31,25,9),(112,'2024-03-27 03:21:49','2023-10-20 21:58:45',72,20,12),(113,'2024-04-14 04:32:25','2023-10-01 20:49:10',50,12,18),(114,'2023-10-29 05:06:47','2023-11-20 20:43:32',68,14,11),(115,'2023-12-20 20:47:26','2024-02-26 19:14:37',78,1,3),(116,'2024-02-06 08:20:07','2024-06-18 17:15:27',48,19,3),(117,'2024-03-23 16:11:04','2023-12-13 02:49:15',3,9,4),(118,'2024-04-11 16:06:08','2023-08-26 17:54:22',28,5,13),(119,'2024-06-28 01:57:56','2023-12-23 05:22:12',23,6,6),(120,'2024-03-29 19:12:15','2023-11-14 02:49:20',98,4,2),(121,'2024-03-28 08:52:44','2023-09-15 00:20:02',75,4,2),(122,'2024-05-11 13:34:16','2024-02-13 21:35:57',76,1,12),(123,'2024-06-15 12:34:18','2023-07-22 02:47:12',50,4,8),(124,'2023-08-29 07:23:51','2023-07-11 14:13:02',85,23,12),(125,'2024-03-03 23:04:16','2023-09-13 10:54:06',28,5,6),(126,'2023-10-30 06:10:09','2023-12-15 09:35:23',82,24,12),(127,'2024-03-21 18:53:06','2023-12-28 00:17:08',90,15,14),(128,'2023-12-30 03:41:32','2024-02-22 07:08:40',82,19,19),(129,'2024-02-23 23:20:37','2023-08-30 02:01:09',30,14,4),(130,'2024-02-22 18:07:32','2024-04-04 19:36:48',24,13,12),(131,'2023-09-24 16:03:27','2024-03-24 16:27:56',73,25,17),(132,'2024-03-29 01:14:42','2024-01-02 09:52:50',5,7,4),(133,'2023-12-29 08:10:47','2023-09-09 07:32:44',22,23,14),(134,'2023-07-26 14:26:17','2024-03-29 00:11:56',20,23,14),(135,'2024-07-05 01:44:18','2023-09-03 09:51:25',32,16,16),(136,'2023-10-24 08:17:34','2024-02-08 17:32:19',25,15,16),(137,'2024-04-06 22:06:03','2024-05-20 23:09:34',21,10,2),(138,'2024-02-09 22:21:04','2024-02-06 22:07:08',58,18,1),(139,'2024-01-08 06:13:28','2023-11-29 09:34:16',77,10,15),(140,'2023-09-16 04:36:42','2024-05-11 10:17:25',86,4,3),(141,'2024-02-26 12:44:06','2023-09-28 15:54:09',20,15,18),(142,'2024-01-27 14:55:54','2023-08-29 05:28:45',3,4,7),(143,'2024-03-03 10:58:05','2024-01-04 22:26:11',12,2,19),(144,'2023-09-15 20:12:55','2023-11-03 14:45:15',48,14,20),(145,'2023-10-12 04:08:21','2024-01-30 04:05:08',50,4,11),(146,'2023-10-16 11:31:52','2024-03-29 04:40:44',34,16,4),(147,'2024-04-04 11:32:20','2024-03-23 22:45:00',19,18,6),(148,'2023-10-18 13:46:31','2023-08-08 08:02:38',72,11,11),(149,'2023-11-18 04:02:47','2023-12-01 17:21:58',19,8,12),(150,'2023-12-19 23:54:37','2023-08-23 05:12:15',91,25,20),(151,'2023-11-21 20:41:03','2023-12-03 21:05:55',43,21,8),(152,'2024-03-23 18:40:08','2024-01-13 05:04:59',61,23,4),(153,'2024-04-12 09:00:34','2023-07-11 04:03:02',95,21,7),(154,'2024-01-11 07:01:31','2024-05-13 17:05:56',36,24,14),(155,'2023-08-17 17:50:37','2023-11-24 14:30:18',82,11,19),(156,'2024-01-07 03:17:42','2023-09-20 07:29:49',45,2,20),(157,'2023-09-13 14:36:02','2023-09-25 23:11:09',57,1,10),(158,'2024-02-06 06:38:48','2024-04-01 06:14:56',87,25,8),(159,'2024-04-13 03:23:08','2023-07-31 19:53:52',69,25,18),(160,'2023-09-28 04:54:25','2024-06-10 10:17:19',82,15,8),(161,'2024-01-16 10:45:28','2023-11-29 19:34:35',70,2,4),(162,'2024-03-11 10:11:39','2023-11-28 17:11:51',31,23,14),(163,'2023-10-17 18:42:38','2023-11-13 08:34:13',35,4,12),(164,'2023-08-02 23:03:09','2024-04-07 02:48:34',19,4,20),(165,'2023-08-31 15:56:20','2024-03-18 17:00:51',73,12,3),(166,'2023-11-03 04:54:04','2023-08-27 02:47:18',26,11,16),(167,'2023-12-07 05:57:56','2023-07-19 07:54:52',27,9,3),(168,'2024-03-31 07:16:31','2024-05-21 07:28:02',54,2,7),(169,'2023-09-07 09:11:40','2023-11-19 07:48:39',57,7,1),(170,'2023-12-07 10:11:11','2024-05-14 04:48:25',42,23,12),(171,'2023-11-09 14:50:04','2024-05-23 16:43:25',19,23,3),(172,'2024-01-28 18:22:58','2024-02-24 15:50:29',41,13,13),(173,'2024-01-13 12:11:25','2024-01-14 17:28:22',38,25,11),(174,'2023-10-21 21:08:04','2024-05-26 15:52:41',88,10,1),(175,'2024-06-03 09:09:34','2023-11-02 13:01:49',22,12,12),(176,'2024-02-02 10:35:00','2023-11-08 10:49:13',58,10,16),(177,'2024-05-20 21:03:52','2024-05-07 10:27:48',61,21,9),(178,'2023-08-17 05:57:54','2024-04-29 05:41:47',97,13,7),(179,'2024-04-11 00:58:18','2024-01-25 18:10:19',69,8,3),(180,'2024-04-09 19:02:49','2024-02-07 01:19:46',19,19,16),(181,'2024-07-03 18:36:44','2024-03-01 02:23:21',88,9,18),(182,'2023-10-27 06:56:32','2023-08-23 04:16:13',93,5,4),(183,'2023-10-29 19:02:06','2023-12-26 04:10:21',26,3,15),(184,'2023-08-26 15:43:47','2023-12-26 17:39:31',33,13,13),(185,'2023-09-05 10:20:16','2023-12-25 16:03:46',72,2,20),(186,'2024-06-18 06:38:23','2024-04-03 01:45:35',86,15,16),(187,'2024-05-03 14:15:15','2023-11-26 08:39:54',90,21,5),(188,'2023-09-19 05:50:56','2024-05-15 11:51:42',93,6,19),(189,'2023-11-21 03:58:05','2024-03-24 19:46:41',71,16,7),(190,'2024-02-09 21:15:39','2023-08-18 17:18:30',99,12,4),(191,'2023-08-07 14:41:30','2023-12-26 03:36:41',30,24,16),(192,'2024-03-05 18:25:24','2023-12-21 10:10:45',71,18,5),(193,'2024-04-09 16:02:52','2024-02-09 21:30:38',50,4,8),(194,'2024-06-11 06:47:46','2023-09-18 12:30:27',75,8,7),(195,'2024-01-26 10:14:01','2023-10-27 02:19:17',78,15,10),(196,'2024-01-05 17:48:15','2023-12-15 13:21:58',57,7,14),(197,'2023-08-23 17:54:22','2024-01-14 22:19:26',2,1,4),(198,'2023-09-26 16:31:12','2024-03-20 13:53:42',59,21,20),(199,'2024-07-01 18:41:17','2023-08-19 18:30:08',93,23,8),(200,'2023-09-04 16:34:11','2023-12-29 16:50:27',14,5,7);
/*!40000 ALTER TABLE `Reserva` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_after_update_reserva` AFTER UPDATE ON `Reserva` FOR EACH ROW BEGIN
    DECLARE colName VARCHAR(100);
    DECLARE oldValue VARCHAR(255);
    DECLARE newValue VARCHAR(255);
    
    -- Verificar y registrar cambios en FechaReserva
    IF OLD.FechaReserva <> NEW.FechaReserva THEN
        SET colName = 'FechaReserva';
        SET oldValue = OLD.FechaReserva;
        SET newValue = NEW.FechaReserva;
        INSERT INTO Log_Auditoria (NombreTabla, NombreColumna, ValorAnterior, ValorNuevo, Usuario, FechaActualizacion)
        VALUES ('Reserva', colName, oldValue, newValue, CURRENT_USER(), NOW());
    END IF;

    -- Verificar y registrar cambios en FechaViaje
    IF OLD.FechaViaje <> NEW.FechaViaje THEN
        SET colName = 'FechaViaje';
        SET oldValue = OLD.FechaViaje;
        SET newValue = NEW.FechaViaje;
        INSERT INTO Log_Auditoria (NombreTabla, NombreColumna, ValorAnterior, ValorNuevo, Usuario, FechaActualizacion)
        VALUES ('Reserva', colName, oldValue, newValue, CURRENT_USER(), NOW());
    END IF;

    -- Verificar y registrar cambios en idViaje
    IF OLD.idViaje <> NEW.idViaje THEN
        SET colName = 'idViaje';
        SET oldValue = OLD.idViaje;
        SET newValue = NEW.idViaje;
        INSERT INTO Log_Auditoria (NombreTabla, NombreColumna, ValorAnterior, ValorNuevo, Usuario, FechaActualizacion)
        VALUES ('Reserva', colName, oldValue, newValue, CURRENT_USER(), NOW());
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Reserva_Hotel`
--

DROP TABLE IF EXISTS `Reserva_Hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reserva_Hotel` (
  `idReservaHotel` int NOT NULL AUTO_INCREMENT,
  `idReserva` int DEFAULT NULL,
  `idHotel` int DEFAULT NULL,
  `FechaCheckIn` datetime DEFAULT NULL,
  `FechaCheckOut` datetime DEFAULT NULL,
  PRIMARY KEY (`idReservaHotel`),
  KEY `fk_reserva_hotel_reserva` (`idReserva`),
  KEY `fk_reserva_hotel_hotel` (`idHotel`),
  CONSTRAINT `fk_reserva_hotel_hotel` FOREIGN KEY (`idHotel`) REFERENCES `Hotel` (`idHotel`),
  CONSTRAINT `fk_reserva_hotel_reserva` FOREIGN KEY (`idReserva`) REFERENCES `Reserva` (`idReserva`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TABLA QUE ALMACENA LAS RESERVAS DE HOTELES';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reserva_Hotel`
--

LOCK TABLES `Reserva_Hotel` WRITE;
/*!40000 ALTER TABLE `Reserva_Hotel` DISABLE KEYS */;
INSERT INTO `Reserva_Hotel` VALUES (1,76,83,'2024-02-16 12:13:31','2023-08-04 06:19:11'),(2,186,20,'2024-05-21 18:34:07','2024-06-04 05:05:01'),(3,12,131,'2023-12-15 14:57:08','2023-10-29 14:41:42'),(4,157,18,'2024-06-12 21:42:21','2023-08-10 12:38:38'),(5,98,155,'2024-05-29 17:58:44','2024-05-08 21:11:58'),(6,76,163,'2024-05-23 18:00:59','2023-12-26 03:36:24'),(7,13,35,'2024-06-24 12:21:13','2024-02-19 15:32:19'),(8,76,50,'2024-02-12 20:00:41','2023-11-15 20:41:20'),(9,147,185,'2023-12-31 02:39:51','2024-04-30 16:39:50'),(10,108,175,'2024-04-09 03:50:35','2024-06-09 11:27:54'),(11,123,138,'2024-06-09 07:48:15','2024-01-07 10:38:59'),(12,14,152,'2023-12-22 08:54:38','2024-02-23 17:15:32'),(13,185,131,'2023-11-27 21:49:04','2024-07-09 06:52:38'),(14,57,112,'2023-09-27 08:24:41','2023-09-27 17:49:43'),(15,69,120,'2023-07-28 00:44:42','2023-08-26 14:59:00'),(16,7,66,'2023-12-23 03:01:37','2023-09-19 09:01:05'),(17,141,160,'2023-12-27 12:24:43','2023-07-27 19:36:53'),(18,174,139,'2024-06-09 16:16:23','2024-02-05 10:27:00'),(19,195,32,'2024-06-14 20:55:57','2024-06-08 11:12:52'),(20,157,20,'2023-10-07 17:56:12','2023-08-24 02:13:27'),(21,102,190,'2024-05-18 16:06:02','2023-09-27 04:40:30'),(22,19,96,'2024-03-17 04:01:26','2024-07-11 10:53:03'),(23,17,156,'2024-05-18 23:34:14','2023-08-06 14:16:04'),(24,114,54,'2024-03-02 08:39:36','2024-05-08 09:39:09'),(25,89,98,'2024-06-17 11:46:28','2023-08-21 09:46:08'),(26,49,180,'2024-04-14 06:07:20','2024-01-28 01:38:33'),(27,182,68,'2024-02-09 17:04:46','2023-11-25 00:59:56'),(28,147,44,'2023-08-10 19:20:37','2024-02-04 22:04:34'),(29,5,28,'2024-04-28 10:53:44','2023-09-03 02:03:04'),(30,159,30,'2024-02-03 22:23:30','2023-09-05 21:56:06'),(31,99,58,'2024-02-21 08:15:05','2024-06-15 05:18:05'),(32,23,136,'2023-10-24 16:21:21','2024-03-22 16:38:21'),(33,78,32,'2023-08-02 04:52:01','2023-08-26 22:08:57'),(34,142,119,'2024-02-15 11:32:12','2024-04-17 23:49:16'),(35,30,159,'2024-05-15 12:33:51','2024-06-28 21:59:52'),(36,192,122,'2023-09-27 14:43:36','2024-01-30 14:39:22'),(37,83,140,'2024-03-14 22:45:40','2024-03-20 05:07:30'),(38,17,153,'2023-08-04 02:15:55','2023-12-05 14:29:47'),(39,84,150,'2024-02-10 10:28:36','2024-03-07 17:00:13'),(40,160,196,'2023-12-25 20:08:18','2023-12-26 11:04:34'),(41,45,31,'2024-01-19 05:46:47','2024-06-01 07:32:04'),(42,100,65,'2024-05-10 02:18:40','2024-01-22 12:42:15'),(43,16,19,'2023-10-29 01:42:32','2024-03-11 17:53:12'),(44,18,57,'2024-01-01 15:18:05','2023-08-15 05:25:26'),(45,76,164,'2024-03-25 10:12:01','2023-12-21 19:09:01'),(46,196,33,'2024-05-14 11:37:25','2023-08-16 11:17:46'),(47,25,161,'2024-02-05 18:36:06','2023-11-23 22:21:31'),(48,17,182,'2024-03-16 06:51:09','2023-12-06 11:12:54'),(49,111,21,'2023-10-08 11:12:52','2023-10-19 12:37:28'),(50,193,181,'2023-11-17 07:55:08','2024-05-09 10:28:42'),(51,94,102,'2024-02-02 07:50:18','2024-02-09 03:51:22'),(52,43,25,'2023-08-26 15:23:47','2024-01-09 21:24:32'),(53,177,114,'2023-09-29 08:59:28','2023-11-13 09:45:31'),(54,39,69,'2024-01-06 14:51:50','2023-08-02 14:15:14'),(55,173,94,'2024-04-30 06:29:56','2024-01-22 10:10:36'),(56,53,93,'2023-12-11 10:01:41','2024-07-11 02:33:22'),(57,6,187,'2024-06-16 07:53:56','2024-06-24 08:43:14'),(58,27,100,'2023-08-16 22:37:50','2024-04-08 10:16:51'),(59,145,75,'2023-12-28 16:07:42','2024-03-09 21:10:52'),(60,172,65,'2023-11-01 20:29:16','2024-02-06 04:54:27'),(61,172,191,'2024-06-25 13:05:42','2023-12-24 01:48:49'),(62,188,53,'2024-03-04 23:28:35','2023-08-19 15:46:48'),(63,190,113,'2024-02-01 22:43:21','2024-07-04 16:28:46'),(64,62,147,'2024-05-31 07:49:34','2023-12-06 15:24:24'),(65,134,7,'2024-05-29 00:53:58','2023-08-14 15:30:18'),(66,25,78,'2023-10-06 05:01:41','2023-12-30 20:42:52'),(67,37,95,'2023-08-02 05:39:04','2023-09-11 15:55:38'),(68,55,22,'2024-01-04 01:49:30','2024-05-05 21:59:32'),(69,167,29,'2023-10-07 16:53:22','2024-05-22 16:25:04'),(70,49,139,'2023-10-08 20:10:58','2024-04-26 02:49:42'),(71,140,67,'2024-02-01 15:09:06','2023-08-05 23:04:46'),(72,195,85,'2023-11-13 09:38:50','2024-02-13 10:10:45'),(73,30,98,'2024-06-25 03:10:01','2024-01-31 14:57:08'),(74,182,75,'2023-09-13 14:51:04','2024-02-28 04:46:58'),(75,67,64,'2024-07-05 08:06:17','2024-02-27 12:29:26'),(76,58,18,'2023-09-12 06:47:24','2024-01-24 06:59:39'),(77,160,25,'2023-08-19 03:48:41','2023-10-24 21:12:09'),(78,72,163,'2023-12-22 20:15:53','2024-06-05 07:48:33'),(79,136,122,'2024-03-05 09:00:54','2024-04-06 14:38:42'),(80,23,153,'2024-04-23 18:58:29','2023-09-30 14:31:32'),(81,138,59,'2023-12-30 18:05:41','2023-08-25 02:45:10'),(82,66,163,'2024-05-07 17:31:23','2024-07-04 13:49:08'),(83,30,44,'2023-10-28 18:37:44','2024-05-01 19:45:32'),(84,103,82,'2023-08-28 20:30:16','2024-03-29 19:58:38'),(85,170,27,'2024-01-31 22:54:02','2023-09-06 17:20:22'),(86,198,131,'2023-11-22 22:56:24','2023-08-12 05:33:29'),(87,197,111,'2023-12-09 08:08:54','2023-12-15 22:31:16'),(88,14,89,'2024-04-04 20:24:10','2024-06-02 03:42:41'),(89,158,6,'2024-03-04 11:16:24','2024-04-17 17:00:01'),(90,59,102,'2023-08-04 02:51:20','2024-03-09 01:38:49'),(91,163,18,'2024-03-03 15:14:20','2023-09-10 04:02:41'),(92,62,112,'2023-11-23 12:30:00','2024-07-15 21:19:46'),(93,69,67,'2024-02-03 02:32:19','2024-06-06 18:35:14'),(94,193,103,'2023-08-27 23:57:36','2024-06-06 20:19:39'),(95,102,44,'2024-04-14 16:47:00','2023-10-10 18:31:08'),(96,68,57,'2024-05-19 13:55:58','2024-06-29 15:58:21'),(97,100,131,'2024-03-09 16:35:18','2024-04-21 08:54:07'),(98,121,27,'2023-09-23 22:21:29','2024-02-26 18:22:22'),(99,142,146,'2023-08-18 17:09:42','2024-04-22 18:48:12'),(100,120,93,'2024-07-08 11:33:35','2024-07-02 15:39:31'),(101,101,20,'2023-12-11 12:21:30','2023-10-01 09:27:54'),(102,29,12,'2023-08-06 07:14:50','2023-11-12 22:52:51'),(103,106,22,'2024-06-17 08:35:29','2023-10-19 12:08:31'),(104,180,43,'2024-06-15 17:38:09','2023-09-13 05:14:07'),(105,48,81,'2023-08-04 20:04:32','2024-05-03 19:32:02'),(106,55,182,'2024-03-02 18:34:57','2023-12-22 11:46:54'),(107,66,57,'2023-09-28 03:48:19','2023-12-31 10:56:34'),(108,97,185,'2024-01-18 18:42:23','2024-02-06 14:11:44'),(109,40,183,'2023-10-31 23:51:55','2023-09-17 05:49:14'),(110,164,78,'2024-02-12 17:26:22','2023-08-12 15:17:49'),(111,48,97,'2023-08-18 10:25:04','2024-07-21 08:26:24'),(112,133,129,'2024-06-23 06:29:23','2024-01-26 00:00:12'),(113,174,155,'2024-04-20 08:34:47','2024-02-02 06:50:26'),(114,35,169,'2024-07-08 22:36:59','2023-10-08 09:46:18'),(115,22,22,'2024-06-13 18:03:43','2023-09-23 05:04:50'),(116,173,141,'2024-03-17 00:23:09','2023-08-31 05:51:54'),(117,116,32,'2024-05-24 08:21:12','2024-01-09 21:08:06'),(118,28,61,'2023-09-17 12:57:25','2024-01-17 08:25:25'),(119,2,9,'2024-06-18 06:25:43','2023-08-27 09:05:21'),(120,157,153,'2023-07-27 06:01:33','2023-11-18 17:03:01'),(121,141,39,'2024-01-27 08:46:16','2023-10-07 07:44:15'),(122,17,160,'2023-10-02 14:33:40','2023-08-28 16:15:51'),(123,69,182,'2023-10-18 04:09:54','2024-05-20 05:14:40'),(124,36,30,'2024-05-12 07:12:23','2023-12-13 00:14:59'),(125,175,193,'2023-09-18 22:29:28','2023-11-24 19:40:02');
/*!40000 ALTER TABLE `Reserva_Hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reserva_Vuelo`
--

DROP TABLE IF EXISTS `Reserva_Vuelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reserva_Vuelo` (
  `idReservaVuelo` int NOT NULL AUTO_INCREMENT,
  `idReserva` int DEFAULT NULL,
  `idVuelo` int DEFAULT NULL,
  PRIMARY KEY (`idReservaVuelo`),
  KEY `fk_reserva_vuelo_reserva` (`idReserva`),
  KEY `fk_reserva_vuelo_vuelo` (`idVuelo`),
  CONSTRAINT `fk_reserva_vuelo_reserva` FOREIGN KEY (`idReserva`) REFERENCES `Reserva` (`idReserva`),
  CONSTRAINT `fk_reserva_vuelo_vuelo` FOREIGN KEY (`idVuelo`) REFERENCES `Vuelo` (`idVuelo`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TABLA QUE ALMACENA LAS RESERVAS DE VUELOS';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reserva_Vuelo`
--

LOCK TABLES `Reserva_Vuelo` WRITE;
/*!40000 ALTER TABLE `Reserva_Vuelo` DISABLE KEYS */;
INSERT INTO `Reserva_Vuelo` VALUES (1,26,14),(2,47,173),(3,40,108),(4,31,11),(5,10,159),(6,104,141),(7,109,172),(8,118,91),(9,4,1),(10,200,178),(11,166,91),(12,187,55),(13,171,19),(14,149,140),(15,148,6),(16,192,76),(17,124,178),(18,174,173),(19,96,173),(20,196,170),(21,128,50),(22,20,78),(23,7,153),(24,87,113),(25,191,117),(26,36,164),(27,35,200),(28,35,90),(29,190,49),(30,164,161),(31,39,67),(32,57,88),(33,92,196),(34,102,29),(35,12,152),(36,67,11),(37,65,21),(38,99,93),(39,41,51),(40,11,184),(41,81,8),(42,132,114),(43,172,3),(44,137,170),(45,20,31),(46,90,31),(47,63,84),(48,93,153),(49,116,61),(50,120,93),(51,8,142),(52,45,76),(53,128,121),(54,39,170),(55,177,199),(56,85,149),(57,53,18),(58,95,39),(59,68,38),(60,131,74),(61,76,43),(62,5,129),(63,27,104),(64,120,146),(65,98,56),(66,129,118),(67,57,91),(68,44,186),(69,170,110),(70,2,171),(71,198,35),(72,182,198),(73,30,82),(74,194,4),(75,94,138),(76,98,114),(77,29,26),(78,54,14),(79,40,114),(80,67,156),(81,116,190),(82,14,126),(83,145,28),(84,176,189),(85,121,26),(86,130,12),(87,8,143),(88,35,195),(89,39,163),(90,72,169),(91,150,26),(92,117,176),(93,119,198),(94,18,97),(95,177,106),(96,170,108),(97,132,133),(98,80,171),(99,55,140),(100,11,69);
/*!40000 ALTER TABLE `Reserva_Vuelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ReservasCliente`
--

DROP TABLE IF EXISTS `ReservasCliente`;
/*!50001 DROP VIEW IF EXISTS `ReservasCliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ReservasCliente` AS SELECT 
 1 AS `NombreCompleto`,
 1 AS `Direccion`,
 1 AS `Telefono`,
 1 AS `Email`,
 1 AS `TipoCliente`,
 1 AS `FechaReserva`,
 1 AS `Destino`,
 1 AS `FechaSalida`,
 1 AS `FechaRegreso`,
 1 AS `DescripcionViaje`,
 1 AS `Precio`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Tour_Paquete`
--

DROP TABLE IF EXISTS `Tour_Paquete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tour_Paquete` (
  `idTourPaquete` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) DEFAULT NULL,
  `Descripcion` varchar(250) DEFAULT NULL,
  `FechaReserva` datetime DEFAULT NULL,
  `Precio` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idTourPaquete`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TABLA QUE ALMACENA LOS TOURS Y PAQUETES DISPONIBLES';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tour_Paquete`
--

LOCK TABLES `Tour_Paquete` WRITE;
/*!40000 ALTER TABLE `Tour_Paquete` DISABLE KEYS */;
INSERT INTO `Tour_Paquete` VALUES (1,'Crab, red lava','Insertion of Internal Fixation Device into Right Tarsal Joint, Open Approach','2023-07-11 12:41:20',492.79),(2,'Lion, california sea','Dilation of Lower Artery with Two Intraluminal Devices, Open Approach','2023-12-10 01:53:38',1026.92),(3,'Kaffir cat','Restriction of Right Hypogastric Vein with Extraluminal Device, Percutaneous Approach','2024-04-14 23:04:06',933.40),(4,'Wallaby, whip-tailed','Removal of Drainage Device from Mouth and Throat, Open Approach','2023-10-25 15:48:28',333.53),(5,'Iguana, common green','Transfer Large Intestine to Esophagus, Open Approach','2023-07-20 10:38:26',1180.40),(6,'Fox, savanna','Dilation of Right Radial Artery, Bifurcation, with Three Intraluminal Devices, Open Approach','2023-11-05 07:04:29',1017.56),(7,'Brolga crane','Release Left Lacrimal Bone, Open Approach','2023-08-19 20:45:05',1124.67),(8,'Marten, american','Insertion of Intraluminal Device into Left Greater Saphenous Vein, Open Approach','2024-04-20 18:12:37',1455.12),(9,'Pale-throated three-toed sloth','Excision of Left Ankle Region, Open Approach','2024-02-08 23:14:04',1150.86),(10,'Kafue flats lechwe','Bypass Thoracic Aorta, Descending to Pulmonary Trunk with Nonautologous Tissue Substitute, Open Approach','2023-10-02 02:37:58',315.73),(11,'Wagtail, african pied','Reposition Hair, External Approach','2023-10-02 05:12:59',325.48),(12,'Grey lourie','Transfer Left Upper Arm Muscle with Skin and Subcutaneous Tissue, Open Approach','2024-02-26 12:52:10',327.22),(13,'Lion, steller sea','Resection of Descending Colon, Via Natural or Artificial Opening Endoscopic','2023-10-29 11:36:24',1181.63),(14,'Sheep, stone','Drainage of Left Occipital Bone, Open Approach','2023-08-13 09:38:36',578.62),(15,'Giant girdled lizard','Inspection of Pelvic Cavity, Percutaneous Endoscopic Approach','2024-05-15 02:44:09',1193.94),(16,'Badger, european','Repair Gastrointestinal System in Products of Conception with Other Device, Percutaneous Endoscopic Approach','2024-07-07 17:50:26',500.68),(17,'Mynah, common','Bypass Cystic Duct to Stomach, Open Approach','2024-02-29 14:21:51',384.50),(18,'Squirrel, grey-footed','Drainage of Right Ankle Region, Percutaneous Endoscopic Approach','2024-06-30 12:56:32',868.67),(19,'Bushpig','Drainage of Left Thorax Tendon, Percutaneous Endoscopic Approach, Diagnostic','2023-10-28 04:22:28',1087.57),(20,'Cormorant, flightless','Insertion of Infusion Device into Right Popliteal Artery, Open Approach','2024-02-14 09:36:25',729.34),(21,'Arboral spiny rat','Introduction of Vasopressor into Central Vein, Percutaneous Approach','2024-04-08 22:47:27',337.77),(22,'Lilac-breasted roller','Resection of Uterus, Via Natural or Artificial Opening Endoscopic','2024-02-02 17:26:00',946.81),(23,'Turtle (unidentified)','Removal of Intraluminal Device from Uterus and Cervix, Percutaneous Approach','2023-08-03 17:59:04',1400.63),(24,'Ring-tailed coatimundi','Introduction of Other Therapeutic Substance into Peritoneal Cavity, Percutaneous Approach','2023-10-04 21:05:18',370.45),(25,'Wolf, mexican','Supplement Right Metatarsal-Tarsal Joint with Autologous Tissue Substitute, Percutaneous Approach','2023-09-11 09:11:56',1388.74),(26,'Squirrel, pine','Insertion of Single Channel Cochlear Prosthesis into Left Inner Ear, Open Approach','2023-09-11 08:07:51',387.27),(27,'Chital','Transfer Left Lower Arm and Wrist Muscle, Percutaneous Endoscopic Approach','2023-08-22 22:28:35',666.10),(28,'Cape wild cat','Revision of Infusion Device in Ureter, Percutaneous Approach','2024-05-14 13:18:16',412.08),(29,'Dolphin, common','Drainage of Left Metacarpocarpal Joint, Open Approach','2023-07-25 22:41:57',647.12),(30,'Cormorant, neotropic','Drainage of Median Nerve with Drainage Device, Percutaneous Endoscopic Approach','2024-05-13 06:36:10',1033.78);
/*!40000 ALTER TABLE `Tour_Paquete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tour_Paquete_Viaje`
--

DROP TABLE IF EXISTS `Tour_Paquete_Viaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tour_Paquete_Viaje` (
  `idTourPaqueteViaje` int NOT NULL AUTO_INCREMENT,
  `idTourPaquete` int DEFAULT NULL,
  `idViaje` int DEFAULT NULL,
  PRIMARY KEY (`idTourPaqueteViaje`),
  KEY `fk_Tour_Paquete_Viaje_Tour_Paquete` (`idTourPaquete`),
  KEY `fk_Tour_Paquete_Viaje_Viaje` (`idViaje`),
  CONSTRAINT `fk_Tour_Paquete_Viaje_Tour_Paquete` FOREIGN KEY (`idTourPaquete`) REFERENCES `Tour_Paquete` (`idTourPaquete`),
  CONSTRAINT `fk_Tour_Paquete_Viaje_Viaje` FOREIGN KEY (`idViaje`) REFERENCES `Viaje` (`idViaje`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TABLA QUE ALMACENA LOS VIAJES ASOCIADOS A UN TOUR O PAQUETE';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tour_Paquete_Viaje`
--

LOCK TABLES `Tour_Paquete_Viaje` WRITE;
/*!40000 ALTER TABLE `Tour_Paquete_Viaje` DISABLE KEYS */;
INSERT INTO `Tour_Paquete_Viaje` VALUES (1,13,18),(2,8,42),(3,5,121),(4,18,124),(5,20,50),(6,17,107),(7,26,71),(8,30,38),(9,26,133),(10,20,46),(11,7,132),(12,26,49),(13,29,75),(14,21,60),(15,18,110),(16,8,47),(17,30,67),(18,17,83),(19,7,80),(20,1,96),(21,6,55),(22,29,116),(23,19,6),(24,27,89),(25,29,62),(26,2,1),(27,22,50),(28,3,90),(29,13,122),(30,4,62),(31,24,13),(32,13,94),(33,30,90),(34,3,9),(35,14,22),(36,20,36),(37,7,132),(38,16,69),(39,28,89),(40,7,105),(41,16,26),(42,6,72),(43,20,65),(44,21,35),(45,10,9),(46,2,35),(47,2,75),(48,18,146),(49,27,121),(50,6,69);
/*!40000 ALTER TABLE `Tour_Paquete_Viaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Viaje`
--

DROP TABLE IF EXISTS `Viaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Viaje` (
  `idViaje` int NOT NULL AUTO_INCREMENT,
  `Destino` varchar(100) DEFAULT NULL,
  `FechaSalida` datetime DEFAULT NULL,
  `FechaRegreso` datetime DEFAULT NULL,
  `Descripcion` varchar(250) DEFAULT NULL,
  `Precio` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idViaje`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TABLA QUE ALMACENA LOS VIAJES DISPONIBLES';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Viaje`
--

LOCK TABLES `Viaje` WRITE;
/*!40000 ALTER TABLE `Viaje` DISABLE KEYS */;
INSERT INTO `Viaje` VALUES (1,'Sunne','2024-04-01 05:41:00','2024-01-18 06:37:44','Removal of Reservoir from Upper Extremity Subcutaneous Tissue and Fascia, Open Approach',540.66),(2,'Norfolk','2023-12-04 21:11:34','2023-12-14 20:54:49','Drainage of Vagus Nerve with Drainage Device, Percutaneous Approach',718.54),(3,'Mojokerto','2024-03-09 02:55:31','2024-02-19 20:56:10','Bypass Right Internal Iliac Artery to Bilateral Internal Iliac Arteries with Autologous Venous Tissue, Percutaneous Endoscopic Approach',1613.62),(4,'Yushugou','2023-09-01 23:47:57','2023-07-13 18:30:48','Removal of Intraluminal Device from Uterus and Cervix, Percutaneous Approach',679.71),(5,'Dushang','2023-08-22 07:04:37','2023-07-15 12:17:20','Release Right External Iliac Vein, Open Approach',2047.99),(6,'Chengjiao','2024-01-30 13:42:20','2024-02-28 00:20:01','Sperm Collection',1139.24),(7,'Amvrosiyivka','2023-10-05 08:56:05','2024-02-14 03:53:37','Occlusion of Small Intestine with Intraluminal Device, Via Natural or Artificial Opening',2452.42),(8,'Huanan','2023-12-26 18:11:16','2024-03-31 00:38:18','Extirpation of Matter from Left External Ear, External Approach',1778.27),(9,'Mikhaylov','2023-07-17 02:05:52','2023-07-24 01:46:56','Fluoroscopy of Bilateral Fallopian Tubes using Low Osmolar Contrast',522.02),(10,'Hà Tiên','2023-08-27 12:23:43','2024-02-01 06:28:31','Irrigation of Female Reproductive using Irrigating Substance, Percutaneous Approach',2320.30),(11,'Lesnoy','2024-04-20 00:30:50','2024-01-30 11:59:30','Extirpation of Matter from Right Kidney Pelvis, Via Natural or Artificial Opening',1122.38),(12,'Mentaraman Satu','2024-05-01 15:50:53','2024-04-23 20:52:00','Fragmentation in Accessory Pancreatic Duct, Open Approach',791.45),(13,'Tiang','2023-09-23 07:50:05','2023-10-16 02:45:06','Tomographic (Tomo) Nuclear Medicine Imaging of Lower Extremity using Iodine 123 (I-123)',1639.03),(14,'Winong','2023-09-08 12:24:47','2023-09-10 18:42:11','Supplement Left Little Finger with Nonautologous Tissue Substitute, Percutaneous Endoscopic Approach',302.51),(15,'Canillo','2024-05-18 04:49:41','2024-02-17 12:04:16','Replacement of Left Ulna with Synthetic Substitute, Percutaneous Endoscopic Approach',2179.42),(16,'Weiguo','2023-10-22 05:19:21','2024-01-06 01:54:18','Reposition Bladder Neck, Open Approach',722.91),(17,'Dayton','2024-03-13 20:35:17','2023-07-20 09:50:19','Revision of Synthetic Substitute in Right Finger Phalangeal Joint, Percutaneous Approach',2282.94),(18,'Cerro','2024-02-27 20:58:23','2024-01-03 07:55:15','Range of Motion and Joint Mobility Treatment of Neurological System - Whole Body using Orthosis',1393.93),(19,'Lihu','2024-07-05 15:53:01','2024-05-22 21:57:57','Fusion of Left Wrist Joint with Internal Fixation Device, Percutaneous Approach',1611.13),(20,'Đắk Glei','2023-11-12 13:41:20','2024-06-24 13:11:36','Perceptual Processing Treatment using Aerodynamic Function Equipment',567.87),(21,'Pau','2023-10-06 11:38:50','2023-07-10 11:41:57','Restriction of Thoracic Duct, Open Approach',475.91),(22,'Mabalacat','2023-09-25 07:22:12','2024-06-24 23:21:19','Drainage of Soft Palate, Open Approach',892.79),(23,'Añatuya','2024-03-24 14:46:49','2024-04-01 20:41:34','Extraction of Left Vocal Cord, Percutaneous Approach',1757.06),(24,'Jawhar','2023-11-16 15:22:06','2024-05-22 11:16:03','Removal of Internal Fixation Device from Left Humeral Head, External Approach',1239.77),(25,'Budapest','2024-05-26 01:08:33','2023-08-02 14:10:57','Occlusion of Stomach, Via Natural or Artificial Opening Endoscopic',1252.20),(26,'Ust’-Isha','2024-01-09 15:19:48','2024-05-04 13:45:19','Low Dose Rate (LDR) Brachytherapy of Adrenal Glands using Other Isotope',1933.79),(27,'Eauripik','2023-08-01 03:51:10','2024-01-27 19:30:48','Supplement Right Palatine Bone with Nonautologous Tissue Substitute, Percutaneous Endoscopic Approach',1557.29),(28,'Yangzizhou','2023-11-09 09:09:03','2024-04-18 01:26:40','Therapeutic Exercise Treatment of Integumentary System - Upper Back / Upper Extremity using Electrotherapeutic Equipment',2191.20),(29,'Baishan','2024-03-05 13:06:14','2023-10-12 04:25:42','Inspection of Right Femoral Region, Percutaneous Approach',1932.70),(30,'Pigcawayan','2024-01-09 08:41:20','2023-11-05 07:10:11','Excision of Cervical Vertebral Disc, Percutaneous Approach, Diagnostic',899.95),(31,'Tāybād','2023-12-22 05:46:01','2024-04-10 13:17:34','Dilation of Face Artery with Three Intraluminal Devices, Open Approach',1185.71),(32,'Wangying','2023-12-19 09:49:20','2023-08-05 10:07:13','Release Descending Colon, Open Approach',1807.02),(33,'Las Matas de Santa Cruz','2023-12-27 06:39:03','2023-09-19 08:27:53','Drainage of Oral Cavity and Throat, Percutaneous Approach, Diagnostic',1569.97),(34,'Astana','2024-06-03 14:29:03','2024-06-06 17:38:03','Monitoring of Gastrointestinal Secretion, Via Natural or Artificial Opening Endoscopic',669.36),(35,'Guihulñgan','2023-10-18 05:33:15','2023-10-27 16:14:59','Reposition Right Glenoid Cavity, Open Approach',1406.00),(36,'Santo António das Areias','2023-09-10 17:24:30','2024-02-01 14:25:04','Resection of Vagina, Via Natural or Artificial Opening Endoscopic',2194.80),(37,'Guangsheng','2024-05-29 12:15:53','2023-12-31 04:57:02','Tomographic (Tomo) Nuclear Medicine Imaging of Skull using Other Radionuclide',1188.79),(38,'Ciharalang','2023-07-26 14:51:08','2023-08-17 19:26:54','Postural Control Treatment of Neurological System - Whole Body using Orthosis',1135.57),(39,'Bang Bon','2023-10-18 05:05:44','2024-06-19 00:55:16','Immobilization of Face using Cast',1866.01),(40,'Chaplygin','2023-12-19 12:46:45','2024-03-30 12:37:34','Repair Middle Colic Artery, Percutaneous Endoscopic Approach',905.05),(41,'Cestas','2023-07-29 17:15:18','2023-12-07 03:26:24','Drainage of Hymen with Drainage Device, Percutaneous Endoscopic Approach',2124.37),(42,'Luar','2024-03-06 20:32:15','2024-06-29 09:06:47','Drainage of Cervical Nerve, Percutaneous Endoscopic Approach, Diagnostic',1704.51),(43,'Labuhansumbawa','2024-03-12 07:34:35','2024-03-03 22:08:56','Supplement Right Cornea with Synthetic Substitute, Percutaneous Approach',364.27),(44,'Tabor','2023-10-22 22:10:11','2023-11-21 09:16:54','Replacement of Right Fibula with Autologous Tissue Substitute, Percutaneous Approach',1429.54),(45,'Helong','2024-04-12 08:42:14','2023-07-22 12:25:58','Extirpation of Matter from Right Kidney Pelvis, Via Natural or Artificial Opening Endoscopic',2111.39),(46,'Thị Trấn Ngải Giao','2024-02-06 06:46:10','2024-01-19 22:52:22','High Dose Rate (HDR) Brachytherapy of Oropharynx using Iodine 125 (I-125)',2419.90),(47,'Gaspar Hernández','2024-05-08 17:07:15','2024-06-28 09:51:24','Replacement of Right Parietal Bone with Synthetic Substitute, Open Approach',869.26),(48,'Vancouver','2024-06-24 13:14:26','2023-12-10 13:40:48','Resection of Right Lacrimal Duct, Via Natural or Artificial Opening',792.46),(49,'Karlstad','2023-09-23 01:59:12','2023-10-07 10:29:08','Dilation of Right Subclavian Artery, Bifurcation, with Three Intraluminal Devices, Percutaneous Approach',2327.99),(50,'San Andres','2024-06-23 06:52:23','2024-03-27 08:17:55','Change Drainage Device in Upper Bursa and Ligament, External Approach',1567.70),(51,'Tintafor','2023-09-18 08:49:47','2024-04-24 14:40:08','Dilation of Abdominal Aorta, Bifurcation, with Drug-eluting Intraluminal Device, Percutaneous Endoscopic Approach',2462.18),(52,'Malikisi','2023-10-08 11:30:24','2023-12-17 11:49:32','Supplement Right Finger Phalangeal Joint with Nonautologous Tissue Substitute, Open Approach',1931.52),(53,'Óbidos','2024-03-19 20:46:46','2024-03-11 10:05:22','Supplement Left Glenoid Cavity with Nonautologous Tissue Substitute, Percutaneous Endoscopic Approach',679.02),(54,'Tanxi','2023-12-26 20:14:05','2023-10-23 03:43:54','Removal of Autologous Tissue Substitute from Left Pelvic Bone, Percutaneous Approach',2370.72),(55,'Poitiers','2024-06-08 22:04:25','2024-01-16 03:00:53','Supplement Papillary Muscle with Nonautologous Tissue Substitute, Percutaneous Endoscopic Approach',1012.59),(56,'Jetis','2024-03-29 04:13:17','2023-08-08 05:43:20','Excision of Large Intestine, Via Natural or Artificial Opening',440.97),(57,'Paraguarí','2023-09-10 19:16:10','2023-08-04 22:29:39','Excision of Right Lower Lung Lobe, Percutaneous Approach',2082.84),(58,'Lourido','2023-08-16 04:08:53','2024-06-06 10:22:26','Removal of Autologous Tissue Substitute from Right Radius, Percutaneous Approach',564.87),(59,'Xuchang','2024-06-03 08:28:42','2023-08-17 20:00:05','Repair Right Inferior Parathyroid Gland, Open Approach',1039.82),(60,'Mafang','2023-12-29 02:24:13','2023-08-07 01:10:03','Occlusion of Left Fallopian Tube with Intraluminal Device, Percutaneous Approach',1254.41),(61,'San José','2023-10-04 16:54:55','2023-10-18 12:36:59','Removal of Synthetic Substitute from Sacrococcygeal Joint, Open Approach',1988.63),(62,'Adolfo Lopez Mateos','2023-09-02 17:18:09','2024-05-25 09:45:39','Removal of External Fixation Device from Right Humeral Shaft, Open Approach',1356.67),(63,'Reno','2024-04-01 14:50:14','2023-12-27 00:47:45','Fusion of Left Tarsal Joint, Percutaneous Endoscopic Approach',1105.13),(64,'Lluchubamba','2024-05-13 15:35:00','2023-07-14 14:05:51','Revision of Autologous Tissue Substitute in Lower Extremity Subcutaneous Tissue and Fascia, Open Approach',1823.00),(65,'Regnów','2024-06-12 11:18:31','2024-03-12 11:19:50','Removal of Drainage Device from Thoracic Vertebral Joint, Percutaneous Endoscopic Approach',674.43),(66,'Suban','2023-12-25 02:30:05','2024-06-17 08:51:11','Fusion of Left Hip Joint with External Fixation Device, Open Approach',720.33),(67,'Koysinceq','2024-01-25 19:21:12','2024-04-20 09:44:28','Repair Left Ureter, Percutaneous Endoscopic Approach',2284.54),(68,'Rikitea','2023-09-21 09:53:53','2023-11-28 14:18:29','Dilation of Right External Iliac Artery, Bifurcation, with Three Intraluminal Devices, Percutaneous Endoscopic Approach',615.36),(69,'Yingchuan','2024-01-19 12:56:13','2024-06-29 01:14:30','Supplement Right Maxilla with Synthetic Substitute, Open Approach',1738.87),(70,'Shipunovo','2024-06-23 00:08:19','2023-11-03 17:05:38','Revision of Spacer in Thoracolumbar Vertebral Joint, External Approach',2401.79),(71,'Aginskoye','2023-10-09 23:07:11','2024-01-06 18:02:36','Fluoroscopy of Left Pulmonary Artery using High Osmolar Contrast, Laser Intraoperative',1043.93),(72,'Upig','2024-02-20 06:48:43','2024-06-17 18:11:30','Repair Cystic Duct, Via Natural or Artificial Opening',2379.22),(73,'Yuanjue','2023-12-23 22:39:05','2024-06-27 20:23:20','Bypass Coronary Artery, Four or More Arteries from Abdominal Artery with Autologous Venous Tissue, Open Approach',2127.80),(74,'Zborište','2024-04-22 02:38:42','2023-07-26 23:26:22','Alteration of Right Knee Region with Autologous Tissue Substitute, Percutaneous Approach',1553.42),(75,'Gaohong','2024-01-17 03:50:41','2024-02-20 01:31:44','Drainage of Uterus, Percutaneous Approach',1411.18),(76,'Anuling','2023-07-14 06:06:44','2023-11-12 05:30:52','Dilation of Celiac Artery, Bifurcation, with Two Intraluminal Devices, Percutaneous Endoscopic Approach',929.24),(77,'Santa Maria','2023-11-08 20:40:55','2023-10-22 04:52:23','Dilation of Esophagus with Intraluminal Device, Percutaneous Approach',2022.51),(78,'Dongjingcheng','2024-01-30 01:17:56','2023-11-21 01:59:57','Drainage of Right Femoral Artery, Percutaneous Approach, Diagnostic',1887.34),(79,'Všeruby','2024-04-28 14:31:38','2023-10-22 12:53:48','Repair Right Axillary Artery, Percutaneous Approach',515.01),(80,'Panshan','2024-05-13 07:06:50','2024-04-26 17:45:10','Reposition Right Radius with Intramedullary Internal Fixation Device, Open Approach',572.03),(81,'Göteborg','2023-07-25 10:54:33','2023-11-05 01:21:14','Drainage of Left Radius with Drainage Device, Percutaneous Approach',825.17),(82,'Fengyi','2024-05-18 16:19:32','2024-01-29 12:18:08','Resection of Parathyroid Gland, Percutaneous Endoscopic Approach',2312.76),(83,'Ōdachō-ōda','2024-01-17 08:47:46','2023-07-26 08:13:18','Drainage of Right Zygomatic Bone with Drainage Device, Open Approach',1401.22),(84,'Cidadap','2024-02-12 13:46:56','2023-10-23 19:18:28','Extirpation of Matter from Large Intestine, Percutaneous Approach',2092.88),(85,'Cibangun Tengah','2024-05-23 08:27:23','2024-01-15 10:19:41','Removal of Infusion Device from Scrotum and Tunica Vaginalis, Via Natural or Artificial Opening Endoscopic',1039.25),(86,'Ludwin','2023-10-05 03:18:25','2024-02-25 02:31:33','Drainage of Right Greater Saphenous Vein, Open Approach, Diagnostic',1411.30),(87,'Matangshan','2023-12-04 00:10:03','2023-11-14 17:01:10','Insertion of Intraluminal Device into Left Hypogastric Vein, Percutaneous Approach',1422.03),(88,'Krutja e Poshtme','2023-08-14 06:39:22','2023-10-06 15:30:06','Removal of Radioactive Element from Left Breast, Percutaneous Approach',2335.11),(89,'Ramotswa','2023-10-13 17:15:12','2023-10-20 13:48:41','Revision of Synthetic Substitute in Right Patella, Open Approach',1475.51),(90,'Livadiya','2023-10-30 00:06:47','2023-12-19 14:47:34','Alteration of Female Perineum with Nonautologous Tissue Substitute, Percutaneous Approach',1506.06),(91,'Nová Role','2024-05-30 08:42:37','2024-06-07 21:40:25','Repair Right Shoulder Bursa and Ligament, Open Approach',414.94),(92,'Bodø','2024-01-02 01:05:27','2023-07-20 07:10:04','Fragmentation in Gallbladder, Via Natural or Artificial Opening Endoscopic',795.50),(93,'Farinheiras','2024-01-24 13:03:32','2024-04-17 21:16:21','Extirpation of Matter from Left Finger Phalangeal Joint, Percutaneous Endoscopic Approach',339.96),(94,'Gendiwu','2024-03-17 08:31:32','2024-06-25 11:44:24','Supplement Left Internal Carotid Artery with Nonautologous Tissue Substitute, Open Approach',1221.01),(95,'Melfi','2023-11-19 02:34:21','2023-11-23 03:34:37','Bypass Left Common Iliac Artery to Mesenteric Artery with Synthetic Substitute, Percutaneous Endoscopic Approach',1123.06),(96,'Peukanbada','2024-06-03 14:57:51','2024-05-04 01:04:58','Revision of Nonautologous Tissue Substitute in Penis, Via Natural or Artificial Opening',790.81),(97,'Vantaa','2024-05-19 08:15:19','2024-02-01 13:46:14','Inspection of Occipital-cervical Joint, Percutaneous Approach',1305.16),(98,'Dongping','2024-06-21 11:09:05','2023-08-02 04:16:08','Reposition Left Ankle Joint with External Fixation Device, Open Approach',2316.79),(99,'Kamo','2023-11-06 06:27:12','2023-10-15 09:31:27','Revision of Drainage Device in Ureter, Open Approach',1917.03),(100,'Santa Venera','2024-05-26 21:26:11','2024-01-03 17:46:11','Insertion of Intraluminal Device into Innominate Artery, Percutaneous Endoscopic Approach',1174.40),(101,'Las Palmas','2024-01-29 16:18:15','2024-01-20 18:06:38','Magnetic Resonance Imaging (MRI) of Superior Mesenteric Artery using Other Contrast, Unenhanced and Enhanced',673.89),(102,'Cali','2024-03-10 18:17:00','2024-01-04 05:35:25','Imaging, Urinary System, Ultrasonography',2470.98),(103,'Linshui','2024-06-08 06:35:53','2023-07-09 04:32:25','Drainage of Large Intestine with Drainage Device, Percutaneous Endoscopic Approach',1034.55),(104,'Napuro','2024-01-01 15:41:22','2024-04-11 07:59:12','Drainage of Right Innominate Vein, Percutaneous Endoscopic Approach',1155.41),(105,'Patarrá','2024-04-29 14:44:04','2024-02-14 08:32:07','Destruction of Bilateral Adrenal Glands, Percutaneous Endoscopic Approach',1340.61),(106,'Kazlų Rūda','2024-01-15 15:31:13','2023-12-21 11:27:42','Resection of Right Seminal Vesicle, Open Approach',1547.99),(107,'Lingkou','2024-04-03 13:47:13','2023-08-24 04:46:52','Occlusion of Left Parotid Duct with Intraluminal Device, Via Natural or Artificial Opening Endoscopic',541.41),(108,'Pau','2024-04-11 03:31:44','2024-02-05 15:06:13','Drainage of Cerebral Ventricle, Open Approach, Diagnostic',829.37),(109,'Ribeiro','2024-04-05 21:51:57','2023-10-19 05:21:14','Insertion of Intramedullary Internal Fixation Device into Right Fibula, Percutaneous Approach',576.93),(110,'Huxiaoqiao','2024-01-01 20:08:03','2024-02-09 16:01:11','Removal of Extraluminal Device from Lower Artery, Percutaneous Approach',461.62),(111,'São Martinho do Campo','2024-02-04 06:09:50','2024-05-19 18:20:38','Revision of Extraluminal Device in Epididymis and Spermatic Cord, External Approach',2467.35),(112,'Setanggor','2024-04-02 16:07:32','2023-10-05 20:07:58','Drainage of Facial Nerve, Percutaneous Endoscopic Approach',762.70),(113,'Doroslovo','2024-01-13 00:38:31','2024-04-11 05:38:59','Excision of Left Knee Joint, Open Approach',1527.01),(114,'São Bento','2023-11-16 16:41:00','2023-12-22 02:08:23','Drainage of Nasal Septum, Percutaneous Endoscopic Approach, Diagnostic',1099.84),(115,'Castillos','2023-07-18 17:24:11','2023-12-04 06:33:43','Bypass Left Common Iliac Artery to Right Renal Artery with Autologous Arterial Tissue, Percutaneous Endoscopic Approach',647.37),(116,'Cela','2024-03-21 09:25:56','2024-04-23 16:22:10','Insertion of Infusion Device into Inferior Mesenteric Vein, Open Approach',1463.38),(117,'Tost','2023-10-21 23:41:14','2024-04-22 12:46:55','Bypass Left External Iliac Artery to Left Femoral Artery with Nonautologous Tissue Substitute, Open Approach',668.61),(118,'Touguinha','2024-05-30 13:46:37','2023-12-09 19:03:35','Excision of Head Muscle, Percutaneous Approach',1492.34),(119,'Zhutian','2023-12-04 14:03:01','2024-04-13 06:16:12','Replacement of Left Parotid Duct with Nonautologous Tissue Substitute, Percutaneous Approach',2221.04),(120,'Sale','2023-07-28 06:32:42','2024-06-06 14:24:54','Bypass Right Axillary Artery to Right Upper Leg Artery with Autologous Arterial Tissue, Open Approach',1811.10),(121,'Pochinki','2023-11-27 05:30:16','2024-05-05 21:55:27','Division of Right Knee Bursa and Ligament, Percutaneous Approach',815.09),(122,'Estância Velha','2024-05-18 23:40:00','2023-08-27 14:22:00','Transfer Hypoglossal Nerve to Oculomotor Nerve, Percutaneous Endoscopic Approach',1593.82),(123,'Dolní Bečva','2023-08-31 15:26:04','2024-03-14 14:27:04','Drainage of Right Testis, Percutaneous Approach, Diagnostic',2203.25),(124,'Pásion','2023-10-09 02:36:02','2024-04-26 19:05:29','Dilation of Right Common Iliac Artery, Bifurcation, with Three Intraluminal Devices, Open Approach',1464.86),(125,'Mueang Nonthaburi','2024-04-20 06:41:40','2023-10-13 15:38:26','Insertion of External Fixation Device into Right Maxilla, Open Approach',692.86),(126,'La Caleta Culebras','2023-10-29 00:37:19','2023-11-22 15:12:58','Wound Management Treatment of Musculoskeletal System - Head and Neck',1529.60),(127,'La Agustina','2023-12-26 01:29:40','2023-09-25 04:47:56','Therapeutic Exercise Treatment of Circulatory System - Head and Neck using Physical Agents',920.10),(128,'Lanús','2023-09-27 04:41:23','2023-12-28 22:35:24','Excision of Mediastinum, Open Approach, Diagnostic',1796.61),(129,'Nizhnekamsk','2023-07-10 23:25:32','2024-01-23 19:39:31','Replacement of Right Lower Leg Subcutaneous Tissue and Fascia with Autologous Tissue Substitute, Open Approach',517.28),(130,'Kim Sơn','2023-10-28 18:47:41','2024-04-06 03:20:13','Drainage of Left Sternoclavicular Joint with Drainage Device, Open Approach',350.11),(131,'Isla Pucú','2024-06-25 12:43:53','2024-02-22 22:12:27','Bypass Left Innominate Vein to Upper Vein with Nonautologous Tissue Substitute, Open Approach',377.88),(132,'Bicurga','2023-10-26 23:57:32','2024-03-16 06:27:25','Supplement Ileum with Autologous Tissue Substitute, Via Natural or Artificial Opening Endoscopic',1570.07),(133,'Fox Creek','2024-05-15 07:28:57','2024-06-04 12:26:11','Introduction of Oxazolidinones into Lower GI, Percutaneous Approach',682.27),(134,'Nurlat','2023-12-09 02:38:49','2023-10-23 15:46:18','Transfer Left Foot Muscle with Skin and Subcutaneous Tissue, Open Approach',778.98),(135,'Nancheng','2024-03-10 19:45:50','2024-04-26 06:33:50','Extraction of Radial Nerve, Open Approach',844.81),(136,'Březová','2024-04-25 06:51:14','2023-11-14 12:54:14','Supplement Left Femoral Artery with Nonautologous Tissue Substitute, Percutaneous Endoscopic Approach',2202.73),(137,'Teseney','2023-07-12 09:09:48','2023-07-27 01:06:30','Drainage of Female Perineum, Percutaneous Endoscopic Approach',1777.59),(138,'Sobienie Jeziory','2024-06-09 06:06:23','2023-09-14 12:32:20','Excision of Right Pleura, Percutaneous Endoscopic Approach',1970.84),(139,'Balas','2023-09-24 10:26:33','2023-12-14 02:49:32','Drainage of Middle Esophagus, Percutaneous Approach, Diagnostic',1753.59),(140,'Madīnat Ḩamad','2024-04-01 10:16:29','2023-10-31 21:21:27','Excision of Carina, Via Natural or Artificial Opening, Diagnostic',784.79),(141,'Krasnoarmeysk','2023-09-13 07:40:29','2023-10-10 08:55:03','Transfer Perineum Skin, External Approach',2333.71),(142,'Chachoengsao','2023-10-22 17:42:40','2024-01-21 16:27:17','Release Right Elbow Joint, External Approach',1908.91),(143,'Guadalupe','2024-01-04 03:27:53','2023-10-21 11:04:47','Repair Left Innominate Vein, Percutaneous Approach',596.80),(144,'Capela','2023-12-03 14:30:28','2024-02-06 11:18:06','Monaural Hearing Aid Assessment using Hearing Aid Selection / Fitting / Test Equipment',2020.71),(145,'Kefar Yona','2023-12-15 05:54:40','2023-12-14 10:13:11','Insertion of Single Array Rechargeable Stimulator Generator into Chest Subcutaneous Tissue and Fascia, Open Approach',1800.49),(146,'Carletonville','2024-04-19 11:48:59','2023-08-14 09:01:19','Removal of Nonautologous Tissue Substitute from Face, Percutaneous Approach',1924.96),(147,'Novaya Derevnya','2023-10-21 15:27:06','2023-08-10 21:48:59','Extraction of Left Hand Bursa and Ligament, Percutaneous Endoscopic Approach',1840.17),(148,'San Jerónimo','2024-02-04 05:40:45','2023-08-11 02:53:27','Removal of Autologous Tissue Substitute from Right Metacarpocarpal Joint, Percutaneous Endoscopic Approach',2489.30),(149,'Morez','2024-04-18 20:55:17','2024-01-08 04:23:06','Excision of Left Submaxillary Gland, Open Approach',1846.16),(150,'Seremban','2024-03-22 14:24:32','2023-07-27 18:28:38','Excision of Right Pleura, Open Approach',2100.55);
/*!40000 ALTER TABLE `Viaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vuelo`
--

DROP TABLE IF EXISTS `Vuelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Vuelo` (
  `idVuelo` int NOT NULL AUTO_INCREMENT,
  `Aerolinea` varchar(100) NOT NULL,
  `NumeroVuelo` varchar(50) NOT NULL,
  `FechaSalida` datetime DEFAULT NULL,
  `FechaLlegada` datetime DEFAULT NULL,
  `Origen` varchar(100) DEFAULT NULL,
  `Destino` varchar(100) DEFAULT NULL,
  `Precio` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idVuelo`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='TABLA QUE ALMACENA LOS VUELOS DISPONIBLES';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vuelo`
--

LOCK TABLES `Vuelo` WRITE;
/*!40000 ALTER TABLE `Vuelo` DISABLE KEYS */;
INSERT INTO `Vuelo` VALUES (1,'Prosacco, Balistreri and Hermann','GE456TR4','2024-04-06 18:37:21','2024-06-03 04:54:22','Ann Arbor Municipal Airport','North Battleford Airport',987.24),(2,'Waelchi and Sons','JJ3452','2023-11-28 05:08:01','2023-09-08 14:00:46','Rimouski Airport','Accomack County Airport',2087.97),(3,'Christiansen-Jacobi','GE456TR4','2023-09-29 17:36:05','2023-09-20 05:26:27','Nop Goliat Airport','Chignik Bay Seaplane Base',801.88),(4,'McCullough Inc','JJ3452','2024-04-04 18:31:37','2023-10-07 12:57:51','Katima Mulilo Airport','Gage Airport',910.82),(5,'Welch, Prohaska and Parisian','JJ3452','2023-10-02 06:14:38','2024-05-07 01:59:33','Sønderborg Airport','Norway House Airport',687.51),(6,'Luettgen-Schmitt','AA1234LC','2024-02-25 04:49:19','2023-07-21 01:39:02','Cable Airport','Hambantota Seaplane Base',937.42),(7,'Ziemann, Gottlieb and Quitzon','AA1234LC','2024-03-06 23:36:18','2023-08-11 22:12:31','Musoma Airport','Sekakes Airport',1289.64),(8,'Grant, Turcotte and Gleason','ERD432','2024-03-15 04:33:13','2024-06-13 04:16:24','Harriet Alexander Field','Almirante Padilla Airport',1964.09),(9,'Bayer-Labadie','JJ3452','2024-03-06 07:36:12','2024-06-03 10:45:26','Eros Airport','Oceanside Municipal Airport',1346.74),(10,'Wunsch-Pacocha','IB7765T','2024-01-27 07:48:47','2024-06-14 07:14:29','Palma Airport','Elazığ Airport',1150.87),(11,'Prohaska-Glover','IB7765T','2023-07-12 10:52:20','2024-01-09 02:21:17','USAF Academy Airfield','LaGrange Callaway Airport',2344.08),(12,'McGlynn Group','IB7765T','2024-06-22 13:54:17','2023-08-24 20:57:59','Koyuk Alfred Adams Airport','Biskra Airport',677.99),(13,'Wuckert LLC','ED65T456','2023-10-15 18:27:18','2023-12-16 12:56:23','Tirupati Airport','Pocatello Regional Airport',2410.28),(14,'Balistreri-Jacobs','IB7765T','2023-10-07 08:51:38','2024-06-15 18:53:38','Seal Bay Seaplane Base','Ulawa Airport',2250.79),(15,'Baumbach, Ebert and Hackett','ERD432','2024-02-18 06:59:41','2024-04-08 22:21:29','Bom Jesus da Lapa Airport','Nanchong Airport',1070.17),(16,'Schamberger Group','ERD432','2023-08-07 03:30:44','2023-09-28 08:04:56','Eastern Oregon Regional At Pendleton Airport','Scusciuban Airport',1497.37),(17,'Emmerich-Hand','ED65T456','2024-01-07 05:11:29','2024-02-22 20:41:59','Hyderabad Airport','Mallacoota Airport',483.62),(18,'Torphy-Senger','AA1234LC','2023-10-18 20:09:54','2024-02-06 22:58:51','Mae Hong Son Airport','Middle Georgia Regional Airport',1921.59),(19,'Bayer, Vandervort and Konopelski','IB7765T','2023-09-29 09:33:53','2023-07-28 10:55:52','Simón Bolívar International Airport','Al Qaisumah/Hafr Al Batin Airport',426.08),(20,'Gusikowski Inc','AA1234LC','2024-06-23 07:54:07','2024-06-09 02:56:59','Beica Airport','Craig Cove Airport',1326.60),(21,'Doyle LLC','ED65T456','2024-05-30 00:48:16','2024-05-26 13:25:37','Negarbo(Negabo) Airport','Dangriga Airport',2026.97),(22,'Beer LLC','AA1234LC','2023-10-31 09:28:03','2024-02-29 08:31:05','Mount Full Stop Airport','Elista Airport',1566.07),(23,'Kuvalis, Schoen and Kertzmann','ED65T456','2024-07-01 08:41:23','2023-12-09 07:49:04','Fagurhólsmýri Airport','Hengyang Nanyue Airport',2363.42),(24,'Veum, Wiza and Fay','GE456TR4','2024-01-27 06:55:46','2023-07-23 00:38:46','Debepare Airport','Sayun International Airport',2469.12),(25,'Sauer, Batz and Mosciski','ED65T456','2024-03-29 06:56:47','2023-08-16 01:53:22','Vienna International Airport','Isle of Man Airport',1449.50),(26,'Jakubowski-Upton','AA1234LC','2023-10-20 21:27:08','2023-11-09 19:52:40','Makoua Airport','Shageluk Airport',2333.74),(27,'Swaniawski-Sawayn','IB7765T','2023-12-16 22:42:34','2024-01-21 21:41:49','João Paulo II Airport','Chandigarh Airport',402.01),(28,'Rath, Metz and Mitchell','AA1234LC','2024-04-16 23:54:02','2024-02-21 10:29:49','Lynchburg Regional Preston Glenn Field','Shreveport Regional Airport',669.24),(29,'Corkery, Hyatt and Kirlin','LT342R4','2023-09-22 08:28:50','2023-10-26 02:53:21','Rio Grande Airport','Thaba-Tseka Airport',371.36),(30,'Weimann-Casper','IB7765T','2023-11-03 22:35:17','2024-06-04 21:18:56','Al Baha Airport','Esperadinha Airport',1182.70),(31,'Marks Group','LT342R4','2024-04-22 17:56:10','2024-03-16 04:23:34','Frankfurt-Hahn Airport','Burevestnik Airport',377.31),(32,'Weimann, Sawayn and Aufderhar','GE456TR4','2024-06-20 15:46:48','2024-02-01 19:27:27','Gamboa Airport','Tanjore Air Force Base',810.52),(33,'Ferry-Dare','LT342R4','2024-04-30 08:06:29','2023-09-09 00:58:01','El Alamein International Airport','Innsbruck Airport',2474.21),(34,'Gutmann, Daugherty and Schumm','ED65T456','2023-12-27 05:35:32','2023-07-27 00:06:57','St Clair County Airport','Foshan Shadi Airport',1592.68),(35,'Williamson LLC','LT342R4','2023-09-17 11:46:39','2024-01-26 20:51:11','Columbus Air Force Base','Blimbingsari Airport',1835.93),(36,'Kunde, Hyatt and King','IB7765T','2023-09-05 08:15:25','2024-03-10 09:21:07','Eucla Airport','Bamburi Airport',660.98),(37,'Lind-Senger','LT342R4','2024-05-21 08:25:53','2023-12-26 00:58:10','Ponta do Ouro Airport','Betou Airport',2278.09),(38,'Bashirian-Daugherty','ERD432','2023-08-03 05:20:37','2024-03-19 19:05:46','Diego Jimenez Torres Airport','Sacheon Air Base/Airport',1010.96),(39,'Lowe, Lockman and Kuhic','JJ3452','2024-01-13 21:37:01','2023-12-01 23:22:38','Lusanga Airport','Carnot Airport',798.81),(40,'Parisian and Sons','GE456TR4','2023-10-24 21:26:03','2024-05-02 12:01:07','Buka Airport','Desroches Airport',1809.21),(41,'Dickens, Pfeffer and Cassin','LT342R4','2023-09-03 19:35:30','2023-10-27 23:08:05','Dillon Airport','Wrigley Airport',1948.04),(42,'Beatty-Prosacco','JJ3452','2023-12-30 01:22:10','2023-08-30 23:06:05','Point Lay LRRS Airport','Dillon County Airport',1841.22),(43,'Strosin LLC','JJ3452','2023-10-12 21:13:24','2023-10-13 10:32:18','Central Illinois Regional Airport at Bloomington-Normal','Naracoorte Airport',1298.40),(44,'Thiel and Sons','ED65T456','2023-10-26 12:34:54','2023-12-22 04:35:08','Candala Airport','Achutupo Airport',1562.70),(45,'Corkery LLC','LT342R4','2023-10-20 23:33:01','2023-08-25 10:10:33','Morgantown Municipal Walter L. Bill Hart Field','Zinder Airport',692.50),(46,'Watsica-Barton','AA1234LC','2023-12-20 19:58:37','2024-07-04 04:00:05','Pentagon Army Heliport','Yeerqiang Airport',1517.08),(47,'Von, Pfannerstill and Keeling','ED65T456','2024-01-26 10:53:17','2024-01-20 06:15:52','Gallup Municipal Airport','Doomadgee Airport',653.96),(48,'Cormier-Ziemann','ED65T456','2024-02-09 00:28:40','2023-12-17 01:56:35','Roosevelt Municipal Airport','Pine Cay Airport',1855.31),(49,'Leuschke-Huels','LT342R4','2023-12-13 09:12:14','2023-09-07 09:11:07','Sardar-e-Jangal Airport','Puka Puka Airport',2321.93),(50,'Flatley-Fisher','JJ3452','2024-04-08 20:04:14','2023-07-19 11:41:01','Stawell Airport','Letfotar Airport',425.97),(51,'Schroeder, Carroll and Ebert','LT342R4','2023-10-31 05:04:14','2023-12-22 03:19:05','Akanu Ibiam International Airport','Richard Toll Airport',1247.94),(52,'Feil and Sons','AA1234LC','2024-06-18 00:03:12','2023-10-27 17:42:50','Wrangell Airport','Phoenix-Mesa-Gateway Airport',481.36),(53,'Wuckert LLC','ED65T456','2023-10-14 03:27:28','2023-10-29 16:40:15','Cassilândia Airport','Selbang Airport',2013.38),(54,'Kuhic-Stokes','GE456TR4','2023-07-11 08:09:05','2023-08-11 04:14:26','Igaliku Heliport','Deniliquin Airport',901.88),(55,'Klocko, Jakubowski and Hills','ERD432','2024-05-15 08:09:55','2023-08-14 08:07:54','Spencer Municipal Airport','Collins Bay Airport',1006.78),(56,'Feeney LLC','ERD432','2023-07-20 09:08:44','2024-05-16 02:47:01','Kaélé Airport','Gambella Airport',424.71),(57,'Bruen and Sons','GE456TR4','2023-11-11 14:10:31','2023-08-12 15:48:53','Barra Airport','Changzhi Airport',1982.80),(58,'Weimann, Durgan and Rosenbaum','ERD432','2024-05-02 16:59:32','2023-09-02 21:48:19','La Roche-sur-Yon Airport','Agatti Airport',2466.08),(59,'Hoeger, Padberg and Bradtke','GE456TR4','2024-01-07 19:43:31','2024-05-20 03:26:17','Smith Field','Sibiti Airport',1314.64),(60,'Schulist-Erdman','ERD432','2024-04-19 02:21:44','2024-05-15 23:56:25','Nea Anchialos Airport','Kaufana Airport',2006.44),(61,'Gulgowski-Morar','JJ3452','2023-10-21 01:07:49','2023-10-02 11:50:27','Mitchell Plateau Airport','Columbus Air Force Base',569.72),(62,'Huels Group','JJ3452','2023-09-04 01:33:44','2024-06-01 05:36:32','Salamo Airport','Odense Airport',542.69),(63,'Langosh-Reynolds','ED65T456','2023-09-22 04:11:08','2024-01-13 08:50:10','Alula Airport','Learmonth Airport',627.72),(64,'Gutkowski-Howe','LT342R4','2023-11-14 10:56:34','2023-07-20 08:33:53','Bragado Airport','Nellis Air Force Base',1382.05),(65,'Hane-Smith','IB7765T','2024-05-06 11:31:37','2024-02-07 03:53:51','Vitebsk Vostochny Airport','Napaskiak Airport',961.18),(66,'Terry Inc','JJ3452','2024-01-03 00:49:29','2024-05-07 19:26:23','Unifly Heliport','Phaplu Airport',1540.79),(67,'Macejkovic and Sons','AA1234LC','2023-11-03 07:47:16','2024-07-06 08:12:42','Rio Galeão – Tom Jobim International Airport','Great Keppel Is Airport',1921.30),(68,'Wintheiser LLC','ERD432','2023-12-12 15:49:22','2024-06-21 16:07:34','Kandla Airport','Kissimmee Gateway Airport',1500.51),(69,'Medhurst, Boyle and Hammes','ED65T456','2024-04-05 11:59:27','2023-08-05 08:35:50','Gustavo Rojas Pinilla International Airport','McArthur River Mine Airport',1741.59),(70,'Torphy-Metz','ERD432','2023-12-28 07:16:35','2023-09-26 15:09:44','Antsalova Airport','Sanhe Airport',612.30),(71,'Klein and Sons','IB7765T','2024-04-07 03:03:18','2023-07-28 21:15:25','Roanoke–Blacksburg Regional Airport','Hilton Head Airport',1671.87),(72,'Schmidt-Yundt','LT342R4','2024-05-10 20:55:13','2024-06-22 08:37:29','Lalmonirhat Airport','Seguela Airport',916.10),(73,'McLaughlin, Marks and Bergstrom','LT342R4','2023-09-29 02:47:00','2024-01-28 13:18:53','Voronezh International Airport','Merritt Airport',999.59),(74,'West, Marquardt and Satterfield','ED65T456','2023-08-19 00:55:18','2024-06-10 23:22:03','Santa Barbara Municipal Airport','Fort Stockton Pecos County Airport',806.28),(75,'Hills, King and Grant','IB7765T','2023-11-03 17:19:16','2024-05-20 19:17:18','Iliamna Airport','Auburn Municipal Airport',2475.96),(76,'Towne Inc','ERD432','2024-04-15 07:27:46','2023-12-13 19:29:27','Iginniarfik','Guacamayas Airport',1592.25),(77,'Krajcik and Sons','GE456TR4','2023-11-16 10:37:45','2024-01-09 19:10:25','Ramsar Airport','Aeroclube de Bento Gonçalves Airport',1626.18),(78,'Rutherford-Schamberger','AA1234LC','2023-10-15 02:48:44','2024-05-08 21:49:45','Jiri Airport','Moengo Airstrip',723.29),(79,'Adams Group','LT342R4','2023-11-06 17:22:58','2024-05-13 22:45:43','Pichoy Airport','Wakkanai Airport',1284.99),(80,'Kuhic and Sons','ED65T456','2024-01-15 01:42:56','2023-09-06 09:48:03','Bogashevo Airport','Dr Ferdinand Lumban Tobing Airport',1657.77),(81,'Lehner, Lang and Fahey','IB7765T','2023-09-30 18:42:11','2023-11-25 20:11:56','Wiseman Airport','Bowers Field',718.87),(82,'Tremblay-Bayer','IB7765T','2024-05-17 20:49:16','2024-06-19 14:38:12','Kambalda Airport','Kenitra Airport',2451.56),(83,'Kshlerin Group','IB7765T','2024-07-07 02:01:21','2024-06-14 22:56:45','Greenwood–Leflore Airport','Abha Regional Airport',2163.29),(84,'West-Dickens','AA1234LC','2023-08-25 09:12:46','2024-01-15 23:48:31','Tumut Airport','Edward G. Pitka Sr Airport',2251.01),(85,'Stroman LLC','ERD432','2023-11-09 21:45:56','2023-07-12 11:05:09','Natuashish Airport','Timbedra Airport',1915.19),(86,'Lockman-Ward','ERD432','2023-12-05 16:38:17','2024-01-08 09:06:06','Ficksburg Sentraoes Airport','Dunk Island Airport',1714.97),(87,'Lueilwitz and Sons','JJ3452','2023-10-07 06:17:00','2023-09-13 03:52:33','Bathurst Airport','Wau Airport',2042.57),(88,'Cassin Group','ED65T456','2024-06-24 17:57:54','2023-08-19 02:26:36','Namudi Airport','Selfs Airport',1638.20),(89,'O\'Connell, Moore and Padberg','IB7765T','2023-09-04 02:32:31','2023-10-01 23:47:50','Casino Airport','Libo Airport',1138.62),(90,'Schowalter Group','LT342R4','2024-06-15 11:30:42','2024-03-08 11:09:38','Malden Regional Airport','El Minya Airport',2322.48),(91,'Schaden, Stanton and Zboncak','LT342R4','2024-02-08 05:22:11','2024-03-05 21:22:31','Ituberá Airport','Fazenda Vassoural Airport',1390.84),(92,'Senger, Skiles and Stehr','LT342R4','2024-04-17 12:41:17','2023-11-17 05:46:47','Impfondo Airport','Alluitsup Paa Heliport',2423.98),(93,'Kohler, Carroll and Schimmel','LT342R4','2024-04-15 07:33:11','2023-09-09 02:20:09','Grant County Airport','Pocheon G 217 Airport',2030.85),(94,'Klocko-Ernser','JJ3452','2024-02-17 18:29:18','2023-09-18 02:29:24','Qiemo Yudu Airport','San Juan Aposento Airport',2049.97),(95,'Collier-Schulist','IB7765T','2023-11-02 20:42:18','2023-11-10 12:09:34','Geva Airport','Simikot Airport',1845.55),(96,'Stehr Group','AA1234LC','2024-06-05 22:05:02','2023-10-27 04:50:42','Bisho Airport','Miyako Airport',2197.49),(97,'Spinka Inc','ED65T456','2024-04-28 11:25:53','2023-08-26 14:06:36','Capitan V A Almonacid Airport','Robinson River Airport',2334.79),(98,'Beier and Sons','IB7765T','2023-12-06 03:36:01','2023-08-30 11:03:07','Cold Bay Airport','Morobe Airport',1503.38),(99,'Denesik, Haag and Sanford','GE456TR4','2024-03-06 13:32:05','2024-02-27 01:00:30','Port Graham Airport','General José Antonio Anzoategui International Airport',1796.61),(100,'Anderson, Fisher and Hermann','LT342R4','2024-06-28 05:57:10','2024-06-24 06:26:48','Wakaya Island Airport','Gregory Downs Airport',959.98),(101,'Hayes, Lesch and Dooley','JJ3452','2023-12-09 00:00:58','2023-10-16 09:03:14','Upernavik Airport','Deputatskiy Airport',923.65),(102,'Dare, Hoppe and Herzog','GE456TR4','2023-12-02 15:11:43','2024-02-29 12:59:20','May River Airstrip','Yakutat Airport',381.89),(103,'Braun-Swift','JJ3452','2024-03-08 11:11:32','2024-06-29 05:46:31','Whitsunday Island Airport','Arrachart Airport',846.89),(104,'Rath LLC','AA1234LC','2024-05-24 10:32:03','2023-12-03 04:15:15','Vilhelmina Airport','Sauren Airport',492.03),(105,'Mayert-Doyle','GE456TR4','2023-09-27 01:23:54','2023-11-20 21:46:29','El Tor Airport','Ghat Airport',537.90),(106,'Wolf-Shields','LT342R4','2023-10-12 21:28:19','2024-02-08 01:29:20','Baracoa Airport','Lublin Airport',997.14),(107,'Gulgowski-Hilll','LT342R4','2023-10-18 15:06:37','2023-12-22 15:51:20','Truckee Tahoe Airport','V.C. Bird International Airport',2019.85),(108,'Auer, Hagenes and Volkman','ED65T456','2024-06-21 05:24:34','2023-07-12 14:22:48','Feramin Airport','La Baule-Escoublac Airport',735.73),(109,'Terry-Wehner','ED65T456','2023-08-07 03:00:19','2023-09-22 00:35:49','Rarotonga International Airport','Cartierville Airport',365.31),(110,'Cronin-Schuppe','GE456TR4','2024-04-26 21:11:52','2023-07-20 19:43:02','Bouarfa Airport','Resende Airport',839.60),(111,'Jones-Becker','AA1234LC','2024-05-08 13:53:23','2023-08-27 23:45:06','Bruce Campbell Field','Peppimenarti Airport',2113.80),(112,'Stokes and Sons','IB7765T','2024-01-14 08:35:42','2024-06-22 06:29:12','Dongying Shengli Airport','Achmad Yani Airport',726.76),(113,'Wilkinson-Lowe','GE456TR4','2023-11-13 15:17:55','2024-05-23 15:10:47','Doylestown Airport','Nanaimo Airport',1829.15),(114,'Collins, Daugherty and O\'Conner','LT342R4','2023-07-10 13:12:38','2023-07-11 05:43:43','Shanghai Pudong International Airport','Sarzana-Luni Air Base',2118.88),(115,'Schultz Group','ERD432','2024-04-26 21:45:42','2024-04-22 23:17:14','Waimea Kohala Airport','Oxnard Airport',1400.83),(116,'Jacobs-Hahn','JJ3452','2024-04-25 20:41:48','2023-12-08 15:49:16','Chute-Des-Passes/Lac Margane Seaplane Base','Isisford Airport',808.91),(117,'Konopelski-Erdman','ERD432','2023-11-07 19:04:54','2024-07-06 08:29:27','Norman Manley International Airport','Santa Ana Airport',1080.18),(118,'Toy-Brekke','ERD432','2023-09-30 21:31:35','2023-10-08 18:24:32','Ormara Airport','Yonaguni Airport',1545.50),(119,'Lehner, Rau and Hessel','AA1234LC','2023-12-03 16:33:14','2024-03-01 09:47:08','Moore County Airport','Indianapolis International Airport',1977.78),(120,'Mitchell, Mayer and Stokes','ED65T456','2024-04-20 16:45:56','2024-03-09 07:56:15','Mafra Airport','Khrabrovo Airport',988.05),(121,'Williamson Inc','AA1234LC','2024-06-13 18:59:55','2024-04-19 15:16:55','Sivas Nuri Demirağ Airport','Oksapmin Airport',1915.15),(122,'Simonis LLC','AA1234LC','2023-10-25 12:03:48','2023-11-21 01:04:45','Changzhi Airport','Dushanbe Airport',888.86),(123,'Wolf, Berge and Weissnat','ED65T456','2023-08-18 17:25:31','2024-05-08 22:11:12','Balurghat Airport','Auxerre-Branches Airport',1373.89),(124,'Stoltenberg Inc','ED65T456','2024-06-13 01:45:08','2024-03-24 23:46:55','Wonken Airport','Kibuli Airstrip',1627.80),(125,'Monahan Group','ERD432','2024-01-07 20:40:20','2024-06-23 21:15:06','Bagdogra Airport','Ogubsucum Airport',1894.99),(126,'Mills-Fadel','LT342R4','2023-12-07 12:11:35','2024-05-28 05:11:00','Ponciano Arriaga International Airport','Basongo Airport',772.46),(127,'Greenfelder-White','JJ3452','2024-02-26 16:28:38','2023-09-01 11:19:34','Pikangikum Airport','Coban Airport',547.42),(128,'Rippin, Stanton and Sauer','ED65T456','2024-05-06 12:43:11','2024-01-14 22:45:06','New Moon Airport','28 de Noviembre Airport',616.76),(129,'Harber-Kessler','LT342R4','2023-07-26 20:48:12','2023-10-16 04:43:03','King Cove Airport','Bordeaux-Mérignac Airport',652.77),(130,'Borer, Tillman and Lynch','AA1234LC','2024-03-03 11:36:43','2023-08-08 14:12:21','Black Tickle Airport','La Grande-4 Airport',350.13),(131,'Toy-Weimann','ERD432','2024-01-15 13:25:32','2024-01-15 18:14:00','Comodoro D.R. Salomón Airport','Gordon Downs Airport',326.90),(132,'O\'Kon and Sons','LT342R4','2023-09-07 12:48:13','2023-11-05 20:36:02','Des Moines International Airport','Picton Aerodrome',400.63),(133,'Raynor, Wisoky and Toy','GE456TR4','2023-07-30 10:45:19','2024-04-14 00:32:37','Sadiq Abubakar III International Airport','Licenciado Benito Juarez International Airport',1213.31),(134,'Pfeffer and Sons','LT342R4','2023-11-06 01:01:57','2024-01-09 19:47:50','La Roche-sur-Yon Airport','Colón Airport',1172.57),(135,'Gleason, Muller and Ryan','ERD432','2024-02-15 17:44:48','2023-10-02 09:13:02','Taldykorgan Airport','Maimana Airport',1263.41),(136,'Dibbert, Haag and Kemmer','GE456TR4','2024-04-21 23:47:16','2023-11-07 20:33:29','Nashik Airport','Guaíra Airport',2071.47),(137,'Schinner-Spencer','GE456TR4','2024-07-03 08:27:11','2024-02-16 01:29:32','Floyd Bennett Memorial Airport','Cram Field',2276.54),(138,'Bode, Dach and Swaniawski','ED65T456','2024-02-15 02:23:27','2023-10-01 19:16:04','Sharm El Sheikh International Airport','Juvenal Loureiro Cardoso Airport',1611.18),(139,'Ritchie-Weimann','ERD432','2024-02-13 04:23:00','2023-11-15 07:56:34','Barreirinhas Airport','Brighton Downs Airport',977.57),(140,'Roob-Lakin','GE456TR4','2023-12-02 17:23:37','2023-11-03 13:17:53','O\'Neal Airport','St Leonard Airport',2405.62),(141,'O\'Hara-Blanda','LT342R4','2024-03-16 18:18:35','2024-04-26 10:06:33','Albany Airport','Thohoyandou Airport',2264.72),(142,'Kemmer, Cormier and Schowalter','JJ3452','2023-10-04 13:46:56','2023-11-08 05:42:22','Austin Straubel International Airport','Damascus International Airport',629.98),(143,'MacGyver Inc','LT342R4','2024-01-25 18:22:37','2023-07-13 19:23:28','Zumbi dos Palmares Airport','Zhongwei Shapotou Airport',2040.58),(144,'Muller-Aufderhar','AA1234LC','2024-03-28 15:53:57','2023-10-14 12:52:36','Hualien Airport','Pointe-à-Pitre Le Raizet',559.01),(145,'O\'Kon and Sons','ED65T456','2024-05-23 08:59:51','2024-03-26 18:26:04','Buffalo Niagara International Airport','Rio Frio / Progreso Airport',1342.74),(146,'Cruickshank LLC','JJ3452','2024-02-26 12:19:13','2023-11-13 21:22:45','Alpine Airstrip','Alejandro Velasco Astete International Airport',1852.14),(147,'Feeney Inc','GE456TR4','2023-09-30 17:59:47','2023-10-17 14:04:36','Khashm El Girba Airport','Jerry Tyler Memorial Airport',2042.88),(148,'Jacobson-Reinger','LT342R4','2023-11-10 05:15:26','2023-12-19 16:15:21','Picton Aerodrome','Marshall Don Hunter Sr Airport',1900.66),(149,'Cruickshank Group','LT342R4','2024-05-24 07:57:04','2023-10-05 20:55:54','Bonnyville Airport','Auburn Lewiston Municipal Airport',2054.03),(150,'White-Bailey','JJ3452','2023-11-19 00:42:34','2024-04-19 20:02:32','Grand-Santi Airport','La Primavera Airport',1058.61),(151,'Rau-Terry','ERD432','2024-06-18 01:07:58','2023-11-21 11:57:41','Tata Airport','Qikiqtarjuaq Airport',1601.69),(152,'Emard, Jacobi and Haag','ED65T456','2023-12-13 04:55:12','2023-11-21 03:04:17','Berlin-Schönefeld Airport','Concepción Airport',1967.47),(153,'Hoeger, Wiza and Lang','LT342R4','2023-08-02 06:38:47','2023-08-19 15:37:10','Horsham Airport','Morney Airport',644.63),(154,'Hoppe Inc','ERD432','2023-10-01 02:20:33','2023-10-26 13:01:17','Tshimpi Airport','Mfuwe Airport',1897.35),(155,'Bailey Group','GE456TR4','2023-09-02 16:07:51','2024-04-23 06:25:30','Holt Airport','Bear Creek 3 Airport',2106.84),(156,'Jacobson and Sons','JJ3452','2024-01-21 00:37:50','2023-11-10 09:20:54','Limon Municipal Airport','Capitán Av. Selin Zeitun Lopez Airport',1252.62),(157,'Dare Group','ERD432','2024-02-29 14:28:53','2023-11-21 02:35:57','Tinian International Airport','Fazenda Vassoural Airport',713.57),(158,'Pollich, Hoeger and Funk','LT342R4','2023-11-18 18:18:17','2024-05-14 13:27:42','Mojave Airport','Bay City Municipal Airport',1668.45),(159,'Pagac Inc','AA1234LC','2023-11-29 21:19:00','2024-02-03 16:16:31','Walter J. Koladza Airport','Shelby Airport',1020.62),(160,'Gibson Group','IB7765T','2024-07-08 17:10:09','2024-03-27 12:43:38','Bousso Airport','Volgograd International Airport',1121.37),(161,'McLaughlin-Schuster','IB7765T','2024-06-20 18:08:49','2024-06-08 12:48:50','David Constantijn Saudale Airport','Lourdes de Blanc Sablon Airport',2008.37),(162,'Denesik, Langosh and Kub','ED65T456','2024-03-23 07:03:22','2023-10-01 11:15:50','Cowra Airport','Warukin Airport',1135.44),(163,'Keeling, Douglas and Ryan','GE456TR4','2023-12-16 00:42:32','2023-09-02 01:03:47','Hosea Kutako International Airport','Ovda International Airport',1013.70),(164,'Kovacek LLC','ED65T456','2024-05-11 01:42:04','2024-03-21 22:40:49','Andes Airport','Prince Rupert/Seal Cove Seaplane Base',323.20),(165,'Funk, Kerluke and Prohaska','ED65T456','2024-02-26 05:52:46','2024-03-17 06:57:33','Florence Municipal Airport','Monmouth Executive Airport',745.72),(166,'Fay-Abshire','AA1234LC','2024-07-04 14:17:00','2023-08-03 01:48:27','Atlantic City International Airport','Sacramento International Airport',1267.78),(167,'Huel, Schamberger and Ryan','ED65T456','2024-03-05 00:42:33','2024-01-06 02:28:51','Sandefjord Airport, Torp','Arlit Airport',821.20),(168,'Bernier-Raynor','ERD432','2024-02-09 05:08:49','2024-05-03 02:28:17','Vitebsk Vostochny Airport','Moulay Ali Cherif Airport',1844.38),(169,'Pfannerstill Inc','IB7765T','2024-05-14 05:00:02','2023-11-28 02:37:58','Aupaluk Airport','Kenora Airport',625.82),(170,'Crist-Rogahn','AA1234LC','2023-07-27 23:56:14','2023-11-05 22:11:40','Surat Thani Airport','Skeldon Airport',2271.97),(171,'Bashirian-Bechtelar','LT342R4','2023-12-23 19:23:54','2023-12-18 02:27:10','Aeroclube Airport','Trollhättan-Vänersborg Airport',1030.72),(172,'Kutch, Cruickshank and Wuckert','AA1234LC','2023-12-22 22:02:14','2023-11-24 04:30:06','Zaqatala International Airport','Kirkwall Airport',612.31),(173,'Legros, Spencer and Christiansen','IB7765T','2024-03-31 05:06:31','2023-11-30 10:23:22','Pensacola Naval Air Station/Forrest Sherman Field','Stephenville Airport',2019.33),(174,'Schaefer Inc','GE456TR4','2024-02-27 20:20:52','2024-02-28 13:28:13','Pore Airport','Scranton Municipal Airport.',1728.32),(175,'Mosciski, Volkman and Dickinson','IB7765T','2023-08-25 11:31:17','2024-07-07 08:15:31','Key Field','Musina(Messina) Airport',2467.27),(176,'Schowalter-Maggio','GE456TR4','2023-12-18 20:53:56','2023-11-18 04:39:15','Santa Elena de Uairen Airport','Treinta y Tres Airport',1232.65),(177,'Stark Group','IB7765T','2023-10-10 12:53:18','2023-07-23 22:59:51','Haugesund Airport','Sliač Airport',411.83),(178,'Bauch LLC','LT342R4','2024-05-18 06:05:57','2024-04-05 13:36:24','Santa Fe Municipal Airport','Bintulu Airport',1534.34),(179,'Hilll-Swaniawski','ERD432','2024-06-11 00:13:49','2023-07-12 16:42:23','Sabha Airport','Soroti Airport',873.58),(180,'Daniel, Hintz and White','AA1234LC','2024-06-07 23:59:56','2023-10-10 11:59:54','Rocky Mountain House Airport','Barinas Airport',910.92),(181,'Morissette-Mante','JJ3452','2023-10-24 06:31:07','2024-03-13 06:46:28','Springdale Municipal Airport','Lübeck Blankensee Airport',1463.51),(182,'Adams LLC','AA1234LC','2023-10-08 20:50:38','2023-08-30 11:10:42','Kagoshima Airport','Lawson Army Air Field (Fort Benning)',1257.62),(183,'Ryan, Mann and Cormier','ERD432','2024-05-30 03:10:02','2024-05-17 19:59:34','Yushu Batang Airport','San José Island Airport',1110.82),(184,'Bartoletti Group','ED65T456','2024-04-16 21:25:18','2023-12-15 08:42:02','Takhli Airport','Sheikh ul Alam Airport',456.69),(185,'Schaden-Rempel','ED65T456','2024-04-25 22:30:55','2023-10-31 14:32:44','Tak Airport','Vanimo Airport',1909.47),(186,'Mante, Friesen and McDermott','IB7765T','2023-07-11 15:36:48','2024-03-21 14:45:51','Aerotortuguero Airport','Rincon De Los Sauces Airport',2163.09),(187,'Mertz LLC','GE456TR4','2024-03-14 03:39:41','2024-01-11 03:50:44','Moyale Airport','Los Alamos Airport',1604.07),(188,'Stokes Group','IB7765T','2024-03-18 15:30:55','2023-11-25 13:32:53','Bouca Airport','Burgos Airport',1540.18),(189,'Keebler and Sons','ERD432','2024-06-04 22:36:36','2024-03-04 04:55:06','Carlos Manuel de Cespedes Airport','Straubing Airport',2186.24),(190,'Davis-Pollich','ERD432','2023-08-28 11:21:38','2024-02-01 03:10:47','Rechlin-Lärz Airport','Santa Cruz do Sul Airport',535.69),(191,'Koch and Sons','AA1234LC','2024-04-19 13:26:05','2024-06-16 01:32:09','Geneva Cointrin International Airport','USAF Academy Airfield',348.12),(192,'Schaden and Sons','JJ3452','2024-06-24 20:58:12','2024-01-12 18:32:12','Yingkou Lanqi Airport','Gordil Airport',1359.71),(193,'Krajcik-Pfeffer','AA1234LC','2024-01-20 11:02:26','2023-08-10 04:00:48','Hay Airport','Craig Cove Airport',545.08),(194,'Beahan-Crona','ED65T456','2024-03-23 08:35:55','2024-07-06 07:33:13','Enid Woodring Regional Airport','West Wyalong Airport',2358.71),(195,'Welch, Wehner and Legros','ED65T456','2023-12-19 17:28:48','2023-07-15 14:43:31','Kompiam Airport','Cherokee County Airport',2201.42),(196,'Kuhlman LLC','JJ3452','2023-08-09 17:06:32','2023-09-28 16:45:55','Salluit Airport','Lusikisiki Airport',1222.52),(197,'Nitzsche, Vandervort and Grimes','AA1234LC','2023-11-05 01:11:31','2023-08-17 07:21:16','Mulatupo Airport','Chautauqua County-Dunkirk Airport',2290.35),(198,'Johns-Stark','JJ3452','2023-07-29 03:21:24','2023-12-10 00:14:24','Avalon Airport','Wonenara Airport',1177.88),(199,'Wilkinson and Sons','IB7765T','2023-12-15 10:52:59','2023-08-06 15:45:08','Quezaltenango Airport','Rotorua Regional Airport',1816.55),(200,'Wuckert Inc','JJ3452','2023-08-12 23:39:53','2023-09-09 06:24:00','Nangade Airport','Stockholm Airport',2186.13);
/*!40000 ALTER TABLE `Vuelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'agencia_viajes'
--
/*!50003 DROP FUNCTION IF EXISTS `CalcularPrecioConDescuento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CalcularPrecioConDescuento`(Hotel_id INT, FechaCheckIn DATE, FechaCheckOut DATE) RETURNS decimal(10,2)
    READS SQL DATA
    DETERMINISTIC
BEGIN
    DECLARE PrecioOriginal DECIMAL(10, 2);
    DECLARE TotalNoches INT;
    DECLARE PrecioConDescuento DECIMAL(10, 2);

    -- Obtener el precio por noche del hotel y guardarlo en PrecioOriginal
    SELECT PrecioPorNoche
    INTO PrecioOriginal
    FROM Hotel
    WHERE Hotel_id = idHotel;

    -- Calcular el total de noches
    SET TotalNoches = DATEDIFF(FechaCheckOut, FechaCheckIn);

    -- Si las noches son más de 5, aplicar descuento del 10%
    IF TotalNoches > 5 THEN
        SET PrecioConDescuento = PrecioOriginal * 0.9;
    ELSE
        SET PrecioConDescuento = PrecioOriginal;
    END IF;

    RETURN PrecioConDescuento;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `reservas_empleado_periodo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `reservas_empleado_periodo`(empleado_id INT, fecha_inicio DATETIME, fecha_fin DATETIME) RETURNS int
    READS SQL DATA
    DETERMINISTIC
BEGIN
	DECLARE reservas_count INT;
    
    SELECT COUNT(*) INTO reservas_count
    FROM Reserva
    WHERE empleado_id = idEmpleado
    AND FechaReserva >= fecha_inicio
    AND FechaReserva <= fecha_fin;
    
    RETURN reservas_count;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_agregar_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_cliente`(
	IN p_Nombre VARCHAR(100),
	IN p_Apellido VARCHAR(100),
	IN p_Direccion VARCHAR(200),
	IN p_Telefono VARCHAR(100),
	IN p_Email VARCHAR(100),
	IN p_TipoCliente VARCHAR(10)
)
BEGIN
	DECLARE existeCliente INT;

	-- Verifico si ya existe el cliente a traves de su Email
	SELECT COUNT(*) INTO existeCliente
	FROM Cliente
	WHERE Email = p_Email;
    
	IF existeCliente = 1 THEN
		-- Si existe el cliente, devolver un mensaje de error
		SELECT 'El cliente con el Email ', p_Email, ' ya se encuentra registrado en la Base de Datos.';
   	ELSE 
		INSERT INTO Cliente (Nombre, Apellido, Direccion, Telefono, Email, TipoCliente)
		VALUES (p_Nombre, p_Apellido, p_Direccion, p_Telefono, p_Email, p_TipoCliente);
		-- Devuelvo el ID de la reserva creada
		SELECT 'Cliente creado exitosamente, su idCliente es: ', LAST_INSERT_ID() AS id_cliente_nuevo;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_nueva_reserva` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_nueva_reserva`(
	IN p_fechaViaje DATETIME,
	IN p_idCliente INT,
	IN p_idViaje INT,
	IN p_idEmpleado INT
)
BEGIN
	DECLARE existeCliente INT;
	DECLARE existeEmpleado INT;
    
	-- Verificar si existe el Cliente
	SELECT COUNT(*) INTO existeCliente
	FROM Cliente
	WHERE idCliente = p_idCliente;

	-- Verificar si existe el Empleado
	SELECT COUNT(*) INTO existeEmpleado
	FROM Empleado
	WHERE idEmpleado = p_idEmpleado;
    
	IF existeCliente = 0 THEN
    		-- Si no existe el cliente, devolver un mensaje de error
    		SELECT 'El idCliente ingresado no existe';
	ELSEIF existeEmpleado = 0 THEN
		-- Si no existe el empleado, devolver un mensaje de error
		SELECT 'El idEmpleado ingresado no existe';
	ELSE 
		INSERT INTO Reserva (FechaReserva, FechaViaje, idCliente, idViaje, idEmpleado)
		VALUES (NOW(), p_fechaViaje, p_idCliente, p_idViaje, p_idEmpleado);
        
                -- Devuelvo el ID de la reserva creada
		SELECT 'Reserva creada exitosamente, su idReserva es: ', LAST_INSERT_ID() AS id_Reserva_Nueva;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `CantidadReservasPorEmpleado`
--

/*!50001 DROP VIEW IF EXISTS `CantidadReservasPorEmpleado`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `CantidadReservasPorEmpleado` AS select `E`.`Nombre` AS `Nombre`,`E`.`Email` AS `Email`,count(`R`.`idReserva`) AS `TotalReservas` from (`Empleado` `E` join `Reserva` `R` on((`E`.`idEmpleado` = `R`.`idEmpleado`))) group by `E`.`Nombre`,`E`.`Email` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `DestinoConMasReservas`
--

/*!50001 DROP VIEW IF EXISTS `DestinoConMasReservas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `DestinoConMasReservas` AS select `V`.`Destino` AS `Destino`,count(`R`.`idReserva`) AS `TotalReservas` from (`Viaje` `V` join `Reserva` `R` on((`V`.`idViaje` = `R`.`idViaje`))) group by `V`.`Destino` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ReservasCliente`
--

/*!50001 DROP VIEW IF EXISTS `ReservasCliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ReservasCliente` AS select concat(`C`.`Nombre`,' ',`C`.`Apellido`) AS `NombreCompleto`,`C`.`Direccion` AS `Direccion`,`C`.`Telefono` AS `Telefono`,`C`.`Email` AS `Email`,`C`.`TipoCLiente` AS `TipoCliente`,`R`.`FechaReserva` AS `FechaReserva`,`V`.`Destino` AS `Destino`,`V`.`FechaSalida` AS `FechaSalida`,`V`.`FechaRegreso` AS `FechaRegreso`,`V`.`Descripcion` AS `DescripcionViaje`,`V`.`Precio` AS `Precio` from ((`Cliente` `C` join `Reserva` `R` on((`C`.`idCliente` = `R`.`idCliente`))) join `Viaje` `V` on((`R`.`idViaje` = `V`.`idViaje`))) order by `R`.`FechaReserva` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-14 11:30:03
