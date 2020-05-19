/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : db_student_attendance

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 29/06/2019 18:39:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_banji
-- ----------------------------
DROP TABLE IF EXISTS `t_banji`;
CREATE TABLE `t_banji`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banjiname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `banjinum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT NULL,
  `yuanxi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zhuanye` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_banji
-- ----------------------------
INSERT INTO `t_banji` VALUES (1, '软件1102', 'ruanjian001', '2018-05-24 09:59:18', '计算机学院', '软件工程');
INSERT INTO `t_banji` VALUES (2, '计算机1102', 'jisuanji001', '2018-05-24 09:59:44', '计算机学院', '计算机科学与技术');
INSERT INTO `t_banji` VALUES (4, '信安1101', 'xinan001', '2018-05-24 10:01:32', '信息学院', '信息安全');
INSERT INTO `t_banji` VALUES (5, '机械1101', 'jixie001', '2018-05-24 10:01:56', '机械学院', '机械设计');

-- ----------------------------
-- Table structure for t_kaoqinlog
-- ----------------------------
DROP TABLE IF EXISTS `t_kaoqinlog`;
CREATE TABLE `t_kaoqinlog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banjinum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `codenum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT NULL,
  `iskuangke` int(11) NOT NULL,
  `kechengname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kuangkenum` int(11) NOT NULL,
  `riqi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `teacher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_kaoqinlog
-- ----------------------------
INSERT INTO `t_kaoqinlog` VALUES (1, 'ruanjian001', '张三', '2018-05-24 13:58:02', 1, '计算机理论', 1, '2018-05-24', '张老师');
INSERT INTO `t_kaoqinlog` VALUES (2, 'ruanjian001', '张三', '2018-05-24 13:58:35', 1, '大学数学', 1, '2018-05-24', '张老师');
INSERT INTO `t_kaoqinlog` VALUES (4, 'jisuanji001', '李四', '2018-05-24 14:16:48', 1, '马克思', 1, '2018-05-17', '李老师');
INSERT INTO `t_kaoqinlog` VALUES (5, 'jisuanji001', '李四', '2018-05-24 14:17:25', 1, '计算机理论', 3, '2018-05-19', '李老师');
INSERT INTO `t_kaoqinlog` VALUES (7, 'jisuanji001', '王麻子', '2018-05-24 15:00:59', 1, '大学英语', 1, '2018-05-11', '李老师');

-- ----------------------------
-- Table structure for t_kecheng
-- ----------------------------
DROP TABLE IF EXISTS `t_kecheng`;
CREATE TABLE `t_kecheng`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banji` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `banjinum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT NULL,
  `kechenglock` int(11) NOT NULL,
  `kechengname1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kechengname2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kechengname3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kechengname4` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kechengname5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kechengname6` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kechengname7` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_kecheng
-- ----------------------------
INSERT INTO `t_kecheng` VALUES (1, NULL, 'ruanjian001', '2018-05-24 10:11:05', 1, '大学英语', '大学数学', '计算机理论', 'Java', '汇编', '', '');
INSERT INTO `t_kecheng` VALUES (3, NULL, 'ruanjian001', '2018-05-24 10:12:47', 2, '大学数学', '大学英语', '马克思', '人工智能', '概率论', '', '');
INSERT INTO `t_kecheng` VALUES (4, NULL, 'jisuanji001', '2018-05-24 11:12:30', 1, '大学数学', '大学英语', '计算机', '马克思', '物理', '', '');

-- ----------------------------
-- Table structure for t_qingjiadan
-- ----------------------------
DROP TABLE IF EXISTS `t_qingjiadan`;
CREATE TABLE `t_qingjiadan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banjinum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `codenum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT NULL,
  `qjtime1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qjtime2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shenhe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shenhecontent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_qingjiadan
-- ----------------------------
INSERT INTO `t_qingjiadan` VALUES (7, 'ruanjian001', '张三', '2018-05-24 14:33:19', '2018-05-09 14:33:12', '2018-05-10 14:33:15', '不通过', '胆子太大了，一直请假！', '张三');
INSERT INTO `t_qingjiadan` VALUES (8, 'ruanjian001', '张三', '2018-05-24 14:33:40', '2018-05-08 14:33:34', '2018-05-26 14:33:37', '通过', '可以', '张三');
INSERT INTO `t_qingjiadan` VALUES (9, 'jisuanji001', '李四', '2018-05-24 14:58:12', '2018-05-11 14:58:06', '2018-05-19 00:00:00', '通过', '同意', '李四');

-- ----------------------------
-- Table structure for t_subject
-- ----------------------------
DROP TABLE IF EXISTS `t_subject`;
CREATE TABLE `t_subject`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createtime` datetime(0) NULL DEFAULT NULL,
  `subjectname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_subject
-- ----------------------------
INSERT INTO `t_subject` VALUES (1, '2018-05-24 10:03:01', '计算机理论');
INSERT INTO `t_subject` VALUES (2, '2018-05-24 10:03:17', '大学数学');
INSERT INTO `t_subject` VALUES (3, '2018-05-24 10:03:25', '大学英语');
INSERT INTO `t_subject` VALUES (5, '2018-05-24 10:37:19', '概率论');
INSERT INTO `t_subject` VALUES (6, '2018-05-24 10:37:25', '马克思');
INSERT INTO `t_subject` VALUES (7, '2018-05-24 10:37:50', '人工智能');
INSERT INTO `t_subject` VALUES (8, '2018-05-24 10:38:00', '原子弹制造技术');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `banjinum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `codenum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` int(11) NOT NULL,
  `room` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userlock` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, NULL, NULL, 'admin', NULL, 'admin', NULL, 0, NULL, 0, 'admin');
INSERT INTO `t_user` VALUES (7, '上海市浦东新区幻林东路', 'ruanjian001', 'zhangsan', '2018-05-24 11:06:44', 'zhangsan', '13565656888', 3, '2号宿舍', 0, '张老师');
INSERT INTO `t_user` VALUES (8, '韩国首尔', 'jisuanji001', 'lisi', '2018-05-24 11:07:04', 'lisi', '18888888888', 3, '33宿舍', 0, '李老师');
INSERT INTO `t_user` VALUES (9, '重庆三公里', 'ruanjian001', '张三', '2018-05-24 11:07:46', 'zhangsan', '13656565666', 4, '3宿舍', 0, '张三');
INSERT INTO `t_user` VALUES (10, '上海市浦东新区幻林东路', 'jisuanji001', '李四', '2018-05-24 14:51:18', 'lisi', '13565656888', 4, '我问问', 0, '李四');

SET FOREIGN_KEY_CHECKS = 1;
