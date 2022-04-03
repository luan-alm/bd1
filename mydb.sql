-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.28

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

--
-- Table structure for table `apartamento`
--

DROP TABLE IF EXISTS `apartamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apartamento` (
  `idApartamento` int NOT NULL AUTO_INCREMENT,
  `Tipo` int DEFAULT NULL,
  `idHotel` int DEFAULT NULL,
  `NumApt` int DEFAULT NULL,
  PRIMARY KEY (`idApartamento`),
  KEY `tipo_idx` (`Tipo`),
  KEY `Hotel_idx` (`idHotel`),
  CONSTRAINT `fk_Hotel` FOREIGN KEY (`idHotel`) REFERENCES `hotel` (`idHotel`),
  CONSTRAINT `tipo` FOREIGN KEY (`Tipo`) REFERENCES `tipo` (`idTipo`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apartamento`
--

LOCK TABLES `apartamento` WRITE;
/*!40000 ALTER TABLE `apartamento` DISABLE KEYS */;
INSERT INTO `apartamento` VALUES (1,15,1,101),(2,32,1,102),(3,20,1,103),(4,46,1,201),(5,3,1,202),(6,32,2,101),(7,51,2,201),(8,14,2,202),(9,8,2,301),(10,38,2,401),(11,8,4,101),(12,21,4,201),(13,11,4,202),(14,13,4,301),(15,7,4,401);
/*!40000 ALTER TABLE `apartamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) DEFAULT NULL,
  `Endereço` varchar(45) DEFAULT NULL,
  `Nacionalidade` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Telefone` int DEFAULT NULL,
  `Senha` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Luan Almeida','Viçosa','Brasil','luanalmeida@gmail.com',31564820,'ccp3791@'),(2,'Caio Morais','Caratinga','Brasil','caiomorais@outlook.com',33652410,'pass1235'),(3,'Olavo Silva','Ipatinga','Brasil','olavosilva@yahoo.com',31526984,'ufv2598'),(4,'Júlio Monteiro','Viçosa','Itália','juliom@google.com',35741026,'inf220-@x'),(5,'Paulo Santos','Rio de Janeiro','Brasil','phsantos@hotmail.com',21348520,'12345678'),(6,'Maria Aparecida','São Paulo','Brasil','mariaap@gmail.com',11363205,'ansdu¬s|@'),(7,'Giovanni Machado','Espírito Santo','Brasil','gimachado@gmail.com',28363256,'msaopd[$5'),(8,'Ana Clara','Rio de Janeiro','Brasil','anasclara@outlook.com',22363256,'78a2x!9n'),(9,'Jugurta Fusquinha','Rio de Janeiro','Brasil','jugurta@volkswagen.com',31248560,'amomeufusquinha'),(10,'Michael Jackson','New York','Estados Unidos','michael@billiejean.com',12584603,'moonwalker');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumo`
--

DROP TABLE IF EXISTS `consumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumo` (
  `Tipo` varchar(45) DEFAULT NULL,
  `Val` int DEFAULT NULL,
  `Descrição` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Taxa` int DEFAULT NULL,
  `Quantidade` int NOT NULL,
  `Realiza_serviço_idServiço` int NOT NULL,
  KEY `Serviço_idx` (`Realiza_serviço_idServiço`),
  CONSTRAINT `fk_serviço` FOREIGN KEY (`Realiza_serviço_idServiço`) REFERENCES `realiza_servico` (`idServiço`)
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumo`
--

LOCK TABLES `consumo` WRITE;
/*!40000 ALTER TABLE `consumo` DISABLE KEYS */;
INSERT INTO `consumo` VALUES ('Frigobar',10,'Heineken',0,1,14),('Frigobar',2,'Toddynho',0,2,15),('Frigobar',2,'Toddynho',0,1,17),('Frigobar',15,'RedBull',0,1,17),('Frigobar',8,'Guaraná',0,1,28),('Frigobar',25,'Sorvete',0,1,18),('Frigobar',10,'Vitamina',0,1,36),('Frigobar',15,'RedBull',0,1,19),('Frigobar',10,'Coca-cola',0,1,31),('Frigobar',7,'Iogurte',0,2,23),('Frigobar',2,'Toddynho',0,1,35),('Frigobar',5,'Brahma',0,1,41),('Frigobar',15,'RedBull',0,1,34),('Frigobar',10,'Vitamina',0,1,25),('Frigobar',25,'Sorvete',0,1,36),('Frigobar',10,'Heineken',0,1,21),('Frigobar',10,'Coca-cola',0,1,27),('Frigobar',2,'Toddynho',0,1,20),('Frigobar',10,'Vitamina',0,1,30),('Frigobar',15,'RedBull',0,1,24),('Frigobar',8,'Guaraná',0,1,26),('Restaurante',100,'Conta Restaurante',0,1,43),('Restaurante',190,'Conta Restaurante',0,1,45),('Restaurante',40,'Conta Restaurante',0,1,46),('Restaurante',300,'Conta Restaurante',0,1,47),('Restaurante',0,'Conta Restaurante',0,1,48),('Restaurante',130,'Conta Restaurante',0,1,49),('Restaurante',55,'Conta Restaurante',0,1,50),('Restaurante',0,'Conta Restaurante',0,1,51),('Restaurante',90,'Conta Restaurante',0,1,52),('Restaurante delivery',40,'Almoço',10,1,53),('Restaurante delivery',25,'Café da tarde',10,1,54),('Restaurante delivery',40,'Almoço',10,1,55),('Restaurante delivery',50,'Jantar',10,1,56),('Restaurante delivery',15,'Lanche',10,1,57);
/*!40000 ALTER TABLE `consumo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `idFuncionario` int NOT NULL AUTO_INCREMENT,
  `Cargo` varchar(45) DEFAULT NULL,
  `F_nome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idFuncionario`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'Camareira','Amanda Ferreira'),(2,'Atendente','Júlia Calais'),(3,'Serviço de Quarto','Roberto Silva'),(4,'Serviço Geral','Daniel Moreira'),(5,'Gerente','Carlos Andrade'),(6,'Camareira','Luiza Franco'),(7,'Atendente','Ana Souza'),(8,'Serviço de Quarto','Fernanda Nogueira'),(9,'Serviço Geral','Paulo Vieira'),(10,'Gerente','Fabiana Andrade'),(11,'Camareira','Maria Luiza'),(12,'Atendente','César Moreira'),(13,'Serviço de Quarto','André Mendonça'),(14,'Serviço Geral','Oscar Filho'),(15,'Gerente','Álvaro Medeiros');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospedagem`
--

DROP TABLE IF EXISTS `hospedagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospedagem` (
  `idReserva` int NOT NULL,
  `data_ini` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  `idServiço` int DEFAULT NULL,
  `idApartamento` int DEFAULT NULL,
  PRIMARY KEY (`idReserva`),
  KEY `idServiço_idx` (`idServiço`),
  KEY `fk_Hospedagem_Reservas1_idx` (`idReserva`),
  KEY `idApartamento_idx` (`idApartamento`),
  CONSTRAINT `fk_Hospedagem_Reservas1` FOREIGN KEY (`idReserva`) REFERENCES `reservas` (`idReservas`),
  CONSTRAINT `fk_idApartamento` FOREIGN KEY (`idApartamento`) REFERENCES `apartamento` (`idApartamento`),
  CONSTRAINT `idServiço` FOREIGN KEY (`idServiço`) REFERENCES `realiza_servico` (`idServiço`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospedagem`
--

LOCK TABLES `hospedagem` WRITE;
/*!40000 ALTER TABLE `hospedagem` DISABLE KEYS */;
INSERT INTO `hospedagem` VALUES (1,'2022-02-26','2022-03-01',7,9),(2,'2022-03-23','2022-03-24',13,9),(3,'2022-02-26','2022-03-01',8,8),(4,'2022-02-14','2022-02-15',5,15),(5,'2022-02-26','2022-03-01',9,3),(6,'2022-02-26','2022-03-01',10,10),(9,'2022-01-15','2022-01-17',3,14),(10,'2022-03-10','2022-03-10',12,1),(11,'2022-02-01','2022-02-01',4,6),(12,'2022-02-26','2022-03-01',11,14),(13,'2022-02-16','2022-02-17',6,12);
/*!40000 ALTER TABLE `hospedagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel` (
  `idHotel` int NOT NULL AUTO_INCREMENT,
  `Cidade` varchar(45) DEFAULT NULL,
  `Endereço` varchar(45) DEFAULT NULL,
  `Telefona` varchar(45) DEFAULT NULL,
  `Rede_Bom_Sono_CNPJ` int NOT NULL DEFAULT '123',
  PRIMARY KEY (`idHotel`),
  KEY `fk_Hotel_Rede_Bom_Sono1_idx` (`Rede_Bom_Sono_CNPJ`),
  CONSTRAINT `fk_Hotel_Rede_Bom_Sono1` FOREIGN KEY (`Rede_Bom_Sono_CNPJ`) REFERENCES `rede_bom_sono` (`CNPJ`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES (1,'Belo Horizonte','Av. Amazonas','31546820',123),(2,'Rio de Janeiro','Av. Cristo Redentor','34521062',123),(4,'Viçosa','Av. PH Rolfs','35642015',123);
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamento`
--

DROP TABLE IF EXISTS `pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamento` (
  `NFe` int NOT NULL,
  `Valor_total` double DEFAULT NULL,
  `Forma` varchar(45) DEFAULT NULL,
  `Data_pagamento` date DEFAULT NULL,
  `Hospedagem_idReserva` int NOT NULL,
  PRIMARY KEY (`NFe`),
  KEY `fk_Pagamento_Hospedagem1_idx` (`Hospedagem_idReserva`),
  CONSTRAINT `fk_Pagamento_Hospedagem1` FOREIGN KEY (`Hospedagem_idReserva`) REFERENCES `hospedagem` (`idReserva`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamento`
--

LOCK TABLES `pagamento` WRITE;
/*!40000 ALTER TABLE `pagamento` DISABLE KEYS */;
INSERT INTO `pagamento` VALUES (104630810,302,'Dinheiro','2022-02-15',4),(189456133,666.5,'Cartão de Crédito','2022-03-01',1),(420351706,554,'Cartão de Crédito','2022-03-01',5),(458702345,356,'Cartão de Débito','2022-03-01',3),(624302139,186.5,'Cartão de Débito','2022-03-24',2),(650842302,427,'Pix','2022-03-01',6),(674301984,0,'Cartão de Débito','2022-03-10',10),(834562103,142,'Pix','2022-02-17',13),(905631407,308,'Dinheiro','2022-01-17',9),(906431502,105,'Cartão de Crédito','2022-02-01',11),(946302841,355,'Pix','2022-03-01',12);
/*!40000 ALTER TABLE `pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realiza_servico`
--

DROP TABLE IF EXISTS `realiza_servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `realiza_servico` (
  `idServiço` int NOT NULL AUTO_INCREMENT,
  `Data` date DEFAULT NULL,
  `Tipo_serviço` varchar(45) DEFAULT NULL,
  `idReserva` int DEFAULT NULL,
  `idFuncionario` int DEFAULT NULL,
  PRIMARY KEY (`idServiço`),
  KEY `idReserva_idx` (`idReserva`),
  KEY `idFuncionario_idx` (`idFuncionario`) /*!80000 INVISIBLE */,
  CONSTRAINT `fk_IdFuncionario` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`),
  CONSTRAINT `idReserva` FOREIGN KEY (`idReserva`) REFERENCES `reservas` (`idReservas`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realiza_servico`
--

LOCK TABLES `realiza_servico` WRITE;
/*!40000 ALTER TABLE `realiza_servico` DISABLE KEYS */;
INSERT INTO `realiza_servico` VALUES (3,'2022-01-15','Realizar check-in',9,12),(4,'2022-01-31','Cancelar reserva',11,7),(5,'2022-02-14','Realizar check-in',4,12),(6,'2022-02-16','Realizar check-in',13,12),(7,'2022-02-26','Realizar check-in',1,7),(8,'2022-02-26','Realizar check-in',3,7),(9,'2022-02-26','Realizar check-in',5,2),(10,'2022-02-26','Realizar check-in',6,7),(11,'2022-02-26','Realizar check-in',12,12),(12,'2022-03-04','Cancelar reserva',10,2),(13,'2022-03-23','Realizar check-in',2,7),(14,'2022-01-15','Arrumar quarto/anotar consumo frigobar',9,11),(15,'2022-01-16','Arrumar quarto/anotar consumo frigobar',9,11),(16,'2022-01-17','Arrumar quarto/anotar consumo frigobar',9,11),(17,'2022-02-14','Arrumar quarto/anotar consumo frigobar',4,11),(18,'2022-02-15','Arrumar quarto/anotar consumo frigobar',4,11),(19,'2022-02-16','Arrumar quarto/anotar consumo frigobar',13,11),(20,'2022-02-17','Arrumar quarto/anotar consumo frigobar',13,11),(21,'2022-02-26','Arrumar quarto/anotar consumo frigobar',1,6),(22,'2022-02-27','Arrumar quarto/anotar consumo frigobar',1,6),(23,'2022-02-28','Arrumar quarto/anotar consumo frigobar',1,6),(24,'2022-03-01','Arrumar quarto/anotar consumo frigobar',1,6),(25,'2022-02-26','Arrumar quarto/anotar consumo frigobar',3,6),(26,'2022-02-27','Arrumar quarto/anotar consumo frigobar',3,6),(27,'2022-02-28','Arrumar quarto/anotar consumo frigobar',3,6),(28,'2022-03-01','Arrumar quarto/anotar consumo frigobar',3,6),(29,'2022-02-26','Arrumar quarto/anotar consumo frigobar',5,1),(30,'2022-02-27','Arrumar quarto/anotar consumo frigobar',5,1),(31,'2022-02-28','Arrumar quarto/anotar consumo frigobar',5,1),(32,'2022-03-01','Arrumar quarto/anotar consumo frigobar',5,1),(33,'2022-02-26','Arrumar quarto/anotar consumo frigobar',6,6),(34,'2022-02-27','Arrumar quarto/anotar consumo frigobar',6,6),(35,'2022-02-28','Arrumar quarto/anotar consumo frigobar',6,6),(36,'2022-03-01','Arrumar quarto/anotar consumo frigobar',6,6),(37,'2022-02-26','Arrumar quarto/anotar consumo frigobar',12,11),(38,'2022-02-27','Arrumar quarto/anotar consumo frigobar',12,11),(39,'2022-02-28','Arrumar quarto/anotar consumo frigobar',12,11),(40,'2022-03-01','Arrumar quarto/anotar consumo frigobar',12,11),(41,'2022-03-23','Arrumar quarto/anotar consumo frigobar',2,6),(42,'2022-03-24','Arrumar quarto/anotar consumo frigobar',2,6),(43,'2022-01-17','Registrar Consumo Restaurante',9,14),(45,'2022-02-15','Registrar Consumo Restaurante',4,14),(46,'2022-02-17','Registrar Consumo Restaurante',13,14),(47,'2022-03-01','Registrar Consumo Restaurante',1,9),(48,'2022-03-01','Registrar Consumo Restaurante',3,9),(49,'2022-03-01','Registrar Consumo Restaurante',5,4),(50,'2022-03-01','Registrar Consumo Restaurante',6,9),(51,'2022-03-01','Registrar Consumo Restaurante',12,14),(52,'2022-03-24','Registrar Consumo Restaurante',2,9),(53,'2022-01-16','Delivery Restaurante',9,13),(54,'2022-02-28','Delivery Restaurante',1,8),(55,'2022-02-27','Delivery Restaurante',5,3),(56,'2022-03-01','Delivery Restaurante',12,13),(57,'2022-03-23','Delivery Restaurante',2,8);
/*!40000 ALTER TABLE `realiza_servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rede_bom_sono`
--

DROP TABLE IF EXISTS `rede_bom_sono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rede_bom_sono` (
  `CNPJ` int NOT NULL,
  `Sede` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CNPJ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rede_bom_sono`
--

LOCK TABLES `rede_bom_sono` WRITE;
/*!40000 ALTER TABLE `rede_bom_sono` DISABLE KEYS */;
INSERT INTO `rede_bom_sono` VALUES (123,'Belo Horizonte');
/*!40000 ALTER TABLE `rede_bom_sono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservas`
--

DROP TABLE IF EXISTS `reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservas` (
  `idReservas` int NOT NULL AUTO_INCREMENT,
  `n_pessoas` int DEFAULT NULL,
  `data_prev_ini` date DEFAULT NULL,
  `data_prev_fim` date DEFAULT NULL,
  `data_reserva` date DEFAULT NULL,
  `cancela` int DEFAULT NULL,
  `data_cancela` date DEFAULT NULL,
  `idTipo` int DEFAULT NULL,
  `idCliente` int DEFAULT NULL,
  `idHotel` int DEFAULT NULL,
  PRIMARY KEY (`idReservas`),
  KEY `fk_Reservas_Tipo_idx` (`idTipo`),
  KEY `fk_Cliente` (`idCliente`) /*!80000 INVISIBLE */,
  KEY `fk_Reservas_Hotel_idx` (`idHotel`),
  CONSTRAINT `fk_Cliente` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`),
  CONSTRAINT `fk_Reservas_Hotel` FOREIGN KEY (`idHotel`) REFERENCES `hotel` (`idHotel`),
  CONSTRAINT `fk_Reservas_Tipo` FOREIGN KEY (`idTipo`) REFERENCES `tipo` (`idTipo`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas`
--

LOCK TABLES `reservas` WRITE;
/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
INSERT INTO `reservas` VALUES (1,3,'2022-02-26','2022-03-01','2022-02-24',0,NULL,8,1,2),(2,3,'2022-03-23','2022-03-24','2022-03-21',0,NULL,8,1,2),(3,2,'2022-02-26','2022-03-01','2022-02-15',0,NULL,14,6,2),(4,1,'2022-02-14','2022-02-15','2022-02-12',0,NULL,7,4,4),(5,1,'2022-02-26','2022-03-01','2022-02-02',0,NULL,20,10,1),(6,1,'2022-02-26','2022-03-01','2022-02-20',0,NULL,38,9,2),(9,3,'2022-01-15','2022-01-17','2022-01-01',0,NULL,13,3,4),(10,2,'2022-03-10','2022-03-11','2022-02-28',1,'2022-03-04',15,2,1),(11,2,'2022-02-01','2022-02-03','2022-01-31',1,'2022-01-31',32,5,2),(12,1,'2022-02-26','2022-03-01','2022-02-08',0,NULL,13,8,4),(13,1,'2022-02-16','2022-02-17','2022-02-03',0,NULL,21,7,4);
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo`
--

DROP TABLE IF EXISTS `tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo` (
  `idTipo` int NOT NULL AUTO_INCREMENT,
  `n_casal` int DEFAULT NULL COMMENT 'teste',
  `n_solteiro` int DEFAULT NULL,
  `tv` int DEFAULT NULL,
  `frigobar` int DEFAULT NULL,
  `adapt_deficiente` int DEFAULT NULL,
  `valor_diaria` int DEFAULT NULL,
  PRIMARY KEY (`idTipo`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo`
--

LOCK TABLES `tipo` WRITE;
/*!40000 ALTER TABLE `tipo` DISABLE KEYS */;
INSERT INTO `tipo` VALUES (1,0,1,0,0,0,60),(2,0,1,0,0,1,65),(3,0,1,0,1,0,65),(4,0,1,0,1,1,70),(5,0,1,1,0,0,65),(6,0,1,1,0,1,70),(7,0,1,1,1,0,70),(8,0,1,1,1,1,75),(9,0,2,0,0,0,70),(10,0,2,0,0,1,75),(11,0,2,0,1,0,75),(12,0,2,0,1,1,80),(13,0,2,1,0,0,75),(14,0,2,1,0,1,80),(15,0,2,1,1,0,80),(16,0,2,1,1,1,85),(17,0,3,0,0,0,80),(18,0,3,0,0,1,85),(19,0,3,0,1,0,85),(20,0,3,0,1,1,90),(21,0,3,1,0,0,85),(22,0,3,1,0,1,90),(23,0,3,1,1,0,90),(24,0,3,1,1,1,95),(25,0,4,0,0,0,90),(26,0,4,0,0,1,95),(27,0,4,0,1,0,95),(28,0,4,0,1,1,100),(29,0,4,1,0,0,95),(30,0,4,1,0,1,100),(31,0,4,1,1,0,100),(32,0,4,1,1,1,105),(33,1,0,0,0,0,70),(34,1,0,0,0,1,75),(35,1,0,0,1,0,75),(36,1,0,0,1,1,80),(37,1,0,1,0,0,75),(38,1,0,1,0,1,80),(39,1,0,1,1,0,80),(40,1,0,1,1,1,85),(41,1,1,0,0,0,80),(42,1,1,0,0,1,85),(43,1,1,0,1,0,85),(44,1,1,0,1,1,90),(45,1,1,1,0,0,85),(46,1,1,1,0,1,90),(47,1,1,1,1,0,90),(48,1,1,1,1,1,95),(49,1,2,0,0,0,90),(50,1,2,0,0,1,95),(51,1,2,0,1,0,95),(52,1,2,0,1,1,100),(53,1,2,1,0,0,95),(54,1,2,1,0,1,100),(55,1,2,1,1,0,100),(56,1,2,1,1,1,105),(57,2,0,0,0,0,90),(58,2,0,0,0,1,95),(59,2,0,0,1,0,95),(60,2,0,0,1,1,100),(61,2,0,1,0,0,95),(62,2,0,1,0,1,100),(63,2,0,1,1,0,100),(64,2,0,1,1,1,105);
/*!40000 ALTER TABLE `tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userlog` (
  `id` int NOT NULL,
  `userId` int NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlog`
--

LOCK TABLES `userlog` WRITE;
/*!40000 ALTER TABLE `userlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `userlog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-30 17:31:56
