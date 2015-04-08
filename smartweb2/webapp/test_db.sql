/*
Navicat MySQL Data Transfer

Source Server         : test_db
Source Server Version : 50514
Source Host           : localhost:3306
Source Database       : test_db

Target Server Type    : MYSQL
Target Server Version : 50514
File Encoding         : 65001

Date: 2015-04-08 01:05:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `resource`
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seq` decimal(22,0) DEFAULT NULL,
  `text` varchar(100) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resource
-- ----------------------------

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_design_standard`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_design_standard`;
CREATE TABLE `tbl_design_standard` (
  `STANDARD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `STANDARD_NAME` varchar(200) NOT NULL,
  `FILE_PATH` varchar(200) DEFAULT NULL,
  `SORT_ID` int(11) DEFAULT NULL,
  `CREATE_TIME` datetime NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `UPDATE_TIME` datetime NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `STANDARD_FOLDER` int(11) DEFAULT NULL,
  PRIMARY KEY (`STANDARD_ID`),
  KEY `CREATED_BY` (`CREATED_BY`),
  KEY `UPDATED_BY` (`UPDATED_BY`),
  KEY `STANDARD_FOLDER` (`STANDARD_FOLDER`),
  CONSTRAINT `tbl_design_standard_ibfk_1` FOREIGN KEY (`CREATED_BY`) REFERENCES `user` (`id`),
  CONSTRAINT `tbl_design_standard_ibfk_2` FOREIGN KEY (`UPDATED_BY`) REFERENCES `user` (`id`),
  CONSTRAINT `tbl_design_standard_ibfk_3` FOREIGN KEY (`STANDARD_FOLDER`) REFERENCES `tbl_standard_folder` (`STANDARD_FOLDER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_design_standard
-- ----------------------------
INSERT INTO `tbl_design_standard` VALUES ('1', '混合运算', null, '1', '2015-04-04 15:26:54', '2', '2015-04-04 15:27:04', '2', '3');
INSERT INTO `tbl_design_standard` VALUES ('2', '等式的加减法', null, '2', '2015-04-04 15:27:45', '8', '2015-04-04 15:27:50', '2', '1');
INSERT INTO `tbl_design_standard` VALUES ('3', '速算与巧算', null, null, '2015-04-04 16:31:32', '2', '2015-04-04 16:31:41', '8', '3');
INSERT INTO `tbl_design_standard` VALUES ('4', '比长短', null, null, '2015-04-04 16:32:15', '2', '2015-04-04 16:32:27', '2', '1');
INSERT INTO `tbl_design_standard` VALUES ('5', '找规律填数', null, null, '2015-04-04 16:33:11', '2', '2015-04-04 16:33:18', '2', '3');

-- ----------------------------
-- Table structure for `tbl_standard_folder`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_standard_folder`;
CREATE TABLE `tbl_standard_folder` (
  `STANDARD_FOLDER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FOLDER_NAME` varchar(200) NOT NULL,
  `PARENT_ID` int(11) DEFAULT NULL,
  `SORT_ID` int(11) DEFAULT NULL,
  `CREATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `CREATED_BY` int(11) NOT NULL,
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_BY` int(11) NOT NULL,
  PRIMARY KEY (`STANDARD_FOLDER_ID`),
  KEY `CREATED_BY` (`CREATED_BY`),
  KEY `UPDATED_BY` (`UPDATED_BY`),
  KEY `PARENT_ID` (`PARENT_ID`),
  CONSTRAINT `tbl_standard_folder_ibfk_1` FOREIGN KEY (`CREATED_BY`) REFERENCES `user` (`id`),
  CONSTRAINT `tbl_standard_folder_ibfk_2` FOREIGN KEY (`UPDATED_BY`) REFERENCES `user` (`id`),
  CONSTRAINT `tbl_standard_folder_ibfk_3` FOREIGN KEY (`PARENT_ID`) REFERENCES `tbl_standard_folder` (`STANDARD_FOLDER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_standard_folder
-- ----------------------------
INSERT INTO `tbl_standard_folder` VALUES ('1', 'MVC思想概述', null, null, '2015-04-04 01:26:21', '2', '2015-04-04 01:26:31', '2');
INSERT INTO `tbl_standard_folder` VALUES ('2', 'Struts 2的起源和背景', null, null, '2015-04-04 01:27:20', '2', '2015-04-04 01:27:27', '2');
INSERT INTO `tbl_standard_folder` VALUES ('3', 'Struts 2 体系介绍', null, null, '2015-04-04 01:28:00', '2', '2015-04-04 01:28:19', '2');
INSERT INTO `tbl_standard_folder` VALUES ('4', 'Web技术的发展', '1', null, '2015-04-04 01:28:48', '2', '2015-04-04 01:28:54', '2');
INSERT INTO `tbl_standard_folder` VALUES ('5', 'MVC思想及其优势', '1', null, '2015-04-04 02:00:10', '2', '2015-04-04 01:57:10', '2');
INSERT INTO `tbl_standard_folder` VALUES ('6', 'Struts1 简介及存在的问题', '2', null, '2015-04-04 01:58:06', '2', '2015-04-04 01:58:13', '2');
INSERT INTO `tbl_standard_folder` VALUES ('7', 'test', null, null, '2015-04-05 22:25:08', '2', '2015-04-05 22:25:08', '2');
INSERT INTO `tbl_standard_folder` VALUES ('8', '测试文件夹', null, null, '2015-04-07 22:55:44', '2', '2015-04-07 22:55:44', '2');
INSERT INTO `tbl_standard_folder` VALUES ('9', 'java编程思想', null, null, '2015-04-07 23:15:40', '2', '2015-04-07 23:15:42', '2');
INSERT INTO `tbl_standard_folder` VALUES ('10', 'java编程思想2', null, null, '2015-04-07 23:50:20', '2', '2015-04-07 23:50:20', '2');
INSERT INTO `tbl_standard_folder` VALUES ('11', '3位数的加减法', '2', null, '2015-04-08 00:15:11', '2', '2015-04-08 00:15:11', '2');
INSERT INTO `tbl_standard_folder` VALUES ('12', '3位数的加减法', '2', null, '2015-04-08 00:15:33', '2', '2015-04-08 00:15:33', '2');
INSERT INTO `tbl_standard_folder` VALUES ('13', '3位数的加减法', '2', null, '2015-04-08 00:15:34', '2', '2015-04-08 00:15:34', '2');
INSERT INTO `tbl_standard_folder` VALUES ('14', '3位数的加减法', '2', null, '2015-04-08 00:15:34', '2', '2015-04-08 00:15:34', '2');
INSERT INTO `tbl_standard_folder` VALUES ('15', '3位数的加减法', '2', null, '2015-04-08 00:15:35', '2', '2015-04-08 00:15:35', '2');
INSERT INTO `tbl_standard_folder` VALUES ('16', '3位数的加减法', '2', null, '2015-04-08 00:15:42', '2', '2015-04-08 00:15:42', '2');
INSERT INTO `tbl_standard_folder` VALUES ('17', '3位数的加减法', '2', null, '2015-04-08 00:15:42', '2', '2015-04-08 00:15:42', '2');
INSERT INTO `tbl_standard_folder` VALUES ('18', '3位数的加减法', '2', null, '2015-04-08 00:15:42', '2', '2015-04-08 00:15:42', '2');
INSERT INTO `tbl_standard_folder` VALUES ('19', '3位数的加减法', '2', null, '2015-04-08 00:15:43', '2', '2015-04-08 00:15:43', '2');
INSERT INTO `tbl_standard_folder` VALUES ('20', '3位数的加减法', '2', null, '2015-04-08 00:16:32', '2', '2015-04-08 00:16:32', '2');
INSERT INTO `tbl_standard_folder` VALUES ('21', '3位数的加减法', '2', null, '2015-04-08 00:16:33', '2', '2015-04-08 00:16:33', '2');
INSERT INTO `tbl_standard_folder` VALUES ('22', '3位数的加减法', '2', null, '2015-04-08 00:16:33', '2', '2015-04-08 00:16:33', '2');
INSERT INTO `tbl_standard_folder` VALUES ('23', '3位数的加减法', '2', null, '2015-04-08 00:16:33', '2', '2015-04-08 00:16:33', '2');
INSERT INTO `tbl_standard_folder` VALUES ('24', '3位数的加减法', '2', null, '2015-04-08 00:16:33', '2', '2015-04-08 00:16:33', '2');
INSERT INTO `tbl_standard_folder` VALUES ('25', '3位数的加减法', '2', null, '2015-04-08 00:16:34', '2', '2015-04-08 00:16:34', '2');
INSERT INTO `tbl_standard_folder` VALUES ('26', '不等式的加减法', '2', null, '2015-04-08 00:18:56', '2', '2015-04-08 00:19:14', '2');
INSERT INTO `tbl_standard_folder` VALUES ('27', 'spring mvc', '9', null, '2015-04-08 00:20:59', '2', '2015-04-08 00:20:59', '2');
INSERT INTO `tbl_standard_folder` VALUES ('28', 'haha', '9', null, '2015-04-08 00:30:44', '2', '2015-04-08 00:30:44', '2');
INSERT INTO `tbl_standard_folder` VALUES ('29', 'mybatis', '9', null, '2015-04-08 00:34:50', '2', '2015-04-08 00:34:50', '2');
INSERT INTO `tbl_standard_folder` VALUES ('30', 'mybatis', '9', null, '2015-04-08 00:34:53', '2', '2015-04-08 00:34:53', '2');
INSERT INTO `tbl_standard_folder` VALUES ('31', 'hibernate', '9', null, '2015-04-08 00:42:33', '2', '2015-04-08 00:42:33', '2');

-- ----------------------------
-- Table structure for `t_login_log`
-- ----------------------------
DROP TABLE IF EXISTS `t_login_log`;
CREATE TABLE `t_login_log` (
  `login_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `ip` varchar(23) DEFAULT NULL,
  `login_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`login_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_login_log
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', 'zhangzhuo', 'zz', '2015-03-28 19:02:45', '2015-03-28 19:02:45', null);
INSERT INTO `user` VALUES ('8', '先入为主', '言', '2015-03-30 16:27:24', '2015-03-30 16:27:24', null);

-- ----------------------------
-- Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
