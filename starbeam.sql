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

 Date: 09/04/2021 16:22:03
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
  `shoot_id` int(10) DEFAULT NULL COMMENT '关联的花絮id',
  `project_id` int(10) DEFAULT NULL COMMENT '关联的项目id',
  PRIMARY KEY (`id`),
  KEY `SHOOT_BANNER` (`shoot_id`),
  KEY `PROJECT_BANNER` (`project_id`),
  CONSTRAINT `PROJECT_BANNER` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `SHOOT_BANNER` FOREIGN KEY (`shoot_id`) REFERENCES `shoot` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of banner
-- ----------------------------
BEGIN;
INSERT INTO `banner` VALUES (1, 'https://picsum.photos/1024/480/?image=10', '测试花絮轮播', '1617872394000\n', 1, NULL);
INSERT INTO `banner` VALUES (2, 'https://picsum.photos/1024/480/?image=11', '测试花絮轮播', '1617872394000\n', 1, NULL);
INSERT INTO `banner` VALUES (3, 'https://picsum.photos/1024/480/?image=12', '测试花絮轮播', '1617872394000\n', 1, NULL);
INSERT INTO `banner` VALUES (4, 'https://picsum.photos/1024/480/?image=12', '西西里旅游纪实', '1631237766000', 2, NULL);
INSERT INTO `banner` VALUES (5, 'https://picsum.photos/1024/480/?image=12', '旅游纪实', '1631237766000', 2, NULL);
INSERT INTO `banner` VALUES (6, 'https://picsum.photos/1024/480/?image=12', '西西里旅游纪实', '1631237766000', 1, NULL);
INSERT INTO `banner` VALUES (7, '测试项目', '测试项目', '测试项目', NULL, 1);
INSERT INTO `banner` VALUES (8, '测试项目', '测试项目', '测试项目', NULL, 1);
INSERT INTO `banner` VALUES (9, '测试项目', '测试项目', '测试项目', NULL, 1);
COMMIT;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(10) NOT NULL COMMENT '项目分类id',
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '分类名',
  `desc` longtext COLLATE utf8mb4_bin NOT NULL COMMENT '分类描述',
  `small_img` longtext COLLATE utf8mb4_bin NOT NULL COMMENT '封面图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of category
-- ----------------------------
BEGIN;
INSERT INTO `category` VALUES (1, '[WEBSITEDESIGN] 网站设计', '1.品牌网站\n2.企业 + 外贸企业 官网\n3.集团 + 上市公司 官网\n4.产品 + 营销型 网站', 'https://www.tqchina.cn/upload/2017/0523/wangzhansheji.jpg');
INSERT INTO `category` VALUES (2, '[ WECHAT / H5 ] 微信/H5开发', '1. 企业 / 品牌展示 / 活动 / 邀请函 H5开发\n2. 手机版移动官网\n3. 微官网 / 活动 / 游戏开发', 'https://www.tqchina.cn/upload/2017/0523/weixinH5kaifa.jpg');
INSERT INTO `category` VALUES (3, '[ WEBSITEDESIGN ]影视拍摄', '1.平台短视频\n2.线上直播\n3.集团 + 上市公司 官网\n4.产品 + 营销型 网站', 'https://www.tqchina.cn/upload/2017/0523/yingxiangdapian.jpg');
INSERT INTO `category` VALUES (4, '[IMAGE STRATEGY]形象策略', '1.VI形象系统（创新，提示，执行，培训）\n2.标志设计\n3.品牌命名&amp;形象策略\n4.平面广告设计+包装设计', 'https://www.tqchina.cn/upload/2017/0523/xingxiangcelue.jpg');
COMMIT;

-- ----------------------------
-- Table structure for opus
-- ----------------------------
DROP TABLE IF EXISTS `opus`;
CREATE TABLE `opus` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `image_link` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT '封面图',
  `video_link` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT '视频链接',
  `title` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '标题',
  `sub_title` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '副标题',
  `desc` longtext COLLATE utf8mb4_bin NOT NULL COMMENT '描述',
  `createTime` int(13) NOT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of opus
