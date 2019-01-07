/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : ms_student

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2019-01-07 10:08:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ms_crs
-- ----------------------------
DROP TABLE IF EXISTS `ms_crs`;
CREATE TABLE `ms_crs` (
  `crs_id` int(255) NOT NULL,
  `crs_name` varchar(255) DEFAULT NULL,
  `tec_id` int(255) DEFAULT NULL,
  PRIMARY KEY (`crs_id`),
  KEY `tec_id` (`tec_id`),
  CONSTRAINT `ms_crs_ibfk_1` FOREIGN KEY (`tec_id`) REFERENCES `ms_tec` (`tec_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ms_crs
-- ----------------------------

-- ----------------------------
-- Table structure for ms_scs
-- ----------------------------
DROP TABLE IF EXISTS `ms_scs`;
CREATE TABLE `ms_scs` (
  `std_id` int(255) NOT NULL,
  `crs_id` int(255) NOT NULL,
  KEY `std_id` (`std_id`),
  KEY `crs_id` (`crs_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ms_scs
-- ----------------------------

-- ----------------------------
-- Table structure for ms_std
-- ----------------------------
DROP TABLE IF EXISTS `ms_std`;
CREATE TABLE `ms_std` (
  `std_id` int(255) NOT NULL,
  `std_pw` varchar(255) DEFAULT NULL,
  `std_name` varchar(255) DEFAULT NULL,
  `std_gender` varchar(255) DEFAULT NULL,
  `std_class` varchar(255) DEFAULT NULL,
  `std_tel` int(255) DEFAULT NULL,
  PRIMARY KEY (`std_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ms_std
-- ----------------------------

-- ----------------------------
-- Table structure for ms_tec
-- ----------------------------
DROP TABLE IF EXISTS `ms_tec`;
CREATE TABLE `ms_tec` (
  `tec_id` int(255) NOT NULL,
  `tec_pw` varchar(255) DEFAULT NULL,
  `tec_name` varchar(255) DEFAULT NULL,
  `tec_tel` int(255) DEFAULT NULL,
  PRIMARY KEY (`tec_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ms_tec
-- ----------------------------
