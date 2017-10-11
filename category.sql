/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50540
Source Host           : 127.0.0.1:3306
Source Database       : testbatch

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2017-10-11 13:53:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` varchar(40) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '商品', '1', '18');
INSERT INTO `category` VALUES ('2', '平板电视', '2', '7');
INSERT INTO `category` VALUES ('3', '冰箱', '8', '11');
INSERT INTO `category` VALUES ('4', '笔记本', '12', '17');
INSERT INTO `category` VALUES ('5', '长虹', '3', '4');
INSERT INTO `category` VALUES ('6', '索尼', '5', '6');
INSERT INTO `category` VALUES ('7', '西门子', '9', '10');
INSERT INTO `category` VALUES ('8', 'thinkpad', '13', '14');
INSERT INTO `category` VALUES ('9', 'dell', '15', '16');
