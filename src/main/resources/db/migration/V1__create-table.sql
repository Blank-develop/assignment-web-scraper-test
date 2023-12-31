SET @old_autocommit=@@autocommit;

CREATE DATABASE `url` DEFAULT CHARACTER SET utf8mb4;

USE `url`;

CREATE TABLE MS_SET (
  SYMBOL varchar(20) NOT NULL,
  COMPANY varchar(1000) DEFAULT NULL,
  MARKET varchar(20) DEFAULT NULL,
  INDUSTRY varchar(200) DEFAULT NULL,
  SECTOR varchar(200) DEFAULT NULL,
  ADDRESS varchar(1000) DEFAULT NULL,
  ZIPCODE varchar(200) DEFAULT NULL,
  TEL varchar(500) DEFAULT NULL,
  FAX varchar(500) DEFAULT NULL,
  WEBSITE varchar(500) DEFAULT NULL,
  PRIMARY KEY (SYMBOL)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- SET.TR_TRANSACTION definition

CREATE TABLE TR_TRANSACTION (
  SYMBOL varchar(20) NOT NULL,
  TRANSACTION_DATE date NOT NULL,
  OPEN_PRICE double DEFAULT NULL,
  MAX_PRICE double DEFAULT NULL,
  MIN_PRICE double DEFAULT NULL,
  CLOSE_PRICE double DEFAULT NULL,
  CHANGE_PRICE double DEFAULT NULL,
  CHANGE_RATIO double DEFAULT NULL,
  NO_OF_STOCK double DEFAULT NULL,
  VOLUME double DEFAULT NULL,
  REASON varchar(255) DEFAULT NULL,
  STATUS varchar(255) DEFAULT NULL,
  BATCH_ID bigint(20) DEFAULT NULL,
  PRIMARY KEY (SYMBOL,TRANSACTION_DATE),
  KEY FKfn191w2w2p4o4w1dc45enbhcq (BATCH_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;