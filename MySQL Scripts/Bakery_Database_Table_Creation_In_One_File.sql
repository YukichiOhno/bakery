-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: projectdb4365.cpeuumwkwyy0.us-east-1.rds.amazonaws.com    Database: BAKERY
-- ------------------------------------------------------
-- Server version	8.0.35

CREATE DATABASE IF NOT EXISTS BAKERY;
USE BAKERY;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
-- SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

-- SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `ALLERGY_INFO`
--

DROP TABLE IF EXISTS `ALLERGY_INFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ALLERGY_INFO` (
  `ALLERGY_ID` int unsigned NOT NULL,
  `ALLERGY_NAME` varchar(255) NOT NULL,
  `ALLERGY_DESC` varchar(255) NOT NULL,
  `PRECAUTION` text,
  `HANDLING_INST` text NOT NULL,
  PRIMARY KEY (`ALLERGY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ALLERGY_INFO`
--

LOCK TABLES `ALLERGY_INFO` WRITE;
/*!40000 ALTER TABLE `ALLERGY_INFO` DISABLE KEYS */;
INSERT INTO `ALLERGY_INFO` VALUES (341001,'Gluten','Gluten intolerance','Avoid products containing wheat flour','Use separate utensils for gluten-free items'),(341002,'Dairy','Dairy allergy','Use dairy-free substitutes','Clean surfaces thoroughly'),(341003,'Nut','Nut allergy','Avoid products containing nuts','Store separately from nut-free products'),(341004,'Egg','Egg allergy','Use egg substitutes','Ensure equipment is thoroughly cleaned'),(341005,'Soy','Soy allergy','Avoid products containing soy','Label items clearly'),(341006,'Sesame','Sesame allergy','Avoid products containing sesame seeds','Train staff on allergy protocols'),(341007,'Peanut','Peanut allergy','Avoid products containing peanuts','Double-check ingredients'),(341008,'Fish','Fish allergy','Avoid products containing fish','Offer alternative options'),(341009,'Shellfish','Shellfish allergy','Avoid products containing shellfish','Inform customers about allergens'),(341010,'Milk','Milk allergy','Use dairy-free substitutes','Clean equipment thoroughly after use'),(341011,'Wheat','Wheat allergy','Avoid products containing wheat','Store separately from wheat-free items'),(341012,'Tree Nut','Tree nut allergy','Avoid products containing tree nuts','Use separate equipment'),(341013,'Sulfite','Sulfite sensitivity','Avoid products containing sulfites','Check labels carefully'),(341014,'Corn','Corn allergy','Avoid products containing corn','Provide ingredient lists to customers'),(341015,'Mustard','Mustard allergy','Avoid products containing mustard','Ensure proper ventilation'),(341016,'Celery','Celery allergy','Avoid products containing celery','Store allergen-free items separately'),(341017,'Lupin','Lupin allergy','Avoid products containing lupin','Train staff on cross-contamination'),(341018,'Mollusk','Mollusk allergy','Avoid products containing mollusks','Use separate storage areas'),(341019,'Red Dye','Red dye allergy','Avoid products containing red dye','Communicate with suppliers'),(341020,'Latex','Latex allergy','Avoid products containing latex','Use latex-free gloves'),(341021,'Nightshade','Nightshade allergy','Avoid products containing nightshade plants','Provide allergy information to customers'),(341022,'Meat','Meat allergy','Avoid products containing meat','Use dedicated cooking utensils'),(341023,'Honey','Honey allergy','Avoid products containing honey','Ensure honey-free options are available'),(341024,'Sugar','Sugar allergy','Avoid products containing refined sugar','Offer sugar-free alternatives'),(341025,'Artificial Colors','Artificial color allergy','Avoid products containing artificial colors','Provide clear labeling');
/*!40000 ALTER TABLE `ALLERGY_INFO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BUDGET`
--

DROP TABLE IF EXISTS `BUDGET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BUDGET` (
  `BUDGET_ID` int unsigned NOT NULL,
  `FISCAL_YEAR` smallint NOT NULL,
  `ALLOCATED_AMT` decimal(10,2) NOT NULL,
  `REMAINING_AMT` decimal(10,2) DEFAULT NULL,
  `BUDGET_STATUS` varchar(25) NOT NULL,
  `DEPT_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`BUDGET_ID`),
  KEY `DEPT_ID` (`DEPT_ID`),
  CONSTRAINT `BUDGET_ibfk_1` FOREIGN KEY (`DEPT_ID`) REFERENCES `DEPARTMENT` (`DEPT_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BUDGET`
--

LOCK TABLES `BUDGET` WRITE;
/*!40000 ALTER TABLE `BUDGET` DISABLE KEYS */;
INSERT INTO `BUDGET` VALUES (987136,2024,547866.55,398821.00,'Active',252102),(987140,2024,598734.00,492782.00,'Active',252107),(987203,2024,630924.00,432937.00,'Active',252109),(987204,2024,567936.00,465899.00,'Active',252106),(987327,2024,477055.80,301904.00,'Active',252107),(987347,2023,500841.60,372990.00,'Active',252110),(987409,2024,573040.00,433094.00,'Active',252104),(987410,2024,554472.75,362272.00,'Active',252107),(987501,2024,530862.40,374650.00,'Active',252106),(987517,2024,576357.60,387147.00,'Active',252105),(987529,2024,525223.35,328599.00,'Active',252102),(987603,2023,579263.40,433384.00,'Active',252106),(987605,2024,452421.75,284216.00,'Active',252104),(987628,2024,569590.45,396214.00,'Active',252108),(987652,2024,539469.60,341452.00,'Active',252103),(987681,2024,559144.65,419888.00,'Active',252108),(987720,2024,510037.50,396156.00,'Active',252108),(987731,2024,545751.00,373620.00,'Active',252101),(987812,2024,583233.50,387451.00,'Active',252103),(987813,2024,451448.80,303242.00,'Active',252102),(987845,2020,561358.80,408859.00,'Active',252104),(987894,2024,553650.60,453641.00,'Active',252101),(987926,2022,554468.40,385547.00,'Active',252107),(987950,2021,509982.40,375648.00,'Active',252106);
/*!40000 ALTER TABLE `BUDGET` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CARD_ISSUER`
--

DROP TABLE IF EXISTS `CARD_ISSUER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CARD_ISSUER` (
  `CARD_ID` int unsigned NOT NULL,
  `CARD_TYPE` varchar(25) NOT NULL,
  `ISSUING_BANK` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CARD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CARD_ISSUER`
--

LOCK TABLES `CARD_ISSUER` WRITE;
/*!40000 ALTER TABLE `CARD_ISSUER` DISABLE KEYS */;
INSERT INTO `CARD_ISSUER` VALUES (731001,'Visa','Bank of America'),(731002,'Mastercard','Chase Bank'),(731003,'American Express','Citibank'),(731004,'Discover','Wells Fargo'),(731005,'Visa','Capital One'),(731006,'Mastercard','TD Bank'),(731007,'American Express','US Bank'),(731008,'Visa','PNC Bank'),(731009,'Mastercard','Barclays'),(731010,'American Express','HSBC Bank'),(731011,'Visa','Goldman Sachs'),(731012,'Mastercard','Morgan Stanley'),(731013,'American Express','Deutsche Bank'),(731014,'Visa','UBS'),(731015,'Mastercard','Santander Bank'),(731016,'American Express','BBVA'),(731017,'Visa','BNP Paribas'),(731018,'Mastercard','Standard Chartered'),(731019,'American Express','Credit Suisse'),(731020,'Visa','SociŽtŽ GŽnŽrale'),(731021,'Mastercard','Mizuho Bank'),(731022,'American Express','Sumitomo Mitsui'),(731023,'Visa','MUFG Bank'),(731024,'Mastercard','ING Bank'),(731025,'American Express','Royal Bank of Scotland');
/*!40000 ALTER TABLE `CARD_ISSUER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CATERING`
--

DROP TABLE IF EXISTS `CATERING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CATERING` (
  `CATER_CODE` int unsigned NOT NULL,
  `CATER_TYPE` varchar(255) NOT NULL,
  `CATER_REVENUE` decimal(10,2) NOT NULL,
  `EVENT_CODE` int unsigned DEFAULT NULL,
  PRIMARY KEY (`CATER_CODE`),
  KEY `EVENT_CODE` (`EVENT_CODE`),
  CONSTRAINT `CATERING_ibfk_1` FOREIGN KEY (`EVENT_CODE`) REFERENCES `EVENT` (`EVENT_CODE`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CATERING`
--

LOCK TABLES `CATERING` WRITE;
/*!40000 ALTER TABLE `CATERING` DISABLE KEYS */;
INSERT INTO `CATERING` VALUES (135001,'Breakfast',34695.54,454345),(135002,'Lunch',49988.34,454123),(135003,'Snacks',54885.60,454444),(135004,'Dinner',63095.76,454456),(135005,'Desserts',48264.12,454002),(135006,'Buffet',17353.44,454845),(135007,'Cocktail',20990.88,454234),(135008,'High Tea',47975.76,454562),(135009,'Brunch',33177.06,454768),(135010,'Barbecue',53404.92,454621),(135011,'Hors d\'oeuvres',30905.28,454812),(135012,'Picnic',59275.26,454562),(135013,'Afternoon Tea',37087.20,454990),(135014,'Family Style',30180.60,454812),(135015,'Tapas',18727.20,454289),(135016,'Plated',41583.24,454978),(135017,'Boxed Lunch',21403.44,454812),(135018,'Finger Foods',21092.40,454621),(135019,'Potluck',48297.60,454768),(135020,'Canapés',33318.00,454532),(135021,'Grazing Table',28746.90,454345),(135022,'Sushi',41544.36,454757),(135023,'Fondue',53513.46,454367),(135024,'Tapenade',42883.02,454731),(135025,'Fondant',28792.80,454731),(135026,'Tapenade',31505.76,454876),(135027,'Dinner',21434.22,454345),(135028,'Tapas',52091.10,454562),(135029,'Afternoon Tea',32002.56,454876),(135030,'Family Style',34719.30,454997),(135031,'Boxed Lunch',41018.40,454990),(135032,'Canapés',76749.12,454532),(135033,'Fondue',69008.76,454812),(135034,'High Tea',65836.80,454367),(135035,'Finger Foods',44928.00,454444),(135036,'Dinner',71442.00,454902),(135037,'High Tea',79289.28,454768),(135038,'Fondant',43488.36,454123),(135039,'Afternoon Tea',40010.76,454757),(135040,'Picnic',53187.84,454289),(135041,'Tapenade',26658.72,454997),(135042,'Plated',51775.20,454444),(135043,'Tapenade',54007.56,454123),(135044,'Tapas',53505.90,454621),(135045,'Breakfast',44733.60,454768),(135046,'Buffet',71422.56,454757),(135047,'Cocktail',35179.92,454621),(135048,'Canapés',64926.90,454902),(135049,'Brunch',38232.54,454902),(135050,'Breakfast',84780.00,454997),(135051,'Tapenade',27228.96,454997),(135052,'Potluck',39009.60,454123),(135053,'Buffet',47076.12,454601),(135054,'Barbecue',55935.36,454978),(135055,'Afternoon Tea',25344.90,454990),(135056,'Breakfast',69030.36,454345),(135057,'Cocktail',47871.00,454997),(135058,'Boxed Lunch',37968.48,454621),(135059,'Canapés',46474.56,454444),(135060,'Breakfast',52288.74,454367),(135061,'Potluck',47900.16,454990),(135062,'Snacks',39573.36,454123),(135063,'Potluck',34885.08,454876),(135064,'Snacks',28618.38,454532),(135065,'Boxed Lunch',52313.04,454789),(135066,'Dinner',34987.68,454562),(135067,'Family Style',44475.48,454902),(135068,'High Tea',71390.70,454367),(135069,'Picnic',59440.50,454609),(135070,'Snacks',33741.36,454345),(135071,'Brunch',51710.40,454845),(135072,'Cocktail',33296.94,454345),(135073,'Sushi',50228.10,454731),(135074,'Hors d\'oeuvres',63286.92,454123),(135075,'Fondant',42246.36,454289),(135076,'Snacks',30099.06,454997),(135077,'Snacks',50346.36,454812),(135078,'Fondue',54739.26,454876),(135079,'Lunch',46552.32,454562),(135080,'Desserts',49480.20,454289),(135081,'High Tea',62295.48,454990),(135082,'Desserts',55094.04,454768),(135083,'Desserts',34182.00,454345),(135084,'Tapenade',21716.10,454990),(135085,'Canapés',36223.20,454876),(135086,'Breakfast',73288.80,454621),(135087,'High Tea',51505.74,454812),(135088,'Grazing Table',54864.54,454902),(135089,'Brunch',47700.90,454812),(135090,'Hors d\'oeuvres',81907.20,454876),(135091,'Cocktail',52179.12,454532),(135092,'Brunch',25812.00,454289),(135093,'Fondue',38058.66,454621),(135094,'Desserts',50684.40,454757),(135095,'Snacks',50457.60,454978),(135096,'Dinner',40761.90,454757),(135097,'Afternoon Tea',17629.92,454345),(135098,'Barbecue',36363.60,454601),(135099,'Lunch',30951.72,454609);
/*!40000 ALTER TABLE `CATERING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CATERING_PRODUCT`
--

DROP TABLE IF EXISTS `CATERING_PRODUCT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CATERING_PRODUCT` (
  `CATER_CODE` int unsigned NOT NULL,
  `PROD_ID` int unsigned NOT NULL,
  PRIMARY KEY (`CATER_CODE`,`PROD_ID`),
  KEY `PROD_ID` (`PROD_ID`),
  CONSTRAINT `CATERING_PRODUCT_ibfk_1` FOREIGN KEY (`CATER_CODE`) REFERENCES `CATERING` (`CATER_CODE`) ON DELETE CASCADE,
  CONSTRAINT `CATERING_PRODUCT_ibfk_2` FOREIGN KEY (`PROD_ID`) REFERENCES `PRODUCT` (`PROD_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CATERING_PRODUCT`
--

LOCK TABLES `CATERING_PRODUCT` WRITE;
/*!40000 ALTER TABLE `CATERING_PRODUCT` DISABLE KEYS */;
INSERT INTO `CATERING_PRODUCT` VALUES (135002,2154001),(135005,2154001),(135018,2154002),(135016,2154003),(135024,2154003),(135008,2154004),(135009,2154004),(135008,2154007),(135022,2154007),(135025,2154007),(135006,2154008),(135004,2154011),(135016,2154011),(135001,2154012),(135002,2154013),(135020,2154013),(135002,2154014),(135009,2154014),(135023,2154014),(135005,2154017),(135011,2154017),(135015,2154018),(135006,2154019),(135013,2154020),(135017,2154021),(135001,2154022),(135013,2154022),(135020,2154023),(135002,2154024),(135023,2154025);
/*!40000 ALTER TABLE `CATERING_PRODUCT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CERTIFICATION`
--

DROP TABLE IF EXISTS `CERTIFICATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CERTIFICATION` (
  `CERT_ID` int unsigned NOT NULL,
  `CERT_NAME` varchar(255) NOT NULL,
  `RENEWAL_PERIOD` smallint NOT NULL,
  `ISSUED_BY` varchar(255) NOT NULL,
  `TRAIN_CODE` int unsigned DEFAULT NULL,
  PRIMARY KEY (`CERT_ID`),
  KEY `TRAIN_CODE` (`TRAIN_CODE`),
  CONSTRAINT `CERTIFICATION_ibfk_1` FOREIGN KEY (`TRAIN_CODE`) REFERENCES `TRAINING` (`TRAIN_CODE`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CERTIFICATION`
--

LOCK TABLES `CERTIFICATION` WRITE;
/*!40000 ALTER TABLE `CERTIFICATION` DISABLE KEYS */;
INSERT INTO `CERTIFICATION` VALUES (435001,'Food Safety Certification',2,'Health Department',301001),(435002,'Baking Techniques',1,'Culinary Institute',301002),(435003,'Sanitation Training',2,'Bakery Association',301003),(435004,'Customer Service Skills',2,'Retail Academy',301004),(435005,'Equipment Maintenance',1,'Bakery Suppliers',301005),(435006,'First Aid Certification',2,'Red Cross',301006),(435007,'Pastry Chef Certification',2,'Culinary Guild',301007),(435008,'Inventory Management',2,'Business Solutions',301008),(435009,'Barista Certification',1,'Coffee Association',301009),(435010,'HACCP Training',2,'Food Safety Institute',301010),(435011,'Team Leadership',2,'Management Academy',301011),(435012,'Sustainability Practices',2,'Environmental Council',301012),(435013,'Cake Decorating Mastery',1,'Cake Design School',301013),(435014,'Digital Marketing for Bakeries',2,'Marketing Institute',301014),(435015,'Workplace Safety',2,'Safety Authority',301015),(435016,'Gluten-Free Baking',2,'Dietary Association',301016),(435017,'Financial Literacy',1,'Finance Institute',301017),(435018,'Certified Bread Baker',2,'Baking Guild',301018),(435019,'Time Management Skills',2,'Productivity Experts',301019),(435020,'Menu Planning Expertise',2,'Culinary Institute',301020),(435021,'Event Catering Specialist',1,'Catering Association',301021),(435022,'Social Media Marketing',2,'Digital Marketing Institute',301022),(435023,'Professionalism in the Workplace',2,'Professional Development Center',301023),(435024,'Sustainable Sourcing',2,'Environmental Council',301024),(435025,'Artisan Bread Crafting',1,'Baking Guild',301025),(435026,'Customer Feedback Management',2,'Customer Service Institute',301026),(435027,'Safe Food Handling',2,'Food Safety Institute',301027),(435028,'Entrepreneurship in Baking',2,'Business Academy',301028),(435029,'Advanced Pastry Techniques',1,'Culinary Institute',301029),(435030,'Workplace Diversity Training',2,'Diversity and Inclusion Institute',301030);
/*!40000 ALTER TABLE `CERTIFICATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMPANY_CARD`
--

DROP TABLE IF EXISTS `COMPANY_CARD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COMPANY_CARD` (
  `COMP_CARD` int unsigned NOT NULL,
  `CARD_NUM` varchar(20) NOT NULL,
  `BALANCE` decimal(20,2) NOT NULL,
  `COMP_CARD_MONTH` smallint NOT NULL,
  `COMP_CARD_YEAR` smallint NOT NULL,
  `CARD_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`COMP_CARD`),
  KEY `CARD_ID` (`CARD_ID`),
  CONSTRAINT `COMPANY_CARD_ibfk_1` FOREIGN KEY (`CARD_ID`) REFERENCES `CARD_ISSUER` (`CARD_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPANY_CARD`
--

LOCK TABLES `COMPANY_CARD` WRITE;
/*!40000 ALTER TABLE `COMPANY_CARD` DISABLE KEYS */;
INSERT INTO `COMPANY_CARD` VALUES (213245,'4728653091865420',1151947.08,4,24,731007),(213385,'4728353091872450',1098372.08,2,24,731014),(213456,'9357628140984760',609351.60,10,26,731004),(213462,'7034121985748290',426975.90,8,26,731009),(213582,'1247598360254890',773448.00,11,24,731003),(213590,'2178450835719230',471852.60,9,25,731012),(213674,'5894323072190540',723810.00,12,25,731015),(213697,'7036241985736290',374643.90,12,26,731002),(213741,'6302191756845390',799213.50,7,24,731013),(213781,'1245898360423290',693215.00,11,24,731010),(213804,'5894623078159340',789930.00,11,25,731001),(213809,'6302981756439200',808187.50,5,24,731006),(213856,'9354328140981120',537891.60,6,26,731011),(213973,'2179460835712090',495451.60,8,25,731005),(213983,'5894052073152390',854312.00,10,25,731008);
/*!40000 ALTER TABLE `COMPANY_CARD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMER`
--

DROP TABLE IF EXISTS `CUSTOMER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CUSTOMER` (
  `CUST_ID` int unsigned NOT NULL,
  `CUST_FNAME` varchar(255) NOT NULL,
  `CUST_LNAME` varchar(255) NOT NULL,
  `CUST_INITIAL` char(1) DEFAULT NULL,
  `CUST_EMAIL` varchar(255) DEFAULT NULL,
  `CUST_ADDRESS` varchar(255) DEFAULT NULL,
  `CUST_PHONE_NUM` varchar(255) DEFAULT NULL,
  `ZIP_CODE` int unsigned DEFAULT NULL,
  PRIMARY KEY (`CUST_ID`),
  KEY `ZIP_CODE` (`ZIP_CODE`),
  CONSTRAINT `CUSTOMER_ibfk_1` FOREIGN KEY (`ZIP_CODE`) REFERENCES `ZIP` (`ZIP_CODE`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER`
--

LOCK TABLES `CUSTOMER` WRITE;
/*!40000 ALTER TABLE `CUSTOMER` DISABLE KEYS */;
INSERT INTO `CUSTOMER` VALUES (421001,'Alice','Johnson','M','alice.j@example.com','123 Main St','555-123-4567',97201),(421002,'Bob','Smith','K','bob.smith@example.com','456 Oak Ave','555-234-5678',92101),(421003,'Carol','Davis','L','carol.d@example.com','789 Pine Rd','555-345-6789',10128),(421004,'David','White','J','david.white@example.com','101 Elm Blvd','555-456-7890',90027),(421005,'Emily','Brown','S','emily.b@example.com','202 Maple Dr','555-567-8901',10036),(421006,'Frank','Taylor','P','frank.t@example.com','303 Birch Ln','555-678-9012',80202),(421007,'Grace','Clark','N','grace.c@example.com','404 Cedar Ave','555-789-0123',78701),(421008,'Henry','Wilson','Q','henry.w@example.com','505 Walnut St','555-890-1234',10128),(421009,'Irene','Lee','R','irene.l@example.com','606 Spruce Rd','555-901-2345',78701),(421010,'Jack','Miller','T','jack.m@example.com','707 Oakwood Dr','555-012-3456',97201),(421011,'Karen','Johnson','U','karen.j@example.com','808 Pine Ave','555-123-4567',60606),(421012,'Larry','Davis','V','larry.d@example.com','909 Maple Ln','555-234-5678',98104),(421013,'Megan','Turner','W','megan.t@example.com','1010 Elm St','555-345-6789',98101),(421014,'Nathan','Harris','X','nathan.h@example.com','1111 Cedar Blvd','555-456-7890',98104),(421015,'Olivia','Martin','Y','olivia.m@example.com','1212 Walnut Dr','555-567-8901',60601),(421016,'Paul','Taylor','Z','paul.t@example.com','1313 Birch Ave','555-678-9012',20024),(421017,'Quinn','Johnson','A','quinn.j@example.com','1414 Spruce Rd','555-789-0123',33131),(421018,'Rachel','Miller','B','rachel.m@example.com','1515 Oakwood Dr','555-890-1234',30301),(421019,'Samuel','Davis','C','samuel.d@example.com','1616 Pine Ave','555-901-2345',62701),(421020,'Tina','Wilson','D','tina.w@example.com','1717 Maple Ln','555-012-3456',75201),(421021,'Victor','Smith','E','victor.s@example.com','1818 Cedar Blvd','555-123-4567',63101),(421022,'Wendy','Taylor','F','wendy.t@example.com','1919 Walnut Dr','555-234-5678',10036),(421023,'Xavier','Brown','G','xavier.b@example.com','2020 Elm St','555-345-6789',80202),(421024,'Yvonne','Turner','H','yvonne.t@example.com','2121 Cedar Ave','555-456-7890',97201),(421025,'Zachary','Harris','I','zachary.h@example.com','2222 Pine Rd','555-567-8901',60606),(421026,'Emily','Thompson','F','emily.t@example.com','123 Elm St','555-123-4567',98101),(421027,'Michael','Johnson','M','michael.j@example.com','456 Oak Ave','555-987-6543',98101),(421028,'Sarah','Garcia','A','sarah.g@example.com','789 Maple Ln','555-111-2222',20001),(421029,'David','Martinez','L','david.m@example.com','1010 Cedar St','555-333-4444',90210),(421030,'Jennifer','Robinson','D','jennifer.r@example.com','1313 Birch Rd','555-555-5555',33109),(421031,'James','Lewis','I','james.l@example.com','1717 Willow Ave','555-777-8888',33139),(421032,'Jessica','Hall','F','jessica.h@example.com','2020 Walnut St','555-999-0000',92101),(421033,'Daniel','Young','M','daniel.y@example.com','2323 Oak St','555-121-2121',78701),(421034,'Amanda','Allen','B','amanda.a@example.com','2525 Pine Ln','555-434-5656',33139),(421035,'Matthew','Wright','J','matthew.w@example.com','2727 Cedar Rd','555-232-3232',60601),(421036,'Ashley','White','G','ashley.w@example.com','2828 Maple Ave','555-676-9898',60601),(421037,'Christopher','Scott','N','christopher.s@example.com','2929 Elm St','555-565-6767',78701),(421038,'Brittany','Green','C','brittany.g@example.com','3030 Oak Rd','555-898-9898',30303),(421039,'Ryan','Adams','F','ryan.a@example.com','3131 Cedar St','555-989-8989',10128),(421040,'Lauren','King','F','lauren.k@example.com','3232 Pine Ave','555-565-8989',10128),(421041,'Nicholas','Baker','O','nicholas.b@example.com','3333 Birch Rd','555-323-5656',10128),(421042,'Kayla','Ward','F','kayla.w@example.com','3434 Willow Ln','555-676-3232',30305),(421043,'Joshua','Evans','M','joshua.e@example.com','3535 Walnut St','555-565-7878',30342),(421044,'Megan','Turner','F','megan.t@example.com','3636 Maple Ave','555-989-5656',77074);
/*!40000 ALTER TABLE `CUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMER_CARD`
--

DROP TABLE IF EXISTS `CUSTOMER_CARD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CUSTOMER_CARD` (
  `CUST_CARD_ID` int unsigned NOT NULL,
  `CARD_NUM` varchar(16) NOT NULL,
  `CARD_FNAME` varchar(255) NOT NULL,
  `CARD_LNAME` varchar(255) NOT NULL,
  `CARD_INITIAL` char(1) DEFAULT NULL,
  `CARD_BALANCE` decimal(20,2) NOT NULL,
  `EXP_DATE` date NOT NULL,
  `CARD_ID` int unsigned DEFAULT NULL,
  `CUST_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`CUST_CARD_ID`),
  KEY `CARD_ID` (`CARD_ID`),
  KEY `CUST_ID` (`CUST_ID`),
  CONSTRAINT `CUSTOMER_CARD_ibfk_1` FOREIGN KEY (`CARD_ID`) REFERENCES `CARD_ISSUER` (`CARD_ID`) ON UPDATE CASCADE,
  CONSTRAINT `CUSTOMER_CARD_ibfk_2` FOREIGN KEY (`CUST_ID`) REFERENCES `CUSTOMER` (`CUST_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER_CARD`
--

LOCK TABLES `CUSTOMER_CARD` WRITE;
/*!40000 ALTER TABLE `CUSTOMER_CARD` DISABLE KEYS */;
INSERT INTO `CUSTOMER_CARD` VALUES (519001,'9482759034850230','John','Doe','A',50.00,'2027-02-24',731024,421033),(519002,'5091248367529400','Jane','Smith','E',25.00,'2027-06-29',731020,421010),(519003,'6173928450264980','David','Johnson','',40.00,'2026-12-21',731018,421042),(519004,'2384905763128470','Emily','Brown','F',35.00,'2028-07-14',731010,421003),(519005,'7249163850293470','Michael','Lee','',60.00,'2027-12-02',731003,421018),(519006,'9351874620397540','Sarah','Martinez','',20.00,'2028-06-06',731018,421019),(519007,'1847502938567210','Lisa','Garcia','F',75.00,'2027-02-17',731009,421036),(519008,'3928475103265480','Brian','Wilson','G',45.00,'2026-09-11',731016,421025),(519009,'5102398745630920','Jessica','Rodriguez','D',55.00,'2027-02-11',731005,421019),(519010,'8267439201574830','Andrew','Anderson','F',30.00,'2028-03-22',731019,421021),(519011,'3729561480392760','Samantha','Taylor','',65.00,'2027-12-29',731015,421023),(519012,'6839207451629340','Kevin','Thomas','G',15.00,'2027-09-19',731024,421029),(519013,'4956871203475920','Amanda','Hernandez','B',70.00,'2027-02-09',731008,421039),(519014,'1087532964870510','Daniel','Young','',80.00,'2028-02-08',731008,421002),(519015,'5720938561497200','Nicole','King','G',25.00,'2028-07-06',731020,421029),(519016,'6932480756192870','Matthew','Lopez','G',50.00,'2028-06-30',731023,421029),(519017,'2847590632187030','Ashley','Moore','D',40.00,'2028-06-12',731004,421042),(519018,'8361942750631290','Christopher','Hill','',60.00,'2027-10-10',731012,421019),(519019,'5297486310729450','Elizabeth','Scott','C',35.00,'2027-12-10',731008,421020),(519020,'7152098432670490','Justin','Green','',85.00,'2028-01-01',731013,421027),(519021,'6392741850329760','Megan','Adams','E',45.00,'2026-08-31',731016,421031),(519022,'8251907346528370','Joshua','Baker','F',55.00,'2026-11-09',731021,421009),(519023,'4215968370529340','Heather','Hall','',30.00,'2026-07-11',731007,421020),(519024,'7396210584379050','Ryan','Nelson','A',90.00,'2027-02-08',731020,421033),(519025,'2986407156239480','Kimberly','Carter','D',20.00,'2026-11-21',731018,421027),(519026,'6174932850764120','Alexander','Martinez','M',1200.00,'2028-04-15',731017,421010),(519027,'8240679153274080','Olivia','Adams','O',1500.00,'2027-09-05',731008,421040),(519028,'4310298756345200','William','Thompson','W',100.00,'2026-12-12',731015,421020),(519029,'7391052846739010','Samantha','White','S',2000.00,'2027-08-23',731025,421017),(519030,'5867491032573820','Benjamin','Harris','B',300.00,'2028-11-18',731011,421036),(519031,'9548203671092840','Victoria','Martinez','V',2500.00,'2026-03-03',731010,421032),(519032,'6274903582164390','Charles','Clark','C',500.00,'2026-07-07',731012,421016),(519033,'2034985671394570','Ashley','Rodriguez','A',1200.00,'2028-02-14',731018,421009),(519034,'8012739485629470','Joseph','Carter','J',1000.00,'2028-06-20',731025,421003),(519035,'7350984157239860','Mary','Allen','M',1500.00,'2027-10-30',731010,421025),(519036,'2109348567392400','John','Wright','J',2000.00,'2026-05-12',731024,421012),(519037,'4968271350298370','Jessica','Perez','J',1200.00,'2027-08-29',731006,421033),(519038,'6284759103825700','David','King','D',1000.00,'2026-11-15',731003,421043),(519039,'7428951602538740','Emma','Martinez','E',2000.00,'2028-04-24',731017,421011);
/*!40000 ALTER TABLE `CUSTOMER_CARD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMER_EVENT`
--

DROP TABLE IF EXISTS `CUSTOMER_EVENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CUSTOMER_EVENT` (
  `EVENT_CODE` int unsigned NOT NULL,
  `CUST_ID` int unsigned NOT NULL,
  `RSVP` char(1) NOT NULL,
  `TIME` time DEFAULT NULL,
  PRIMARY KEY (`EVENT_CODE`,`CUST_ID`),
  KEY `CUST_ID` (`CUST_ID`),
  CONSTRAINT `CUSTOMER_EVENT_ibfk_1` FOREIGN KEY (`EVENT_CODE`) REFERENCES `EVENT` (`EVENT_CODE`) ON DELETE CASCADE,
  CONSTRAINT `CUSTOMER_EVENT_ibfk_2` FOREIGN KEY (`CUST_ID`) REFERENCES `CUSTOMER` (`CUST_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER_EVENT`
--

LOCK TABLES `CUSTOMER_EVENT` WRITE;
/*!40000 ALTER TABLE `CUSTOMER_EVENT` DISABLE KEYS */;
INSERT INTO `CUSTOMER_EVENT` VALUES (454002,421008,'Y','10:33:22'),(454002,421010,'Y','06:13:03'),(454002,421011,'N','00:00:00'),(454002,421012,'N','00:00:00'),(454002,421029,'Y','00:25:57'),(454002,421040,'Y','14:29:35'),(454002,421044,'Y','22:40:55'),(454123,421013,'N','00:00:00'),(454123,421022,'Y','00:54:23'),(454123,421024,'Y','17:55:27'),(454123,421032,'Y','00:38:06'),(454123,421044,'Y','12:22:30'),(454234,421009,'Y','10:32:08'),(454234,421013,'N','00:00:00'),(454234,421018,'N','00:00:00'),(454234,421021,'Y','20:31:13'),(454234,421026,'Y','14:38:20'),(454234,421033,'Y','05:17:24'),(454234,421034,'Y','04:11:30'),(454234,421039,'Y','04:59:36'),(454289,421024,'Y','01:49:16'),(454289,421039,'Y','00:26:00'),(454289,421041,'Y','20:33:03'),(454345,421007,'Y','00:54:19'),(454345,421011,'Y','03:53:53'),(454345,421016,'Y','22:20:02'),(454345,421026,'Y','19:33:53'),(454345,421035,'Y','19:48:13'),(454345,421040,'Y','13:07:47'),(454345,421042,'Y','20:30:20'),(454367,421001,'Y','13:55:43'),(454367,421004,'Y','15:26:47'),(454367,421006,'N','00:00:00'),(454367,421008,'Y','12:14:25'),(454367,421010,'Y','22:06:47'),(454367,421017,'N','00:00:00'),(454367,421018,'N','00:00:00'),(454367,421019,'Y','19:40:56'),(454367,421021,'N','00:00:00'),(454367,421036,'Y','14:53:18'),(454367,421039,'Y','19:09:22'),(454444,421007,'Y','20:40:45'),(454444,421042,'Y','17:27:14'),(454456,421005,'Y','18:13:03'),(454456,421008,'N','00:00:00'),(454456,421035,'Y','08:06:49'),(454456,421036,'Y','23:48:19'),(454456,421039,'Y','04:54:14'),(454456,421040,'Y','04:31:33'),(454456,421044,'Y','08:10:07'),(454532,421021,'N','00:00:00'),(454532,421032,'Y','11:13:48'),(454532,421044,'Y','22:50:02'),(454562,421004,'Y','14:29:17'),(454562,421007,'N','00:00:00'),(454562,421013,'Y','03:24:03'),(454562,421015,'N','00:00:00'),(454562,421031,'Y','10:42:24'),(454562,421038,'Y','19:34:02'),(454562,421040,'Y','15:08:21'),(454562,421044,'N','00:00:00'),(454601,421001,'Y','11:33:55'),(454601,421033,'Y','18:06:10'),(454601,421038,'Y','10:57:35'),(454609,421011,'Y','17:01:17'),(454609,421029,'Y','00:19:05'),(454609,421043,'Y','07:38:14'),(454609,421044,'Y','08:15:20'),(454621,421008,'Y','20:52:41'),(454621,421025,'N','00:00:00'),(454621,421035,'Y','14:43:21'),(454621,421037,'Y','23:09:35'),(454621,421038,'N','00:00:00'),(454621,421042,'Y','14:57:32'),(454621,421044,'N','00:00:00'),(454731,421002,'Y','17:28:56'),(454731,421012,'Y','20:29:57'),(454731,421013,'Y','17:40:28'),(454731,421014,'Y','11:09:38'),(454731,421016,'N','00:00:00'),(454731,421036,'Y','08:50:35'),(454731,421038,'N','00:00:00'),(454731,421041,'Y','16:09:43'),(454757,421011,'Y','10:47:38'),(454757,421035,'Y','00:58:58'),(454768,421026,'Y','04:37:40'),(454768,421033,'Y','01:44:46'),(454768,421044,'Y','11:01:59'),(454789,421005,'Y','15:13:05'),(454789,421020,'Y','18:45:21'),(454789,421025,'Y','08:50:34'),(454789,421034,'Y','08:16:58'),(454789,421042,'N','00:00:00'),(454812,421004,'Y','17:56:23'),(454812,421010,'Y','06:42:19'),(454812,421015,'Y','18:29:32'),(454812,421037,'Y','11:26:32'),(454845,421001,'Y','21:31:19'),(454845,421003,'Y','06:10:35'),(454845,421021,'Y','15:06:37'),(454845,421022,'Y','17:47:00'),(454845,421042,'Y','08:59:29'),(454845,421044,'Y','12:53:27'),(454876,421040,'Y','11:30:39'),(454876,421042,'Y','13:18:01'),(454902,421010,'Y','00:48:42'),(454902,421013,'N','00:00:00'),(454902,421019,'Y','11:53:30'),(454902,421026,'Y','12:42:37'),(454902,421030,'Y','11:54:22'),(454902,421044,'Y','01:43:24'),(454978,421006,'Y','11:42:08'),(454978,421009,'Y','11:15:57'),(454978,421013,'Y','04:37:11'),(454978,421014,'Y','03:35:32'),(454978,421017,'Y','19:18:48'),(454978,421019,'Y','02:05:17'),(454978,421024,'Y','20:00:52'),(454978,421031,'Y','20:03:21'),(454978,421037,'Y','12:16:27'),(454978,421041,'N','00:00:00'),(454978,421044,'Y','16:55:05'),(454990,421006,'Y','08:18:29'),(454990,421016,'Y','08:04:55'),(454990,421018,'Y','21:18:25'),(454990,421019,'Y','00:57:34'),(454990,421037,'Y','09:25:24'),(454990,421040,'Y','02:21:06'),(454997,421005,'Y','02:17:53'),(454997,421008,'Y','21:25:46'),(454997,421012,'Y','15:28:56'),(454997,421020,'N','00:00:00'),(454997,421021,'Y','12:37:41'),(454997,421028,'N','00:00:00'),(454997,421037,'N','00:00:00'),(454997,421039,'Y','18:58:26'),(454997,421041,'Y','05:53:24');
/*!40000 ALTER TABLE `CUSTOMER_EVENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEPARTMENT`
--

DROP TABLE IF EXISTS `DEPARTMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DEPARTMENT` (
  `DEPT_ID` int unsigned NOT NULL,
  `DEPT_LOCATION` varchar(255) NOT NULL,
  `DEPT_NAME` varchar(255) NOT NULL,
  `DEPT_TYPE` varchar(255) NOT NULL,
  PRIMARY KEY (`DEPT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEPARTMENT`
--

LOCK TABLES `DEPARTMENT` WRITE;
/*!40000 ALTER TABLE `DEPARTMENT` DISABLE KEYS */;
INSERT INTO `DEPARTMENT` VALUES (252101,'Front Store','Sales','Retail'),(252102,'Back Kitchen','Bakery','Production'),(252103,'Office','Finance','Admin'),(252104,'Loading Dock','Delivery','Logistics'),(252105,'Marketing','Marketing','Marketing'),(252106,'Office','Human Resources','Admin'),(252107,'Bakery','Quality Control','Production'),(252108,'Server Room','IT','IT'),(252109,'Facilities','Maintenance','Facilities'),(252110,'Storage Room','Procurement','Procurement');
/*!40000 ALTER TABLE `DEPARTMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEPARTMENT_INVENTORY`
--

DROP TABLE IF EXISTS `DEPARTMENT_INVENTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DEPARTMENT_INVENTORY` (
  `INVT_ID` int unsigned NOT NULL,
  `DEPT_ID` int unsigned NOT NULL,
  `DATE_ADDED` date NOT NULL,
  `QUANTITY` smallint NOT NULL,
  PRIMARY KEY (`INVT_ID`,`DEPT_ID`),
  KEY `DEPT_ID` (`DEPT_ID`),
  CONSTRAINT `DEPARTMENT_INVENTORY_ibfk_1` FOREIGN KEY (`INVT_ID`) REFERENCES `INVENTORY` (`INVT_ID`) ON DELETE CASCADE,
  CONSTRAINT `DEPARTMENT_INVENTORY_ibfk_2` FOREIGN KEY (`DEPT_ID`) REFERENCES `DEPARTMENT` (`DEPT_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEPARTMENT_INVENTORY`
--

LOCK TABLES `DEPARTMENT_INVENTORY` WRITE;
/*!40000 ALTER TABLE `DEPARTMENT_INVENTORY` DISABLE KEYS */;
INSERT INTO `DEPARTMENT_INVENTORY` VALUES (153001,252105,'2022-07-31',13),(153001,252107,'2022-07-31',5),(153001,252108,'2023-11-14',15),(153002,252105,'2023-04-18',8),(153002,252109,'2022-06-25',12),(153002,252110,'2023-07-04',8),(153003,252105,'2022-10-21',11),(153005,252108,'2023-08-10',15),(153006,252106,'2023-12-15',11),(153007,252105,'2022-11-05',6),(153008,252104,'2024-02-01',13),(153008,252108,'2022-01-18',6),(153009,252106,'2022-08-03',3),(153009,252109,'2023-01-21',15),(153010,252103,'2023-05-12',3),(153010,252106,'2023-10-27',4),(153011,252103,'2024-03-11',1),(153011,252104,'2022-09-09',12),(153012,252101,'2022-12-07',3),(153012,252106,'2023-09-23',13),(153012,252108,'2023-02-19',3),(153013,252101,'2023-05-12',14),(153013,252103,'2023-07-04',14),(153013,252104,'2023-06-08',3),(153014,252105,'2022-05-23',7),(153014,252106,'2023-11-02',6),(153014,252109,'2022-12-07',12),(153016,252102,'2024-03-04',5),(153016,252105,'2022-12-25',15),(153019,252105,'2022-08-19',12),(153019,252110,'2023-03-18',7),(153020,252102,'2023-03-18',15),(153020,252107,'2022-06-14',11),(153020,252109,'2024-02-28',6),(153020,252110,'2024-03-15',15),(153021,252106,'2022-09-01',5),(153022,252101,'2022-05-23',10),(153023,252102,'2022-08-03',10),(153023,252106,'2023-08-02',14),(153025,252108,'2022-07-08',8),(153026,252106,'2022-01-18',13),(153027,252108,'2023-01-09',2),(153027,252109,'2024-01-30',1),(153028,252103,'2023-07-13',2),(153029,252108,'2023-07-13',5),(153058,252102,'2023-02-19',14),(153058,252103,'2023-09-23',2),(153059,252102,'2022-10-21',4),(153059,252103,'2022-02-17',8),(153059,252109,'2023-06-29',1),(153060,252110,'2022-06-25',8),(153061,252104,'2024-02-13',2),(153061,252107,'2022-03-27',11),(153061,252108,'2022-11-05',1),(153062,252101,'2023-05-04',11),(153063,252101,'2023-11-14',15),(153063,252104,'2023-08-10',8),(153064,252109,'2023-08-02',2),(153065,252110,'2022-03-11',2),(153066,252102,'2023-10-27',1),(153066,252109,'2023-04-18',5),(153067,252110,'2024-01-01',13),(153068,252103,'2022-02-17',6),(153069,252106,'2024-01-01',5),(153070,252102,'2024-03-11',14),(153070,252110,'2023-03-22',15),(153071,252102,'2023-02-05',7),(153071,252110,'2022-10-14',9),(153073,252108,'2023-09-18',5),(153073,252110,'2022-03-27',11),(153074,252101,'2024-03-15',12),(153075,252102,'2022-11-29',4),(153076,252105,'2023-12-15',6),(153078,252109,'2022-10-14',13),(153080,252103,'2024-02-28',12);
/*!40000 ALTER TABLE `DEPARTMENT_INVENTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLOYEE`
--

DROP TABLE IF EXISTS `EMPLOYEE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EMPLOYEE` (
  `EMP_ID` int unsigned NOT NULL,
  `EMP_FNAME` varchar(255) NOT NULL,
  `EMP_LNAME` varchar(255) NOT NULL,
  `EMP_INITAL` char(1) DEFAULT NULL,
  `EMP_PHONE` varchar(255) NOT NULL,
  `EMP_EMAIL` varchar(255) NOT NULL,
  `EMP_ADDRESS` varchar(255) NOT NULL,
  `EMP_HIRE_DATE` date NOT NULL,
  `ZIP_CODE` int unsigned DEFAULT NULL,
  `ROLE_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`EMP_ID`),
  KEY `ZIP_CODE` (`ZIP_CODE`),
  KEY `ROLE_ID` (`ROLE_ID`),
  CONSTRAINT `EMPLOYEE_ibfk_1` FOREIGN KEY (`ZIP_CODE`) REFERENCES `ZIP` (`ZIP_CODE`) ON UPDATE CASCADE,
  CONSTRAINT `EMPLOYEE_ibfk_2` FOREIGN KEY (`ROLE_ID`) REFERENCES `ROLE` (`ROLE_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEE`
--

LOCK TABLES `EMPLOYEE` WRITE;
/*!40000 ALTER TABLE `EMPLOYEE` DISABLE KEYS */;
INSERT INTO `EMPLOYEE` VALUES (102001,'Michael','Johnson','R','(415) 555-0192','mjohnson@example.com','123 Oak Street','2022-08-12',90210,261013),(102002,'Jennifer','Smith','K','(212) 555-6325','jsmith@example.com','456 Maple Avenue','2023-05-03',10036,261018),(102003,'Robert','Davis','S','(713) 555-8974','rdavis@example.com','789 Pine Lane','2021-11-18',90027,261027),(102004,'Emily','White','F','(619) 555-3048','ewhite@example.com','101 Elm Blvd','2023-03-27',60611,261012),(102005,'Christopher','Brown','T','(832) 555-7402','cbrown@example.com','202 Maple Dr','2022-01-09',30342,261014),(102006,'Jessica','Taylor','M','(503) 555-1265','jtaylor@example.com','303 Birch Ln','2021-09-30',77074,261025),(102007,'Matthew','Clark','L','(718) 555-9876','mclark@example.com','404 Cedar Ave','2022-06-14',60611,261002),(102008,'Olivia','Harris','D','(305) 555-4109','oharris@example.com','505 Walnut St','2023-04-05',75201,261024),(102009,'Daniel','Turner','A','(650) 555-8721','dturner@example.com','606 Spruce Rd','2022-07-22',33101,261003),(102010,'Ashley','Miller','C','(954) 555-6380','amiller@example.com','707 Oakwood Dr','2023-02-15',44101,261010),(102011,'Brian','Johnson','P','(281) 555-5039','bjohnson@example.com','808 Pine Ave','2022-10-07',98101,261008),(102012,'Jessica','Davis','W','(770) 555-2156','jdavis@example.com','909 Maple Ln','2021-12-28',98101,261020),(102013,'Matthew','Turner','X','(813) 555-9764','mturner@example.com','1010 Elm St','2022-08-19',85001,261022),(102014,'Sophia','Harris','H','(214) 555-3047','sharris@example.com','1111 Cedar Blvd','2021-11-04',77074,261021),(102015,'Ethan','Taylor','J','(206) 555-8123','etaylor@example.com','1212 Walnut Dr','2023-01-29',60657,261027),(102016,'Emma','Clark','V','(408) 555-7391','eclark@example.com','1313 Birch Ave','2022-05-18',30303,261018),(102017,'Samuel','Quinn','Y','(504) 555-6802','squinn@example.com','1414 Spruce Rd','2021-07-01',10036,261012),(102018,'Ava','Russell','Q','(972) 555-3947','arussell@example.com','1515 Oakwood Dr','2023-03-09',10001,261023),(102019,'William','Stevens','E','(617) 555-2018','wstevens@example.com','1616 Pine Ave','2021-10-29',63101,261010),(102020,'Sophia','Taylor','Z','(301) 555-9467','staylor@example.com','1717 Maple Ln','2022-06-03',60657,261007),(102021,'Jackson','Underwood','N','(832) 555-5310','junnderwood@example.com','1818 Cedar Blvd','2021-09-15',30342,261005),(102022,'Olivia','Vargas','U','(702) 555-8146','ovargas@example.com','1919 Walnut Dr','2022-04-23',30301,261028),(102023,'William','Williams','I','(415) 555-6073','wwilliams@example.com','2020 Elm St','2021-12-10',90001,261024),(102024,'Emma','Xavier','B','(919) 555-2834','exavier@example.com','2121 Cedar Ave','2022-08-07',20024,261004),(102025,'Olivia','Young','G','(202) 555-4975','oyoung@example.com','2222 Pine Avenue','2023-02-24',33109,261029),(102026,'Benjamin','Martinez','L','(415) 555-9012','bmartinez@example.com','2323 Birch Lane','2022-10-12',10001,261014),(102027,'Lily','Thompson','S','(212) 555-7700','lthompson@example.com','2424 Oak Street','2023-03-15',97201,261019),(102028,'Noah','Scott','P','(713) 555-6501','nscott@example.com','2525 Maple Dr','2021-07-28',60606,261007),(102029,'Charlotte','Gonzalez','R','(619) 555-4189','cgonzalez@example.com','2626 Cedar Ave','2023-05-02',90001,261027),(102030,'Jackson','Nelson','F','(832) 555-2780','jnelson@example.com','2727 Pine Lane','2022-01-20',60657,261007),(102031,'Chloe','Baker','T','(503) 555-5301','cbaker@example.com','2828 Walnut St','2021-09-09',80202,261010),(102032,'Mason','Adams','M','(718) 555-4444','madams@example.com','2929 Elm Blvd','2022-04-24',60611,261015),(102033,'Amelia','Perez','L','(305) 555-3682','aperez@example.com','3030 Cedar Dr','2023-08-16',48201,261004),(102034,'Elijah','Cooper','D','(650) 555-2115','ecooper@example.com','3131 Birch Ln','2022-02-07',63101,261006),(102035,'Mia','Flores','A','(954) 555-6019','mflores@example.com','3232 Oakwood Dr','2021-11-30',60611,261018),(102036,'Charlotte','King','W','(281) 555-1210','cking@example.com','3333 Pine Ave','2022-06-17',10128,261023),(102037,'Ethan','Torres','V','(770) 555-8864','etorres@example.com','3434 Maple Ln','2023-12-05',98101,261027),(102038,'Harper','Wright','Y','(813) 555-3067','hwright@example.com','3535 Cedar Ave','2022-08-30',20024,261002),(102039,'Evelyn','Murphy','Q','(214) 555-3215','emurphy@example.com','3636 Walnut Dr','2021-03-11',19101,261017),(102040,'Carter','Parker','Z','(206) 555-1732','cparker@example.com','3737 Elm St','2022-07-19',90001,261007),(102041,'Harper','Hughes','S','(832) 555-7908','hhughes@example.com','3838 Cedar Blvd','2023-06-28',62701,261021),(102042,'Sebastian','Collins','L','(702) 555-1247','scollins@example.com','3939 Walnut Dr','2022-09-14',90069,261015),(102043,'Evelyn','Stewart','P','(415) 555-8976','estewart@example.com','4040 Maple Ave','2021-11-09',30342,261008),(102044,'Lincoln','Sanchez','D','(919) 555-3098','lsanchez@example.com','4141 Pine Lane','2022-04-22',80202,261014),(102045,'Addison','Bailey','T','(202) 555-6873','abailey@example.com','4242 Birch Ln','2023-01-16',20024,261011),(102046,'Grace','Reed','M','(214) 555-7820','greed@example.com','4343 Cedar Dr','2022-08-03',85001,261027),(102047,'Jackson','Griffin','V','(415) 555-6084','jgriffin@example.com','4444 Elm Blvd','2023-12-12',90069,261008),(102048,'Lily','Campbell','W','(212) 555-9406','lcampbell@example.com','4545 Cedar Ave','2022-03-07',20024,261007),(102049,'Luke','Gomez','A','(713) 555-7013','lgomez@example.com','4646 Walnut St','2021-07-01',48201,261011),(102050,'Scarlett','Murray','B','(619) 555-4630','smurray@example.com','4747 Oakwood Dr','2022-10-25',33101,261008),(102051,'Levi','Rivera','C','(832) 555-2289','lrivera@example.com','4848 Pine Ave','2023-05-18',85001,261022),(102052,'Hazel','Cooper','D','(650) 555-7914','hcooper@example.com','4949 Maple Ln','2022-02-09',10036,261020),(102053,'Leo','Coleman','E','(954) 555-9023','lcoleman@example.com','5050 Elm St','2021-09-05',78701,261005),(102054,'Penelope','Gray','F','(281) 555-4067','pgray@example.com','5151 Cedar Blvd','2022-03-29',10128,261006),(102055,'Nora','Brooks','G','(770) 555-3015','nbrooks@example.com','5252 Walnut Dr','2023-08-16',60657,261020),(102056,'Sawyer','Price','H','(813) 555-6248','sprice@example.com','5353 Maple Ave','2022-06-11',60601,261026),(102057,'Violet','Long','I','(214) 555-1719','vlong@example.com','5454 Pine Lane','2021-11-17',90069,261016),(102058,'Mateo','Hughes','J','(206) 555-3046','mhughes@example.com','5555 Cedar Dr','2022-04-14',90069,261022),(102059,'Naomi','Bryant','K','(408) 555-7019','nbryant@example.com','5656 Walnut St','2023-12-30',98104,261015),(102060,'Miles','Foster','L','(504) 555-4890','mfoster@example.com','5757 Elm Blvd','2022-07-23',37201,261014),(102061,'Jennifer','Smith','L','(415) 555-0123','jsmith@example.com','456 Maple Avenue','2023-05-20',90210,261014),(102062,'David','Brown','M','(415) 555-0456','dbrown@example.com','789 Elm Street','2023-06-10',90210,261015),(102063,'Emily','Wilson','A','(415) 555-0789','ewilson@example.com','1010 Pine Road','2023-07-01',90210,261016),(102064,'Daniel','Martinez','S','(415) 555-0901','dmartinez@example.com','1111 Cedar Lane','2023-08-15',90210,261017),(102065,'Amanda','Miller','B','(415) 555-1234','amiller@example.com','1313 Oak Court','2023-09-20',90210,261018);
/*!40000 ALTER TABLE `EMPLOYEE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLOYEE_CERTIFICATION`
--

DROP TABLE IF EXISTS `EMPLOYEE_CERTIFICATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EMPLOYEE_CERTIFICATION` (
  `EMP_ID` int unsigned NOT NULL,
  `CERT_ID` int unsigned NOT NULL,
  `DATE_RECEIVED` date NOT NULL,
  `VALID_UNTIL` date DEFAULT NULL,
  PRIMARY KEY (`EMP_ID`,`CERT_ID`),
  KEY `CERT_ID` (`CERT_ID`),
  CONSTRAINT `EMPLOYEE_CERTIFICATION_ibfk_1` FOREIGN KEY (`EMP_ID`) REFERENCES `EMPLOYEE` (`EMP_ID`) ON DELETE CASCADE,
  CONSTRAINT `EMPLOYEE_CERTIFICATION_ibfk_2` FOREIGN KEY (`CERT_ID`) REFERENCES `CERTIFICATION` (`CERT_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEE_CERTIFICATION`
--

LOCK TABLES `EMPLOYEE_CERTIFICATION` WRITE;
/*!40000 ALTER TABLE `EMPLOYEE_CERTIFICATION` DISABLE KEYS */;
INSERT INTO `EMPLOYEE_CERTIFICATION` VALUES (102001,435015,'2022-03-05','2023-07-18'),(102002,435006,'2022-08-22','2024-01-04'),(102003,435010,'2021-02-27','2022-07-12'),(102004,435014,'2021-12-15','2023-04-29'),(102005,435011,'2019-02-20','2020-07-04'),(102006,435006,'2019-07-21','2020-12-02'),(102006,435009,'2022-11-26','2024-04-09'),(102007,435027,'2020-05-24','2021-10-06'),(102008,435004,'2021-03-04','2022-07-17'),(102008,435013,'2021-09-14','2023-01-27'),(102008,435029,'2019-05-23','2020-10-04'),(102009,435004,'2019-08-10','2020-12-22'),(102010,435030,'2019-11-07','2021-03-21'),(102011,435012,'2019-11-24','2021-04-07'),(102011,435013,'2021-12-20','2023-05-04'),(102012,435030,'2020-06-23','2021-11-05'),(102013,435015,'2019-12-20','2021-05-03'),(102014,435028,'2020-12-05','2022-04-19'),(102015,435017,'2022-01-31','2023-06-15'),(102016,435005,'2022-09-23','2024-02-05'),(102017,435010,'2022-11-02','2024-03-16'),(102018,435029,'2022-04-17','2023-08-30'),(102019,435007,'2019-08-27','2021-01-08'),(102020,435018,'2020-11-23','2022-04-07'),(102021,435006,'2021-05-06','2022-09-18'),(102021,435009,'2021-06-04','2022-10-17'),(102021,435018,'2021-06-12','2022-10-25'),(102022,435013,'2020-09-06','2022-01-19'),(102023,435013,'2019-09-24','2021-02-05'),(102024,435019,'2020-11-07','2022-03-22'),(102025,435009,'2022-10-27','2024-03-10'),(102026,435010,'2021-05-08','2022-09-20'),(102027,435016,'2021-09-07','2023-01-20'),(102028,435015,'2020-12-05','2022-04-19'),(102028,435022,'2019-07-25','2020-12-06'),(102029,435003,'2022-04-01','2023-08-14'),(102030,435015,'2019-03-01','2020-07-13'),(102031,435019,'2022-10-14','2024-02-26'),(102032,435022,'2019-10-01','2021-02-12'),(102033,435030,'2020-09-25','2022-02-07'),(102034,435003,'2021-01-21','2022-06-05'),(102035,435005,'2021-01-08','2022-05-23'),(102036,435008,'2021-08-06','2022-12-19'),(102037,435010,'2020-11-29','2022-04-13'),(102038,435024,'2019-03-22','2020-08-03'),(102039,435010,'2019-02-01','2020-06-15'),(102040,435028,'2019-09-04','2021-01-16'),(102041,435017,'2022-03-12','2023-07-25'),(102042,435021,'2020-09-21','2022-02-03'),(102043,435026,'2021-09-22','2023-02-04'),(102043,435029,'2021-12-08','2023-04-22'),(102044,435011,'2021-04-12','2022-08-25'),(102045,435023,'2021-10-28','2023-03-12'),(102046,435010,'2020-08-12','2021-12-25'),(102047,435029,'2019-08-05','2020-12-17'),(102048,435027,'2021-07-06','2022-11-18'),(102049,435011,'2020-08-08','2021-12-21'),(102050,435011,'2021-01-19','2022-06-03'),(102051,435024,'2021-09-28','2023-02-10'),(102052,435029,'2019-08-26','2021-01-07'),(102053,435016,'2019-12-19','2021-05-02'),(102054,435024,'2021-05-06','2022-09-18'),(102055,435004,'2022-08-08','2023-12-21'),(102056,435023,'2022-03-18','2023-07-31'),(102057,435003,'2020-04-16','2021-08-29'),(102057,435022,'2019-09-09','2021-01-21'),(102058,435013,'2022-06-09','2023-10-22'),(102059,435015,'2022-11-16','2024-03-30'),(102060,435011,'2020-07-19','2021-12-01');
/*!40000 ALTER TABLE `EMPLOYEE_CERTIFICATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLOYEE_SHIFT`
--

DROP TABLE IF EXISTS `EMPLOYEE_SHIFT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EMPLOYEE_SHIFT` (
  `ATTEND_ID` int unsigned NOT NULL,
  `SHIFT_ID` int unsigned DEFAULT NULL,
  `EMP_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`ATTEND_ID`),
  KEY `SHIFT_ID` (`SHIFT_ID`),
  KEY `EMP_ID` (`EMP_ID`),
  CONSTRAINT `EMPLOYEE_SHIFT_ibfk_1` FOREIGN KEY (`SHIFT_ID`) REFERENCES `SHIFT` (`SHIFT_ID`) ON UPDATE CASCADE,
  CONSTRAINT `EMPLOYEE_SHIFT_ibfk_2` FOREIGN KEY (`EMP_ID`) REFERENCES `EMPLOYEE` (`EMP_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEE_SHIFT`
--

LOCK TABLES `EMPLOYEE_SHIFT` WRITE;
/*!40000 ALTER TABLE `EMPLOYEE_SHIFT` DISABLE KEYS */;
INSERT INTO `EMPLOYEE_SHIFT` VALUES (225001,1033005,102005),(225002,1033021,102040),(225003,1033021,102007),(225004,1033017,102052),(225005,1033009,102039),(225006,1033016,102008),(225007,1033018,102037),(225008,1033003,102004),(225009,1033001,102005),(225010,1033015,102005),(225011,1033002,102016),(225012,1033024,102048),(225013,1033002,102034),(225014,1033006,102059),(225015,1033015,102045),(225016,1033009,102030),(225017,1033010,102052),(225018,1033020,102056),(225019,1033002,102046),(225020,1033023,102034),(225021,1033018,102003),(225022,1033019,102049),(225023,1033008,102049),(225024,1033017,102049),(225025,1033022,102013),(225026,1033008,102021),(225027,1033015,102013),(225028,1033006,102048),(225029,1033009,102021),(225030,1033021,102006),(225031,1033022,102034),(225032,1033020,102022),(225033,1033005,102030),(225034,1033011,102044),(225035,1033004,102053),(225036,1033012,102056),(225037,1033019,102003),(225038,1033012,102058),(225039,1033019,102018),(225040,1033001,102014),(225041,1033001,102010),(225042,1033006,102010),(225043,1033013,102004),(225044,1033007,102034),(225045,1033021,102012),(225046,1033006,102053),(225047,1033021,102049),(225048,1033022,102046),(225049,1033023,102017),(225050,1033003,102033),(225051,1033006,102041),(225052,1033015,102057),(225053,1033003,102013),(225054,1033013,102001),(225055,1033012,102053),(225056,1033004,102059),(225057,1033022,102056),(225058,1033017,102008),(225059,1033001,102031),(225060,1033011,102011),(225061,1033019,102053),(225062,1033017,102049),(225063,1033016,102028),(225064,1033019,102033),(225065,1033021,102011),(225066,1033019,102035),(225067,1033013,102044),(225068,1033020,102002),(225069,1033024,102049),(225070,1033006,102043),(225071,1033025,102007),(225072,1033021,102029),(225073,1033007,102029),(225074,1033015,102046),(225075,1033007,102013),(225076,1033018,102058),(225077,1033018,102041),(225078,1033002,102053),(225079,1033017,102047),(225080,1033017,102006),(225081,1033019,102034),(225082,1033012,102027),(225083,1033002,102057),(225084,1033020,102036),(225085,1033013,102048),(225086,1033018,102041),(225087,1033003,102060),(225088,1033020,102037),(225089,1033022,102053),(225090,1033019,102029),(225091,1033025,102018),(225092,1033016,102019),(225093,1033014,102005),(225094,1033012,102014),(225095,1033016,102026),(225096,1033023,102036),(225097,1033013,102025),(225098,1033021,102011),(225099,1033003,102013);
/*!40000 ALTER TABLE `EMPLOYEE_SHIFT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLOYEE_TRAINING`
--

DROP TABLE IF EXISTS `EMPLOYEE_TRAINING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EMPLOYEE_TRAINING` (
  `EMP_ID` int unsigned NOT NULL,
  `TRAIN_CODE` int unsigned NOT NULL,
  `DATE_STARTED` date NOT NULL,
  PRIMARY KEY (`EMP_ID`,`TRAIN_CODE`),
  KEY `TRAIN_CODE` (`TRAIN_CODE`),
  CONSTRAINT `EMPLOYEE_TRAINING_ibfk_1` FOREIGN KEY (`EMP_ID`) REFERENCES `EMPLOYEE` (`EMP_ID`) ON DELETE CASCADE,
  CONSTRAINT `EMPLOYEE_TRAINING_ibfk_2` FOREIGN KEY (`TRAIN_CODE`) REFERENCES `TRAINING` (`TRAIN_CODE`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEE_TRAINING`
--

LOCK TABLES `EMPLOYEE_TRAINING` WRITE;
/*!40000 ALTER TABLE `EMPLOYEE_TRAINING` DISABLE KEYS */;
INSERT INTO `EMPLOYEE_TRAINING` VALUES (102001,301026,'2022-02-03'),(102002,301029,'2022-07-23'),(102003,301027,'2021-01-28'),(102004,301008,'2021-11-15'),(102005,301012,'2019-01-21'),(102006,301003,'2019-06-21'),(102006,301014,'2022-10-27'),(102007,301030,'2020-04-24'),(102008,301014,'2021-02-02'),(102008,301017,'2019-04-23'),(102008,301020,'2021-08-15'),(102009,301013,'2019-07-11'),(102010,301030,'2019-10-08'),(102011,301025,'2021-11-20'),(102011,301030,'2019-10-25'),(102012,301010,'2020-05-24'),(102013,301030,'2019-11-20'),(102014,301023,'2020-11-05'),(102015,301003,'2022-01-01'),(102016,301022,'2022-08-24'),(102017,301019,'2022-10-03'),(102018,301021,'2022-03-18'),(102019,301019,'2019-07-28'),(102020,301012,'2020-10-24'),(102021,301018,'2021-05-05'),(102021,301024,'2021-04-06'),(102021,301027,'2021-05-13'),(102022,301027,'2020-08-07'),(102023,301001,'2019-08-25'),(102024,301023,'2020-10-08'),(102025,301021,'2022-09-27'),(102026,301002,'2021-04-08'),(102027,301009,'2021-08-08'),(102028,301014,'2020-11-05'),(102028,301027,'2019-06-25'),(102029,301002,'2022-03-02'),(102030,301028,'2019-01-30'),(102031,301029,'2022-09-14'),(102032,301007,'2019-09-01'),(102033,301015,'2020-08-26'),(102034,301003,'2020-12-22'),(102035,301025,'2020-12-09'),(102036,301017,'2021-07-07'),(102037,301014,'2020-10-30'),(102038,301026,'2019-02-20'),(102039,301027,'2019-01-02'),(102040,301018,'2019-08-05'),(102041,301004,'2022-02-10'),(102042,301001,'2020-08-22'),(102043,301029,'2021-08-23'),(102043,301030,'2021-11-08'),(102044,301018,'2021-03-13'),(102045,301008,'2021-09-28'),(102046,301007,'2020-07-13'),(102047,301020,'2019-07-06'),(102048,301005,'2021-06-06'),(102049,301030,'2020-07-09'),(102050,301030,'2020-12-20'),(102051,301030,'2021-08-29'),(102052,301025,'2019-07-27'),(102053,301030,'2019-11-19'),(102054,301001,'2021-04-06'),(102055,301019,'2022-07-09'),(102056,301007,'2022-02-16'),(102057,301007,'2020-03-17'),(102058,301008,'2022-05-10'),(102059,301023,'2022-10-17'),(102060,301013,'2020-06-19');
/*!40000 ALTER TABLE `EMPLOYEE_TRAINING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EQUIPMENT`
--

DROP TABLE IF EXISTS `EQUIPMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EQUIPMENT` (
  `EQUIP_ID` int unsigned NOT NULL,
  `EQUIP_NAME` varchar(255) NOT NULL,
  `EQUIP_TYPE` varchar(255) NOT NULL,
  `EQUIP_MODEL` varchar(255) NOT NULL,
  `EQUIP_MAKE` varchar(255) NOT NULL,
  `INVT_ID` int unsigned DEFAULT NULL,
  `SUPP_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`EQUIP_ID`),
  UNIQUE KEY `INVT_ID` (`INVT_ID`),
  KEY `SUPP_ID` (`SUPP_ID`),
  CONSTRAINT `EQUIPMENT_ibfk_1` FOREIGN KEY (`INVT_ID`) REFERENCES `INVENTORY` (`INVT_ID`) ON UPDATE CASCADE,
  CONSTRAINT `EQUIPMENT_ibfk_2` FOREIGN KEY (`SUPP_ID`) REFERENCES `SUPPLIER` (`SUPP_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EQUIPMENT`
--

LOCK TABLES `EQUIPMENT` WRITE;
/*!40000 ALTER TABLE `EQUIPMENT` DISABLE KEYS */;
INSERT INTO `EQUIPMENT` VALUES (2574001,'Oven','Baking Equipment','BBO-500','Baker\'s Best',153056,207012),(2574002,'Mixer','Mixing Equipment','MX-2000','MixMaster',153057,207020),(2574003,'Refrigerator','Cooling Equipment','RA-300','Baker\'s Aid',153058,207009),(2574004,'Dough Sheeter','Shaping Equipment','PD-400','ProDough',153059,207017),(2574005,'Proofing Cabinet','Proofing Equipment','SM-1500','SliceMaster',153060,207019),(2574006,'Slicer','Cutting Equipment','RP-800','RisePro',153061,207003),(2574007,'Freezer','Cooling Equipment','KE-700','KitchenElite',153062,207003),(2574008,'Scale','Measuring Equipment','BC-200','BakeCool',153063,207012),(2574009,'Bread Proofer','Proofing Equipment','PI-500','ProveIt',153064,207016),(2574010,'Pastry Brush','Baking Tools','DP-300','DecoratorPro',153065,207003),(2574011,'Bread Pan','Baking Tools','SE-100','SiftEase',153066,207016),(2574012,'Rolling Pin','Shaping Equipment','MM-1200','MoldMaster',153067,207022),(2574013,'Dough Divider','Shaping Equipment','SC-400','StoneCraft',153068,207013),(2574014,'Cake Decorating Kit','Decorating Equipment','PM-5PC','ProMix',153069,207016),(2574015,'Bread Knife','Cutting Equipment','BB-50','BakeBrush',153070,207014),(2574016,'Pastry Bag','Decorating Equipment','DC-800','DiviChef',153071,207020),(2574017,'Doughnut Fryer','Frying Equipment','DC-200','DecorCraft',153072,207013),(2574018,'Bread Slicer','Cutting Equipment','BT-30','Baker\'sTool',153073,207015),(2574019,'Cookie Scoop','Baking Tools','BC-10','Baker\'sChoice',153074,207016),(2574020,'Pastry Blender','Mixing Equipment','FM-50','FlourMate',153075,207011),(2574021,'Bread Basket','Serving Equipment','HG-100','HeatGuard',153076,207002),(2574022,'Dough Docker','Shaping Equipment','CE-150','CutEase',153077,207014),(2574023,'Sheet Pan','Baking Tools','RE-75','RollEase',153078,207010),(2574024,'Pastry Wheel','Shaping Equipment','ES-300','ElegantServe',153079,207018),(2574025,'Cake Stand','Serving Equipment','CB-120','CoolBreeze',153080,207008);
/*!40000 ALTER TABLE `EQUIPMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EVENT`
--

DROP TABLE IF EXISTS `EVENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EVENT` (
  `EVENT_CODE` int unsigned NOT NULL,
  `EVENT_NAME` varchar(255) NOT NULL,
  `EVENT_DATE` date NOT NULL,
  `EVENT_TYPE` varchar(255) NOT NULL,
  `EVENT_ADDRESS` varchar(255) NOT NULL,
  `EXPENSE_ID` int unsigned DEFAULT NULL,
  `ZIP_CODE` int unsigned DEFAULT NULL,
  PRIMARY KEY (`EVENT_CODE`),
  KEY `EXPENSE_ID` (`EXPENSE_ID`),
  KEY `ZIP_CODE` (`ZIP_CODE`),
  CONSTRAINT `EVENT_ibfk_1` FOREIGN KEY (`EXPENSE_ID`) REFERENCES `EXPENSE` (`EXPENSE_ID`) ON UPDATE CASCADE,
  CONSTRAINT `EVENT_ibfk_2` FOREIGN KEY (`ZIP_CODE`) REFERENCES `ZIP` (`ZIP_CODE`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EVENT`
--

LOCK TABLES `EVENT` WRITE;
/*!40000 ALTER TABLE `EVENT` DISABLE KEYS */;
INSERT INTO `EVENT` VALUES (454002,'Cupcake Decorating','2023-05-21','Workshop','456 Elm Avenue',3432543,28202),(454123,'Halloween Party','2023-11-01','Party','111 Cedar St',3432538,30303),(454234,'Summer BBQ','2023-08-04','Party','555 Lemon St',3432540,10036),(454289,'Springtime Tea Party','2023-03-26','Party','505 Avocado St',3432537,30303),(454345,'Holiday Market','2023-12-11','Market','321 Pine St',3432537,90291),(454367,'Bread Making Demo','2023-09-03','Demo','101 Apple St',3432539,30305),(454444,'Summer Solstice Celebration','2023-06-22','Celebration','808 Papaya St',3432544,62701),(454456,'Pie Baking Class','2024-03-09','Workshop','333 Pineapple St',3432541,90001),(454532,'Cupcake Contest','2023-08-28','Contest','567 Maple St',3432541,10128),(454562,'Easter Brunch','2023-04-02','Brunch','303 Kiwi St',3432543,90210),(454601,'Autumn Apple Festival','2023-09-29','Festival','101 Pine Street',3432544,48201),(454609,'Holiday Cookie Swap','2023-12-21','Party','777 Strawberry St',3432537,37201),(454621,'Cake Decorating','2023-06-19','Workshop','789 Oak St',3432543,60611),(454731,'Valentine\'s Day Event','2024-02-14','Party','404 Peach St',3432543,98101),(454757,'Cake Tasting','2023-05-21','Tasting','888 Raspberry St',3432538,78701),(454768,'Baking Workshop','2023-05-03','Workshop','456 Elm St',3432543,63101),(454789,'Charity Bake Sale','2023-09-16','Fundraiser','890 Cherry St',3432541,80202),(454812,'Winter Wonderland Gala','2024-01-01','Gala','909 Coconut St',3432536,30339),(454845,'Fall Harvest Fest','2023-10-13','Festival','202 Grape St',3432546,98104),(454876,'Cookie Decorating','2023-11-06','Workshop','444 Orange St',3432540,44101),(454902,'Spring Festival','2023-04-16','Festival','123 Main St',3432537,90001),(454978,'Family Fun Day','2023-07-01','Festival','999 Blueberry St',3432537,92101),(454990,'Bread Tasting','2023-07-23','Tasting','222 Walnut St',3432545,90069),(454997,'Holiday Baking Contest','2023-12-06','Contest','707 Banana St',3432545,10001);
/*!40000 ALTER TABLE `EVENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EXPENSE`
--

DROP TABLE IF EXISTS `EXPENSE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EXPENSE` (
  `EXPENSE_ID` int unsigned NOT NULL,
  `EXPENSE_DATE` date NOT NULL,
  `EXPENSE_CAT` varchar(50) NOT NULL,
  `EXPENSE_AMT` decimal(15,2) DEFAULT NULL,
  `TAX_ID` int unsigned DEFAULT NULL,
  `COMP_CARD` int unsigned DEFAULT NULL,
  `DEPT_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`EXPENSE_ID`),
  KEY `TAX_ID` (`TAX_ID`),
  KEY `COMP_CARD` (`COMP_CARD`),
  KEY `DEPT_ID` (`DEPT_ID`),
  CONSTRAINT `EXPENSE_ibfk_1` FOREIGN KEY (`TAX_ID`) REFERENCES `TAX` (`TAX_ID`) ON UPDATE CASCADE,
  CONSTRAINT `EXPENSE_ibfk_2` FOREIGN KEY (`COMP_CARD`) REFERENCES `COMPANY_CARD` (`COMP_CARD`) ON UPDATE CASCADE,
  CONSTRAINT `EXPENSE_ibfk_3` FOREIGN KEY (`DEPT_ID`) REFERENCES `DEPARTMENT` (`DEPT_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EXPENSE`
--

LOCK TABLES `EXPENSE` WRITE;
/*!40000 ALTER TABLE `EXPENSE` DISABLE KEYS */;
INSERT INTO `EXPENSE` VALUES (3432523,'2024-01-05','Department',84167.87,362540971,213804,252104),(3432524,'2024-02-15','Department',90217.76,152798460,213804,252103),(3432525,'2024-03-20','Department',73128.30,307946215,213456,252104),(3432526,'2024-04-10','Department',59830.57,152798460,213973,252106),(3432527,'2024-05-08','Department',55841.93,569812473,213582,252104),(3432528,'2024-06-25','Department',84295.91,624078931,213804,252101),(3432529,'2024-07-19','Department',92462.34,307946215,213804,252104),(3432530,'2024-08-12','Department',79911.51,624078931,213697,252107),(3432531,'2024-09-03','Department',88832.60,890756123,213804,252103),(3432532,'2024-10-29','Department',65195.64,689407513,213973,252108),(3432533,'2024-11-14','Department',68524.68,362540971,213245,252102),(3432534,'2024-12-18','Department',80496.42,468259701,213804,252107),(3432535,'2024-01-03','Events',65717.50,148973205,213809,252110),(3432536,'2024-02-10','Events',61230.28,897430126,213245,252108),(3432537,'2024-03-22','Events',81791.37,152798460,213245,252103),(3432538,'2024-04-15','Events',91371.09,925071463,213697,252107),(3432539,'2024-05-05','Events',94692.37,148973205,213697,252109),(3432540,'2024-06-30','Events',74003.24,267580314,213809,252101),(3432541,'2024-07-11','Events',58282.45,518206794,213697,252107),(3432542,'2024-08-28','Events',67342.25,735914602,213973,252103),(3432543,'2024-09-16','Events',61814.22,203957481,213804,252108),(3432544,'2024-10-20','Events',92768.86,468259701,213456,252110),(3432545,'2024-11-05','Events',61525.16,570126834,213809,252108),(3432546,'2024-12-09','Events',61491.21,152798460,213697,252103),(3432547,'2024-01-07','Inventory',92229.54,307946215,213697,252106),(3432548,'2024-02-22','Inventory',52156.90,624078931,213809,252102),(3432549,'2024-03-18','Inventory',69989.38,362540971,213456,252109),(3432550,'2024-04-11','Inventory',87885.88,518206794,213809,252103),(3432551,'2024-05-09','Inventory',66704.96,307946215,213582,252106),(3432552,'2024-06-26','Inventory',62804.59,490216753,213697,252108),(3432553,'2024-07-20','Inventory',96658.56,740185236,213973,252102),(3432554,'2024-08-13','Inventory',48766.75,569812473,213973,252106),(3432555,'2024-09-04','Inventory',82781.74,624078931,213804,252107),(3432556,'2024-10-30','Inventory',92271.25,315289047,213697,252105),(3432557,'2024-11-15','Inventory',78649.54,518206794,213809,252104),(3432558,'2024-12-19','Inventory',58940.11,315289047,213697,252108),(3432559,'2024-01-04','Invoice',78580.67,624078931,213973,252108),(3432560,'2024-02-11','Invoice',89694.93,925071463,213809,252103),(3432561,'2024-03-23','Invoice',75249.69,570126834,213697,252102),(3432562,'2024-04-16','Invoice',67947.53,518206794,213697,252106),(3432563,'2024-05-06','Invoice',79324.66,781306542,213809,252109),(3432564,'2024-06-05','Invoice',78388.61,874905312,213804,252108),(3432565,'2024-07-30','Invoice',51577.81,490216753,213809,252108),(3432566,'2024-08-21','Invoice',57174.71,490216753,213809,252106),(3432567,'2024-09-17','Invoice',60065.31,518206794,213973,252105),(3432568,'2024-10-21','Invoice',92179.10,982314760,213809,252105),(3432569,'2024-11-06','Invoice',60979.05,148973205,213582,252107),(3432570,'2024-12-10','Invoice',92380.86,152798460,213804,252104),(3432571,'2024-01-11','Invoice',75660.97,315289047,213245,252101),(3432572,'2024-02-25','Invoice',61277.81,740185236,213973,252110),(3432573,'2024-03-26','Invoice',54337.46,781306542,213456,252107),(3432574,'2024-04-07','Invoice',51492.45,890756123,213582,252106),(3432575,'2024-05-05','Invoice',75143.96,267580314,213804,252103),(3432576,'2024-06-30','Invoice',86353.28,569812473,213809,252109),(3432577,'2024-07-14','Invoice',77345.86,307946215,213245,252110),(3432578,'2024-08-31','Invoice',90470.93,203957481,213973,252102),(3432579,'2024-09-20','Invoice',66468.28,518206794,213245,252102),(3432580,'2024-10-24','Invoice',89838.49,267580314,213809,252108),(3432581,'2024-11-09','Invoice',76231.33,689407513,213973,252102),(3432582,'2024-12-13','Invoice',74675.45,148973205,213809,252103),(3432583,'2024-01-12','Invoice',76090.68,632540197,213697,252110),(3432584,'2024-01-08','Salary',49978.28,925071463,213809,252109),(3432585,'2024-02-19','Salary',74146.80,982314760,213582,252110),(3432586,'2024-03-24','Salary',70621.82,490216753,213245,252105),(3432587,'2024-04-05','Salary',73900.42,203957481,213697,252108),(3432588,'2024-05-03','Salary',52972.67,982314760,213582,252109),(3432589,'2024-06-28','Salary',49698.92,982314760,213697,252103),(3432590,'2024-07-12','Salary',50994.84,781306542,213456,252104),(3432591,'2024-08-29','Salary',84572.36,897430126,213804,252108),(3432592,'2024-09-18','Salary',83053.34,925071463,213582,252110),(3432593,'2024-10-22','Salary',58580.24,689407513,213456,252104),(3432594,'2024-11-07','Salary',88553.24,468259701,213456,252107),(3432595,'2024-12-11','Salary',61498.97,897430126,213582,252108),(3432596,'2024-01-09','Salary',70180.47,267580314,213245,252105),(3432597,'2024-02-23','Salary',53215.17,874905312,213697,252109),(3432598,'2024-03-19','Salary',94970.76,740185236,213809,252109),(3432599,'2024-04-12','Salary',85625.78,148973205,213973,252110),(3432600,'2024-05-10','Salary',93502.18,890756123,213804,252102),(3432601,'2024-06-27','Salary',96262.80,735914602,213245,252106),(3432602,'2024-07-21','Salary',65636.99,632540197,213973,252102),(3432603,'2024-08-14','Salary',92386.68,890756123,213697,252109),(3432604,'2024-09-05','Salary',58509.43,624078931,213245,252108),(3432605,'2024-10-31','Salary',85473.49,897430126,213245,252108),(3432606,'2024-11-16','Salary',74340.80,416208573,213582,252107),(3432607,'2024-12-20','Salary',84000.06,897430126,213804,252109),(3432608,'2024-01-10','Salary',83097.96,982314760,213456,252108),(3432609,'2024-02-24','Salary',82943.73,148973205,213456,252109),(3432610,'2024-03-25','Salary',96178.41,569812473,213582,252104),(3432611,'2024-04-06','Salary',71079.66,468259701,213582,252109),(3432612,'2024-05-04','Salary',57381.32,416208573,213456,252105),(3432613,'2024-06-29','Salary',85846.94,152798460,213804,252109),(3432614,'2024-07-13','Salary',81004.70,416208573,213804,252110),(3432615,'2024-08-30','Salary',51939.62,735914602,213697,252104),(3432616,'2024-09-19','Salary',87979.00,315289047,213804,252106),(3432617,'2024-10-23','Salary',81321.89,307946215,213456,252104),(3432618,'2024-11-08','Salary',66153.03,416208573,213456,252102),(3432619,'2024-12-12','Salary',94801.98,897430126,213245,252102);
/*!40000 ALTER TABLE `EXPENSE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GIFT_CARD`
--

DROP TABLE IF EXISTS `GIFT_CARD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GIFT_CARD` (
  `GC_ID` int unsigned NOT NULL,
  `GC_NUM` varchar(255) NOT NULL,
  `GC_BALANCE` decimal(10,2) NOT NULL,
  `DATE_CREATED` date NOT NULL,
  `EXP_DATE` date NOT NULL,
  `CUST_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`GC_ID`),
  KEY `CUST_ID` (`CUST_ID`),
  CONSTRAINT `GIFT_CARD_ibfk_1` FOREIGN KEY (`CUST_ID`) REFERENCES `CUSTOMER` (`CUST_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GIFT_CARD`
--

LOCK TABLES `GIFT_CARD` WRITE;
/*!40000 ALTER TABLE `GIFT_CARD` DISABLE KEYS */;
INSERT INTO `GIFT_CARD` VALUES (416001,'GC-1234-5678-9012-001',50.00,'2022-05-15','2025-02-08',421024),(416002,'GC-2345-6789-0123-002',25.50,'2022-06-02','2025-02-26',421031),(416003,'GC-3456-7890-1234-003',100.00,'2022-07-10','2025-04-05',421011),(416004,'GC-4567-8901-2345-004',75.75,'2022-08-21','2025-05-17',421020),(416005,'GC-5678-9012-3456-005',30.20,'2022-09-05','2025-06-01',421037),(416006,'GC-6789-0123-4567-006',45.90,'2022-10-12','2025-07-08',421026),(416007,'GC-7890-1234-5678-007',20.50,'2022-11-08','2025-08-04',421043),(416008,'GC-8901-2345-6789-008',15.75,'2022-12-01','2025-08-27',421002),(416009,'GC-9012-3456-7890-009',55.30,'2023-01-17','2025-10-13',421008),(416010,'GC-0123-4567-8901-010',70.00,'2023-02-22','2025-11-18',421007),(416011,'GC-1234-5678-9012-011',30.25,'2023-03-10','2025-12-04',421014),(416012,'GC-2345-6789-0123-012',48.90,'2023-04-05','2025-12-30',421033),(416013,'GC-3456-7890-1234-013',22.50,'2023-05-18','2026-02-11',421023),(416014,'GC-4567-8901-2345-014',37.20,'2023-06-14','2026-03-10',421007),(416015,'GC-5678-9012-3456-015',60.75,'2023-07-03','2026-03-29',421036),(416016,'GC-6789-0123-4567-016',42.80,'2023-08-27','2026-05-23',421039),(416017,'GC-7890-1234-5678-017',18.90,'2023-09-11','2026-06-07',421031),(416018,'GC-8901-2345-6789-018',50.20,'2023-10-02','2026-06-28',421044),(416019,'GC-9012-3456-7890-019',33.50,'2023-11-20','2026-08-16',421041),(416020,'GC-0123-4567-8901-020',80.00,'2023-12-05','2026-08-31',421012),(416021,'GC-1234-5678-9012-021',25.75,'2024-01-08','2026-10-04',421029),(416022,'GC-2345-6789-0123-022',55.20,'2024-02-14','2026-11-10',421004),(416023,'GC-3456-7890-1234-023',45.00,'2024-03-22','2026-12-17',421006),(416024,'GC-4567-8901-2345-024',38.50,'2024-04-18','2027-01-13',421016),(416025,'GC-5678-9012-3456-025',70.25,'2024-05-03','2027-01-28',421041),(416026,'GC-6789-0123-4567-026',90.00,'2024-06-08','2027-03-05',421041),(416027,'GC-7890-1234-5678-027',65.50,'2024-07-17','2027-04-13',421030),(416028,'GC-8901-2345-6789-028',40.75,'2024-08-22','2027-05-19',421042),(416029,'GC-9012-3456-7890-029',55.20,'2024-09-05','2027-06-02',421016),(416030,'GC-0123-4567-8901-030',30.00,'2024-10-14','2027-07-11',421007),(416031,'GC-1234-5678-9012-031',47.50,'2024-11-20','2027-08-17',421034),(416032,'GC-2345-6789-0123-032',75.20,'2024-12-25','2027-09-21',421008),(416033,'GC-3456-7890-1234-033',20.00,'2025-01-30','2027-10-27',421035),(416034,'GC-4567-8901-2345-034',65.75,'2025-02-08','2027-11-05',421004),(416035,'GC-5678-9012-3456-035',38.90,'2025-03-16','2027-12-11',421033),(416036,'GC-6789-0123-4567-036',50.25,'2025-04-22','2028-01-17',421017),(416037,'GC-7890-1234-5678-037',85.50,'2025-05-27','2028-02-21',421038),(416038,'GC-8901-2345-6789-038',70.75,'2025-06-03','2028-02-28',421007),(416039,'GC-9012-3456-7890-039',25.00,'2025-07-09','2028-04-04',421041),(416040,'GC-0123-4567-8901-040',43.20,'2025-08-16','2028-05-12',421041),(416041,'GC-1234-5678-9012-041',60.00,'2025-09-20','2028-06-16',421022),(416042,'GC-2345-6789-0123-042',35.50,'2025-10-28','2028-07-24',421032),(416043,'GC-3456-7890-1234-043',52.75,'2025-11-04','2028-07-31',421040),(416044,'GC-4567-8901-2345-044',77.90,'2025-12-12','2028-09-07',421033),(416045,'GC-5678-9012-3456-045',48.20,'2026-01-17','2028-10-13',421044),(416046,'GC-6789-0123-4567-046',35.00,'2026-02-23','2028-11-19',421029),(416047,'GC-7890-1234-5678-047',62.50,'2026-03-30','2028-12-24',421027),(416048,'GC-8901-2345-6789-048',80.75,'2026-04-05','2028-12-30',421019),(416049,'GC-9012-3456-7890-049',42.20,'2026-05-12','2029-02-05',421043),(416050,'GC-0123-4567-8901-050',57.00,'2026-06-17','2029-03-13',421011);
/*!40000 ALTER TABLE `GIFT_CARD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INGREDIENT`
--

DROP TABLE IF EXISTS `INGREDIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INGREDIENT` (
  `INGRED_ID` int unsigned NOT NULL,
  `INGRED_NAME` varchar(255) NOT NULL,
  `INGRED_QTY` decimal(5,2) NOT NULL,
  `INGRED_MEASURE` varchar(255) DEFAULT NULL,
  `INVT_ID` int unsigned DEFAULT NULL,
  `SUPP_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`INGRED_ID`),
  UNIQUE KEY `INVT_ID` (`INVT_ID`),
  KEY `SUPP_ID` (`SUPP_ID`),
  CONSTRAINT `INGREDIENT_ibfk_1` FOREIGN KEY (`INVT_ID`) REFERENCES `INVENTORY` (`INVT_ID`) ON UPDATE CASCADE,
  CONSTRAINT `INGREDIENT_ibfk_2` FOREIGN KEY (`SUPP_ID`) REFERENCES `SUPPLIER` (`SUPP_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INGREDIENT`
--

LOCK TABLES `INGREDIENT` WRITE;
/*!40000 ALTER TABLE `INGREDIENT` DISABLE KEYS */;
INSERT INTO `INGREDIENT` VALUES (854001,'Flour',100.00,'kg',153001,107004),(854002,'Sugar',50.00,'lbs',153002,107022),(854003,'Yeast',20.00,'packs',153003,107017),(854004,'Butter',80.00,'lbs',153004,107017),(854005,'Eggs',200.00,'pieces',153005,107005),(854006,'Milk',50.00,'gallons',153006,107014),(854007,'Chocolate Chips',30.00,'lbs',153007,107024),(854008,'Vanilla Extract',10.00,'bottles',153008,107019),(854009,'Baking Powder',40.00,'cans',153009,107002),(854010,'Shortening',60.00,'lbs',153010,107014),(854011,'Cream Cheese',25.00,'lbs',153011,107017),(854012,'Almonds',20.00,'lbs',153012,107001),(854013,'Raisins',15.00,'lbs',153013,107019),(854014,'Cinnamon',10.00,'bottles',153014,107006),(854015,'Salt',30.00,'lbs',153015,107014),(854016,'Cocoa Powder',40.00,'lbs',153016,107005),(854017,'Pecans',20.00,'lbs',153017,107023),(854018,'Baking Soda',50.00,'lbs',153018,107023),(854019,'Vanilla Beans',5.00,'packets',153019,107014),(854020,'Nutmeg',8.00,'bottles',153020,107022),(854021,'Cocoa Butter',30.00,'lbs',153021,107002),(854022,'Cream of Tartar',25.00,'lbs',153022,107021),(854023,'White Chocolate',20.00,'lbs',153023,107014),(854024,'Dark Chocolate',20.00,'lbs',153024,107006),(854025,'Rolled Oats',40.00,'lbs',153025,107015),(854026,'All-Purpose Flour',100.00,'kg',153026,107014),(854027,'Cornstarch',30.00,'lbs',153027,107022),(854028,'Honey',25.00,'lbs',153028,107010),(854029,'Maple Syrup',20.00,'bottles',153029,107013),(854030,'Almond Extract',15.00,'bottles',153030,107023);
/*!40000 ALTER TABLE `INGREDIENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INVENTORY`
--

DROP TABLE IF EXISTS `INVENTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INVENTORY` (
  `INVT_ID` int unsigned NOT NULL,
  `INVT_TYPE` varchar(20) NOT NULL,
  `INVT_QTY` smallint NOT NULL,
  `INVT_MEASURE` varchar(20) DEFAULT NULL,
  `INVT_EXP_DATE` date DEFAULT NULL,
  `INVT_MIN_STOCK` smallint NOT NULL,
  `INVT_MAX_STOCK` smallint NOT NULL,
  `INVT_STATUS` varchar(20) NOT NULL,
  PRIMARY KEY (`INVT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INVENTORY`
--

LOCK TABLES `INVENTORY` WRITE;
/*!40000 ALTER TABLE `INVENTORY` DISABLE KEYS */;
INSERT INTO `INVENTORY` VALUES (153001,'Flour',100,'bags','2025-05-01',50,200,'In Stock'),(153002,'Sugar',50,'lbs','2026-03-15',20,100,'In Stock'),(153003,'Yeast',20,'packs','2025-09-20',10,50,'In Stock'),(153004,'Butter',80,'lbs','2026-01-10',30,150,'In Stock'),(153005,'Eggs',200,'pcs','2025-12-05',100,300,'In Stock'),(153006,'Milk',50,'gallons','2025-08-15',20,100,'In Stock'),(153007,'Chocolate Chips',30,'lbs','2026-02-20',10,50,'In Stock'),(153008,'Vanilla Extract',10,'bottles','2025-07-30',5,20,'In Stock'),(153009,'Baking Powder',40,'cans','2025-11-10',20,80,'In Stock'),(153010,'Shortening',60,'lbs','2026-04-25',30,120,'In Stock'),(153011,'Cream Cheese',25,'lbs','2025-10-15',10,50,'In Stock'),(153012,'Almonds',20,'lbs','2026-03-05',10,40,'In Stock'),(153013,'Raisins',15,'lbs','2025-07-20',5,30,'In Stock'),(153014,'Cinnamon',10,'bottles','2026-01-30',3,20,'In Stock'),(153015,'Salt',30,'lbs','2025-09-10',10,50,'In Stock'),(153016,'Cocoa Powder',40,'lbs','2026-02-15',15,60,'In Stock'),(153017,'Pecans',5,'lbs','2025-06-25',10,40,'In Stock'),(153018,'Baking Soda',50,'lbs','2025-12-20',20,80,'In Stock'),(153019,'Vanilla Beans',5,'packets','2026-04-10',2,10,'In Stock'),(153020,'Nutmeg',8,'bottles','2025-08-30',3,15,'In Stock'),(153021,'Cocoa Butter',30,'lbs','2026-03-15',15,50,'In Stock'),(153022,'Cream of Tartar',25,'lbs','2025-11-20',10,40,'In Stock'),(153023,'White Chocolate',20,'lbs','2026-01-05',10,40,'In Stock'),(153024,'Dark Chocolate',20,'lbs','2025-10-10',10,40,'In Stock'),(153025,'Rolled Oats',40,'lbs','2026-04-20',20,80,'In Stock'),(153026,'All-Purpose Flour',100,'bags','2025-08-25',50,200,'In Stock'),(153027,'Cornstarch',30,'lbs','2026-02-10',15,50,'In Stock'),(153028,'Honey',25,'lbs','2025-06-15',10,40,'In Stock'),(153029,'Maple Syrup',20,'bottles','2026-01-30',10,30,'In Stock'),(153030,'Almond Extract',15,'bottles','2025-09-05',5,20,'In Stock'),(153031,'French Baguette',45,'units','2025-08-15',20,100,'In Stock'),(153032,'Chocolate Croissant',30,'units','2025-09-25',15,80,'In Stock'),(153033,'Cinnamon Roll',20,'units','2025-10-10',25,90,'In Stock'),(153034,'Sourdough Loaf',25,'units','2025-11-05',20,80,'In Stock'),(153035,'Blueberry Muffin',50,'units','2025-12-20',30,100,'In Stock'),(153036,'Vanilla Cupcake',40,'units','2025-01-15',20,90,'In Stock'),(153037,'Apple Pie',20,'units','2025-02-10',15,70,'In Stock'),(153038,'Bagel',60,'units','2025-03-25',40,120,'In Stock'),(153039,'Cherry Danish',35,'units','2025-04-30',25,80,'In Stock'),(153040,'Rye Bread',30,'units','2025-05-05',20,90,'In Stock'),(153041,'Almond Croissant',25,'units','2025-06-20',15,70,'In Stock'),(153042,'Chocolate Cake',15,'units','2025-07-15',10,50,'In Stock'),(153043,'Pecan Sticky Bun',45,'units','2025-08-25',30,100,'In Stock'),(153044,'Whole Wheat Bread',40,'units','2025-09-10',25,90,'In Stock'),(153045,'Lemon Poppy Seed Muf',35,'units','2025-10-20',20,80,'In Stock'),(153046,'Red Velvet Cupcake',30,'units','2025-11-05',20,70,'In Stock'),(153047,'Fruit Tart',20,'units','2025-12-15',15,60,'In Stock'),(153048,'Pretzel',55,'units','2025-01-30',40,120,'In Stock'),(153049,'Raspberry Scone',50,'units','2025-02-25',30,100,'In Stock'),(153050,'Carrot Cake',25,'units','2025-03-20',20,80,'In Stock'),(153051,'Danish Pastry',30,'units','2025-04-10',20,90,'In Stock'),(153052,'Chocolate Chip Cooki',60,'units','2025-05-15',40,150,'In Stock'),(153053,'Blueberry Pie',15,'units','2025-06-30',10,50,'In Stock'),(153054,'Caramel Brownie',40,'units','2025-07-25',30,100,'In Stock'),(153055,'Pumpkin Scone',35,'units','2025-08-20',25,90,'In Stock'),(153056,'Oven',2,'','0000-00-00',1,5,'Active'),(153057,'Mixer',3,'','0000-00-00',1,4,'Active'),(153058,'Refrigerator',1,'','0000-00-00',1,3,'Active'),(153059,'Dough Sheeter',2,'','0000-00-00',1,4,'Active'),(153060,'Proofing Cabinet',3,'','0000-00-00',1,5,'Active'),(153061,'Slicer',1,'','0000-00-00',1,3,'Active'),(153062,'Freezer',2,'','0000-00-00',1,4,'Active'),(153063,'Scale',3,'','0000-00-00',1,5,'Active'),(153064,'Bread Proofer',1,'','0000-00-00',1,3,'Active'),(153065,'Pastry Brush',2,'','0000-00-00',1,4,'Active'),(153066,'Bread Pan',3,'','0000-00-00',1,5,'Active'),(153067,'Rolling Pin',1,'','0000-00-00',1,3,'Active'),(153068,'Dough Divider',2,'','0000-00-00',1,4,'Active'),(153069,'Cake Decorating Kit',1,'','0000-00-00',1,3,'Active'),(153070,'Bread Knife',2,'','0000-00-00',1,4,'Active'),(153071,'Pastry Bag',3,'','0000-00-00',1,5,'Active'),(153072,'Doughnut Fryer',1,'','0000-00-00',1,3,'Active'),(153073,'Bread Slicer',2,'','0000-00-00',1,4,'Active'),(153074,'Cookie Scoop',3,'','0000-00-00',1,5,'Active'),(153075,'Pastry Blender',1,'','0000-00-00',1,3,'Active'),(153076,'Bread Basket',2,'','0000-00-00',1,4,'Active'),(153077,'Dough Docker',3,'','0000-00-00',1,5,'Active'),(153078,'Sheet Pan',1,'','0000-00-00',1,3,'Active'),(153079,'Pastry Wheel',2,'','0000-00-00',1,4,'Active'),(153080,'Cake Stand',3,'','0000-00-00',1,5,'Active');
/*!40000 ALTER TABLE `INVENTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INVENTORY_EXPENSE`
--

DROP TABLE IF EXISTS `INVENTORY_EXPENSE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INVENTORY_EXPENSE` (
  `EXPENSE_ID` int unsigned NOT NULL,
  `INVT_ID` int unsigned NOT NULL,
  `DATE_INCURRED` date NOT NULL,
  PRIMARY KEY (`EXPENSE_ID`,`INVT_ID`),
  KEY `INVT_ID` (`INVT_ID`),
  CONSTRAINT `INVENTORY_EXPENSE_ibfk_1` FOREIGN KEY (`EXPENSE_ID`) REFERENCES `EXPENSE` (`EXPENSE_ID`) ON DELETE CASCADE,
  CONSTRAINT `INVENTORY_EXPENSE_ibfk_2` FOREIGN KEY (`INVT_ID`) REFERENCES `INVENTORY` (`INVT_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INVENTORY_EXPENSE`
--

LOCK TABLES `INVENTORY_EXPENSE` WRITE;
/*!40000 ALTER TABLE `INVENTORY_EXPENSE` DISABLE KEYS */;
INSERT INTO `INVENTORY_EXPENSE` VALUES (3432523,153059,'2025-07-23'),(3432524,153028,'2024-01-01'),(3432524,153063,'2022-06-18'),(3432524,153066,'2022-08-09'),(3432526,153073,'2022-07-18'),(3432527,153014,'2022-11-16'),(3432531,153026,'2023-05-14'),(3432531,153080,'2022-01-02'),(3432532,153070,'2022-03-17'),(3432533,153013,'2024-08-24'),(3432534,153068,'2025-08-30'),(3432535,153012,'2024-06-25'),(3432535,153019,'2024-04-14'),(3432535,153059,'2023-10-15'),(3432535,153075,'2023-04-09'),(3432537,153070,'2024-11-29'),(3432539,153058,'2024-03-04'),(3432539,153061,'2022-09-30'),(3432540,153077,'2025-09-21'),(3432544,153010,'2023-01-17'),(3432544,153019,'2024-01-23'),(3432544,153025,'2025-07-03'),(3432546,153072,'2025-02-04'),(3432547,153028,'2023-05-01'),(3432548,153001,'2022-01-30'),(3432548,153007,'2022-05-12'),(3432548,153077,'2024-10-08'),(3432550,153003,'2022-06-06'),(3432552,153058,'2023-09-16'),(3432556,153012,'2024-07-01'),(3432559,153024,'2024-01-01'),(3432559,153058,'2022-05-18'),(3432560,153016,'2024-08-17'),(3432560,153018,'2025-08-09'),(3432560,153059,'2025-12-03'),(3432561,153063,'2023-01-20'),(3432561,153079,'2023-09-14'),(3432563,153018,'2025-09-14'),(3432565,153023,'2022-11-09'),(3432565,153065,'2023-04-14'),(3432566,153024,'2023-11-28'),(3432566,153060,'2025-05-09'),(3432568,153057,'2025-09-26'),(3432570,153029,'2025-10-25'),(3432575,153013,'2024-09-02'),(3432576,153058,'2024-07-14'),(3432577,153060,'2022-02-24'),(3432577,153062,'2023-09-21'),(3432578,153010,'2024-10-04'),(3432578,153022,'2022-03-05'),(3432578,153065,'2025-08-24'),(3432579,153069,'2023-03-27'),(3432579,153076,'2023-10-30'),(3432580,153016,'2025-07-10'),(3432580,153018,'2024-09-12'),(3432580,153072,'2024-01-23'),(3432580,153078,'2023-02-06'),(3432582,153069,'2025-02-07'),(3432583,153007,'2022-08-19'),(3432583,153028,'2024-07-11'),(3432588,153007,'2023-12-15'),(3432589,153017,'2023-08-16'),(3432589,153079,'2023-10-18'),(3432590,153059,'2022-09-24'),(3432590,153080,'2024-01-06'),(3432594,153009,'2022-05-24'),(3432594,153056,'2024-01-23'),(3432595,153065,'2024-01-08'),(3432595,153068,'2025-01-12'),(3432596,153080,'2025-05-12'),(3432597,153029,'2024-08-05'),(3432598,153076,'2023-04-24'),(3432600,153002,'2024-02-08'),(3432602,153075,'2022-05-04'),(3432604,153023,'2024-08-29'),(3432604,153072,'2023-06-09'),(3432608,153071,'2025-08-11'),(3432612,153073,'2024-08-16'),(3432614,153063,'2025-12-16'),(3432614,153072,'2023-01-16'),(3432614,153080,'2022-02-08'),(3432615,153007,'2023-07-20'),(3432616,153012,'2023-01-14'),(3432618,153009,'2023-02-20'),(3432618,153061,'2023-09-10'),(3432618,153071,'2022-12-08'),(3432619,153025,'2025-08-11'),(3432619,153076,'2024-02-17');
/*!40000 ALTER TABLE `INVENTORY_EXPENSE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INVOICE`
--

DROP TABLE IF EXISTS `INVOICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INVOICE` (
  `INVOICE_ID` int unsigned NOT NULL,
  `INVOICE_DATE` date NOT NULL,
  `SUPP_ID` int unsigned DEFAULT NULL,
  `EXPENSE_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`INVOICE_ID`),
  KEY `SUPP_ID` (`SUPP_ID`),
  KEY `EXPENSE_ID` (`EXPENSE_ID`),
  CONSTRAINT `INVOICE_ibfk_1` FOREIGN KEY (`SUPP_ID`) REFERENCES `SUPPLIER` (`SUPP_ID`) ON UPDATE CASCADE,
  CONSTRAINT `INVOICE_ibfk_2` FOREIGN KEY (`EXPENSE_ID`) REFERENCES `EXPENSE` (`EXPENSE_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INVOICE`
--

LOCK TABLES `INVOICE` WRITE;
/*!40000 ALTER TABLE `INVOICE` DISABLE KEYS */;
INSERT INTO `INVOICE` VALUES (188001,'2024-08-11',107005,3432573),(188002,'2024-05-17',107011,3432561),(188003,'2024-10-28',107005,3432576),(188004,'2023-07-02',207009,3432569),(188005,'2024-11-10',107004,3432580),(188006,'2024-04-27',207012,3432580),(188007,'2023-11-05',207005,3432564),(188008,'2023-02-11',207015,3432560),(188009,'2023-09-15',207002,3432568),(188010,'2023-08-30',207003,3432583),(188011,'2023-10-29',207003,3432577),(188012,'2023-04-07',107011,3432577),(188013,'2023-10-30',107010,3432567),(188014,'2023-06-23',207015,3432562),(188015,'2024-06-05',107018,3432569),(188016,'2023-02-04',207019,3432578),(188017,'2023-11-28',207020,3432566),(188018,'2023-05-13',107014,3432579),(188019,'2023-03-07',207005,3432577),(188020,'2023-06-18',107011,3432573),(188021,'2024-11-02',107012,3432568),(188022,'2023-01-05',107014,3432581),(188023,'2024-05-24',207006,3432561),(188024,'2024-05-03',207002,3432578),(188025,'2023-04-11',207011,3432561),(188026,'2024-06-02',207016,3432570),(188027,'2024-10-14',107004,3432575),(188028,'2023-04-29',107020,3432564),(188029,'2024-03-19',207002,3432578),(188030,'2023-01-04',207012,3432562),(188031,'2024-03-26',107014,3432575),(188032,'2024-10-04',107024,3432568),(188033,'2023-01-11',107008,3432570),(188034,'2024-06-25',207012,3432583),(188035,'2024-07-10',207022,3432574),(188036,'2023-05-27',207017,3432566),(188037,'2023-12-09',207006,3432562),(188038,'2024-09-13',107013,3432570),(188039,'2024-04-28',107016,3432575),(188040,'2024-11-23',107015,3432563),(188041,'2023-09-24',207021,3432561),(188042,'2023-04-22',207009,3432583),(188043,'2024-01-09',107012,3432560),(188044,'2024-09-29',107019,3432571),(188045,'2024-06-04',107010,3432577),(188046,'2023-09-20',107008,3432561);
/*!40000 ALTER TABLE `INVOICE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INVOICE_LINE`
--

DROP TABLE IF EXISTS `INVOICE_LINE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INVOICE_LINE` (
  `INVT_ID` int unsigned NOT NULL,
  `INVOICE_ID` int unsigned NOT NULL,
  `QUANTITY` smallint NOT NULL,
  PRIMARY KEY (`INVT_ID`,`INVOICE_ID`),
  KEY `INVOICE_ID` (`INVOICE_ID`),
  CONSTRAINT `INVOICE_LINE_ibfk_1` FOREIGN KEY (`INVT_ID`) REFERENCES `INVENTORY` (`INVT_ID`) ON DELETE CASCADE,
  CONSTRAINT `INVOICE_LINE_ibfk_2` FOREIGN KEY (`INVOICE_ID`) REFERENCES `INVOICE` (`INVOICE_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INVOICE_LINE`
--

LOCK TABLES `INVOICE_LINE` WRITE;
/*!40000 ALTER TABLE `INVOICE_LINE` DISABLE KEYS */;
INSERT INTO `INVOICE_LINE` VALUES (153002,188026,4),(153002,188028,30),(153002,188040,15),(153005,188007,17),(153005,188046,14),(153006,188006,20),(153007,188006,10),(153008,188011,12),(153009,188012,22),(153010,188005,6),(153010,188016,8),(153010,188027,6),(153010,188029,7),(153011,188029,16),(153011,188031,3),(153011,188042,27),(153012,188023,12),(153013,188016,14),(153013,188023,20),(153013,188037,4),(153013,188042,14),(153015,188001,14),(153015,188024,11),(153015,188036,24),(153016,188018,9),(153017,188020,14),(153017,188032,4),(153018,188040,18),(153019,188008,16),(153020,188021,10),(153021,188016,2),(153021,188038,25),(153022,188016,7),(153022,188044,18),(153023,188007,28),(153023,188021,15),(153023,188031,13),(153023,188038,25),(153024,188034,16),(153026,188037,23),(153027,188015,8),(153027,188017,8),(153028,188025,29),(153028,188026,17),(153029,188039,15),(153056,188004,16),(153058,188003,8),(153058,188013,5),(153058,188046,1),(153060,188010,21),(153060,188042,4),(153061,188044,9),(153062,188014,22),(153063,188018,26),(153067,188032,25),(153068,188013,25),(153068,188014,7),(153072,188013,17),(153072,188027,1),(153073,188015,8),(153074,188037,12),(153074,188044,5),(153075,188031,5),(153075,188040,20),(153077,188025,18),(153078,188014,25),(153080,188022,19),(153080,188035,23);
/*!40000 ALTER TABLE `INVOICE_LINE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LOYALTY_PROGRAM`
--

DROP TABLE IF EXISTS `LOYALTY_PROGRAM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LOYALTY_PROGRAM` (
  `CUST_ID` int unsigned NOT NULL,
  `JOIN_DATE` date NOT NULL,
  `LP_STATUS` varchar(10) NOT NULL,
  `POINTS` int NOT NULL,
  `EXP_DATE` date NOT NULL,
  PRIMARY KEY (`CUST_ID`),
  UNIQUE KEY `CUST_ID` (`CUST_ID`),
  CONSTRAINT `LOYALTY_PROGRAM_ibfk_1` FOREIGN KEY (`CUST_ID`) REFERENCES `CUSTOMER` (`CUST_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LOYALTY_PROGRAM`
--

LOCK TABLES `LOYALTY_PROGRAM` WRITE;
/*!40000 ALTER TABLE `LOYALTY_PROGRAM` DISABLE KEYS */;
INSERT INTO `LOYALTY_PROGRAM` VALUES (421004,'2023-03-15','Gold',500,'2023-06-13'),(421005,'2023-04-02','Silver',300,'2023-07-01'),(421006,'2023-05-10','Bronze',150,'2023-08-08'),(421007,'2023-06-21','Gold',600,'2023-09-19'),(421008,'2023-07-05','Platinum',800,'2023-10-03'),(421009,'2023-08-12','Silver',350,'2023-11-10'),(421010,'2023-09-08','Bronze',200,'2023-12-07'),(421011,'2023-10-01','Gold',700,'2023-12-30'),(421012,'2023-11-17','Platinum',900,'2024-02-15'),(421013,'2023-11-16','Silver',400,'2024-02-14');
/*!40000 ALTER TABLE `LOYALTY_PROGRAM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NUTRITIONAL_INFO`
--

DROP TABLE IF EXISTS `NUTRITIONAL_INFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NUTRITIONAL_INFO` (
  `PROD_ID` int unsigned NOT NULL,
  `SERV_SIZE` varchar(50) NOT NULL,
  `CALORIES` decimal(5,2) NOT NULL,
  `TOTAL_FAT_g` decimal(5,2) NOT NULL,
  `SAT_FAT_g` decimal(5,2) NOT NULL,
  `CHOLESTEROL_mg` decimal(5,2) NOT NULL,
  `SODIUM_mg` decimal(5,2) NOT NULL,
  PRIMARY KEY (`PROD_ID`),
  UNIQUE KEY `PROD_ID` (`PROD_ID`),
  CONSTRAINT `NUTRITIONAL_INFO_ibfk_1` FOREIGN KEY (`PROD_ID`) REFERENCES `PRODUCT` (`PROD_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NUTRITIONAL_INFO`
--

LOCK TABLES `NUTRITIONAL_INFO` WRITE;
/*!40000 ALTER TABLE `NUTRITIONAL_INFO` DISABLE KEYS */;
INSERT INTO `NUTRITIONAL_INFO` VALUES (2154001,'1 slice',150.00,2.00,0.50,0.00,300.00),(2154002,'1 croissant',320.00,18.00,10.00,35.00,220.00),(2154003,'1 roll',320.00,12.00,6.00,30.00,350.00),(2154004,'1 slice',110.00,1.50,0.50,0.00,200.00),(2154005,'1 muffin',250.00,10.00,2.00,40.00,180.00),(2154006,'1 cupcake',180.00,8.00,4.00,25.00,150.00),(2154007,'1 slice',320.00,14.00,6.00,25.00,280.00),(2154008,'1 bagel',270.00,1.50,0.50,0.00,440.00),(2154009,'1 danish',280.00,15.00,8.00,40.00,320.00),(2154010,'1 slice',90.00,1.00,0.20,0.00,180.00),(2154011,'1 croissant',340.00,18.00,9.00,40.00,250.00),(2154012,'1 slice',400.00,20.00,10.00,55.00,320.00),(2154013,'1 bun',450.00,25.00,12.00,40.00,380.00),(2154014,'1 slice',110.00,1.50,0.50,0.00,200.00),(2154015,'1 muffin',220.00,9.00,1.50,45.00,190.00),(2154016,'1 cupcake',230.00,9.00,4.50,30.00,170.00),(2154017,'1 tart',280.00,15.00,8.00,35.00,180.00),(2154018,'1 pretzel',150.00,1.50,0.50,0.00,450.00),(2154019,'1 scone',290.00,14.00,6.00,35.00,220.00),(2154020,'1 slice',320.00,12.00,6.00,30.00,320.00);
/*!40000 ALTER TABLE `NUTRITIONAL_INFO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ORDER_LINE`
--

DROP TABLE IF EXISTS `ORDER_LINE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ORDER_LINE` (
  `ORDER_ID` int unsigned NOT NULL,
  `PROD_ID` int unsigned NOT NULL,
  `QUANTITY` smallint NOT NULL,
  PRIMARY KEY (`ORDER_ID`,`PROD_ID`),
  KEY `PROD_ID` (`PROD_ID`),
  CONSTRAINT `ORDER_LINE_ibfk_1` FOREIGN KEY (`ORDER_ID`) REFERENCES `PLACED_ORDER` (`ORDER_ID`) ON DELETE CASCADE,
  CONSTRAINT `ORDER_LINE_ibfk_2` FOREIGN KEY (`PROD_ID`) REFERENCES `PRODUCT` (`PROD_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORDER_LINE`
--

LOCK TABLES `ORDER_LINE` WRITE;
/*!40000 ALTER TABLE `ORDER_LINE` DISABLE KEYS */;
INSERT INTO `ORDER_LINE` VALUES (888001,2154004,3),(888001,2154009,7),(888001,2154012,9),(888001,2154023,13),(888002,2154010,6),(888002,2154018,13),(888003,2154003,9),(888003,2154005,2),(888003,2154008,1),(888003,2154013,11),(888003,2154019,10),(888004,2154004,11),(888005,2154010,10),(888005,2154011,11),(888005,2154012,6),(888005,2154017,9),(888005,2154019,3),(888005,2154022,5),(888006,2154013,5),(888006,2154015,11),(888006,2154019,6),(888007,2154002,8),(888007,2154010,15),(888007,2154015,14),(888008,2154020,4),(888009,2154011,4),(888009,2154013,11),(888009,2154023,4),(888009,2154024,4),(888010,2154005,9),(888010,2154013,5),(888010,2154014,7),(888010,2154018,13),(888010,2154023,8),(888010,2154024,10),(888011,2154003,11),(888011,2154004,12),(888011,2154005,13),(888011,2154009,8),(888011,2154018,14),(888012,2154003,13),(888012,2154015,3),(888012,2154017,8),(888012,2154019,9),(888012,2154023,5),(888013,2154003,12),(888013,2154013,8),(888013,2154021,10),(888013,2154025,11),(888014,2154004,7),(888014,2154013,11),(888015,2154001,3),(888015,2154002,15),(888015,2154008,11),(888015,2154016,1),(888016,2154005,15),(888016,2154016,3),(888016,2154020,10),(888016,2154021,15),(888016,2154024,13),(888017,2154001,5),(888017,2154008,15),(888017,2154011,14),(888017,2154012,13),(888017,2154021,12),(888018,2154006,1),(888018,2154010,13),(888018,2154011,6),(888018,2154017,1),(888018,2154021,8),(888018,2154025,3),(888019,2154006,15),(888019,2154007,10),(888019,2154011,15),(888020,2154008,15),(888020,2154011,6),(888020,2154015,7),(888020,2154017,11),(888020,2154025,10),(888021,2154013,14),(888021,2154015,14),(888022,2154011,4),(888022,2154019,6),(888023,2154009,1),(888023,2154012,10),(888024,2154018,9),(888025,2154002,11),(888025,2154017,7),(888025,2154019,15),(888026,2154010,6),(888026,2154023,11),(888027,2154011,10);
/*!40000 ALTER TABLE `ORDER_LINE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PACKAGING`
--

DROP TABLE IF EXISTS `PACKAGING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PACKAGING` (
  `PACK_ID` int unsigned NOT NULL,
  `PACK_TYPE` varchar(25) NOT NULL,
  `PACK_MATERIAL` varchar(255) NOT NULL,
  PRIMARY KEY (`PACK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PACKAGING`
--

LOCK TABLES `PACKAGING` WRITE;
/*!40000 ALTER TABLE `PACKAGING` DISABLE KEYS */;
INSERT INTO `PACKAGING` VALUES (778001,'Box','Cardboard'),(778002,'Bag','Paper'),(778003,'Wrapper','Plastic'),(778004,'Tray','Aluminum'),(778005,'Basket','Wicker'),(778006,'Jar','Glass'),(778007,'Tin','Metal'),(778008,'Pouch','Plastic'),(778009,'Bottle','Plastic'),(778010,'Container','Plastic'),(778011,'Basket','Plastic'),(778012,'Box','Plastic'),(778013,'Bag','Plastic'),(778014,'Wrapper','Paper'),(778015,'Box','Metal'),(778016,'Tray','Plastic'),(778017,'Basket','Cardboard'),(778018,'Pouch','Paper'),(778019,'Jar','Ceramic'),(778020,'Box','Wood'),(778021,'Bag','Cloth'),(778022,'Wrapper','Aluminum'),(778023,'Tray','Cardboard'),(778024,'Box','Plastic'),(778025,'Basket','Bamboo');
/*!40000 ALTER TABLE `PACKAGING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAYMENT`
--

DROP TABLE IF EXISTS `PAYMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PAYMENT` (
  `PAY_ID` int unsigned NOT NULL,
  `PAY_DATE` date NOT NULL,
  `PAY_AMOUNT` decimal(7,2) DEFAULT NULL,
  `PAY_METHOD` varchar(20) NOT NULL,
  `TAX_ID` int unsigned DEFAULT NULL,
  `CUST_CARD_ID` int unsigned DEFAULT NULL,
  `ORDER_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`PAY_ID`),
  KEY `TAX_ID` (`TAX_ID`),
  KEY `CUST_CARD_ID` (`CUST_CARD_ID`),
  KEY `ORDER_ID` (`ORDER_ID`),
  CONSTRAINT `PAYMENT_ibfk_1` FOREIGN KEY (`TAX_ID`) REFERENCES `TAX` (`TAX_ID`) ON UPDATE CASCADE,
  CONSTRAINT `PAYMENT_ibfk_2` FOREIGN KEY (`CUST_CARD_ID`) REFERENCES `CUSTOMER_CARD` (`CUST_CARD_ID`) ON UPDATE CASCADE,
  CONSTRAINT `PAYMENT_ibfk_3` FOREIGN KEY (`ORDER_ID`) REFERENCES `PLACED_ORDER` (`ORDER_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAYMENT`
--

LOCK TABLES `PAYMENT` WRITE;
/*!40000 ALTER TABLE `PAYMENT` DISABLE KEYS */;
INSERT INTO `PAYMENT` VALUES (315001,'2022-08-01',27.84,'Credit',982314760,519006,888052),(315002,'2022-06-14',64.32,'Debit',740185236,519029,888060),(315003,'2023-09-14',66.24,'PayPal',267580314,519008,888048),(315004,'2024-01-16',24.00,'Apple Pay',570126834,519022,888055),(315005,'2024-12-29',50.88,'Google',315289047,519022,888034),(315006,'2024-09-23',36.48,'Credit',689407513,519015,888006),(315007,'2022-11-28',40.32,'Debit',468259701,519030,888077),(315008,'2024-06-05',31.68,'PayPal',307946215,519028,888065),(315009,'2022-03-21',58.56,'Apple Pay',624078931,519021,888087),(315010,'2022-08-01',14.40,'Google',315289047,519013,888038),(315011,'2022-12-24',72.96,'Credit',897430126,519006,888013),(315012,'2024-10-21',67.20,'Debit',184963270,519003,888018),(315013,'2022-03-29',35.52,'PayPal',267580314,519003,888034),(315014,'2022-07-12',45.12,'Apple Pay',490216753,519020,888052),(315015,'2024-09-12',67.20,'Google',897430126,519002,888052),(315016,'2024-10-02',85.44,'Credit',874905312,519003,888035),(315017,'2024-08-20',20.16,'Debit',203957481,519032,888075),(315018,'2023-10-29',33.60,'PayPal',203957481,519032,888094),(315019,'2023-06-05',44.16,'Apple Pay',416208573,519022,888075),(315020,'2024-09-27',20.16,'Google',570126834,519013,888006),(315021,'2022-02-07',32.64,'Credit',416208573,519025,888061),(315022,'2024-03-20',31.68,'Debit',740185236,519036,888087),(315023,'2022-06-12',21.12,'PayPal',267580314,519010,888011),(315024,'2022-02-28',61.44,'Apple Pay',632540197,519005,888098),(315025,'2023-12-11',37.44,'Google',569812473,519016,888082),(315026,'2024-06-01',81.60,'Credit',632540197,519037,888031),(315027,'2024-10-09',44.16,'Debit',925071463,519021,888029),(315028,'2022-06-01',94.08,'PayPal',740185236,519023,888070),(315029,'2023-08-09',39.36,'Apple Pay',735914602,519035,888042),(315030,'2023-12-12',37.44,'Google',624078931,519025,888035),(315031,'2022-04-19',32.64,'Credit',735914602,519039,888075),(315032,'2022-03-15',13.44,'Debit',632540197,519039,888016),(315033,'2024-04-17',20.16,'PayPal',518206794,519023,888088),(315034,'2022-04-23',64.32,'Apple Pay',468259701,519039,888080),(315035,'2022-06-09',45.12,'Google',624078931,519001,888083),(315036,'2023-02-05',60.48,'Credit',468259701,519018,888046),(315037,'2023-12-08',48.96,'Debit',982314760,519005,888095),(315038,'2023-02-02',20.16,'PayPal',735914602,519014,888044),(315039,'2023-06-26',16.32,'Apple Pay',490216753,519028,888060),(315040,'2024-05-10',76.80,'Google',148973205,519029,888021),(315041,'2024-10-07',90.24,'Credit',925071463,519007,888097),(315042,'2022-07-07',31.68,'Debit',735914602,519014,888016),(315043,'2024-09-18',67.20,'PayPal',307946215,519010,888058),(315044,'2024-05-19',67.20,'Apple Pay',740185236,519009,888082),(315045,'2023-03-24',70.08,'Google',735914602,519019,888019),(315046,'2023-03-11',77.76,'Credit',468259701,519017,888001),(315047,'2024-06-07',40.32,'Debit',735914602,519012,888059),(315048,'2024-05-01',18.24,'PayPal',362540971,519035,888010),(315049,'2024-01-27',76.80,'Apple Pay',874905312,519021,888076),(315050,'2022-06-19',22.08,'Google',148973205,519033,888092),(315051,'2024-05-16',72.00,'Credit',874905312,519034,888009),(315052,'2024-07-15',11.52,'Debit',468259701,519030,888045),(315053,'2023-02-15',63.36,'PayPal',689407513,519014,888031),(315054,'2024-05-07',61.44,'Apple Pay',689407513,519007,888046),(315055,'2024-06-30',70.08,'Google',416208573,519006,888023),(315056,'2022-10-19',61.44,'Credit',267580314,519009,888009),(315057,'2023-11-14',40.32,'Debit',781306542,519003,888088),(315058,'2023-11-13',62.40,'PayPal',416208573,519001,888074),(315059,'2024-12-21',54.72,'Apple Pay',362540971,519005,888061),(315060,'2024-08-13',72.00,'Google',468259701,519008,888014),(315061,'2024-07-21',50.88,'Credit',781306542,519036,888012),(315062,'2022-05-19',73.92,'Debit',874905312,519013,888052),(315063,'2023-07-06',75.84,'PayPal',203957481,519005,888008),(315064,'2022-09-03',51.84,'Apple Pay',624078931,519020,888004),(315065,'2022-03-19',87.36,'Google',148973205,519025,888093),(315066,'2023-09-18',31.68,'Credit',982314760,519029,888033),(315067,'2022-04-23',33.60,'Debit',897430126,519023,888086),(315068,'2023-03-03',87.36,'PayPal',184963270,519017,888015),(315069,'2022-02-14',31.68,'Apple Pay',362540971,519020,888048),(315070,'2023-02-23',24.00,'Google',468259701,519016,888090),(315071,'2023-02-17',60.48,'Credit',890756123,519022,888092),(315072,'2022-04-26',29.76,'Debit',781306542,519012,888064),(315073,'2024-12-18',48.00,'PayPal',416208573,519033,888088),(315074,'2022-11-07',64.32,'Apple Pay',315289047,519018,888082),(315075,'2023-07-23',57.60,'Google',267580314,519009,888074),(315076,'2022-07-18',19.20,'Credit',624078931,519027,888038),(315077,'2023-01-23',44.16,'Debit',982314760,519033,888026),(315078,'2023-11-06',92.16,'PayPal',890756123,519010,888086),(315079,'2023-07-03',71.04,'Apple Pay',740185236,519033,888096),(315080,'2024-04-15',91.20,'Google',184963270,519021,888072),(315081,'2024-06-05',28.80,'Credit',632540197,519031,888098),(315082,'2024-06-06',48.00,'Debit',416208573,519019,888083),(315083,'2023-11-23',11.52,'PayPal',897430126,519015,888028),(315084,'2023-04-17',14.40,'Apple Pay',315289047,519035,888055),(315085,'2024-03-17',92.16,'Google',416208573,519013,888071),(315086,'2023-10-01',80.64,'Credit',490216753,519020,888006),(315087,'2022-08-05',31.68,'Debit',781306542,519011,888073),(315088,'2022-06-27',84.48,'PayPal',740185236,519034,888053),(315089,'2022-08-26',19.20,'Apple Pay',184963270,519027,888067),(315090,'2022-05-11',18.24,'Google',307946215,519002,888046),(315091,'2023-07-22',19.20,'Credit',490216753,519028,888015),(315092,'2024-08-24',76.80,'Debit',152798460,519013,888076),(315093,'2024-03-08',25.92,'PayPal',152798460,519016,888035),(315094,'2023-03-11',91.20,'Apple Pay',203957481,519022,888021),(315095,'2024-05-15',93.12,'Google',925071463,519034,888046),(315096,'2024-03-12',63.36,'Credit',781306542,519003,888052),(315097,'2022-04-18',73.92,'Debit',570126834,519002,888024),(315098,'2024-11-29',67.20,'PayPal',315289047,519012,888067),(315099,'2023-01-15',50.88,'Apple Pay',569812473,519039,888058),(315100,'2024-10-16',42.24,'Google',184963270,519023,888096),(315101,'2022-05-15',48.00,'Credit',874905312,519020,888058),(315102,'2023-08-25',79.68,'Debit',490216753,519032,888038),(315103,'2022-09-09',90.24,'PayPal',569812473,519009,888065),(315104,'2023-05-22',91.20,'Apple Pay',624078931,519034,888044),(315105,'2022-12-10',45.12,'Google',982314760,519001,888001),(315106,'2022-03-30',23.04,'Credit',570126834,519019,888033),(315107,'2023-10-15',31.68,'Debit',184963270,519028,888035),(315108,'2022-10-24',44.16,'PayPal',624078931,519023,888010),(315109,'2023-10-14',92.16,'Apple Pay',624078931,519002,888092),(315110,'2024-05-08',92.16,'Google',416208573,519017,888040),(315111,'2022-01-03',57.60,'Credit',518206794,519027,888091),(315112,'2022-10-08',39.36,'Debit',890756123,519015,888086),(315113,'2022-04-03',55.68,'PayPal',689407513,519030,888075),(315114,'2023-01-08',46.08,'Apple Pay',781306542,519023,888073),(315115,'2024-02-22',11.52,'Google',874905312,519007,888012),(315116,'2023-05-28',11.52,'Credit',982314760,519024,888057),(315117,'2024-07-13',64.32,'Debit',570126834,519019,888092),(315118,'2023-01-05',91.20,'PayPal',689407513,519010,888045),(315119,'2023-05-16',45.12,'Apple Pay',307946215,519010,888031),(315120,'2022-09-24',28.80,'Google',267580314,519023,888015),(315121,'2022-07-11',77.76,'Credit',468259701,519003,888019),(315122,'2024-06-04',45.12,'Debit',890756123,519023,888032),(315123,'2023-03-11',19.20,'PayPal',624078931,519020,888026),(315124,'2022-02-05',31.68,'Apple Pay',569812473,519026,888058),(315125,'2024-02-24',18.24,'Google',781306542,519036,888099),(315126,'2024-08-18',68.16,'Debit',890756123,519021,888032),(315127,'2022-04-06',47.04,'PayPal',203957481,519007,888055),(315128,'2024-04-28',14.40,'Apple Pay',267580314,519013,888081),(315129,'2024-07-10',84.48,'Google',184963270,519007,888089);
/*!40000 ALTER TABLE `PAYMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PLACED_ORDER`
--

DROP TABLE IF EXISTS `PLACED_ORDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PLACED_ORDER` (
  `ORDER_ID` int unsigned NOT NULL,
  `ORDER_DATE` date DEFAULT NULL,
  `ORDER_TIME` time NOT NULL,
  `CUST_ID` int unsigned DEFAULT NULL,
  `ATTEND_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`ORDER_ID`),
  KEY `CUST_ID` (`CUST_ID`),
  KEY `ATTEND_ID` (`ATTEND_ID`),
  CONSTRAINT `PLACED_ORDER_ibfk_1` FOREIGN KEY (`CUST_ID`) REFERENCES `CUSTOMER` (`CUST_ID`) ON UPDATE CASCADE,
  CONSTRAINT `PLACED_ORDER_ibfk_2` FOREIGN KEY (`ATTEND_ID`) REFERENCES `EMPLOYEE_SHIFT` (`ATTEND_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PLACED_ORDER`
--

LOCK TABLES `PLACED_ORDER` WRITE;
/*!40000 ALTER TABLE `PLACED_ORDER` DISABLE KEYS */;
INSERT INTO `PLACED_ORDER` VALUES (888001,'2024-11-22','07:22:11',421037,225099),(888002,'2025-09-11','17:01:56',421029,225031),(888003,'2022-04-27','23:17:54',421044,225055),(888004,'2022-07-09','21:32:26',421007,225007),(888005,'2024-12-21','09:31:01',421013,225060),(888006,'2024-10-03','04:10:51',421009,225029),(888007,'2022-11-10','11:26:45',421012,225088),(888008,'2023-01-09','15:44:39',421010,225012),(888009,'2025-11-04','20:36:14',421035,225074),(888010,'2023-01-10','19:25:00',421025,225074),(888011,'2022-08-19','01:22:19',421044,225006),(888012,'2024-01-05','13:55:47',421014,225070),(888013,'2023-12-21','10:55:21',421011,225075),(888014,'2025-07-23','14:01:40',421011,225089),(888015,'2024-10-10','04:10:17',421020,225078),(888016,'2024-07-02','14:17:38',421012,225033),(888017,'2023-04-20','04:41:00',421010,225011),(888018,'2024-01-07','05:12:05',421029,225045),(888019,'2025-09-07','02:36:56',421029,225032),(888020,'2024-02-01','08:36:36',421003,225032),(888021,'2023-05-15','13:43:52',421031,225049),(888022,'2023-08-04','15:47:17',421040,225038),(888023,'2023-07-25','13:33:20',421024,225050),(888024,'2024-06-01','20:23:56',421007,225013),(888025,'2025-06-29','15:28:59',421005,225040),(888026,'2022-11-09','06:38:56',421026,225048),(888027,'2022-06-13','23:33:13',421011,225077),(888028,'2024-03-07','17:44:29',421014,225059),(888029,'2022-04-07','22:03:07',421043,225034),(888030,'2024-08-16','15:27:44',421030,225012),(888031,'2022-10-05','12:12:16',421032,225003),(888032,'2024-08-02','12:48:58',421022,225027),(888033,'2023-07-31','19:37:26',421033,225016),(888034,'2023-02-26','09:32:38',421008,225005),(888035,'2025-03-19','02:35:40',421002,225097),(888036,'2022-09-22','17:03:50',421035,225094),(888037,'2022-04-10','21:25:33',421020,225078),(888038,'2023-04-01','05:13:35',421042,225021),(888039,'2025-04-06','14:52:35',421013,225017),(888040,'2025-01-20','14:27:20',421040,225017),(888041,'2024-10-30','10:29:02',421009,225016),(888042,'2025-08-02','23:33:04',421006,225006),(888043,'2023-08-21','14:36:06',421017,225082),(888044,'2022-11-26','04:49:51',421024,225082),(888045,'2025-03-09','10:26:39',421021,225062),(888046,'2025-01-22','23:22:48',421022,225084),(888047,'2022-05-23','17:23:30',421005,225067),(888048,'2024-09-20','10:32:02',421028,225022),(888049,'2023-01-18','19:55:30',421032,225046),(888050,'2023-03-22','14:55:36',421018,225058),(888051,'2023-02-08','08:04:18',421044,225036),(888052,'2024-07-31','06:19:02',421015,225093),(888053,'2022-05-22','05:28:25',421038,225049),(888054,'2024-03-05','03:22:10',421009,225061),(888055,'2022-04-27','08:26:32',421008,225030),(888056,'2023-12-03','03:45:53',421004,225092),(888057,'2024-01-01','19:53:52',421026,225091),(888058,'2022-01-01','01:05:54',421006,225045),(888059,'2025-08-29','01:45:52',421024,225062),(888060,'2023-05-07','15:57:30',421028,225041),(888061,'2024-10-12','05:33:52',421033,225084),(888062,'2022-01-29','08:59:18',421044,225083),(888063,'2024-08-13','09:18:40',421010,225089),(888064,'2024-12-28','04:00:40',421022,225088),(888065,'2023-03-22','22:35:43',421022,225035),(888066,'2024-07-13','00:48:16',421044,225096),(888067,'2022-09-30','17:35:39',421040,225089),(888068,'2022-05-22','12:47:46',421014,225012),(888069,'2024-08-25','11:07:24',421021,225050),(888070,'2025-09-03','09:15:39',421027,225049),(888071,'2023-08-19','22:23:33',421032,225007),(888072,'2022-02-12','18:49:24',421022,225028),(888073,'2025-02-04','12:30:47',421015,225073),(888074,'2024-01-28','10:39:46',421011,225047),(888075,'2024-07-19','00:13:03',421036,225047),(888076,'2023-03-29','00:21:38',421013,225035),(888077,'2025-11-18','17:31:33',421040,225067),(888078,'2022-06-13','22:23:12',421035,225056),(888079,'2024-03-25','17:38:46',421004,225003),(888080,'2024-07-24','00:03:10',421005,225050),(888081,'2023-06-11','19:33:24',421040,225009),(888082,'2023-07-22','11:56:01',421035,225098),(888083,'2024-03-24','07:31:21',421038,225085),(888084,'2025-08-12','10:39:23',421016,225051),(888085,'2024-04-28','23:33:29',421023,225053),(888086,'2022-10-22','13:29:15',421010,225042),(888087,'2022-03-13','19:47:59',421022,225052),(888088,'2022-07-17','03:37:10',421015,225065),(888089,'2025-01-21','08:03:50',421016,225037),(888090,'2022-10-09','12:00:00',421005,225060),(888091,'2023-11-19','14:21:56',421031,225033),(888092,'2024-08-11','06:07:01',421038,225095),(888093,'2024-09-12','12:30:49',421011,225043),(888094,'2024-10-01','22:42:41',421014,225072),(888095,'2022-05-26','06:35:46',421010,225030),(888096,'2025-03-02','09:38:11',421042,225001),(888097,'2024-12-05','09:53:01',421019,225092),(888098,'2024-04-24','10:28:39',421011,225040),(888099,'2024-12-08','16:20:19',421005,225067),(888100,'2024-03-22','07:22:11',421037,225031),(888101,'2024-03-11','17:01:56',421029,225031);
/*!40000 ALTER TABLE `PLACED_ORDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCT`
--

DROP TABLE IF EXISTS `PRODUCT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PRODUCT` (
  `PROD_ID` int unsigned NOT NULL,
  `PROD_NAME` varchar(255) NOT NULL,
  `PROD_DESC` varchar(255) NOT NULL,
  `PROD_PRICE` decimal(5,2) NOT NULL,
  `PROD_CATEGORY` varchar(15) DEFAULT NULL,
  `PROD_QTY` smallint NOT NULL,
  `INVT_ID` int unsigned DEFAULT NULL,
  `RECIPE_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`PROD_ID`),
  UNIQUE KEY `INVT_ID` (`INVT_ID`),
  KEY `RECIPE_ID` (`RECIPE_ID`),
  CONSTRAINT `PRODUCT_ibfk_1` FOREIGN KEY (`INVT_ID`) REFERENCES `INVENTORY` (`INVT_ID`) ON UPDATE CASCADE,
  CONSTRAINT `PRODUCT_ibfk_2` FOREIGN KEY (`RECIPE_ID`) REFERENCES `RECIPE` (`RECIPE_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT`
--

LOCK TABLES `PRODUCT` WRITE;
/*!40000 ALTER TABLE `PRODUCT` DISABLE KEYS */;
INSERT INTO `PRODUCT` VALUES (2154001,'French Baguette','Crispy, golden-brown exterior with a soft inside',3.99,'Bread',2,153031,154001),(2154002,'Chocolate Croissant','Flaky pastry filled with rich chocolate',2.49,'Pastries',2,153032,154002),(2154003,'Cinnamon Roll','Swirled dough with cinnamon sugar and icing',1.99,'Pastries',6,153033,154003),(2154004,'Sourdough Loaf','Rustic, tangy bread with a chewy crust',4.49,'Bread',7,153034,154004),(2154005,'Blueberry Muffin','Moist muffin studded with plump blueberries',1.79,'Muffins',3,153035,154005),(2154006,'Vanilla Cupcake','Light, fluffy cupcake with vanilla frosting',2.29,'Cupcakes',1,153036,154006),(2154007,'Apple Pie','Classic pie with spiced apple filling',12.99,'Pies',4,153037,154007),(2154008,'Bagel','Chewy, boiled and baked with various toppings',1.49,'Bread',4,153038,154008),(2154009,'Cherry Danish','Sweet pastry filled with cherry compote',2.99,'Pastries',5,153039,154009),(2154010,'Rye Bread','Dense, flavorful bread made with rye flour',3.79,'Bread',5,153040,154010),(2154011,'Almond Croissant','Croissant filled and topped with almonds',2.99,'Pastries',9,153041,154011),(2154012,'Chocolate Cake','Moist chocolate cake with chocolate frosting',18.99,'Cakes',3,153042,154012),(2154013,'Pecan Sticky Bun','Sticky, sweet bun with caramelized pecans',2.79,'Pastries',3,153043,154013),(2154014,'Whole Wheat Bread','Nutty and hearty bread made with whole wheat',3.49,'Bread',5,153044,154014),(2154015,'Lemon Poppy Seed Muffin','Zesty muffin with poppy seeds',1.89,'Muffins',2,153045,154015),(2154016,'Red Velvet Cupcake','Rich red velvet cupcake with cream cheese icing',2.49,'Cupcakes',4,153046,154016),(2154017,'Fruit Tart','Tart filled with pastry cream and fresh fruit',14.99,'Tarts',6,153047,154017),(2154018,'Pretzel','Soft and chewy pretzel with salted crust',1.29,'Bread',3,153048,154018),(2154019,'Raspberry Scone','Tender scone studded with sweet raspberries',2.19,'Scones',5,153049,154019),(2154020,'Carrot Cake','Moist carrot cake with cream cheese frosting',16.99,'Cakes',3,153050,154020),(2154021,'Danish Pastry','Flaky, buttery pastry with various fillings',2.49,'Pastries',3,153051,154021),(2154022,'Chocolate Chip Cookie','Classic cookie loaded with chocolate chips',0.99,'Cookies',12,153052,154022),(2154023,'Blueberry Pie','Sweet and tart blueberry filling in a pie crust',14.99,'Pies',2,153053,154023),(2154024,'Caramel Brownie','Fudgy brownie topped with gooey caramel',2.79,'Brownies',4,153054,154024),(2154025,'Pumpkin Scone','Spiced scone with pumpkin flavor and icing',2.19,'Scones',5,153055,154025);
/*!40000 ALTER TABLE `PRODUCT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCT_ALLERGY`
--

DROP TABLE IF EXISTS `PRODUCT_ALLERGY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PRODUCT_ALLERGY` (
  `PROD_ID` int unsigned NOT NULL,
  `ALLERGY_ID` int unsigned NOT NULL,
  `SEVERITY` varchar(20) NOT NULL,
  PRIMARY KEY (`PROD_ID`,`ALLERGY_ID`),
  KEY `ALLERGY_ID` (`ALLERGY_ID`),
  CONSTRAINT `PRODUCT_ALLERGY_ibfk_1` FOREIGN KEY (`PROD_ID`) REFERENCES `PRODUCT` (`PROD_ID`) ON DELETE CASCADE,
  CONSTRAINT `PRODUCT_ALLERGY_ibfk_2` FOREIGN KEY (`ALLERGY_ID`) REFERENCES `ALLERGY_INFO` (`ALLERGY_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT_ALLERGY`
--

LOCK TABLES `PRODUCT_ALLERGY` WRITE;
/*!40000 ALTER TABLE `PRODUCT_ALLERGY` DISABLE KEYS */;
INSERT INTO `PRODUCT_ALLERGY` VALUES (2154002,341001,'Mild'),(2154002,341008,'Mild'),(2154002,341009,'Severe'),(2154002,341024,'Severe'),(2154003,341006,'Mild'),(2154005,341004,'Moderate'),(2154006,341005,'Moderate'),(2154007,341005,'Mild'),(2154007,341011,'Severe'),(2154008,341004,'Mild'),(2154008,341024,'Moderate'),(2154009,341007,'Mild'),(2154009,341024,'Severe'),(2154010,341025,'Severe'),(2154011,341007,'Moderate'),(2154011,341009,'Severe'),(2154011,341018,'Moderate'),(2154012,341015,'Severe'),(2154012,341023,'Moderate'),(2154013,341002,'Severe'),(2154013,341011,'Severe'),(2154013,341023,'Moderate'),(2154014,341010,'Severe'),(2154015,341019,'Mild'),(2154015,341024,'Mild'),(2154016,341002,'Mild'),(2154016,341007,'Moderate'),(2154016,341021,'Moderate'),(2154017,341017,'Mild'),(2154017,341020,'Moderate'),(2154018,341013,'Mild'),(2154018,341022,'Mild'),(2154019,341003,'Severe'),(2154019,341010,'Mild'),(2154019,341012,'Moderate'),(2154019,341013,'Severe'),(2154019,341024,'Moderate'),(2154020,341006,'Severe'),(2154021,341005,'Moderate'),(2154021,341013,'Moderate'),(2154024,341002,'Severe'),(2154024,341007,'Severe'),(2154024,341012,'Mild'),(2154024,341020,'Moderate'),(2154025,341002,'Mild'),(2154025,341005,'Severe');
/*!40000 ALTER TABLE `PRODUCT_ALLERGY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCT_CREATION`
--

DROP TABLE IF EXISTS `PRODUCT_CREATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PRODUCT_CREATION` (
  `CREATE_ID` int unsigned NOT NULL,
  `INGRED_ID` int unsigned DEFAULT NULL,
  `PROD_ID` int unsigned DEFAULT NULL,
  `RECIPE_STEP_ID` int unsigned DEFAULT NULL,
  `DATE_PERFORMED` date NOT NULL,
  `EQUIP_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`CREATE_ID`),
  KEY `INGRED_ID` (`INGRED_ID`),
  KEY `PROD_ID` (`PROD_ID`),
  KEY `RECIPE_STEP_ID` (`RECIPE_STEP_ID`),
  KEY `EQUIP_ID` (`EQUIP_ID`),
  CONSTRAINT `PRODUCT_CREATION_ibfk_1` FOREIGN KEY (`INGRED_ID`) REFERENCES `INGREDIENT` (`INGRED_ID`) ON UPDATE CASCADE,
  CONSTRAINT `PRODUCT_CREATION_ibfk_2` FOREIGN KEY (`PROD_ID`) REFERENCES `PRODUCT` (`PROD_ID`) ON UPDATE CASCADE,
  CONSTRAINT `PRODUCT_CREATION_ibfk_3` FOREIGN KEY (`RECIPE_STEP_ID`) REFERENCES `RECIPE_STEP` (`RECIPE_STEP_ID`) ON UPDATE CASCADE,
  CONSTRAINT `PRODUCT_CREATION_ibfk_4` FOREIGN KEY (`EQUIP_ID`) REFERENCES `EQUIPMENT` (`EQUIP_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT_CREATION`
--

LOCK TABLES `PRODUCT_CREATION` WRITE;
/*!40000 ALTER TABLE `PRODUCT_CREATION` DISABLE KEYS */;
INSERT INTO `PRODUCT_CREATION` VALUES (305001,854003,2154001,105003,'2023-01-28',2574003),(305002,854014,2154002,105014,'2023-01-17',2574007),(305003,854029,2154003,105029,'2023-06-26',2574021),(305004,854001,2154004,105031,'2022-10-28',2574003),(305005,854011,2154005,105041,'2023-08-26',2574003),(305006,854021,2154006,105051,'2023-06-16',2574019),(305007,854005,2154007,105065,'2023-05-20',2574015),(305008,854012,2154008,105072,'2023-01-17',2574005),(305009,854023,2154009,105083,'2023-07-23',2574010),(305010,854002,2154010,105092,'2023-07-09',2574002),(305011,854015,2154011,105105,'2023-04-22',2574014),(305012,854023,2154012,105113,'2023-05-22',2574022),(305013,854002,2154013,105122,'2023-07-19',2574021),(305014,854013,2154014,105133,'2022-12-19',2574021),(305015,854028,2154015,105148,'2023-06-13',2574022),(305016,854007,2154016,105157,'2023-08-26',2574025),(305017,854017,2154017,105167,'2023-06-16',2574013),(305018,854025,2154018,105175,'2023-06-16',2574018),(305019,854002,2154019,105182,'2023-10-07',2574025),(305020,854012,2154020,105192,'2023-09-28',2574004),(305021,854021,2154021,105201,'2023-08-07',2574016),(305023,854011,2154023,105221,'2023-04-22',2574014),(305024,854023,2154024,105233,'2023-07-09',2574021),(305025,854008,2154025,105248,'2022-08-09',2574015);
/*!40000 ALTER TABLE `PRODUCT_CREATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCT_PACKAGING`
--

DROP TABLE IF EXISTS `PRODUCT_PACKAGING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PRODUCT_PACKAGING` (
  `PROD_PACK_ID` int unsigned NOT NULL,
  `PROD_ID` int unsigned DEFAULT NULL,
  `PACK_ID` int unsigned DEFAULT NULL,
  `PROD_QTY` smallint NOT NULL,
  `PROD_DATE` date DEFAULT NULL,
  `SUPP_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`PROD_PACK_ID`),
  KEY `PROD_ID` (`PROD_ID`),
  KEY `PACK_ID` (`PACK_ID`),
  KEY `SUPP_ID` (`SUPP_ID`),
  CONSTRAINT `PRODUCT_PACKAGING_ibfk_1` FOREIGN KEY (`PROD_ID`) REFERENCES `PRODUCT` (`PROD_ID`) ON UPDATE CASCADE,
  CONSTRAINT `PRODUCT_PACKAGING_ibfk_2` FOREIGN KEY (`PACK_ID`) REFERENCES `PACKAGING` (`PACK_ID`) ON UPDATE CASCADE,
  CONSTRAINT `PRODUCT_PACKAGING_ibfk_3` FOREIGN KEY (`SUPP_ID`) REFERENCES `SUPPLIER` (`SUPP_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT_PACKAGING`
--

LOCK TABLES `PRODUCT_PACKAGING` WRITE;
/*!40000 ALTER TABLE `PRODUCT_PACKAGING` DISABLE KEYS */;
INSERT INTO `PRODUCT_PACKAGING` VALUES (718329,2154022,778018,18,'2023-06-10',207018),(718330,2154015,778003,4,'2023-11-27',107007),(718331,2154022,778001,10,'2023-07-17',207010),(718332,2154020,778022,15,'2023-08-30',107012),(718333,2154006,778017,7,'2023-04-05',207006),(718334,2154005,778004,15,'2023-10-12',207002),(718335,2154002,778003,4,'2024-01-22',107009),(718336,2154009,778023,13,'2023-05-19',107011),(718337,2154014,778019,3,'2023-12-09',107006),(718338,2154021,778021,8,'2024-02-06',207009),(718339,2154011,778010,14,'2023-02-18',207003),(718340,2154016,778021,6,'2023-09-15',207013),(718341,2154003,778005,6,'2023-03-25',107023),(718342,2154004,778022,19,'2023-06-01',207012),(718343,2154002,778021,13,'2024-02-12',107018),(718344,2154003,778002,16,'2023-08-06',207014),(718345,2154014,778005,13,'2023-07-30',207002),(718346,2154006,778010,3,'2023-01-07',207007),(718347,2154011,778011,19,'2023-05-26',107006),(718348,2154024,778017,4,'2023-12-30',207002),(718349,2154012,778004,2,'2023-10-19',107011),(718350,2154003,778002,10,'2024-02-21',107010),(718351,2154008,778017,4,'2023-11-18',107006),(718352,2154018,778020,7,'2023-04-29',207017),(718353,2154023,778017,13,'2023-09-23',107016),(718354,2154001,778021,8,'2023-07-29',107016),(718355,2154013,778008,8,'2023-09-11',107023),(718356,2154005,778018,13,'2023-04-17',107021),(718357,2154009,778003,11,'2023-10-24',107015),(718358,2154020,778009,18,'2024-02-03',107022),(718359,2154010,778021,1,'2023-05-31',207020),(718360,2154014,778003,9,'2023-12-21',207001),(718361,2154004,778015,16,'2024-02-18',107020),(718362,2154015,778020,11,'2023-03-02',207020),(718363,2154017,778004,14,'2023-09-27',207016),(718364,2154005,778023,1,'2023-04-06',107004),(718365,2154017,778001,3,'2023-06-13',207015),(718366,2154001,778005,2,'2024-02-24',207010),(718367,2154006,778025,16,'2023-08-18',107015);
/*!40000 ALTER TABLE `PRODUCT_PACKAGING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCT_PROMOTION`
--

DROP TABLE IF EXISTS `PRODUCT_PROMOTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PRODUCT_PROMOTION` (
  `PROMO_CODE` int unsigned NOT NULL,
  `PROD_ID` int unsigned NOT NULL,
  PRIMARY KEY (`PROMO_CODE`,`PROD_ID`),
  KEY `PROD_ID` (`PROD_ID`),
  CONSTRAINT `FK_PROMOTION_CODE` FOREIGN KEY (`PROMO_CODE`) REFERENCES `PROMOTION` (`PROMO_CODE`) ON DELETE CASCADE,
  CONSTRAINT `PRODUCT_PROMOTION_ibfk_2` FOREIGN KEY (`PROD_ID`) REFERENCES `PRODUCT` (`PROD_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT_PROMOTION`
--

LOCK TABLES `PRODUCT_PROMOTION` WRITE;
/*!40000 ALTER TABLE `PRODUCT_PROMOTION` DISABLE KEYS */;
INSERT INTO `PRODUCT_PROMOTION` VALUES (933008,2154001),(933014,2154001),(933008,2154002),(933016,2154002),(933016,2154003),(933024,2154003),(933004,2154005),(933018,2154008),(933001,2154009),(933002,2154009),(933005,2154009),(933023,2154010),(933017,2154011),(933010,2154015),(933009,2154016),(933019,2154017),(933005,2154019),(933010,2154020),(933017,2154021),(933015,2154022),(933024,2154023),(933024,2154024),(933003,2154025),(933014,2154025),(933024,2154025);
/*!40000 ALTER TABLE `PRODUCT_PROMOTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROMOTION`
--

DROP TABLE IF EXISTS `PROMOTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PROMOTION` (
  `PROMO_CODE` int unsigned NOT NULL,
  `PROMO_NAME` varchar(255) NOT NULL,
  `PROMO_TYPE` varchar(50) NOT NULL,
  `START_DATE` date NOT NULL,
  `END_DATE` date NOT NULL,
  `DISC_CODE` varchar(25) NOT NULL,
  `DISC_RATE` decimal(3,2) NOT NULL,
  `LOYAL_CUST_RATE` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`PROMO_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROMOTION`
--

LOCK TABLES `PROMOTION` WRITE;
/*!40000 ALTER TABLE `PROMOTION` DISABLE KEYS */;
INSERT INTO `PROMOTION` VALUES (933001,'HappyHourDeal','Discount','2022-03-15','2022-03-31','ABCD1234',0.10,0.05),(933002,'WeekendSpecial','BOGO','2022-04-01','2022-04-03','EFGH5678',0.15,0.10),(933003,'SpringFling','Discount','2022-04-15','2022-04-30','IJKL9012',0.20,0.00),(933004,'SummerSavings','Discount','2022-06-01','2022-08-31','MNOP3456',0.25,0.00),(933005,'BackToSchool','BOGO','2022-09-01','2022-09-10','QRST7890',0.30,0.25),(933006,'HarvestFestival','Discount','2022-09-15','2022-09-30','UVWX1234',0.10,0.00),(933007,'HalloweenSpecial','Discount','2022-10-15','2022-10-31','YZAB5678',0.15,0.10),(933008,'HolidayTreats','BOGO','2022-11-25','2022-11-27','CDEF9012',0.20,0.00),(933009,'WinterWarmth','Discount','2022-12-01','2022-12-31','GHIJ3456',0.25,0.00),(933010,'NewYearNewDeals','Discount','2023-01-01','2023-01-07','KLMN7890',0.30,0.25),(933011,'ValentineSpecial','BOGO','2023-02-10','2023-02-14','OPQR1234',0.10,0.00),(933012,'SpringIntoSavings','Discount','2023-03-20','2023-03-31','STUV5678',0.15,0.10),(933013,'EasterEggstravaganza','BOGO','2023-04-01','2023-04-02','WXYZ9012',0.20,0.00),(933014,'MotherDaySpecial','Discount','2023-05-10','2023-05-14','ABCD3456',0.25,0.20),(933015,'SummerSizzle','BOGO','2023-06-21','2023-06-25','EFGH7890',0.30,0.00),(933016,'IndependenceDay','Discount','2023-07-04','2023-07-07','IJKL1234',0.10,0.05),(933017,'BackToSchool','BOGO','2023-08-15','2023-08-20','MNOP5678',0.15,0.10),(933018,'LaborDayDeals','Discount','2023-09-01','2023-09-05','QRST9012',0.20,0.00),(933019,'OktoberfestSpecial','BOGO','2023-10-01','2023-10-07','UVWX3456',0.25,0.20),(933020,'HalloweenTreats','Discount','2023-10-25','2023-10-31','YZAB7890',0.30,0.00),(933021,'ThanksgivingFeast','BOGO','2023-11-20','2023-11-23','CDEF1234',0.10,0.05),(933022,'HolidayCheer','Discount','2023-12-01','2023-12-25','GHIJ5678',0.15,0.00),(933023,'EndOfYearBlowout','BOGO','2023-12-28','2023-12-31','KLMN9012',0.20,0.15),(933024,'NewYearNewStart','Discount','2024-01-01','2024-01-07','OPQR3456',0.25,0.20),(933025,'WinterWarmth','BOGO','2024-01-15','2024-01-20','STUV7890',0.30,0.00);
/*!40000 ALTER TABLE `PROMOTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RATING`
--

DROP TABLE IF EXISTS `RATING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RATING` (
  `RATING_CODE` int unsigned NOT NULL,
  `STAR_RATING` decimal(2,1) NOT NULL,
  `COMMENT` varchar(255) NOT NULL,
  `RATING_DATE` date NOT NULL,
  `RATING_TIME` time NOT NULL,
  `CUST_ID` int unsigned DEFAULT NULL,
  `PROD_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`RATING_CODE`),
  KEY `CUST_ID` (`CUST_ID`),
  KEY `PROD_ID` (`PROD_ID`),
  CONSTRAINT `RATING_ibfk_1` FOREIGN KEY (`CUST_ID`) REFERENCES `CUSTOMER` (`CUST_ID`) ON UPDATE CASCADE,
  CONSTRAINT `RATING_ibfk_2` FOREIGN KEY (`PROD_ID`) REFERENCES `PRODUCT` (`PROD_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RATING`
--

LOCK TABLES `RATING` WRITE;
/*!40000 ALTER TABLE `RATING` DISABLE KEYS */;
INSERT INTO `RATING` VALUES (976001,4.0,'The Chocolate Croissant was deliciously flaky.','2023-05-12','13:45:00',421002,2154018),(976002,5.0,'The Cinnamon Roll had the perfect amount of cinnamon flavor.','2023-06-28','09:30:00',421012,2154007),(976003,4.0,'Sourdough Loaf was crusty on the outside and soft on the inside.','2023-08-15','11:15:00',421008,2154023),(976004,5.0,'Blueberry Muffin was moist and packed with berries.','2023-09-05','16:00:00',421014,2154005),(976005,3.0,'Vanilla Cupcake was a bit dry but had good frosting.','2023-10-22','08:45:00',421007,2154001),(976006,5.0,'Apple Pie had a buttery crust and flavorful filling.','2023-11-11','14:20:00',421009,2154012),(976007,4.0,'Bagel was fresh and chewy, perfect with cream cheese.','2023-12-03','19:00:00',421002,2154015),(976008,5.0,'Cherry Danish had a delicious balance of sweet and tart.','2024-01-18','10:30:00',421035,2154018),(976009,4.0,'Rye Bread had a robust flavor and dense texture.','2024-02-07','12:15:00',421013,2154004),(976010,5.0,'Almond Croissant was heavenly with its almond filling.','2024-03-14','17:45:00',421020,2154025),(976011,3.0,'Chocolate Cake was too sweet for my taste.','2023-04-02','15:00:00',421039,2154007),(976012,4.0,'Pecan Sticky Bun was sticky and delicious.','2023-03-10','11:45:00',421010,2154005),(976013,5.0,'Whole Wheat Bread had a hearty flavor and texture.','2023-02-19','09:00:00',421014,2154019),(976014,3.0,'Lemon Poppy Seed Muffin was a bit dry.','2023-01-25','14:30:00',421037,2154018),(976015,5.0,'Red Velvet Cupcake was moist and velvety.','2022-12-08','16:20:00',421021,2154020),(976016,4.0,'Fruit Tart had a great combination of fruits.','2022-11-16','18:10:00',421024,2154020),(976017,4.0,'Pretzel was perfectly salted and chewy.','2022-10-30','13:55:00',421042,2154019),(976018,5.0,'Raspberry Scone was crumbly and flavorful.','2022-09-14','10:05:00',421005,2154012),(976019,3.0,'Carrot Cake was too dense for my liking.','2022-08-22','11:30:00',421021,2154006),(976020,5.0,'Danish Pastry was flaky and buttery.','2022-07-06','17:15:00',421043,2154011),(976021,4.0,'Chocolate Chip Cookie was chewy with lots of chips.','2022-06-11','09:40:00',421012,2154024),(976022,5.0,'Blueberry Pie had a deliciously flaky crust.','2022-05-27','12:20:00',421025,2154006),(976023,4.0,'The Blueberry Pie had a perfect balance of sweet and tart.','2022-11-16','18:10:00',421040,2154021),(976024,3.0,'Caramel Brownie was a bit too sweet for my liking.','2022-10-30','13:55:00',421041,2154005),(976025,4.0,'Pumpkin Scone was delicious and moist.','2022-09-14','10:05:00',421002,2154023);
/*!40000 ALTER TABLE `RATING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RECIPE`
--

DROP TABLE IF EXISTS `RECIPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RECIPE` (
  `RECIPE_ID` int unsigned NOT NULL,
  `RECIPE_NAME` varchar(255) NOT NULL,
  `RECIPE_DESC` varchar(255) NOT NULL,
  `DATE_FOUND` date NOT NULL,
  PRIMARY KEY (`RECIPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RECIPE`
--

LOCK TABLES `RECIPE` WRITE;
/*!40000 ALTER TABLE `RECIPE` DISABLE KEYS */;
INSERT INTO `RECIPE` VALUES (154001,'French Baguette','Crispy, golden-brown exterior with a soft inside','2023-05-15'),(154002,'Chocolate Croissant','Flaky pastry filled with rich chocolate','2023-06-02'),(154003,'Cinnamon Roll','Swirled dough with cinnamon sugar and icing','2023-07-10'),(154004,'Sourdough Loaf','Rustic, tangy bread with a chewy crust','2023-08-21'),(154005,'Blueberry Muffin','Moist muffin studded with plump blueberries','2023-09-05'),(154006,'Vanilla Cupcake','Light, fluffy cupcake with vanilla frosting','2023-10-12'),(154007,'Apple Pie','Classic pie with spiced apple filling','2023-11-08'),(154008,'Bagel','Chewy, boiled and baked with various toppings','2023-12-01'),(154009,'Cherry Danish','Sweet pastry filled with cherry compote','2024-01-17'),(154010,'Rye Bread','Dense, flavorful bread made with rye flour','2024-02-22'),(154011,'Almond Croissant','Croissant filled and topped with almonds','2024-03-10'),(154012,'Chocolate Cake','Moist chocolate cake with chocolate frosting','2024-04-05'),(154013,'Pecan Sticky Bun','Sticky, sweet bun with caramelized pecans','2024-05-18'),(154014,'Whole Wheat Bread','Nutty and hearty bread made with whole wheat','2024-06-14'),(154015,'Lemon Poppy Seed Muffin','Zesty muffin with poppy seeds','2024-07-03'),(154016,'Red Velvet Cupcake','Rich red velvet cupcake with cream cheese icing','2024-08-27'),(154017,'Fruit Tart','Tart filled with pastry cream and fresh fruit','2024-09-11'),(154018,'Pretzel','Soft and chewy pretzel with salted crust','2024-10-02'),(154019,'Raspberry Scone','Tender scone studded with sweet raspberries','2024-11-20'),(154020,'Carrot Cake','Moist carrot cake with cream cheese frosting','2024-12-05'),(154021,'Danish Pastry','Flaky, buttery pastry with various fillings','2025-01-08'),(154022,'Chocolate Chip Cookie','Classic cookie loaded with chocolate chips','2025-02-14'),(154023,'Blueberry Pie','Sweet and tart blueberry filling in a pie crust','2025-03-22'),(154024,'Caramel Brownie','Fudgy brownie topped with gooey caramel','2025-04-18'),(154025,'Pumpkin Scone','Spiced scone with pumpkin flavor and icing','2025-05-03');
/*!40000 ALTER TABLE `RECIPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RECIPE_STEP`
--

DROP TABLE IF EXISTS `RECIPE_STEP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RECIPE_STEP` (
  `RECIPE_STEP_ID` int unsigned NOT NULL,
  `RECIPE_ID` int unsigned DEFAULT NULL,
  `STEP_NUM` smallint NOT NULL,
  `STEP_DESCRIPTION` varchar(10000) NOT NULL,
  PRIMARY KEY (`RECIPE_STEP_ID`),
  KEY `RECIPE_ID` (`RECIPE_ID`),
  CONSTRAINT `RECIPE_STEP_ibfk_1` FOREIGN KEY (`RECIPE_ID`) REFERENCES `RECIPE` (`RECIPE_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RECIPE_STEP`
--

LOCK TABLES `RECIPE_STEP` WRITE;
/*!40000 ALTER TABLE `RECIPE_STEP` DISABLE KEYS */;
INSERT INTO `RECIPE_STEP` VALUES (105001,154001,1,'Mix flour, water, yeast, and salt in a large bowl.'),(105002,154001,2,'Knead the dough until smooth and elastic.'),(105003,154001,3,'Let the dough rise until doubled in size.'),(105004,154001,4,'Punch down the risen dough and shape into baguettes.'),(105005,154001,5,'Place shaped baguettes on a floured baking sheet.'),(105006,154001,6,'Make diagonal slashes on the tops of the baguettes.'),(105007,154001,7,'Let the shaped dough rise again until puffy.'),(105008,154001,8,'Bake in a preheated oven until golden brown.'),(105009,154001,9,'Remove from oven and cool on a wire rack.'),(105010,154001,10,'Enjoy fresh or store in an airtight container.'),(105011,154002,1,'Roll out croissant dough into a large rectangle.'),(105012,154002,2,'Spread chocolate filling evenly over the dough.'),(105013,154002,3,'Roll up the dough tightly from the long edge.'),(105014,154002,4,'Cut rolled dough into triangles.'),(105015,154002,5,'Roll each triangle starting from the wide end.'),(105016,154002,6,'Place shaped croissants on a baking sheet.'),(105017,154002,7,'Let the croissants proof until puffy.'),(105018,154002,8,'Brush with egg wash for a shiny finish.'),(105019,154002,9,'Bake until golden brown and flaky.'),(105020,154002,10,'Cool on a wire rack before serving.'),(105021,154003,1,'Roll out cinnamon roll dough into a large rectangle.'),(105022,154003,2,'Spread softened butter over the dough.'),(105023,154003,3,'Sprinkle cinnamon sugar mixture evenly over butter.'),(105024,154003,4,'Roll up dough tightly from the long edge.'),(105025,154003,5,'Cut rolled dough into slices.'),(105026,154003,6,'Place slices into a greased baking pan.'),(105027,154003,7,'Let rolls proof until doubled in size.'),(105028,154003,8,'Bake in a preheated oven until golden brown.'),(105029,154003,9,'Drizzle with cream cheese glaze if desired.'),(105030,154003,10,'Serve warm and enjoy!'),(105031,154004,1,'Feed sourdough starter and let ferment overnight.'),(105032,154004,2,'Mix starter with flour and water to make dough.'),(105033,154004,3,'Knead dough until smooth and elastic.'),(105034,154004,4,'Let dough rise until doubled in size.'),(105035,154004,5,'Shape dough into a loaf and place in proofing basket.'),(105036,154004,6,'Preheat oven and baking stone.'),(105037,154004,7,'Score top of loaf with sharp knife.'),(105038,154004,8,'Transfer loaf onto hot baking stone.'),(105039,154004,9,'Bake until crusty and golden brown.'),(105040,154004,10,'Cool on wire rack before slicing.'),(105041,154005,1,'Preheat oven to 375¡F (190¡C).'),(105042,154005,2,'In a bowl, mix together dry ingredients.'),(105043,154005,3,'In another bowl, mix together wet ingredients.'),(105044,154005,4,'Combine wet and dry ingredients until just mixed.'),(105045,154005,5,'Gently fold in blueberries until evenly distributed.'),(105046,154005,6,'Spoon batter into prepared muffin tin.'),(105047,154005,7,'Bake for 20-25 minutes, or until golden brown.'),(105048,154005,8,'Remove from oven and cool in the tin for 5 minutes.'),(105049,154005,9,'Transfer muffins to a wire rack to cool completely.'),(105050,154005,10,'Serve and enjoy warm or at room temperature.'),(105051,154006,1,'Preheat oven to 350¡F (175¡C).'),(105052,154006,2,'Line cupcake tin with paper liners.'),(105053,154006,3,'In a bowl, cream together butter and sugar.'),(105054,154006,4,'Add eggs one at a time, beating well after each.'),(105055,154006,5,'Stir in vanilla extract.'),(105056,154006,6,'Combine flour, baking powder, and salt in a bowl.'),(105057,154006,7,'Gradually add dry ingredients to wet ingredients.'),(105058,154006,8,'Fill cupcake liners 2/3 full with batter.'),(105059,154006,9,'Bake for 18-20 minutes, or until a toothpick inserted into the center comes out clean.'),(105060,154006,10,'Allow cupcakes to cool completely before frosting.'),(105061,154007,1,'Preheat oven to 425¡F (220¡C).'),(105062,154007,2,'Peel, core, and thinly slice apples.'),(105063,154007,3,'In a large bowl, toss apples with lemon juice, sugar, and spices.'),(105064,154007,4,'Roll out bottom pie crust and place in pie dish.'),(105065,154007,5,'Pour apple filling into prepared crust.'),(105066,154007,6,'Dot with butter and cover with top crust.'),(105067,154007,7,'Crimp edges to seal and cut slits in top crust.'),(105068,154007,8,'Brush top crust with egg wash and sprinkle with sugar.'),(105069,154007,9,'Place pie on a baking sheet and bake for 45-55 minutes, or until crust is golden brown.'),(105070,154007,10,'Allow pie to cool before slicing and serving.'),(105071,154008,1,'In a bowl, combine warm water, yeast, and sugar.'),(105072,154008,2,'Let mixture sit until foamy, about 5 minutes.'),(105073,154008,3,'Stir in flour and salt until dough forms.'),(105074,154008,4,'Knead dough on a floured surface until smooth and elastic.'),(105075,154008,5,'Divide dough into equal portions and shape into balls.'),(105076,154008,6,'Poke a hole in the center of each dough ball.'),(105077,154008,7,'Stretch and shape dough into bagels.'),(105078,154008,8,'Let bagels rise for 20-30 minutes.'),(105079,154008,9,'Bring a large pot of water to a boil and add sugar.'),(105080,154008,10,'Boil bagels for 1-2 minutes on each side.'),(105081,154009,1,'Prepare Danish dough by mixing flour, yeast, sugar, and salt.'),(105082,154009,2,'Add butter and milk, then knead until smooth.'),(105083,154009,3,'Let dough rest and rise until doubled in size.'),(105084,154009,4,'Roll out dough and cut into squares.'),(105085,154009,5,'Add cherry pie filling in the center of each square.'),(105086,154009,6,'Fold the corners of the dough over the filling.'),(105087,154009,7,'Let shaped danishes proof until puffy.'),(105088,154009,8,'Brush with egg wash for a shiny finish.'),(105089,154009,9,'Bake until golden brown and flaky.'),(105090,154009,10,'Cool on a wire rack before serving.'),(105091,154010,1,'Mix rye flour, bread flour, yeast, salt, and water.'),(105092,154010,2,'Knead the dough until smooth and elastic.'),(105093,154010,3,'Let dough rise until doubled in size.'),(105094,154010,4,'Punch down the risen dough and shape into loaves.'),(105095,154010,5,'Place shaped loaves into greased bread pans.'),(105096,154010,6,'Let the loaves proof until puffy.'),(105097,154010,7,'Preheat oven to baking temperature.'),(105098,154010,8,'Bake loaves until they sound hollow when tapped.'),(105099,154010,9,'Remove from oven and cool on wire racks.'),(105100,154010,10,'Slice and enjoy fresh or toasted.'),(105101,154011,1,'Roll out croissant dough into a large rectangle.'),(105102,154011,2,'Spread almond paste evenly over the dough.'),(105103,154011,3,'Roll up the dough tightly from the long edge.'),(105104,154011,4,'Cut rolled dough into triangles.'),(105105,154011,5,'Roll each triangle starting from the wide end.'),(105106,154011,6,'Place shaped croissants on a baking sheet.'),(105107,154011,7,'Let the croissants proof until puffy.'),(105108,154011,8,'Brush with egg wash for a shiny finish.'),(105109,154011,9,'Bake until golden brown and flaky.'),(105110,154011,10,'Cool on a wire rack before serving.'),(105111,154012,1,'Preheat oven to the required temperature.'),(105112,154012,2,'Grease and line cake pans with parchment paper.'),(105113,154012,3,'Mix flour, cocoa powder, baking powder, and salt.'),(105114,154012,4,'In a separate bowl, cream butter and sugar until light and fluffy.'),(105115,154012,5,'Add eggs one at a time, beating well after each addition.'),(105116,154012,6,'Gradually add dry ingredients to wet ingredients, alternating with milk.'),(105117,154012,7,'Pour batter into prepared pans and smooth the top.'),(105118,154012,8,'Bake in preheated oven until a toothpick inserted into the center comes out clean.'),(105119,154012,9,'Cool cakes in pans for 10 minutes before transferring to wire racks to cool completely.'),(105120,154012,10,'Once cooled, frost the cake with chocolate frosting or ganache.'),(105121,154013,1,'Prepare sticky bun dough by mixing flour, yeast, sugar, and salt.'),(105122,154013,2,'Add butter and milk, then knead until smooth.'),(105123,154013,3,'Let dough rest and rise until doubled in size.'),(105124,154013,4,'Roll out dough into a rectangle shape.'),(105125,154013,5,'Spread a mixture of brown sugar, butter, and pecans over the dough.'),(105126,154013,6,'Roll up the dough tightly from the long edge.'),(105127,154013,7,'Cut rolled dough into slices.'),(105128,154013,8,'Place sliced buns into a greased baking dish.'),(105129,154013,9,'Let shaped buns proof until puffy.'),(105130,154013,10,'Bake until golden brown and sticky.'),(105131,154014,1,'Combine whole wheat flour, bread flour, yeast, salt, and water.'),(105132,154014,2,'Knead the dough until smooth and elastic.'),(105133,154014,3,'Let dough rise until doubled in size.'),(105134,154014,4,'Punch down the risen dough and shape into loaves.'),(105135,154014,5,'Place shaped loaves into greased bread pans.'),(105136,154014,6,'Let the loaves proof until puffy.'),(105137,154014,7,'Preheat oven to baking temperature.'),(105138,154014,8,'Bake loaves until they sound hollow when tapped.'),(105139,154014,9,'Remove from oven and cool on wire racks.'),(105140,154014,10,'Slice and enjoy fresh or toasted.'),(105141,154015,1,'Preheat oven and prepare muffin tin with liners.'),(105142,154015,2,'Combine flour, baking powder, baking soda, salt, poppy seeds, and lemon zest.'),(105143,154015,3,'In a separate bowl, mix together sugar, eggs, melted butter, and lemon juice.'),(105144,154015,4,'Combine wet and dry ingredients until just combined.'),(105145,154015,5,'Fill muffin cups 2/3 full with batter.'),(105146,154015,6,'Bake in preheated oven until muffins spring back when lightly touched.'),(105147,154015,7,'Cool muffins in the tin for 5 minutes before transferring to a wire rack to cool completely.'),(105148,154015,8,'Optionally, drizzle with lemon glaze.'),(105149,154015,9,'Serve and enjoy!'),(105150,154015,10,'Store leftovers in an airtight container.'),(105151,154016,1,'Preheat oven and prepare cupcake tin with liners.'),(105152,154016,2,'Combine flour, cocoa powder, baking soda, and salt.'),(105153,154016,3,'In a separate bowl, mix together sugar and vegetable oil.'),(105154,154016,4,'Add eggs one at a time, mixing well after each addition.'),(105155,154016,5,'Mix in buttermilk, vinegar, vanilla extract, and red food coloring.'),(105156,154016,6,'Gradually add dry ingredients to wet ingredients, mixing until just combined.'),(105157,154016,7,'Fill cupcake liners 2/3 full with batter.'),(105158,154016,8,'Bake in preheated oven until cupcakes spring back when lightly touched.'),(105159,154016,9,'Cool cupcakes in the tin for 5 minutes before transferring to a wire rack to cool completely.'),(105160,154016,10,'Frost with cream cheese frosting and'),(105161,154017,1,'Prepare tart dough by mixing flour, sugar, and salt.'),(105162,154017,2,'Cut in butter until mixture resembles coarse crumbs.'),(105163,154017,3,'Add egg yolk and vanilla extract, mix until dough comes together.'),(105164,154017,4,'Press dough into tart pans, chill for 30 minutes.'),(105165,154017,5,'Preheat oven to the required temperature.'),(105166,154017,6,'Blind bake tart shells until lightly golden.'),(105167,154017,7,'Prepare pastry cream by heating milk and vanilla extract until simmering.'),(105168,154017,8,'Whisk egg yolks, sugar, and cornstarch until pale and thick.'),(105169,154017,9,'Slowly pour hot milk mixture into egg mixture, whisking constantly.'),(105170,154017,10,'Return mixture to the saucepan and cook until thickened.'),(105171,154018,1,'Dissolve yeast in warm water, let sit until foamy.'),(105172,154018,2,'In a large bowl, mix flour, sugar, and salt.'),(105173,154018,3,'Add yeast mixture and melted butter to the flour mixture.'),(105174,154018,4,'Knead dough until smooth and elastic.'),(105175,154018,5,'Let dough rise until doubled in size.'),(105176,154018,6,'Punch down risen dough and divide into portions.'),(105177,154018,7,'Roll each portion into a rope and shape into pretzels.'),(105178,154018,8,'Dip shaped pretzels in a baking soda bath.'),(105179,154018,9,'Place pretzels on a baking sheet and let rise again.'),(105180,154018,10,'Bake until golden brown and sprinkle with salt.'),(105181,154019,1,'Preheat oven to the required temperature.'),(105182,154019,2,'In a large bowl, mix flour, sugar, baking powder, and salt.'),(105183,154019,3,'Cut in cold butter until mixture resembles coarse crumbs.'),(105184,154019,4,'Stir in fresh raspberries and lemon zest.'),(105185,154019,5,'In a separate bowl, whisk together heavy cream and egg.'),(105186,154019,6,'Gradually add cream mixture to dry ingredients, stirring until dough forms.'),(105187,154019,7,'Turn dough out onto a lightly floured surface and knead briefly.'),(105188,154019,8,'Pat dough into a circle and cut into wedges.'),(105189,154019,9,'Place scones on a baking sheet and brush with cream.'),(105190,154019,10,'Bake until golden brown and let cool on a wire rack.'),(105191,154020,1,'Preheat oven to the required temperature.'),(105192,154020,2,'In a large bowl, mix flour, baking powder, baking soda, salt, and spices.'),(105193,154020,3,'In another bowl, whisk together eggs, sugar, oil, and vanilla extract.'),(105194,154020,4,'Stir in shredded carrots and crushed pineapple.'),(105195,154020,5,'Gradually add dry ingredients to wet ingredients, mixing until combined.'),(105196,154020,6,'Fold in chopped nuts and raisins, if desired.'),(105197,154020,7,'Pour batter into prepared cake pans.'),(105198,154020,8,'Bake until a toothpick inserted into the center comes out clean.'),(105199,154020,9,'Cool cakes in pans for 10 minutes before transferring to wire racks.'),(105200,154020,10,'Once cooled, frost with cream cheese frosting.'),(105201,154021,1,'Prepare the dough by mixing flour, sugar, salt, yeast, milk, and eggs.'),(105202,154021,2,'Knead the dough until smooth and elastic.'),(105203,154021,3,'Roll out the dough into a rectangle.'),(105204,154021,4,'Spread butter over the dough.'),(105205,154021,5,'Fold the dough into thirds, like a letter.'),(105206,154021,6,'Repeat the folding process two more times.'),(105207,154021,7,'Chill the dough for 30 minutes.'),(105208,154021,8,'Roll out the dough again and cut into desired shapes.'),(105209,154021,9,'Let the pastries rise until doubled in size.'),(105210,154021,10,'Bake until golden brown and flaky.'),(105211,154022,1,'Preheat oven to the required temperature.'),(105212,154022,2,'In a large bowl, cream together butter and sugars.'),(105213,154022,3,'Beat in eggs and vanilla extract until well combined.'),(105214,154022,4,'In a separate bowl, whisk together flour, baking soda, and salt.'),(105215,154022,5,'Gradually add dry ingredients to wet ingredients, mixing until combined.'),(105216,154022,6,'Stir in chocolate chips until evenly distributed.'),(105217,154022,7,'Drop dough by rounded spoonfuls onto baking sheets.'),(105218,154022,8,'Bake for the required time until edges are golden brown.'),(105219,154022,9,'Allow cookies to cool on baking sheets for a few minutes before transferring to wire racks.'),(105220,154022,10,'Enjoy warm or store in an airtight container once cooled.'),(105221,154023,1,'Preheat oven to the required temperature.'),(105222,154023,2,'Prepare the pie crust by mixing flour, salt, and butter until crumbly.'),(105223,154023,3,'Gradually add cold water, mixing until dough forms.'),(105224,154023,4,'Divide dough in half and shape into disks.'),(105225,154023,5,'Roll out one disk to fit the bottom of a pie dish.'),(105226,154023,6,'Combine blueberries, sugar, cornstarch, and lemon juice in a bowl.'),(105227,154023,7,'Pour blueberry mixture into prepared pie crust.'),(105228,154023,8,'Roll out second disk and place over filling.'),(105229,154023,9,'Trim and crimp edges of pie crust together.'),(105230,154023,10,'Cut slits in the top crust to vent steam.'),(105231,154024,1,'Preheat oven to the required temperature.'),(105232,154024,2,'In a saucepan, melt butter and chocolate over low heat.'),(105233,154024,3,'Remove from heat and stir in sugar, eggs, and vanilla extract.'),(105234,154024,4,'Mix in flour, cocoa powder, and salt until just combined.'),(105235,154024,5,'Spread half of the batter into a greased baking dish.'),(105236,154024,6,'Drizzle caramel sauce over the batter.'),(105237,154024,7,'Drop spoonfuls of remaining batter over caramel layer.'),(105238,154024,8,'Use a knife to swirl batter and caramel together.'),(105239,154024,9,'Bake for the required time until set.'),(105240,154024,10,'Allow to cool before cutting into squares.'),(105241,154025,1,'Preheat oven to the required temperature.'),(105242,154025,2,'In a large bowl, mix together flour, sugar, baking powder, salt, and spices.'),(105243,154025,3,'Cut in cold butter until mixture resembles coarse crumbs.'),(105244,154025,4,'In a separate bowl, whisk together pumpkin puree, cream, egg, and vanilla extract.'),(105245,154025,5,'Pour wet ingredients into dry ingredients and mix until just combined.'),(105246,154025,6,'Turn dough out onto a lightly floured surface and knead gently.'),(105247,154025,7,'Pat dough into a circle and cut into wedges.'),(105248,154025,8,'Place scones on a baking sheet lined with parchment paper.'),(105249,154025,9,'Brush scones with cream and sprinkle with sugar.'),(105250,154025,10,'Bake for the required time until golden brown.');
/*!40000 ALTER TABLE `RECIPE_STEP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REVIEW`
--

DROP TABLE IF EXISTS `REVIEW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `REVIEW` (
  `REV_CODE` int unsigned NOT NULL,
  `REV_FEEDBACK` varchar(500) NOT NULL,
  `REV_DATE` date NOT NULL,
  `REV_TIME` time NOT NULL,
  `CUST_ID` int unsigned DEFAULT NULL,
  `PROD_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`REV_CODE`),
  KEY `CUST_ID` (`CUST_ID`),
  KEY `PROD_ID` (`PROD_ID`),
  CONSTRAINT `REVIEW_ibfk_1` FOREIGN KEY (`CUST_ID`) REFERENCES `CUSTOMER` (`CUST_ID`) ON UPDATE CASCADE,
  CONSTRAINT `REVIEW_ibfk_2` FOREIGN KEY (`PROD_ID`) REFERENCES `PRODUCT` (`PROD_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REVIEW`
--

LOCK TABLES `REVIEW` WRITE;
/*!40000 ALTER TABLE `REVIEW` DISABLE KEYS */;
INSERT INTO `REVIEW` VALUES (99803,'Excellent service!','2024-01-16','10:30:00',421020,2154013),(99804,'Product exceeded my expectations.','2024-01-10','11:45:30',421023,2154011),(99805,'Prompt delivery.','2024-01-15','14:00:15',421015,2154021),(99806,'Quality could be improved.','2024-01-20','16:15:45',421043,2154007),(99807,'Great value for money.','2024-01-25','09:00:25',421005,2154024),(99808,'Fast and efficient service.','2024-02-01','10:30:50',421035,2154012),(99809,'Product arrived damaged.','2024-02-05','11:45:10',421037,2154010),(99810,'Disappointed with the quality.','2024-02-10','14:00:40',421025,2154022),(99811,'Amazing product!','2024-02-15','16:15:20',421042,2154018),(99812,'Timely delivery.','2024-02-20','09:00:05',421035,2154002),(99813,'Impressed with the customer service.','2024-02-25','10:30:55',421035,2154022),(99814,'Product not as described.','2024-03-01','11:45:35',421041,2154015),(99815,'Easy ordering process.','2024-03-05','14:00:12',421012,2154003),(99816,'Satisfied with the purchase.','2024-03-10','16:15:28',421012,2154008),(99817,'High-quality product.','2024-03-15','09:00:42',421027,2154006),(99818,'Slow delivery.','2024-03-20','10:30:18',421008,2154022),(99819,'Excellent value for money.','2024-03-25','11:45:47',421018,2154023),(99820,'Product not as expected.','2024-03-30','14:00:23',421010,2154001),(99821,'Fantastic customer service.','2024-04-05','16:15:55',421009,2154003),(99822,'Quick and easy transaction.','2024-04-10','09:00:30',421031,2154013),(99823,'Disappointed with the quality.','2024-04-15','10:30:15',421032,2154019),(99824,'Product arrived late.','2024-04-20','11:45:50',421023,2154006),(99825,'Product not as described.','2024-04-25','14:00:05',421002,2154015),(99826,'Happy with my purchase.','2024-05-01','16:15:40',421002,2154016),(99827,'Excellent product quality.','2024-05-05','09:00:20',421002,2154006),(99828,'Fast delivery.','2024-05-10','10:30:10',421007,2154023),(99829,'Product arrived damaged.','2024-05-15','11:45:55',421014,2154005),(99830,'Quality could be improved.','2024-05-20','14:00:45',421018,2154016),(99831,'Very satisfied with the purchase.','2024-05-25','16:15:35',421044,2154018),(99832,'Impressed with the product.','2024-04-10','09:30:00',421021,2154009),(99833,'Fast shipping.','2024-03-25','10:00:00',421009,2154022),(99834,'Product quality is excellent.','2024-05-05','11:00:00',421024,2154010),(99835,'Great customer service.','2024-02-20','12:00:00',421009,2154013),(99836,'Disappointed with delivery.','2024-01-15','13:00:00',421026,2154006),(99837,'Easy ordering process.','2024-03-05','14:30:00',421032,2154017),(99838,'Product arrived on time.','2024-04-20','15:45:00',421015,2154022),(99839,'Excellent value for money.','2024-02-10','16:20:00',421009,2154016),(99840,'Quality could be improved.','2024-05-10','09:45:00',421031,2154014),(99841,'Amazing product!','2024-01-30','10:15:00',421001,2154017),(99842,'Prompt delivery.','2024-03-15','11:30:00',421034,2154009),(99843,'Satisfied with the purchase.','2024-04-05','12:40:00',421017,2154014),(99844,'Product not as described.','2024-02-25','13:20:00',421041,2154006),(99845,'Great value for money.','2024-05-15','14:10:00',421023,2154015),(99846,'Quick and easy transaction.','2024-01-20','15:25:00',421022,2154019),(99847,'High-quality product.','2024-03-10','16:00:00',421018,2154007),(99848,'Product exceeded my expectations.','2024-04-30','09:55:00',421021,2154015),(99849,'Impressed with the customer service.','2024-02-15','10:35:00',421027,2154022),(99850,'Timely delivery.','2024-05-05','11:15:00',421017,2154013),(99851,'Fast and efficient service.','2024-01-25','12:20:00',421011,2154016),(99852,'Product arrived damaged.','2024-03-20','13:50:00',421019,2154017),(99853,'Disappointed with the quality.','2024-04-10','14:45:00',421036,2154018),(99854,'Easy ordering process.','2024-02-05','15:05:00',421035,2154001),(99855,'Product arrived on time.','2024-05-25','16:30:00',421004,2154004),(99856,'Excellent value for money.','2024-01-10','09:40:00',421001,2154004),(99857,'Quality could be improved.','2024-03-30','10:50:00',421005,2154023),(99858,'Amazing product!','2024-02-15','11:00:00',421004,2154021),(99859,'Prompt delivery.','2024-05-10','12:10:00',421017,2154007),(99860,'Satisfied with the purchase.','2024-01-05','13:15:00',421001,2154016);
/*!40000 ALTER TABLE `REVIEW` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ROLE`
--

DROP TABLE IF EXISTS `ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ROLE` (
  `ROLE_ID` int unsigned NOT NULL,
  `ROLE_NAME` varchar(255) NOT NULL,
  `ROLE_DESC` varchar(255) NOT NULL,
  `SALARY_ID` int unsigned DEFAULT NULL,
  `DEPT_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`),
  UNIQUE KEY `SALARY_ID` (`SALARY_ID`),
  KEY `DEPT_ID` (`DEPT_ID`),
  CONSTRAINT `ROLE_ibfk_1` FOREIGN KEY (`SALARY_ID`) REFERENCES `SALARY` (`SALARY_ID`) ON UPDATE CASCADE,
  CONSTRAINT `ROLE_ibfk_2` FOREIGN KEY (`DEPT_ID`) REFERENCES `DEPARTMENT` (`DEPT_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ROLE`
--

LOCK TABLES `ROLE` WRITE;
/*!40000 ALTER TABLE `ROLE` DISABLE KEYS */;
INSERT INTO `ROLE` VALUES (261001,'Sales Associate','Responsible for assisting customers',4390001,252105),(261002,'Baker','Prepares and bakes bakery products',4390002,252103),(261003,'Cashier','Manages transactions at the cash register',4390003,252105),(261004,'Delivery Driver','Delivers bakery products to customers',4390004,252107),(261005,'Marketing Specialist','Plans and executes marketing strategies',4390005,252110),(261006,'Human Resources Coordinator','Manages HR functions',4390006,252104),(261007,'Quality Control Specialist','Ensures product quality',4390007,252104),(261008,'IT Support Specialist','Provides technical support',4390008,252101),(261009,'Maintenance Technician','Maintains bakery facilities and equipment',4390009,252105),(261010,'Procurement Officer','Manages procurement activities',4390010,252110),(261011,'Store Manager','Oversees overall store operations',4390011,252102),(261012,'Pastry Chef','Creates and designs pastry items',4390012,252107),(261013,'Financial Analyst','Analyzes financial data and prepares reports',4390013,252107),(261014,'Marketing Manager','Leads and manages marketing efforts',4390014,252104),(261015,'HR Manager','Manages human resources department',4390015,252109),(261016,'Operations Manager','Oversees overall bakery operations',4390016,252106),(261017,'IT Manager','Manages IT department and projects',4390017,252109),(261018,'Facilities Manager','Manages facilities and maintenance',4390018,252110),(261019,'Procurement Manager','Manages procurement department',4390019,252102),(261020,'Executive Chef','Head chef responsible for all culinary operations',4390020,252110),(261021,'Event Coordinator','Plans and coordinates bakery events',4390021,252105),(261022,'Social Media Coordinator','Manages social media presence',4390022,252102),(261023,'Accountant','Manages financial records and accounts',4390023,252104),(261024,'Store Supervisor','Supervises daily store activities',4390024,252101),(261025,'Shift Leader','Leads and supervises shift operations',4390025,252103),(261026,'Customer Service Manager','Manages customer service department',4390026,252105),(261027,'Sanitation Supervisor','Supervises bakery cleanliness',4390027,252105),(261028,'Marketing Coordinator','Assists in marketing activities',4390028,252102),(261029,'Baker Assistant','Assists bakers in daily tasks',4390029,252110),(261030,'Inventory Specialist','Manages bakery inventory',4390030,252104);
/*!40000 ALTER TABLE `ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SALARY`
--

DROP TABLE IF EXISTS `SALARY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SALARY` (
  `SALARY_ID` int unsigned NOT NULL,
  `SALARY_AMT` decimal(8,2) NOT NULL,
  `EXPENSE_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`SALARY_ID`),
  KEY `EXPENSE_ID` (`EXPENSE_ID`),
  CONSTRAINT `SALARY_ibfk_1` FOREIGN KEY (`EXPENSE_ID`) REFERENCES `EXPENSE` (`EXPENSE_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SALARY`
--

LOCK TABLES `SALARY` WRITE;
/*!40000 ALTER TABLE `SALARY` DISABLE KEYS */;
INSERT INTO `SALARY` VALUES (4390001,58000.00,3432584),(4390002,42000.00,3432585),(4390003,62000.00,3432586),(4390004,51000.00,3432587),(4390005,56000.00,3432588),(4390006,48000.00,3432589),(4390007,37000.00,3432590),(4390008,60000.00,3432591),(4390009,41000.00,3432592),(4390010,52000.00,3432593),(4390011,45000.00,3432594),(4390012,57000.00,3432595),(4390013,50000.00,3432596),(4390014,34000.00,3432597),(4390015,61000.00,3432598),(4390016,64000.00,3432599),(4390017,62000.00,3432600),(4390018,46000.00,3432601),(4390019,63000.00,3432602),(4390020,55000.00,3432603),(4390021,42000.00,3432604),(4390022,65000.00,3432605),(4390023,49000.00,3432606),(4390024,59000.00,3432607),(4390025,66000.00,3432608),(4390026,53000.00,3432609),(4390027,60000.00,3432610),(4390028,40000.00,3432611),(4390029,56000.00,3432612),(4390030,64000.00,3432613);
/*!40000 ALTER TABLE `SALARY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SALES_REPORT`
--

DROP TABLE IF EXISTS `SALES_REPORT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SALES_REPORT` (
  `REPORT_ID` int unsigned NOT NULL,
  `PAY_ID` int unsigned DEFAULT NULL,
  `DATE_GENERATED` date NOT NULL,
  PRIMARY KEY (`REPORT_ID`),
  UNIQUE KEY `PAY_ID` (`PAY_ID`),
  UNIQUE KEY `PAY_ID_2` (`PAY_ID`),
  CONSTRAINT `SALES_REPORT_ibfk_1` FOREIGN KEY (`PAY_ID`) REFERENCES `PAYMENT` (`PAY_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SALES_REPORT`
--

LOCK TABLES `SALES_REPORT` WRITE;
/*!40000 ALTER TABLE `SALES_REPORT` DISABLE KEYS */;
INSERT INTO `SALES_REPORT` VALUES (44240001,315001,'2022-08-02'),(44240002,315002,'2022-06-15'),(44240003,315003,'2023-09-15'),(44240004,315004,'2024-01-17'),(44240005,315005,'2024-12-30'),(44240006,315006,'2024-09-24'),(44240007,315007,'2022-11-29'),(44240008,315008,'2024-06-06'),(44240009,315009,'2022-03-22'),(44240010,315010,'2022-08-02'),(44240011,315011,'2022-12-25'),(44240012,315012,'2024-10-22'),(44240013,315013,'2022-03-30'),(44240014,315014,'2022-07-13'),(44240015,315015,'2024-09-13'),(44240016,315016,'2024-10-03'),(44240017,315017,'2024-08-21'),(44240018,315018,'2023-10-30'),(44240019,315019,'2023-06-06'),(44240020,315020,'2024-09-28'),(44240021,315021,'2022-02-08'),(44240022,315022,'2024-03-21'),(44240023,315023,'2022-06-13'),(44240024,315024,'2022-03-01'),(44240025,315025,'2023-12-12'),(44240026,315026,'2024-06-02'),(44240027,315027,'2024-10-10'),(44240028,315028,'2022-06-02'),(44240029,315029,'2023-08-10'),(44240030,315030,'2023-12-13'),(44240031,315031,'2022-04-20'),(44240032,315032,'2022-03-16'),(44240033,315033,'2024-04-18'),(44240034,315034,'2022-04-24'),(44240035,315035,'2022-06-10'),(44240036,315036,'2023-02-06'),(44240037,315037,'2023-12-09'),(44240038,315038,'2023-02-03'),(44240039,315039,'2023-06-27'),(44240040,315040,'2024-05-11'),(44240041,315041,'2024-10-08'),(44240042,315042,'2022-07-08'),(44240043,315043,'2024-09-19'),(44240044,315044,'2024-05-20'),(44240045,315045,'2023-03-25'),(44240046,315046,'2023-03-12'),(44240047,315047,'2024-06-08'),(44240048,315048,'2024-05-02'),(44240049,315049,'2024-01-28'),(44240050,315050,'2022-06-20'),(44240051,315051,'2024-05-17'),(44240052,315052,'2024-07-16'),(44240053,315053,'2023-02-16'),(44240054,315054,'2024-05-08'),(44240055,315055,'2024-07-01'),(44240056,315056,'2022-10-20'),(44240057,315057,'2023-11-15'),(44240058,315058,'2023-11-14'),(44240059,315059,'2024-12-22'),(44240060,315060,'2024-08-14'),(44240061,315061,'2024-07-22'),(44240062,315062,'2022-05-20'),(44240063,315063,'2023-07-07'),(44240064,315064,'2022-09-04'),(44240065,315065,'2022-03-20'),(44240066,315066,'2023-09-19'),(44240067,315067,'2022-04-24'),(44240068,315068,'2023-03-04'),(44240069,315069,'2022-02-15'),(44240070,315070,'2023-02-24'),(44240071,315071,'2023-02-18'),(44240072,315072,'2022-04-27'),(44240073,315073,'2024-12-19'),(44240074,315074,'2022-11-08'),(44240075,315075,'2023-07-24'),(44240076,315076,'2022-07-19'),(44240077,315077,'2023-01-24'),(44240078,315078,'2023-11-07'),(44240079,315079,'2023-07-04'),(44240080,315080,'2024-04-16'),(44240081,315081,'2024-06-06'),(44240082,315082,'2024-06-07'),(44240083,315083,'2023-11-24'),(44240084,315084,'2023-04-18'),(44240085,315085,'2024-03-18'),(44240086,315086,'2023-10-02'),(44240087,315087,'2022-08-06'),(44240088,315088,'2022-06-28'),(44240089,315089,'2022-08-27'),(44240090,315090,'2022-05-12'),(44240091,315091,'2023-07-23'),(44240092,315092,'2024-08-25'),(44240093,315093,'2024-03-09'),(44240094,315094,'2023-03-12'),(44240095,315095,'2024-05-16'),(44240096,315096,'2024-03-13'),(44240097,315097,'2022-04-19'),(44240098,315098,'2024-11-30'),(44240099,315099,'2023-01-16'),(44240100,315100,'2024-10-17'),(44240101,315101,'2022-05-16'),(44240102,315102,'2023-08-26'),(44240103,315103,'2022-09-10'),(44240104,315104,'2023-05-23'),(44240105,315105,'2022-12-11'),(44240106,315106,'2022-03-31'),(44240107,315107,'2023-10-16'),(44240108,315108,'2022-10-25'),(44240109,315109,'2023-10-15'),(44240110,315110,'2024-05-09'),(44240111,315111,'2022-01-04'),(44240112,315112,'2022-10-09'),(44240113,315113,'2022-04-04'),(44240114,315114,'2023-01-09'),(44240115,315115,'2024-02-23'),(44240116,315116,'2023-05-29'),(44240117,315117,'2024-07-14'),(44240118,315118,'2023-01-06'),(44240119,315119,'2023-05-17'),(44240120,315120,'2022-09-25'),(44240121,315121,'2022-07-12'),(44240122,315122,'2024-06-05'),(44240123,315123,'2023-03-12'),(44240124,315124,'2022-02-06'),(44240125,315125,'2024-02-25'),(44240126,315126,'2024-08-19'),(44240127,315127,'2022-04-07'),(44240128,315128,'2024-04-29'),(44240129,315129,'2024-07-11');
/*!40000 ALTER TABLE `SALES_REPORT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SHIFT`
--

DROP TABLE IF EXISTS `SHIFT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SHIFT` (
  `SHIFT_ID` int unsigned NOT NULL,
  `SHIFT_NAME` varchar(255) DEFAULT NULL,
  `START_TIME` time NOT NULL,
  `BREAK_TIME_START` time NOT NULL,
  `BREAK_TIME_END` time NOT NULL,
  `END_TIME` time NOT NULL,
  `DURATION` smallint NOT NULL,
  PRIMARY KEY (`SHIFT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SHIFT`
--

LOCK TABLES `SHIFT` WRITE;
/*!40000 ALTER TABLE `SHIFT` DISABLE KEYS */;
INSERT INTO `SHIFT` VALUES (1033001,'Morning Shift','07:00:00','10:00:00','10:30:00','14:00:00',7),(1033002,'Afternoon Shift','13:00:00','16:00:00','16:30:00','20:00:00',7),(1033003,'Evening Shift','17:00:00','20:00:00','20:30:00','23:59:00',6),(1033004,'Night Shift','22:00:00','01:00:00','01:30:00','06:00:00',8),(1033005,'Early Morning','04:00:00','07:00:00','07:30:00','10:00:00',6),(1033006,'Late Morning','09:00:00','12:00:00','12:30:00','15:00:00',6),(1033007,'Day Shift','08:00:00','12:00:00','12:30:00','16:00:00',8),(1033008,'Evening Shift','16:00:00','19:00:00','19:30:00','23:00:00',7),(1033009,'Weekend Shift','10:00:00','13:00:00','13:30:00','17:00:00',7),(1033010,'Holiday Shift','11:00:00','14:00:00','14:30:00','18:00:00',7),(1033011,'Late Night','23:00:00','02:00:00','02:30:00','07:00:00',8),(1033012,'Early Evening','15:00:00','18:00:00','18:30:00','22:00:00',7),(1033013,'Midday Shift','11:00:00','14:00:00','14:30:00','18:00:00',7),(1033014,'Twilight Shift','16:00:00','19:00:00','19:30:00','23:00:00',7),(1033015,'Daybreak Shift','05:00:00','08:00:00','08:30:00','11:00:00',6),(1033016,'Sunrise Shift','06:00:00','09:00:00','09:30:00','12:00:00',6),(1033017,'Sunset Shift','18:00:00','21:00:00','21:30:00','00:00:00',6),(1033018,'Moonlight Shift','20:00:00','23:00:00','23:30:00','03:00:00',7),(1033019,'Dawn Shift','03:00:00','06:00:00','06:30:00','09:00:00',6),(1033020,'Dusk Shift','19:00:00','22:00:00','22:30:00','02:00:00',7),(1033021,'Mid Shift','12:00:00','15:00:00','15:30:00','19:00:00',7),(1033022,'Late Shift','14:00:00','17:00:00','17:30:00','21:00:00',7),(1033023,'Graveyard Shift','22:00:00','01:00:00','01:30:00','05:00:00',7),(1033024,'Weekend Night','21:00:00','00:00:00','00:30:00','04:00:00',7),(1033025,'Overnight Shift','20:00:00','23:00:00','23:30:00','04:00:00',8);
/*!40000 ALTER TABLE `SHIFT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SUPPLIER`
--

DROP TABLE IF EXISTS `SUPPLIER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SUPPLIER` (
  `SUPP_ID` int unsigned NOT NULL,
  `SUPP_COMPANY` varchar(100) NOT NULL,
  `SUPP_ADDRESS` varchar(255) NOT NULL,
  `SUPP_PHONE_NUM` varchar(255) NOT NULL,
  `SUPP_EMAIL` varchar(255) NOT NULL,
  `ZIP_CODE` int unsigned DEFAULT NULL,
  PRIMARY KEY (`SUPP_ID`),
  KEY `ZIP_CODE` (`ZIP_CODE`),
  CONSTRAINT `SUPPLIER_ibfk_1` FOREIGN KEY (`ZIP_CODE`) REFERENCES `ZIP` (`ZIP_CODE`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SUPPLIER`
--

LOCK TABLES `SUPPLIER` WRITE;
/*!40000 ALTER TABLE `SUPPLIER` DISABLE KEYS */;
INSERT INTO `SUPPLIER` VALUES (107001,'Sweet Delights Suppliers','123 Baker Street','(555) 555-1001','info@flourco.com',30342),(107002,'Flour Power Distributors','456 Sweet Lane','(555) 555-2002','sales@sugarsupply.com',90210),(107003,'Heavenly Harvest Co.','789 Rise Avenue','(555) 555-3003','yeast@yeastmasters.com',33101),(107004,'Dough Master Suppliers','101 Creamery Road','(555) 555-4004','dairydelights@gmail.com',75201),(107005,'Baker\'s Best Supply Co.','202 Flavor Street','(555) 555-5005','contact@vanillavibes.com',22109),(107006,'Fresh Bakes Distributors','303 Nut Lane','(555) 555-6006','info@nutrynecessities.com',20024),(107007,'Gourmet Goods Suppliers','404 Orchard Avenue','(555) 555-7007','harvest@fruitful.com',77074),(107008,'Pastry Paradise Distributors','505 Cocoa Street','(555) 555-8008','orders@chocolatecharms.com',33109),(107009,'Artisan Ingredients Co.','606 Aroma Road','(555) 555-9009','info@spicesensation.com',90027),(107010,'Oven Fresh Suppliers','707 Wrap Avenue','(555) 555-1010','packagingparadise@gmail.com',60606),(107011,'Golden Grain Distributors','808 Bakery Blvd','(555) 555-1111','equipmentessentials@eq.com',60601),(107012,'Wholesome Treats Co.','909 Espresso Lane','(555) 555-1212','contact@coffeecrafters.com',60611),(107013,'Yeast & More Suppliers','101 Garden Grove','(555) 555-1313','info@freshproduce.com',60606),(107014,'Crust & Crumb Distributors','111 Frosting Street','(555) 555-1414','sales@pastryperfection.com',98101),(107015,'Quality Ingredients Co.','121 Icing Lane','(555) 555-1515','dreams@decorating.com',20001),(107016,'Baker\'s Choice Suppliers','131 Allergy Avenue','(555) 555-1616','nutfree@necessities.com',60657),(107017,'Sugary Delights Distributors','141 Green Street','(555) 555-1717','info@ecopackaging.com',30303),(107018,'Elite Baking Supply Co.','151 Orchard Road','(555) 555-1818','contact@freshflavorfarms.com',33109),(107019,'Heavenly Breads Suppliers','161 Healthy Harvest','(555) 555-1919','wheat@wholesome.com',37201),(107020,'Sweet Savor Distributors','171 Artisan Avenue','(555) 555-2020','artisan@doughmakers.com',33101),(107021,'Freshly Baked Co.','181 Jam Junction','(555) 555-2121','spreads@sweets.com',60611),(107022,'Crispy Crust Suppliers','191 Spice Square','(555) 555-2222','info@specialtyspices.com',37201),(107023,'Flourish Bakery Distributors','202 Health Haven','(555) 555-2323','organic@options.com',10128),(107024,'Rise & Shine Co.','212 Savory Street','(555) 555-2424','selections@savory.com',62701),(107025,'Bountiful Bakes Suppliers','222 Sweet Delight','(555) 555-2525','orders@dessertdeliveries.com',90069),(207001,'Oven Master Co.','123 Baker Street','(555) 555-3001','info@ovenmaster.com',20001),(207002,'Elite Bakery Co.','456 Sweet Lane','(555) 555-4002','sales@elitebakeryequipment.com',33109),(207003,'Bakery Tech Co.','789 Rise Avenue','(555) 555-5003','techsupport@bakerytech.com',90210),(207004,'Pastry Pro Co.','101 Creamery Road','(555) 555-6004','info@pastrypro.com',30301),(207005,'Perfect Bake Co.','202 Flavor Street','(555) 555-7005','orders@perfectbake.com',90210),(207006,'Baker\'s Haven Co.','303 Nut Lane','(555) 555-8006','contact@bakershaven.com',98104),(207007,'Smart Bakery Co.','404 Orchard Avenue','(555) 555-9007','info@smartbakerysupplies.com',33131),(207008,'Pro Oven Co.','707 Wrap Avenue','(555) 555-3010','info@prooven.com',63101),(207009,'Bake Essentials Co.','808 Bakery Blvd','(555) 555-4011','orders@bakeessentials.com',98101),(207010,'Baker\'s Corner Co.','909 Espresso Lane','(555) 555-5012','info@bakerscorner.com',60601),(207011,'Advanced Baking Co.','101 Garden Grove','(555) 555-6013','info@advancedbakingsolutions.com',60611),(207012,'Cake Crafters Co.','111 Frosting Street','(555) 555-7014','orders@cakecrafters.com',60601),(207013,'Bakery Innovations Co.','121 Icing Lane','(555) 555-8015','contact@bakeryinnovations.com',30301),(207014,'Precision Baking Co.','131 Allergy Avenue','(555) 555-9016','info@precisionbaking.com',62701),(207015,'Sweet Success Co.','141 Green Street','(555) 555-1017','orders@sweetsuccess.com',33109),(207016,'Bake Shoppe Co.','151 Orchard Road','(555) 555-2018','contact@bakeshoppe.com',98104),(207017,'Artisan Oven Co.','161 Healthy Harvest','(555) 555-3019','info@artisanoven.com',85001),(207018,'Professional Bakery Co.','171 Artisan Avenue','(555) 555-4020','sales@pro-bakerysolutions.com',80202),(207019,'Bakery Direct Co.','181 Jam Junction','(555) 555-5021','info@bakerydirect.com',30305),(207020,'Oven Genius Co.','202 Health Haven','(555) 555-7023','info@ovengenius.com',98104),(207021,'Bakery Equipment Co.','212 Savory Street','(555) 555-8024','experts@bakeryequipment.com',90027),(207022,'Baker\'s Dream Co.','222 Sweet Delight','(555) 555-9025','orders@bakersdream.com',90210);
/*!40000 ALTER TABLE `SUPPLIER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TAX`
--

DROP TABLE IF EXISTS `TAX`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TAX` (
  `TAX_ID` int unsigned NOT NULL,
  `TAX_RATE` decimal(5,4) NOT NULL,
  `TAX_NAME` varchar(25) NOT NULL,
  PRIMARY KEY (`TAX_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TAX`
--

LOCK TABLES `TAX` WRITE;
/*!40000 ALTER TABLE `TAX` DISABLE KEYS */;
INSERT INTO `TAX` VALUES (148973205,0.0750,'Municipal Tax'),(152798460,0.0725,'Special Tax'),(184963270,0.0740,'Stamp Duty'),(203957481,0.0670,'Sin Tax'),(267580314,0.0830,'Road Tax'),(307946215,0.0550,'Import Tax'),(315289047,0.0870,'Environmental Tax'),(362540971,0.0900,'County Tax'),(416208573,0.0840,'Tariff'),(468259701,0.0650,'Excise Tax'),(490216753,0.0800,'Local Tax'),(518206794,0.0880,'Carbon Tax'),(569812473,0.0700,'VAT'),(570126834,0.0580,'Vehicle Tax'),(624078931,0.0630,'Property Tax'),(632540197,0.0825,'State Tax'),(689407513,0.0780,'Luxury Tax'),(735914602,0.0790,'Severance Tax'),(740185236,0.0730,'Use Tax'),(781306542,0.0600,'Goods and Services Tax'),(874905312,0.0500,'Sales Tax'),(890756123,0.0850,'City Tax'),(897430126,0.0775,'Tourist Tax'),(925071463,0.0680,'Surcharge Tax'),(982314760,0.0760,'Income Tax');
/*!40000 ALTER TABLE `TAX` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TRAINING`
--

DROP TABLE IF EXISTS `TRAINING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TRAINING` (
  `TRAIN_CODE` int unsigned NOT NULL,
  `TRAIN_NAME` varchar(255) NOT NULL,
  `TRAIN_DESC` mediumtext NOT NULL,
  `DURATION` decimal(5,2) NOT NULL,
  PRIMARY KEY (`TRAIN_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRAINING`
--

LOCK TABLES `TRAINING` WRITE;
/*!40000 ALTER TABLE `TRAINING` DISABLE KEYS */;
INSERT INTO `TRAINING` VALUES (301001,'Food Safety Certification','Gain knowledge and skills in food safety practices to ensure the safe handling, preparation, and storage of food products.',2.00),(301002,'Baking Techniques','Learn essential baking techniques including mixing, shaping, proofing, and baking to create a variety of delicious baked goods.',4.00),(301003,'Sanitation Training','Understand the importance of maintaining cleanliness and hygiene in food preparation areas to prevent contamination and ensure food safety.',3.00),(301004,'Customer Service Skills','Develop effective communication and problem-solving skills to provide excellent customer service and enhance customer satisfaction.',2.50),(301005,'Equipment Maintenance','Learn proper maintenance and care techniques for bakery equipment to ensure optimal performance and longevity.',5.00),(301006,'First Aid Certification','Acquire essential first aid skills and knowledge to respond promptly and effectively to medical emergencies in the workplace.',2.00),(301007,'Pastry Chef Certification','Master advanced pastry-making techniques and skills required to excel as a professional pastry chef, creating intricate and delicious desserts.',3.50),(301008,'Inventory Management','Gain expertise in inventory control and management practices to optimize stock levels, minimize waste, and ensure efficient ingredient management.',4.00),(301009,'Barista Certification','Learn the art of coffee brewing, espresso preparation, and milk frothing to create delicious and visually appealing coffee beverages.',3.00),(301010,'HACCP Training','Understand the Hazard Analysis and Critical Control Points (HACCP) principles to identify and mitigate food safety hazards in food production processes.',2.00),(301011,'Team Leadership','Develop leadership skills to effectively manage and motivate teams, fostering collaboration and achieving common goals.',3.50),(301012,'Sustainability Practices','Explore sustainable practices and initiatives aimed at reducing environmental impact and promoting eco-friendly operations.',2.00),(301013,'Cake Decorating Mastery','Master the art of cake decorating, including frosting techniques, piping, and fondant work, to create stunning and visually appealing cakes.',4.00),(301014,'Digital Marketing for Bakeries','Learn digital marketing strategies and techniques tailored specifically for bakeries to enhance online visibility and attract customers.',3.00),(301015,'Workplace Safety','Understand workplace safety protocols and procedures to prevent accidents and injuries, ensuring a safe working environment for all employees.',2.50),(301016,'Gluten-Free Baking','Gain knowledge and skills in gluten-free baking techniques and ingredient substitutions to create delicious gluten-free baked goods.',3.00),(301017,'Financial Literacy','Develop financial literacy skills including budgeting, financial planning, and profit analysis to effectively manage bakery finances.',4.00),(301018,'Certified Bread Baker','Acquire specialized skills and knowledge required to become a certified bread baker, mastering the art of bread making.',2.50),(301019,'Time Management Skills','Learn effective time management techniques to prioritize tasks, increase productivity, and achieve work-life balance.',3.00),(301020,'Menu Planning Expertise','Develop expertise in menu planning, including recipe selection, pricing, and seasonal menu development, to meet customer preferences and maximize sales.',4.00),(301021,'Event Catering Specialist','Become proficient in event catering, including menu design, food preparation, and service, to cater to special events and gatherings.',4.50),(301022,'Social Media Marketing','Learn social media marketing strategies and techniques to promote bakery products and engage with customers on social media platforms.',6.00),(301023,'Professionalism in the Workplace','Understand the importance of professionalism in the workplace, including communication, ethics, and workplace etiquette.',3.50),(301024,'Sustainable Sourcing','Explore sustainable sourcing practices to procure ingredients responsibly, supporting ethical suppliers and reducing environmental impact.',5.00),(301025,'Artisan Bread Crafting','Master the craft of artisan bread baking, including traditional methods and techniques to create high-quality artisanal bread products.',7.50),(301026,'Customer Feedback Management','Learn strategies for managing customer feedback effectively, gathering insights, and implementing improvements to enhance customer satisfaction.',4.00),(301027,'Safe Food Handling','Understand safe food handling practices to prevent foodborne illnesses and ensure the safety and quality of bakery products.',6.50),(301028,'Entrepreneurship in Baking','Develop entrepreneurial skills and knowledge required to start and grow a successful bakery business, including business planning and marketing.',5.00),(301029,'Advanced Pastry Techniques','Acquire advanced pastry-making techniques and skills to create intricate and sophisticated pastry creations.',3.50),(301030,'Workplace Diversity Training','Explore the importance of diversity and inclusion in the workplace, promoting a culture of respect, acceptance, and equality.',7.00);
/*!40000 ALTER TABLE `TRAINING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WASTE_LOG`
--

DROP TABLE IF EXISTS `WASTE_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `WASTE_LOG` (
  `INGRED_ID` int unsigned NOT NULL,
  `INGRED_DATE` date NOT NULL,
  `WASTE_QTY` smallint DEFAULT NULL,
  `WASTE_MEASURE` varchar(25) DEFAULT NULL,
  `REASON` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`INGRED_ID`,`INGRED_DATE`),
  CONSTRAINT `WASTE_LOG_ibfk_1` FOREIGN KEY (`INGRED_ID`) REFERENCES `INGREDIENT` (`INGRED_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WASTE_LOG`
--

LOCK TABLES `WASTE_LOG` WRITE;
/*!40000 ALTER TABLE `WASTE_LOG` DISABLE KEYS */;
INSERT INTO `WASTE_LOG` VALUES (854001,'2022-01-22',15,'unit','Spoiled'),(854001,'2022-06-12',7,'unit','Quality issue'),(854001,'2024-01-30',7,'unit','Damaged'),(854003,'2023-08-30',11,'unit','Overproduction'),(854004,'2024-03-19',6,'unit','Damaged'),(854004,'2024-05-01',6,'unit','Quality issue'),(854005,'2022-11-14',4,'unit','Expired'),(854005,'2023-11-02',14,'unit','Quality issue'),(854005,'2023-12-06',5,'unit','Damaged'),(854006,'2023-05-06',4,'unit','Overproduction'),(854006,'2024-02-08',7,'unit','Overproduction'),(854010,'2022-12-17',7,'unit','Spoiled'),(854011,'2024-07-12',5,'unit','Damaged'),(854013,'2022-04-08',4,'unit','Quality issue'),(854014,'2023-10-31',10,'unit','Spoiled'),(854015,'2024-04-09',10,'unit','Damaged'),(854016,'2023-02-03',4,'unit','Spoiled'),(854018,'2022-10-25',8,'unit','Expired'),(854018,'2023-06-03',8,'unit','Spoiled'),(854020,'2024-09-22',12,'unit','Overproduction'),(854021,'2024-06-18',4,'unit','Expired'),(854022,'2023-04-14',14,'unit','Spoiled'),(854022,'2024-01-25',11,'unit','Overproduction'),(854023,'2022-08-21',9,'unit','Quality issue'),(854023,'2023-07-28',6,'unit','Quality issue'),(854027,'2024-07-17',4,'unit','Overproduction'),(854028,'2022-05-20',6,'unit','Quality issue'),(854028,'2022-09-15',13,'unit','Expired'),(854028,'2023-09-05',4,'unit','Spoiled'),(854029,'2022-03-29',15,'unit','Overproduction');
/*!40000 ALTER TABLE `WASTE_LOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ZIP`
--

DROP TABLE IF EXISTS `ZIP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ZIP` (
  `ZIP_CODE` int unsigned NOT NULL,
  `CITY` varchar(50) NOT NULL,
  `STATE` char(2) NOT NULL,
  PRIMARY KEY (`ZIP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ZIP`
--

LOCK TABLES `ZIP` WRITE;
/*!40000 ALTER TABLE `ZIP` DISABLE KEYS */;
INSERT INTO `ZIP` VALUES (10001,'New York','NY'),(10036,'New York','NY'),(10128,'New York','NY'),(19101,'Philadelphia','PA'),(20001,'Washington','DC'),(20024,'Washington','DC'),(22109,'Boston','MA'),(28202,'Charlotte','NC'),(30301,'Atlanta','GA'),(30303,'Denver','CO'),(30305,'Atlanta ','GA'),(30339,'Smyrna','GA'),(30342,'Atlanta ','GA'),(33101,'Miami','FL'),(33109,'Miami Beach','FL'),(33131,'Miami','FL'),(33139,'Miami Beach','FL'),(37201,'Nashville','TN'),(44101,'Cleveland','OH'),(48201,'Detroit','MI'),(55401,'Minneapolis','MN'),(60601,'Chicago','IL'),(60606,'Chicago','IL'),(60611,'Evanston','IL'),(60657,'Chicago ','IL'),(62701,'Houston','TX'),(63101,'St. Louis','MO'),(75201,'Dallas','TX'),(77074,'Houston','TX'),(78701,'Austin ','TX'),(80202,'Denver','CO'),(85001,'Phoenix','AZ'),(90001,'Los Angeles','CA'),(90027,'Los Angeles','CA'),(90069,'West Hollywood','CA'),(90210,'Beverly Hills','CA'),(90291,'Venice ','CA'),(92101,'San Diego','CA'),(97201,'Portland','OR'),(98101,'Seattle','WA'),(98104,'Seattle ','WA');
/*!40000 ALTER TABLE `ZIP` ENABLE KEYS */;
UNLOCK TABLES;
-- SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-11 11:26:56
