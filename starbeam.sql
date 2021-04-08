/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : localhost:3306
 Source Schema         : starbeam

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 08/04/2021 17:23:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `link` longtext COLLATE utf8mb4_bin NOT NULL COMMENT '图片链接',
  `desc` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '图片描述',
  `createTime` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '创建时间',
  `shoot_id` int(10) NOT NULL COMMENT '关联的花絮id',
  PRIMARY KEY (`id`),
  KEY `SHOOT_BANNER` (`shoot_id`),
  CONSTRAINT `SHOOT_BANNER` FOREIGN KEY (`shoot_id`) REFERENCES `shoot` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of banner
-- ----------------------------
BEGIN;
INSERT INTO `banner` VALUES (1, '测试花絮轮播', '测试花絮轮播', '1617872394000\n', 3);
INSERT INTO `banner` VALUES (2, '测试花絮轮播', '测试花絮轮播', '1617872394000\n', 3);
INSERT INTO `banner` VALUES (3, '测试花絮轮播', '测试花絮轮播', '1617872394000\n', 3);
COMMIT;

-- ----------------------------
-- Table structure for opus
-- ----------------------------
DROP TABLE IF EXISTS `opus`;
CREATE TABLE `opus` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `image_link` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT '封面图',
  `video_link` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT '视频链接',
  `title` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '标题',
  `sub_title` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '副标题',
  `desc` longtext COLLATE utf8mb4_bin NOT NULL COMMENT '描述',
  `createTime` int(13) NOT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of opus
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for shoot
-- ----------------------------
DROP TABLE IF EXISTS `shoot`;
CREATE TABLE `shoot` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `createTime` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '创建时间',
  `title` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '标题·',
  `sub_title` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '副标题',
  `desc` longtext COLLATE utf8mb4_bin NOT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of shoot
-- ----------------------------
BEGIN;
INSERT INTO `shoot` VALUES (3, '1617872394000', '测试花絮', '测试花絮', '测试花絮');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
