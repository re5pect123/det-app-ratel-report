/*
Navicat MySQL Data Transfer

Source Server         : 10.253
Source Server Version : 50537
Source Host           : 192.168.10.253:3306
Source Database       : billing_record

Target Server Type    : MYSQL
Target Server Version : 50537
File Encoding         : 65001

Date: 2017-02-24 17:11:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for billing_records_ipc_2015_05
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_ipc_2015_05`;
CREATE TABLE `billing_records_ipc_2015_05` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(255) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_ipc_2015_06
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_ipc_2015_06`;
CREATE TABLE `billing_records_ipc_2015_06` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(255) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=134459 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_ipc_2015_07
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_ipc_2015_07`;
CREATE TABLE `billing_records_ipc_2015_07` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(255) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=287170 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_ipc_2015_08
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_ipc_2015_08`;
CREATE TABLE `billing_records_ipc_2015_08` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(255) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=156635 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_ipc_2015_09
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_ipc_2015_09`;
CREATE TABLE `billing_records_ipc_2015_09` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(255) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=186451 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_ipc_2015_10
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_ipc_2015_10`;
CREATE TABLE `billing_records_ipc_2015_10` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(255) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=429876 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_ipc_2015_11
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_ipc_2015_11`;
CREATE TABLE `billing_records_ipc_2015_11` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(255) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=439883 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_ipc_sum_2015_07
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_ipc_sum_2015_07`;
CREATE TABLE `billing_records_ipc_sum_2015_07` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `peerId` int(10) NOT NULL,
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `units` decimal(10,4) NOT NULL,
  `unitsVAT` decimal(10,4) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_ipc_sum_2015_10
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_ipc_sum_2015_10`;
CREATE TABLE `billing_records_ipc_sum_2015_10` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `peerId` int(10) NOT NULL,
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `units` decimal(10,4) NOT NULL,
  `unitsVAT` decimal(10,4) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_ipc_sum_2015_11
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_ipc_sum_2015_11`;
CREATE TABLE `billing_records_ipc_sum_2015_11` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `peerId` int(10) NOT NULL,
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `units` decimal(10,4) NOT NULL,
  `unitsVAT` decimal(10,4) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_1_sum_2014_12
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_1_sum_2014_12`;
CREATE TABLE `billing_records_teles_1_sum_2014_12` (
  `userPhone` varchar(20) NOT NULL DEFAULT '',
  `total` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2_sum_2014_12
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2_sum_2014_12`;
CREATE TABLE `billing_records_teles_2_sum_2014_12` (
  `userPhone` varchar(20) NOT NULL DEFAULT '',
  `total` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2_sum_2015_01
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2_sum_2015_01`;
CREATE TABLE `billing_records_teles_2_sum_2015_01` (
  `userPhone` varchar(20) NOT NULL DEFAULT '',
  `total` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2_sum_2015_02
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2_sum_2015_02`;
CREATE TABLE `billing_records_teles_2_sum_2015_02` (
  `userPhone` varchar(20) NOT NULL DEFAULT '',
  `total` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2_sum_2015_03
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2_sum_2015_03`;
CREATE TABLE `billing_records_teles_2_sum_2015_03` (
  `userPhone` varchar(20) NOT NULL DEFAULT '',
  `total` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2_sum_2015_04
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2_sum_2015_04`;
CREATE TABLE `billing_records_teles_2_sum_2015_04` (
  `userPhone` varchar(20) NOT NULL DEFAULT '',
  `total` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2_sum_2015_05
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2_sum_2015_05`;
CREATE TABLE `billing_records_teles_2_sum_2015_05` (
  `userPhone` varchar(20) NOT NULL DEFAULT '',
  `total` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2_sum_2015_06
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2_sum_2015_06`;
CREATE TABLE `billing_records_teles_2_sum_2015_06` (
  `userPhone` varchar(20) NOT NULL DEFAULT '',
  `total` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2_sum_2015_07
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2_sum_2015_07`;
CREATE TABLE `billing_records_teles_2_sum_2015_07` (
  `userPhone` varchar(20) NOT NULL DEFAULT '',
  `total` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2_sum_2015_08
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2_sum_2015_08`;
CREATE TABLE `billing_records_teles_2_sum_2015_08` (
  `userPhone` varchar(20) NOT NULL DEFAULT '',
  `total` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2_sum_2015_09
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2_sum_2015_09`;
CREATE TABLE `billing_records_teles_2_sum_2015_09` (
  `userPhone` varchar(20) NOT NULL DEFAULT '',
  `total` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2_sum_2015_10
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2_sum_2015_10`;
CREATE TABLE `billing_records_teles_2_sum_2015_10` (
  `userPhone` varchar(20) NOT NULL DEFAULT '',
  `total` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2_sum_2015_11
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2_sum_2015_11`;
CREATE TABLE `billing_records_teles_2_sum_2015_11` (
  `userPhone` varchar(20) NOT NULL DEFAULT '',
  `total` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2_sum_2015_12
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2_sum_2015_12`;
CREATE TABLE `billing_records_teles_2_sum_2015_12` (
  `userPhone` varchar(20) NOT NULL DEFAULT '',
  `total` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2_sum_2016_01
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2_sum_2016_01`;
CREATE TABLE `billing_records_teles_2_sum_2016_01` (
  `userPhone` varchar(20) NOT NULL DEFAULT '',
  `total` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2_sum_2016_02
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2_sum_2016_02`;
CREATE TABLE `billing_records_teles_2_sum_2016_02` (
  `userPhone` varchar(20) NOT NULL DEFAULT '',
  `total` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2_sum_2016_03
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2_sum_2016_03`;
CREATE TABLE `billing_records_teles_2_sum_2016_03` (
  `userPhone` varchar(20) NOT NULL DEFAULT '',
  `total` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2_sum_2016_04
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2_sum_2016_04`;
CREATE TABLE `billing_records_teles_2_sum_2016_04` (
  `userPhone` varchar(20) NOT NULL DEFAULT '',
  `total` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2_sum_2016_05
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2_sum_2016_05`;
CREATE TABLE `billing_records_teles_2_sum_2016_05` (
  `userPhone` varchar(20) NOT NULL DEFAULT '',
  `total` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2_sum_2016_06
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2_sum_2016_06`;
CREATE TABLE `billing_records_teles_2_sum_2016_06` (
  `userPhone` varchar(20) NOT NULL DEFAULT '',
  `total` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2_sum_2016_07
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2_sum_2016_07`;
CREATE TABLE `billing_records_teles_2_sum_2016_07` (
  `userPhone` varchar(20) NOT NULL DEFAULT '',
  `total` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2_sum_2016_08
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2_sum_2016_08`;
CREATE TABLE `billing_records_teles_2_sum_2016_08` (
  `userPhone` varchar(20) NOT NULL DEFAULT '',
  `total` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2_sum_2016_09
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2_sum_2016_09`;
CREATE TABLE `billing_records_teles_2_sum_2016_09` (
  `userPhone` varchar(20) NOT NULL DEFAULT '',
  `total` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2_sum_2016_10
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2_sum_2016_10`;
CREATE TABLE `billing_records_teles_2_sum_2016_10` (
  `userPhone` varchar(20) NOT NULL DEFAULT '',
  `total` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2_sum_2016_11
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2_sum_2016_11`;
CREATE TABLE `billing_records_teles_2_sum_2016_11` (
  `userPhone` varchar(20) NOT NULL DEFAULT '',
  `total` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2_sum_2016_12
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2_sum_2016_12`;
CREATE TABLE `billing_records_teles_2_sum_2016_12` (
  `userPhone` varchar(20) NOT NULL DEFAULT '',
  `total` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2_sum_2017_01
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2_sum_2017_01`;
CREATE TABLE `billing_records_teles_2_sum_2017_01` (
  `userPhone` varchar(20) NOT NULL DEFAULT '',
  `total` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2_sum_2017_02
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2_sum_2017_02`;
CREATE TABLE `billing_records_teles_2_sum_2017_02` (
  `userPhone` varchar(20) NOT NULL DEFAULT '',
  `total` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2014_10
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2014_10`;
CREATE TABLE `billing_records_teles_2014_10` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(30) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` int(10) unsigned NOT NULL DEFAULT '0',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=320 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2014_11
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2014_11`;
CREATE TABLE `billing_records_teles_2014_11` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(30) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '0',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2132 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2014_12
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2014_12`;
CREATE TABLE `billing_records_teles_2014_12` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(30) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '0',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14327 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2015_01
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2015_01`;
CREATE TABLE `billing_records_teles_2015_01` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(30) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '0',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE,
  KEY `ubrzaj` (`duration`)
) ENGINE=InnoDB AUTO_INCREMENT=63374 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2015_02
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2015_02`;
CREATE TABLE `billing_records_teles_2015_02` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(30) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '0',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=96860 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2015_03
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2015_03`;
CREATE TABLE `billing_records_teles_2015_03` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(30) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '0',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=189390 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2015_04
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2015_04`;
CREATE TABLE `billing_records_teles_2015_04` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(255) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=282501 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2015_05
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2015_05`;
CREATE TABLE `billing_records_teles_2015_05` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(255) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=399031 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2015_06
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2015_06`;
CREATE TABLE `billing_records_teles_2015_06` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(255) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=836496 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2015_07
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2015_07`;
CREATE TABLE `billing_records_teles_2015_07` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(255) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1309738 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2015_08
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2015_08`;
CREATE TABLE `billing_records_teles_2015_08` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(255) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1820574 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2015_09
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2015_09`;
CREATE TABLE `billing_records_teles_2015_09` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(255) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2431975 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2015_10
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2015_10`;
CREATE TABLE `billing_records_teles_2015_10` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(255) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3194187 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2015_11
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2015_11`;
CREATE TABLE `billing_records_teles_2015_11` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(255) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3962634 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2015_12
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2015_12`;
CREATE TABLE `billing_records_teles_2015_12` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(255) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4861585 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2016_01
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2016_01`;
CREATE TABLE `billing_records_teles_2016_01` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(255) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5842309 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2016_02
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2016_02`;
CREATE TABLE `billing_records_teles_2016_02` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(255) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6768801 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2016_03
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2016_03`;
CREATE TABLE `billing_records_teles_2016_03` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(255) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7815320 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2016_04
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2016_04`;
CREATE TABLE `billing_records_teles_2016_04` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(255) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8819079 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2016_05
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2016_05`;
CREATE TABLE `billing_records_teles_2016_05` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(255) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9882230 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2016_06
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2016_06`;
CREATE TABLE `billing_records_teles_2016_06` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(255) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11070574 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2016_07
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2016_07`;
CREATE TABLE `billing_records_teles_2016_07` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(255) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12134612 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2016_08
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2016_08`;
CREATE TABLE `billing_records_teles_2016_08` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(255) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13144917 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2016_09
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2016_09`;
CREATE TABLE `billing_records_teles_2016_09` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(255) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14214655 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2016_10
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2016_10`;
CREATE TABLE `billing_records_teles_2016_10` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(255) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15399636 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2016_11
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2016_11`;
CREATE TABLE `billing_records_teles_2016_11` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(255) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16575125 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2016_12
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2016_12`;
CREATE TABLE `billing_records_teles_2016_12` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(255) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17886391 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2017_01
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2017_01`;
CREATE TABLE `billing_records_teles_2017_01` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(255) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19264134 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_2017_02
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_2017_02`;
CREATE TABLE `billing_records_teles_2017_02` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(255) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20294519 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_sum_2014_12
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_sum_2014_12`;
CREATE TABLE `billing_records_teles_sum_2014_12` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `peerId` int(10) NOT NULL,
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `units` decimal(10,4) NOT NULL,
  `unitsVAT` decimal(10,4) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_sum_2015_01
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_sum_2015_01`;
CREATE TABLE `billing_records_teles_sum_2015_01` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `peerId` int(10) NOT NULL,
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `units` decimal(10,4) NOT NULL,
  `unitsVAT` decimal(10,4) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_sum_2015_02
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_sum_2015_02`;
CREATE TABLE `billing_records_teles_sum_2015_02` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `peerId` int(10) NOT NULL,
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `units` decimal(10,4) NOT NULL,
  `unitsVAT` decimal(10,4) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`userPhone`)
) ENGINE=InnoDB AUTO_INCREMENT=27077 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_sum_2015_03
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_sum_2015_03`;
CREATE TABLE `billing_records_teles_sum_2015_03` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `peerId` int(10) NOT NULL,
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `units` decimal(10,4) NOT NULL,
  `unitsVAT` decimal(10,4) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`userPhone`)
) ENGINE=InnoDB AUTO_INCREMENT=53409 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_sum_2015_04
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_sum_2015_04`;
CREATE TABLE `billing_records_teles_sum_2015_04` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `peerId` int(10) NOT NULL,
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `units` decimal(10,4) NOT NULL,
  `unitsVAT` decimal(10,4) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`userPhone`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_sum_2015_05
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_sum_2015_05`;
CREATE TABLE `billing_records_teles_sum_2015_05` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `peerId` int(10) NOT NULL,
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `units` decimal(10,4) NOT NULL,
  `unitsVAT` decimal(10,4) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`userPhone`)
) ENGINE=InnoDB AUTO_INCREMENT=61740 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_sum_2015_06
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_sum_2015_06`;
CREATE TABLE `billing_records_teles_sum_2015_06` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `peerId` int(10) NOT NULL,
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `units` decimal(10,4) NOT NULL,
  `unitsVAT` decimal(10,4) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`userPhone`)
) ENGINE=InnoDB AUTO_INCREMENT=120852 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_sum_2015_07
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_sum_2015_07`;
CREATE TABLE `billing_records_teles_sum_2015_07` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `peerId` int(10) NOT NULL,
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `units` decimal(10,4) NOT NULL,
  `unitsVAT` decimal(10,4) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`userPhone`)
) ENGINE=InnoDB AUTO_INCREMENT=130616 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_sum_2015_08
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_sum_2015_08`;
CREATE TABLE `billing_records_teles_sum_2015_08` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `peerId` int(10) NOT NULL,
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `units` decimal(10,4) NOT NULL,
  `unitsVAT` decimal(10,4) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`userPhone`)
) ENGINE=InnoDB AUTO_INCREMENT=143776 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_sum_2015_09
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_sum_2015_09`;
CREATE TABLE `billing_records_teles_sum_2015_09` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `peerId` int(10) NOT NULL,
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `units` decimal(10,4) NOT NULL,
  `unitsVAT` decimal(10,4) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`userPhone`)
) ENGINE=InnoDB AUTO_INCREMENT=168233 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_sum_2015_10
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_sum_2015_10`;
CREATE TABLE `billing_records_teles_sum_2015_10` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `peerId` int(10) NOT NULL,
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `units` decimal(10,4) NOT NULL,
  `unitsVAT` decimal(10,4) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`userPhone`)
) ENGINE=InnoDB AUTO_INCREMENT=205229 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_sum_2015_11
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_sum_2015_11`;
CREATE TABLE `billing_records_teles_sum_2015_11` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `peerId` int(10) NOT NULL,
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `units` decimal(10,4) NOT NULL,
  `unitsVAT` decimal(10,4) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`userPhone`)
) ENGINE=InnoDB AUTO_INCREMENT=212495 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_sum_2015_12
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_sum_2015_12`;
CREATE TABLE `billing_records_teles_sum_2015_12` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `peerId` int(10) NOT NULL,
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `units` decimal(10,4) NOT NULL,
  `unitsVAT` decimal(10,4) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`userPhone`)
) ENGINE=InnoDB AUTO_INCREMENT=262338 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_sum_2016_01
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_sum_2016_01`;
CREATE TABLE `billing_records_teles_sum_2016_01` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `peerId` int(10) NOT NULL,
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `units` decimal(10,4) NOT NULL,
  `unitsVAT` decimal(10,4) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`userPhone`)
) ENGINE=InnoDB AUTO_INCREMENT=289741 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_sum_2016_02
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_sum_2016_02`;
CREATE TABLE `billing_records_teles_sum_2016_02` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `peerId` int(10) NOT NULL,
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `units` decimal(10,4) NOT NULL,
  `unitsVAT` decimal(10,4) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`userPhone`)
) ENGINE=InnoDB AUTO_INCREMENT=270997 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_sum_2016_03
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_sum_2016_03`;
CREATE TABLE `billing_records_teles_sum_2016_03` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `peerId` int(10) NOT NULL,
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `units` decimal(10,4) NOT NULL,
  `unitsVAT` decimal(10,4) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`userPhone`)
) ENGINE=InnoDB AUTO_INCREMENT=299798 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_sum_2016_04
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_sum_2016_04`;
CREATE TABLE `billing_records_teles_sum_2016_04` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `peerId` int(10) NOT NULL,
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `units` decimal(10,4) NOT NULL,
  `unitsVAT` decimal(10,4) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`userPhone`)
) ENGINE=InnoDB AUTO_INCREMENT=284292 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_sum_2016_05
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_sum_2016_05`;
CREATE TABLE `billing_records_teles_sum_2016_05` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `peerId` int(10) NOT NULL,
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `units` decimal(10,4) NOT NULL,
  `unitsVAT` decimal(10,4) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`userPhone`)
) ENGINE=InnoDB AUTO_INCREMENT=299322 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_sum_2016_06
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_sum_2016_06`;
CREATE TABLE `billing_records_teles_sum_2016_06` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `peerId` int(10) NOT NULL,
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `units` decimal(10,4) NOT NULL,
  `unitsVAT` decimal(10,4) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`userPhone`)
) ENGINE=InnoDB AUTO_INCREMENT=297456 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_sum_2016_07
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_sum_2016_07`;
CREATE TABLE `billing_records_teles_sum_2016_07` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `peerId` int(10) NOT NULL,
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `units` decimal(10,4) NOT NULL,
  `unitsVAT` decimal(10,4) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`userPhone`)
) ENGINE=InnoDB AUTO_INCREMENT=274100 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_sum_2016_08
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_sum_2016_08`;
CREATE TABLE `billing_records_teles_sum_2016_08` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `peerId` int(10) NOT NULL,
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `units` decimal(10,4) NOT NULL,
  `unitsVAT` decimal(10,4) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`userPhone`)
) ENGINE=InnoDB AUTO_INCREMENT=280802 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_sum_2016_09
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_sum_2016_09`;
CREATE TABLE `billing_records_teles_sum_2016_09` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `peerId` int(10) NOT NULL,
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `units` decimal(10,4) NOT NULL,
  `unitsVAT` decimal(10,4) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`userPhone`)
) ENGINE=InnoDB AUTO_INCREMENT=292906 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_sum_2016_10
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_sum_2016_10`;
CREATE TABLE `billing_records_teles_sum_2016_10` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `peerId` int(10) NOT NULL,
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `units` decimal(10,4) NOT NULL,
  `unitsVAT` decimal(10,4) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`userPhone`)
) ENGINE=InnoDB AUTO_INCREMENT=330301 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_sum_2016_11
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_sum_2016_11`;
CREATE TABLE `billing_records_teles_sum_2016_11` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `peerId` int(10) NOT NULL,
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `units` decimal(10,4) NOT NULL,
  `unitsVAT` decimal(10,4) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`userPhone`)
) ENGINE=InnoDB AUTO_INCREMENT=336467 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_sum_2016_12
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_sum_2016_12`;
CREATE TABLE `billing_records_teles_sum_2016_12` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `peerId` int(10) NOT NULL,
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `units` decimal(10,4) NOT NULL,
  `unitsVAT` decimal(10,4) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`userPhone`)
) ENGINE=InnoDB AUTO_INCREMENT=375527 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_sum_2017_01
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_sum_2017_01`;
CREATE TABLE `billing_records_teles_sum_2017_01` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `peerId` int(10) NOT NULL,
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `units` decimal(10,4) NOT NULL,
  `unitsVAT` decimal(10,4) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`userPhone`)
) ENGINE=InnoDB AUTO_INCREMENT=397521 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_sum_2017_02
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_sum_2017_02`;
CREATE TABLE `billing_records_teles_sum_2017_02` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `peerId` int(10) NOT NULL,
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `units` decimal(10,4) NOT NULL,
  `unitsVAT` decimal(10,4) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`userPhone`)
) ENGINE=InnoDB AUTO_INCREMENT=291173 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_test1_2015_07
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_test1_2015_07`;
CREATE TABLE `billing_records_teles_test1_2015_07` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(255) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_teles_test1_sum_2015_07
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_teles_test1_sum_2015_07`;
CREATE TABLE `billing_records_teles_test1_sum_2015_07` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `peerId` int(10) NOT NULL,
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `units` decimal(10,4) NOT NULL,
  `unitsVAT` decimal(10,4) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_test_2015_08
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_test_2015_08`;
CREATE TABLE `billing_records_test_2015_08` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(255) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for billing_records_test_sum_2015_08
-- ----------------------------
DROP TABLE IF EXISTS `billing_records_test_sum_2015_08`;
CREATE TABLE `billing_records_test_sum_2015_08` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `peerId` int(10) NOT NULL,
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `units` decimal(10,4) NOT NULL,
  `unitsVAT` decimal(10,4) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`userPhone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for testines
-- ----------------------------
DROP TABLE IF EXISTS `testines`;
CREATE TABLE `testines` (
  `seq_no` bigint(20) unsigned NOT NULL DEFAULT '0',
  `peerId` int(10) NOT NULL DEFAULT '0',
  `userPhone` varchar(30) NOT NULL DEFAULT '',
  `userId` int(4) NOT NULL DEFAULT '0',
  `userId1` varchar(30) DEFAULT '0',
  `direction` enum('E','I') NOT NULL DEFAULT 'E',
  `DNIS` varchar(30) NOT NULL DEFAULT '',
  `termRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `dialedNumber` varchar(255) NOT NULL DEFAULT '',
  `ANI` varchar(30) NOT NULL DEFAULT '',
  `CLIR` smallint(3) unsigned NOT NULL DEFAULT '0',
  `origRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `startTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `duration1` int(10) unsigned NOT NULL DEFAULT '0',
  `totalTime` int(10) unsigned NOT NULL DEFAULT '0',
  `units` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `unitsVAT` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `currency` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `redirectingNumber` varchar(30) NOT NULL DEFAULT '',
  `redirectingRoutingInfo` varchar(30) NOT NULL DEFAULT '',
  `origDomain` varchar(30) NOT NULL DEFAULT '',
  `termDomain` varchar(30) NOT NULL DEFAULT '',
  `iGwId` varchar(30) NOT NULL DEFAULT '',
  `oGwId` varchar(30) NOT NULL DEFAULT '',
  `iInt` varchar(30) DEFAULT NULL,
  `oInt` varchar(30) DEFAULT NULL,
  `disconnectReason` varchar(10) NOT NULL DEFAULT '',
  `sourceOfDisconnect` int(10) DEFAULT NULL,
  `callProgressState` varchar(10) NOT NULL DEFAULT '0',
  `origIpAddr` varchar(70) NOT NULL DEFAULT '',
  `termIpAddr` varchar(70) NOT NULL DEFAULT '',
  `origSiteId` varchar(70) NOT NULL DEFAULT '',
  `termSiteId` varchar(70) NOT NULL DEFAULT '',
  `packet` varchar(15) NOT NULL DEFAULT '',
  `billingString` varchar(10) NOT NULL DEFAULT '',
  `billingCode` varchar(20) NOT NULL DEFAULT '',
  `billingType` varchar(10) NOT NULL DEFAULT '',
  `billingId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `destination` varchar(80) NOT NULL DEFAULT '',
  `category` varchar(80) NOT NULL DEFAULT '',
  `class` varchar(5) NOT NULL DEFAULT '',
  `unitsBuy` decimal(10,4) DEFAULT NULL,
  `currencyBuy` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `unitsOp` decimal(10,4) DEFAULT NULL,
  `currencyOp` enum('RSD','EUR','USD') NOT NULL DEFAULT 'RSD',
  `featId` int(3) unsigned DEFAULT '0',
  `flat` smallint(3) unsigned NOT NULL DEFAULT '0',
  `callId` varchar(255) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`direction`,`callId`,`userPhone`) USING BTREE,
  KEY `filter` (`userId`,`duration1`,`direction`) USING BTREE,
  KEY `filter1` (`ANI`,`direction`,`duration1`) USING BTREE,
  KEY `filter2` (`DNIS`,`direction`) USING BTREE,
  KEY `filter3` (`userPhone`,`userId`,`duration`) USING BTREE,
  KEY `filter4` (`peerId`,`featId`,`userId`,`startTime`,`userPhone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15221895 DEFAULT CHARSET=utf8;
DROP TRIGGER IF EXISTS `month_sum_2015_05_trg`;
DELIMITER ;;
CREATE TRIGGER `month_sum_2015_05_trg` BEFORE INSERT ON `billing_records_teles_2015_05` FOR EACH ROW BEGIN
IF new.duration > 0 THEN
  IF new.direction = 'E' THEN
    INSERT INTO billing_record.billing_records_teles_sum_2015_05 (userId, peerId, userPhone, units, unitsVAT) VALUES (new.userId, new.peerId, new.userPhone, new.units, new.unitsVAT) ON DUPLICATE KEY UPDATE units = units + new.units, unitsVAT = unitsVAT + new.unitsVAT;
  END IF;
END IF;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `month_sum_2015_06_trg`;
DELIMITER ;;
CREATE TRIGGER `month_sum_2015_06_trg` BEFORE INSERT ON `billing_records_teles_2015_06` FOR EACH ROW BEGIN IF new.duration > 0 THEN IF new.direction = 'E' THEN INSERT INTO billing_record.billing_records_teles_sum_2015_06 (userId, peerId, userPhone, units, unitsVAT) VALUES (new.userId, new.peerId, new.userPhone, new.units, new.unitsVAT) ON DUPLICATE KEY UPDATE units = units + new.units, unitsVAT = unitsVAT + new.unitsVAT; END IF; END IF; END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `month_sum_2015_07_trg`;
DELIMITER ;;
CREATE TRIGGER `month_sum_2015_07_trg` BEFORE INSERT ON `billing_records_teles_2015_07` FOR EACH ROW BEGIN IF new.duration > 0 THEN IF new.direction = 'E' THEN INSERT INTO billing_record.billing_records_teles_sum_2015_07 (userId, peerId, userPhone, units, unitsVAT) VALUES (new.userId, new.peerId, new.userPhone, new.units, new.unitsVAT) ON DUPLICATE KEY UPDATE units = units + new.units, unitsVAT = unitsVAT + new.unitsVAT; END IF; END IF; END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `month_sum_2015_08_trg`;
DELIMITER ;;
CREATE TRIGGER `month_sum_2015_08_trg` BEFORE INSERT ON `billing_records_teles_2015_08` FOR EACH ROW BEGIN IF new.duration > 0 THEN IF new.direction = 'E' THEN INSERT INTO billing_record.billing_records_teles_sum_2015_08 (userId, peerId, userPhone, units, unitsVAT) VALUES (new.userId, new.peerId, new.userPhone, new.units, new.unitsVAT) ON DUPLICATE KEY UPDATE units = units + new.units, unitsVAT = unitsVAT + new.unitsVAT; END IF; END IF; END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `month_sum_2015_09_trg`;
DELIMITER ;;
CREATE TRIGGER `month_sum_2015_09_trg` BEFORE INSERT ON `billing_records_teles_2015_09` FOR EACH ROW BEGIN IF new.duration > 0 THEN IF new.direction = 'E' THEN INSERT INTO billing_record.billing_records_teles_sum_2015_09 (userId, peerId, userPhone, units, unitsVAT) VALUES (new.userId, new.peerId, new.userPhone, new.units, new.unitsVAT) ON DUPLICATE KEY UPDATE units = units + new.units, unitsVAT = unitsVAT + new.unitsVAT; END IF; END IF; END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `month_sum_2015_10_trg`;
DELIMITER ;;
CREATE TRIGGER `month_sum_2015_10_trg` BEFORE INSERT ON `billing_records_teles_2015_10` FOR EACH ROW BEGIN IF new.duration > 0 THEN IF new.direction = 'E' THEN INSERT INTO billing_record.billing_records_teles_sum_2015_10 (userId, peerId, userPhone, units, unitsVAT) VALUES (new.userId, new.peerId, new.userPhone, new.units, new.unitsVAT) ON DUPLICATE KEY UPDATE units = units + new.units, unitsVAT = unitsVAT + new.unitsVAT; END IF; END IF; END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `month_sum_2015_11_trg`;
DELIMITER ;;
CREATE TRIGGER `month_sum_2015_11_trg` BEFORE INSERT ON `billing_records_teles_2015_11` FOR EACH ROW BEGIN IF new.duration > 0 THEN IF new.direction = 'E' THEN INSERT INTO billing_record.billing_records_teles_sum_2015_11 (userId, peerId, userPhone, units, unitsVAT) VALUES (new.userId, new.peerId, new.userPhone, new.units, new.unitsVAT) ON DUPLICATE KEY UPDATE units = units + new.units, unitsVAT = unitsVAT + new.unitsVAT; END IF; END IF; END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `month_sum_2015_12_trg`;
DELIMITER ;;
CREATE TRIGGER `month_sum_2015_12_trg` BEFORE INSERT ON `billing_records_teles_2015_12` FOR EACH ROW BEGIN IF new.duration > 0 THEN IF new.direction = 'E' THEN INSERT INTO billing_record.billing_records_teles_sum_2015_12 (userId, peerId, userPhone, units, unitsVAT) VALUES (new.userId, new.peerId, new.userPhone, new.units, new.unitsVAT) ON DUPLICATE KEY UPDATE units = units + new.units, unitsVAT = unitsVAT + new.unitsVAT; END IF; END IF; END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `month_sum_2016_01_trg`;
DELIMITER ;;
CREATE TRIGGER `month_sum_2016_01_trg` BEFORE INSERT ON `billing_records_teles_2016_01` FOR EACH ROW BEGIN IF new.duration > 0 THEN IF new.direction = 'E' THEN INSERT INTO billing_record.billing_records_teles_sum_2016_01 (userId, peerId, userPhone, units, unitsVAT) VALUES (new.userId, new.peerId, new.userPhone, new.units, new.unitsVAT) ON DUPLICATE KEY UPDATE units = units + new.units, unitsVAT = unitsVAT + new.unitsVAT; END IF; END IF; END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `month_sum_2016_02_trg`;
DELIMITER ;;
CREATE TRIGGER `month_sum_2016_02_trg` BEFORE INSERT ON `billing_records_teles_2016_02` FOR EACH ROW BEGIN IF new.duration > 0 THEN IF new.direction = 'E' THEN INSERT INTO billing_record.billing_records_teles_sum_2016_02 (userId, peerId, userPhone, units, unitsVAT) VALUES (new.userId, new.peerId, new.userPhone, new.units, new.unitsVAT) ON DUPLICATE KEY UPDATE units = units + new.units, unitsVAT = unitsVAT + new.unitsVAT; END IF; END IF; END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `month_sum_2016_03_trg`;
DELIMITER ;;
CREATE TRIGGER `month_sum_2016_03_trg` BEFORE INSERT ON `billing_records_teles_2016_03` FOR EACH ROW BEGIN IF new.duration > 0 THEN IF new.direction = 'E' THEN INSERT INTO billing_record.billing_records_teles_sum_2016_03 (userId, peerId, userPhone, units, unitsVAT) VALUES (new.userId, new.peerId, new.userPhone, new.units, new.unitsVAT) ON DUPLICATE KEY UPDATE units = units + new.units, unitsVAT = unitsVAT + new.unitsVAT; END IF; END IF; END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `month_sum_2016_04_trg`;
DELIMITER ;;
CREATE TRIGGER `month_sum_2016_04_trg` BEFORE INSERT ON `billing_records_teles_2016_04` FOR EACH ROW BEGIN IF new.duration > 0 THEN IF new.direction = 'E' THEN INSERT INTO billing_record.billing_records_teles_sum_2016_04 (userId, peerId, userPhone, units, unitsVAT) VALUES (new.userId, new.peerId, new.userPhone, new.units, new.unitsVAT) ON DUPLICATE KEY UPDATE units = units + new.units, unitsVAT = unitsVAT + new.unitsVAT; END IF; END IF; END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `month_sum_2016_05_trg`;
DELIMITER ;;
CREATE TRIGGER `month_sum_2016_05_trg` BEFORE INSERT ON `billing_records_teles_2016_05` FOR EACH ROW BEGIN IF new.duration > 0 THEN IF new.direction = 'E' THEN INSERT INTO billing_record.billing_records_teles_sum_2016_05 (userId, peerId, userPhone, units, unitsVAT) VALUES (new.userId, new.peerId, new.userPhone, new.units, new.unitsVAT) ON DUPLICATE KEY UPDATE units = units + new.units, unitsVAT = unitsVAT + new.unitsVAT; END IF; END IF; END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `month_sum_2016_06_trg`;
DELIMITER ;;
CREATE TRIGGER `month_sum_2016_06_trg` BEFORE INSERT ON `billing_records_teles_2016_06` FOR EACH ROW BEGIN IF new.duration > 0 THEN IF new.direction = 'E' THEN INSERT INTO billing_record.billing_records_teles_sum_2016_06 (userId, peerId, userPhone, units, unitsVAT) VALUES (new.userId, new.peerId, new.userPhone, new.units, new.unitsVAT) ON DUPLICATE KEY UPDATE units = units + new.units, unitsVAT = unitsVAT + new.unitsVAT; END IF; END IF; END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `month_sum_2016_07_trg`;
DELIMITER ;;
CREATE TRIGGER `month_sum_2016_07_trg` BEFORE INSERT ON `billing_records_teles_2016_07` FOR EACH ROW BEGIN IF new.duration > 0 THEN IF new.direction = 'E' THEN INSERT INTO billing_record.billing_records_teles_sum_2016_07 (userId, peerId, userPhone, units, unitsVAT) VALUES (new.userId, new.peerId, new.userPhone, new.units, new.unitsVAT) ON DUPLICATE KEY UPDATE units = units + new.units, unitsVAT = unitsVAT + new.unitsVAT; END IF; END IF; END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `month_sum_2016_08_trg`;
DELIMITER ;;
CREATE TRIGGER `month_sum_2016_08_trg` BEFORE INSERT ON `billing_records_teles_2016_08` FOR EACH ROW BEGIN IF new.duration > 0 THEN IF new.direction = 'E' THEN INSERT INTO billing_record.billing_records_teles_sum_2016_08 (userId, peerId, userPhone, units, unitsVAT) VALUES (new.userId, new.peerId, new.userPhone, new.units, new.unitsVAT) ON DUPLICATE KEY UPDATE units = units + new.units, unitsVAT = unitsVAT + new.unitsVAT; END IF; END IF; END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `month_sum_2016_09_trg`;
DELIMITER ;;
CREATE TRIGGER `month_sum_2016_09_trg` BEFORE INSERT ON `billing_records_teles_2016_09` FOR EACH ROW BEGIN IF new.duration > 0 THEN IF new.direction = 'E' THEN INSERT INTO billing_record.billing_records_teles_sum_2016_09 (userId, peerId, userPhone, units, unitsVAT) VALUES (new.userId, new.peerId, new.userPhone, new.units, new.unitsVAT) ON DUPLICATE KEY UPDATE units = units + new.units, unitsVAT = unitsVAT + new.unitsVAT; END IF; END IF; END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `month_sum_2016_10_trg`;
DELIMITER ;;
CREATE TRIGGER `month_sum_2016_10_trg` BEFORE INSERT ON `billing_records_teles_2016_10` FOR EACH ROW BEGIN IF new.duration > 0 THEN IF new.direction = 'E' THEN INSERT INTO billing_record.billing_records_teles_sum_2016_10 (userId, peerId, userPhone, units, unitsVAT) VALUES (new.userId, new.peerId, new.userPhone, new.units, new.unitsVAT) ON DUPLICATE KEY UPDATE units = units + new.units, unitsVAT = unitsVAT + new.unitsVAT; END IF; END IF; END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `month_sum_2016_11_trg`;
DELIMITER ;;
CREATE TRIGGER `month_sum_2016_11_trg` BEFORE INSERT ON `billing_records_teles_2016_11` FOR EACH ROW BEGIN IF new.duration > 0 THEN IF new.direction = 'E' THEN INSERT INTO billing_record.billing_records_teles_sum_2016_11 (userId, peerId, userPhone, units, unitsVAT) VALUES (new.userId, new.peerId, new.userPhone, new.units, new.unitsVAT) ON DUPLICATE KEY UPDATE units = units + new.units, unitsVAT = unitsVAT + new.unitsVAT; END IF; END IF; END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `month_sum_2016_12_trg`;
DELIMITER ;;
CREATE TRIGGER `month_sum_2016_12_trg` BEFORE INSERT ON `billing_records_teles_2016_12` FOR EACH ROW BEGIN IF new.duration > 0 THEN IF new.direction = 'E' THEN INSERT INTO billing_record.billing_records_teles_sum_2016_12 (userId, peerId, userPhone, units, unitsVAT) VALUES (new.userId, new.peerId, new.userPhone, new.units, new.unitsVAT) ON DUPLICATE KEY UPDATE units = units + new.units, unitsVAT = unitsVAT + new.unitsVAT; END IF; END IF; END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `month_sum_2017_01_trg`;
DELIMITER ;;
CREATE TRIGGER `month_sum_2017_01_trg` BEFORE INSERT ON `billing_records_teles_2017_01` FOR EACH ROW BEGIN IF new.duration > 0 THEN IF new.direction = 'E' THEN INSERT INTO billing_record.billing_records_teles_sum_2017_01 (userId, peerId, userPhone, units, unitsVAT) VALUES (new.userId, new.peerId, new.userPhone, new.units, new.unitsVAT) ON DUPLICATE KEY UPDATE units = units + new.units, unitsVAT = unitsVAT + new.unitsVAT; END IF; END IF; END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `month_sum_2017_02_trg`;
DELIMITER ;;
CREATE TRIGGER `month_sum_2017_02_trg` BEFORE INSERT ON `billing_records_teles_2017_02` FOR EACH ROW BEGIN IF new.duration > 0 THEN IF new.direction = 'E' THEN INSERT INTO billing_record.billing_records_teles_sum_2017_02 (userId, peerId, userPhone, units, unitsVAT) VALUES (new.userId, new.peerId, new.userPhone, new.units, new.unitsVAT) ON DUPLICATE KEY UPDATE units = units + new.units, unitsVAT = unitsVAT + new.unitsVAT; END IF; END IF; END
;;
DELIMITER ;
