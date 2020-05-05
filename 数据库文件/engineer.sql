/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : software

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 06/05/2020 00:26:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for engineer
-- ----------------------------
DROP TABLE IF EXISTS `engineer`;
CREATE TABLE `engineer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` int(1) NULL DEFAULT NULL,
  `birth_date` datetime(0) NULL DEFAULT NULL,
  `education` int(255) NULL DEFAULT NULL,
  `hometown` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telphone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `seniority` int(4) NULL DEFAULT NULL,
  `basic_wage` double(255, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of engineer
-- ----------------------------
INSERT INTO `engineer` VALUES (1, '20170528', '张贺', 1, '1982-04-01 00:00:00', 2, '嘉兴', '杭州拱墅区', '17322861234', 13, 15400);
INSERT INTO `engineer` VALUES (2, '20170527', '熊星琼', 1, '1978-11-03 00:00:00', 1, '绍兴', '杭州西湖区', '17322861458', 20, 21400);
INSERT INTO `engineer` VALUES (3, '20170565', '袁惠敏', 0, '1989-05-15 00:00:00', 2, '杭州', '杭州临安区', '17322864874', 9, 11500);

SET FOREIGN_KEY_CHECKS = 1;
