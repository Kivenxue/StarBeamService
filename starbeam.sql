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

 Date: 13/04/2021 17:30:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for access
-- ----------------------------
DROP TABLE IF EXISTS `access`;
CREATE TABLE `access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `action_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of access
-- ----------------------------
BEGIN;
INSERT INTO `access` VALUES (9, '管理员管理', '', 1, '', 1, 0, 100, '', 1617166227);
INSERT INTO `access` VALUES (10, '角色管理', '', 1, '', 1, 0, 100, '', 1617166258);
INSERT INTO `access` VALUES (12, '管理员管理', '管理员列表', 2, 'manager', 1, 9, 100, '111', 1617166934);
INSERT INTO `access` VALUES (13, '管理员管理', '增加管理员', 2, 'manager/add', 1, 9, 100, '', 1617167014);
INSERT INTO `access` VALUES (14, '管理员管理', '修改管理员', 3, 'manager/edit', 1, 9, 100, '', 1617167068);
INSERT INTO `access` VALUES (15, '角色管理', '角色列表', 2, 'role', 1, 10, 100, '', 1617167109);
INSERT INTO `access` VALUES (16, '角色管理', '增加角色', 2, 'role/add', 1, 10, 100, '', 1617167135);
INSERT INTO `access` VALUES (22, '权限管理', '', 1, '', 1, 0, 100, '', 1617248453);
INSERT INTO `access` VALUES (23, '权限管理', '增加权限', 2, 'access/add', 1, 22, 100, '', 1617248481);
INSERT INTO `access` VALUES (24, '权限管理', '修改权限', 3, 'access/edit', 1, 22, 100, '', 1617248771);
INSERT INTO `access` VALUES (25, '角色管理', '删除角色', 3, 'role/delete', 1, 10, 100, '', 1617248810);
INSERT INTO `access` VALUES (26, '管理员管理', '删除管理员', 3, 'manager/delete', 1, 9, 100, '', 1617271892);
INSERT INTO `access` VALUES (27, '权限管理', '权限列表', 2, 'access', 1, 22, 100, '', 1617353161);
INSERT INTO `access` VALUES (28, '角色管理', '编辑角色', 3, 'role/edit', 1, 10, 100, '', 1617698106);
INSERT INTO `access` VALUES (29, '角色管理', '执行增加-角色', 3, 'role/doAdd', 1, 10, 100, '', 1617698203);
INSERT INTO `access` VALUES (30, '角色管理', '执行修改-角色', 3, 'role/doEdit', 1, 10, 100, '', 1617698226);
INSERT INTO `access` VALUES (31, '管理员管理', '执行修改-管理员', 3, 'manager/doEdit', 1, 9, 100, '', 1617759485);
INSERT INTO `access` VALUES (32, '管理员管理', '执行增加-管理员', 3, 'manager/doAdd', 1, 9, 100, '', 1617759497);
INSERT INTO `access` VALUES (33, '角色管理', '角色授权', 3, 'role/auth', 1, 10, 100, '', 1617759662);
INSERT INTO `access` VALUES (34, '角色管理', '角色授权-执行授权', 3, 'role/doAuth', 1, 10, 100, '', 1617759687);
INSERT INTO `access` VALUES (35, '权限管理', '执行增加-权限', 3, 'access/doAdd', 1, 22, 100, '', 1617759835);
INSERT INTO `access` VALUES (36, '权限管理', '执行修改-权限', 3, 'access/doEdit', 1, 22, 100, '', 1617759854);
INSERT INTO `access` VALUES (37, '权限管理', '删除权限', 3, 'access/delete', 1, 22, 100, '', 1617759893);
COMMIT;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `password` char(32) COLLATE utf8mb4_bin NOT NULL,
  `mobile` char(11) COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  `is_super` tinyint(1) DEFAULT NULL,
  `last_login` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