-- ----------------------------
BEGIN;
INSERT INTO `opus` VALUES (1, 'https://i.loli.net/2021/04/09/xe8DsCoPWALjgI3.png', 'video/01.mp4', 'Kiven 拍摄', '艺术涂鸦', '最有名的涂鸦艺术家之一,可能非Basquiat莫属。这位出生于海地、在纽约贫民窟长大的街头艺术家,一生从未接受过任何正式的美术训练,却成为了街头艺术的启蒙人物之一', 1617934167);
INSERT INTO `opus` VALUES (2, 'https://i.loli.net/2021/04/09/PVhi1kKEupCLwj2.png', 'video/02.mp4', 'Tom 拍摄', '复古艺术', '具有独特个性的老式电影宣传片,除了老电影中必含的画面噪波特效外,这款模板素材还拥有变化多样的切换特效,有全屏图像切换,还有分屏式图像切换,有横向切换,还有竖向切换', 1617935766);
INSERT INTO `opus` VALUES (3, 'https://i.loli.net/2021/04/09/Sc4E7WoVwXPNevK.png', 'video/03.mp4', 'Kiven 拍摄', '欧美型男', '我們欧美男同志视频立足於美利堅合眾國,對全球華人服務,受北美法律保護。版權所有,未經授權禁止複製或建立鏡像。', 1617931166);
INSERT INTO `opus` VALUES (4, 'https://i.loli.net/2021/04/09/j1NorfzCsvp9iFG.png', 'video/04.mp4', 'Kiven 拍摄', '西西里旅游纪实', '是通过演员阿部力拜访住在海外的中国人,来介绍世界各地风土人情的旅游式纪录片', 1617932166);
INSERT INTO `opus` VALUES (5, 'https://i.loli.net/2021/04/09/cuxQegnpS7q9WKf.png', 'viedo/05.mp4', 'Kiven 拍摄', '日本旅游纪实', '士山还有东京游览,山顶高尔夫会所很安静,夜晚在温泉里仰望天空,没有星星,', 1617932266);
INSERT INTO `opus` VALUES (6, 'https://i.loli.net/2021/04/09/sNJ2fwPDU3QI7vk.png', 'video/06.mp4', 'Kiven 拍摄', '野外求生记录片', '克里斯和巴利都是军人出生,克里斯从小就在毛利哈瑙的环境中长大,求生已经成为本能。两人将共同面对很多极端条件,挑战不可能。', 1617935767);
COMMIT;

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` int(10) NOT NULL COMMENT 'id',
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '项目名',
  `address` longtext COLLATE utf8mb4_bin NOT NULL COMMENT '项目地址',
  `desc` longtext COLLATE utf8mb4_bin NOT NULL COMMENT '项目描述',
  `createTime` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '创建时间',
  `cid` int(10) DEFAULT NULL COMMENT '分类id',
  PRIMARY KEY (`id`),
  KEY `PROJECT_CATEGORY` (`cid`),
  CONSTRAINT `PROJECT_CATEGORY` FOREIGN KEY (`cid`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of project
-- ----------------------------
BEGIN;
INSERT INTO `project` VALUES (1, '测试项目', '测试项目', '测试项目', '测试项目', 1);
INSERT INTO `project` VALUES (2, '测试项目2', '测试项目2', '测试项目2', '测试项目2', 2);
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
  `small_img` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '小图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of shoot
-- ----------------------------
BEGIN;
INSERT INTO `shoot` VALUES (1, '1617872394000', '荒野求生', '野外求生记录片', '克里斯和巴利都是军人出生,克里斯从小就在毛利哈瑙的环境中长大,求生已经成为本能。两人将共同面对很多极端条件,挑战不可能。', 'https://picsum.photos/1024/480/?image=10');
INSERT INTO `shoot` VALUES (2, '1631237766000', '国外旅游', '国外旅游纪录片', '国外旅游纪录片', 'https://i.loli.net/2021/04/09/obYijPscfea9Vuk.jpg');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