BEGIN;
INSERT INTO `admin` VALUES (3, 'admin', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, 4, NULL, 1, NULL);
INSERT INTO `admin` VALUES (24, 'tom', 'e10adc3949ba59abbe56e057f20f883e', '1520171111', '554066692@qq.com', NULL, 7, NULL, 0, NULL);
INSERT INTO `admin` VALUES (26, 'loem', 'e10adc3949ba59abbe56e057f20f883e', '152017222', '11114292@qq.com', 1, 9, 1616926119, 0, NULL);
COMMIT;

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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `SHOOT_BANNER` (`shoot_id`) USING BTREE,
  KEY `PROJECT_BANNER` (`project_id`) USING BTREE,
  CONSTRAINT `PROJECT_BANNER` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `SHOOT_BANNER` FOREIGN KEY (`shoot_id`) REFERENCES `shoot` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

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
  `cid` int(10) DEFAULT NULL COMMENT '分类id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `CATEGORY_OPUS` (`cid`),
  CONSTRAINT `CATEGORY_OPUS` FOREIGN KEY (`cid`) REFERENCES `opusCategory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of opus
-- ----------------------------
BEGIN;
INSERT INTO `opus` VALUES (1, 'https://i.loli.net/2021/04/09/xe8DsCoPWALjgI3.png', 'video/01.mp4', 'Kiven 拍摄', '艺术涂鸦', '最有名的涂鸦艺术家之一,可能非Basquiat莫属。这位出生于海地、在纽约贫民窟长大的街头艺术家,一生从未接受过任何正式的美术训练,却成为了街头艺术的启蒙人物之一', 1617934167, 1);
INSERT INTO `opus` VALUES (2, 'https://i.loli.net/2021/04/09/PVhi1kKEupCLwj2.png', 'video/02.mp4', 'Tom 拍摄', '复古艺术', '具有独特个性的老式电影宣传片,除了老电影中必含的画面噪波特效外,这款模板素材还拥有变化多样的切换特效,有全屏图像切换,还有分屏式图像切换,有横向切换,还有竖向切换', 1617935766, 1);
INSERT INTO `opus` VALUES (3, 'https://i.loli.net/2021/04/09/Sc4E7WoVwXPNevK.png', 'video/03.mp4', 'Kiven 拍摄', '欧美型男', '我們欧美男同志视频立足於美利堅合眾國,對全球華人服務,受北美法律保護。版權所有,未經授權禁止複製或建立鏡像。', 1617931166, 1);
INSERT INTO `opus` VALUES (4, 'https://i.loli.net/2021/04/09/j1NorfzCsvp9iFG.png', 'video/04.mp4', 'Kiven 拍摄', '西西里旅游纪实', '是通过演员阿部力拜访住在海外的中国人,来介绍世界各地风土人情的旅游式纪录片', 1617932166, 2);
INSERT INTO `opus` VALUES (5, 'https://i.loli.net/2021/04/09/cuxQegnpS7q9WKf.png', 'viedo/05.mp4', 'Kiven 拍摄', '日本旅游纪实', '士山还有东京游览,山顶高尔夫会所很安静,夜晚在温泉里仰望天空,没有星星,', 1617932266, 2);
INSERT INTO `opus` VALUES (6, 'https://i.loli.net/2021/04/09/sNJ2fwPDU3QI7vk.png', 'video/06.mp4', 'Kiven 拍摄', '野外求生记录片', '克里斯和巴利都是军人出生,克里斯从小就在毛利哈瑙的环境中长大,求生已经成为本能。两人将共同面对很多极端条件,挑战不可能。', 1617935767, 2);
COMMIT;

-- ----------------------------
-- Table structure for opusCategory
-- ----------------------------
DROP TABLE IF EXISTS `opusCategory`;
CREATE TABLE `opusCategory` (
  `id` int(10) NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '分类名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of opusCategory
-- ----------------------------
BEGIN;
INSERT INTO `opusCategory` VALUES (1, '文艺片');
INSERT INTO `opusCategory` VALUES (2, '纪录片');
COMMIT;

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` int(10) NOT NULL COMMENT 'id',
  `address` longtext COLLATE utf8mb4_bin COMMENT '项目地址',
  `createTime` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '创建时间',
  `cid` int(10) NOT NULL COMMENT '分类id',
  `itemImg` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '图片地址',
  `itemTitle` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '项目标题',
  `itemSubTitle` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '项目副标题',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `PROJECT_CATEGORY` (`cid`) USING BTREE,
  CONSTRAINT `PROJECT_CATEGORY` FOREIGN KEY (`cid`) REFERENCES `projectcategory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of project
-- ----------------------------
BEGIN;
INSERT INTO `project` VALUES (1, '测试项目', '1618201898', 1, 'https://i.loli.net/2021/04/12/yHYopbjki14ZqAR.png', '鲜花行业官网', '企业集团类网站、极简风、品牌型官网');
INSERT INTO `project` VALUES (2, '', '1618201898', 1, 'https://i.loli.net/2021/04/12/gKb9PXWVMJtidHn.png', '摄影行业官网', '企业集团类网站、极简风、品牌型官网');
INSERT INTO `project` VALUES (3, '', '1618201898', 1, 'https://i.loli.net/2021/04/12/FdfO85cAP1CZw6L.png', '极简风企业官网', '企业集团类网站、文化传媒行业、品牌官网');
INSERT INTO `project` VALUES (4, NULL, '1618201898', 1, 'https://i.loli.net/2021/04/12/MhBDJmtd9kx1yQq.png', '建筑类企业官网', '企业集团类网站、建筑行业、品牌型官网');
INSERT INTO `project` VALUES (5, NULL, '1618201898', 1, 'https://i.loli.net/2021/04/12/A98OloyFPUpHgns.png', '广告类企业官网', '企业集团类网站、广告行业、品牌型官网');
INSERT INTO `project` VALUES (6, NULL, '1618201898', 1, 'https://i.loli.net/2021/04/12/K31P6N8g7CGyq4W.png', '极简风企业官网', '企业集团类网站、互联网行业、品牌型官网');
COMMIT;

-- ----------------------------
-- Table structure for projectCategory
-- ----------------------------
DROP TABLE IF EXISTS `projectCategory`;
CREATE TABLE `projectCategory` (
  `id` int(10) NOT NULL COMMENT '项目分类id',
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '分类名',
  `desc` longtext COLLATE utf8mb4_bin NOT NULL COMMENT '分类描述',
  `small_img` longtext COLLATE utf8mb4_bin NOT NULL COMMENT '封面图片',
  `cate_id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '分类子标题',
  `subDesc` text COLLATE utf8mb4_bin COMMENT '分类副描述',
  `subTitle` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '分类子标题(英文)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of projectCategory
-- ----------------------------
BEGIN;
INSERT INTO `projectCategory` VALUES (1, '[WEBSITEDESIGN] 网站设计', '1.品牌网站\n2.企业 + 外贸企业 官网\n3.集团 + 上市公司 官网\n4.产品 + 营销型 网站', 'https://www.tqchina.cn/upload/2017/0523/wangzhansheji.jpg', 1, '品牌型网站', '品牌型网站着重展示企业文化和品牌特色，非常强调创意设计与文化的结合，能通过视觉感官的冲击，从品牌高度，品牌VI系统延展整合到品牌网站设计/官网设计的视觉效果与交互中，公司网站视觉界面设计令目标受众对品牌产生深刻而美好的印象。', 'Brand website');
INSERT INTO `projectCategory` VALUES (2, '[ WECHAT / H5 ] 微信/H5开发', '1. 企业 / 品牌展示 / 活动 / 邀请函 H5开发\n2. 手机版移动官网\n3. 微官网 / 活动 / 游戏开发', 'https://www.tqchina.cn/upload/2017/0523/weixinH5kaifa.jpg', 2, '移动端网站案例', '品牌型网站着重展示企业文化和品牌特色，非常强调创意设计与文化的结合，能通过视觉感官的冲击，从品牌高度，品牌VI系统延展整合到品牌网站设计/官网设计的视觉效果与交互中，公司网站视觉界面设计令目标受众对品牌产生深刻而美好的印象。', 'Brand website');
INSERT INTO `projectCategory` VALUES (3, '[ WEBSITEDESIGN ]影视拍摄', '1.平台短视频\n2.线上直播\n3.集团 + 上市公司 官网\n4.产品 + 营销型 网站', 'https://www.tqchina.cn/upload/2017/0523/yingxiangdapian.jpg', 3, NULL, NULL, NULL);
INSERT INTO `projectCategory` VALUES (4, '[IMAGE STRATEGY]形象策略', '1.VI形象系统（创新，提示，执行，培训）\n2.标志设计\n3.品牌命名&amp;形象策略\n4.平面广告设计+包装设计', 'https://www.tqchina.cn/upload/2017/0523/xingxiangcelue.jpg', 4, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of role
-- ----------------------------
BEGIN;
INSERT INTO `role` VALUES (4, '技术部门', '技术部门', 1, 1616659119);
INSERT INTO `role` VALUES (7, '销售部门', '销售部门', 1, 1616662026);
INSERT INTO `role` VALUES (8, '超级管理员', '超级管理员', 1, 1616924540);
INSERT INTO `role` VALUES (9, '财务部门', '财务部门', 1, 1616924547);
COMMIT;

-- ----------------------------
-- Table structure for role_access
-- ----------------------------
DROP TABLE IF EXISTS `role_access`;
CREATE TABLE `role_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `access_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;
 
-- ----------------------------
-- Records of role_access
-- ----------------------------
BEGIN;
INSERT INTO `role_access` VALUES (84, 25, 8);
INSERT INTO `role_access` VALUES (85, 9, 4);
INSERT INTO `role_access` VALUES (86, 12, 4);
INSERT INTO `role_access` VALUES (87, 13, 4);
INSERT INTO `role_access` VALUES (88, 14, 4);
INSERT INTO `role_access` VALUES (89, 26, 4);
INSERT INTO `role_access` VALUES (90, 10, 4);
INSERT INTO `role_access` VALUES (91, 15, 4);
INSERT INTO `role_access` VALUES (92, 16, 4);
INSERT INTO `role_access` VALUES (93, 25, 4);
INSERT INTO `role_access` VALUES (94, 22, 4);
INSERT INTO `role_access` VALUES (95, 9, 7);
INSERT INTO `role_access` VALUES (96, 12, 7);
INSERT INTO `role_access` VALUES (97, 13, 7);
INSERT INTO `role_access` VALUES (98, 14, 7);
INSERT INTO `role_access` VALUES (99, 26, 7);
INSERT INTO `role_access` VALUES (109, 9, 9);
INSERT INTO `role_access` VALUES (110, 12, 9);
INSERT INTO `role_access` VALUES (111, 13, 9);
INSERT INTO `role_access` VALUES (112, 14, 9);
INSERT INTO `role_access` VALUES (113, 26, 9);
INSERT INTO `role_access` VALUES (114, 10, 9);
INSERT INTO `role_access` VALUES (115, 15, 9);
INSERT INTO `role_access` VALUES (116, 16, 9);
INSERT INTO `role_access` VALUES (117, 25, 9);
INSERT INTO `role_access` VALUES (118, 28, 9);
INSERT INTO `role_access` VALUES (119, 29, 9);
INSERT INTO `role_access` VALUES (120, 30, 9);
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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of shoot
-- ----------------------------
BEGIN;
INSERT INTO `shoot` VALUES (1, '1617872394000', '荒野求生', '野外求生记录片', '克里斯和巴利都是军人出生,克里斯从小就在毛利哈瑙的环境中长大,求生已经成为本能。两人将共同面对很多极端条件,挑战不可能。', 'https://picsum.photos/1024/480/?image=10');
INSERT INTO `shoot` VALUES (2, '1631237766000', '国外旅游', '国外旅游纪录片', '国外旅游纪录片', 'https://i.loli.net/2021/04/09/obYijPscfea9Vuk.jpg');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
